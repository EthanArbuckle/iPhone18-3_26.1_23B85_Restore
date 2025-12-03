@interface SBHLibraryAdditionalItemsIndicatorIcon
- (SBHLibraryAdditionalItemsIndicatorIcon)initWithCategory:(id)category;
- (SBHLibraryCategory)category;
@end

@implementation SBHLibraryAdditionalItemsIndicatorIcon

- (SBHLibraryAdditionalItemsIndicatorIcon)initWithCategory:(id)category
{
  categoryCopy = category;
  compactPodAdditionalItemsFolder = [categoryCopy compactPodAdditionalItemsFolder];
  v8.receiver = self;
  v8.super_class = SBHLibraryAdditionalItemsIndicatorIcon;
  v6 = [(SBFolderIcon *)&v8 initWithFolder:compactPodAdditionalItemsFolder];

  if (v6)
  {
    objc_storeWeak(&v6->_category, categoryCopy);
  }

  return v6;
}

- (SBHLibraryCategory)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

@end