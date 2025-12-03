@interface BRCItemDBRowIDJobIdentifier
- (BOOL)isEqual:(id)equal;
- (BRCItemDBRowIDJobIdentifier)initWithItemDBRowID:(int64_t)d;
@end

@implementation BRCItemDBRowIDJobIdentifier

- (BRCItemDBRowIDJobIdentifier)initWithItemDBRowID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = BRCItemDBRowIDJobIdentifier;
  result = [(BRCItemDBRowIDJobIdentifier *)&v5 init];
  if (result)
  {
    result->_itemDBRowID = d;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCItemDBRowIDJobIdentifier *)self isEqualToItemDBRowIDIdentifier:equalCopy];
  }

  return v5;
}

@end