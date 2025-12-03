@interface PMUIApplicationDelegate
- (_TtC17PasswordManagerUI23PMUIApplicationDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation PMUIApplicationDelegate

- (_TtC17PasswordManagerUI23PMUIApplicationDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PMUIApplicationDelegate();
  return [(PMUIApplicationDelegate *)&v3 init];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(MEMORY[0x277D75958]) initWithName:0 sessionRole:role];

  type metadata accessor for PMSceneDelegate();
  [v7 setDelegateClass_];

  return v7;
}

- (void)applicationWillTerminate:(id)terminate
{
  sharedStore = [objc_opt_self() sharedStore];
  [sharedStore savePendingChangesBeforeTermination];
}

@end