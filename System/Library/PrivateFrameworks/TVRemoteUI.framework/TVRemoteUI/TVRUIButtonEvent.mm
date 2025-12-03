@interface TVRUIButtonEvent
+ (id)createButtonEvent:(int64_t)event buttonType:(int64_t)type;
- (id)_initWithButtonType:(int64_t)type eventType:(int64_t)eventType;
- (id)description;
@end

@implementation TVRUIButtonEvent

- (id)_initWithButtonType:(int64_t)type eventType:(int64_t)eventType
{
  v7.receiver = self;
  v7.super_class = TVRUIButtonEvent;
  result = [(TVRUIButtonEvent *)&v7 init];
  if (result)
  {
    *(result + 2) = type;
    *(result + 3) = eventType;
  }

  return result;
}

+ (id)createButtonEvent:(int64_t)event buttonType:(int64_t)type
{
  v6 = objc_alloc_init(TVRUIButtonEvent);
  v6->_buttonType = type;
  v6->_eventType = event;

  return v6;
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [TVRUIButtonEvent description];
  }

  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[TVRUIButtonEvent buttonType](self withName:{"buttonType"), @"buttonType"}];
  v5 = [v3 appendInteger:-[TVRUIButtonEvent eventType](self withName:{"eventType"), @"eventType"}];
  v6 = [v3 appendClass:objc_opt_class() withName:@"class"];
  v7 = description_dateFormatter;
  timestamp = [(TVRUIButtonEvent *)self timestamp];
  v9 = [v7 stringFromDate:timestamp];
  [v3 appendString:v9 withName:@"timestamp"];

  build = [v3 build];

  return build;
}

uint64_t __31__TVRUIButtonEvent_description__block_invoke()
{
  description_dateFormatter = objc_alloc_init(MEMORY[0x277CCA968]);

  return MEMORY[0x2821F96F8]();
}

@end