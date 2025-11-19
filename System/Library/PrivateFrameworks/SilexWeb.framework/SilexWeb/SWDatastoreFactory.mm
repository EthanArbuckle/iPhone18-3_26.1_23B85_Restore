@interface SWDatastoreFactory
- (SWDatastoreFactory)initWithLogger:(id)a3;
- (id)createDatastoreFromMessage:(id)a3;
@end

@implementation SWDatastoreFactory

- (SWDatastoreFactory)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWDatastoreFactory;
  v6 = [(SWDatastoreFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (id)createDatastoreFromMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"datastore"];

  if (v6)
  {
    v7 = [v4 body];
    v8 = v7;
    v9 = @"datastore";
  }

  else
  {
    v10 = [v4 name];
    v11 = [v10 isEqualToString:@"localDatastore"];

    if (!v11)
    {
      v13 = @"{}";
      goto LABEL_11;
    }

    v7 = [v4 body];
    v8 = v7;
    v9 = @"localDatastore";
  }

  v12 = [v7 objectForKey:v9];

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
  v14 = [(SWDatastoreFactory *)self logger];
  v15 = MEMORY[0x1E696AEC0];
  v16 = [v4 body];
  v17 = [v15 stringWithFormat:@"Converted message %@ into datastore: %@", v16, v13];
  [v14 log:v17];

  v18 = [[SWDatastore alloc] initWithJSONString:v13];

  return v18;
}

@end