@interface SKADatabaseInvitedUser
- (BOOL)isEqual:(id)a3;
- (SKADatabaseInvitedUser)initWithCoreDataInvitedUser:(id)a3;
- (SKADatabaseInvitedUser)initWithInvitedHandle:(id)a3 senderHande:(id)a4 invitationPayloadData:(id)a5 dateInvitationPayloadCreated:(id)a6;
- (SKHandle)invitedSKHandle;
- (SKHandle)senderSKHandle;
- (SKInvitationPayload)invitationPayload;
- (unint64_t)hash;
@end

@implementation SKADatabaseInvitedUser

- (SKADatabaseInvitedUser)initWithCoreDataInvitedUser:(id)a3
{
  v4 = a3;
  v5 = [v4 invitedHandle];
  v6 = [v4 senderHandle];
  v7 = [v4 invitationPayload];
  v8 = [v4 dateInvitationPayloadCreated];

  v9 = [(SKADatabaseInvitedUser *)self initWithInvitedHandle:v5 senderHande:v6 invitationPayloadData:v7 dateInvitationPayloadCreated:v8];
  return v9;
}

- (SKADatabaseInvitedUser)initWithInvitedHandle:(id)a3 senderHande:(id)a4 invitationPayloadData:(id)a5 dateInvitationPayloadCreated:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = SKADatabaseInvitedUser;
  v14 = [(SKADatabaseInvitedUser *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    invitedHandle = v14->_invitedHandle;
    v14->_invitedHandle = v15;

    v17 = [v11 copy];
    senderHandle = v14->_senderHandle;
    v14->_senderHandle = v17;

    objc_storeStrong(&v14->_invitationPayloadData, a5);
    objc_storeStrong(&v14->_dateInvitationPayloadCreated, a6);
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (self == v5)
    {
      LOBYTE(v15) = 1;
      goto LABEL_52;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SKADatabaseInvitedUser *)self invitedHandle];
      if (!v8)
      {
        v3 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
        if (!v3)
        {
          v15 = 1;
LABEL_16:

          goto LABEL_17;
        }
      }

      v9 = [(SKADatabaseInvitedUser *)self invitedHandle];
      if (v9)
      {
        v10 = v9;
        v11 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
        if (v11)
        {
          v12 = v11;
          v13 = [(SKADatabaseInvitedUser *)self invitedHandle];
          v14 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
          v15 = [v13 isEqualToString:v14];

          if (!v8)
          {
            goto LABEL_16;
          }

LABEL_17:

          v16 = [(SKADatabaseInvitedUser *)self senderHandle];
          if (v16 || ([(SKADatabaseInvitedUser *)v7 senderHandle], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v17 = [(SKADatabaseInvitedUser *)self senderHandle];
            if (v17)
            {
              v18 = v17;
              v19 = [(SKADatabaseInvitedUser *)v7 senderHandle];
              if (v19)
              {
                v20 = v19;
                v21 = [(SKADatabaseInvitedUser *)self senderHandle];
                v22 = [(SKADatabaseInvitedUser *)v7 senderHandle];
                if (![v21 isEqualToString:v22])
                {
                  v15 = 0;
                }

                if (!v16)
                {
                  goto LABEL_27;
                }

LABEL_28:

                v23 = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                if (v23 || ([(SKADatabaseInvitedUser *)v7 invitationPayloadData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v24 = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = [(SKADatabaseInvitedUser *)v7 invitationPayloadData];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                      v29 = [(SKADatabaseInvitedUser *)v7 invitationPayloadData];
                      if (![v28 isEqualToData:v29])
                      {
                        v15 = 0;
                      }

                      if (!v23)
                      {
                        goto LABEL_38;
                      }

LABEL_39:

                      v30 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                      if (v30 || ([(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        v31 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = [(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated];
                          if (v33)
                          {
                            v34 = v33;
                            v35 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                            v36 = [(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated];
                            v37 = [v35 isEqualToDate:v36];
                            if (v15)
                            {
                              LOBYTE(v15) = v37;
                            }

                            else
                            {
                              LOBYTE(v15) = 0;
                            }

                            if (v30)
                            {
                              goto LABEL_51;
                            }

                            goto LABEL_50;
                          }
                        }

                        LOBYTE(v15) = 0;
                        if (v30)
                        {
LABEL_51:

                          goto LABEL_52;
                        }
                      }

LABEL_50:

                      goto LABEL_51;
                    }
                  }

                  v15 = 0;
                  if (v23)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_38:

                goto LABEL_39;
              }
            }

            v15 = 0;
            if (v16)
            {
              goto LABEL_28;
            }
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      v15 = 0;
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  LOBYTE(v15) = 0;
LABEL_52:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(SKADatabaseInvitedUser *)self invitationPayload];
  v4 = [v3 hash];

  v5 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
  v6 = [v5 hash] ^ v4;

  v7 = [(SKADatabaseInvitedUser *)self invitedHandle];
  v8 = [v7 hash];

  v9 = [(SKADatabaseInvitedUser *)self senderHandle];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (SKHandle)invitedSKHandle
{
  v2 = self->_invitedHandle;
  if ([(NSString *)v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKHandle)senderSKHandle
{
  v2 = self->_senderHandle;
  if ([(NSString *)v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKInvitationPayload)invitationPayload
{
  if (self->_dateInvitationPayloadCreated)
  {
    v3 = [objc_alloc(MEMORY[0x277D680D0]) initWithData:self->_invitationPayloadData dateCreated:self->_dateInvitationPayloadCreated];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end