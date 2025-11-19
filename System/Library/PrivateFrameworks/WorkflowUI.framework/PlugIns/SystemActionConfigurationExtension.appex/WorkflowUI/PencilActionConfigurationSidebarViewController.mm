@interface PencilActionConfigurationSidebarViewController
- (_TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationSidebarViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000D638();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10000E9F4();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_100012EDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012E9C();
  v10 = a3;
  v11 = self;
  sub_10000FBFC();

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000FF24();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000FFE0(v7, a4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000100E4();
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000101A4(v4);
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000102F4();
}

- (_TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000135EC();
  }

  v5 = a4;
  sub_1000106DC();
}

@end