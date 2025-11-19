@interface VSIKItemGroup
+ (id)makeFeatureJSObjectForFeature:(id)a3;
+ (void)registerFeature;
- (IKAppContext)appContext;
- (VSIKItemGroup)initWithDOMNode:(id)a3 featureName:(id)a4;
- (VSIKItemGroupDelegate)delegate;
- (void)setJSSelectedItem:(int64_t)a3;
- (void)setSelectedItemIndex:(int64_t)a3;
@end

@implementation VSIKItemGroup

+ (void)registerFeature
{
  v2 = MEMORY[0x277D1B080];
  v3 = objc_opt_class();

  [v2 registerClass:v3 forFeatureName:@"ItemGroup"];
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  v4 = [VSJSItemGroup alloc];
  v5 = [v3 appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:v5];

  [(VSJSItemGroup *)v6 setBridge:v3];

  return v6;
}

- (VSIKItemGroup)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VSIKItemGroup;
  v8 = [(VSIKItemGroup *)&v13 init];
  if (v8)
  {
    v9 = [v6 appContext];
    objc_storeWeak(&v8->_appContext, v9);

    v10 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

- (void)setSelectedItemIndex:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "ItemGroup updated from UI to index %lu.", &v7, 0xCu);
  }

  [(VSIKItemGroup *)self willChangeValueForKey:@"selectedItemIndex"];
  self->_selectedItemIndex = a3;
  [(VSIKItemGroup *)self didChangeValueForKey:@"selectedItemIndex"];
  [(VSIKItemGroup *)self willChangeValueForKey:@"jsSelectedItem"];
  self->_jsSelectedItem = a3;
  [(VSIKItemGroup *)self didChangeValueForKey:@"jsSelectedItem"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setJSSelectedItem:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "ItemGroup updated from JS to index %lu.", &v8, 0xCu);
  }

  [(VSIKItemGroup *)self willChangeValueForKey:@"selectedItemIndex"];
  self->_selectedItemIndex = a3;
  [(VSIKItemGroup *)self didChangeValueForKey:@"selectedItemIndex"];
  [(VSIKItemGroup *)self willChangeValueForKey:@"jsSelectedItem"];
  self->_jsSelectedItem = a3;
  [(VSIKItemGroup *)self didChangeValueForKey:@"jsSelectedItem"];
  v6 = [(VSIKItemGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 itemGroup:self selectedItemIndexDidChange:a3];
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