@interface SVXTaskContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXTaskContext)initWithCoder:(id)coder;
- (SVXTaskContext)initWithOrigin:(int64_t)origin timestamp:(unint64_t)timestamp sessionUUID:(id)d requestUUID:(id)iD aceId:(id)id refId:(id)refId dialogIdentifier:(id)identifier dialogPhase:(id)self0 isUUFR:(BOOL)self1 listensAfterSpeaking:(BOOL)self2 listenAfterSpeakingBehavior:(id)self3 activationContext:(id)self4 deactivationContext:(id)self5 error:(id)self6;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXTaskContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  origin = self->_origin;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:origin];
  [coderCopy encodeObject:v6 forKey:@"SVXTaskContext::origin"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v7 forKey:@"SVXTaskContext::timestamp"];

  [coderCopy encodeObject:self->_sessionUUID forKey:@"SVXTaskContext::sessionUUID"];
  [coderCopy encodeObject:self->_requestUUID forKey:@"SVXTaskContext::requestUUID"];
  [coderCopy encodeObject:self->_aceId forKey:@"SVXTaskContext::aceId"];
  [coderCopy encodeObject:self->_refId forKey:@"SVXTaskContext::refId"];
  [coderCopy encodeObject:self->_dialogIdentifier forKey:@"SVXTaskContext::dialogIdentifier"];
  [coderCopy encodeObject:self->_dialogPhase forKey:@"SVXTaskContext::dialogPhase"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUUFR];
  [coderCopy encodeObject:v8 forKey:@"SVXTaskContext::isUUFR"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_listensAfterSpeaking];
  [coderCopy encodeObject:v9 forKey:@"SVXTaskContext::listensAfterSpeaking"];

  [coderCopy encodeObject:self->_listenAfterSpeakingBehavior forKey:@"SVXTaskContext::listenAfterSpeakingBehavior"];
  [coderCopy encodeObject:self->_activationContext forKey:@"SVXTaskContext::activationContext"];
  [coderCopy encodeObject:self->_deactivationContext forKey:@"SVXTaskContext::deactivationContext"];
  [coderCopy encodeObject:self->_error forKey:@"SVXTaskContext::error"];
}

