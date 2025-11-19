@interface PublishPlaylistResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation PublishPlaylistResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 == 1634357319)
  {
    v14 = v10;
    v11 = 8;
  }

  else
  {
    if (a4 != 1634358101)
    {
      goto LABEL_6;
    }

    v14 = v10;
    v11 = 16;
  }

  v12 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
  v13 = *(&self->super.isa + v11);
  *(&self->super.isa + v11) = v12;

  v10 = v14;
LABEL_6:
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 > 1835624803)
  {
    if (a4 != 1835624804 && a4 != 1835819884)
    {
      v5 = 1835821428;
LABEL_8:
      if (a4 != v5)
      {
        return 0;
      }
    }
  }

  else if (a4 != 1634357319 && a4 != 1634358101)
  {
    v5 = 1835360880;
    goto LABEL_8;
  }

  return result;
}

@end