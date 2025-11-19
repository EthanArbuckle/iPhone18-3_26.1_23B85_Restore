@interface SmartShortcutPickerDetailViewController
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SmartShortcutPickerDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_274832D98();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_27483417C();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_2749F9284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9234();
  v10 = a3;
  v11 = self;
  sub_274834358(v10, v9);

  (*(v7 + 8))(v9, v6);
}

@end