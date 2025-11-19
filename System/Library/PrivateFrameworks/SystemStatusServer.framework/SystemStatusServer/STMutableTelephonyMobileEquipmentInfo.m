@interface STMutableTelephonyMobileEquipmentInfo
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBootstrapICCID:(id)a3;
- (void)setCSN:(id)a3;
- (void)setICCID:(id)a3;
- (void)setIMEI:(id)a3;
- (void)setMEID:(id)a3;
@end

@implementation STMutableTelephonyMobileEquipmentInfo

- (void)setMEID:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._MEID] & 1) == 0)
  {
    v4 = [v6 copy];
    MEID = self->super._MEID;
    self->super._MEID = v4;
  }
}

- (void)setIMEI:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._IMEI] & 1) == 0)
  {
    v4 = [v6 copy];
    IMEI = self->super._IMEI;
    self->super._IMEI = v4;
  }
}

- (void)setICCID:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._ICCID] & 1) == 0)
  {
    v4 = [v6 copy];
    ICCID = self->super._ICCID;
    self->super._ICCID = v4;
  }
}

- (void)setCSN:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._CSN] & 1) == 0)
  {
    v4 = [v6 copy];
    CSN = self->super._CSN;
    self->super._CSN = v4;
  }
}

- (void)setBootstrapICCID:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._bootstrapICCID] & 1) == 0)
  {
    v4 = [v6 copy];
    bootstrapICCID = self->super._bootstrapICCID;
    self->super._bootstrapICCID = v4;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STTelephonyMobileEquipmentInfo allocWithZone:a3];

  return [(STTelephonyMobileEquipmentInfo *)v4 initWithMobileEquipmentInfo:?];
}

@end