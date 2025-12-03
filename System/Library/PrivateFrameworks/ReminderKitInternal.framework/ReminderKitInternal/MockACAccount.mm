@interface MockACAccount
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (NSArray)childAccounts;
- (NSMutableSet)enabledDataclasses;
- (id)childAccountsWithAccountTypeIdentifier:(id)identifier;
- (void)setEnabled:(BOOL)enabled forDataclass:(id)dataclass;
- (void)setEnabledDataclasses:(id)dataclasses;
@end

@implementation MockACAccount

- (NSArray)childAccounts
{
  sub_2301878C4();

  v2 = sub_23030FCC8();

  return v2;
}

- (id)childAccountsWithAccountTypeIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_230186514(v4, v6);

  if (v8)
  {
    sub_2301878C4();
    v9 = sub_23030FCC8();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  result = swift_beginAccess();
  if (dataclass)
  {
    selfCopy = self;

    dataclassCopy = dataclass;
    v8 = sub_2300AEB10();

    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setEnabled:(BOOL)enabled forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  selfCopy = self;
  sub_230186858(enabled, dataclass);
}

- (NSMutableSet)enabledDataclasses
{
  swift_beginAccess();
  selfCopy = self;

  sub_230141064(v4);

  v5 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v6 = sub_23030FF18();

  initWithSet_ = [v5 initWithSet_];

  return initWithSet_;
}

- (void)setEnabledDataclasses:(id)dataclasses
{
  if (dataclasses)
  {
    selfCopy = self;
    dataclassesCopy = dataclasses;
    v6 = sub_230127B9C();

    v7 = OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_enabledDataClasses;
    swift_beginAccess();
    *(&selfCopy->super.super.isa + v7) = v6;
  }

  else
  {
    __break(1u);
  }
}

@end