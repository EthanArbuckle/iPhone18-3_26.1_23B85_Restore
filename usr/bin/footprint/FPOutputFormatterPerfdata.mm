@interface FPOutputFormatterPerfdata
- (void)close;
- (void)endAtTime:(id)time;
- (void)printGlobalAuxData:(id)data;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
@end

@implementation FPOutputFormatterPerfdata

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  writer = self->_writer;
  processCopy = process;
  [total unsignedLongLongValue];
  pdwriter_new_value();
  v8 = self->_writer;
  name = [processCopy name];
  [name UTF8String];
  pdwriter_record_variable_str();

  v10 = self->_writer;
  name2 = [processCopy name];
  [name2 UTF8String];
  pdwriter_record_variable_str();

  LODWORD(v10) = [processCopy pid];
  snprintf(__str, 0xBuLL, "%d", v10);
  v12 = self->_writer;
  pdwriter_record_label_str();
  v13 = self->_writer;
  pdwriter_record_tag();
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  categoriesCopy = categories;
  v6 = objc_alloc_init(NSMutableDictionary);
  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = v8;

  sub_10001732C(self, categoriesCopy);
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  dataCopy = data;
  name = [process name];
  uTF8String = [name UTF8String];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_currentProcessTotals;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_currentProcessTotals objectForKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_currentProcessAuxDatas objectForKeyedSubscript:v11];
        v14 = v13;
        writer = self->_writer;
        if (v13)
        {
          v16 = *(v13 + 16);
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v11 = v16;
        }

        v17 = v11;
        v18 = v16;
        [v11 UTF8String];
        [v12 unsignedLongLongValue];
        pdwriter_new_value();

        v19 = self->_writer;
        pdwriter_record_variable_str();
        v20 = self->_writer;
        pdwriter_record_variable_str();
        if (v14)
        {
          sub_1000177D4(self, v14[1], 0);
        }

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v9 = v21;
    }

    while (v21);
  }

  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = 0;

  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = 0;

  sub_1000179A8(self, dataCopy, "aux_data", uTF8String, 0);
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  categoriesCopy = categories;
  writer = self->_writer;
  pdwriter_new_group();
  v10 = self->_writer;
  v11 = total->var1 + total->var0;
  pdwriter_new_value();
  v12 = self->_writer;
  pdwriter_record_variable_str();
  v13 = self->_writer;
  pdwriter_record_variable_str();
  v14 = self->_writer;
  pdwriter_record_tag();
  if (categoriesCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = categoriesCopy;
    v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v26)
    {
      goto LABEL_18;
    }

    v25 = *v29;
    while (1)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [obj objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        v17 = sub_10001BCE8(v16);
        if (v17)
        {
          v18 = sub_10001BD88(v16);
          v19 = self->_writer;
          if (v18)
          {
            v20 = v18;
            v21 = 0;
            goto LABEL_12;
          }
        }

        else
        {
          v22 = self->_writer;
        }

        v18 = sub_10001BC9C(v16);
        v5 = v18;
        v20 = 0;
        v21 = 1;
LABEL_12:
        [v18 UTF8String];
        [v16 totalDirtySize];
        [v16 totalSwappedSize];
        pdwriter_new_value();
        if (v21)
        {
        }

        v23 = self->_writer;
        pdwriter_record_variable_str();
        v24 = self->_writer;
        pdwriter_record_variable_str();
        if (v17)
        {
          sub_1000177D4(self, v17, 0);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v26)
      {
LABEL_18:

        break;
      }
    }
  }
}

- (void)printGlobalAuxData:(id)data
{
  if (data)
  {
    sub_1000179A8(self, data, "sys_aux_data", "ALL_PROCESSES", 1);
  }
}

- (void)endAtTime:(id)time
{
  writer = self->_writer;
  sub_100016F9C(time);
  sub_100016F9C(self->_startTime);
  pdwriter_new_value();
  v5 = self->_writer;

  pdwriter_record_tag();
}

- (void)close
{
  writer = self->_writer;
  pdwriter_close();
  self->_writer = 0;
}

@end