@interface BRCErrorGrouping
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToErrorGrouping:(id)a3;
- (BRCErrorGrouping)initWithError:(id)a3 pcsChained:(BOOL)a4 enhancedDrivePrivacyEnabled:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation BRCErrorGrouping

- (BRCErrorGrouping)initWithError:(id)a3 pcsChained:(BOOL)a4 enhancedDrivePrivacyEnabled:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BRCErrorGrouping;
  v10 = [(BRCErrorGrouping *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_error, a3);
    v11->_isPCSChained = a4;
    v11->_isEnhancedDrivePrivacyEnabled = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = "n";
  if (self->_isPCSChained)
  {
    v6 = "y";
  }

  else
  {
    v6 = "n";
  }

  if (self->_isEnhancedDrivePrivacyEnabled)
  {
    v5 = "y";
  }

  return [v3 stringWithFormat:@"<%@ error:%@ pcs:%s enhancedDrivePrivacyEnabled:%s>", v4, self->_error, v6, v5];
}

- (unint64_t)hash
{
  v3 = [(NSError *)self->_error domain];
  v4 = [v3 hash];
  v5 = [(NSError *)self->_error code]+ v4;

  if (self->_isPCSChained)
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

- (BOOL)isEqualToErrorGrouping:(id)a3
{
  v4 = a3;
  v5 = [(NSError *)self->_error domain];
  v6 = [v4 error];
  v7 = [v6 domain];
  if ([v5 isEqualToString:v7])
  {
    v8 = [(NSError *)self->_error code];
    v9 = [v4 error];
    if (v8 == [v9 code] && (isPCSChained = self->_isPCSChained, isPCSChained == objc_msgSend(v4, "isPCSChained")))
    {
      isEnhancedDrivePrivacyEnabled = self->_isEnhancedDrivePrivacyEnabled;
      v12 = isEnhancedDrivePrivacyEnabled == [v4 isEnhancedDrivePrivacyEnabled];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCErrorGrouping *)self isEqualToErrorGrouping:v4];

  return v5;
}

@end