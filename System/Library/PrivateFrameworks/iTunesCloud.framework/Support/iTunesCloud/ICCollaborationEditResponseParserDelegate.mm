@interface ICCollaborationEditResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationEditResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationEditResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  if (code == 1836413042)
  {
    [(ICCollaborationEditResponse *)self->_response setUpdateRequired:*bytes != 0];
  }
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

- (ICCollaborationEditResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationEditResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

@end