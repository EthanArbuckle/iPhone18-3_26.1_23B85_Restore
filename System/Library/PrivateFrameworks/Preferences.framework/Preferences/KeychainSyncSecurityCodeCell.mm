@interface KeychainSyncSecurityCodeCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)layoutSubviews;
- (void)setBulletText:(id)a3;
@end

@implementation KeychainSyncSecurityCodeCell

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  securityCodeType = self->_securityCodeType;
  if (securityCodeType == 1)
  {
    v14 = [v9 text];
    v15 = [v14 stringByReplacingCharactersInRange:location withString:{length, v10}];

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
      v12 = [v9 text];
      if (self->_mode == 3)
      {
        [v9 setText:&stru_1EFE45030];
        v13 = [v9 text];

        location = 0;
        length = 0;
        v12 = v13;
      }

      if (length + location <= [v12 length])
      {
        v31 = [(NSString *)self->_firstPasscodeEntry length];
        v18 = [v9 selectionRange];
        v19 = v18 + [v10 length];
        if (length == 1)
        {
          v19 = (__PAIR128__(v19, [v10 length]) - 1) >> 64;
        }

        v20 = [v12 stringByReplacingCharactersInRange:location withString:{length, v10}];

        v21 = [v20 uppercaseString];

        v22 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        v23 = [v22 invertedSet];

        v32 = v21;
        v24 = [v21 mutableCopy];
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
            if ([v23 characterIsMember:{objc_msgSend(v24, "characterAtIndex:", --v26)}])
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
          [v9 setText:v24];
          [v9 setSelectionRange:{v19 + v27, 0}];
          v29 = [MEMORY[0x1E696AD88] defaultCenter];
          [v29 postNotificationName:*MEMORY[0x1E69DE5C0] object:v9];
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

- (void)setBulletText:(id)a3
{
  v12 = a3;
  if (!self->_bulletTextLabel && [v12 length])
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    bulletTextLabel = self->_bulletTextLabel;
    self->_bulletTextLabel = v5;

    v7 = self->_bulletTextLabel;
    v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
    [(UILabel *)v7 setFont:v8];

    v9 = [(KeychainSyncSecurityCodeCell *)self contentView];
    [v9 addSubview:self->_bulletTextLabel];
  }

  v10 = [(UILabel *)self->_bulletTextLabel text];
  v11 = [v10 isEqualToString:v12];

  if ((v11 & 1) == 0)
  {
    [(UILabel *)self->_bulletTextLabel setText:v12];
    [(UILabel *)self->_bulletTextLabel sizeToFit];
    [(KeychainSyncSecurityCodeCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = KeychainSyncSecurityCodeCell;
  [(PSEditableTableCell *)&v41 layoutSubviews];
  v3 = [(KeychainSyncSecurityCodeCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(KeychainSyncSecurityCodeCell *)self contentView];
  v11 = [v10 layer];
  [v11 borderWidth];
  v13 = v12;

  if (v13 > 0.0)
  {
    v7 = v7 + -30.0;
    v14 = [(KeychainSyncSecurityCodeCell *)self contentView];
    [v14 setFrame:{15.0, v5, v7, v9}];
  }

  v15 = [(UILabel *)self->_bulletTextLabel text];
  v16 = [v15 length];

  if (v16)
  {
    [(UILabel *)self->_bulletTextLabel frame];
    v18 = v17;
    v20 = v19;
    v21 = [(PSEditableTableCell *)self textField];
    [v21 frame];
    v23 = v22;
    v24 = [(PSEditableTableCell *)self textField];
    v25 = [v24 font];
    [v25 ascender];
    v27 = v23 + v26;
    v28 = [(UILabel *)self->_bulletTextLabel font];
    [v28 ascender];
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

  v32 = [(PSEditableTableCell *)self textField];
  [v32 frame];
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

  v40 = [(PSEditableTableCell *)self textField];
  [v40 setFrame:{v37, v34, v38, v36}];
}

@end