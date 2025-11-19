@interface QLThreadInvoker
- (QLThreadInvoker)initWithConnection:(id)a3 data:(id)a4 error:(id)a5;
- (void)connectionDidReceiveDataLengthReceived:(id)a3;
@end

@implementation QLThreadInvoker

- (QLThreadInvoker)initWithConnection:(id)a3 data:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = QLThreadInvoker;
  v12 = [(QLThreadInvoker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_storeStrong(&v13->_data, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

- (void)connectionDidReceiveDataLengthReceived:(id)a3
{
  connection = self->_connection;
  data = self->_data;
  v5 = a3;
  [v5 connection:connection didReceiveData:data lengthReceived:{-[NSData length](data, "length")}];
}

@end