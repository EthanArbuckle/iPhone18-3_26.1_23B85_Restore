@interface UITableViewLabel
- (BOOL)_attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:(id)a3;
- (UITableViewCell)tableCell;
- (UITableViewLabel)initWithCoder:(id)a3;
- (UITableViewLabel)initWithFrame:(CGRect)a3;
- (id)_disabledFontColor;
- (void)_cleanupErrantFirstLineHeadIndent;
- (void)_clearNumberOfLines;
- (void)_setDefaultFont:(id)a3;
- (void)_setFirstParagraphFirstLineHeadIndent:(double)a3;
- (void)_setNumberOfLinesForAXLayoutIfNecessary;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITableViewLabel

- (id)_disabledFontColor
{
  v4.receiver = self;
  v4.super_class = UITableViewLabel;
  v2 = [(UILabel *)&v4 _disabledFontColor];

  return v2;
}

- (void)_setNumberOfLinesForAXLayoutIfNecessary
{
  v5 = [(UIView *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 3 || (dyld_program_sdk_at_least() & 1) == 0)
  {
  }

  else
  {
    v3 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

    if (IsAccessibilityCategory)
    {

      [(UITableViewLabel *)self _clearNumberOfLines];
    }
  }
}

- (void)_cleanupErrantFirstLineHeadIndent
{
  v3 = [(UILabel *)self _content];
  v4 = [v3 isAttributed];

  if (v4)
  {
    v5 = [(UILabel *)self _content];
    v6 = [v5 attributedString];

    if ([v6 length])
    {
      v15 = 0;
      v16 = 0;
      v7 = *off_1E70EC988;
      v8 = [v6 attribute:*off_1E70EC988 atIndex:0 effectiveRange:&v15];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v11 = [(UILabel *)self _defaultAttributes];
        v10 = [v11 objectForKey:v7];
      }

      [v10 firstLineHeadIndent];
      if (v12 != 0.0)
      {
        v13 = [v10 mutableCopy];
        [v13 setFirstLineHeadIndent:0.0];
        v14 = [v6 mutableCopy];
        [v14 addAttribute:v7 value:v13 range:{v15, v16}];
        [(UITableViewLabel *)self setAttributedText:v14];
      }
    }
  }
}

- (void)_clearNumberOfLines
{
  self->_savedNumberOfLines = [(UILabel *)self numberOfLines];

  [(UILabel *)self setNumberOfLines:0];
}

