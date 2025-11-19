@interface VIAEntryPointEvent
+ (id)endEventWithOriginatingApplication:(id)a3;
+ (id)startEventWithQueryID:(unint64_t)a3 viewAppearEvent:(unint64_t)a4 originatingApplication:(id)a5;
- (VIAEntryPointEvent)initWithQueryID:(unint64_t)a3 type:(int64_t)a4 viewAppearEvent:(unint64_t)a5 originatingApplication:(id)a6;
- (id)feedback;
@end

@implementation VIAEntryPointEvent

+ (id)startEventWithQueryID:(unint64_t)a3 viewAppearEvent:(unint64_t)a4 originatingApplication:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithQueryID:a3 type:1 viewAppearEvent:a4 originatingApplication:v8];

  return v9;
}

+ (id)endEventWithOriginatingApplication:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithQueryID:0 type:2 viewAppearEvent:0 originatingApplication:v4];

  return v5;
}

- (VIAEntryPointEvent)initWithQueryID:(unint64_t)a3 type:(int64_t)a4 viewAppearEvent:(unint64_t)a5 originatingApplication:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = VIAEntryPointEvent;
  v11 = [(VIAEntryPointEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_queryID = a3;
    v11->_type = a4;
    v11->_viewAppearEvent = a5;
    v13 = [v10 copy];
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