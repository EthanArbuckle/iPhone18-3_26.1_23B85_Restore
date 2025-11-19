@interface SetContainerPropertiesResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (SetContainerPropertiesResponseParserDelegate)init;
- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5;
@end

@implementation SetContainerPropertiesResponseParserDelegate

- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1835821428 && self->_editStatus == 400 && self->_currentCloudID)
  {
    failedItems = self->_failedItems;
    v9 = v6;
    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableArray *)failedItems addObject:v8];

    v6 = v9;
  }
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 <= 1835624803)
  {
    if (a4 == 1634357319)
    {
      v15 = v10;
      v14 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      globalPlaylistID = self->_globalPlaylistID;
      self->_globalPlaylistID = v14;
    }

    else
    {
      if (a4 != 1634358101)
      {
        goto LABEL_18;
      }

      v15 = v10;
      v11 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      globalPlaylistID = self->_subscribedContainerURL;
      self->_subscribedContainerURL = v11;
    }

    v10 = v15;
  }

  else
  {
    switch(a4)
    {
      case 0x6D696964u:
        if (a6 == 8)
        {
          v13 = ((*a5 << 56) | (a5[1] << 48) | (a5[2] << 40) | (a5[3] << 32) | (a5[4] << 24) | (a5[5] << 16) | (a5[6] << 8)) + a5[7];
        }

        else
        {
          if (a6 != 4)
          {
            break;
          }

          v13 = bswap32(*a5);
        }

        self->_currentCloudID = v13;
        break;
      case 0x6D737474u:
        if (self->_processingItemListing)
        {
          self->_editStatus = bswap32(*a5);
        }

        break;
      case 0x6D757072u:
        self->_updateRequired = *a5 != 0;
        break;
    }
  }

LABEL_18:
}

- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5
{
  if (a4 == 1835821428)
  {
    self->_currentCloudID = 0;
    self->_processingItemListing = 1;
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 > 1835819883)
  {
    if (a4 > 1836282995)
    {
      if (a4 == 1836282996)
      {
        return result;
      }

      v5 = 1836413042;
    }

    else
    {
      if (a4 == 1835819884)
      {
        return result;
      }

      v5 = 1835821428;
    }
  }

  else if (a4 > 1835360879)
  {
    if (a4 == 1835360880)
    {
      return result;
    }

    v5 = 1835624804;
  }

  else
  {
    if (a4 == 1634357319)
    {
      return result;
    }

    v5 = 1634358101;
  }

  if (a4 != v5)
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