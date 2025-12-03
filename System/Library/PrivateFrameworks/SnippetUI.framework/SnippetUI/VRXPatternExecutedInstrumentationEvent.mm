@interface VRXPatternExecutedInstrumentationEvent
- (VRXPatternExecutedInstrumentationEvent)initWithPatternId:(id)id patternType:(id)type responseViewId:(id)viewId responseMode:(id)mode;
@end

@implementation VRXPatternExecutedInstrumentationEvent

- (VRXPatternExecutedInstrumentationEvent)initWithPatternId:(id)id patternType:(id)type responseViewId:(id)viewId responseMode:(id)mode
{
  idCopy = id;
  typeCopy = type;
  viewIdCopy = viewId;
  modeCopy = mode;
  v18.receiver = self;
  v18.super_class = VRXPatternExecutedInstrumentationEvent;
  v14 = [(VRXPatternExecutedInstrumentationEvent *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC9SnippetUI17RFPatternExecuted alloc] initWithPatternId:idCopy patternType:typeCopy responseViewId:viewIdCopy responseMode:modeCopy];
    patternExecuted = v14->_patternExecuted;
    v14->_patternExecuted = v15;
  }

  return v14;
}

@end