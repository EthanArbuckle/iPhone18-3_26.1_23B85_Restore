@interface BCGeneratePersistentIDPlistProducer
+ (unint64_t)UniqueNumber;
- (id)produceData;
@end

@implementation BCGeneratePersistentIDPlistProducer

+ (unint64_t)UniqueNumber
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDGetUUIDBytes(v2);
  v4 = 0;
  v5 = 0;
  v7 = v3;
  do
  {
    v5 = *(&v7.byte0 + v4++) | (v5 << 8);
  }

  while (v4 != 8);
  CFRelease(v2);
  return v5;
}

- (id)produceData
{
  v4 = +[NSMutableArray array];
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [(NSMutableDictionary *)v5 objectForKey:@"Books"]);
  if (![v7 count])
  {
    goto LABEL_18;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  obj = v7;
  v22 = a2;
  v23 = self;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = objc_opt_class();
      v15 = BCDynamicCast(v14, v13);
      v16 = objc_opt_class();
      if (BCDynamicCast(v16, [v15 objectForKey:@"Persistent ID"]))
      {
        [v4 addObject:v15];
      }

      else
      {
        v17 = [[NSString alloc] initWithFormat:@"%016llX", +[BCGeneratePersistentIDPlistProducer UniqueNumber](BCGeneratePersistentIDPlistProducer, "UniqueNumber")];
        if ([v17 length] != &dword_10)
        {
          sub_13330(v22, v23, v17);
        }

        v18 = [[NSMutableDictionary alloc] initWithDictionary:v15];
        [v18 setObject:v17 forKey:@"Persistent ID"];
        [v18 setObject:&__kCFBooleanTrue forKey:@"Persistent ID Generated On Device"];
        v19 = BCDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [v18 objectForKey:@"Artist"];
          v20 = [v18 objectForKey:@"Name"];
          *buf = 138412802;
          v31 = v24;
          v32 = 2112;
          v33 = v20;
          v34 = 2112;
          v35 = v17;
          _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "generateMissingPersistentIDs Creating a Persistent ID for {%@ - %@}; %@", buf, 0x20u);
        }

        [v4 addObject:v18];

        v10 = 1;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  }

  while (v9);
  self = v23;
  if (v10)
  {
    [(NSMutableDictionary *)v5 setObject:v4 forKey:@"Books"];
  }

  else
  {
LABEL_18:
    self->super._dataUnchanged = 1;
  }

  return v5;
}

@end