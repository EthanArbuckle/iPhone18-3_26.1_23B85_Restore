@interface _SVXTaskContextMutation
- (_SVXTaskContextMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXTaskContextMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v6 = [SVXTaskContext alloc];
    LOWORD(v28) = *&self->_isUUFR;
    v5 = [(SVXTaskContext *)v6 initWithOrigin:self->_origin timestamp:self->_timestamp sessionUUID:self->_sessionUUID requestUUID:self->_requestUUID aceId:self->_aceId refId:self->_refId dialogIdentifier:self->_dialogIdentifier dialogPhase:self->_dialogPhase isUUFR:v28 listensAfterSpeaking:self->_listenAfterSpeakingBehavior listenAfterSpeakingBehavior:self->_activationContext activationContext:self->_deactivationContext deactivationContext:self->_error error:?];
    goto LABEL_5;
  }

  mutationFlags = self->_mutationFlags;
  if (mutationFlags)
  {
    if ((mutationFlags & 2) != 0)
    {
      origin = self->_origin;
      if ((mutationFlags & 4) != 0)
      {
LABEL_8:
        timestamp = self->_timestamp;
        if ((mutationFlags & 8) != 0)
        {
LABEL_9:
          v8 = self->_sessionUUID;
          goto LABEL_13;
        }

LABEL_12:
        v8 = [(SVXTaskContext *)self->_baseModel sessionUUID];
LABEL_13:
        v33 = v8;
        if ((*&self->_mutationFlags & 0x10) != 0)
        {
          v9 = self->_requestUUID;
        }

        else
        {
          v9 = [(SVXTaskContext *)self->_baseModel requestUUID];
        }

        v31 = v9;
        if ((*&self->_mutationFlags & 0x20) != 0)
        {
          v10 = self->_aceId;
        }

        else
        {
          v10 = [(SVXTaskContext *)self->_baseModel aceId];
        }

        v30 = v10;
        if ((*&self->_mutationFlags & 0x40) != 0)
        {
          v11 = self->_refId;
        }

        else
        {
          v11 = [(SVXTaskContext *)self->_baseModel refId];
        }

        v29 = v11;
        if ((*&self->_mutationFlags & 0x80) != 0)
        {
          v12 = self->_dialogIdentifier;
        }

        else
        {
          v12 = [(SVXTaskContext *)self->_baseModel dialogIdentifier];
        }

        v13 = v12;
        if ((*&self->_mutationFlags & 0x100) != 0)
        {
          v14 = self->_dialogPhase;
        }

        else
        {
          v14 = [(SVXTaskContext *)self->_baseModel dialogPhase];
        }

        v15 = v14;
        v16 = self->_mutationFlags;
        if ((v16 & 0x200) != 0)
        {
          isUUFR = self->_isUUFR;
          if ((*&self->_mutationFlags & 0x400) != 0)
          {
LABEL_30:
            listensAfterSpeaking = self->_listensAfterSpeaking;
            if ((v16 & 0x800) != 0)
            {
LABEL_31:
              v19 = self->_listenAfterSpeakingBehavior;
LABEL_35:
              v20 = v19;
              if ((*&self->_mutationFlags & 0x1000) != 0)
              {
                v21 = self->_activationContext;
              }

              else
              {
                v21 = [(SVXTaskContext *)self->_baseModel activationContext];
              }

              v22 = v21;
              if ((*&self->_mutationFlags & 0x2000) != 0)
              {
                v23 = self->_deactivationContext;
              }

              else
              {
                v23 = [(SVXTaskContext *)self->_baseModel deactivationContext];
              }

              v24 = v23;
              if ((*&self->_mutationFlags & 0x4000) != 0)
              {
                v25 = self->_error;
              }

              else
              {
                v25 = [(SVXTaskContext *)self->_baseModel error];
              }

              v26 = v25;
              BYTE1(v28) = listensAfterSpeaking;
              LOBYTE(v28) = isUUFR;
              v7 = [[SVXTaskContext alloc] initWithOrigin:origin timestamp:timestamp sessionUUID:v33 requestUUID:v31 aceId:v30 refId:v29 dialogIdentifier:v13 dialogPhase:v15 isUUFR:v28 listensAfterSpeaking:v20 listenAfterSpeakingBehavior:v22 activationContext:v24 deactivationContext:v25 error:?];

              goto LABEL_45;
            }

LABEL_34:
            v19 = [(SVXTaskContext *)self->_baseModel listenAfterSpeakingBehavior];
            goto LABEL_35;
          }
        }

        else
        {
          isUUFR = [(SVXTaskContext *)self->_baseModel isUUFR];
          v16 = self->_mutationFlags;
          if ((v16 & 0x400) != 0)
          {
            goto LABEL_30;
          }
        }

        listensAfterSpeaking = [(SVXTaskContext *)self->_baseModel listensAfterSpeaking];
        if ((*&self->_mutationFlags & 0x800) != 0)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }
    }

    else
    {
      origin = [(SVXTaskContext *)baseModel origin];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    timestamp = [(SVXTaskContext *)self->_baseModel timestamp];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = [(SVXTaskContext *)baseModel copy];
LABEL_5:
  v7 = v5;
LABEL_45:

  return v7;
}

- (_SVXTaskContextMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXTaskContextMutation;
  v6 = [(_SVXTaskContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end