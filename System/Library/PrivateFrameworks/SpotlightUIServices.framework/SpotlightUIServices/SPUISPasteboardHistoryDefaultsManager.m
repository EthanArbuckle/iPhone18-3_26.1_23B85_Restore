@interface SPUISPasteboardHistoryDefaultsManager
+ (SPUISPasteboardHistoryDefaultsManager)shared;
- (BOOL)isContinuityEnabled;
- (BOOL)isEnabled;
- (BOOL)isFTEEngaged;
- (BOOL)isPasteboardHistoryEnabled;
- (SPUISPasteboardHistoryDefaultsManager)init;
- (int64_t)historyTimeout;
- (int64_t)pasteboardHistorySettingsVersion;
- (void)setHistoryTimeout:(int64_t)a3;
- (void)setIsPasteboardHistoryEnabled:(BOOL)a3;
- (void)setPasteboardHistorySettingsVersion:(int64_t)a3;
@end

@implementation SPUISPasteboardHistoryDefaultsManager

+ (SPUISPasteboardHistoryDefaultsManager)shared
{
  if (qword_280425810 != -1)
  {
    swift_once();
  }

  v3 = qword_280425818;

  return v3;
}

- (int64_t)historyTimeout
{
  v2 = self;
  v3 = sub_26B8C1400();

  return v3;
}

- (void)setHistoryTimeout:(int64_t)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x60);
  v8 = self;
  if (v5() != a3)
  {
    v6 = (*((*v4 & v8->super.isa) + 0x58))();
    v7 = sub_26B8C7E84();
    [v6 setInteger:a3 forKey:v7];
  }
}

- (BOOL)isContinuityEnabled
{
  v2 = self;
  v3 = sub_26B8C1980();

  return v3 & 1;
}

- (BOOL)isFTEEngaged
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  v3 = self;
  v4 = v2();
  v5 = sub_26B8C7E84();
  v6 = [v4 BOOLForKey_];

  return v6;
}

- (BOOL)isPasteboardHistoryEnabled
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  v3 = self;
  v4 = v2();
  v5 = sub_26B8C7E84();
  v6 = [v4 BOOLForKey_];

  return v6;
}

- (void)setIsPasteboardHistoryEnabled:(BOOL)a3
{
  v4 = self;
  sub_26B8C2664(a3);
}

- (int64_t)pasteboardHistorySettingsVersion
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  v3 = self;
  v4 = v2();
  v5 = sub_26B8C7E84();
  v6 = [v4 integerForKey_];

  return v6;
}

- (void)setPasteboardHistorySettingsVersion:(int64_t)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC0);
  v8 = self;
  if (v5() != a3)
  {
    v6 = (*((*v4 & v8->super.isa) + 0x58))();
    v7 = sub_26B8C7E84();
    [v6 setInteger:a3 forKey:v7];
  }
}

- (BOOL)isEnabled
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xA8);
  v4 = self;
  if (v3())
  {
    v5 = (*((*v2 & v4->super.isa) + 0x90))();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (SPUISPasteboardHistoryDefaultsManager)init
{
  *(&self->super.isa + OBJC_IVAR___SPUISPasteboardHistoryDefaultsManager_currentVersion) = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SPUISPasteboardHistoryDefaultsManager();
  return [(SPUISPasteboardHistoryDefaultsManager *)&v3 init];
}

@end