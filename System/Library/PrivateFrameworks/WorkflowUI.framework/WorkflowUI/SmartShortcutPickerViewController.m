@interface SmartShortcutPickerViewController
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SmartShortcutPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2748D4EEC();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_2748D5A2C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2748D5ACC(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2748D5B98();
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
  sub_2748D5DE4(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748D7118(v4);
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2748D7268();
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  SmartShortcutPickerViewController.searchBar(_:textDidChange:)(v10, v11);
}

@end