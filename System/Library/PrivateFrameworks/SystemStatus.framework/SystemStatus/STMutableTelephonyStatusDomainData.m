@interface STMutableTelephonyStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCellularRadioCapabilityEnabled:(BOOL)a3;
- (void)setDualSIMEnabled:(BOOL)a3;
- (void)setInactiveSOSEnabled:(BOOL)a3;
- (void)setRadioModuleDead:(BOOL)a3;
- (void)setSIMOneInfo:(id)a3;
- (void)setSIMTwoInfo:(id)a3;
- (void)setUsingStewieConnection:(BOOL)a3;
- (void)setUsingStewieConnectionOverInternet:(BOOL)a3;
- (void)setUsingStewieForSOS:(BOOL)a3;
- (void)updateSIMOneInfoWithBlock:(id)a3;
- (void)updateSIMTwoInfoWithBlock:(id)a3;
@end

@implementation STMutableTelephonyStatusDomainData

- (void)setSIMOneInfo:(id)a3
{
  v6 = a3;
  if (![(STTelephonyStatusDomainSIMInfo *)self->super._SIMOneInfo isEqual:?])
  {
    v4 = [v6 copy];
    SIMOneInfo = self->super._SIMOneInfo;
    self->super._SIMOneInfo = v4;
  }
}

- (void)setSIMTwoInfo:(id)a3
{
  v6 = a3;
  if (![(STTelephonyStatusDomainSIMInfo *)self->super._SIMTwoInfo isEqual:?])
  {
    v4 = [v6 copy];
    SIMTwoInfo = self->super._SIMTwoInfo;
    self->super._SIMTwoInfo = v4;
  }
}

- (void)setCellularRadioCapabilityEnabled:(BOOL)a3
{
  if (self->super._cellularRadioCapabilityEnabled != a3)
  {
    self->super._cellularRadioCapabilityEnabled = a3;
  }
}

- (void)setDualSIMEnabled:(BOOL)a3
{
  if (self->super._dualSIMEnabled != a3)
  {
    self->super._dualSIMEnabled = a3;
  }
}

- (void)setRadioModuleDead:(BOOL)a3
{
  if (self->super._radioModuleDead != a3)
  {
    self->super._radioModuleDead = a3;
  }
}

- (void)setUsingStewieForSOS:(BOOL)a3
{
  if (self->super._usingStewieForSOS != a3)
  {
    self->super._usingStewieForSOS = a3;
  }
}

- (void)setInactiveSOSEnabled:(BOOL)a3
{
  if (self->super._inactiveSOSEnabled != a3)
  {
    self->super._inactiveSOSEnabled = a3;
  }
}

- (void)setUsingStewieConnection:(BOOL)a3
{
  if (self->super._usingStewieConnection != a3)
  {
    self->super._usingStewieConnection = a3;
  }
}

- (void)setUsingStewieConnectionOverInternet:(BOOL)a3
{
  if (self->super._usingStewieConnectionOverInternet != a3)
  {
    self->super._usingStewieConnectionOverInternet = a3;
  }
}

- (void)updateSIMOneInfoWithBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    v6 = [v5 mutableCopyWithZone:0];

    v4[2](v4, v6);
    [(STMutableTelephonyStatusDomainData *)self setSIMOneInfo:v6];
  }
}

- (void)updateSIMTwoInfoWithBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
    v6 = [v5 mutableCopyWithZone:0];

    v4[2](v4, v6);
    [(STMutableTelephonyStatusDomainData *)self setSIMTwoInfo:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STTelephonyStatusDomainData allocWithZone:a3];

  return [(STTelephonyStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end