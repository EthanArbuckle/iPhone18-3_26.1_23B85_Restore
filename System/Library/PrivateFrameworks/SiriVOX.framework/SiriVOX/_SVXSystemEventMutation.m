@interface _SVXSystemEventMutation
- (_SVXSystemEventMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSystemEventMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v6 = [SVXSystemEvent alloc];
    LODWORD(v20) = self->_audioSessionID;
    v5 = [(SVXSystemEvent *)v6 initWithType:self->_type timestamp:self->_timestamp deviceSetupFlowScene:self->_deviceSetupFlowScene storeDemo:self->_storeDemo orderedAlarmAndTimerIDs:self->_orderedAlarmAndTimerIDs speechSynthesisRequest:self->_speechSynthesisRequest audioSessionID:v20];
    goto LABEL_5;
  }

  mutationFlags = self->_mutationFlags;
  if (mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      type = self->_type;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        timestamp = self->_timestamp;
        if ((mutationFlags & 8) != 0)
        {
LABEL_9:
          v10 = self->_deviceSetupFlowScene;
LABEL_13:
          v11 = v10;
          if ((*&self->_mutationFlags & 0x10) != 0)
          {
            v12 = self->_storeDemo;
          }

          else
          {
            v12 = [(SVXSystemEvent *)self->_baseModel storeDemo];
          }

          v13 = v12;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            v14 = self->_orderedAlarmAndTimerIDs;
          }

          else
          {
            v14 = [(SVXSystemEvent *)self->_baseModel orderedAlarmAndTimerIDs];
          }

          v15 = v14;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            v16 = self->_speechSynthesisRequest;
          }

          else
          {
            v16 = [(SVXSystemEvent *)self->_baseModel speechSynthesisRequest];
          }

          v17 = v16;
          if ((*&self->_mutationFlags & 0x80000000) != 0)
          {
            audioSessionID = self->_audioSessionID;
          }

          else
          {
            audioSessionID = [(SVXSystemEvent *)self->_baseModel audioSessionID];
          }

          LODWORD(v20) = audioSessionID;
          v7 = [[SVXSystemEvent alloc] initWithType:type timestamp:timestamp deviceSetupFlowScene:v11 storeDemo:v13 orderedAlarmAndTimerIDs:v15 speechSynthesisRequest:v17 audioSessionID:v20];

          goto LABEL_26;
        }

LABEL_12:
        v10 = [(SVXSystemEvent *)self->_baseModel deviceSetupFlowScene];
        goto LABEL_13;
      }
    }

    else
    {
      type = [(SVXSystemEvent *)baseModel type];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    timestamp = [(SVXSystemEvent *)self->_baseModel timestamp];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = [(SVXSystemEvent *)baseModel copy];
LABEL_5:
  v7 = v5;
LABEL_26:

  return v7;
}

- (_SVXSystemEventMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSystemEventMutation;
  v6 = [(_SVXSystemEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end