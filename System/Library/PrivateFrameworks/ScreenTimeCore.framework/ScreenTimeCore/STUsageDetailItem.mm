@interface STUsageDetailItem
- (BOOL)isAllAppsOrCategories;
- (BOOL)isEqual:(id)equal;
- (STUsageDetailItem)initWithType:(int64_t)type identifier:(id)identifier usageTrusted:(BOOL)trusted;
- (float)sortQuantity;
- (unint64_t)hash;
@end

@implementation STUsageDetailItem

- (STUsageDetailItem)initWithType:(int64_t)type identifier:(id)identifier usageTrusted:(BOOL)trusted
{
  v12.receiver = self;
  v12.super_class = STUsageDetailItem;
  identifierCopy = identifier;
  v8 = [(STUsageDetailItem *)&v12 init];
  v8->_type = type;
  v9 = [identifierCopy copy];

  identifier = v8->_identifier;
  v8->_identifier = v9;

  v8->_quantity = 0.0;
  v8->_usageTrusted = trusted;
  return v8;
}

- (unint64_t)hash
{
  identifier = [(STUsageDetailItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(STUsageDetailItem *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      usageTrusted = [(STUsageDetailItem *)self usageTrusted];
      v9 = usageTrusted ^ [v5 usageTrusted] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isAllAppsOrCategories
{
  identifier = [(STUsageDetailItem *)self identifier];
  if ([identifier isEqualToString:@"__AllAppsAndCategories__"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"__AllApps__"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [identifier isEqualToString:@"__AllCategories__"];
  }

  return v3;
}

- (float)sortQuantity
{
  if ([(STUsageDetailItem *)self isAllAppsOrCategories])
  {
    return 3.4028e38;
  }

  [(STUsageDetailItem *)self quantity];
  return result;
}

@end