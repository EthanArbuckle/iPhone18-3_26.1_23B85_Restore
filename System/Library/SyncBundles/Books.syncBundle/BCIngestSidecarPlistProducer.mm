@interface BCIngestSidecarPlistProducer
- (BCIngestSidecarPlistProducer)initWithPath:(id)a3 sidecarPath:(id)a4;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCIngestSidecarPlistProducer

- (BCIngestSidecarPlistProducer)initWithPath:(id)a3 sidecarPath:(id)a4
{
  v5 = [(BCPlistProducer *)self initWithPath:a3];
  if (v5)
  {
    v6 = [[NSDictionary alloc] initWithContentsOfFile:a4];
    v7 = objc_opt_class();
    v5->_sidecarDeletes = BCDynamicCast(v7, [v6 objectForKey:@"Deletes"]);
    v5->_filterMatches = 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_sidecarDeletes = 0;

  self->_filterMatches = 0;
  v3.receiver = self;
  v3.super_class = BCIngestSidecarPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  v3 = [(NSArray *)self->_sidecarDeletes count];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = BCIngestSidecarPlistProducer;
    LOBYTE(v3) = [(BCPlistProducer *)&v5 shouldRetry];
  }

  return v3;
}

- (id)produceData
{
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [(NSMutableDictionary *)v4 objectForKey:@"Books"]);

  v33 = self;
  self->_filterMatches = objc_alloc_init(NSMutableArray);
  if (-[NSArray count](self->_sidecarDeletes, "count") && [v6 count])
  {
    v32 = v4;
    v30 = a2;
    v31 = v6;
    v7 = [v6 arrayOfDictionariesSortedByKey:@"Path"];
    v8 = [(NSArray *)self->_sidecarDeletes sortedArrayUsingSelector:"compare:"];
    v9 = [(NSArray *)v8 count];
    v10 = [(NSArray *)v8 objectAtIndex:0];
    obj = v7;
    v36 = +[NSMutableArray array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v7 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v34 = 0;
      v13 = 0;
      v14 = *v38;
      do
      {
        v15 = 0;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * v15);
          v17 = objc_opt_class();
          v18 = BCDynamicCast(v17, v16);
          v19 = objc_opt_class();
          v20 = BCDynamicCast(v19, [v18 objectForKey:@"Path"]);
          if ([v20 length])
          {
            v21 = v10 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
LABEL_20:
            [v36 addObject:v18];
          }

          else
          {
            while (1)
            {
              v22 = [v10 compare:v20];
              if (v22 != -1)
              {
                break;
              }

              if (++v13 >= v9)
              {
                v10 = 0;
                goto LABEL_20;
              }

              v10 = [(NSArray *)v8 objectAtIndex:v13];
            }

            if (v22 == &dword_0 + 1)
            {
              goto LABEL_20;
            }

            if (!v22)
            {
              [(NSMutableArray *)v33->_filterMatches addObject:v20];
              ++v34;
              if (++v13 >= v9)
              {
                v10 = 0;
              }

              else
              {
                v10 = [(NSArray *)v8 objectAtIndex:v13];
              }
            }
          }

          v15 = v15 + 1;
        }

        while (v15 != v12);
        v23 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
        v12 = v23;
      }

      while (v23);
    }

    else
    {
      v34 = 0;
    }

    v24 = BCDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v31 count];
      v26 = [(NSArray *)v33->_sidecarDeletes count];
      v27 = [v36 count];
      *buf = 134218752;
      v42 = v25;
      v43 = 2048;
      v44 = v26;
      v45 = 2048;
      v46 = v27;
      v47 = 2048;
      v48 = v34;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", buf, 0x2Au);
    }

    v28 = [v36 count] + v34;
    if (v28 == [v31 count])
    {
      if (v34)
      {
LABEL_32:
        v4 = v32;
        [(NSMutableDictionary *)v32 setObject:v36 forKey:@"Books"];
        return v4;
      }
    }

    else
    {
      -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", v30, v33, @"BCIngestSidecarPlistProducer.m", 143, @"Unexpected Counts: Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", [v31 count], -[NSArray count](v33->_sidecarDeletes, "count"), objc_msgSend(v36, "count"), v34);
      if (v34)
      {
        goto LABEL_32;
      }
    }

    v33->super._dataUnchanged = 1;
    return v32;
  }

  self->super._dataUnchanged = 1;
  return v4;
}

@end