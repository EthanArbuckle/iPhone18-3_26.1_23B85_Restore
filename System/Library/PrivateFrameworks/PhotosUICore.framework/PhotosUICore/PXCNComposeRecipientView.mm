@interface PXCNComposeRecipientView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXCNComposeRecipientView)init;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)text;
- (void)addRecipient:(id)recipient;
- (void)addRecipients:(id)recipients;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)layoutSubviews;
- (void)removeRecipient:(id)recipient;
- (void)removeRecipients:(id)recipients;
- (void)setText:(id)text;
@end

@implementation PXCNComposeRecipientView

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = [PXRecipientTransportUtilities px_recipientKindFromString:addressCopy];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 5;
  }

  v7 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:0 address:addressCopy kind:v6];

  return v7;
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  v7 = [[PXCNComposeRecipient alloc] initWithRecipient:recipientCopy];

  [(NSMutableArray *)self->_internalRecipients removeObject:v7];
  if (self->super._delegateRespondsTo.didRemoveRecipient)
  {
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientView:self didRemoveRecipient:v7];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  v7 = [[PXCNComposeRecipient alloc] initWithRecipient:recipientCopy];

  if (v7)
  {
    [(NSMutableArray *)self->_internalRecipients addObject:v7];
    if (self->super._delegateRespondsTo.didAddRecipient)
    {
      delegate = [(PXComposeRecipientView *)self delegate];
      [delegate composeRecipientView:self didAddRecipient:v7];
    }
  }
}

- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom
{
  if (self->super._delegateRespondsTo.disambiguateRecipient)
  {
    recipient = [atom recipient];
    v6 = [[PXCNComposeRecipient alloc] initWithRecipient:recipient];
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientView:self disambiguateRecipient:v6];
  }
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  if (self->super._delegateRespondsTo.didFinishPickingRecipient)
  {
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientViewDidFinishPickingRecipient:self];
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  if (self->super._delegateRespondsTo.requestAddRecipient)
  {
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientViewRequestAddRecipient:self];
  }
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  self->_preferredSize = size;
  [(PXCNComposeRecipientView *)self invalidateIntrinsicContentSize];
  if (self->super._delegateRespondsTo.didChangeSize)
  {
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientView:self didChangeSize:{width, height}];
  }
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  viewCopy = view;
  addressCopy = address;
  if ([addressCopy length] && +[PXRecipientTransportUtilities px_recipientKindFromString:](PXRecipientTransportUtilities, "px_recipientKindFromString:", addressCopy))
  {
    [viewCopy clearText];
    v7 = [(PXCNComposeRecipientView *)self composeRecipientView:viewCopy composeRecipientForAddress:addressCopy];
    [viewCopy addRecipient:v7];
    if (self->super._delegateRespondsTo.didFinishEnteringAddress)
    {
      delegate = [(PXComposeRecipientView *)self delegate];
      [delegate composeRecipientView:self didFinishEnteringAddress:addressCopy];
    }
  }
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  if (self->super._delegateRespondsTo.textDidChange)
  {
    changeCopy = change;
    delegate = [(PXComposeRecipientView *)self delegate];
    [delegate composeRecipientView:self textDidChange:changeCopy];
  }
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = PXCNComposeRecipientView;
  [(PXCNComposeRecipientView *)&v6 resignFirstResponder];
  firstResponder = [(PXCNComposeRecipientView *)self firstResponder];
  resignFirstResponder = [firstResponder resignFirstResponder];

  return resignFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  v4.receiver = self;
  v4.super_class = PXCNComposeRecipientView;
  [(PXCNComposeRecipientView *)&v4 becomeFirstResponder];
  return [(CNComposeRecipientTextView *)self->_recipientTextView becomeFirstResponder];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PXCNComposeRecipientView *)self layoutIfNeeded:fits.width];
  height = self->_preferredSize.height;
  v6 = width;
  result.height = height;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)removeRecipients:(id)recipients
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [recipients copy];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PXCNComposeRecipientView *)self removeRecipient:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addRecipients:(id)recipients
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [recipients copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = PXCNComposeRecipientWithRecipient(*(*(&v10 + 1) + 8 * v8));
        if (v9)
        {
          [(PXCNComposeRecipientView *)self addRecipient:v9, v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (recipientCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [recipientCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:118 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"recipient", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:118 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"recipient", v9}];
  }

LABEL_3:
  recipientTextView = self->_recipientTextView;
  recipient = [recipientCopy recipient];
  [(CNComposeRecipientTextView *)recipientTextView removeRecipient:recipient];

  [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
  [(CNComposeRecipientTextView *)self->_recipientTextView reflow];
}

- (void)addRecipient:(id)recipient
{
  v21 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (recipientCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [recipientCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"recipient", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"recipient", v16}];
  }

LABEL_3:
  recipient = [recipientCopy recipient];
  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v8 = PXComposeRecipientsContainsComposeRecipient(recipients, recipient);

  if (v8)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = recipient;
      v10 = "Ignored attempt to add a recipient again: %@";
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else
  {
    usedAddresses = [(PXComposeRecipientView *)self usedAddresses];
    address = [recipient address];
    v13 = [usedAddresses containsObject:address];

    if (!v13)
    {
      [(CNComposeRecipientTextView *)self->_recipientTextView addRecipient:recipient];
      [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
      [(CNComposeRecipientTextView *)self->_recipientTextView reflow];
      goto LABEL_12;
    }

    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = recipient;
      v10 = "Ignored attempt to add a used recipient: %@";
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (id)text
{
  textView = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  text = [textView text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  textView = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  text = [textView text];

  if (text != textCopy && ([textCopy isEqualToString:text] & 1) == 0)
  {
    textView2 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
    [textView2 setText:textCopy];

    if (self->super._delegateRespondsTo.textDidChange)
    {
      delegate = [(PXComposeRecipientView *)self delegate];
      textView3 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
      text2 = [textView3 text];
      [delegate composeRecipientView:self textDidChange:text2];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXCNComposeRecipientView;
  [(PXCNComposeRecipientView *)&v3 layoutSubviews];
  [(PXCNComposeRecipientView *)self bounds];
  [(CNComposeRecipientTextView *)self->_recipientTextView setFrame:?];
}

- (PXCNComposeRecipientView)init
{
  v11.receiver = self;
  v11.super_class = PXCNComposeRecipientView;
  v2 = [(PXComposeRecipientView *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6996428]);
    recipientTextView = v2->_recipientTextView;
    v2->_recipientTextView = v3;

    [(CNComposeRecipientTextView *)v2->_recipientTextView setDelegate:v2];
    [(PXCNComposeRecipientView *)v2 addSubview:v2->_recipientTextView];
    [(CNComposeRecipientTextView *)v2->_recipientTextView intrinsicContentSize];
    v6 = v5;
    [MEMORY[0x1E6996428] preferredHeight];
    v2->_preferredSize.width = v6;
    v2->_preferredSize.height = v7;
    array = [MEMORY[0x1E695DF70] array];
    internalRecipients = v2->_internalRecipients;
    v2->_internalRecipients = array;
  }

  return v2;
}

@end