@interface MediaDRMOperation
- (MediaDRMOperation)initWithMediaPath:(id)a3 sinfs:(id)a4;
- (NSString)mediaFileExtension;
- (NSString)mediaPath;
- (id)sinfs;
- (void)dealloc;
- (void)run;
@end

@implementation MediaDRMOperation

- (MediaDRMOperation)initWithMediaPath:(id)a3 sinfs:(id)a4
{
  v8.receiver = self;
  v8.super_class = MediaDRMOperation;
  v6 = [(MediaDRMOperation *)&v8 init];
  if (v6)
  {
    v6->_mediaPath = [a3 copy];
    v6->_sinfs = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MediaDRMOperation;
  [(MediaDRMOperation *)&v3 dealloc];
}

- (NSString)mediaFileExtension
{
  [(MediaDRMOperation *)self lock];
  v3 = self->_mediaFileExtension;
  [(MediaDRMOperation *)self unlock];
  return v3;
}

- (NSString)mediaPath
{
  v2 = self->_mediaPath;

  return v2;
}

- (id)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (void)run
{
  v3 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:100];
  [*&self->ISOperation_opaque[v3] setUnits:0];
  v4 = +[SSLogConfig sharedDaemonConfig];
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

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    mediaPath = self->_mediaPath;
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = mediaPath;
    LODWORD(v25) = 22;
    v24 = &v28;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, &v28, v25];
      free(v10);
      v24 = v11;
      SSFileLog();
    }
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v27 = 0;
  sinfs = self->_sinfs;
  if (sinfs)
  {
    [v12 setObject:sinfs forKey:ISWeakLinkedStringConstantForString()];
  }

  v14 = [ISWeakLinkedClassForString() fileProcessor];
  v15 = self->_mediaPath;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000AEBF0;
  v26[3] = &unk_100327858;
  v26[4] = self;
  v16 = [v14 processPurchasedItem:v15 withAttributes:v12 resultInfo:&v27 progressBlock:v26];
  if (v16)
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v16;
      LODWORD(v25) = 22;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        [NSString stringWithCString:v21 encoding:4, &v28, v25];
        free(v22);
        SSFileLog();
      }
    }

    v23 = ISErrorWithExternalError();
  }

  else
  {
    [(MediaDRMOperation *)self lock];

    self->_mediaFileExtension = [v27 objectForKey:ISWeakLinkedStringConstantForString()];
    [(MediaDRMOperation *)self unlock];
    v23 = 0;
  }

  [(MediaDRMOperation *)self setError:v23];
  [(MediaDRMOperation *)self setSuccess:v16 == 0];
}

@end