@interface ICCollaborationBeginResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationBeginResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationBeginResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1634354039)
  {
    if (code == 1634353999)
    {
      v16 = parserCopy;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationMode:bswap32(*bytes)];
      goto LABEL_21;
    }

    if (code == 1634354021)
    {
      v16 = parserCopy;
      [(ICCollaborationBeginResponse *)self->_response setIsCollaborative:*bytes != 0];
      goto LABEL_21;
    }

    if (code != 1634354025)
    {
      goto LABEL_22;
    }

    response = self->_response;
    v16 = parserCopy;
    v12 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    [(ICCollaborationBeginResponse *)response setCollaborationInviteURL:v12];
    goto LABEL_10;
  }

  if (code <= 1835624803)
  {
    if (code == 1634354040)
    {
      v16 = parserCopy;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationInviteURLExpirationDate:bswap32(*bytes)];
      goto LABEL_21;
    }

    if (code != 1634357319)
    {
      goto LABEL_22;
    }

    v11 = self->_response;
    v16 = parserCopy;
    v12 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    [(ICCollaborationBeginResponse *)v11 setCollaborationGlobalID:v12];
LABEL_10:

    goto LABEL_21;
  }

  if (code == 1836413042)
  {
    v16 = parserCopy;
    [(ICCollaborationBeginResponse *)self->_response setUpdateRequired:*bytes != 0];
  }

  else
  {
    if (code != 1835624804)
    {
      goto LABEL_22;
    }

    v14 = bswap32(*bytes);
    currentContainerDAAPCode = self->_currentContainerDAAPCode;
    if (currentContainerDAAPCode == 1836409964)
    {
      v16 = parserCopy;
      [(ICCollaborationBeginResponse *)self->_response setPlaylistCloudLibraryIDToDelete:v14];
    }

    else
    {
      if (currentContainerDAAPCode != 1835821428)
      {
        goto LABEL_22;
      }

      v16 = parserCopy;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationCloudLibraryID:v14];
    }
  }

LABEL_21:
  parserCopy = v16;
LABEL_22:
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1634357318)
  {
    if (code - 1634353999 <= 0x29 && ((1 << (code - 79)) & 0x20004400009) != 0)
    {
      return result;
    }

    return 0;
  }

  if (code > 1835821427)
  {
    if (code == 1835821428)
    {
      return result;
    }

    v5 = 1836413042;
  }

  else
  {
    if (code == 1634357319)
    {
      return result;
    }

    v5 = 1835624804;
  }

  if (code != v5)
  {
    return 0;
  }

  return result;
}

- (ICCollaborationBeginResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationBeginResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

@end