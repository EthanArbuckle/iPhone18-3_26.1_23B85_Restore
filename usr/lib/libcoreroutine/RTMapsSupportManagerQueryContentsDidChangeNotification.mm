@interface RTMapsSupportManagerQueryContentsDidChangeNotification
- (RTMapsSupportManagerQueryContentsDidChangeNotification)initWithQueryType:(int64_t)a3;
@end

@implementation RTMapsSupportManagerQueryContentsDidChangeNotification

- (RTMapsSupportManagerQueryContentsDidChangeNotification)initWithQueryType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTMapsSupportManagerQueryContentsDidChangeNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_queryType = a3;
  }

  return result;
}

@end