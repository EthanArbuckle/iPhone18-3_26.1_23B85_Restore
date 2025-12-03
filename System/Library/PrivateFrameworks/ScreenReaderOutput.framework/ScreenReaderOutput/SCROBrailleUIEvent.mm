@interface SCROBrailleUIEvent
+ (id)eventWithType:(unint64_t)type;
+ (id)selectEventWithLocation:(int64_t)location;
+ (id)selectUpToEventWithLocation:(int64_t)location;
- (SCROBrailleUIEvent)initWithType:(unint64_t)type location:(int64_t)location;
@end

@implementation SCROBrailleUIEvent

- (SCROBrailleUIEvent)initWithType:(unint64_t)type location:(int64_t)location
{
  v7.receiver = self;
  v7.super_class = SCROBrailleUIEvent;
  result = [(SCROBrailleUIEvent *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_location = location;
  }

  return result;
}

+ (id)eventWithType:(unint64_t)type
{
  v3 = [[self alloc] initWithType:type location:0x7FFFFFFFFFFFFFFFLL];

  return v3;
}

+ (id)selectEventWithLocation:(int64_t)location
{
  v3 = [[self alloc] initWithType:9 location:location];

  return v3;
}

+ (id)selectUpToEventWithLocation:(int64_t)location
{
  v3 = [[self alloc] initWithType:10 location:location];

  return v3;
}

@end