@interface MockACAccount
- (BOOL)isEnabledForDataclass:(id)a3;
- (NSArray)childAccounts;
- (NSMutableSet)enabledDataclasses;
- (id)childAccountsWithAccountTypeIdentifier:(id)a3;
- (void)setEnabled:(BOOL)a3 forDataclass:(id)a4;
- (void)setEnabledDataclasses:(id)a3;
@end

@implementation MockACAccount

- (NSArray)childAccounts
{
  sub_2301878C4();

  v2 = sub_23030FCC8();

  return v2;
}

- (id)childAccountsWithAccountTypeIdentifier:(id)a3
{
  if (a3)
  {
    v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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

- (BOOL)isEnabledForDataclass:(id)a3
{
  result = swift_beginAccess();
  if (a3)
  {
    v6 = self;

    v7 = a3;
    v8 = sub_2300AEB10();

    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setEnabled:(BOOL)a3 forDataclass:(id)a4
{
  v7 = a4;
  v8 = self;
  sub_230186858(a3, a4);
}

- (NSMutableSet)enabledDataclasses
{
  swift_beginAccess();
  v3 = self;

  sub_230141064(v4);

  v5 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v6 = sub_23030FF18();

  v7 = [v5 initWithSet_];

  return v7;
}

- (void)setEnabledDataclasses:(id)a3
{
  if (a3)
  {
    v4 = self;
    v5 = a3;
    v6 = sub_230127B9C();

    v7 = OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_enabledDataClasses;
    swift_beginAccess();
    *(&v4->super.super.isa + v7) = v6;
  }

  else
  {
    __break(1u);
  }
}

@end