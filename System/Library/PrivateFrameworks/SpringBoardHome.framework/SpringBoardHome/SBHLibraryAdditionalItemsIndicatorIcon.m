@interface SBHLibraryAdditionalItemsIndicatorIcon
- (SBHLibraryAdditionalItemsIndicatorIcon)initWithCategory:(id)a3;
- (SBHLibraryCategory)category;
@end

@implementation SBHLibraryAdditionalItemsIndicatorIcon

- (SBHLibraryAdditionalItemsIndicatorIcon)initWithCategory:(id)a3
{
  v4 = a3;
  v5 = [v4 compactPodAdditionalItemsFolder];
  v8.receiver = self;
  v8.super_class = SBHLibraryAdditionalItemsIndicatorIcon;
  v6 = [(SBFolderIcon *)&v8 initWithFolder:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_category, v4);
  }

  return v6;
}

- (SBHLibraryCategory)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

@end