@interface PublishPlaylistResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation PublishPlaylistResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code == 1634357319)
  {
    v14 = parserCopy;
    v11 = 8;
  }

  else
  {
    if (code != 1634358101)
    {
      goto LABEL_6;
    }

    v14 = parserCopy;
    v11 = 16;
  }

  v12 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
  v13 = *(&self->super.isa + v11);
  *(&self->super.isa + v11) = v12;

  parserCopy = v14;
LABEL_6:
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835624803)
  {
    if (code != 1835624804 && code != 1835819884)
    {
      v5 = 1835821428;
LABEL_8:
      if (code != v5)
      {
        return 0;
      }
    }
  }

  else if (code != 1634357319 && code != 1634358101)
  {
    v5 = 1835360880;
    goto LABEL_8;
  }

  return result;
}

@end