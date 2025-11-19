@interface PXPhotoRecipientViewController
+ (id)_contactViewControllerToPresentForRecipientViewController:(id)a3;
+ (id)recipientPickerViewControllerWithTitle:(id)a3 toLabel:(id)a4 usedAddresses:(id)a5 maxRecipients:(int64_t)a6 verificationType:(int64_t)a7 delegate:(id)a8;
- (PXPhotoRecipientViewController)initWithCoder:(id)a3;
- (PXPhotoRecipientViewController)initWithInitialLocalizedNameToQuery:(id)a3;
- (PXPhotoRecipientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPhotoRecipientViewController)initWithSearchResultVerificationType:(int64_t)a3;
- (PXPhotoRecipientViewControllerDelegate)delegate;
- (void)_commonInitializationWithVerificationType:(int64_t)a3;
- (void)_contactPicker:(id)a3 didSelectComposeRecipient:(id)a4;
- (void)_dismissContactPickerViewController;
- (void)_handleAddButton:(id)a3;
- (void)_handleCancelButton:(id)a3;
- (void)_keyboardDidShow:(id)a3;
- (void)_presentContactPickerViewController:(id)a3;
- (void)_updateAddButton;
- (void)_updateNoContentLabelFont;
- (void)_updateNoContentLabelVisibility;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)searchRecipientController:(id)a3 didSelectRecipient:(id)a4;
- (void)setMaxRecipients:(int64_t)a3;
- (void)setToLabel:(id)a3;
- (void)setUsedAddresses:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)searchRecipientController:(id)a3 didSelectRecipient:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"recipient"}];
  }

  v6 = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [v6 addRecipient:v8];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  [(PXPhotoRecipientViewController *)self setContactPickerViewController:0];
  [v4 setDelegate:0];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v8 = a3;
  v4 = [v8 presentedViewController];
  v5 = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (v4 == v5)
  {
    v6 = [(PXPhotoRecipientViewController *)self composeRecipientView];
    v7 = [v6 addButton];

    [v8 setSourceView:v7];
    [v7 bounds];
    [v8 setSourceRect:?];
  }
}

- (void)_contactPicker:(id)a3 didSelectComposeRecipient:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (v9 == v8)
  {
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"picker == self.contactPickerViewController"}];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v10 = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [v10 addRecipient:v7];

  if ([(PXPhotoRecipientViewController *)self contactPickerPresentedExternally])
  {
    v11 = [(PXPhotoRecipientViewController *)self delegate];
    v14[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v11 photoRecipientViewController:self didCompleteWithRecipients:v12];
  }

LABEL_5:
  [(PXPhotoRecipientViewController *)self _dismissContactPickerViewController];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [v17 contact];
  v8 = [v17 key];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695C208]];

  if (v9)
  {
    v10 = [v17 value];
    v11 = 0;
  }

  else
  {
    v12 = [v17 key];
    v13 = [v12 isEqualToString:*MEMORY[0x1E695C330]];

    if (v13)
    {
      v14 = [v17 value];
      v10 = [v14 stringValue];

      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 5;
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v7 address:v10 kind:v11];
  v16 = [[PXCNComposeRecipient alloc] initWithRecipient:v15];
  [(PXPhotoRecipientViewController *)self _contactPicker:v6 didSelectComposeRecipient:v16];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = PXCNComposeRecipientWithContact(a4);
  [(PXPhotoRecipientViewController *)self _contactPicker:v6 didSelectComposeRecipient:v7];
}

- (void)contactPickerDidCancel:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotoRecipientViewController *)self contactPickerViewController];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"picker == self.contactPickerViewController"}];
  }

  [(PXPhotoRecipientViewController *)self _dismissContactPickerViewController];
}

- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4
{
  v4 = [(PXPhotoRecipientViewController *)self view:a3];
  [v4 setNeedsUpdateConstraints];
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v5 = a3;
  [(PXPhotoRecipientViewController *)self _updateAddButton];
  v6 = [(PXPhotoRecipientViewController *)self maxRecipients];
  v7 = [v5 recipients];

  v8 = [v7 count];
  if (v6 == v8)
  {
    v11 = [(PXPhotoRecipientViewController *)self delegate];
    v9 = [(PXPhotoRecipientViewController *)self composeRecipientView];
    v10 = [v9 recipients];
    [v11 photoRecipientViewController:self didCompleteWithRecipients:v10];
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
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
  v7 = [(PXPhotoRecipientViewController *)self initialLocalizedNameToQuery];
  if (-[PXPhotoRecipientViewController maxRecipients](self, "maxRecipients") == 1 && [v7 length])
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

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v5 = [(PXPhotoRecipientViewController *)self searchDataSourceManager:a3];
  [v5 setQueryString:&stru_1F1741150];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelVisibility];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotoRecipientViewController *)self searchDataSourceManager];
  [v6 setQueryString:v5];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelVisibility];
}

- (void)_keyboardDidShow:(id)a3
{
  v4 = a3;
  v25 = [(PXPhotoRecipientViewController *)self view];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v25 convertRect:0 fromView:{v8, v10, v12, v14}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v25 frame];
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  v28 = CGRectIntersection(v27, v29);
  height = v28.size.height;
  [v25 safeAreaInsets];
  [(NSLayoutConstraint *)self->_resultsViewBottomConstraint setConstant:v24 - height];
}

- (void)_updateNoContentLabelVisibility
{
  v3 = [(PXPhotoRecipientViewController *)self searchDataSourceManager];
  v4 = [v3 queryString];
  v5 = [v4 length];

  v12 = [(PXPhotoRecipientViewController *)self searchRecipientController];
  v6 = [v12 searchState];
  v7 = [v12 numberOfSearchRecipients];
  if (v5)
  {
    v8 = v6 == 1;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && v7 == 0;
  v11 = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  [v11 setHidden:v10];

  [(UILabel *)self->_noContentLabel setHidden:v10 ^ 1];
}

- (void)_updateAddButton
{
  v3 = [(PXPhotoRecipientViewController *)self composeRecipientView];
  v4 = [v3 recipients];
  v5 = [v4 count] != 0;

  [(UIBarButtonItem *)self->_addButton setEnabled:v5];
  if ([(PXPhotoRecipientViewController *)self maxRecipients]== 1)
  {
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIBarButtonItem *)self->_addButton setTintColor:v7];
  }

  else
  {
    addButton = self->_addButton;

    [(UIBarButtonItem *)addButton setTintColor:0];
  }
}

- (void)_handleAddButton:(id)a3
{
  v6 = [(PXPhotoRecipientViewController *)self delegate];
  v4 = [(PXPhotoRecipientViewController *)self composeRecipientView];
  v5 = [v4 recipients];
  [v6 photoRecipientViewController:self didCompleteWithRecipients:v5];
}

- (void)_handleCancelButton:(id)a3
{
  v4 = [(PXPhotoRecipientViewController *)self delegate];
  [v4 photoRecipientViewControllerDidCancel:self];
}

- (void)_dismissContactPickerViewController
{
  v6 = [(PXPhotoRecipientViewController *)self contactPickerViewController];
  v3 = [(PXPhotoRecipientViewController *)self presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXPhotoRecipientViewController *)self presentedViewController];

    if (v5 == v6)
    {
      [(PXPhotoRecipientViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  [(PXPhotoRecipientViewController *)self setContactPickerViewController:0];
}

- (void)_presentContactPickerViewController:(id)a3
{
  v4 = a3;
  [v4 setModalPresentationStyle:7];
  v5 = MEMORY[0x1E69DD250];
  v6 = [(PXPhotoRecipientViewController *)self view];
  v7 = [v5 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v6, "semanticContentAttribute")}];

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  v9 = [v4 popoverPresentationController];
  [v9 setPermittedArrowDirections:v8];
  [v9 setDelegate:self];
  [(PXPhotoRecipientViewController *)self presentViewController:v4 animated:1 completion:0];
  [(PXPhotoRecipientViewController *)self setContactPickerViewController:v4];
}

