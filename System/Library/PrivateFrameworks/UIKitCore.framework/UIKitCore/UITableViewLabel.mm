@interface UITableViewLabel
- (BOOL)_attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:(id)indent;
- (UITableViewCell)tableCell;
- (UITableViewLabel)initWithCoder:(id)coder;
- (UITableViewLabel)initWithFrame:(CGRect)frame;
- (id)_disabledFontColor;
- (void)_cleanupErrantFirstLineHeadIndent;
- (void)_clearNumberOfLines;
- (void)_setDefaultFont:(id)font;
- (void)_setFirstParagraphFirstLineHeadIndent:(double)indent;
- (void)_setNumberOfLinesForAXLayoutIfNecessary;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UITableViewLabel

- (id)_disabledFontColor
{
  v4.receiver = self;
  v4.super_class = UITableViewLabel;
  _disabledFontColor = [(UILabel *)&v4 _disabledFontColor];

  return _disabledFontColor;
}

- (void)_setNumberOfLinesForAXLayoutIfNecessary
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3 || (dyld_program_sdk_at_least() & 1) == 0)
  {
  }

  else
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {

      [(UITableViewLabel *)self _clearNumberOfLines];
    }
  }
}

- (void)_cleanupErrantFirstLineHeadIndent
{
  _content = [(UILabel *)self _content];
  isAttributed = [_content isAttributed];

  if (isAttributed)
  {
    _content2 = [(UILabel *)self _content];
    attributedString = [_content2 attributedString];

    if ([attributedString length])
    {
      v15 = 0;
      v16 = 0;
      v7 = *off_1E70EC988;
      v8 = [attributedString attribute:*off_1E70EC988 atIndex:0 effectiveRange:&v15];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        _defaultAttributes = [(UILabel *)self _defaultAttributes];
        v10 = [_defaultAttributes objectForKey:v7];
      }

      [v10 firstLineHeadIndent];
      if (v12 != 0.0)
      {
        v13 = [v10 mutableCopy];
        [v13 setFirstLineHeadIndent:0.0];
        v14 = [attributedString mutableCopy];
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

- (UITableViewLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITableViewLabel;
  v3 = [(UILabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_savedNumberOfLines = 0x7FFFFFFFFFFFFFFFLL;
    v3->_usingDefaultFont = 1;
    [(UITableViewLabel *)v3 _setNumberOfLinesForAXLayoutIfNecessary];
  }

  return v4;
}

- (UITableViewLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UITableViewLabel;
  v5 = [(UILabel *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_savedNumberOfLines = 0x7FFFFFFFFFFFFFFFLL;
    v5->_usingDefaultFont = [coderCopy containsValueForKey:@"UIFont"] ^ 1;
    [(UITableViewLabel *)v6 _setNumberOfLinesForAXLayoutIfNecessary];
  }

  return v6;
}

- (BOOL)_attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:(id)indent
{
  indentCopy = indent;
  if ([indentCopy length])
  {
    v4 = [indentCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
    [v4 firstLineHeadIndent];
    v6 = v5 != 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self text];
  if (text == textCopy)
  {
LABEL_15:

    goto LABEL_16;
  }

  text2 = [(UILabel *)self text];
  v7 = [textCopy isEqualToString:text2];

  if ((v7 & 1) == 0)
  {
    if (dyld_program_sdk_at_least() && self->_firstParagraphFirstLineHeadIndent != 0.0 && [textCopy length])
    {
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
      [(UITableViewLabel *)self setAttributedText:v8];
    }

    else
    {
      shadowAttributedText = self->_shadowAttributedText;
      self->_shadowAttributedText = 0;

      v13.receiver = self;
      v13.super_class = UITableViewLabel;
      [(UILabel *)&v13 setText:textCopy];
      if (dyld_program_sdk_at_least())
      {
        [(UITableViewLabel *)self _cleanupErrantFirstLineHeadIndent];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_tableCell);
    text = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _contentViewLabelTextDidChange:self];
    }

    else
    {
      superview = [(UIView *)self superview];
      if (superview)
      {
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v11Superview = [superview superview];

          superview = v11Superview;
        }

        while (v11Superview);
      }

      [superview setNeedsLayout];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v25.receiver = self;
  v25.super_class = UITableViewLabel;
  [(UILabel *)&v25 traitCollectionDidChange:changeCopy];
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_24;
  }

  numberOfLines = [(UILabel *)self numberOfLines];
  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  traitCollection = [(UIView *)self traitCollection];
  if (userInterfaceIdiom == [traitCollection userInterfaceIdiom])
  {

    goto LABEL_10;
  }

  traitCollection2 = [(UIView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 != 3)
  {
LABEL_10:
    traitCollection3 = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v15 = [preferredContentSizeCategory isEqual:preferredContentSizeCategory2];

    traitCollection4 = [(UIView *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

    preferredContentSizeCategory4 = [changeCopy preferredContentSizeCategory];
    v20 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

    if ((v15 & 1) == 0)
    {
      if (numberOfLines)
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
        if (savedNumberOfLines != 0x7FFFFFFFFFFFFFFFLL && numberOfLines != savedNumberOfLines)
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
        attributedText = [(UILabel *)self attributedText];
        [(UITableViewLabel *)self setAttributedText:attributedText];
      }
    }

    goto LABEL_24;
  }

  v10 = self->_savedNumberOfLines;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && numberOfLines != v10)
  {
    [(UITableViewLabel *)self _restoreNumberOfLines];
  }

LABEL_24:
}

- (void)_setFirstParagraphFirstLineHeadIndent:(double)indent
{
  firstParagraphFirstLineHeadIndent = self->_firstParagraphFirstLineHeadIndent;
  v4 = fmax(indent, 0.0);
  self->_firstParagraphFirstLineHeadIndent = v4;
  if (firstParagraphFirstLineHeadIndent != v4)
  {
    if (self->_shadowAttributedText)
    {

      [(UITableViewLabel *)self setAttributedText:?];
    }

    else
    {
      attributedText = [(UILabel *)self attributedText];
      [(UITableViewLabel *)self setAttributedText:attributedText];
    }
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  v5 = [textCopy copy];
  shadowAttributedText = self->_shadowAttributedText;
  self->_shadowAttributedText = v5;

  if (dyld_program_sdk_at_least() && self->_firstParagraphFirstLineHeadIndent != 0.0 && [textCopy length])
  {
    [(UILabel *)self _setOverallWritingDirectionFollowsLayoutDirection:1];
    v7 = [textCopy mutableCopy];
    v8 = *off_1E70EC988;
    v9 = [textCopy attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
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
      defaultParagraphStyle = [off_1E70ECB88 defaultParagraphStyle];
      [v7 addAttribute:v8 value:defaultParagraphStyle range:{0, objc_msgSend(v7, "length")}];
    }

    string = [textCopy string];
    v17 = [string paragraphRangeForRange:{0, 0}];
    [v7 addAttribute:v8 value:v14 range:{v17, v18}];

    v13 = 0;
  }

  else
  {
    [(UILabel *)self _setOverallWritingDirectionFollowsLayoutDirection:0];
    if (dyld_program_sdk_at_least())
    {
      v13 = ![(UITableViewLabel *)self _attributedStringHasParagraphStyleWithNonzeroFirstLineHeadIndent:textCopy];
    }

    else
    {
      v13 = 0;
    }

    v7 = textCopy;
  }

  v19.receiver = self;
  v19.super_class = UITableViewLabel;
  [(UILabel *)&v19 setAttributedText:v7];
  if (v13)
  {
    [(UITableViewLabel *)self _cleanupErrantFirstLineHeadIndent];
  }
}

- (void)_setDefaultFont:(id)font
{
  fontCopy = font;
  self->_usingDefaultFont = 1;
  font = [(UILabel *)self font];

  if (font != fontCopy)
  {
    v6.receiver = self;
    v6.super_class = UITableViewLabel;
    [(UILabel *)&v6 setFont:fontCopy];
  }
}

- (void)setFont:(id)font
{
  self->_usingDefaultFont = 0;
  v3.receiver = self;
  v3.super_class = UITableViewLabel;
  [(UILabel *)&v3 setFont:font];
}

- (UITableViewCell)tableCell
{
  WeakRetained = objc_loadWeakRetained(&self->_tableCell);

  return WeakRetained;
}

@end