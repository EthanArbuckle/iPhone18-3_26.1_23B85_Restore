@interface PMUIApplicationDelegate
- (_TtC17PasswordManagerUI23PMUIApplicationDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)applicationWillTerminate:(id)a3;
@end

@implementation PMUIApplicationDelegate

- (_TtC17PasswordManagerUI23PMUIApplicationDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PMUIApplicationDelegate();
  return [(PMUIApplicationDelegate *)&v3 init];
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = [objc_allocWithZone(MEMORY[0x277D75958]) initWithName:0 sessionRole:v6];

  type metadata accessor for PMSceneDelegate();
  [v7 setDelegateClass_];

  return v7;
}

- (void)applicationWillTerminate:(id)a3
{
  v3 = [objc_opt_self() sharedStore];
  [v3 savePendingChangesBeforeTermination];
}

@end