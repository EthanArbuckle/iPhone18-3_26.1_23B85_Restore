@interface WBSWebProcessPlugIn
- (BOOL)isABTestingEnabled;
- (NSArray)searchEnginesForRedirectToSafeSearch;
- (WBSSearchProvider)defaultSearchProvider;
- (id)pageControllerWithBrowserContextController:(id)a3;
- (unint64_t)abGroupIdentifier;
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation WBSWebProcessPlugIn

- (NSArray)searchEnginesForRedirectToSafeSearch
{
  v2 = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [v2 valueForKey:@"searchEnginesForRedirectToSafeSearch"];

  return v3;
}

- (WBSSearchProvider)defaultSearchProvider
{
  v2 = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [v2 valueForKey:@"defaultSearchEngine"];

  return v3;
}

- (BOOL)isABTestingEnabled
{
  v2 = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [v2 valueForKey:@"abTestingEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)abGroupIdentifier
{
  v2 = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [v2 valueForKey:@"abGroupIdentifier"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)pageControllerWithBrowserContextController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _groupIdentifier];
  }

  else
  {
    v6 = [v4 pageGroup];
    v5 = [v6 identifier];
  }

  v7 = [v5 isEqualToString:@"TouchIconExtractor"];
  v8 = off_1E8281B70;
  if (!v7)
  {
    v8 = off_1E8281C10;
  }

  v9 = [objc_alloc(*v8) initWithPlugIn:self contextController:v4];

  return v9;
}

- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4
{
  objc_storeStrong(&self->_plugInController, a3);
  v8 = a3;
  v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  browserContextControllersToWebProcessPlugInPageControllers = self->_browserContextControllersToWebProcessPlugInPageControllers;
  self->_browserContextControllersToWebProcessPlugInPageControllers = v6;
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v5 = a4;
  v6 = [(WBSWebProcessPlugIn *)self pageControllerWithBrowserContextController:v5];
  [(NSMapTable *)self->_browserContextControllersToWebProcessPlugInPageControllers setObject:v6 forKey:v5];
  [(WBSWebProcessPlugIn *)self didCreatePageController:v6 forBrowserContextController:v5];
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  browserContextControllersToWebProcessPlugInPageControllers = self->_browserContextControllersToWebProcessPlugInPageControllers;
  v6 = a4;
  v7 = [(NSMapTable *)browserContextControllersToWebProcessPlugInPageControllers objectForKey:v6];
  [v7 willDestroyBrowserContextController:v6];
  [(WBSWebProcessPlugIn *)self willDestroyPageController:v7 forBrowserContextController:v6];
  [(NSMapTable *)self->_browserContextControllersToWebProcessPlugInPageControllers removeObjectForKey:v6];
}

@end