@interface SVXSystemEvent
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSystemEvent)initWithCoder:(id)coder;
- (SVXSystemEvent)initWithType:(int64_t)type timestamp:(unint64_t)timestamp deviceSetupFlowScene:(id)scene storeDemo:(id)demo orderedAlarmAndTimerIDs:(id)ds speechSynthesisRequest:(id)request audioSessionID:(unsigned int)d;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSystemEvent

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v7 forKey:@"SVXSystemEvent::type"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v8 forKey:@"SVXSystemEvent::timestamp"];

  [coderCopy encodeObject:self->_deviceSetupFlowScene forKey:@"SVXSystemEvent::deviceSetupFlowScene"];
  [coderCopy encodeObject:self->_storeDemo forKey:@"SVXSystemEvent::storeDemo"];
  [coderCopy encodeObject:self->_orderedAlarmAndTimerIDs forKey:@"SVXSystemEvent::orderedAlarmAndTimerIDs"];
  [coderCopy encodeObject:self->_speechSynthesisRequest forKey:@"SVXSystemEvent::speechSynthesisRequest"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_audioSessionID];
  [coderCopy encodeObject:v9 forKey:@"SVXSystemEvent::audioSessionID"];
}

- (SVXSystemEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::type"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::timestamp"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::deviceSetupFlowScene"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::storeDemo"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"SVXSystemEvent::orderedAlarmAndTimerIDs"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::speechSynthesisRequest"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSystemEvent::audioSessionID"];

  LODWORD(coderCopy) = [v16 unsignedIntValue];
  LODWORD(v19) = coderCopy;
  v17 = [(SVXSystemEvent *)self initWithType:integerValue timestamp:unsignedLongLongValue deviceSetupFlowScene:v9 storeDemo:v10 orderedAlarmAndTimerIDs:v14 speechSynthesisRequest:v15 audioSessionID:v19];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(SVXSystemEvent *)v5 type]&& (timestamp = self->_timestamp, timestamp == [(SVXSystemEvent *)v5 timestamp]) && (audioSessionID = self->_audioSessionID, audioSessionID == [(SVXSystemEvent *)v5 audioSessionID]))
      {
        deviceSetupFlowScene = [(SVXSystemEvent *)v5 deviceSetupFlowScene];
        deviceSetupFlowScene = self->_deviceSetupFlowScene;
        if (deviceSetupFlowScene == deviceSetupFlowScene || [(SVXDeviceSetupFlowScene *)deviceSetupFlowScene isEqual:deviceSetupFlowScene])
        {
          storeDemo = [(SVXSystemEvent *)v5 storeDemo];
          storeDemo = self->_storeDemo;
          if (storeDemo == storeDemo || [(SVXStoreDemo *)storeDemo isEqual:storeDemo])
          {
            orderedAlarmAndTimerIDs = [(SVXSystemEvent *)v5 orderedAlarmAndTimerIDs];
            orderedAlarmAndTimerIDs = self->_orderedAlarmAndTimerIDs;
            if (orderedAlarmAndTimerIDs == orderedAlarmAndTimerIDs || [(NSArray *)orderedAlarmAndTimerIDs isEqual:orderedAlarmAndTimerIDs])
            {
              speechSynthesisRequest = [(SVXSystemEvent *)v5 speechSynthesisRequest];
              speechSynthesisRequest = self->_speechSynthesisRequest;
              v17 = speechSynthesisRequest == speechSynthesisRequest || [(SVXSpeechSynthesisRequest *)speechSynthesisRequest isEqual:speechSynthesisRequest];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXSystemEvent)initWithType:(int64_t)type timestamp:(unint64_t)timestamp deviceSetupFlowScene:(id)scene storeDemo:(id)demo orderedAlarmAndTimerIDs:(id)ds speechSynthesisRequest:(id)request audioSessionID:(unsigned int)d
{
  sceneCopy = scene;
  demoCopy = demo;
  dsCopy = ds;
  requestCopy = request;
  v30.receiver = self;
  v30.super_class = SVXSystemEvent;
  v19 = [(SVXSystemEvent *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    v19->_timestamp = timestamp;
    v21 = [sceneCopy copy];
    deviceSetupFlowScene = v20->_deviceSetupFlowScene;
    v20->_deviceSetupFlowScene = v21;

    v23 = [demoCopy copy];
    storeDemo = v20->_storeDemo;
    v20->_storeDemo = v23;

    v25 = [dsCopy copy];
    orderedAlarmAndTimerIDs = v20->_orderedAlarmAndTimerIDs;
    v20->_orderedAlarmAndTimerIDs = v25;

    v27 = [requestCopy copy];
    speechSynthesisRequest = v20->_speechSynthesisRequest;
    v20->_speechSynthesisRequest = v27;

    v20->_audioSessionID = d;
  }

  return v20;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSystemEventMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSystemEventMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSystemEvent *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSystemEventMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSystemEventMutation *)v4 generate];

  return generate;
}

@end