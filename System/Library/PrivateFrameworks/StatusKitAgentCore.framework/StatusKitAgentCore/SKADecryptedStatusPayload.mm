@interface SKADecryptedStatusPayload
- (SKADecryptedStatusPayload)initWithStatusPayload:(id)a3 invitation:(id)a4;
- (id)description;
@end

@implementation SKADecryptedStatusPayload

- (SKADecryptedStatusPayload)initWithStatusPayload:(id)a3 invitation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKADecryptedStatusPayload;
  v9 = [(SKADecryptedStatusPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_statusPayload, a3);
    objc_storeStrong(&v10->_invitation, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKADecryptedStatusPayload *)self statusPayload];
  v6 = [(SKADecryptedStatusPayload *)self invitation];
  v7 = [v3 stringWithFormat:@"<%@: %p statusPayload = %@; invitation = %@>;", v4, self, v5, v6];;

  return v7;
}

@end