- (SVXTaskContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::origin"];
  integerValue = [v4 integerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::timestamp"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::sessionUUID"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::requestUUID"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::aceId"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::refId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::dialogIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::dialogPhase"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::isUUFR"];
  bOOLValue = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::listensAfterSpeaking"];
  bOOLValue2 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::listenAfterSpeakingBehavior"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::activationContext"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::deactivationContext"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXTaskContext::error"];

  BYTE1(v17) = bOOLValue2;
  LOBYTE(v17) = bOOLValue;
  v25 = [(SVXTaskContext *)self initWithOrigin:integerValue timestamp:unsignedLongLongValue sessionUUID:v19 requestUUID:v18 aceId:v21 refId:v20 dialogIdentifier:v6 dialogPhase:v7 isUUFR:v17 listensAfterSpeaking:v12 listenAfterSpeakingBehavior:v13 activationContext:v14 deactivationContext:v15 error:?];

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      origin = self->_origin;
      if (origin == [(SVXTaskContext *)v5 origin]&& (timestamp = self->_timestamp, timestamp == [(SVXTaskContext *)v5 timestamp]) && (isUUFR = self->_isUUFR, isUUFR == [(SVXTaskContext *)v5 isUUFR]) && (listensAfterSpeaking = self->_listensAfterSpeaking, listensAfterSpeaking == [(SVXTaskContext *)v5 listensAfterSpeaking]))
      {
        sessionUUID = [(SVXTaskContext *)v5 sessionUUID];
        sessionUUID = self->_sessionUUID;
        if (sessionUUID == sessionUUID || [(NSUUID *)sessionUUID isEqual:sessionUUID])
        {
          requestUUID = [(SVXTaskContext *)v5 requestUUID];
          requestUUID = self->_requestUUID;
          if (requestUUID == requestUUID || [(NSUUID *)requestUUID isEqual:requestUUID])
          {
            aceId = [(SVXTaskContext *)v5 aceId];
            aceId = self->_aceId;
            if (aceId == aceId || [(NSString *)aceId isEqual:aceId])
            {
              refId = [(SVXTaskContext *)v5 refId];
              refId = self->_refId;
              if (refId == refId || [(NSString *)refId isEqual:refId])
              {
                dialogIdentifier = [(SVXTaskContext *)v5 dialogIdentifier];
                dialogIdentifier = self->_dialogIdentifier;
                if (dialogIdentifier == dialogIdentifier || [(NSString *)dialogIdentifier isEqual:dialogIdentifier])
                {
                  dialogPhase = [(SVXTaskContext *)v5 dialogPhase];
                  dialogPhase = self->_dialogPhase;
                  if (dialogPhase == dialogPhase || [(NSString *)dialogPhase isEqual:dialogPhase])
                  {
                    listenAfterSpeakingBehavior = [(SVXTaskContext *)v5 listenAfterSpeakingBehavior];
                    listenAfterSpeakingBehavior = self->_listenAfterSpeakingBehavior;
                    if (listenAfterSpeakingBehavior == listenAfterSpeakingBehavior || [(SAUIListenAfterSpeakingBehavior *)listenAfterSpeakingBehavior isEqual:listenAfterSpeakingBehavior])
                    {
                      v35 = listenAfterSpeakingBehavior;
                      activationContext = [(SVXTaskContext *)v5 activationContext];
                      activationContext = self->_activationContext;
                      if (activationContext == activationContext || [(SVXActivationContext *)activationContext isEqual:activationContext])
                      {
                        deactivationContext = [(SVXTaskContext *)v5 deactivationContext];
                        deactivationContext = self->_deactivationContext;
                        if (deactivationContext == deactivationContext || [(SVXDeactivationContext *)deactivationContext isEqual:deactivationContext])
                        {
                          error = [(SVXTaskContext *)v5 error];
                          error = self->_error;
                          v32 = 1;
                          if (error != error)
                          {
                            v30 = error;
                            v31 = [(NSError *)error isEqual:error];
                            error = v30;
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

                        activationContext = v34;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      listenAfterSpeakingBehavior = v35;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXTaskContext)initWithOrigin:(int64_t)origin timestamp:(unint64_t)timestamp sessionUUID:(id)d requestUUID:(id)iD aceId:(id)id refId:(id)refId dialogIdentifier:(id)identifier dialogPhase:(id)self0 isUUFR:(BOOL)self1 listensAfterSpeaking:(BOOL)self2 listenAfterSpeakingBehavior:(id)self3 activationContext:(id)self4 deactivationContext:(id)self5 error:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  idCopy = id;
  refIdCopy = refId;
  identifierCopy = identifier;
  phaseCopy = phase;
  behaviorCopy = behavior;
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  errorCopy = error;
  v55.receiver = self;
  v55.super_class = SVXTaskContext;
  v27 = [(SVXTaskContext *)&v55 init];
  v28 = v27;
  if (v27)
  {
    v27->_origin = origin;
    v27->_timestamp = timestamp;
    v29 = [dCopy copy];
    sessionUUID = v28->_sessionUUID;
    v28->_sessionUUID = v29;

    v31 = [iDCopy copy];
    requestUUID = v28->_requestUUID;
    v28->_requestUUID = v31;

    v33 = [idCopy copy];
    aceId = v28->_aceId;
    v28->_aceId = v33;

    v35 = [refIdCopy copy];
    refId = v28->_refId;
    v28->_refId = v35;

    v37 = [identifierCopy copy];
    dialogIdentifier = v28->_dialogIdentifier;
    v28->_dialogIdentifier = v37;

    v39 = [phaseCopy copy];
    dialogPhase = v28->_dialogPhase;
    v28->_dialogPhase = v39;

    v28->_isUUFR = r;
    v28->_listensAfterSpeaking = speaking;
    v41 = [behaviorCopy copy];
    listenAfterSpeakingBehavior = v28->_listenAfterSpeakingBehavior;
    v28->_listenAfterSpeakingBehavior = v41;

    v43 = [contextCopy copy];
    activationContext = v28->_activationContext;
    v28->_activationContext = v43;

    v45 = [deactivationContextCopy copy];
    deactivationContext = v28->_deactivationContext;
    v28->_deactivationContext = v45;

    v47 = [errorCopy copy];
    error = v28->_error;
    v28->_error = v47;
  }

  return v28;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXTaskContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXTaskContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXTaskContext *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXTaskContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXTaskContextMutation *)v4 generate];

  return generate;
}

@end