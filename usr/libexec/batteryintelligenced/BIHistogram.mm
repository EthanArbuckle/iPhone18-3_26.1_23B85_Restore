@interface BIHistogram
- (BIHistogram)initWithBinLabelGenerator:(id)generator allLabels:(id)labels histogramValues:(id)values;
- (BOOL)insertValue:(id)value thisManyTimes:(id)times error:(id *)error;
- (id)copyHistogramWithNormalizedCounts;
- (void)printHistogram;
- (void)removeValue:(id)value;
- (void)reset;
@end

@implementation BIHistogram

- (BIHistogram)initWithBinLabelGenerator:(id)generator allLabels:(id)labels histogramValues:(id)values
{
  generatorCopy = generator;
  labelsCopy = labels;
  valuesCopy = values;
  v54.receiver = self;
  v54.super_class = BIHistogram;
  v11 = [(BIHistogram *)&v54 init];
  if (!v11)
  {
    v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      sub_10002F41C(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    goto LABEL_17;
  }

  v12 = sub_10001DEC4("bihistogram");
  v13 = *(v11 + 4);
  *(v11 + 4) = v12;

  if (!generatorCopy)
  {
    if (os_log_type_enabled(*(v11 + 4), OS_LOG_TYPE_ERROR))
    {
      sub_10002F3E8();
    }

    goto LABEL_17;
  }

  v11[6] = 0;
  if (valuesCopy)
  {
    v45 = labelsCopy;
    v14 = [valuesCopy mutableCopy];
    v15 = *(v11 + 1);
    *(v11 + 1) = v14;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = *(v11 + 1);
    v17 = [v16 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v50 + 1) + 8 * i);
          v22 = [*(v11 + 1) objectForKeyedSubscript:v21];
          unsignedIntValue = [v22 unsignedIntValue];

          if ((v11[6] + unsignedIntValue) >> 32)
          {
            if (os_log_type_enabled(*(v11 + 4), OS_LOG_TYPE_ERROR))
            {
              sub_10002F380();
            }

            v33 = 0;
            labelsCopy = v45;
            goto LABEL_30;
          }

          v24 = [*(v11 + 1) objectForKeyedSubscript:v21];
          v11[6] += [v24 unsignedIntValue];
        }

        v18 = [v16 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    labelsCopy = v45;
    goto LABEL_22;
  }

  v34 = objc_alloc_init(NSMutableDictionary);
  v35 = *(v11 + 1);
  *(v11 + 1) = v34;

  if (!*(v11 + 1))
  {
    if (os_log_type_enabled(*(v11 + 4), OS_LOG_TYPE_ERROR))
    {
      sub_10002F3B4();
    }

LABEL_17:
    v33 = 0;
    goto LABEL_30;
  }

LABEL_22:
  v36 = objc_autoreleasePoolPush();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = labelsCopy;
  v38 = [v37 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v47;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(v11 + 1) setObject:&off_10004D258 forKeyedSubscript:*(*(&v46 + 1) + 8 * j)];
      }

      v39 = [v37 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v39);
  }

  objc_autoreleasePoolPop(v36);
  v42 = [generatorCopy copy];
  v43 = *(v11 + 2);
  *(v11 + 2) = v42;

  v33 = v11;
LABEL_30:

  return v33;
}

- (BOOL)insertValue:(id)value thisManyTimes:(id)times error:(id *)error
{
  valueCopy = value;
  timesCopy = times;
  unsignedIntValue = [timesCopy unsignedIntValue];
  if (!unsignedIntValue)
  {
    goto LABEL_9;
  }

  v11 = unsignedIntValue;
  if (!__CFADD__(self->_totalCount, unsignedIntValue))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = (*(self->_labelGen + 2))();
    v16 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v15];
    v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 unsignedIntValue] + v11);

    [(NSMutableDictionary *)self->_histogram setObject:v17 forKeyedSubscript:v15];
    self->_totalCount += v11;

    objc_autoreleasePoolPop(v14);
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  if (error)
  {
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Histogram count reached max capacity.                                             Normalized histogram will be unreliable";
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:34 userInfo:v12];
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_10002F458();
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)removeValue:(id)value
{
  valueCopy = value;
  v5 = objc_autoreleasePoolPush();
  v6 = (*(self->_labelGen + 2))();
  v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v6];
      unsignedIntValue = [v11 unsignedIntValue];

      if (!unsignedIntValue)
      {
        goto LABEL_4;
      }
    }

    else
    {

      unsignedIntValue = 0;
    }

    v15 = [NSNumber numberWithUnsignedInt:unsignedIntValue - 1];
    [(NSMutableDictionary *)self->_histogram setObject:v15 forKeyedSubscript:v6];
    --self->_totalCount;

    goto LABEL_8;
  }

LABEL_4:
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    totalCount = self->_totalCount;
    v16 = 138413058;
    v17 = valueCopy;
    v18 = 2112;
    v19 = v6;
    v20 = 1024;
    v21 = 0;
    v22 = 1024;
    v23 = totalCount;
    _os_log_error_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Can't remove Value %@ Label %@ Count %u TotalCount %u", &v16, 0x22u);
  }

LABEL_8:

  objc_autoreleasePoolPop(v5);
}

- (id)copyHistogramWithNormalizedCounts
{
  v3 = [(NSMutableDictionary *)self->_histogram mutableCopy];
  if (self->_totalCount)
  {
    context = objc_autoreleasePoolPush();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [v3 allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v3 objectForKeyedSubscript:v9];
          [v10 floatValue];
          *&v12 = v11 / self->_totalCount;
          v13 = [NSNumber numberWithFloat:v12];
          [v3 setObject:v13 forKeyedSubscript:v9];
        }

        v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(context);
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F48C();
  }

  return v3;
}

- (void)printHistogram
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_histogram;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(*(&v14 + 1) + 8 * i);
          histogram = self->_histogram;
          v11 = logger;
          v12 = [(NSMutableDictionary *)histogram objectForKeyedSubscript:v9];
          unsignedIntValue = [v12 unsignedIntValue];
          *buf = 138412546;
          v19 = v9;
          v20 = 1024;
          v21 = unsignedIntValue;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Bin %@ Value %u", buf, 0x12u);
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)reset
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_histogram allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NSMutableDictionary *)self->_histogram setObject:&off_10004D258 forKeyedSubscript:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_totalCount = 0;
}

@end