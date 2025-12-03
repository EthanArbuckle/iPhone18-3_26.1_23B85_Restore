@interface SagaImportControllerParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container;
- (SagaImportControllerParserDelegate)init;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
- (void)parserDidStart:(id)start;
@end

@implementation SagaImportControllerParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  v7 = parserCopy;
  if (code == 1835821428 && self->_currentCloudID >= 1)
  {
    v11 = parserCopy;
    parserCopy = [(NSString *)self->_currentLyricsToken length];
    v7 = v11;
    if (parserCopy)
    {
      currentLyricsToken = self->_currentLyricsToken;
      mutableCloudIDToLyricsTokenMap = self->_mutableCloudIDToLyricsTokenMap;
      v10 = [NSNumber numberWithLongLong:self->_currentCloudID];
      [(NSMutableDictionary *)mutableCloudIDToLyricsTokenMap setObject:currentLyricsToken forKeyedSubscript:v10];

      v7 = v11;
    }
  }

  _objc_release_x1(parserCopy, v7);
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1836081510)
  {
    if (code != 1634026356)
    {
      if (code == 1634951787)
      {
        self->_includesBookmarkable = bswap32(*bytes) != 0;
      }

      else if (code == 1835624804)
      {
        self->_currentCloudID = bswap32(*bytes);
      }

      goto LABEL_15;
    }

    v14 = parserCopy;
    v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    currentLyricsToken = self->_currentLyricsToken;
    self->_currentLyricsToken = v11;
LABEL_12:

    parserCopy = v14;
    goto LABEL_15;
  }

  switch(code)
  {
    case 0x6D706167u:
      v14 = parserCopy;
      v13 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      currentLyricsToken = self->_currentPaginationToken;
      self->_currentPaginationToken = v13;
      goto LABEL_12;
    case 0x6D72636Fu:
      self->_currentItemCount = bswap32(*bytes);
      break;
    case 0x6D74636Fu:
      self->_totalItemCount = bswap32(*bytes);
      break;
  }

LABEL_15:
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    currentLyricsToken = self->_currentLyricsToken;
    self->_currentCloudID = 0;
    self->_currentLyricsToken = 0;
    _objc_release_x1();
  }

  else if (code == 1836413554)
  {
    self->_shouldRestart = 1;
  }
}

- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container
{
  result = 1;
  if (container > 1835819883)
  {
    if (container != 1835819884 && container != 1835821428)
    {
      v5 = 1836413554;
LABEL_8:
      if (container != v5)
      {
        return 0;
      }
    }
  }

  else if (container != 1633968755 && container != 1634165100)
  {
    v5 = 1634165106;
    goto LABEL_8;
  }

  return result;
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  if (self->_shouldRestart)
  {
    return 0;
  }

  result = 1;
  if (code > 1835819883)
  {
    if (code > 1836213102)
    {
      if (code == 1836213103 || code == 1836344175)
      {
        return result;
      }

      v5 = 1836413554;
    }

    else
    {
      if (code == 1835819884 || code == 1835821428)
      {
        return result;
      }

      v5 = 1836081511;
    }
  }

  else if (code > 1634165105)
  {
    if (code == 1634165106 || code == 1634951787)
    {
      return result;
    }

    v5 = 1835624804;
  }

  else
  {
    if (code == 1633968755 || code == 1634026356)
    {
      return result;
    }

    v5 = 1634165100;
  }

  if (code != v5)
  {
    return 0;
  }

  return result;
}

- (void)parserDidStart:(id)start
{
  self->_shouldRestart = 0;
  currentPaginationToken = self->_currentPaginationToken;
  self->_currentPaginationToken = 0;
  _objc_release_x1();
}

- (SagaImportControllerParserDelegate)init
{
  v6.receiver = self;
  v6.super_class = SagaImportControllerParserDelegate;
  v2 = [(SagaImportControllerParserDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    mutableCloudIDToLyricsTokenMap = v2->_mutableCloudIDToLyricsTokenMap;
    v2->_mutableCloudIDToLyricsTokenMap = v3;
  }

  return v2;
}

@end