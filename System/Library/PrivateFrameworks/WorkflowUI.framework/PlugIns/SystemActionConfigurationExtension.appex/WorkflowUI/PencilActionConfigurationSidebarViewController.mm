@interface PencilActionConfigurationSidebarViewController
- (_TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PencilActionConfigurationSidebarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000D638();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10000E9F4();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_100012EDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012E9C();
  viewCopy = view;
  selfCopy = self;
  sub_10000FBFC();

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_10000FF24();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_10000FFE0(selfCopy, decelerate);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1000100E4();
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  selfCopy = self;
  sub_1000101A4(showCopy);
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  selfCopy = self;
  sub_1000102F4();
}

- (_TtC34SystemActionConfigurationExtension46PencilActionConfigurationSidebarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000135EC();
  }

  bundleCopy = bundle;
  sub_1000106DC();
}

@end