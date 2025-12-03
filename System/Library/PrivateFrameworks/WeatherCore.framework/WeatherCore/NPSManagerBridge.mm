@interface NPSManagerBridge
- (NPSManagerBridge)init;
- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer;
@end

@implementation NPSManagerBridge

- (NPSManagerBridge)init
{
  v6.receiver = self;
  v6.super_class = NPSManagerBridge;
  v2 = [(NPSManagerBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;
  }

  return v2;
}

- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer
{
  groupContainerCopy = groupContainer;
  containerCopy = container;
  keysCopy = keys;
  domainCopy = domain;
  npsManager = [(NPSManagerBridge *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:domainCopy keys:keysCopy container:containerCopy appGroupContainer:groupContainerCopy];
}

@end