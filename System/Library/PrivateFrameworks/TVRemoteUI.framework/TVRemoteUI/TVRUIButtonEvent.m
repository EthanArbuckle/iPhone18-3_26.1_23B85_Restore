@interface TVRUIButtonEvent
+ (id)createButtonEvent:(int64_t)a3 buttonType:(int64_t)a4;
- (id)_initWithButtonType:(int64_t)a3 eventType:(int64_t)a4;
- (id)description;
@end

@implementation TVRUIButtonEvent

- (id)_initWithButtonType:(int64_t)a3 eventType:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = TVRUIButtonEvent;
  result = [(TVRUIButtonEvent *)&v7 init];
  if (result)
  {
    *(result + 2) = a3;
    *(result + 3) = a4;
  }

  return result;
}

+ (id)createButtonEvent:(int64_t)a3 buttonType:(int64_t)a4
{
  v6 = objc_alloc_init(TVRUIButtonEvent);
  v6->_buttonType = a4;
  v6->_eventType = a3;

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
  v8 = [(TVRUIButtonEvent *)self timestamp];
  v9 = [v7 stringFromDate:v8];
  [v3 appendString:v9 withName:@"timestamp"];

  v10 = [v3 build];

  return v10;
}

uint64_t __31__TVRUIButtonEvent_description__block_invoke()
{
  description_dateFormatter = objc_alloc_init(MEMORY[0x277CCA968]);

  return MEMORY[0x2821F96F8]();
}

@end