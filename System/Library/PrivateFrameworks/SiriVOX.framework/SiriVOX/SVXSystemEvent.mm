@interface SVXSystemEvent
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSystemEvent)initWithCoder:(id)a3;
- (SVXSystemEvent)initWithType:(int64_t)a3 timestamp:(unint64_t)a4 deviceSetupFlowScene:(id)a5 storeDemo:(id)a6 orderedAlarmAndTimerIDs:(id)a7 speechSynthesisRequest:(id)a8 audioSessionID:(unsigned int)a9;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXSystemEvent

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  [v6 encodeObject:v7 forKey:@"SVXSystemEvent::type"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v6 encodeObject:v8 forKey:@"SVXSystemEvent::timestamp"];

  [v6 encodeObject:self->_deviceSetupFlowScene forKey:@"SVXSystemEvent::deviceSetupFlowScene"];
  [v6 encodeObject:self->_storeDemo forKey:@"SVXSystemEvent::storeDemo"];
  [v6 encodeObject:self->_orderedAlarmAndTimerIDs forKey:@"SVXSystemEvent::orderedAlarmAndTimerIDs"];
  [v6 encodeObject:self->_speechSynthesisRequest forKey:@"SVXSystemEvent::speechSynthesisRequest"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_audioSessionID];
  [v6 encodeObject:v9 forKey:@"SVXSystemEvent::audioSessionID"];
}

- (SVXSystemEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::type"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::timestamp"];
  v8 = [v7 unsignedLongLongValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::deviceSetupFlowScene"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::storeDemo"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"SVXSystemEvent::orderedAlarmAndTimerIDs"];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::speechSynthesisRequest"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::audioSessionID"];

  LODWORD(v4) = [v16 unsignedIntValue];
  LODWORD(v19) = v4;
  v17 = [(SVXSystemEvent *)self initWithType:v6 timestamp:v8 deviceSetupFlowScene:v9 storeDemo:v10 orderedAlarmAndTimerIDs:v14 speechSynthesisRequest:v15 audioSessionID:v19];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(SVXSystemEvent *)v5 type]&& (timestamp = self->_timestamp, timestamp == [(SVXSystemEvent *)v5 timestamp]) && (audioSessionID = self->_audioSessionID, audioSessionID == [(SVXSystemEvent *)v5 audioSessionID]))
      {
        v9 = [(SVXSystemEvent *)v5 deviceSetupFlowScene];
        deviceSetupFlowScene = self->_deviceSetupFlowScene;
        if (deviceSetupFlowScene == v9 || [(SVXDeviceSetupFlowScene *)deviceSetupFlowScene isEqual:v9])
        {
          v11 = [(SVXSystemEvent *)v5 storeDemo];
          storeDemo = self->_storeDemo;
          if (storeDemo == v11 || [(SVXStoreDemo *)storeDemo isEqual:v11])
          {
            v13 = [(SVXSystemEvent *)v5 orderedAlarmAndTimerIDs];
            orderedAlarmAndTimerIDs = self->_orderedAlarmAndTimerIDs;
            if (orderedAlarmAndTimerIDs == v13 || [(NSArray *)orderedAlarmAndTimerIDs isEqual:v13])
            {
              v15 = [(SVXSystemEvent *)v5 speechSynthesisRequest];
              speechSynthesisRequest = self->_speechSynthesisRequest;
              v17 = speechSynthesisRequest == v15 || [(SVXSpeechSynthesisRequest *)speechSynthesisRequest isEqual:v15];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash] ^ v4;
  v7 = [(SVXDeviceSetupFlowScene *)self->_deviceSetupFlowScene hash];
  v8 = v7 ^ [(SVXStoreDemo *)self->_storeDemo hash];
  v9 = v8 ^ [(NSArray *)self->_orderedAlarmAndTimerIDs hash];
  v10 = v6 ^ v9 ^ [(SVXSpeechSynthesisRequest *)self->_speechSynthesisRequest hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_audioSessionID];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v12.receiver = self;
  v12.super_class = SVXSystemEvent;
  v5 = [(SVXSystemEvent *)&v12 description];
  type = self->_type;
  if (type > 0xD)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C68068[type];
  }

  v8 = v7;
  v9 = *&self->_timestamp;
  v10 = [v4 initWithFormat:@"%@ {type = %@, timestamp = %llu, deviceSetupFlowScene = %@, storeDemo = %@, orderedAlarmAndTimerIDs = %@, speechSynthesisRequest = %@, audioSessionID = %u}", v5, v8, self->_timestamp, self->_deviceSetupFlowScene, self->_storeDemo, self->_orderedAlarmAndTimerIDs, self->_speechSynthesisRequest, self->_audioSessionID];

  return v10;
}

- (SVXSystemEvent)initWithType:(int64_t)a3 timestamp:(unint64_t)a4 deviceSetupFlowScene:(id)a5 storeDemo:(id)a6 orderedAlarmAndTimerIDs:(id)a7 speechSynthesisRequest:(id)a8 audioSessionID:(unsigned int)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = SVXSystemEvent;
  v19 = [(SVXSystemEvent *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    v19->_timestamp = a4;
    v21 = [v15 copy];
    deviceSetupFlowScene = v20->_deviceSetupFlowScene;
    v20->_deviceSetupFlowScene = v21;

    v23 = [v16 copy];
    storeDemo = v20->_storeDemo;
    v20->_storeDemo = v23;

    v25 = [v17 copy];
    orderedAlarmAndTimerIDs = v20->_orderedAlarmAndTimerIDs;
    v20->_orderedAlarmAndTimerIDs = v25;

    v27 = [v18 copy];
    speechSynthesisRequest = v20->_speechSynthesisRequest;
    v20->_speechSynthesisRequest = v27;

    v20->_audioSessionID = a9;
  }

  return v20;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSystemEventMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSystemEventMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSystemEvent *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSystemEventMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSystemEventMutation *)v4 generate];

  return v5;
}

@end