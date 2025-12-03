@interface KeychainSyncSecurityCodeCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)layoutSubviews;
- (void)setBulletText:(id)text;
@end

@implementation KeychainSyncSecurityCodeCell

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  securityCodeType = self->_securityCodeType;
  if (securityCodeType == 1)
  {
    text = [fieldCopy text];
    v15 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    v16 = [v15 length];
    if (v16 > 0x20)
    {
LABEL_29:
      v17 = 0;
      goto LABEL_30;
    }
  }

  else if (securityCodeType == 2)
  {
    if (self->_firstPasscodeEntry || (self->_mode & 0xFFFFFFFE) == 2)
    {
      text2 = [fieldCopy text];
      if (self->_mode == 3)
      {
        [fieldCopy setText:&stru_1EFE45030];
        text3 = [fieldCopy text];

        location = 0;
        length = 0;
        text2 = text3;
      }

      if (length + location <= [text2 length])
      {
        v31 = [(NSString *)self->_firstPasscodeEntry length];
        selectionRange = [fieldCopy selectionRange];
        v19 = selectionRange + [stringCopy length];
        if (length == 1)
        {
          v19 = (__PAIR128__(v19, [stringCopy length]) - 1) >> 64;
        }

        v20 = [text2 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

        uppercaseString = [v20 uppercaseString];

        alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        invertedSet = [alphanumericCharacterSet invertedSet];

        v32 = uppercaseString;
        v24 = [uppercaseString mutableCopy];
        v25 = [v24 length];
        if (v25 - 1 < 1)
        {
          v27 = 0;
        }

        else
        {
          v26 = v25;
          v27 = 0;
          do
          {
            if ([invertedSet characterIsMember:{objc_msgSend(v24, "characterAtIndex:", --v26)}])
            {
              [v24 deleteCharactersInRange:{v26, 1}];
              v27 -= v26 < v19;
            }
          }

          while (v26 > 1);
        }

        if ([v24 length] >= 5)
        {
          v28 = 4;
          do
          {
            if (v19 > v28)
            {
              ++v27;
            }

            [v24 insertString:@"-" atIndex:v28];
            v28 += 5;
          }

          while ([v24 length] > v28);
        }

        if ([v24 length] <= v31 || (self->_mode & 0xFFFFFFFE) == 2)
        {
          [fieldCopy setText:v24];
          [fieldCopy setSelectionRange:{v19 + v27, 0}];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:*MEMORY[0x1E69DE5C0] object:fieldCopy];
        }
      }

      else
      {
      }
    }

    goto LABEL_29;
  }

  v17 = 1;
LABEL_30:

  return v17;
}

- (void)setBulletText:(id)text
{
  textCopy = text;
  if (!self->_bulletTextLabel && [textCopy length])
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    bulletTextLabel = self->_bulletTextLabel;
    self->_bulletTextLabel = v5;

    v7 = self->_bulletTextLabel;
    v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
    [(UILabel *)v7 setFont:v8];

    contentView = [(KeychainSyncSecurityCodeCell *)self contentView];
    [contentView addSubview:self->_bulletTextLabel];
  }

  text = [(UILabel *)self->_bulletTextLabel text];
  v11 = [text isEqualToString:textCopy];

  if ((v11 & 1) == 0)
  {
    [(UILabel *)self->_bulletTextLabel setText:textCopy];
    [(UILabel *)self->_bulletTextLabel sizeToFit];
    [(KeychainSyncSecurityCodeCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = KeychainSyncSecurityCodeCell;
  [(PSEditableTableCell *)&v41 layoutSubviews];
  contentView = [(KeychainSyncSecurityCodeCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  contentView2 = [(KeychainSyncSecurityCodeCell *)self contentView];
  layer = [contentView2 layer];
  [layer borderWidth];
  v13 = v12;

  if (v13 > 0.0)
  {
    v7 = v7 + -30.0;
    contentView3 = [(KeychainSyncSecurityCodeCell *)self contentView];
    [contentView3 setFrame:{15.0, v5, v7, v9}];
  }

  text = [(UILabel *)self->_bulletTextLabel text];
  v16 = [text length];

  if (v16)
  {
    [(UILabel *)self->_bulletTextLabel frame];
    v18 = v17;
    v20 = v19;
    textField = [(PSEditableTableCell *)self textField];
    [textField frame];
    v23 = v22;
    textField2 = [(PSEditableTableCell *)self textField];
    font = [textField2 font];
    [font ascender];
    v27 = v23 + v26;
    font2 = [(UILabel *)self->_bulletTextLabel font];
    [font2 ascender];
    v30 = v27 - v29;

    if (PSLocaleLanguageDirection() == 1)
    {
      v31 = 15.0;
    }

    else
    {
      v31 = v7 + -15.0 - v18;
    }

    [(UILabel *)self->_bulletTextLabel setFrame:v31, v30, v18, v20];
  }

  else
  {
    v31 = *MEMORY[0x1E695F058];
    v30 = *(MEMORY[0x1E695F058] + 8);
    v18 = *(MEMORY[0x1E695F058] + 16);
    v20 = *(MEMORY[0x1E695F058] + 24);
  }

  textField3 = [(PSEditableTableCell *)self textField];
  [textField3 frame];
  v34 = v33;
  v36 = v35;

  if (PSLocaleLanguageDirection() == 1)
  {
    v42.origin.x = v31;
    v42.origin.y = v30;
    v42.size.width = v18;
    v42.size.height = v20;
    v37 = CGRectGetMaxX(v42) + 15.0;
    v43.origin.x = v31;
    v43.origin.y = v30;
    v43.size.width = v18;
    v43.size.height = v20;
    v38 = v7 - CGRectGetMaxX(v43) + -30.0;
  }

  else
  {
    v39 = 0.0;
    v37 = 15.0;
    if (v18 > 0.0)
    {
      v39 = 15.0;
    }

    v38 = v7 - v18 + -30.0 - v39;
  }

  textField4 = [(PSEditableTableCell *)self textField];
  [textField4 setFrame:{v37, v34, v38, v36}];
}

@end