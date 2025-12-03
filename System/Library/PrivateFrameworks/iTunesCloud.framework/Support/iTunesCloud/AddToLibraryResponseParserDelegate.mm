@interface AddToLibraryResponseParserDelegate
- (AddToLibraryResponseParserDelegate)init;
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation AddToLibraryResponseParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  v7 = parserCopy;
  if (code == 1835821428 && self->_currentCloudID)
  {
    v12 = parserCopy;
    if (self->_currentAdamID)
    {
      addedItems = self->_addedItems;
      v9 = [NSNumber numberWithUnsignedLongLong:?];
      v10 = [NSNumber numberWithUnsignedLongLong:self->_currentAdamID];
      [(NSMutableDictionary *)addedItems setObject:v9 forKey:v10];
    }

    else
    {
      parserCopy = [(NSString *)self->_currentGlobalID length];
      v7 = v12;
      if (!parserCopy)
      {
        goto LABEL_8;
      }

      v11 = self->_addedItems;
      v9 = [NSNumber numberWithUnsignedLongLong:self->_currentCloudID];
      [(NSMutableDictionary *)v11 setObject:v9 forKey:self->_currentGlobalID];
    }

    v7 = v12;
  }

LABEL_8:

  _objc_release_x1(parserCopy, v7);
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code > 1835624803)
  {
    if (code == 1836413042)
    {
      self->_updateRequired = *bytes != 0;
    }

    else
    {
      if (code != 1835624804)
      {
        goto LABEL_14;
      }

      if (length == 8)
      {
        v13 = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
      }

      else
      {
        if (length != 4)
        {
          goto LABEL_14;
        }

        v13 = bswap32(*bytes);
      }

      self->_currentCloudID = v13;
    }
  }

  else if (code == 1634025833)
  {
    self->_currentAdamID = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
  }

  else if (code == 1634357319)
  {
    v14 = parserCopy;
    v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    currentGlobalID = self->_currentGlobalID;
    self->_currentGlobalID = v11;

    parserCopy = v14;
  }

LABEL_14:
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    self->_currentCloudID = 0;
    self->_currentAdamID = 0;
    currentGlobalID = self->_currentGlobalID;
    self->_currentGlobalID = 0;
    _objc_release_x1();
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835624803)
  {
    if (code > 1835821427)
    {
      if (code == 1835821428)
      {
        return result;
      }

      v5 = 1836413042;
    }

    else
    {
      if (code == 1835624804)
      {
        return result;
      }

      v5 = 1835819884;
    }

    goto LABEL_10;
  }

  if (code != 1634025833 && code != 1634353989)
  {
    v5 = 1634357319;
LABEL_10:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

- (AddToLibraryResponseParserDelegate)init
{
  v6.receiver = self;
  v6.super_class = AddToLibraryResponseParserDelegate;
  v2 = [(AddToLibraryResponseParserDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    addedItems = v2->_addedItems;
    v2->_addedItems = v3;
  }

  return v2;
}

@end