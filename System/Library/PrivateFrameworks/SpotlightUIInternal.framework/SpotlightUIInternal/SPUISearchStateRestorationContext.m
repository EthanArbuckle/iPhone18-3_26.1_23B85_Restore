@interface SPUISearchStateRestorationContext
- (SPUISearchStateRestorationContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUISearchStateRestorationContext

- (SPUISearchStateRestorationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SPUISearchStateRestorationContext;
  v5 = [(SPUISearchStateRestorationContext *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"viewControllerContexts"];
    viewControllerContexts = v5->_viewControllerContexts;
    v5->_viewControllerContexts = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchViewContext"];
    searchViewContext = v5->_searchViewContext;
    v5->_searchViewContext = v12;

    [v4 decodeDoubleForKey:@"timeAtDismissal"];
    v5->_timeAtDismissal = v14;
    v5->_wantsGo = [v4 decodeBoolForKey:@"wantsGo"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  viewControllerContexts = self->_viewControllerContexts;
  v5 = a3;
  [v5 encodeObject:viewControllerContexts forKey:@"viewControllerContexts"];
  [v5 encodeObject:self->_searchViewContext forKey:@"searchViewContext"];
  [v5 encodeDouble:@"timeAtDismissal" forKey:self->_timeAtDismissal];
  [v5 encodeBool:self->_wantsGo forKey:@"wantsGo"];
}

@end