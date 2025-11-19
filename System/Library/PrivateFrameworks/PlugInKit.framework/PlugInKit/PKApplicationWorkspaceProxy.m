@interface PKApplicationWorkspaceProxy
+ (id)defaultWorkspace;
- (BOOL)registerPlugin:(id)a3;
- (BOOL)unregisterPlugin:(id)a3;
- (PKApplicationWorkspaceProxy)init;
- (id)installedPlugins;
- (id)pluginsMatchingQuery:(id)a3 applyFilter:(id)a4;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation PKApplicationWorkspaceProxy

+ (id)defaultWorkspace
{
  if (qword_1ED6EF060 != -1)
  {
    sub_1C6893DC4();
  }

  v3 = qword_1ED6EF058;

  return v3;
}

- (PKApplicationWorkspaceProxy)init
{
  v6.receiver = self;
  v6.super_class = PKApplicationWorkspaceProxy;
  v2 = [(PKApplicationWorkspaceProxy *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6963608] defaultWorkspace];
    lsObject = v2->_lsObject;
    v2->_lsObject = v3;
  }

  return v2;
}

- (id)installedPlugins
{
  v2 = [(PKApplicationWorkspaceProxy *)self lsObject];
  v3 = [v2 installedPlugins];

  return v3;
}

- (void)addObserver:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PKApplicationWorkspaceProxy *)self lsObject];
  [v5 addObserver:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKApplicationWorkspaceProxy *)self lsObject];
  [v5 removeObserver:v4];
}

- (id)pluginsMatchingQuery:(id)a3 applyFilter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKApplicationWorkspaceProxy *)self lsObject];
  v9 = [v8 pluginsMatchingQuery:v7 applyFilter:v6];

  return v9;
}

- (BOOL)registerPlugin:(id)a3
{
  v4 = a3;
  v5 = [(PKApplicationWorkspaceProxy *)self lsObject];
  v6 = [v5 registerPlugin:v4];

  return v6;
}

- (BOOL)unregisterPlugin:(id)a3
{
  v4 = a3;
  v5 = [(PKApplicationWorkspaceProxy *)self lsObject];
  v6 = [v5 unregisterPlugin:v4];

  return v6;
}

@end