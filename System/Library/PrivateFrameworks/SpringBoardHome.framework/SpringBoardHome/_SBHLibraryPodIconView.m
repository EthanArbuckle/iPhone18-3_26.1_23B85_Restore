@interface _SBHLibraryPodIconView
- (id)createNewIconLabelViewFactory;
@end

@implementation _SBHLibraryPodIconView

- (id)createNewIconLabelViewFactory
{
  if (createNewIconLabelViewFactory_onceToken != -1)
  {
    [_SBHLibraryPodIconView createNewIconLabelViewFactory];
  }

  v3 = createNewIconLabelViewFactory_appLibraryFactory;

  return v3;
}

@end