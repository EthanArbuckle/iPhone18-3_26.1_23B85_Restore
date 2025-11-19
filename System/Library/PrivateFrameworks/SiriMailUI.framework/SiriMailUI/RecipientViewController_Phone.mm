@interface RecipientViewController_Phone
- (_TtC10SiriMailUI29RecipientViewController_Phone)initWithNibName:(id)a3 bundle:(id)a4;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (void)autocompleteResultsController:(void *)a3 didCollapseSelectedRecipient:(void *)a4;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)finishedSearchingForAutocompleteResults;
- (void)recipientViewDidBecomeFirstResponder:(id)a3;
- (void)recipientViewDidResignFirstResponder:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RecipientViewController_Phone

- (void)viewDidLoad
{
  v2 = self;
  sub_267AFD1F4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_267AFDE10();
}

- (_TtC10SiriMailUI29RecipientViewController_Phone)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_267B17980();
  }

  v5 = a4;
  sub_267AFE100();
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267AFE2D0();
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_267AFE3D8(v8, v7);
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_267AFE63C(v8, v7);
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_267AFE870();
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_267AFEA24();
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_267AFEA24();
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  if (a4)
  {
    v6 = sub_267B17980();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_267AFECE0(a3, v6, v8);
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  if (a4)
  {
    v6 = sub_267B17980();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_267AFEDDC(v10, v6, v8);

  return v11;
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  if (a4)
  {
    sub_267B17980();
  }

  v6 = a3;
  v7 = self;
  sub_267AFEEC8();
}

- (void)recipientViewDidBecomeFirstResponder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267AFF374(v5, MEMORY[0x277D63F28]);
}

- (void)recipientViewDidResignFirstResponder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267AFF374(v5, MEMORY[0x277D63F20]);
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267AFF488();
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  if (a3)
  {
    v6 = sub_267B179F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  v8 = self;
  sub_267AFF6DC(v6);
}

- (void)finishedSearchingForAutocompleteResults
{
  v2 = self;
  sub_267AFF8D8();
}

- (void)autocompleteResultsController:(void *)a3 didCollapseSelectedRecipient:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_267AFF9E0();
}

@end