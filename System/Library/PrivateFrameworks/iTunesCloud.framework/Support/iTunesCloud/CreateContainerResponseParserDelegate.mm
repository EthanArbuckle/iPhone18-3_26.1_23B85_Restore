@interface CreateContainerResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation CreateContainerResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1836413042)
  {
    self->_updateRequired = *bytes != 0;
  }

  else if (code == 1835624804)
  {
    self->_containerID = bswap32(*bytes);
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1835819883)
  {
    if (code == 1835360880)
    {
      return result;
    }

    v5 = 1835624804;
    goto LABEL_7;
  }

  if (code != 1835819884 && code != 1835821428)
  {
    v5 = 1836413042;
LABEL_7:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

@end