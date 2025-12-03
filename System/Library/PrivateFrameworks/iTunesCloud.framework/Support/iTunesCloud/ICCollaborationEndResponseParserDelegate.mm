@interface ICCollaborationEndResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationEndResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationEndResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  switch(code)
  {
    case 0x616A5047u:
      response = self->_response;
      v15 = parserCopy;
      v14 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      [(ICCollaborationEndResponse *)response setConvertedPlaylistGlobalID:v14];

      break;
    case 0x6D757072u:
      v15 = parserCopy;
      [(ICCollaborationEndResponse *)self->_response setUpdateRequired:*bytes != 0];
      break;
    case 0x6D696964u:
      v11 = bswap32(*bytes);
      currentContainerDAAPCode = self->_currentContainerDAAPCode;
      if (currentContainerDAAPCode == 1836409964)
      {
        v15 = parserCopy;
        [(ICCollaborationEndResponse *)self->_response setPlaylistCloudLibraryIDToDelete:v11];
      }

      else
      {
        if (currentContainerDAAPCode != 1835821428)
        {
          goto LABEL_11;
        }

        v15 = parserCopy;
        [(ICCollaborationEndResponse *)self->_response setConvertedPlaylistCloudLibraryID:v11];
      }

      break;
    default:
      goto LABEL_11;
  }

  parserCopy = v15;
LABEL_11:
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1835624803)
  {
    if (code == 1634354002)
    {
      return result;
    }

    v5 = 1634357319;
    goto LABEL_7;
  }

  if (code != 1835624804 && code != 1835821428)
  {
    v5 = 1836413042;
LABEL_7:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

- (ICCollaborationEndResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationEndResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

@end