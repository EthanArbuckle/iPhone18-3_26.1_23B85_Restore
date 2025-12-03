@interface TAPrivateVehicleClassificationReason
- (BOOL)isEqual:(id)equal;
- (TAPrivateVehicleClassificationReason)initWithReason:(unint64_t)reason;
- (unint64_t)hash;
@end

@implementation TAPrivateVehicleClassificationReason

- (TAPrivateVehicleClassificationReason)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = TAPrivateVehicleClassificationReason;
  result = [(TAPrivateVehicleClassificationReason *)&v5 init];
  result->_reason = reason;
  return result;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reason];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      reason = [(TAPrivateVehicleClassificationReason *)self reason];
      reason2 = [(TAPrivateVehicleClassificationReason *)v5 reason];

      v8 = reason == reason2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end