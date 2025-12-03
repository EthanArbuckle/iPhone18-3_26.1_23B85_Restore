@interface ICCollaborationRespondToPendingCollaboratorResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationRespondToPendingCollaboratorResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationRespondToPendingCollaboratorResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1836413042)
  {
    [(ICCollaborationRespondToPendingCollaboratorResponse *)self->_collaborationResponse setUpdateRequired:*bytes != 0];
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1634357318)
  {
    if (code - 1634353999 <= 0x1A && ((1 << (code - 79)) & 0x4400009) != 0)
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

- (ICCollaborationRespondToPendingCollaboratorResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationRespondToPendingCollaboratorResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationResponse, response);
  }

  return v7;
}

@end