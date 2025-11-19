@interface TAPrivateVehicleClassificationReason
- (BOOL)isEqual:(id)a3;
- (TAPrivateVehicleClassificationReason)initWithReason:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation TAPrivateVehicleClassificationReason

- (TAPrivateVehicleClassificationReason)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TAPrivateVehicleClassificationReason;
  result = [(TAPrivateVehicleClassificationReason *)&v5 init];
  result->_reason = a3;
  return result;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reason];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TAPrivateVehicleClassificationReason *)self reason];
      v7 = [(TAPrivateVehicleClassificationReason *)v5 reason];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end