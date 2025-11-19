@interface FavoriteEntityResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (FavoriteEntityResponseParserDelegate)initWithEntityType:(int64_t)a3;
- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5;
@end

@implementation FavoriteEntityResponseParserDelegate

- (void)parser:(id)a3 didEndContainerCode:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1835821428)
  {
    v17 = v6;
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

      v6 = [(NSString *)self->_currentGlobalPlaylistID length];
      v7 = v17;
      if (!v6)
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

  _objc_release_x1(v6, v7);
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 <= 1634888035)
  {
    switch(a4)
    {
      case 0x61654169u:
        self->_currentAdamID = ((*a5 << 56) | (a5[1] << 48) | (a5[2] << 40) | (a5[3] << 32) | (a5[4] << 24) | (a5[5] << 16) | (a5[6] << 8)) + a5[7];
        goto LABEL_21;
      case 0x616A4169u:
        if (self->_entityType != 3)
        {
          goto LABEL_21;
        }

        v16 = v10;
        v15 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
        currentAlbumCloudLibraryID = self->_currentAlbumCloudLibraryID;
        self->_currentAlbumCloudLibraryID = v15;
        break;
      case 0x616A5047u:
        v16 = v10;
        v11 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
        currentAlbumCloudLibraryID = self->_currentGlobalPlaylistID;
        self->_currentGlobalPlaylistID = v11;
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_17;
  }

  switch(a4)
  {
    case 0x61726964u:
      if (self->_entityType != 2)
      {
        break;
      }

      v16 = v10;
      v14 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      currentAlbumCloudLibraryID = self->_currentArtistCloudLibraryID;
      self->_currentArtistCloudLibraryID = v14;
LABEL_17:

      v10 = v16;
      break;
    case 0x6D757072u:
      self->_updateRequired = *a5 != 0;
      break;
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
    default:
      break;
  }

LABEL_21:
}

- (void)parser:(id)a3 didStartContainerCode:(unsigned int)a4 contentLength:(unsigned int)a5
{
  if (a4 == 1835821428)
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

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1634888035)
  {
    if (a4 > 1634353988)
    {
      if (a4 == 1634353989)
      {
        return result;
      }

      v6 = 20551;
    }

    else
    {
      if (a4 == 1634025833)
      {
        return result;
      }

      v6 = 16745;
    }

    v5 = v6 | 0x616A0000;
    goto LABEL_14;
  }

  if (a4 <= 1835819883)
  {
    if (a4 == 1634888036)
    {
      return result;
    }

    v5 = 1835624804;
    goto LABEL_14;
  }

  if (a4 != 1835819884 && a4 != 1835821428)
  {
    v5 = 1836413042;
LABEL_14:
    if (a4 != v5)
    {
      return 0;
    }
  }

  return result;
}

- (FavoriteEntityResponseParserDelegate)initWithEntityType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = FavoriteEntityResponseParserDelegate;
  v4 = [(FavoriteEntityResponseParserDelegate *)&v8 init];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    addedItems = v4->_addedItems;
    v4->_addedItems = v5;

    v4->_entityType = a3;
  }

  return v4;
}

@end