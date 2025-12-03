@interface ICCollaborationResetInvitationURLResponseParserDelegate
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (ICCollaborationResetInvitationURLResponseParserDelegate)initWithResponse:(id)response;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
@end

@implementation ICCollaborationResetInvitationURLResponseParserDelegate

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  switch(code)
  {
    case 0x616A4369u:
      v14 = parserCopy;
      v11 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      response = self->_response;
      v13 = [NSURL URLWithString:v11];
      [(ICCollaborationResetInvitationURLResponse *)response setUpdatedInvitationURL:v13];

      break;
    case 0x616A4378u:
      v14 = parserCopy;
      [(ICCollaborationResetInvitationURLResponse *)self->_response setUpdatedInviteURLExpirationDate:bswap32(*bytes)];
      break;
    case 0x6D757072u:
      v14 = parserCopy;
      [(ICCollaborationResetInvitationURLResponse *)self->_response setUpdateRequired:*bytes != 0];
      break;
    default:
      goto LABEL_8;
  }

  parserCopy = v14;
LABEL_8:
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code - 1634354002 > 0x26 || ((1 << (code - 82)) & 0x4000800001) == 0)
  {
    return code == 1634357319 || code == 1836413042;
  }

  return result;
}

- (ICCollaborationResetInvitationURLResponseParserDelegate)initWithResponse:(id)response
{
  responseCopy = response;
  v6 = [(ICCollaborationResetInvitationURLResponseParserDelegate *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

@end