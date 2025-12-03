@interface NCMutableNotificationRequest
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertOptions:(id)options;
- (void)setCategoryIdentifier:(id)identifier;
- (void)setContext:(id)context;
- (void)setEventBehavior:(id)behavior;
- (void)setFilterCriteria:(id)criteria;
- (void)setHighestPrioritySubSectionIdentifier:(id)identifier;
- (void)setIntentIdentifiers:(id)identifiers;
- (void)setNotificationIdentifier:(id)identifier;
- (void)setParentSectionIdentifier:(id)identifier;
- (void)setPeopleIdentifiers:(id)identifiers;
- (void)setRequestDestinations:(id)destinations;
- (void)setSectionIdentifier:(id)identifier;
- (void)setSettingsSections:(id)sections;
- (void)setSourceInfo:(id)info;
- (void)setSubSectionIdentifiers:(id)identifiers;
- (void)setSupplementaryActions:(id)actions;
- (void)setThreadIdentifier:(id)identifier;
@end

@implementation NCMutableNotificationRequest

- (void)setSectionIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sectionIdentifier = self->super._sectionIdentifier;
  self->super._sectionIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setNotificationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  notificationIdentifier = self->super._notificationIdentifier;
  self->super._notificationIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setThreadIdentifier:(id)identifier
{
  v4 = [identifier copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  [(NCNotificationRequest *)self _updateIdentifiersString];
}

- (void)setCategoryIdentifier:(id)identifier
{
  self->super._categoryIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubSectionIdentifiers:(id)identifiers
{
  self->super._subSectionIdentifiers = [identifiers copy];

  MEMORY[0x2821F96F8]();
}

- (void)setHighestPrioritySubSectionIdentifier:(id)identifier
{
  self->super._highestPrioritySubSectionIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIntentIdentifiers:(id)identifiers
{
  self->super._intentIdentifiers = [identifiers copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPeopleIdentifiers:(id)identifiers
{
  self->super._peopleIdentifiers = [identifiers copy];

  MEMORY[0x2821F96F8]();
}

- (void)setParentSectionIdentifier:(id)identifier
{
  self->super._parentSectionIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setEventBehavior:(id)behavior
{
  self->super._eventBehavior = [behavior copy];

  MEMORY[0x2821F96F8]();
}

- (void)setRequestDestinations:(id)destinations
{
  self->super._requestDestinations = [destinations copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlertOptions:(id)options
{
  self->super._alertOptions = [options copy];

  MEMORY[0x2821F96F8]();
}

- (void)setContext:(id)context
{
  self->super._context = [context copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSettingsSections:(id)sections
{
  self->super._settingsSections = [sections copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSupplementaryActions:(id)actions
{
  self->super._supplementaryActions = [actions copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSourceInfo:(id)info
{
  self->super._sourceInfo = [info copy];

  MEMORY[0x2821F96F8]();
}

- (void)setFilterCriteria:(id)criteria
{
  self->super._filterCriteria = [criteria copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationRequest alloc];

  return [(NCNotificationRequest *)v4 initWithNotificationRequest:self];
}

@end