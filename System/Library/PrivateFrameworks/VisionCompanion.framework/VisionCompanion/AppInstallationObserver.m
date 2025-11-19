@interface AppInstallationObserver
- (_TtC15VisionCompanion23AppInstallationObserver)init;
@end

@implementation AppInstallationObserver

- (_TtC15VisionCompanion23AppInstallationObserver)init
{
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = MEMORY[0x277D84F98];
  v8.receiver = self;
  v8.super_class = type metadata accessor for AppInstallationObserver();
  v3 = [(AppInstallationObserver *)&v8 init];
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 defaultWorkspace];
  if (result)
  {
    v7 = result;
    [(AppInstallationObserver *)result addObserver:v5];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end