- (void)setUsedAddresses:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_usedAddresses != v4)
  {
    v9 = v4;
    v6 = [(NSSet *)v4 isEqual:?];
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

- (void)setMaxRecipients:(int64_t)a3
{
  if (self->_maxRecipients != a3)
  {
    self->_maxRecipients = a3;
    [(PXComposeRecipientView *)self->_composeRecipientView setMaxRecipients:?];

    [(PXPhotoRecipientViewController *)self _updateAddButton];
  }
}

- (void)setToLabel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_toLabel != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPhotoRecipientViewController;
  [(PXPhotoRecipientViewController *)&v5 viewWillAppear:a3];
  v4 = [(PXPhotoRecipientViewController *)self composeRecipientView];
  [v4 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PXPhotoRecipientViewController;
  [(PXPhotoRecipientViewController *)&v26 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(PXPhotoRecipientViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleAddButton_];
  addButton = self->_addButton;
  self->_addButton = v6;

  v8 = [(PXPhotoRecipientViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v5];

  v9 = self->_addButton;
  v10 = [(PXPhotoRecipientViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

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
  v14 = [(PXPhotoRecipientViewController *)self usedAddresses];
  [(PXComposeRecipientView *)self->_composeRecipientView setUsedAddresses:v14];

  [(PXComposeRecipientView *)self->_composeRecipientView setDelegate:self];
  v15 = [(PXPhotoRecipientViewController *)self initialLocalizedNameToQuery];
  [(PXComposeRecipientView *)self->_composeRecipientView setText:v15];

  v16 = [(PXPhotoRecipientViewController *)self view];
  [v16 addSubview:self->_composeRecipientView];

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  noContentLabel = self->_noContentLabel;
  self->_noContentLabel = v17;

  [(UILabel *)self->_noContentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_noContentLabel setTextColor:v19];

  [(UILabel *)self->_noContentLabel setTextAlignment:1];
  [(UILabel *)self->_noContentLabel setNumberOfLines:0];
  v20 = PXLocalizedStringFromTable(@"PXComposeRecipientSearchNoResultsFound", @"PhotosUICore");
  [(UILabel *)self->_noContentLabel setText:v20];

  v21 = [(PXPhotoRecipientViewController *)self view];
  [v21 addSubview:self->_noContentLabel];

  v22 = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(PXPhotoRecipientViewController *)self view];
  [v23 addSubview:v22];

  [(PXPhotoRecipientViewController *)self _updateAddButton];
  v24 = [(PXPhotoRecipientViewController *)self view];
  [v24 setNeedsUpdateConstraints];

  v25 = [MEMORY[0x1E696AD88] defaultCenter];
  [v25 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(PXPhotoRecipientViewController *)self _updateNoContentLabelFont];
}

- (void)updateViewConstraints
{
  v53[11] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoRecipientViewController *)self layoutConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(PXPhotoRecipientViewController *)self layoutConstraints];
    [v4 deactivateConstraints:v5];

    [(PXPhotoRecipientViewController *)self setLayoutConstraints:0];
  }

  v6 = [(PXPhotoRecipientViewController *)self view];
  v7 = [(PXSearchRecipientController *)self->_searchRecipientController searchResultsView];
  v8 = [v6 safeAreaLayoutGuide];
  v9 = [(PXComposeRecipientView *)self->_composeRecipientView heightAnchor];
  [(PXComposeRecipientView *)self->_composeRecipientView intrinsicContentSize];
  v11 = [v9 constraintEqualToConstant:v10];
  recipientViewHeightConstraint = self->_recipientViewHeightConstraint;
  self->_recipientViewHeightConstraint = v11;

  v13 = [v7 bottomAnchor];
  v14 = [v8 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  resultsViewBottomConstraint = self->_resultsViewBottomConstraint;
  self->_resultsViewBottomConstraint = v15;

  v51 = [(PXComposeRecipientView *)self->_composeRecipientView topAnchor];
  v37 = v8;
  v50 = [v8 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v53[0] = v49;
  v48 = [(PXComposeRecipientView *)self->_composeRecipientView leadingAnchor];
  v47 = [v6 leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v53[1] = v46;
  v45 = [(PXComposeRecipientView *)self->_composeRecipientView trailingAnchor];
  v44 = [v6 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v17 = self->_recipientViewHeightConstraint;
  v53[2] = v43;
  v53[3] = v17;
  v41 = [(UILabel *)self->_noContentLabel topAnchor];
  v40 = [(PXComposeRecipientView *)self->_composeRecipientView bottomAnchor];
  v38 = [v41 constraintEqualToAnchor:v40 constant:40.0];
  v53[4] = v38;
  v36 = [(UILabel *)self->_noContentLabel leadingAnchor];
  v35 = [v6 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:20.0];
  v53[5] = v34;
  v33 = [(UILabel *)self->_noContentLabel trailingAnchor];
  v18 = v6;
  v42 = v6;
  v32 = [v6 trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:-20.0];
  v53[6] = v31;
  v30 = [v7 topAnchor];
  v19 = [(PXComposeRecipientView *)self->_composeRecipientView bottomAnchor];
  v20 = [v30 constraintEqualToAnchor:v19];
  v53[7] = v20;
  v21 = v7;
  v39 = v7;
  v22 = [v7 leadingAnchor];
  v23 = [v18 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v53[8] = v24;
  v25 = [v21 trailingAnchor];
  v26 = [v8 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
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

- (PXPhotoRecipientViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXPhotoRecipientViewController;
  v4 = [(PXPhotoRecipientViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PXPhotoRecipientViewController *)v4 _commonInitializationWithVerificationType:0];
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithSearchResultVerificationType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXPhotoRecipientViewController;
  v4 = [(PXPhotoRecipientViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(PXPhotoRecipientViewController *)v4 _commonInitializationWithVerificationType:a3];
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithInitialLocalizedNameToQuery:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoRecipientViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    initialLocalizedNameToQuery = v5->_initialLocalizedNameToQuery;
    v5->_initialLocalizedNameToQuery = v6;
  }

  return v5;
}

- (PXPhotoRecipientViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoRecipientViewController.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXPhotoRecipientViewController initWithCoder:]"}];

  abort();
}

- (void)_commonInitializationWithVerificationType:(int64_t)a3
{
  v10 = [[PXCNRecipientSearchDataSourceManager alloc] initWithVerificationType:a3];
  v4 = [(PXPhotoRecipientViewController *)self usedAddresses];
  [(PXRecipientSearchDataSourceManager *)v10 setUsedAddresses:v4];

  v5 = [[PXSearchRecipientController alloc] initWithSearchDataSourceManager:v10];
  searchRecipientController = self->_searchRecipientController;
  self->_searchRecipientController = v5;

  [(PXSearchRecipientController *)self->_searchRecipientController setDelegate:self];
  v7 = [(PXSearchRecipientController *)self->_searchRecipientController searchDataSourceManager];
  searchDataSourceManager = self->_searchDataSourceManager;
  self->_searchDataSourceManager = v7;

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
  [v9 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

+ (id)recipientPickerViewControllerWithTitle:(id)a3 toLabel:(id)a4 usedAddresses:(id)a5 maxRecipients:(int64_t)a6 verificationType:(int64_t)a7 delegate:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[PXPhotoRecipientViewController alloc] initWithSearchResultVerificationType:a7];
  [(PXPhotoRecipientViewController *)v18 setTitle:v17];

  [(PXPhotoRecipientViewController *)v18 setToLabel:v16];
  [(PXPhotoRecipientViewController *)v18 setUsedAddresses:v15];

  [(PXPhotoRecipientViewController *)v18 setMaxRecipients:a6];
  [(PXPhotoRecipientViewController *)v18 setDelegate:v14];

  v19 = [a1 _contactViewControllerToPresentForRecipientViewController:v18];

  return v19;
}

+ (id)_contactViewControllerToPresentForRecipientViewController:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D120]);
    [v4 setMode:1];
    [v4 setDelegate:v3];
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
    [v3 setContactPickerViewController:v4];
    [v3 setContactPickerPresentedExternally:1];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];

    [v4 setModalPresentationStyle:2];
  }

  return v4;
}

@end