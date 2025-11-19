@interface CreateContainerResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation CreateContainerResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  if (a4 == 1836413042)
  {
    self->_updateRequired = *a5 != 0;
  }

  else if (a4 == 1835624804)
  {
    self->_containerID = bswap32(*a5);
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1835819883)
  {
    if (a4 == 1835360880)
    {
      return result;
    }

    v5 = 1835624804;
    goto LABEL_7;
  }

  if (a4 != 1835819884 && a4 != 1835821428)
  {
    v5 = 1836413042;
LABEL_7:
    if (a4 != v5)
    {
      return 0;
    }
  }

  return result;
}

@end