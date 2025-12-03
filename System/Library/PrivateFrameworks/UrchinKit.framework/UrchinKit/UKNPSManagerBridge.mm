@interface UKNPSManagerBridge
- (UKNPSManagerBridge)init;
- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer;
@end

@implementation UKNPSManagerBridge

- (UKNPSManagerBridge)init
{
  v6.receiver = self;
  v6.super_class = UKNPSManagerBridge;
  v2 = [(UKNPSManagerBridge *)&v6 init];
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
  npsManager = [(UKNPSManagerBridge *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:domainCopy keys:keysCopy container:containerCopy appGroupContainer:groupContainerCopy];
}

@end