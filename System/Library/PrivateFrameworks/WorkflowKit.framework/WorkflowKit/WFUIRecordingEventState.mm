@interface WFUIRecordingEventState
- (BOOL)isEqual:(id)equal;
- (WFPropertyListObject)serializedRepresentation;
- (WFUIRecordingEventState)initWithEvent:(id)event;
- (WFUIRecordingEventState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFUIRecordingEventState

- (WFPropertyListObject)serializedRepresentation
{
  event = [(WFUIRecordingEventState *)self event];
  serializedRepresentation = [event serializedRepresentation];

  return serializedRepresentation;
}

- (WFUIRecordingEventState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v7 = [[WFUIRUserEvent alloc] initWithSerializedRepresentation:representationCopy];

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

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  event = [(WFUIRecordingEventState *)self event];
  (*(valueHandler + 2))(valueHandlerCopy, event, 0);
}

- (unint64_t)hash
{
  event = [(WFUIRecordingEventState *)self event];
  v3 = [event hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      event = [(WFUIRecordingEventState *)equalCopy event];
      event2 = [(WFUIRecordingEventState *)self event];
      v7 = [event isEqual:event2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFUIRecordingEventState)initWithEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUIRecordingEventParameter.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v12.receiver = self;
  v12.super_class = WFUIRecordingEventState;
  v6 = [(WFUIRecordingEventState *)&v12 init];
  if (v6)
  {
    v7 = [eventCopy copy];
    event = v6->_event;
    v6->_event = v7;

    v9 = v6;
  }

  return v6;
}

@end