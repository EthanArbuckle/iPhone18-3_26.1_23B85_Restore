@interface WFGasQueryProxy
- (void)gasQueryForRecords:(id)a3 request:(id)a4 handler:(id)a5;
@end

@implementation WFGasQueryProxy

- (void)gasQueryForRecords:(id)a3 request:(id)a4 handler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v12 count];
  if (v8 && v10)
  {
    [(WFGasQueryProxy *)self setHandler:v9];

    device = self->_device;
    WiFiDeviceClientGasStartAsync();
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

@end