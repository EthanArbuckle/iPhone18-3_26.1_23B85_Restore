@interface UpdateResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation UpdateResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code > 1634357842)
  {
    if (code == 1634357843)
    {
      self->_hasNeedsResetSync = 1;
      self->_needsResetSync = *bytes;
    }

    else if (code == 1836413810)
    {
      self->_serverRevision = bswap32(*bytes);
    }
  }

  else if (code == 1634354753)
  {
    self->_hasAddToPlaylistBehavior = 1;
    self->_addToPlaylistBehavior = *bytes;
  }

  else if (code == 1634354764)
  {
    self->_hasAddToLibraryWhenFavoritingBehavior = 1;
    self->_addToLibraryWhenFavoritingBehavior = *bytes;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1634357842)
  {
    if (code == 1634354753)
    {
      return result;
    }

    v5 = 1634354764;
    goto LABEL_7;
  }

  if (code != 1634357843 && code != 1836413028)
  {
    v5 = 1836413810;
LABEL_7:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

@end