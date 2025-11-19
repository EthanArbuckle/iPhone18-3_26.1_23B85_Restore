@interface PKDashboardSectionDataSourceLinkedApp
- (PKDashboardSectionDataSourceDelegate)delegate;
- (PKDashboardSectionDataSourceLinkedApp)initWithStoreIDs:(id)a3 applicationBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5;
- (id)itemForSectionIdentifier:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation PKDashboardSectionDataSourceLinkedApp

- (PKDashboardSectionDataSourceLinkedApp)initWithStoreIDs:(id)a3 applicationBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKDashboardSectionDataSourceLinkedApp;
  v11 = [(PKDashboardSectionDataSourceLinkedApp *)&v15 init];
  if (v11)
  {
    if ([v8 count] || objc_msgSend(v9, "count"))
    {
      v12 = [[PKLinkedApplication alloc] initWithApplicationIdentifiers:v9 storeIDs:v8 defaultLaunchURL:v10];
      linkedApplication = v11->_linkedApplication;
      v11->_linkedApplication = v12;

      [(PKLinkedApplication *)v11->_linkedApplication reloadApplicationStateIfNecessary];
    }

    v11->_isContentLoaded = 1;
  }

  return v11;
}

- (id)itemForSectionIdentifier:(id)a3 atIndex:(unint64_t)a4
{
  v5 = objc_alloc_init(PKDashboardPassLinkedAppItem);
  [(PKDashboardPassLinkedAppItem *)v5 setLinkedApplication:self->_linkedApplication];

  return v5;
}

- (PKDashboardSectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end