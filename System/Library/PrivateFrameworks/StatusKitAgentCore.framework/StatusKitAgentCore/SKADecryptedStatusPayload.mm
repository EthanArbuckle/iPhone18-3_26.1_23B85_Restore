@interface SKADecryptedStatusPayload
- (SKADecryptedStatusPayload)initWithStatusPayload:(id)payload invitation:(id)invitation;
- (id)description;
@end

@implementation SKADecryptedStatusPayload

- (SKADecryptedStatusPayload)initWithStatusPayload:(id)payload invitation:(id)invitation
{
  payloadCopy = payload;
  invitationCopy = invitation;
  v12.receiver = self;
  v12.super_class = SKADecryptedStatusPayload;
  v9 = [(SKADecryptedStatusPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_statusPayload, payload);
    objc_storeStrong(&v10->_invitation, invitation);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  statusPayload = [(SKADecryptedStatusPayload *)self statusPayload];
  invitation = [(SKADecryptedStatusPayload *)self invitation];
  v7 = [v3 stringWithFormat:@"<%@: %p statusPayload = %@; invitation = %@>;", v4, self, statusPayload, invitation];;

  return v7;
}

@end