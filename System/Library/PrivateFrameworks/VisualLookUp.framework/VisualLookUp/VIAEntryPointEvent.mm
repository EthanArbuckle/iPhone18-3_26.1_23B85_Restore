@interface VIAEntryPointEvent
+ (id)endEventWithOriginatingApplication:(id)application;
+ (id)startEventWithQueryID:(unint64_t)d viewAppearEvent:(unint64_t)event originatingApplication:(id)application;
- (VIAEntryPointEvent)initWithQueryID:(unint64_t)d type:(int64_t)type viewAppearEvent:(unint64_t)event originatingApplication:(id)application;
- (id)feedback;
@end

@implementation VIAEntryPointEvent

+ (id)startEventWithQueryID:(unint64_t)d viewAppearEvent:(unint64_t)event originatingApplication:(id)application
{
  applicationCopy = application;
  v9 = [[self alloc] initWithQueryID:d type:1 viewAppearEvent:event originatingApplication:applicationCopy];

  return v9;
}

+ (id)endEventWithOriginatingApplication:(id)application
{
  applicationCopy = application;
  v5 = [[self alloc] initWithQueryID:0 type:2 viewAppearEvent:0 originatingApplication:applicationCopy];

  return v5;
}

- (VIAEntryPointEvent)initWithQueryID:(unint64_t)d type:(int64_t)type viewAppearEvent:(unint64_t)event originatingApplication:(id)application
{
  applicationCopy = application;
  v16.receiver = self;
  v16.super_class = VIAEntryPointEvent;
  v11 = [(VIAEntryPointEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_queryID = d;
    v11->_type = type;
    v11->_viewAppearEvent = event;
    v13 = [applicationCopy copy];
    originatingApplication = v12->_originatingApplication;
    v12->_originatingApplication = v13;

    v12->_shouldReportDirectly = 0;
  }

  return v12;
}

- (id)feedback
{
  type = self->_type;
  if (type == 2)
  {
    v4 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:16];
  }

  else if (type == 1)
  {
    v4 = [objc_alloc(MEMORY[0x1E69CA3F8]) initWithEvent:self->_viewAppearEvent];
    [v4 setOriginatingApp:self->_originatingApplication];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end