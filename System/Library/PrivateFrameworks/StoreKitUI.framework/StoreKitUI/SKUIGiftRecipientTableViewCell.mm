@interface SKUIGiftRecipientTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)recipientAddresses;
- (NSString)label;
- (SKUIGiftRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_contactStore;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (void)_resetSearchController;
- (void)_sendDidChangeRecipients;
- (void)_sendDidUpdateSearchController;
- (void)_sendDismissContactPicker;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dealloc;
- (void)layoutSubviews;
- (void)presentPeoplePickerPopover:(id)popover animated:(BOOL)animated;
- (void)presentSearchResultsPopover:(id)popover animated:(BOOL)animated;
- (void)recipientViewDidResignFirstResponder:(id)responder;
- (void)searchController:(id)controller didSelectRecipient:(id)recipient;
- (void)setAttributedPlaceholder:(id)placeholder;
@end

@implementation SKUIGiftRecipientTableViewCell

- (SKUIGiftRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftRecipientTableViewCell initWithStyle:reuseIdentifier:];
  }

  v44.receiver = self;
  v44.super_class = SKUIGiftRecipientTableViewCell;
  v7 = [(SKUIGiftRecipientTableViewCell *)&v44 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = SKUIContactsAutocompleteUIFramework();
    v9 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Cncomposerecip_0.isa, v8));
    recipientView = v7->_recipientView;
    v7->_recipientView = v9;

    labelView = [(CNComposeRecipientTextView *)v7->_recipientView labelView];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [labelView setFont:v12];

    labelView2 = [(CNComposeRecipientTextView *)v7->_recipientView labelView];
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [labelView2 setTextColor:_labelColor];

    labelView3 = [(CNComposeRecipientTextView *)v7->_recipientView labelView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [labelView3 setBackgroundColor:clearColor];

    v17 = v7->_recipientView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(CNComposeRecipientTextView *)v17 setBackgroundColor:clearColor2];

    [(CNComposeRecipientTextView *)v7->_recipientView setDelegate:v7];
    v19 = v7->_recipientView;
    labelView4 = [(CNComposeRecipientTextView *)v19 labelView];
    font = [labelView4 font];
    [(CNComposeRecipientTextView *)v19 setBaseFont:font];

    v22 = *MEMORY[0x277D76840];
    [(CNComposeRecipientTextView *)v7->_recipientView setMaximumContentSizeCategory:*MEMORY[0x277D76840]];
    [(CNComposeRecipientTextView *)v7->_recipientView setMinimumContentSizeCategory:v22];
    textView = [(CNComposeRecipientTextView *)v7->_recipientView textView];
    textContainer = [textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(CNComposeRecipientTextView *)v7->_recipientView subviews];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v43 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v40 + 1) + 8 * i);
          [v30 frame];
          if (v31 <= 1.0)
          {
            [v30 setHidden:1];
            goto LABEL_16;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    [(CNComposeRecipientTextView *)v7->_recipientView sizeToFit];
    contentView = [(SKUIGiftRecipientTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_recipientView];

    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v7->_topBorderView;
    v7->_topBorderView = v33;

    v35 = v7->_topBorderView;
    tableSeparatorColor = [MEMORY[0x277D75348] tableSeparatorColor];
    [(UIView *)v35 setBackgroundColor:tableSeparatorColor];

    contentView2 = [(SKUIGiftRecipientTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_topBorderView];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v7->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;

    [(SKUIGiftRecipientTableViewCell *)v7 setDidLayoutSubviews:0];
  }

  return v7;
}

- (void)dealloc
{
  [(CNContactPickerViewController *)self->_contactPickerController setDelegate:0];
  [(CNComposeRecipientTextView *)self->_recipientView setDelegate:0];
  [(SKUIGiftContactSearchController *)self->_searchController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIGiftRecipientTableViewCell;
  [(SKUIGiftRecipientTableViewCell *)&v3 dealloc];
}

- (NSString)label
{
  labelView = [(CNComposeRecipientTextView *)self->_recipientView labelView];
  text = [labelView text];

  return text;
}

- (void)presentPeoplePickerPopover:(id)popover animated:(BOOL)animated
{
  popoverCopy = popover;
  [(SKUIGiftRecipientTableViewCell *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [(SKUIGiftRecipientTableViewCell *)self superview];
  [popoverCopy presentPopoverFromRect:superview inView:1 permittedArrowDirections:1 animated:{v7, v9, v11, v13}];
}

- (void)presentSearchResultsPopover:(id)popover animated:(BOOL)animated
{
  animatedCopy = animated;
  recipientView = self->_recipientView;
  popoverCopy = popover;
  textView = [(CNComposeRecipientTextView *)recipientView textView];
  [textView bounds];
  [popoverCopy presentPopoverFromRect:textView inView:1 permittedArrowDirections:animatedCopy animated:?];
}

- (NSArray)recipientAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  recipients = [(CNComposeRecipientTextView *)self->_recipientView recipients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        address = [*(*(&v11 + 1) + 8 * i) address];
        if ([address length])
        {
          [array addObject:address];
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setAttributedPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  attributedPlaceholder = [(SKUIGiftRecipientTableViewCell *)self attributedPlaceholder];
  if (attributedPlaceholder != placeholderCopy && ([placeholderCopy isEqual:attributedPlaceholder] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderCopy)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_placeholderLabel;
        textView = [(CNComposeRecipientTextView *)self->_recipientView textView];
        if ([textView isFirstResponder])
        {
          hasContent = 1;
        }

        else
        {
          hasContent = [(CNComposeRecipientTextView *)self->_recipientView hasContent];
        }

        [(UILabel *)v10 setHidden:hasContent];

        contentView = [(SKUIGiftRecipientTableViewCell *)self contentView];
        [contentView insertSubview:self->_placeholderLabel belowSubview:self->_recipientView];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setAttributedText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      v13 = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SKUIGiftRecipientTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SKUIGiftRecipientTableViewCell;
  [(SKUIGiftRecipientTableViewCell *)&v38 layoutSubviews];
  contentView = [(SKUIGiftRecipientTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CNComposeRecipientTextView *)self->_recipientView setFrame:v5, v7, v9, v11];
  if ([(SKUIGiftRecipientTableViewCell *)self didLayoutSubviews])
  {
    [(CNComposeRecipientTextView *)self->_recipientView reflow];
  }

  [(CNComposeRecipientTextView *)self->_recipientView layoutIfNeeded];
  if (self->_placeholderLabel)
  {
    labelView = [(CNComposeRecipientTextView *)self->_recipientView labelView];
    [labelView frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    superview = [labelView superview];
    [(SKUIGiftRecipientTableViewCell *)self convertRect:superview fromView:v14, v16, v18, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UILabel *)self->_placeholderLabel frame];
    v31 = v30;
    if ([(SKUIGiftRecipientTableViewCell *)self leftToRight])
    {
      v39.origin.x = v23;
      v39.origin.y = v25;
      v39.size.width = v27;
      v39.size.height = v29;
      v32 = CGRectGetMaxX(v39) + 4.0;
      v33 = v9 + -15.0 - v32;
    }

    else
    {
      v33 = v9 + -15.0 + -4.0 + v23 - v9;
      v32 = 15.0;
    }

    v34 = (v29 - v31) * 0.5;
    [(UILabel *)self->_placeholderLabel setFrame:v32, v25 + floorf(v34), v33, v31];
  }

  topBorderView = self->_topBorderView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(UIView *)topBorderView setFrame:0.0, 0.0, v9, 1.0 / v37];

  [(SKUIGiftRecipientTableViewCell *)self setDidLayoutSubviews:1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CNComposeRecipientTextView *)self->_recipientView frame:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  v6 = SKUIContactsAutocompleteUIFramework();
  v7 = objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Cncomposerecip_1.isa, v6));
  contact = [propertyCopy contact];
  value = [propertyCopy value];

  v10 = [v7 initWithContact:contact address:value kind:0];
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:v10];
  [(SKUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  viewCopy = view;
  [viewCopy frame];
  v6 = viewCopy;
  if (height != v7)
  {
    [viewCopy setFrame:?];
    superview = [(SKUIGiftRecipientTableViewCell *)self superview];
    if (superview)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v8Superview = [superview superview];

        superview = v8Superview;
      }

      while (v8Superview);
    }

    delegate = [superview delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate tableView:superview giftRecipientCellDidChangeSize:self];
    }

    v6 = viewCopy;
  }
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = SKUIContactsAutocompleteUIFramework();
  v6 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Cncomposerecip_1.isa v5))];

  return v6;
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [view hasContent]);

  [(SKUIGiftRecipientTableViewCell *)self setNeedsLayout];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  viewCopy = view;
  addressCopy = address;
  [viewCopy clearText];
  if ([addressCopy length])
  {
    [viewCopy addAddress:addressCopy];
  }

  [(SKUIGiftRecipientTableViewCell *)self _resetSearchController];
  [(SKUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  if (!self->_searchController)
  {
    v7 = objc_alloc_init(SKUIGiftContactSearchController);
    searchController = self->_searchController;
    self->_searchController = v7;

    [(SKUIGiftContactSearchController *)self->_searchController setDelegate:self];
  }

  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [viewCopy hasContent]);
  [(SKUIGiftContactSearchController *)self->_searchController searchForText:changeCopy];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  _contactStore = [(SKUIGiftRecipientTableViewCell *)self _contactStore];
  if (_contactStore)
  {
    v4 = _contactStore;
    [_contactStore requestAccessForEntityType:0 completionHandler:&__block_literal_global_53];
    _contactStore = v4;
  }
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  [(SKUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];

  [(SKUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v17[1] = *MEMORY[0x277D85DE8];
  superview = [(SKUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4Superview = [superview superview];

      superview = v4Superview;
    }

    while (v4Superview);
  }

  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    contactPickerController = self->_contactPickerController;
    if (!contactPickerController)
    {
      v8 = SKUIContactsUIFramework();
      v9 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Cncontactpicke.isa, v8));
      v10 = self->_contactPickerController;
      self->_contactPickerController = v9;

      [(CNContactPickerViewController *)self->_contactPickerController setDelegate:self];
      v11 = SKUIContactsFramework();
      v12 = SKUIWeakLinkedSymbolForString("CNContactEmailAddressesKey", v11);
      v13 = self->_contactPickerController;
      v17[0] = *v12;
      v14 = MEMORY[0x277CBEA60];
      v15 = v17[0];
      v16 = [v14 arrayWithObjects:v17 count:1];
      [(CNContactPickerViewController *)v13 setDisplayedPropertyKeys:v16];

      contactPickerController = self->_contactPickerController;
    }

    [delegate tableView:superview giftRecipientCell:self presentContactPicker:{contactPickerController, v17[0]}];
  }
}

