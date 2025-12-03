@interface RecipientViewController_Phone
- (_TtC10SiriMailUI29RecipientViewController_Phone)initWithNibName:(id)name bundle:(id)bundle;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (void)autocompleteResultsController:(void *)controller didCollapseSelectedRecipient:(void *)recipient;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)finishedSearchingForAutocompleteResults;
- (void)recipientViewDidBecomeFirstResponder:(id)responder;
- (void)recipientViewDidResignFirstResponder:(id)responder;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RecipientViewController_Phone

- (void)viewDidLoad
{
  selfCopy = self;
  sub_267AFD1F4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_267AFDE10();
}

- (_TtC10SiriMailUI29RecipientViewController_Phone)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_267B17980();
  }

  bundleCopy = bundle;
  sub_267AFE100();
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_267AFE2D0();
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_267AFE3D8(selfCopy, contactCopy);
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  selfCopy = self;
  sub_267AFE63C(selfCopy, propertyCopy);
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  viewCopy = view;
  selfCopy = self;
  sub_267AFE870();
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  selfCopy = self;
  sub_267AFEA24();
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  selfCopy = self;
  sub_267AFEA24();
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  if (address)
  {
    v6 = sub_267B17980();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  sub_267AFECE0(view, v6, v8);
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  if (address)
  {
    v6 = sub_267B17980();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  v11 = sub_267AFEDDC(selfCopy, v6, v8);

  return v11;
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  if (change)
  {
    sub_267B17980();
  }

  viewCopy = view;
  selfCopy = self;
  sub_267AFEEC8();
}

- (void)recipientViewDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  selfCopy = self;
  sub_267AFF374(selfCopy, MEMORY[0x277D63F28]);
}

- (void)recipientViewDidResignFirstResponder:(id)responder
{
  responderCopy = responder;
  selfCopy = self;
  sub_267AFF374(selfCopy, MEMORY[0x277D63F20]);
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  selfCopy = self;
  sub_267AFF488();
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  if (results)
  {
    v6 = sub_267B179F0();
  }

  else
  {
    v6 = 0;
  }

  dCopy = d;
  selfCopy = self;
  sub_267AFF6DC(v6);
}

- (void)finishedSearchingForAutocompleteResults
{
  selfCopy = self;
  sub_267AFF8D8();
}

- (void)autocompleteResultsController:(void *)controller didCollapseSelectedRecipient:(void *)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  sub_267AFF9E0();
}

@end