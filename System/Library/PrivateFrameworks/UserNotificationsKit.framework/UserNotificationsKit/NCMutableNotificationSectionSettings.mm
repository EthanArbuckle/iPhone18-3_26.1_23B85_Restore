@interface NCMutableNotificationSectionSettings
- (void)setDisplayName:(id)name;
- (void)setMuteAssertion:(id)assertion;
- (void)setSectionIdentifier:(id)identifier;
- (void)setSettings:(id)settings;
- (void)setSubSectionIdentifier:(id)identifier;
- (void)setSubSectionSettings:(id)settings;
@end

@implementation NCMutableNotificationSectionSettings

- (void)setSectionIdentifier:(id)identifier
{
  self->super._sectionIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionIdentifier:(id)identifier
{
  self->super._subSectionIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayName:(id)name
{
  self->super._displayName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSettings:(id)settings
{
  self->super._settings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionSettings:(id)settings
{
  self->super._subSectionSettings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (void)setMuteAssertion:(id)assertion
{
  self->super._muteAssertion = [assertion copyWithZone:0];

  MEMORY[0x2821F96F8]();
}

@end