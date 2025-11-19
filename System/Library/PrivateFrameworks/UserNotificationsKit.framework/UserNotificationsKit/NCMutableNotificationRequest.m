@interface NCMutableNotificationRequest
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlertOptions:(id)a3;
- (void)setCategoryIdentifier:(id)a3;
- (void)setContext:(id)a3;
- (void)setEventBehavior:(id)a3;
- (void)setFilterCriteria:(id)a3;
- (void)setHighestPrioritySubSectionIdentifier:(id)a3;
- (void)setIntentIdentifiers:(id)a3;
- (void)setNotificationIdentifier:(id)a3;
- (void)setParentSectionIdentifier:(id)a3;
- (void)setPeopleIdentifiers:(id)a3;
- (void)setRequestDestinations:(id)a3;
- (void)setSectionIdentifier:(id)a3;
- (void)setSettingsSections:(id)a3;
- (void)setSourceInfo:(id)a3;
- (void)setSubSectionIdentifiers:(id)a3;
- (void)setSupplementaryActions:(id)a3;
- (void)setThreadIdentifier:(id)a3;
@end

@implementation NCMutableNotificationRequest

- (void)setSectionIdentifier:(id)a3
{
  v4 = [a3 copy];
  sectionIdentifier = self->super._sectionIdentifier;
  self->super._sectionIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setNotificationIdentifier:(id)a3
{
  v4 = [a3 copy];
  notificationIdentifier = self->super._notificationIdentifier;
  self->super._notificationIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setThreadIdentifier:(id)a3
{
  v4 = [a3 copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setCategoryIdentifier:(id)a3
{
  self->super._categoryIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionIdentifiers:(id)a3
{
  self->super._subSectionIdentifiers = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setHighestPrioritySubSectionIdentifier:(id)a3
{
  self->super._highestPrioritySubSectionIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIntentIdentifiers:(id)a3
{
  self->super._intentIdentifiers = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPeopleIdentifiers:(id)a3
{
  self->super._peopleIdentifiers = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setParentSectionIdentifier:(id)a3
{
  self->super._parentSectionIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setEventBehavior:(id)a3
{
  self->super._eventBehavior = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setRequestDestinations:(id)a3
{
  self->super._requestDestinations = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlertOptions:(id)a3
{
  self->super._alertOptions = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setContext:(id)a3
{
  self->super._context = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSettingsSections:(id)a3
{
  self->super._settingsSections = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSupplementaryActions:(id)a3
{
  self->super._supplementaryActions = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSourceInfo:(id)a3
{
  self->super._sourceInfo = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setFilterCriteria:(id)a3
{
  self->super._filterCriteria = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationRequest alloc];

  return [(NCNotificationRequest *)v4 initWithNotificationRequest:self];
}

@end