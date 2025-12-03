@interface TUStringShareItem
- (TUStringShareItem)initWithMessage:(id)message;
@end

@implementation TUStringShareItem

- (TUStringShareItem)initWithMessage:(id)message
{
  messageCopy = message;
  v8.receiver = self;
  v8.super_class = TUStringShareItem;
  v5 = [(TUStringShareItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUStringShareItem *)v5 setMessage:messageCopy];
  }

  return v6;
}

@end