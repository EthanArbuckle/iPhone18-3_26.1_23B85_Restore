@interface ICCollaborationEndResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationEndResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationEndResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  switch(a4)
  {
    case 0x616A5047u:
      response = self->_response;
      v15 = v10;
      v14 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      [(ICCollaborationEndResponse *)response setConvertedPlaylistGlobalID:v14];

      break;
    case 0x6D757072u:
      v15 = v10;
      [(ICCollaborationEndResponse *)self->_response setUpdateRequired:*a5 != 0];
      break;
    case 0x6D696964u:
      v11 = bswap32(*a5);
      currentContainerDAAPCode = self->_currentContainerDAAPCode;
      if (currentContainerDAAPCode == 1836409964)
      {
        v15 = v10;
        [(ICCollaborationEndResponse *)self->_response setPlaylistCloudLibraryIDToDelete:v11];
      }

      else
      {
        if (currentContainerDAAPCode != 1835821428)
        {
          goto LABEL_11;
        }

        v15 = v10;
        [(ICCollaborationEndResponse *)self->_response setConvertedPlaylistCloudLibraryID:v11];
      }

      break;
    default:
      goto LABEL_11;
  }

  v10 = v15;
LABEL_11:
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1835624803)
  {
    if (a4 == 1634354002)
    {
      return result;
    }

    v5 = 1634357319;
    goto LABEL_7;
  }

  if (a4 != 1835624804 && a4 != 1835821428)
  {
    v5 = 1836413042;
LABEL_7:
    if (a4 != v5)
    {
      return 0;
    }
  }

  return result;
}

- (ICCollaborationEndResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationEndResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

@end