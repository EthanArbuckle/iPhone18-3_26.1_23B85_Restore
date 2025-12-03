@interface STMutableTelephonyMobileEquipmentInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBootstrapICCID:(id)d;
- (void)setCSN:(id)n;
- (void)setICCID:(id)d;
- (void)setIMEI:(id)i;
- (void)setMEID:(id)d;
@end

@implementation STMutableTelephonyMobileEquipmentInfo

- (void)setMEID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:self->super._MEID] & 1) == 0)
  {
    v4 = [dCopy copy];
    MEID = self->super._MEID;
    self->super._MEID = v4;
  }
}

- (void)setIMEI:(id)i
{
  iCopy = i;
  if (([iCopy isEqualToString:self->super._IMEI] & 1) == 0)
  {
    v4 = [iCopy copy];
    IMEI = self->super._IMEI;
    self->super._IMEI = v4;
  }
}

- (void)setICCID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:self->super._ICCID] & 1) == 0)
  {
    v4 = [dCopy copy];
    ICCID = self->super._ICCID;
    self->super._ICCID = v4;
  }
}

- (void)setCSN:(id)n
{
  nCopy = n;
  if (([nCopy isEqualToString:self->super._CSN] & 1) == 0)
  {
    v4 = [nCopy copy];
    CSN = self->super._CSN;
    self->super._CSN = v4;
  }
}

- (void)setBootstrapICCID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:self->super._bootstrapICCID] & 1) == 0)
  {
    v4 = [dCopy copy];
    bootstrapICCID = self->super._bootstrapICCID;
    self->super._bootstrapICCID = v4;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STTelephonyMobileEquipmentInfo allocWithZone:zone];

  return [(STTelephonyMobileEquipmentInfo *)v4 initWithMobileEquipmentInfo:?];
}

@end