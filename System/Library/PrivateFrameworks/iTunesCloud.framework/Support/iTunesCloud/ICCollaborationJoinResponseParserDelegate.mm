@interface ICCollaborationJoinResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationJoinResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationJoinResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code == 1836413042)
  {
    v10 = parserCopy;
    [(ICCollaborationJoinResponse *)self->_joinResponse setUpdateRequired:*bytes != 0];
    goto LABEL_6;
  }

  if (code == 1835624804 && self->_currentContainerDAAPCode == 1835821428)
  {
    v10 = parserCopy;
    [(ICCollaborationJoinResponse *)self->_joinResponse setCollaborationCloudLibraryID:bswap32(*bytes)];
LABEL_6:
    parserCopy = v10;
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835819883)
  {
    if (code != 1835819884 && code != 1835821428)
    {
      v5 = 1836413042;
LABEL_8:
      if (code != v5)
      {
        return 0;
      }
    }
  }

  else if (code != 1634354002 && code != 1634357319)
  {
    v5 = 1835624804;
    goto LABEL_8;
  }

  return result;
}

- (ICCollaborationJoinResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationJoinResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_joinResponse, response);
  }

  return v7;
}

@end