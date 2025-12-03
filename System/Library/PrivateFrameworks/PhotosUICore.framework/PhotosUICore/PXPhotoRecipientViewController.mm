@interface PXPhotoRecipientViewController
+ (id)_contactViewControllerToPresentForRecipientViewController:(id)controller;
+ (id)recipientPickerViewControllerWithTitle:(id)title toLabel:(id)label usedAddresses:(id)addresses maxRecipients:(int64_t)recipients verificationType:(int64_t)type delegate:(id)delegate;
- (PXPhotoRecipientViewController)initWithCoder:(id)coder;
- (PXPhotoRecipientViewController)initWithInitialLocalizedNameToQuery:(id)query;
- (PXPhotoRecipientViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPhotoRecipientViewController)initWithSearchResultVerificationType:(int64_t)type;
- (PXPhotoRecipientViewControllerDelegate)delegate;
- (void)_commonInitializationWithVerificationType:(int64_t)type;
- (void)_contactPicker:(id)picker didSelectComposeRecipient:(id)recipient;
- (void)_dismissContactPickerViewController;
- (void)_handleAddButton:(id)button;
- (void)_handleCancelButton:(id)button;
- (void)_keyboardDidShow:(id)show;
- (void)_presentContactPickerViewController:(id)controller;
- (void)_updateAddButton;
- (void)_updateNoContentLabelFont;
- (void)_updateNoContentLabelVisibility;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)searchRecipientController:(id)controller didSelectRecipient:(id)recipient;
- (void)setMaxRecipients:(int64_t)recipients;
- (void)setToLabel:(id)label;
- (void)setUsedAddresses:(id)addresses;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXPhotoRecipientViewController

- (PXPhotoRecipientViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateNoContentLabelFont
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  [(UILabel *)self->_noContentLabel setFont:v3];
}

- (void)searchRecipientController:(id)controller didSelectRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (!recipientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"recipient"}];
  }

  composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [composeRecipientView addRecipient:recipientCopy];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  [(PXPhotoRecipientViewController *)self setContactPickerViewController:0];
  [popoverCopy setDelegate:0];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  presentedViewController = [presentationCopy presentedViewController];
  contactPickerViewController = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (presentedViewController == contactPickerViewController)
  {
    composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
    addButton = [composeRecipientView addButton];

    [presentationCopy setSourceView:addButton];
    [addButton bounds];
    [presentationCopy setSourceRect:?];
  }
}

- (void)_contactPicker:(id)picker didSelectComposeRecipient:(id)recipient
{
  v14[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  pickerCopy = picker;
  contactPickerViewController = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (contactPickerViewController == pickerCopy)
  {
    if (!recipientCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"picker == self.contactPickerViewController"}];

    if (!recipientCopy)
    {
      goto LABEL_5;
    }
  }

  composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [composeRecipientView addRecipient:recipientCopy];

  if ([(PXPhotoRecipientViewController *)self contactPickerPresentedExternally])
  {
    delegate = [(PXPhotoRecipientViewController *)self delegate];
    v14[0] = recipientCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [delegate photoRecipientViewController:self didCompleteWithRecipients:v12];
  }

LABEL_5:
  [(PXPhotoRecipientViewController *)self _dismissContactPickerViewController];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  pickerCopy = picker;
  contact = [propertyCopy contact];
  v8 = [propertyCopy key];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695C208]];

  if (v9)
  {
    value = [propertyCopy value];
    v11 = 0;
  }

  else
  {
    v12 = [propertyCopy key];
    v13 = [v12 isEqualToString:*MEMORY[0x1E695C330]];

    if (v13)
    {
      value2 = [propertyCopy value];
      value = [value2 stringValue];

      v11 = 1;
    }

    else
    {
      value = 0;
      v11 = 5;
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:contact address:value kind:v11];
  v16 = [[PXCNComposeRecipient alloc] initWithRecipient:v15];
  [(PXPhotoRecipientViewController *)self _contactPicker:pickerCopy didSelectComposeRecipient:v16];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  v7 = PXCNComposeRecipientWithContact(contact);
  [(PXPhotoRecipientViewController *)self _contactPicker:pickerCopy didSelectComposeRecipient:v7];
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  contactPickerViewController = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (contactPickerViewController != cancelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"picker == self.contactPickerViewController"}];
  }

  [(PXPhotoRecipientViewController *)self _dismissContactPickerViewController];
}

- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size
{
  v4 = [(PXPhotoRecipientViewController *)self view:view];
  [v4 setNeedsUpdateConstraints];
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  [(PXPhotoRecipientViewController *)self _updateAddButton];
  maxRecipients = [(PXPhotoRecipientViewController *)self maxRecipients];
  recipients = [viewCopy recipients];

  v8 = [recipients count];
  if (maxRecipients == v8)
  {
    delegate = [(PXPhotoRecipientViewController *)self delegate];
    composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
    recipients2 = [composeRecipientView recipients];
    [delegate photoRecipientViewController:self didCompleteWithRecipients:recipients2];
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695D120]);
  [v4 setDelegate:self];
  v5 = *MEMORY[0x1E695C208];
  v10[0] = *MEMORY[0x1E695C330];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v4 setDisplayedPropertyKeys:v6];
  [v4 setAllowsEditing:1];
  initialLocalizedNameToQuery = [(PXPhotoRecipientViewController *)self initialLocalizedNameToQuery];
  if (-[PXPhotoRecipientViewController maxRecipients](self, "maxRecipients") == 1 && [initialLocalizedNameToQuery length])
  {
    PXLocalizedStringFromTable(@"PXComposeRecipientPickerBootstrapWithLocalizedNamePrompt", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v8 = PXLocalizedStringFromTable(@"PXComposeRecipientPickerBootstrapPrompt", @"PhotosUICore");
  [v4 setPrompt:v8];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
  [v4 setPredicateForSelectionOfContact:v9];
  [(PXPhotoRecipientViewController *)self _presentContactPickerViewController:v4];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v5 = [(PXPhotoRecipientViewController *)self searchDataSourceManager:view];
  [v5 setQueryString:&stru_1F1741150];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelVisibility];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  searchDataSourceManager = [(PXPhotoRecipientViewController *)self searchDataSourceManager];
  [searchDataSourceManager setQueryString:changeCopy];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelVisibility];
}

- (void)_keyboardDidShow:(id)show
{
  showCopy = show;
  view = [(PXPhotoRecipientViewController *)self view];
  userInfo = [showCopy userInfo];

  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [view convertRect:0 fromView:{v8, v10, v12, v14}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [view frame];
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  v28 = CGRectIntersection(v27, v29);
  height = v28.size.height;
  [view safeAreaInsets];
  [(NSLayoutConstraint *)self->_resultsViewBottomConstraint setConstant:v24 - height];
}

- (void)_updateNoContentLabelVisibility
{
  searchDataSourceManager = [(PXPhotoRecipientViewController *)self searchDataSourceManager];
  queryString = [searchDataSourceManager queryString];
  v5 = [queryString length];

  searchRecipientController = [(PXPhotoRecipientViewController *)self searchRecipientController];
  searchState = [searchRecipientController searchState];
  numberOfSearchRecipients = [searchRecipientController numberOfSearchRecipients];
  if (v5)
  {
    v8 = searchState == 1;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && numberOfSearchRecipients == 0;
  searchResultsView = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  [searchResultsView setHidden:v10];

  [(UILabel *)self->_noContentLabel setHidden:v10 ^ 1];
}

- (void)_updateAddButton
{
  composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
  recipients = [composeRecipientView recipients];
  v5 = [recipients count] != 0;

  [(UIBarButtonItem *)self->_addButton setEnabled:v5];
  if ([(PXPhotoRecipientViewController *)self maxRecipients]== 1)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIBarButtonItem *)self->_addButton setTintColor:clearColor];
  }

  else
  {
    addButton = self->_addButton;

    [(UIBarButtonItem *)addButton setTintColor:0];
  }
}

