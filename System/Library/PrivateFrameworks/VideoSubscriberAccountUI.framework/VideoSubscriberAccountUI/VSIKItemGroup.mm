@interface VSIKItemGroup
+ (id)makeFeatureJSObjectForFeature:(id)feature;
+ (void)registerFeature;
- (IKAppContext)appContext;
- (VSIKItemGroup)initWithDOMNode:(id)node featureName:(id)name;
- (VSIKItemGroupDelegate)delegate;
- (void)setJSSelectedItem:(int64_t)item;
- (void)setSelectedItemIndex:(int64_t)index;
@end

@implementation VSIKItemGroup

+ (void)registerFeature
{
  v2 = MEMORY[0x277D1B080];
  v3 = objc_opt_class();

  [v2 registerClass:v3 forFeatureName:@"ItemGroup"];
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [VSJSItemGroup alloc];
  appContext = [featureCopy appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:appContext];

  [(VSJSItemGroup *)v6 setBridge:featureCopy];

  return v6;
}

- (VSIKItemGroup)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = VSIKItemGroup;
  v8 = [(VSIKItemGroup *)&v13 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

- (void)setSelectedItemIndex:(int64_t)index
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "ItemGroup updated from UI to index %lu.", &v7, 0xCu);
  }

  [(VSIKItemGroup *)self willChangeValueForKey:@"selectedItemIndex"];
  self->_selectedItemIndex = index;
  [(VSIKItemGroup *)self didChangeValueForKey:@"selectedItemIndex"];
  [(VSIKItemGroup *)self willChangeValueForKey:@"jsSelectedItem"];
  self->_jsSelectedItem = index;
  [(VSIKItemGroup *)self didChangeValueForKey:@"jsSelectedItem"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setJSSelectedItem:(int64_t)item
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    itemCopy = item;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "ItemGroup updated from JS to index %lu.", &v8, 0xCu);
  }

  [(VSIKItemGroup *)self willChangeValueForKey:@"selectedItemIndex"];
  self->_selectedItemIndex = item;
  [(VSIKItemGroup *)self didChangeValueForKey:@"selectedItemIndex"];
  [(VSIKItemGroup *)self willChangeValueForKey:@"jsSelectedItem"];
  self->_jsSelectedItem = item;
  [(VSIKItemGroup *)self didChangeValueForKey:@"jsSelectedItem"];
  delegate = [(VSIKItemGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate itemGroup:self selectedItemIndexDidChange:item];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (VSIKItemGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end