@interface PXCNComposeRecipientView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCNComposeRecipientView)init;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)text;
- (void)addRecipient:(id)a3;
- (void)addRecipients:(id)a3;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)layoutSubviews;
- (void)removeRecipient:(id)a3;
- (void)removeRecipients:(id)a3;
- (void)setText:(id)a3;
@end

@implementation PXCNComposeRecipientView

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = [PXRecipientTransportUtilities px_recipientKindFromString:v4];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 5;
  }

  v7 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:0 address:v4 kind:v6];

  return v7;
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v5 = a4;
  v7 = [[PXCNComposeRecipient alloc] initWithRecipient:v5];

  [(NSMutableArray *)self->_internalRecipients removeObject:v7];
  if (self->super._delegateRespondsTo.didRemoveRecipient)
  {
    v6 = [(PXComposeRecipientView *)self delegate];
    [v6 composeRecipientView:self didRemoveRecipient:v7];
  }
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v5 = a4;
  v7 = [[PXCNComposeRecipient alloc] initWithRecipient:v5];

  if (v7)
  {
    [(NSMutableArray *)self->_internalRecipients addObject:v7];
    if (self->super._delegateRespondsTo.didAddRecipient)
    {
      v6 = [(PXComposeRecipientView *)self delegate];
      [v6 composeRecipientView:self didAddRecipient:v7];
    }
  }
}

- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4
{
  if (self->super._delegateRespondsTo.disambiguateRecipient)
  {
    v8 = [a4 recipient];
    v6 = [[PXCNComposeRecipient alloc] initWithRecipient:v8];
    v7 = [(PXComposeRecipientView *)self delegate];
    [v7 composeRecipientView:self disambiguateRecipient:v6];
  }
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  if (self->super._delegateRespondsTo.didFinishPickingRecipient)
  {
    v5 = [(PXComposeRecipientView *)self delegate];
    [v5 composeRecipientViewDidFinishPickingRecipient:self];
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  if (self->super._delegateRespondsTo.requestAddRecipient)
  {
    v5 = [(PXComposeRecipientView *)self delegate];
    [v5 composeRecipientViewRequestAddRecipient:self];
  }
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  self->_preferredSize = a4;
  [(PXCNComposeRecipientView *)self invalidateIntrinsicContentSize];
  if (self->super._delegateRespondsTo.didChangeSize)
  {
    v7 = [(PXComposeRecipientView *)self delegate];
    [v7 composeRecipientView:self didChangeSize:{width, height}];
  }
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 length] && +[PXRecipientTransportUtilities px_recipientKindFromString:](PXRecipientTransportUtilities, "px_recipientKindFromString:", v6))
  {
    [v9 clearText];
    v7 = [(PXCNComposeRecipientView *)self composeRecipientView:v9 composeRecipientForAddress:v6];
    [v9 addRecipient:v7];
    if (self->super._delegateRespondsTo.didFinishEnteringAddress)
    {
      v8 = [(PXComposeRecipientView *)self delegate];
      [v8 composeRecipientView:self didFinishEnteringAddress:v6];
    }
  }
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  if (self->super._delegateRespondsTo.textDidChange)
  {
    v6 = a4;
    v7 = [(PXComposeRecipientView *)self delegate];
    [v7 composeRecipientView:self textDidChange:v6];
  }
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = PXCNComposeRecipientView;
  [(PXCNComposeRecipientView *)&v6 resignFirstResponder];
  v3 = [(PXCNComposeRecipientView *)self firstResponder];
  v4 = [v3 resignFirstResponder];

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v4.receiver = self;
  v4.super_class = PXCNComposeRecipientView;
  [(PXCNComposeRecipientView *)&v4 becomeFirstResponder];
  return [(CNComposeRecipientTextView *)self->_recipientTextView becomeFirstResponder];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PXCNComposeRecipientView *)self layoutIfNeeded:a3.width];
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

- (void)removeRecipients:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 copy];
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

- (void)addRecipients:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 copy];
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

- (void)removeRecipient:(id)a3
{
  v12 = a3;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v12 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:118 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"recipient", v9, v11}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:118 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"recipient", v9}];
  }

LABEL_3:
  recipientTextView = self->_recipientTextView;
  v6 = [v12 recipient];
  [(CNComposeRecipientTextView *)recipientTextView removeRecipient:v6];

  [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
  [(CNComposeRecipientTextView *)self->_recipientTextView reflow];
}

- (void)addRecipient:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v5 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"recipient", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXCNComposeRecipientView.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"recipient", v16}];
  }

LABEL_3:
  v6 = [v5 recipient];
  v7 = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v8 = PXComposeRecipientsContainsComposeRecipient(v7, v6);

  if (v8)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      v10 = "Ignored attempt to add a recipient again: %@";
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else
  {
    v11 = [(PXComposeRecipientView *)self usedAddresses];
    v12 = [v6 address];
    v13 = [v11 containsObject:v12];

    if (!v13)
    {
      [(CNComposeRecipientTextView *)self->_recipientTextView addRecipient:v6];
      [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
      [(CNComposeRecipientTextView *)self->_recipientTextView reflow];
      goto LABEL_12;
    }

    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      v10 = "Ignored attempt to add a used recipient: %@";
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (id)text
{
  v2 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v10 = a3;
  v4 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  v5 = [v4 text];

  if (v5 != v10 && ([v10 isEqualToString:v5] & 1) == 0)
  {
    v6 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
    [v6 setText:v10];

    if (self->super._delegateRespondsTo.textDidChange)
    {
      v7 = [(PXComposeRecipientView *)self delegate];
      v8 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
      v9 = [v8 text];
      [v7 composeRecipientView:self textDidChange:v9];
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
    v8 = [MEMORY[0x1E695DF70] array];
    internalRecipients = v2->_internalRecipients;
    v2->_internalRecipients = v8;
  }

  return v2;
}

@end