@interface SVXTaskContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXTaskContext)initWithCoder:(id)a3;
- (SVXTaskContext)initWithOrigin:(int64_t)a3 timestamp:(unint64_t)a4 sessionUUID:(id)a5 requestUUID:(id)a6 aceId:(id)a7 refId:(id)a8 dialogIdentifier:(id)a9 dialogPhase:(id)a10 isUUFR:(BOOL)a11 listensAfterSpeaking:(BOOL)a12 listenAfterSpeakingBehavior:(id)a13 activationContext:(id)a14 deactivationContext:(id)a15 error:(id)a16;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXTaskContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  origin = self->_origin;
  v10 = a3;
  v6 = [v4 numberWithInteger:origin];
  [v10 encodeObject:v6 forKey:@"SVXTaskContext::origin"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v10 encodeObject:v7 forKey:@"SVXTaskContext::timestamp"];

  [v10 encodeObject:self->_sessionUUID forKey:@"SVXTaskContext::sessionUUID"];
  [v10 encodeObject:self->_requestUUID forKey:@"SVXTaskContext::requestUUID"];
  [v10 encodeObject:self->_aceId forKey:@"SVXTaskContext::aceId"];
  [v10 encodeObject:self->_refId forKey:@"SVXTaskContext::refId"];
  [v10 encodeObject:self->_dialogIdentifier forKey:@"SVXTaskContext::dialogIdentifier"];
  [v10 encodeObject:self->_dialogPhase forKey:@"SVXTaskContext::dialogPhase"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUUFR];
  [v10 encodeObject:v8 forKey:@"SVXTaskContext::isUUFR"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_listensAfterSpeaking];
  [v10 encodeObject:v9 forKey:@"SVXTaskContext::listensAfterSpeaking"];

  [v10 encodeObject:self->_listenAfterSpeakingBehavior forKey:@"SVXTaskContext::listenAfterSpeakingBehavior"];
  [v10 encodeObject:self->_activationContext forKey:@"SVXTaskContext::activationContext"];
  [v10 encodeObject:self->_deactivationContext forKey:@"SVXTaskContext::deactivationContext"];
  [v10 encodeObject:self->_error forKey:@"SVXTaskContext::error"];
}

- (SVXTaskContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::origin"];
  v23 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::timestamp"];
  v22 = [v5 unsignedLongLongValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::sessionUUID"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::requestUUID"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::aceId"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::refId"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::dialogIdentifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::dialogPhase"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::isUUFR"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::listensAfterSpeaking"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::listenAfterSpeakingBehavior"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::activationContext"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::deactivationContext"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::error"];

  BYTE1(v17) = v11;
  LOBYTE(v17) = v9;
  v25 = [(SVXTaskContext *)self initWithOrigin:v23 timestamp:v22 sessionUUID:v19 requestUUID:v18 aceId:v21 refId:v20 dialogIdentifier:v6 dialogPhase:v7 isUUFR:v17 listensAfterSpeaking:v12 listenAfterSpeakingBehavior:v13 activationContext:v14 deactivationContext:v15 error:?];

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      origin = self->_origin;
      if (origin == [(SVXTaskContext *)v5 origin]&& (timestamp = self->_timestamp, timestamp == [(SVXTaskContext *)v5 timestamp]) && (isUUFR = self->_isUUFR, isUUFR == [(SVXTaskContext *)v5 isUUFR]) && (listensAfterSpeaking = self->_listensAfterSpeaking, listensAfterSpeaking == [(SVXTaskContext *)v5 listensAfterSpeaking]))
      {
        v10 = [(SVXTaskContext *)v5 sessionUUID];
        sessionUUID = self->_sessionUUID;
        if (sessionUUID == v10 || [(NSUUID *)sessionUUID isEqual:v10])
        {
          v12 = [(SVXTaskContext *)v5 requestUUID];
          requestUUID = self->_requestUUID;
          if (requestUUID == v12 || [(NSUUID *)requestUUID isEqual:v12])
          {
            v14 = [(SVXTaskContext *)v5 aceId];
            aceId = self->_aceId;
            if (aceId == v14 || [(NSString *)aceId isEqual:v14])
            {
              v16 = [(SVXTaskContext *)v5 refId];
              refId = self->_refId;
              if (refId == v16 || [(NSString *)refId isEqual:v16])
              {
                v18 = [(SVXTaskContext *)v5 dialogIdentifier];
                dialogIdentifier = self->_dialogIdentifier;
                if (dialogIdentifier == v18 || [(NSString *)dialogIdentifier isEqual:v18])
                {
                  v20 = [(SVXTaskContext *)v5 dialogPhase];
                  dialogPhase = self->_dialogPhase;
                  if (dialogPhase == v20 || [(NSString *)dialogPhase isEqual:v20])
                  {
                    v22 = [(SVXTaskContext *)v5 listenAfterSpeakingBehavior];
                    listenAfterSpeakingBehavior = self->_listenAfterSpeakingBehavior;
                    if (listenAfterSpeakingBehavior == v22 || [(SAUIListenAfterSpeakingBehavior *)listenAfterSpeakingBehavior isEqual:v22])
                    {
                      v35 = v22;
                      v24 = [(SVXTaskContext *)v5 activationContext];
                      activationContext = self->_activationContext;
                      if (activationContext == v24 || [(SVXActivationContext *)activationContext isEqual:v24])
                      {
                        v26 = [(SVXTaskContext *)v5 deactivationContext];
                        deactivationContext = self->_deactivationContext;
                        if (deactivationContext == v26 || [(SVXDeactivationContext *)deactivationContext isEqual:v26])
                        {
                          v28 = [(SVXTaskContext *)v5 error];
                          error = self->_error;
                          v32 = 1;
                          if (error != v28)
                          {
                            v30 = v28;
                            v31 = [(NSError *)error isEqual:v28];
                            v28 = v30;
                            if (!v31)
                            {
                              v32 = 0;
                            }
                          }
                        }

                        else
                        {
                          v32 = 0;
                        }

                        v24 = v34;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v22 = v35;
                    }

                    else
                    {
                      v32 = 0;
                    }
                  }

                  else
                  {
                    v32 = 0;
                  }
                }

                else
                {
                  v32 = 0;
                }
              }

              else
              {
                v32 = 0;
              }
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_origin];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSUUID *)self->_sessionUUID hash];
  v8 = v7 ^ [(NSUUID *)self->_requestUUID hash];
  v9 = v8 ^ [(NSString *)self->_aceId hash];
  v10 = v6 ^ v9 ^ [(NSString *)self->_refId hash];
  v11 = [(NSString *)self->_dialogIdentifier hash];
  v12 = v11 ^ [(NSString *)self->_dialogPhase hash];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUUFR];
  v14 = v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_listensAfterSpeaking];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(SAUIListenAfterSpeakingBehavior *)self->_listenAfterSpeakingBehavior hash];
  v18 = v17 ^ [(SVXActivationContext *)self->_activationContext hash];
  v19 = v18 ^ [(SVXDeactivationContext *)self->_deactivationContext hash];
  v20 = v19 ^ [(NSError *)self->_error hash];

  return v16 ^ v20;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v14.receiver = self;
  v14.super_class = SVXTaskContext;
  v5 = [(SVXTaskContext *)&v14 description];
  origin = self->_origin;
  if (origin > 0xC)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C66ED0[origin];
  }

  v8 = v7;
  v9 = v8;
  v10 = @"NO";
  if (self->_isUUFR)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_listensAfterSpeaking)
  {
    v10 = @"YES";
  }

  v12 = [v4 initWithFormat:@"%@ {origin = %@, timestamp = %llu, sessionUUID = %@, requestUUID = %@, aceId = %@, refId = %@, dialogIdentifier = %@, dialogPhase = %@, isUUFR = %@, listensAfterSpeaking = %@, listenAfterSpeakingBehavior = %@, activationContext = %@, deactivationContext = %@, error = %@}", v5, v8, *&self->_timestamp, *&self->_requestUUID, *&self->_refId, self->_dialogPhase, v11, v10, self->_listenAfterSpeakingBehavior, self->_activationContext, self->_deactivationContext, self->_error];

  return v12;
}

