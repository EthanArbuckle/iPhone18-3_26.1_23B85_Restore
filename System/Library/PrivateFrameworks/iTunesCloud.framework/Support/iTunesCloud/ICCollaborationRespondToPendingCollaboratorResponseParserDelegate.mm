@interface ICCollaborationRespondToPendingCollaboratorResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationRespondToPendingCollaboratorResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationRespondToPendingCollaboratorResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  if (a4 == 1836413042)
  {
    [(ICCollaborationRespondToPendingCollaboratorResponse *)self->_collaborationResponse setUpdateRequired:*a5 != 0];
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1634357318)
  {
    if (a4 - 1634353999 <= 0x1A && ((1 << (a4 - 79)) & 0x4400009) != 0)
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

- (ICCollaborationRespondToPendingCollaboratorResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationRespondToPendingCollaboratorResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationResponse, a3);
  }

  return v7;
}

@end