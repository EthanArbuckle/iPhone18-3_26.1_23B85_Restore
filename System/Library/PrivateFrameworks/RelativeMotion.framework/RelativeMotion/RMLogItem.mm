@interface RMLogItem
- (RMLogItem)initWithCoder:(id)a3;
- (id)_initWithTimestamp:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMLogItem

- (id)_initWithTimestamp:(double)a3
{
  v8.receiver = self;
  v8.super_class = RMLogItem;
  v4 = [(RMLogItem *)&v8 init];
  if (v4)
  {
    v5 = [[RMLogItemInternal alloc] initWithTimestamp:a3];
    internalLogItem = v4->_internalLogItem;
    v4->_internalLogItem = v5;
  }

  return v4;
}

- (RMLogItem)initWithCoder:(id)a3
{
  [a3 decodeDoubleForKey:@"kRMLogItemCodingKeyTimestamp"];

  return [(RMLogItem *)self _initWithTimestamp:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(RMLogItem *)self timestamp];

  return [v4 initWithTimestamp:?];
}

@end