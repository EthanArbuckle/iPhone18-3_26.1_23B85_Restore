@interface SNTestFailure
- (SNTestFailure)initWithMessage:(id)message;
- (SNTestFailure)initWithMissingClass:(Class)class;
@end

@implementation SNTestFailure

- (SNTestFailure)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = SNTestFailure;
  v6 = [(SNTestFailure *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (SNTestFailure)initWithMissingClass:(Class)class
{
  v10.receiver = self;
  v10.super_class = SNTestFailure;
  v4 = [(SNTestFailure *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromClass(class);
    v7 = [v5 stringWithFormat:@"Failed to find expected instance of class '%@'", v6];
    message = v4->_message;
    v4->_message = v7;
  }

  return v4;
}

@end