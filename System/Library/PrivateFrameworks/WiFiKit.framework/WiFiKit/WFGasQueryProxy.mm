@interface WFGasQueryProxy
- (void)gasQueryForRecords:(id)records request:(id)request handler:(id)handler;
@end

@implementation WFGasQueryProxy

- (void)gasQueryForRecords:(id)records request:(id)request handler:(id)handler
{
  recordsCopy = records;
  requestCopy = request;
  handlerCopy = handler;
  v10 = [recordsCopy count];
  if (requestCopy && v10)
  {
    [(WFGasQueryProxy *)self setHandler:handlerCopy];

    device = self->_device;
    WiFiDeviceClientGasStartAsync();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

@end