@interface DeleteFromLibraryResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (DeleteFromLibraryResponseParserDelegate)init;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation DeleteFromLibraryResponseParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428 && self->_deleteStatus == 200 && self->_currentCloudID)
  {
    deletedItems = self->_deletedItems;
    v9 = parserCopy;
    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableArray *)deletedItems addObject:v8];

    parserCopy = v9;
  }
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  switch(code)
  {
    case 0x6D696964u:
      if (length == 8)
      {
        v6 = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
      }

      else
      {
        if (length != 4)
        {
          return;
        }

        v6 = bswap32(*bytes);
      }

      self->_currentCloudID = v6;
      return;
    case 0x6D737474u:
      if (self->_processingItemListing)
      {
        self->_deleteStatus = bswap32(*bytes);
      }

      break;
    case 0x6D757072u:
      self->_updateRequired = *bytes != 0;
      break;
  }
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    self->_currentCloudID = 0;
    self->_processingItemListing = 1;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835821427)
  {
    if (code != 1835821428 && code != 1836282996)
    {
      v5 = 1836413042;
LABEL_8:
      if (code != v5)
      {
        return 0;
      }
    }
  }

  else if (code != 1835360880 && code != 1835624804)
  {
    v5 = 1835819884;
    goto LABEL_8;
  }

  return result;
}

- (DeleteFromLibraryResponseParserDelegate)init
{
  v6.receiver = self;
  v6.super_class = DeleteFromLibraryResponseParserDelegate;
  v2 = [(DeleteFromLibraryResponseParserDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    deletedItems = v2->_deletedItems;
    v2->_deletedItems = v3;

    *&v2->_updateRequired = 0;
    v2->_deleteStatus = 0;
  }

  return v2;
}

@end