- (void)_handleAddButton:(id)button
{
  delegate = [(PXPhotoRecipientViewController *)self delegate];
  composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
  recipients = [composeRecipientView recipients];
  [delegate photoRecipientViewController:self didCompleteWithRecipients:recipients];
}

- (void)_handleCancelButton:(id)button
{
  delegate = [(PXPhotoRecipientViewController *)self delegate];
  [delegate photoRecipientViewControllerDidCancel:self];
}

- (void)_dismissContactPickerViewController
{
  contactPickerViewController = [(PXPhotoRecipientViewController *)self contactPickerViewController];
  presentedViewController = [(PXPhotoRecipientViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v4 = presentedViewController;
    presentedViewController2 = [(PXPhotoRecipientViewController *)self presentedViewController];

    if (presentedViewController2 == contactPickerViewController)
    {
      [(PXPhotoRecipientViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  [(PXPhotoRecipientViewController *)self setContactPickerViewController:0];
}

- (void)_presentContactPickerViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:7];
  v5 = MEMORY[0x1E69DD250];
  view = [(PXPhotoRecipientViewController *)self view];
  v7 = [v5 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(view, "semanticContentAttribute")}];

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:v8];
  [popoverPresentationController setDelegate:self];
  [(PXPhotoRecipientViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  [(PXPhotoRecipientViewController *)self setContactPickerViewController:controllerCopy];
}

- (void)setUsedAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = addressesCopy;
  if (self->_usedAddresses != addressesCopy)
  {
    v9 = addressesCopy;
    v6 = [(NSSet *)addressesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSSet *)v9 copy];
      usedAddresses = self->_usedAddresses;
      self->_usedAddresses = v7;

      [(PXComposeRecipientView *)self->_composeRecipientView setUsedAddresses:self->_usedAddresses];
      [(PXRecipientSearchDataSourceManager *)self->_searchDataSourceManager setUsedAddresses:self->_usedAddresses];
      v5 = v9;
    }
  }
}

- (void)setMaxRecipients:(int64_t)recipients
{
  if (self->_maxRecipients != recipients)
  {
    self->_maxRecipients = recipients;
    [(PXComposeRecipientView *)self->_composeRecipientView setMaxRecipients:?];

    [(PXPhotoRecipientViewController *)self _updateAddButton];
  }
}

