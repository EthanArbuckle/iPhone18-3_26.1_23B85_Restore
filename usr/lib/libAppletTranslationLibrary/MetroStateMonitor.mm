@interface MetroStateMonitor
+ (_TtC24AppletTranslationLibrary17MetroStateMonitor)shared;
- (BOOL)inMetro;
- (void)consumeStateWithAid:(id)a3 newState:(BOOL)a4;
@end

@implementation MetroStateMonitor

+ (_TtC24AppletTranslationLibrary17MetroStateMonitor)shared
{
  if (qword_27DA9E050 != -1)
  {
    swift_once();
  }

  v3 = qword_27DAA03B0;

  return v3;
}

- (BOOL)inMetro
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (void)consumeStateWithAid:(id)a3 newState:(BOOL)a4
{
  v6 = sub_22EFB648C();
  v8 = v7;
  v9 = self;
  sub_22EF728EC(v6, v8, a4);
}

@end