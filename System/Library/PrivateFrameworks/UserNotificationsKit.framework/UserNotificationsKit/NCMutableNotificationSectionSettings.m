@interface NCMutableNotificationSectionSettings
- (void)setDisplayName:(id)a3;
- (void)setMuteAssertion:(id)a3;
- (void)setSectionIdentifier:(id)a3;
- (void)setSettings:(id)a3;
- (void)setSubSectionIdentifier:(id)a3;
- (void)setSubSectionSettings:(id)a3;
@end

@implementation NCMutableNotificationSectionSettings

- (void)setSectionIdentifier:(id)a3
{
  self->super._sectionIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionIdentifier:(id)a3
{
  self->super._subSectionIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayName:(id)a3
{
  self->super._displayName = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSettings:(id)a3
{
  self->super._settings = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionSettings:(id)a3
{
  self->super._subSectionSettings = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setMuteAssertion:(id)a3
{
  self->super._muteAssertion = [a3 copyWithZone:0];

  MEMORY[0x2821F96F8]();
}

@end