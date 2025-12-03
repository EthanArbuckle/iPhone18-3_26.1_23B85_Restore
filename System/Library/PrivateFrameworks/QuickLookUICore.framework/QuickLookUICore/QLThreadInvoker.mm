@interface QLThreadInvoker
- (QLThreadInvoker)initWithConnection:(id)connection data:(id)data error:(id)error;
- (void)connectionDidReceiveDataLengthReceived:(id)received;
@end

@implementation QLThreadInvoker

- (QLThreadInvoker)initWithConnection:(id)connection data:(id)data error:(id)error
{
  connectionCopy = connection;
  dataCopy = data;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = QLThreadInvoker;
  v12 = [(QLThreadInvoker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v13->_data, data);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (void)connectionDidReceiveDataLengthReceived:(id)received
{
  connection = self->_connection;
  data = self->_data;
  receivedCopy = received;
  [receivedCopy connection:connection didReceiveData:data lengthReceived:{-[NSData length](data, "length")}];
}

@end