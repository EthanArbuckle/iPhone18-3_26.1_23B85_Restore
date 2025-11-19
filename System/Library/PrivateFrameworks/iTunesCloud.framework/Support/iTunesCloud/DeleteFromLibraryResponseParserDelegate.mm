@interface DeleteFromLibraryResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (DeleteFromLibraryResponseParserDelegate)init;
- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5;
@end

@implementation DeleteFromLibraryResponseParserDelegate

- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1835821428 && self->_deleteStatus == 200 && self->_currentCloudID)
  {
    deletedItems = self->_deletedItems;
    v9 = v6;
    v8 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableArray *)deletedItems addObject:v8];

    v6 = v9;
  }
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  switch(a4)
  {
    case 0x6D696964u:
      if (a6 == 8)
      {
        v6 = ((*a5 << 56) | (a5[1] << 48) | (a5[2] << 40) | (a5[3] << 32) | (a5[4] << 24) | (a5[5] << 16) | (a5[6] << 8)) + a5[7];
      }

      else
      {
        if (a6 != 4)
        {
          return;
        }

        v6 = bswap32(*a5);
      }

      self->_currentCloudID = v6;
      return;
    case 0x6D737474u:
      if (self->_processingItemListing)
      {
        self->_deleteStatus = bswap32(*a5);
      }

      break;
    case 0x6D757072u:
      self->_updateRequired = *a5 != 0;
      break;
  }
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
  if (a4 > 1835821427)
  {
    if (a4 != 1835821428 && a4 != 1836282996)
    {
      v5 = 1836413042;
LABEL_8:
      if (a4 != v5)
      {
        return 0;
      }
    }
  }

  else if (a4 != 1835360880 && a4 != 1835624804)
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