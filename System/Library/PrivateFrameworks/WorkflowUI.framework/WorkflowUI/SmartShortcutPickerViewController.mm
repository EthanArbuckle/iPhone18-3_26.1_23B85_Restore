@interface SmartShortcutPickerViewController
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation SmartShortcutPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2748D4EEC();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_2748D5A2C(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2748D5ACC(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2748D5B98();
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
  sub_2748D5DE4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  selfCopy = self;
  sub_2748D7118(showCopy);
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  selfCopy = self;
  sub_2748D7268();
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  SmartShortcutPickerViewController.searchBar(_:textDidChange:)(selfCopy, v11);
}

@end