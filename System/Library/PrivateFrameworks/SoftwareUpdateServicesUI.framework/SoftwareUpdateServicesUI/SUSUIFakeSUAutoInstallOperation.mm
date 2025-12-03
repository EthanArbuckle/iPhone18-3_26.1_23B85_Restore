@interface SUSUIFakeSUAutoInstallOperation
- (id)forecast;
- (id)id;
@end

@implementation SUSUIFakeSUAutoInstallOperation

- (id)forecast
{
  v2 = objc_alloc_init(SUSUIFakeSUAutoInstallForecast);

  return v2;
}

- (id)id
{
  if (!self->_uuid)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = self->_uuid;
    self->_uuid = uUID;
    MEMORY[0x277D82BD8](uuid);
  }

  v4 = self->_uuid;

  return v4;
}

@end