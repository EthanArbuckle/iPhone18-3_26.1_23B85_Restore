@interface SBEmitStudyLogSwitcherEventResponse
- (SBEmitStudyLogSwitcherEventResponse)initWithStudyLogWithName:(id)name payload:(id)payload;
@end

@implementation SBEmitStudyLogSwitcherEventResponse

- (SBEmitStudyLogSwitcherEventResponse)initWithStudyLogWithName:(id)name payload:(id)payload
{
  nameCopy = name;
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = SBEmitStudyLogSwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [payloadCopy copy];
    payload = v8->_payload;
    v8->_payload = v11;
  }

  return v8;
}

@end