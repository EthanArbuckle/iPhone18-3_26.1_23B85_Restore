@interface ICCollaborationJoinResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationJoinResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationJoinResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v9 = a3;
  if (a4 == 1836413042)
  {
    v10 = v9;
    [(ICCollaborationJoinResponse *)self->_joinResponse setUpdateRequired:*a5 != 0];
    goto LABEL_6;
  }

  if (a4 == 1835624804 && self->_currentContainerDAAPCode == 1835821428)
  {
    v10 = v9;
    [(ICCollaborationJoinResponse *)self->_joinResponse setCollaborationCloudLibraryID:bswap32(*a5)];
LABEL_6:
    v9 = v10;
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 > 1835819883)
  {
    if (a4 != 1835819884 && a4 != 1835821428)
    {
      v5 = 1836413042;
LABEL_8:
      if (a4 != v5)
      {
        return 0;
      }
    }
  }

  else if (a4 != 1634354002 && a4 != 1634357319)
  {
    v5 = 1835624804;
    goto LABEL_8;
  }

  return result;
}

- (ICCollaborationJoinResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationJoinResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_joinResponse, a3);
  }

  return v7;
}

@end