@interface WFUIRecordingEventState
- (BOOL)isEqual:(id)a3;
- (WFPropertyListObject)serializedRepresentation;
- (WFUIRecordingEventState)initWithEvent:(id)a3;
- (WFUIRecordingEventState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFUIRecordingEventState

- (WFPropertyListObject)serializedRepresentation
{
  v2 = [(WFUIRecordingEventState *)self event];
  v3 = [v2 serializedRepresentation];

  return v3;
}

- (WFUIRecordingEventState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v7 = [[WFUIRUserEvent alloc] initWithSerializedRepresentation:v6];

  if (v7)
  {
    v8 = [objc_alloc(objc_opt_class()) initWithEvent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = [(WFUIRecordingEventState *)self event];
  (*(a5 + 2))(v7, v8, 0);
}

- (unint64_t)hash
{
  v2 = [(WFUIRecordingEventState *)self event];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFUIRecordingEventState *)v4 event];
      v6 = [(WFUIRecordingEventState *)self event];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFUIRecordingEventState)initWithEvent:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFUIRecordingEventParameter.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v12.receiver = self;
  v12.super_class = WFUIRecordingEventState;
  v6 = [(WFUIRecordingEventState *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    event = v6->_event;
    v6->_event = v7;

    v9 = v6;
  }

  return v6;
}

@end