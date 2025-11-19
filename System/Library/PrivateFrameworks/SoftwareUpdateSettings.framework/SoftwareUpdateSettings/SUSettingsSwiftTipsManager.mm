@interface SUSettingsSwiftTipsManager
+ (SUSettingsSwiftTipsManager)sharedManager;
- (SUSettingsSwiftTipsManager)init;
- (void)configureManualComingSoonTipWithTitle:(id)a3 andContent:(id)a4 learnMoreLink:(id)a5 imageSystemName:(id)a6;
- (void)setup;
- (void)setupForManualControl:(BOOL)a3;
@end

@implementation SUSettingsSwiftTipsManager

+ (SUSettingsSwiftTipsManager)sharedManager
{
  if (qword_2803D84E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2803D84E8;

  return v3;
}

- (void)setup
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xB8);
  v3 = self;
  v2(0);
}

- (void)setupForManualControl:(BOOL)a3
{
  v4 = self;
  sub_26AC83498(a3);
}

- (void)configureManualComingSoonTipWithTitle:(id)a3 andContent:(id)a4 learnMoreLink:(id)a5 imageSystemName:(id)a6
{
  v10 = sub_26AC86408();
  v12 = v11;
  if (a4)
  {
    v13 = sub_26AC86408();
    a4 = v14;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_26AC86408();
  a5 = v16;
  if (a6)
  {
LABEL_4:
    v17 = sub_26AC86408();
    a6 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v19 = self;
  sub_26AC83ECC(v10, v12, v13, a4, v15, a5, v17, a6);
}

- (SUSettingsSwiftTipsManager)init
{
  sub_26AC85894((&self->super.isa + OBJC_IVAR___SUSettingsSwiftTipsManager_constellationComingSoonTip));
  nullsub_1();
  sub_26AC826CC(self + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip);
  *(&self->super.isa + OBJC_IVAR___SUSettingsSwiftTipsManager_inManualControl) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SUSettingsSwiftTipsManager();
  return [(SUSettingsSwiftTipsManager *)&v4 init];
}

@end