@interface ContainerCloudIDsParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ContainerCloudIDsParserDelegate)init;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation ContainerCloudIDsParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428 && self->_currentPlaylistCloudID && self->_currentPlaylistKind - 7 <= 1)
  {
    subscribedPlaylistCloudIDs = self->_subscribedPlaylistCloudIDs;
    v9 = parserCopy;
    v8 = [NSNumber numberWithUnsignedInt:?];
    [(NSMutableArray *)subscribedPlaylistCloudIDs addObject:v8];

    parserCopy = v9;
  }
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1634029643)
  {
    self->_currentPlaylistKind = *bytes;
  }

  else if (code == 1835624804)
  {
    self->_currentPlaylistCloudID = bswap32(*bytes);
  }
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    self->_currentPlaylistCloudID = 0;
    self->_currentPlaylistKind = 0;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1835624803)
  {
    if (code == 1634029643)
    {
      return result;
    }

    v5 = 1634757753;
    goto LABEL_7;
  }

  if (code != 1835624804 && code != 1835819884)
  {
    v5 = 1835821428;
LABEL_7:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

- (ContainerCloudIDsParserDelegate)init
{
  v6.receiver = self;
  v6.super_class = ContainerCloudIDsParserDelegate;
  v2 = [(ContainerCloudIDsParserDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    subscribedPlaylistCloudIDs = v2->_subscribedPlaylistCloudIDs;
    v2->_subscribedPlaylistCloudIDs = v3;
  }

  return v2;
}

@end