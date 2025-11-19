@interface ICCollaborationEditResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationEditResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationEditResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  if (a4 == 1836413042)
  {
    [(ICCollaborationEditResponse *)self->_response setUpdateRequired:*a5 != 0];
  }
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

- (ICCollaborationEditResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationEditResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

@end