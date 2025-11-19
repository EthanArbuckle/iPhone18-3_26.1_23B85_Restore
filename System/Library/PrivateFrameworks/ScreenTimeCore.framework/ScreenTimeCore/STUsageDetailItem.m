@interface STUsageDetailItem
- (BOOL)isAllAppsOrCategories;
- (BOOL)isEqual:(id)a3;
- (STUsageDetailItem)initWithType:(int64_t)a3 identifier:(id)a4 usageTrusted:(BOOL)a5;
- (float)sortQuantity;
- (unint64_t)hash;
@end

@implementation STUsageDetailItem

- (STUsageDetailItem)initWithType:(int64_t)a3 identifier:(id)a4 usageTrusted:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = STUsageDetailItem;
  v7 = a4;
  v8 = [(STUsageDetailItem *)&v12 init];
  v8->_type = a3;
  v9 = [v7 copy];

  identifier = v8->_identifier;
  v8->_identifier = v9;

  v8->_quantity = 0.0;
  v8->_usageTrusted = a5;
  return v8;
}

- (unint64_t)hash
{
  v2 = [(STUsageDetailItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(STUsageDetailItem *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(STUsageDetailItem *)self usageTrusted];
      v9 = v8 ^ [v5 usageTrusted] ^ 1;
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
  v2 = [(STUsageDetailItem *)self identifier];
  if ([v2 isEqualToString:@"__AllAppsAndCategories__"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"__AllApps__"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"__AllCategories__"];
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