- (void)recipientViewDidResignFirstResponder:(id)responder
{
  [(UILabel *)self->_placeholderLabel setHidden:[(CNComposeRecipientTextView *)self->_recipientView hasContent]];

  [(SKUIGiftRecipientTableViewCell *)self _resetSearchController];
}

- (void)searchController:(id)controller didSelectRecipient:(id)recipient
{
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:recipient];
  [(CNComposeRecipientTextView *)self->_recipientView clearText];
  [(SKUIGiftRecipientTableViewCell *)self _resetSearchController];

  [(SKUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (id)_contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = SKUIContactsFramework();
    v5 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Cncontactstore.isa, v4));
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)_resetSearchController
{
  searchController = self->_searchController;
  if (searchController)
  {
    [(SKUIGiftContactSearchController *)searchController resetSearch];

    [(SKUIGiftRecipientTableViewCell *)self _sendDidUpdateSearchController];
  }
}

- (void)_sendDidChangeRecipients
{
  superview = [(SKUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCellDidChangeRecipients:self];
  }
}

- (void)_sendDidUpdateSearchController
{
  superview = [(SKUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCell:self didUpdateSearchController:self->_searchController];
  }
}

- (void)_sendDismissContactPicker
{
  superview = [(SKUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCell:self dismissContactPicker:self->_contactPickerController];
  }
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftRecipientTableViewCell initWithStyle:reuseIdentifier:]";
}

@end