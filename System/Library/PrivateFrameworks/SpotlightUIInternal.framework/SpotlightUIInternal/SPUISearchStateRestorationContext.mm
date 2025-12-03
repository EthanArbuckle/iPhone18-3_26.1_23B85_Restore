@interface SPUISearchStateRestorationContext
- (SPUISearchStateRestorationContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUISearchStateRestorationContext

- (SPUISearchStateRestorationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SPUISearchStateRestorationContext;
  v5 = [(SPUISearchStateRestorationContext *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"viewControllerContexts"];
    viewControllerContexts = v5->_viewControllerContexts;
    v5->_viewControllerContexts = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchViewContext"];
    searchViewContext = v5->_searchViewContext;
    v5->_searchViewContext = v12;

    [coderCopy decodeDoubleForKey:@"timeAtDismissal"];
    v5->_timeAtDismissal = v14;
    v5->_wantsGo = [coderCopy decodeBoolForKey:@"wantsGo"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  viewControllerContexts = self->_viewControllerContexts;
  coderCopy = coder;
  [coderCopy encodeObject:viewControllerContexts forKey:@"viewControllerContexts"];
  [coderCopy encodeObject:self->_searchViewContext forKey:@"searchViewContext"];
  [coderCopy encodeDouble:@"timeAtDismissal" forKey:self->_timeAtDismissal];
  [coderCopy encodeBool:self->_wantsGo forKey:@"wantsGo"];
}

@end