- (void)setToLabel:(id)label
{
  labelCopy = label;
  v5 = labelCopy;
  if (self->_toLabel != labelCopy)
  {
    v9 = labelCopy;
    v6 = [(NSString *)labelCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      toLabel = self->_toLabel;
      self->_toLabel = v7;

      [(PXComposeRecipientView *)self->_composeRecipientView setLabel:self->_toLabel];
      v5 = v9;
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXPhotoRecipientViewController;
  [(PXPhotoRecipientViewController *)&v5 viewWillAppear:appear];
  composeRecipientView = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [composeRecipientView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PXPhotoRecipientViewController;
  [(PXPhotoRecipientViewController *)&v26 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PXPhotoRecipientViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleAddButton_];
  addButton = self->_addButton;
  self->_addButton = v6;

  navigationItem = [(PXPhotoRecipientViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  v9 = self->_addButton;
  navigationItem2 = [(PXPhotoRecipientViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v9];

  v11 = objc_alloc_init(PXCNComposeRecipientView);
  composeRecipientView = self->_composeRecipientView;
  self->_composeRecipientView = &v11->super;

  [(PXComposeRecipientView *)self->_composeRecipientView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_toLabel)
  {
    [(PXComposeRecipientView *)self->_composeRecipientView setLabel:?];
  }

  else
  {
    v13 = PXLocalizedStringFromTable(@"PXPhotoRecipientToLabelTitle", @"PhotosUICore");
    [(PXComposeRecipientView *)self->_composeRecipientView setLabel:v13];
  }

  [(PXComposeRecipientView *)self->_composeRecipientView setMaxRecipients:[(PXPhotoRecipientViewController *)self maxRecipients]];
  usedAddresses = [(PXPhotoRecipientViewController *)self usedAddresses];
  [(PXComposeRecipientView *)self->_composeRecipientView setUsedAddresses:usedAddresses];

  [(PXComposeRecipientView *)self->_composeRecipientView setDelegate:self];
  initialLocalizedNameToQuery = [(PXPhotoRecipientViewController *)self initialLocalizedNameToQuery];
  [(PXComposeRecipientView *)self->_composeRecipientView setText:initialLocalizedNameToQuery];

  view2 = [(PXPhotoRecipientViewController *)self view];
  [view2 addSubview:self->_composeRecipientView];

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  noContentLabel = self->_noContentLabel;
  self->_noContentLabel = v17;

  [(UILabel *)self->_noContentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_noContentLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_noContentLabel setTextAlignment:1];
  [(UILabel *)self->_noContentLabel setNumberOfLines:0];
  v20 = PXLocalizedStringFromTable(@"PXComposeRecipientSearchNoResultsFound", @"PhotosUICore");
  [(UILabel *)self->_noContentLabel setText:v20];

  view3 = [(PXPhotoRecipientViewController *)self view];
  [view3 addSubview:self->_noContentLabel];

  searchResultsView = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  [searchResultsView setTranslatesAutoresizingMaskIntoConstraints:0];
  view4 = [(PXPhotoRecipientViewController *)self view];
  [view4 addSubview:searchResultsView];

  [(PXPhotoRecipientViewController *)self _updateAddButton];
  view5 = [(PXPhotoRecipientViewController *)self view];
  [view5 setNeedsUpdateConstraints];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelFont];
}

- (void)updateViewConstraints
{
  v53[11] = *MEMORY[0x1E69E9840];
  layoutConstraints = [(PXPhotoRecipientViewController *)self layoutConstraints];

  if (layoutConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    layoutConstraints2 = [(PXPhotoRecipientViewController *)self layoutConstraints];
    [v4 deactivateConstraints:layoutConstraints2];

    [(PXPhotoRecipientViewController *)self setLayoutConstraints:0];
  }

  view = [(PXPhotoRecipientViewController *)self view];
  searchResultsView = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  heightAnchor = [(PXComposeRecipientView *)self->_composeRecipientView heightAnchor];
  [(PXComposeRecipientView *)self->_composeRecipientView intrinsicContentSize];
  v11 = [heightAnchor constraintEqualToConstant:v10];
  recipientViewHeightConstraint = self->_recipientViewHeightConstraint;
  self->_recipientViewHeightConstraint = v11;

  bottomAnchor = [searchResultsView bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  resultsViewBottomConstraint = self->_resultsViewBottomConstraint;
  self->_resultsViewBottomConstraint = v15;

  topAnchor = [(PXComposeRecipientView *)self->_composeRecipientView topAnchor];
  v37 = safeAreaLayoutGuide;
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53[0] = v49;
  leadingAnchor = [(PXComposeRecipientView *)self->_composeRecipientView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[1] = v46;
  trailingAnchor = [(PXComposeRecipientView *)self->_composeRecipientView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17 = self->_recipientViewHeightConstraint;
  v53[2] = v43;
  v53[3] = v17;
  topAnchor3 = [(UILabel *)self->_noContentLabel topAnchor];
  bottomAnchor3 = [(PXComposeRecipientView *)self->_composeRecipientView bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:40.0];
  v53[4] = v38;
  leadingAnchor3 = [(UILabel *)self->_noContentLabel leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v53[5] = v34;
  trailingAnchor3 = [(UILabel *)self->_noContentLabel trailingAnchor];
  v18 = view;
  v42 = view;
  trailingAnchor4 = [view trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v53[6] = v31;
  topAnchor4 = [searchResultsView topAnchor];
  bottomAnchor4 = [(PXComposeRecipientView *)self->_composeRecipientView bottomAnchor];
  v20 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4];
  v53[7] = v20;
  v21 = searchResultsView;
  v39 = searchResultsView;
  leadingAnchor5 = [searchResultsView leadingAnchor];
  leadingAnchor6 = [v18 leadingAnchor];
  v24 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v53[8] = v24;
  trailingAnchor5 = [v21 trailingAnchor];
  trailingAnchor6 = [safeAreaLayoutGuide trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v28 = self->_resultsViewBottomConstraint;
  v53[9] = v27;
  v53[10] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:11];

  [MEMORY[0x1E696ACD8] activateConstraints:v29];
  [(PXPhotoRecipientViewController *)self setLayoutConstraints:v29];
  v52.receiver = self;
  v52.super_class = PXPhotoRecipientViewController;
  [(PXPhotoRecipientViewController *)&v52 updateViewConstraints];
}

- (PXPhotoRecipientViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PXPhotoRecipientViewController;
  v4 = [(PXPhotoRecipientViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PXPhotoRecipientViewController *)v4 _commonInitializationWithVerificationType:0];
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithSearchResultVerificationType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = PXPhotoRecipientViewController;
  v4 = [(PXPhotoRecipientViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(PXPhotoRecipientViewController *)v4 _commonInitializationWithVerificationType:type];
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithInitialLocalizedNameToQuery:(id)query
{
  queryCopy = query;
  v5 = [(PXPhotoRecipientViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [queryCopy copy];
    initialLocalizedNameToQuery = v5->_initialLocalizedNameToQuery;
    v5->_initialLocalizedNameToQuery = v6;
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXPhotoRecipientViewController initWithCoder:]"}];

  abort();
}

- (void)_commonInitializationWithVerificationType:(int64_t)type
{
  v10 = [[PXCNRecipientSearchDataSourceManager alloc] initWithVerificationType:type];
  usedAddresses = [(PXPhotoRecipientViewController *)self usedAddresses];
  [(PXRecipientSearchDataSourceManager *)v10 setUsedAddresses:usedAddresses];

  v5 = [[PXSearchRecipientController alloc] initWithSearchDataSourceManager:v10];
  searchRecipientController = self->_searchRecipientController;
  self->_searchRecipientController = v5;

  [(PXSearchRecipientController *)self->_searchRecipientController setDelegate:self];
  searchDataSourceManager = [(PXSearchRecipientController *)self->_searchRecipientController searchDataSourceManager];
  searchDataSourceManager = self->_searchDataSourceManager;
  self->_searchDataSourceManager = searchDataSourceManager;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

+ (id)recipientPickerViewControllerWithTitle:(id)title toLabel:(id)label usedAddresses:(id)addresses maxRecipients:(int64_t)recipients verificationType:(int64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  addressesCopy = addresses;
  labelCopy = label;
  titleCopy = title;
  v18 = [[PXPhotoRecipientViewController alloc] initWithSearchResultVerificationType:type];
  [(PXPhotoRecipientViewController *)v18 setTitle:titleCopy];

  [(PXPhotoRecipientViewController *)v18 setToLabel:labelCopy];
  [(PXPhotoRecipientViewController *)v18 setUsedAddresses:addressesCopy];

  [(PXPhotoRecipientViewController *)v18 setMaxRecipients:recipients];
  [(PXPhotoRecipientViewController *)v18 setDelegate:delegateCopy];

  v19 = [self _contactViewControllerToPresentForRecipientViewController:v18];

  return v19;
}

+ (id)_contactViewControllerToPresentForRecipientViewController:(id)controller
{
  v10[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D120]);
    [v4 setMode:1];
    [v4 setDelegate:controllerCopy];
    v5 = *MEMORY[0x1E695C208];
    v10[0] = *MEMORY[0x1E695C330];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    [v4 setDisplayedPropertyKeys:v6];
    [v4 setAllowsEditing:1];
    v7 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_AddPeople_Title");
    [v4 setPrompt:v7];

    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
    [v4 setPredicateForSelectionOfContact:v8];
    [controllerCopy setContactPickerViewController:v4];
    [controllerCopy setContactPickerPresentedExternally:1];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:controllerCopy];

    [v4 setModalPresentationStyle:2];
  }

  return v4;
}

@end