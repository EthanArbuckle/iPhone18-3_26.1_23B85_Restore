@interface RMLogItem
- (RMLogItem)initWithCoder:(id)coder;
- (id)_initWithTimestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RMLogItem

- (id)_initWithTimestamp:(double)timestamp
{
  v8.receiver = self;
  v8.super_class = RMLogItem;
  v4 = [(RMLogItem *)&v8 init];
  if (v4)
  {
    v5 = [[RMLogItemInternal alloc] initWithTimestamp:timestamp];
    internalLogItem = v4->_internalLogItem;
    v4->_internalLogItem = v5;
  }

  return v4;
}

- (RMLogItem)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"kRMLogItemCodingKeyTimestamp"];

  return [(RMLogItem *)self _initWithTimestamp:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(RMLogItem *)self timestamp];

  return [v4 initWithTimestamp:?];
}

@end