- (SVXTaskContext)initWithOrigin:(int64_t)a3 timestamp:(unint64_t)a4 sessionUUID:(id)a5 requestUUID:(id)a6 aceId:(id)a7 refId:(id)a8 dialogIdentifier:(id)a9 dialogPhase:(id)a10 isUUFR:(BOOL)a11 listensAfterSpeaking:(BOOL)a12 listenAfterSpeakingBehavior:(id)a13 activationContext:(id)a14 deactivationContext:(id)a15 error:(id)a16
{
  v52 = a5;
  v53 = a6;
  v20 = a7;
  v54 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v55.receiver = self;
  v55.super_class = SVXTaskContext;
  v27 = [(SVXTaskContext *)&v55 init];
  v28 = v27;
  if (v27)
  {
    v27->_origin = a3;
    v27->_timestamp = a4;
    v29 = [v52 copy];
    sessionUUID = v28->_sessionUUID;
    v28->_sessionUUID = v29;

    v31 = [v53 copy];
    requestUUID = v28->_requestUUID;
    v28->_requestUUID = v31;

    v33 = [v20 copy];
    aceId = v28->_aceId;
    v28->_aceId = v33;

    v35 = [v54 copy];
    refId = v28->_refId;
    v28->_refId = v35;

    v37 = [v21 copy];
    dialogIdentifier = v28->_dialogIdentifier;
    v28->_dialogIdentifier = v37;

    v39 = [v22 copy];
    dialogPhase = v28->_dialogPhase;
    v28->_dialogPhase = v39;

    v28->_isUUFR = a11;
    v28->_listensAfterSpeaking = a12;
    v41 = [v23 copy];
    listenAfterSpeakingBehavior = v28->_listenAfterSpeakingBehavior;
    v28->_listenAfterSpeakingBehavior = v41;

    v43 = [v24 copy];
    activationContext = v28->_activationContext;
    v28->_activationContext = v43;

    v45 = [v25 copy];
    deactivationContext = v28->_deactivationContext;
    v28->_deactivationContext = v45;

    v47 = [v26 copy];
    error = v28->_error;
    v28->_error = v47;
  }

  return v28;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXTaskContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXTaskContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXTaskContext *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXTaskContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXTaskContextMutation *)v4 generate];

  return v5;
}

@end