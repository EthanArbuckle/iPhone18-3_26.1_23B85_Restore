@interface DownloadPolicy
- (SSDownloadPolicy)downloadPolicy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setPolicyData:(id)a3;
@end

@implementation DownloadPolicy

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadPolicy;
  [(DownloadPolicy *)&v3 dealloc];
}

- (SSDownloadPolicy)downloadPolicy
{
  result = self->_cachedPolicy;
  if (!result)
  {
    result = [(DownloadPolicy *)self policyData];
    if (result)
    {
      v11 = 0;
      self->_cachedPolicy = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:result error:&v11];
      if (v11)
      {
        v4 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v4)
        {
          v4 = +[SSLogConfig sharedConfig];
        }

        v5 = [v4 shouldLog];
        if ([v4 shouldLogToDisk])
        {
          v6 = v5 | 2;
        }

        else
        {
          v6 = v5;
        }

        if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v6 &= 2u;
        }

        if (v6)
        {
          v7 = objc_opt_class();
          v12 = 138543618;
          v13 = v7;
          v14 = 2114;
          v15 = v11;
          LODWORD(v10) = 22;
          v8 = _os_log_send_and_compose_impl();
          if (v8)
          {
            v9 = v8;
            [NSString stringWithCString:v8 encoding:4, &v12, v10];
            free(v9);
            SSFileLog();
          }
        }
      }

      return self->_cachedPolicy;
    }

    else
    {
      self->_cachedPolicy = 0;
    }
  }

  return result;
}

- (void)setPolicyData:(id)a3
{
  [(DownloadPolicy *)self setValue:a3 forProperty:@"policy_data"];

  self->_cachedPolicy = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = DownloadPolicy;
  return [(DownloadPolicy *)&v4 copyWithZone:a3];
}

@end