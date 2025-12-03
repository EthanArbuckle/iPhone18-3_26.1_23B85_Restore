@interface SubscribedContainersUpdateRequiredParserDelegate
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation SubscribedContainersUpdateRequiredParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1836413042)
  {
    self->_updateRequired = *bytes != 0;
  }
}

@end