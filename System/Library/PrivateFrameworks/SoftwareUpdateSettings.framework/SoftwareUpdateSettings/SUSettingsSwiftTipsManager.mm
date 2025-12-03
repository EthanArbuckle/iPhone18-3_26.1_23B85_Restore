@interface SUSettingsSwiftTipsManager
+ (SUSettingsSwiftTipsManager)sharedManager;
- (SUSettingsSwiftTipsManager)init;
- (void)configureManualComingSoonTipWithTitle:(id)title andContent:(id)content learnMoreLink:(id)link imageSystemName:(id)name;
- (void)setup;
- (void)setupForManualControl:(BOOL)control;
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
  selfCopy = self;
  v2(0);
}

- (void)setupForManualControl:(BOOL)control
{
  selfCopy = self;
  sub_26AC83498(control);
}

- (void)configureManualComingSoonTipWithTitle:(id)title andContent:(id)content learnMoreLink:(id)link imageSystemName:(id)name
{
  v10 = sub_26AC86408();
  v12 = v11;
  if (content)
  {
    v13 = sub_26AC86408();
    content = v14;
    if (link)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (name)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!link)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_26AC86408();
  link = v16;
  if (name)
  {
LABEL_4:
    v17 = sub_26AC86408();
    name = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  selfCopy = self;
  sub_26AC83ECC(v10, v12, v13, content, v15, link, v17, name);
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