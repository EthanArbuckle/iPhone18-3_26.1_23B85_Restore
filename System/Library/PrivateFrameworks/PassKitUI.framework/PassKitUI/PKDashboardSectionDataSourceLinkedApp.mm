@interface PKDashboardSectionDataSourceLinkedApp
- (PKDashboardSectionDataSourceDelegate)delegate;
- (PKDashboardSectionDataSourceLinkedApp)initWithStoreIDs:(id)ds applicationBundleIdentifiers:(id)identifiers defaultLaunchURL:(id)l;
- (id)itemForSectionIdentifier:(id)identifier atIndex:(unint64_t)index;
@end

@implementation PKDashboardSectionDataSourceLinkedApp

- (PKDashboardSectionDataSourceLinkedApp)initWithStoreIDs:(id)ds applicationBundleIdentifiers:(id)identifiers defaultLaunchURL:(id)l
{
  dsCopy = ds;
  identifiersCopy = identifiers;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PKDashboardSectionDataSourceLinkedApp;
  v11 = [(PKDashboardSectionDataSourceLinkedApp *)&v15 init];
  if (v11)
  {
    if ([dsCopy count] || objc_msgSend(identifiersCopy, "count"))
    {
      v12 = [[PKLinkedApplication alloc] initWithApplicationIdentifiers:identifiersCopy storeIDs:dsCopy defaultLaunchURL:lCopy];
      linkedApplication = v11->_linkedApplication;
      v11->_linkedApplication = v12;

      [(PKLinkedApplication *)v11->_linkedApplication reloadApplicationStateIfNecessary];
    }

    v11->_isContentLoaded = 1;
  }

  return v11;
}

- (id)itemForSectionIdentifier:(id)identifier atIndex:(unint64_t)index
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