@interface SSProtocolCondition
+ (id)newConditionWithDictionary:(id)dictionary;
- (SSProtocolCondition)initWithDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation SSProtocolCondition

+ (id)newConditionWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [dictionary objectForKey:@"condition-key"];
  v5 = off_1E84AF180;
  v6 = 8;
  while (![(NSString *)*(v5 - 1) isEqualToString:v4])
  {
    v5 += 2;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  result = [objc_alloc(NSClassFromString(*v5)) initWithDictionary:dictionary];
  if (result)
  {
    return result;
  }

LABEL_6:
  v8 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = v4;
    LODWORD(v19) = 22;
    result = _os_log_send_and_compose_impl();
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v20, v19}];
    free(v11);
    SSFileLog(v8, @"%@", v13, v14, v15, v16, v17, v18, v12);
  }

  return 0;
}

- (SSProtocolCondition)initWithDictionary:(id)dictionary
{
  v4 = [(SSProtocolCondition *)self init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"operator"];
    v6 = 0;
    v4->_operator = 0;
    while (![v5 isEqualToString:__OperationNames[v6]])
    {
      if (++v6 == 6)
      {
        goto LABEL_7;
      }
    }

    v4->_operator = v6;
LABEL_7:
    v4->_value = [dictionary objectForKey:@"value"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSProtocolCondition;
  [(SSProtocolCondition *)&v3 dealloc];
}

@end