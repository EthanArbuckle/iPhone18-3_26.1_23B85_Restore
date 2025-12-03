@interface BooksParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container;
- (BooksParserDelegate)initWithOperation:(id)operation;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didFinishWithState:(int64_t)state;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
- (void)parserDidStart:(id)start;
@end

@implementation BooksParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428)
  {
    v8 = parserCopy;
    if (self->_shouldParseMetadata)
    {
      [(NSMutableArray *)self->_parsedBooks addObject:self->_currentParsingBook];
    }

    currentParsingBook = self->_currentParsingBook;
    self->_currentParsingBook = 0;

    parserCopy = v8;
  }
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (self->_shouldParseMetadata)
  {
    v18 = parserCopy;
    if (code > 1634358894)
    {
      if (code > 1634953069)
      {
        switch(code)
        {
          case 0x6173676Eu:
            v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ICBook *)self->_currentParsingBook setGenre:v11];
            break;
          case 0x6D696E6Du:
            v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ICBook *)self->_currentParsingBook setTitle:v11];
            break;
          case 0x6D706572u:
            [(ICBook *)self->_currentParsingBook setPurchaseHistoryID:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
            goto LABEL_30;
          default:
            goto LABEL_31;
        }
      }

      else
      {
        switch(code)
        {
          case 0x616A566Fu:
            v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ICBook *)self->_currentParsingBook setVppOrganizationID:v11];
            break;
          case 0x61736172u:
            v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ICBook *)self->_currentParsingBook setAuthor:v11];
            break;
          case 0x61736470u:
            v11 = [NSDate dateWithTimeIntervalSince1970:bswap32(*bytes)];
            [(ICBook *)self->_currentParsingBook setDatePurchased:v11];
            break;
          default:
            goto LABEL_31;
        }
      }

      goto LABEL_29;
    }

    if (code <= 1634030408)
    {
      if (code == 1634026337)
      {
        v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        v12 = [NSURL URLWithString:v11];
        [(ICBook *)self->_currentParsingBook setArtworkURL:v12];
      }

      else
      {
        if (code != 1634030192)
        {
          goto LABEL_31;
        }

        v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ICBook *)self->_currentParsingBook setRedownloadParameters:v11];
      }

LABEL_29:

      goto LABEL_30;
    }

    if (code != 1634030409)
    {
      if (code != 1634358884)
      {
        if (code != 1634358892)
        {
          goto LABEL_31;
        }

        [(ICBook *)self->_currentParsingBook setVppLicensed:*bytes != 0];
        goto LABEL_30;
      }

      v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      [(ICBook *)self->_currentParsingBook setVppOrganizationDisplayName:v11];
      goto LABEL_29;
    }

    [(ICBook *)self->_currentParsingBook setStoreID:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
    queryStoreIDs = [(JaliscoLoadBooksOperation *)self->_operation queryStoreIDs];
    parserCopy = v18;
    if (queryStoreIDs)
    {
      queryStoreIDs2 = [(JaliscoLoadBooksOperation *)self->_operation queryStoreIDs];
      v15 = [NSNumber numberWithUnsignedLongLong:[(ICBook *)self->_currentParsingBook storeID]];
      v16 = [queryStoreIDs2 containsObject:v15];

      parserCopy = v18;
      if ((v16 & 1) == 0)
      {
        self->_shouldParseMetadata = 0;
        currentParsingBook = self->_currentParsingBook;
        self->_currentParsingBook = 0;

LABEL_30:
        parserCopy = v18;
      }
    }
  }

LABEL_31:
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    self->_shouldParseMetadata = 1;
    v7 = objc_alloc_init(ICBook);
    currentParsingBook = self->_currentParsingBook;
    self->_currentParsingBook = v7;

    _objc_release_x1();
  }
}

- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container
{
  result = 1;
  if (container <= 1634036069)
  {
    if (container == 1633968755)
    {
      return result;
    }

    v5 = 1634035308;
    goto LABEL_7;
  }

  if (container != 1634036070 && container != 1835819884)
  {
    v5 = 1835821428;
LABEL_7:
    if (container != v5)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1634951537)
  {
    if (code > 1835626092)
    {
      if (code > 1835821427)
      {
        if (code == 1835821428)
        {
          return result;
        }

        v6 = 1836082546;
      }

      else
      {
        if (code == 1835626093)
        {
          return result;
        }

        v6 = 1835819884;
      }

      goto LABEL_22;
    }

    if (code != 1634951538 && code != 1634952304)
    {
      v6 = 1634953070;
      goto LABEL_22;
    }
  }

  else
  {
    if (code <= 1634035307)
    {
      if (code > 1634030191)
      {
        if (code == 1634030192)
        {
          return result;
        }

        v5 = 21321;
      }

      else
      {
        if (code == 1633968755)
        {
          return result;
        }

        v5 = 17249;
      }

      goto LABEL_19;
    }

    if ((code - 1634358884 > 0xB || ((1 << (code - 100)) & 0x901) == 0) && code != 1634035308)
    {
      v5 = 26982;
LABEL_19:
      v6 = v5 | 0x61650000;
LABEL_22:
      if (code != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  [(JaliscoLoadBooksOperation *)self->_operation setParserSuccess:0, error];
  [(JaliscoLoadBooksOperation *)self->_operation setBooks:0];
  parsedBooks = self->_parsedBooks;
  self->_parsedBooks = 0;
}

- (void)parser:(id)parser didFinishWithState:(int64_t)state
{
  [(JaliscoLoadBooksOperation *)self->_operation setParserSuccess:state == 2];
  if ([(JaliscoLoadBooksOperation *)self->_operation parserSuccess])
  {
    parsedBooks = self->_parsedBooks;
  }

  else
  {
    parsedBooks = 0;
  }

  [(JaliscoLoadBooksOperation *)self->_operation setBooks:parsedBooks];
  v6 = self->_parsedBooks;
  self->_parsedBooks = 0;
}

- (void)parserDidStart:(id)start
{
  v4 = +[NSMutableArray array];
  parsedBooks = self->_parsedBooks;
  self->_parsedBooks = v4;

  _objc_release_x1();
}

- (BooksParserDelegate)initWithOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = BooksParserDelegate;
  v6 = [(BooksParserDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operation, operation);
  }

  return v7;
}

@end