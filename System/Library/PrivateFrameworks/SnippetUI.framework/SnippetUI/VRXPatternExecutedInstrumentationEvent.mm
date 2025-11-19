@interface VRXPatternExecutedInstrumentationEvent
- (VRXPatternExecutedInstrumentationEvent)initWithPatternId:(id)a3 patternType:(id)a4 responseViewId:(id)a5 responseMode:(id)a6;
@end

@implementation VRXPatternExecutedInstrumentationEvent

- (VRXPatternExecutedInstrumentationEvent)initWithPatternId:(id)a3 patternType:(id)a4 responseViewId:(id)a5 responseMode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = VRXPatternExecutedInstrumentationEvent;
  v14 = [(VRXPatternExecutedInstrumentationEvent *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC9SnippetUI17RFPatternExecuted alloc] initWithPatternId:v10 patternType:v11 responseViewId:v12 responseMode:v13];
    patternExecuted = v14->_patternExecuted;
    v14->_patternExecuted = v15;
  }

  return v14;
}

@end