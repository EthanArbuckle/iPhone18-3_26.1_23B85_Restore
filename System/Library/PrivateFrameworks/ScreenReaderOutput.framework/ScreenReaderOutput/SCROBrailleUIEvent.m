@interface SCROBrailleUIEvent
+ (id)eventWithType:(unint64_t)a3;
+ (id)selectEventWithLocation:(int64_t)a3;
+ (id)selectUpToEventWithLocation:(int64_t)a3;
- (SCROBrailleUIEvent)initWithType:(unint64_t)a3 location:(int64_t)a4;
@end

@implementation SCROBrailleUIEvent

- (SCROBrailleUIEvent)initWithType:(unint64_t)a3 location:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SCROBrailleUIEvent;
  result = [(SCROBrailleUIEvent *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_location = a4;
  }

  return result;
}

+ (id)eventWithType:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3 location:0x7FFFFFFFFFFFFFFFLL];

  return v3;
}

+ (id)selectEventWithLocation:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:9 location:a3];

  return v3;
}

+ (id)selectUpToEventWithLocation:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:10 location:a3];

  return v3;
}

@end