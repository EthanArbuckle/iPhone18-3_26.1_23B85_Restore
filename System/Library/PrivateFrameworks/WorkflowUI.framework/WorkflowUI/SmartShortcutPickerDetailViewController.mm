@interface SmartShortcutPickerDetailViewController
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SmartShortcutPickerDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_274832D98();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_27483417C();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  viewCopy = view;
  selfCopy = self;
  sub_274834358(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

@end