@interface STMutableTelephonyStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCellularRadioCapabilityEnabled:(BOOL)enabled;
- (void)setDualSIMEnabled:(BOOL)enabled;
- (void)setInactiveSOSEnabled:(BOOL)enabled;
- (void)setRadioModuleDead:(BOOL)dead;
- (void)setSIMOneInfo:(id)info;
- (void)setSIMTwoInfo:(id)info;
- (void)setUsingStewieConnection:(BOOL)connection;
- (void)setUsingStewieConnectionOverInternet:(BOOL)internet;
- (void)setUsingStewieForSOS:(BOOL)s;
- (void)updateSIMOneInfoWithBlock:(id)block;
- (void)updateSIMTwoInfoWithBlock:(id)block;
@end

@implementation STMutableTelephonyStatusDomainData

- (void)setSIMOneInfo:(id)info
{
  infoCopy = info;
  if (![(STTelephonyStatusDomainSIMInfo *)self->super._SIMOneInfo isEqual:?])
  {
    v4 = [infoCopy copy];
    SIMOneInfo = self->super._SIMOneInfo;
    self->super._SIMOneInfo = v4;
  }
}

- (void)setSIMTwoInfo:(id)info
{
  infoCopy = info;
  if (![(STTelephonyStatusDomainSIMInfo *)self->super._SIMTwoInfo isEqual:?])
  {
    v4 = [infoCopy copy];
    SIMTwoInfo = self->super._SIMTwoInfo;
    self->super._SIMTwoInfo = v4;
  }
}

- (void)setCellularRadioCapabilityEnabled:(BOOL)enabled
{
  if (self->super._cellularRadioCapabilityEnabled != enabled)
  {
    self->super._cellularRadioCapabilityEnabled = enabled;
  }
}

- (void)setDualSIMEnabled:(BOOL)enabled
{
  if (self->super._dualSIMEnabled != enabled)
  {
    self->super._dualSIMEnabled = enabled;
  }
}

- (void)setRadioModuleDead:(BOOL)dead
{
  if (self->super._radioModuleDead != dead)
  {
    self->super._radioModuleDead = dead;
  }
}

- (void)setUsingStewieForSOS:(BOOL)s
{
  if (self->super._usingStewieForSOS != s)
  {
    self->super._usingStewieForSOS = s;
  }
}

- (void)setInactiveSOSEnabled:(BOOL)enabled
{
  if (self->super._inactiveSOSEnabled != enabled)
  {
    self->super._inactiveSOSEnabled = enabled;
  }
}

- (void)setUsingStewieConnection:(BOOL)connection
{
  if (self->super._usingStewieConnection != connection)
  {
    self->super._usingStewieConnection = connection;
  }
}

- (void)setUsingStewieConnectionOverInternet:(BOOL)internet
{
  if (self->super._usingStewieConnectionOverInternet != internet)
  {
    self->super._usingStewieConnectionOverInternet = internet;
  }
}

- (void)updateSIMOneInfoWithBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    sIMOneInfo = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    v6 = [sIMOneInfo mutableCopyWithZone:0];

    blockCopy[2](blockCopy, v6);
    [(STMutableTelephonyStatusDomainData *)self setSIMOneInfo:v6];
  }
}

- (void)updateSIMTwoInfoWithBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    sIMTwoInfo = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
    v6 = [sIMTwoInfo mutableCopyWithZone:0];

    blockCopy[2](blockCopy, v6);
    [(STMutableTelephonyStatusDomainData *)self setSIMTwoInfo:v6];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STTelephonyStatusDomainData allocWithZone:zone];

  return [(STTelephonyStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end