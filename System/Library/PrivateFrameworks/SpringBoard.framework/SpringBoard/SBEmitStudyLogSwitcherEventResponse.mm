@interface SBEmitStudyLogSwitcherEventResponse
- (SBEmitStudyLogSwitcherEventResponse)initWithStudyLogWithName:(id)a3 payload:(id)a4;
@end

@implementation SBEmitStudyLogSwitcherEventResponse

- (SBEmitStudyLogSwitcherEventResponse)initWithStudyLogWithName:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBEmitStudyLogSwitcherEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    payload = v8->_payload;
    v8->_payload = v11;
  }

  return v8;
}

@end