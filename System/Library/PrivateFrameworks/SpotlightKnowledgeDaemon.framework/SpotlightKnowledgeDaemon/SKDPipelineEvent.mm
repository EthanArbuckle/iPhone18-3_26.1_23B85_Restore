@interface SKDPipelineEvent
+ (id)_pipelineEventForEventType:(unsigned __int8)a3 code:(int64_t)a4;
- (SKDPipelineEvent)initWithEventType:(unsigned __int8)a3 info:(id)a4;
- (SKDPipelineEvent)initWithEventType:(unsigned __int8)a3 status:(unsigned __int8)a4;
- (id)message;
@end

@implementation SKDPipelineEvent

+ (id)_pipelineEventForEventType:(unsigned __int8)a3 code:(int64_t)a4
{
  v5 = a3;
  if (_pipelineEventForEventType_code__oncePipelineMapToken != -1)
  {
    +[SKDPipelineEvent _pipelineEventForEventType:code:];
  }

  v6 = _pipelineEventForEventType_code__sUnknownEvent;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 != 6)
      {
        goto LABEL_19;
      }

      v9 = &_pipelineEventForEventType_code__sProcessBatchStartEvent;
      goto LABEL_18;
    }

    v7 = a4 - 7;
    if (a4 - 7) < 0xB && ((0x7E7u >> v7))
    {
      v8 = off_27893E218;
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 == 2)
    {
      v7 = a4 - 1;
      if ((a4 - 1) >= 6)
      {
        goto LABEL_19;
      }

      v8 = off_27893E198;
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      v7 = a4 - 10;
      if (a4 - 10) < 0xA && ((0x303u >> v7))
      {
        v8 = off_27893E1C8;
LABEL_17:
        v9 = v8[v7];
LABEL_18:
        v10 = *v9;

        v6 = v10;
      }
    }
  }

LABEL_19:

  return v6;
}

void __52__SKDPipelineEvent__pipelineEventForEventType_code___block_invoke()
{
  v0 = [SKDPipelineEvent _configurePipelineEventWithType:0 pipelineEventCode:0];
  v1 = _pipelineEventForEventType_code__sUnknownEvent;
  _pipelineEventForEventType_code__sUnknownEvent = v0;

  v2 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:1];
  v3 = _pipelineEventForEventType_code__sStateEnabledEvent;
  _pipelineEventForEventType_code__sStateEnabledEvent = v2;

  v4 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:2];
  v5 = _pipelineEventForEventType_code__sStateDisabledEvent;
  _pipelineEventForEventType_code__sStateDisabledEvent = v4;

  v6 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:3];
  v7 = _pipelineEventForEventType_code__sStateSuspendedEvent;
  _pipelineEventForEventType_code__sStateSuspendedEvent = v6;

  v8 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:4];
  v9 = _pipelineEventForEventType_code__sStateResumedEvent;
  _pipelineEventForEventType_code__sStateResumedEvent = v8;

  v10 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:5];
  v11 = _pipelineEventForEventType_code__sStateActiveEvent;
  _pipelineEventForEventType_code__sStateActiveEvent = v10;

  v12 = [SKDPipelineEvent _configurePipelineEventWithType:2 pipelineEventCode:6];
  v13 = _pipelineEventForEventType_code__sStateInactiveEvent;
  _pipelineEventForEventType_code__sStateInactiveEvent = v12;

  v14 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:12];
  v15 = _pipelineEventForEventType_code__sValidateEligibleEvent;
  _pipelineEventForEventType_code__sValidateEligibleEvent = v14;

  v16 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:13];
  v17 = _pipelineEventForEventType_code__sValidateIneligibleEvent;
  _pipelineEventForEventType_code__sValidateIneligibleEvent = v16;

  v18 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:8];
  v19 = _pipelineEventForEventType_code__sValidateNeedsProcessingEvent;
  _pipelineEventForEventType_code__sValidateNeedsProcessingEvent = v18;

  v20 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:7];
  v21 = _pipelineEventForEventType_code__sValidateAlreadyProcessedEvent;
  _pipelineEventForEventType_code__sValidateAlreadyProcessedEvent = v20;

  v22 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:9];
  v23 = _pipelineEventForEventType_code__sValidateIgnoredProcessingEvent;
  _pipelineEventForEventType_code__sValidateIgnoredProcessingEvent = v22;

  v24 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:14];
  v25 = _pipelineEventForEventType_code__sValidateValidEvent;
  _pipelineEventForEventType_code__sValidateValidEvent = v24;

  v26 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:15];
  v27 = _pipelineEventForEventType_code__sValidateInvalidEvent;
  _pipelineEventForEventType_code__sValidateInvalidEvent = v26;

  v28 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:16];
  v29 = _pipelineEventForEventType_code__sValidateAvailableEvent;
  _pipelineEventForEventType_code__sValidateAvailableEvent = v28;

  v30 = [SKDPipelineEvent _configurePipelineEventWithType:4 pipelineEventCode:17];
  v31 = _pipelineEventForEventType_code__sValidateUnavailableEvent;
  _pipelineEventForEventType_code__sValidateUnavailableEvent = v30;

  v32 = [SKDPipelineEvent _configurePipelineEventWithType:3 pipelineEventCode:10];
  v33 = _pipelineEventForEventType_code__sLoadStartedEvent;
  _pipelineEventForEventType_code__sLoadStartedEvent = v32;

  v34 = [SKDPipelineEvent _configurePipelineEventWithType:3 pipelineEventCode:11];
  v35 = _pipelineEventForEventType_code__sLoadEndedEvent;
  _pipelineEventForEventType_code__sLoadEndedEvent = v34;

  v36 = [SKDPipelineEvent _configurePipelineEventWithType:3 pipelineEventCode:18];
  v37 = _pipelineEventForEventType_code__sLoadSuceededEvent;
  _pipelineEventForEventType_code__sLoadSuceededEvent = v36;

  v38 = [SKDPipelineEvent _configurePipelineEventWithType:3 pipelineEventCode:19];
  v39 = _pipelineEventForEventType_code__sLoadFailedEvent;
  _pipelineEventForEventType_code__sLoadFailedEvent = v38;

  v40 = [SKDPipelineEvent _configurePipelineEventWithType:6 pipelineEventCode:10];
  v41 = _pipelineEventForEventType_code__sProcessBatchStartEvent;
  _pipelineEventForEventType_code__sProcessBatchStartEvent = v40;
}

- (SKDPipelineEvent)initWithEventType:(unsigned __int8)a3 status:(unsigned __int8)a4
{
  v10.receiver = self;
  v10.super_class = SKDPipelineEvent;
  v6 = [(SKDPipelineEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    v6->_status = a4;
    identifier = v6->_identifier;
    v6->_identifier = @"pipelineFlag";
  }

  return v7;
}

- (SKDPipelineEvent)initWithEventType:(unsigned __int8)a3 info:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SKDPipelineEvent;
  v8 = [(SKDPipelineEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v8->_status = 0;
    identifier = v8->_identifier;
    v8->_identifier = @"pipelineFlag";

    objc_storeStrong(&v9->_info, a4);
  }

  return v9;
}

- (id)message
{
  v3 = [(SKDPipelineEvent *)self info];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"messageInfoKey"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SKDPipelineEvent *)self identifier];
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(SKDPipelineEvent *)self typeMessage];
  }

  v10 = v9;

  return v10;
}

@end