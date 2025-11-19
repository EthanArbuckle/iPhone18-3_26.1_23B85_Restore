@interface ICCollaborationBeginResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationBeginResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationBeginResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 <= 1634354039)
  {
    if (a4 == 1634353999)
    {
      v16 = v10;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationMode:bswap32(*a5)];
      goto LABEL_21;
    }

    if (a4 == 1634354021)
    {
      v16 = v10;
      [(ICCollaborationBeginResponse *)self->_response setIsCollaborative:*a5 != 0];
      goto LABEL_21;
    }

    if (a4 != 1634354025)
    {
      goto LABEL_22;
    }

    response = self->_response;
    v16 = v10;
    v12 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
    [(ICCollaborationBeginResponse *)response setCollaborationInviteURL:v12];
    goto LABEL_10;
  }

  if (a4 <= 1835624803)
  {
    if (a4 == 1634354040)
    {
      v16 = v10;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationInviteURLExpirationDate:bswap32(*a5)];
      goto LABEL_21;
    }

    if (a4 != 1634357319)
    {
      goto LABEL_22;
    }

    v11 = self->_response;
    v16 = v10;
    v12 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
    [(ICCollaborationBeginResponse *)v11 setCollaborationGlobalID:v12];
LABEL_10:

    goto LABEL_21;
  }

  if (a4 == 1836413042)
  {
    v16 = v10;
    [(ICCollaborationBeginResponse *)self->_response setUpdateRequired:*a5 != 0];
  }

  else
  {
    if (a4 != 1835624804)
    {
      goto LABEL_22;
    }

    v14 = bswap32(*a5);
    currentContainerDAAPCode = self->_currentContainerDAAPCode;
    if (currentContainerDAAPCode == 1836409964)
    {
      v16 = v10;
      [(ICCollaborationBeginResponse *)self->_response setPlaylistCloudLibraryIDToDelete:v14];
    }

    else
    {
      if (currentContainerDAAPCode != 1835821428)
      {
        goto LABEL_22;
      }

      v16 = v10;
      [(ICCollaborationBeginResponse *)self->_response setCollaborationCloudLibraryID:v14];
    }
  }

LABEL_21:
  v10 = v16;
LABEL_22:
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1634357318)
  {
    if (a4 - 1634353999 <= 0x29 && ((1 << (a4 - 79)) & 0x20004400009) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a4 > 1835821427)
  {
    if (a4 == 1835821428)
    {
      return result;
    }

    v5 = 1836413042;
  }

  else
  {
    if (a4 == 1634357319)
    {
      return result;
    }

    v5 = 1835624804;
  }

  if (a4 != v5)
  {
    return 0;
  }

  return result;
}

- (ICCollaborationBeginResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationBeginResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

@end