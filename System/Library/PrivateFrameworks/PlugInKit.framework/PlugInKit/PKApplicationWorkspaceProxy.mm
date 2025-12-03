@interface PKApplicationWorkspaceProxy
+ (id)defaultWorkspace;
- (BOOL)registerPlugin:(id)plugin;
- (BOOL)unregisterPlugin:(id)plugin;
- (PKApplicationWorkspaceProxy)init;
- (id)installedPlugins;
- (id)pluginsMatchingQuery:(id)query applyFilter:(id)filter;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
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
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    lsObject = v2->_lsObject;
    v2->_lsObject = defaultWorkspace;
  }

  return v2;
}

- (id)installedPlugins
{
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  installedPlugins = [lsObject installedPlugins];

  return installedPlugins;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v4 = objc_autoreleasePoolPush();
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  [lsObject addObserver:observerCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  [lsObject removeObserver:observerCopy];
}

- (id)pluginsMatchingQuery:(id)query applyFilter:(id)filter
{
  filterCopy = filter;
  queryCopy = query;
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  v9 = [lsObject pluginsMatchingQuery:queryCopy applyFilter:filterCopy];

  return v9;
}

- (BOOL)registerPlugin:(id)plugin
{
  pluginCopy = plugin;
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  v6 = [lsObject registerPlugin:pluginCopy];

  return v6;
}

- (BOOL)unregisterPlugin:(id)plugin
{
  pluginCopy = plugin;
  lsObject = [(PKApplicationWorkspaceProxy *)self lsObject];
  v6 = [lsObject unregisterPlugin:pluginCopy];

  return v6;
}

@end