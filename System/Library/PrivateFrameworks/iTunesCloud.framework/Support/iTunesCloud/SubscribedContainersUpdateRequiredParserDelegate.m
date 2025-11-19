@interface SubscribedContainersUpdateRequiredParserDelegate
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation SubscribedContainersUpdateRequiredParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  if (a4 == 1836413042)
  {
    self->_updateRequired = *a5 != 0;
  }
}

@end