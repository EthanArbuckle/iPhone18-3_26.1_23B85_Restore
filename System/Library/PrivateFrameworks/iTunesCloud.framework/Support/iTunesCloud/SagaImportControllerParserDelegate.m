@interface SagaImportControllerParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (BOOL)parser:(id)a3 shouldParseCodeAsContainer:(unsigned int)a4;
- (SagaImportControllerParserDelegate)init;
- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5;
- (void)parserDidStart:(id)a3;
@end

@implementation SagaImportControllerParserDelegate

- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1835821428 && self->_currentCloudID >= 1)
  {
    v11 = v6;
    v6 = [(NSString *)self->_currentLyricsToken length];
    v7 = v11;
    if (v6)
    {
      currentLyricsToken = self->_currentLyricsToken;
      mutableCloudIDToLyricsTokenMap = self->_mutableCloudIDToLyricsTokenMap;
      v10 = [NSNumber numberWithLongLong:self->_currentCloudID];
      [(NSMutableDictionary *)mutableCloudIDToLyricsTokenMap setObject:currentLyricsToken forKeyedSubscript:v10];

      v7 = v11;
    }
  }

  _objc_release_x1(v6, v7);
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 <= 1836081510)
  {
    if (a4 != 1634026356)
    {
      if (a4 == 1634951787)
      {
        self->_includesBookmarkable = bswap32(*a5) != 0;
      }

      else if (a4 == 1835624804)
      {
        self->_currentCloudID = bswap32(*a5);
      }

      goto LABEL_15;
    }

    v14 = v10;
    v11 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
    currentLyricsToken = self->_currentLyricsToken;
    self->_currentLyricsToken = v11;
LABEL_12:

    v10 = v14;
    goto LABEL_15;
  }

  switch(a4)
  {
    case 0x6D706167u:
      v14 = v10;
      v13 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      currentLyricsToken = self->_currentPaginationToken;
      self->_currentPaginationToken = v13;
      goto LABEL_12;
    case 0x6D72636Fu:
      self->_currentItemCount = bswap32(*a5);
      break;
    case 0x6D74636Fu:
      self->_totalItemCount = bswap32(*a5);
      break;
  }

LABEL_15:
}

- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5
{
  if (a4 == 1835821428)
  {
    currentLyricsToken = self->_currentLyricsToken;
    self->_currentCloudID = 0;
    self->_currentLyricsToken = 0;
    _objc_release_x1();
  }

  else if (a4 == 1836413554)
  {
    self->_shouldRestart = 1;
  }
}

- (BOOL)parser:(id)a3 shouldParseCodeAsContainer:(unsigned int)a4
{
  result = 1;
  if (a4 > 1835819883)
  {
    if (a4 != 1835819884 && a4 != 1835821428)
    {
      v5 = 1836413554;
LABEL_8:
      if (a4 != v5)
      {
        return 0;
      }
    }
  }

  else if (a4 != 1633968755 && a4 != 1634165100)
  {
    v5 = 1634165106;
    goto LABEL_8;
  }

  return result;
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  if (self->_shouldRestart)
  {
    return 0;
  }

  result = 1;
  if (a4 > 1835819883)
  {
    if (a4 > 1836213102)
    {
      if (a4 == 1836213103 || a4 == 1836344175)
      {
        return result;
      }

      v5 = 1836413554;
    }

    else
    {
      if (a4 == 1835819884 || a4 == 1835821428)
      {
        return result;
      }

      v5 = 1836081511;
    }
  }

  else if (a4 > 1634165105)
  {
    if (a4 == 1634165106 || a4 == 1634951787)
    {
      return result;
    }

    v5 = 1835624804;
  }

  else
  {
    if (a4 == 1633968755 || a4 == 1634026356)
    {
      return result;
    }

    v5 = 1634165100;
  }

  if (a4 != v5)
  {
    return 0;
  }

  return result;
}

- (void)parserDidStart:(id)a3
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