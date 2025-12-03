@interface SetContainerPropertiesResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (SetContainerPropertiesResponseParserDelegate)init;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation SetContainerPropertiesResponseParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428 && self->_editStatus == 400 && self->_currentCloudID)
  {
    failedItems = self->_failedItems;
    v9 = parserCopy;
    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableArray *)failedItems addObject:v8];

    parserCopy = v9;
  }
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1835624803)
  {
    if (code == 1634357319)
    {
      v15 = parserCopy;
      v14 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      globalPlaylistID = self->_globalPlaylistID;
      self->_globalPlaylistID = v14;
    }

    else
    {
      if (code != 1634358101)
      {
        goto LABEL_18;
      }

      v15 = parserCopy;
      v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      globalPlaylistID = self->_subscribedContainerURL;
      self->_subscribedContainerURL = v11;
    }

    parserCopy = v15;
  }

  else
  {
    switch(code)
    {
      case 0x6D696964u:
        if (length == 8)
        {
          v13 = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
        }

        else
        {
          if (length != 4)
          {
            break;
          }

          v13 = bswap32(*bytes);
        }

        self->_currentCloudID = v13;
        break;
      case 0x6D737474u:
        if (self->_processingItemListing)
        {
          self->_editStatus = bswap32(*bytes);
        }

        break;
      case 0x6D757072u:
        self->_updateRequired = *bytes != 0;
        break;
    }
  }

LABEL_18:
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
  if (code > 1835819883)
  {
    if (code > 1836282995)
    {
      if (code == 1836282996)
      {
        return result;
      }

      v5 = 1836413042;
    }

    else
    {
      if (code == 1835819884)
      {
        return result;
      }

      v5 = 1835821428;
    }
  }

  else if (code > 1835360879)
  {
    if (code == 1835360880)
    {
      return result;
    }

    v5 = 1835624804;
  }

  else
  {
    if (code == 1634357319)
    {
      return result;
    }

    v5 = 1634358101;
  }

  if (code != v5)
  {
    return 0;
  }

  return result;
}

- (SetContainerPropertiesResponseParserDelegate)init
{
  v6.receiver = self;
  v6.super_class = SetContainerPropertiesResponseParserDelegate;
  v2 = [(SetContainerPropertiesResponseParserDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    failedItems = v2->_failedItems;
    v2->_failedItems = v3;

    *&v2->_updateRequired = 0;
    v2->_editStatus = 0;
  }

  return v2;
}

@end