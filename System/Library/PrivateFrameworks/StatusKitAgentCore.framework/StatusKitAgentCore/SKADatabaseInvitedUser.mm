@interface SKADatabaseInvitedUser
- (BOOL)isEqual:(id)equal;
- (SKADatabaseInvitedUser)initWithCoreDataInvitedUser:(id)user;
- (SKADatabaseInvitedUser)initWithInvitedHandle:(id)handle senderHande:(id)hande invitationPayloadData:(id)data dateInvitationPayloadCreated:(id)created;
- (SKHandle)invitedSKHandle;
- (SKHandle)senderSKHandle;
- (SKInvitationPayload)invitationPayload;
- (unint64_t)hash;
@end

@implementation SKADatabaseInvitedUser

- (SKADatabaseInvitedUser)initWithCoreDataInvitedUser:(id)user
{
  userCopy = user;
  invitedHandle = [userCopy invitedHandle];
  senderHandle = [userCopy senderHandle];
  invitationPayload = [userCopy invitationPayload];
  dateInvitationPayloadCreated = [userCopy dateInvitationPayloadCreated];

  v9 = [(SKADatabaseInvitedUser *)self initWithInvitedHandle:invitedHandle senderHande:senderHandle invitationPayloadData:invitationPayload dateInvitationPayloadCreated:dateInvitationPayloadCreated];
  return v9;
}

- (SKADatabaseInvitedUser)initWithInvitedHandle:(id)handle senderHande:(id)hande invitationPayloadData:(id)data dateInvitationPayloadCreated:(id)created
{
  handleCopy = handle;
  handeCopy = hande;
  dataCopy = data;
  createdCopy = created;
  v20.receiver = self;
  v20.super_class = SKADatabaseInvitedUser;
  v14 = [(SKADatabaseInvitedUser *)&v20 init];
  if (v14)
  {
    v15 = [handleCopy copy];
    invitedHandle = v14->_invitedHandle;
    v14->_invitedHandle = v15;

    v17 = [handeCopy copy];
    senderHandle = v14->_senderHandle;
    v14->_senderHandle = v17;

    objc_storeStrong(&v14->_invitationPayloadData, data);
    objc_storeStrong(&v14->_dateInvitationPayloadCreated, created);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      LOBYTE(v15) = 1;
      goto LABEL_52;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      invitedHandle = [(SKADatabaseInvitedUser *)self invitedHandle];
      if (!invitedHandle)
      {
        invitedHandle2 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
        if (!invitedHandle2)
        {
          v15 = 1;
LABEL_16:

          goto LABEL_17;
        }
      }

      invitedHandle3 = [(SKADatabaseInvitedUser *)self invitedHandle];
      if (invitedHandle3)
      {
        v10 = invitedHandle3;
        invitedHandle4 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
        if (invitedHandle4)
        {
          v12 = invitedHandle4;
          invitedHandle5 = [(SKADatabaseInvitedUser *)self invitedHandle];
          invitedHandle6 = [(SKADatabaseInvitedUser *)v7 invitedHandle];
          v15 = [invitedHandle5 isEqualToString:invitedHandle6];

          if (!invitedHandle)
          {
            goto LABEL_16;
          }

LABEL_17:

          senderHandle = [(SKADatabaseInvitedUser *)self senderHandle];
          if (senderHandle || ([(SKADatabaseInvitedUser *)v7 senderHandle], (invitedHandle2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            senderHandle2 = [(SKADatabaseInvitedUser *)self senderHandle];
            if (senderHandle2)
            {
              v18 = senderHandle2;
              senderHandle3 = [(SKADatabaseInvitedUser *)v7 senderHandle];
              if (senderHandle3)
              {
                v20 = senderHandle3;
                senderHandle4 = [(SKADatabaseInvitedUser *)self senderHandle];
                senderHandle5 = [(SKADatabaseInvitedUser *)v7 senderHandle];
                if (![senderHandle4 isEqualToString:senderHandle5])
                {
                  v15 = 0;
                }

                if (!senderHandle)
                {
                  goto LABEL_27;
                }

LABEL_28:

                invitationPayloadData = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                if (invitationPayloadData || ([(SKADatabaseInvitedUser *)v7 invitationPayloadData], (invitedHandle2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  invitationPayloadData2 = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                  if (invitationPayloadData2)
                  {
                    v25 = invitationPayloadData2;
                    invitationPayloadData3 = [(SKADatabaseInvitedUser *)v7 invitationPayloadData];
                    if (invitationPayloadData3)
                    {
                      v27 = invitationPayloadData3;
                      invitationPayloadData4 = [(SKADatabaseInvitedUser *)self invitationPayloadData];
                      invitationPayloadData5 = [(SKADatabaseInvitedUser *)v7 invitationPayloadData];
                      if (![invitationPayloadData4 isEqualToData:invitationPayloadData5])
                      {
                        v15 = 0;
                      }

                      if (!invitationPayloadData)
                      {
                        goto LABEL_38;
                      }

LABEL_39:

                      dateInvitationPayloadCreated = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                      if (dateInvitationPayloadCreated || ([(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated], (invitedHandle2 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        dateInvitationPayloadCreated2 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                        if (dateInvitationPayloadCreated2)
                        {
                          v32 = dateInvitationPayloadCreated2;
                          dateInvitationPayloadCreated3 = [(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated];
                          if (dateInvitationPayloadCreated3)
                          {
                            v34 = dateInvitationPayloadCreated3;
                            dateInvitationPayloadCreated4 = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
                            dateInvitationPayloadCreated5 = [(SKADatabaseInvitedUser *)v7 dateInvitationPayloadCreated];
                            v37 = [dateInvitationPayloadCreated4 isEqualToDate:dateInvitationPayloadCreated5];
                            if (v15)
                            {
                              LOBYTE(v15) = v37;
                            }

                            else
                            {
                              LOBYTE(v15) = 0;
                            }

                            if (dateInvitationPayloadCreated)
                            {
                              goto LABEL_51;
                            }

                            goto LABEL_50;
                          }
                        }

                        LOBYTE(v15) = 0;
                        if (dateInvitationPayloadCreated)
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
                  if (invitationPayloadData)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_38:

                goto LABEL_39;
              }
            }

            v15 = 0;
            if (senderHandle)
            {
              goto LABEL_28;
            }
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      v15 = 0;
      if (!invitedHandle)
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
  invitationPayload = [(SKADatabaseInvitedUser *)self invitationPayload];
  v4 = [invitationPayload hash];

  dateInvitationPayloadCreated = [(SKADatabaseInvitedUser *)self dateInvitationPayloadCreated];
  v6 = [dateInvitationPayloadCreated hash] ^ v4;

  invitedHandle = [(SKADatabaseInvitedUser *)self invitedHandle];
  v8 = [invitedHandle hash];

  senderHandle = [(SKADatabaseInvitedUser *)self senderHandle];
  v10 = v8 ^ [senderHandle hash];

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