@interface WBSWebProcessPlugIn
- (BOOL)isABTestingEnabled;
- (NSArray)searchEnginesForRedirectToSafeSearch;
- (WBSSearchProvider)defaultSearchProvider;
- (id)pageControllerWithBrowserContextController:(id)controller;
- (unint64_t)abGroupIdentifier;
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
@end

@implementation WBSWebProcessPlugIn

- (NSArray)searchEnginesForRedirectToSafeSearch
{
  parameters = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [parameters valueForKey:@"searchEnginesForRedirectToSafeSearch"];

  return v3;
}

- (WBSSearchProvider)defaultSearchProvider
{
  parameters = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [parameters valueForKey:@"defaultSearchEngine"];

  return v3;
}

- (BOOL)isABTestingEnabled
{
  parameters = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [parameters valueForKey:@"abTestingEnabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)abGroupIdentifier
{
  parameters = [(WKWebProcessPlugInController *)self->_plugInController parameters];
  v3 = [parameters valueForKey:@"abGroupIdentifier"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)pageControllerWithBrowserContextController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    _groupIdentifier = [controllerCopy _groupIdentifier];
  }

  else
  {
    pageGroup = [controllerCopy pageGroup];
    _groupIdentifier = [pageGroup identifier];
  }

  v7 = [_groupIdentifier isEqualToString:@"TouchIconExtractor"];
  v8 = off_1E8281B70;
  if (!v7)
  {
    v8 = off_1E8281C10;
  }

  v9 = [objc_alloc(*v8) initWithPlugIn:self contextController:controllerCopy];

  return v9;
}

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  objc_storeStrong(&self->_plugInController, in);
  inCopy = in;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  browserContextControllersToWebProcessPlugInPageControllers = self->_browserContextControllersToWebProcessPlugInPageControllers;
  self->_browserContextControllersToWebProcessPlugInPageControllers = strongToStrongObjectsMapTable;
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v6 = [(WBSWebProcessPlugIn *)self pageControllerWithBrowserContextController:controllerCopy];
  [(NSMapTable *)self->_browserContextControllersToWebProcessPlugInPageControllers setObject:v6 forKey:controllerCopy];
  [(WBSWebProcessPlugIn *)self didCreatePageController:v6 forBrowserContextController:controllerCopy];
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  browserContextControllersToWebProcessPlugInPageControllers = self->_browserContextControllersToWebProcessPlugInPageControllers;
  controllerCopy = controller;
  v7 = [(NSMapTable *)browserContextControllersToWebProcessPlugInPageControllers objectForKey:controllerCopy];
  [v7 willDestroyBrowserContextController:controllerCopy];
  [(WBSWebProcessPlugIn *)self willDestroyPageController:v7 forBrowserContextController:controllerCopy];
  [(NSMapTable *)self->_browserContextControllersToWebProcessPlugInPageControllers removeObjectForKey:controllerCopy];
}

@end