@interface AddToLibraryResponseParserDelegate
- (AddToLibraryResponseParserDelegate)init;
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5;
@end

@implementation AddToLibraryResponseParserDelegate

- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1835821428 && self->_currentCloudID)
  {
    v12 = v6;
    if (self->_currentAdamID)
    {
      addedItems = self->_addedItems;
      v9 = [NSNumber numberWithUnsignedLongLong:?];
      v10 = [NSNumber numberWithUnsignedLongLong:self->_currentAdamID];
      [(NSMutableDictionary *)addedItems setObject:v9 forKey:v10];
    }

    else
    {
      v6 = [(NSString *)self->_currentGlobalID length];
      v7 = v12;
      if (!v6)
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

  _objc_release_x1(v6, v7);
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 > 1835624803)
  {
    if (a4 == 1836413042)
    {
      self->_updateRequired = *a5 != 0;
    }

    else
    {
      if (a4 != 1835624804)
      {
        goto LABEL_14;
      }

      if (a6 == 8)
      {
        v13 = ((*a5 << 56) | (a5[1] << 48) | (a5[2] << 40) | (a5[3] << 32) | (a5[4] << 24) | (a5[5] << 16) | (a5[6] << 8)) + a5[7];
      }

      else
      {
        if (a6 != 4)
        {
          goto LABEL_14;
        }

        v13 = bswap32(*a5);
      }

      self->_currentCloudID = v13;
    }
  }

  else if (a4 == 1634025833)
  {
    self->_currentAdamID = ((*a5 << 56) | (a5[1] << 48) | (a5[2] << 40) | (a5[3] << 32) | (a5[4] << 24) | (a5[5] << 16) | (a5[6] << 8)) + a5[7];
  }

  else if (a4 == 1634357319)
  {
    v14 = v10;
    v11 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
    currentGlobalID = self->_currentGlobalID;
    self->_currentGlobalID = v11;

    v10 = v14;
  }

LABEL_14:
}

- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5
{
  if (a4 == 1835821428)
  {
    self->_currentCloudID = 0;
    self->_currentAdamID = 0;
    currentGlobalID = self->_currentGlobalID;
    self->_currentGlobalID = 0;
    _objc_release_x1();
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 > 1835624803)
  {
    if (a4 > 1835821427)
    {
      if (a4 == 1835821428)
      {
        return result;
      }

      v5 = 1836413042;
    }

    else
    {
      if (a4 == 1835624804)
      {
        return result;
      }

      v5 = 1835819884;
    }

    goto LABEL_10;
  }

  if (a4 != 1634025833 && a4 != 1634353989)
  {
    v5 = 1634357319;
LABEL_10:
    if (a4 != v5)
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