@interface FavoriteEntityResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (FavoriteEntityResponseParserDelegate)initWithEntityType:(int64_t)type;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
@end

@implementation FavoriteEntityResponseParserDelegate

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  v7 = parserCopy;
  if (code == 1835821428)
  {
    v17 = parserCopy;
    if (self->_currentCloudID)
    {
      if (self->_currentAdamID)
      {
        addedItems = self->_addedItems;
        v9 = [NSNumber numberWithUnsignedLongLong:?];
        v10 = [NSNumber numberWithUnsignedLongLong:self->_currentAdamID];
        [(NSMutableDictionary *)addedItems setObject:v9 forKey:v10];

LABEL_11:
        v7 = v17;
        goto LABEL_12;
      }

      parserCopy = [(NSString *)self->_currentGlobalPlaylistID length];
      v7 = v17;
      if (!parserCopy)
      {
        goto LABEL_12;
      }

      v16 = self->_addedItems;
      v9 = [NSNumber numberWithUnsignedLongLong:self->_currentCloudID];
      currentGlobalPlaylistID = self->_currentGlobalPlaylistID;
      v13 = v16;
      v14 = v9;
LABEL_10:
      [(NSMutableDictionary *)v13 setObject:v14 forKey:currentGlobalPlaylistID];
      goto LABEL_11;
    }

    currentAlbumCloudLibraryID = self->_currentAlbumCloudLibraryID;
    if (currentAlbumCloudLibraryID || (currentAlbumCloudLibraryID = self->_currentArtistCloudLibraryID) != 0)
    {
      v12 = self->_addedItems;
      v9 = [NSNumber numberWithUnsignedLongLong:self->_currentAdamID];
      v13 = v12;
      v14 = currentAlbumCloudLibraryID;
      currentGlobalPlaylistID = v9;
      goto LABEL_10;
    }
  }

LABEL_12:

  _objc_release_x1(parserCopy, v7);
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1634888035)
  {
    switch(code)
    {
      case 0x61654169u:
        self->_currentAdamID = ((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7];
        goto LABEL_21;
      case 0x616A4169u:
        if (self->_entityType != 3)
        {
          goto LABEL_21;
        }

        v16 = parserCopy;
        v15 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        currentAlbumCloudLibraryID = self->_currentAlbumCloudLibraryID;
        self->_currentAlbumCloudLibraryID = v15;
        break;
      case 0x616A5047u:
        v16 = parserCopy;
        v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        currentAlbumCloudLibraryID = self->_currentGlobalPlaylistID;
        self->_currentGlobalPlaylistID = v11;
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_17;
  }

  switch(code)
  {
    case 0x61726964u:
      if (self->_entityType != 2)
      {
        break;
      }

      v16 = parserCopy;
      v14 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      currentAlbumCloudLibraryID = self->_currentArtistCloudLibraryID;
      self->_currentArtistCloudLibraryID = v14;
LABEL_17:

      parserCopy = v16;
      break;
    case 0x6D757072u:
      self->_updateRequired = *bytes != 0;
      break;
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
    default:
      break;
  }

LABEL_21:
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    self->_currentCloudID = 0;
    self->_currentAdamID = 0;
    currentArtistCloudLibraryID = self->_currentArtistCloudLibraryID;
    self->_currentArtistCloudLibraryID = 0;

    currentAlbumCloudLibraryID = self->_currentAlbumCloudLibraryID;
    self->_currentAlbumCloudLibraryID = 0;

    currentGlobalPlaylistID = self->_currentGlobalPlaylistID;
    self->_currentGlobalPlaylistID = 0;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1634888035)
  {
    if (code > 1634353988)
    {
      if (code == 1634353989)
      {
        return result;
      }

      v6 = 20551;
    }

    else
    {
      if (code == 1634025833)
      {
        return result;
      }

      v6 = 16745;
    }

    v5 = v6 | 0x616A0000;
    goto LABEL_14;
  }

  if (code <= 1835819883)
  {
    if (code == 1634888036)
    {
      return result;
    }

    v5 = 1835624804;
    goto LABEL_14;
  }

  if (code != 1835819884 && code != 1835821428)
  {
    v5 = 1836413042;
LABEL_14:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

- (FavoriteEntityResponseParserDelegate)initWithEntityType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = FavoriteEntityResponseParserDelegate;
  v4 = [(FavoriteEntityResponseParserDelegate *)&v8 init];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    addedItems = v4->_addedItems;
    v4->_addedItems = v5;

    v4->_entityType = type;
  }

  return v4;
}

@end