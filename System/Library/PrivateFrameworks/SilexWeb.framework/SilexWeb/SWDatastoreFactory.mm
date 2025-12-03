@interface SWDatastoreFactory
- (SWDatastoreFactory)initWithLogger:(id)logger;
- (id)createDatastoreFromMessage:(id)message;
@end

@implementation SWDatastoreFactory

- (SWDatastoreFactory)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = SWDatastoreFactory;
  v6 = [(SWDatastoreFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (id)createDatastoreFromMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  v6 = [name isEqualToString:@"datastore"];

  if (v6)
  {
    body = [messageCopy body];
    v8 = body;
    v9 = @"datastore";
  }

  else
  {
    name2 = [messageCopy name];
    v11 = [name2 isEqualToString:@"localDatastore"];

    if (!v11)
    {
      v13 = @"{}";
      goto LABEL_11;
    }

    body = [messageCopy body];
    v8 = body;
    v9 = @"localDatastore";
  }

  v12 = [body objectForKey:v9];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v12 length])
  {
    v12 = v12;
    v13 = v12;
  }

  else
  {
    v13 = @"{}";
  }

LABEL_11:
  logger = [(SWDatastoreFactory *)self logger];
  v15 = MEMORY[0x1E696AEC0];
  body2 = [messageCopy body];
  v17 = [v15 stringWithFormat:@"Converted message %@ into datastore: %@", body2, v13];
  [logger log:v17];

  v18 = [[SWDatastore alloc] initWithJSONString:v13];

  return v18;
}

@end