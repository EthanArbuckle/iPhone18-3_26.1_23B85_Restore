@interface PRRenderingEventAction
- (CGPoint)location;
- (NSDictionary)metadata;
- (NSString)eventType;
- (PRRenderingEventAction)init;
- (PRRenderingEventAction)initWithEvent:(id)event responder:(id)responder;
- (PRRenderingEventAction)initWithInfo:(id)info responder:(id)responder;
- (id)event;
@end

@implementation PRRenderingEventAction

- (PRRenderingEventAction)initWithEvent:(id)event responder:(id)responder
{
  v6 = MEMORY[0x1E698E700];
  responderCopy = responder;
  eventCopy = event;
  v9 = objc_alloc_init(v6);
  [v9 setObject:eventCopy forSetting:0];

  v12.receiver = self;
  v12.super_class = PRRenderingEventAction;
  v10 = [(PRRenderingEventAction *)&v12 initWithInfo:v9 responder:responderCopy];

  return v10;
}

- (id)event
{
  info = [(PRRenderingEventAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (PRRenderingEventAction)initWithInfo:(id)info responder:(id)responder
{
  [(PRRenderingEventAction *)self doesNotRecognizeSelector:a2, responder];

  return 0;
}

- (PRRenderingEventAction)init
{
  [(PRRenderingEventAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)eventType
{
  event = [(PRRenderingEventAction *)self event];
  type = [event type];

  return type;
}

- (CGPoint)location
{
  event = [(PRRenderingEventAction *)self event];
  [event location];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (NSDictionary)metadata
{
  event = [(PRRenderingEventAction *)self event];
  metadata = [event metadata];

  return metadata;
}

@end