@interface RTMapsSupportManagerQueryContentsDidChangeNotification
- (RTMapsSupportManagerQueryContentsDidChangeNotification)initWithQueryType:(int64_t)type;
@end

@implementation RTMapsSupportManagerQueryContentsDidChangeNotification

- (RTMapsSupportManagerQueryContentsDidChangeNotification)initWithQueryType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = RTMapsSupportManagerQueryContentsDidChangeNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_queryType = type;
  }

  return result;
}

@end