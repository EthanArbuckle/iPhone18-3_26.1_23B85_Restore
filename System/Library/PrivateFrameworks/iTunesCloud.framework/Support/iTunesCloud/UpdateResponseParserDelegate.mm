@interface UpdateResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation UpdateResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  if (a4 > 1634357842)
  {
    if (a4 == 1634357843)
    {
      self->_hasNeedsResetSync = 1;
      self->_needsResetSync = *a5;
    }

    else if (a4 == 1836413810)
    {
      self->_serverRevision = bswap32(*a5);
    }
  }

  else if (a4 == 1634354753)
  {
    self->_hasAddToPlaylistBehavior = 1;
    self->_addToPlaylistBehavior = *a5;
  }

  else if (a4 == 1634354764)
  {
    self->_hasAddToLibraryWhenFavoritingBehavior = 1;
    self->_addToLibraryWhenFavoritingBehavior = *a5;
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1634357842)
  {
    if (a4 == 1634354753)
    {
      return result;
    }

    v5 = 1634354764;
    goto LABEL_7;
  }

  if (a4 != 1634357843 && a4 != 1836413028)
  {
    v5 = 1836413810;
LABEL_7:
    if (a4 != v5)
    {
      return 0;
    }
  }

  return result;
}

@end