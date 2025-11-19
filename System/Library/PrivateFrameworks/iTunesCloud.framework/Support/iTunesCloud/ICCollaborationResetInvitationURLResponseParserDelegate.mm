@interface ICCollaborationResetInvitationURLResponseParserDelegate
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (ICCollaborationResetInvitationURLResponseParserDelegate)initWithResponse:(id)a3;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
@end

@implementation ICCollaborationResetInvitationURLResponseParserDelegate

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  switch(a4)
  {
    case 0x616A4369u:
      v14 = v10;
      v11 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
      response = self->_response;
      v13 = [NSURL URLWithString:v11];
      [(ICCollaborationResetInvitationURLResponse *)response setUpdatedInvitationURL:v13];

      break;
    case 0x616A4378u:
      v14 = v10;
      [(ICCollaborationResetInvitationURLResponse *)self->_response setUpdatedInviteURLExpirationDate:bswap32(*a5)];
      break;
    case 0x6D757072u:
      v14 = v10;
      [(ICCollaborationResetInvitationURLResponse *)self->_response setUpdateRequired:*a5 != 0];
      break;
    default:
      goto LABEL_8;
  }

  v10 = v14;
LABEL_8:
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 - 1634354002 > 0x26 || ((1 << (a4 - 82)) & 0x4000800001) == 0)
  {
    return a4 == 1634357319 || a4 == 1836413042;
  }

  return result;
}

- (ICCollaborationResetInvitationURLResponseParserDelegate)initWithResponse:(id)a3
{
  v5 = a3;
  v6 = [(ICCollaborationResetInvitationURLResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

@end