- (UITableViewLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UITableViewLabel;
  v3 = [(UILabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_savedNumberOfLines = 0x7FFFFFFFFFFFFFFFLL;
    v3->_usingDefaultFont = 1;
    [(UITableViewLabel *)v3 _setNumberOfLinesForAXLayoutIfNecessary];
  }

  return v4;
}

- (UITableViewLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITableViewLabel;
  v5 = [(UILabel *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_savedNumberOfLines = 0x7FFFFFFFFFFFFFFFLL;
    v5->_usingDefaultFont = [v4 containsValueForKey:@"UIFont"] ^ 1;
    [(UITableViewLabel *)v6 _setNumberOfLinesForAXLayoutIfNecessary];
  }

  return v6;
}

- (BOOL)_attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
    [v4 firstLineHeadIndent];
    v6 = v5 != 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self text];
  if (v5 == v4)
  {
LABEL_15:

    goto LABEL_16;
  }

  v6 = [(UILabel *)self text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    if (dyld_program_sdk_at_least() && self->_firstParagraphFirstLineHeadIndent != 0.0 && [v4 length])
    {
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
      [(UITableViewLabel *)self setAttributedText:v8];
    }

    else
    {
      shadowAttributedText = self->_shadowAttributedText;
      self->_shadowAttributedText = 0;

      v13.receiver = self;
      v13.super_class = UITableViewLabel;
      [(UILabel *)&v13 setText:v4];
      if (dyld_program_sdk_at_least())
      {
        [(UITableViewLabel *)self _cleanupErrantFirstLineHeadIndent];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_tableCell);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _contentViewLabelTextDidChange:self];
    }

    else
    {
      v11 = [(UIView *)self superview];
      if (v11)
      {
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v12 = [v11 superview];

          v11 = v12;
        }

        while (v12);
      }

      [v11 setNeedsLayout];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UITableViewLabel;
  [(UILabel *)&v25 traitCollectionDidChange:v4];
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_24;
  }

  v5 = [(UILabel *)self numberOfLines];
  v6 = [v4 userInterfaceIdiom];
  v7 = [(UIView *)self traitCollection];
  if (v6 == [v7 userInterfaceIdiom])
  {

    goto LABEL_10;
  }

  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 3)
  {
LABEL_10:
    v12 = [(UIView *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = [v4 preferredContentSizeCategory];
    v15 = [v13 isEqual:v14];

    v16 = [(UIView *)self traitCollection];
    v17 = [v16 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

    v19 = [v4 preferredContentSizeCategory];
    v20 = UIContentSizeCategoryIsAccessibilityCategory(v19);

    if ((v15 & 1) == 0)
    {
      if (v5)
      {
        v21 = IsAccessibilityCategory;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        [(UITableViewLabel *)self _clearNumberOfLines];
      }

      else if (!IsAccessibilityCategory && v20)
      {
        savedNumberOfLines = self->_savedNumberOfLines;
        if (savedNumberOfLines != 0x7FFFFFFFFFFFFFFFLL && v5 != savedNumberOfLines)
        {
          [(UITableViewLabel *)self _restoreNumberOfLines];
        }
      }

      if (v20 || !IsAccessibilityCategory)
      {
        if (self->_shadowAttributedText)
        {
          [(UITableViewLabel *)self setAttributedText:?];
          shadowAttributedText = self->_shadowAttributedText;
          self->_shadowAttributedText = 0;
        }
      }

      else
      {
        v24 = [(UILabel *)self attributedText];
        [(UITableViewLabel *)self setAttributedText:v24];
      }
    }

    goto LABEL_24;
  }

  v10 = self->_savedNumberOfLines;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v5 != v10)
  {
    [(UITableViewLabel *)self _restoreNumberOfLines];
  }

LABEL_24:
}

- (void)_setFirstParagraphFirstLineHeadIndent:(double)a3
{
  firstParagraphFirstLineHeadIndent = self->_firstParagraphFirstLineHeadIndent;
  v4 = fmax(a3, 0.0);
  self->_firstParagraphFirstLineHeadIndent = v4;
  if (firstParagraphFirstLineHeadIndent != v4)
  {
    if (self->_shadowAttributedText)
    {

      [(UITableViewLabel *)self setAttributedText:?];
    }

    else
    {
      v6 = [(UILabel *)self attributedText];
      [(UITableViewLabel *)self setAttributedText:v6];
    }
  }
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  shadowAttributedText = self->_shadowAttributedText;
  self->_shadowAttributedText = v5;

  if (dyld_program_sdk_at_least() && self->_firstParagraphFirstLineHeadIndent != 0.0 && [v4 length])
  {
    [(UILabel *)self _setOverallWritingDirectionFollowsLayoutDirection:1];
    v7 = [v4 mutableCopy];
    v8 = *off_1E70EC988;
    v9 = [v4 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(off_1E70ECB80);
    }

    v14 = v12;

    [v14 setFirstLineHeadIndent:self->_firstParagraphFirstLineHeadIndent];
    if (!v9)
    {
      v15 = [off_1E70ECB88 defaultParagraphStyle];
      [v7 addAttribute:v8 value:v15 range:{0, objc_msgSend(v7, "length")}];
    }

    v16 = [v4 string];
    v17 = [v16 paragraphRangeForRange:{0, 0}];
    [v7 addAttribute:v8 value:v14 range:{v17, v18}];

    v13 = 0;
  }

  else
  {
    [(UILabel *)self _setOverallWritingDirectionFollowsLayoutDirection:0];
    if (dyld_program_sdk_at_least())
    {
      v13 = ![(UITableViewLabel *)self _attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:v4];
    }

    else
    {
      v13 = 0;
    }

    v7 = v4;
  }

  v19.receiver = self;
  v19.super_class = UITableViewLabel;
  [(UILabel *)&v19 setAttributedText:v7];
  if (v13)
  {
    [(UITableViewLabel *)self _cleanupErrantFirstLineHeadIndent];
  }
}

- (void)_setDefaultFont:(id)a3
{
  v4 = a3;
  self->_usingDefaultFont = 1;
  v5 = [(UILabel *)self font];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = UITableViewLabel;
    [(UILabel *)&v6 setFont:v4];
  }
}

- (void)setFont:(id)a3
{
  self->_usingDefaultFont = 0;
  v3.receiver = self;
  v3.super_class = UITableViewLabel;
  [(UILabel *)&v3 setFont:a3];
}

- (UITableViewCell)tableCell
{
  WeakRetained = objc_loadWeakRetained(&self->_tableCell);

  return WeakRetained;
}

@end