@interface BRCErrorGrouping
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToErrorGrouping:(id)grouping;
- (BRCErrorGrouping)initWithError:(id)error pcsChained:(BOOL)chained enhancedDrivePrivacyEnabled:(BOOL)enabled;
- (id)description;
- (unint64_t)hash;
@end

@implementation BRCErrorGrouping

- (BRCErrorGrouping)initWithError:(id)error pcsChained:(BOOL)chained enhancedDrivePrivacyEnabled:(BOOL)enabled
{
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = BRCErrorGrouping;
  v10 = [(BRCErrorGrouping *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_error, error);
    v11->_isPCSChained = chained;
    v11->_isEnhancedDrivePrivacyEnabled = enabled;
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
  domain = [(NSError *)self->_error domain];
  v4 = [domain hash];
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

- (BOOL)isEqualToErrorGrouping:(id)grouping
{
  groupingCopy = grouping;
  domain = [(NSError *)self->_error domain];
  error = [groupingCopy error];
  domain2 = [error domain];
  if ([domain isEqualToString:domain2])
  {
    code = [(NSError *)self->_error code];
    error2 = [groupingCopy error];
    if (code == [error2 code] && (isPCSChained = self->_isPCSChained, isPCSChained == objc_msgSend(groupingCopy, "isPCSChained")))
    {
      isEnhancedDrivePrivacyEnabled = self->_isEnhancedDrivePrivacyEnabled;
      v12 = isEnhancedDrivePrivacyEnabled == [groupingCopy isEnhancedDrivePrivacyEnabled];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCErrorGrouping *)self isEqualToErrorGrouping:equalCopy];

  return v5;
}

@end