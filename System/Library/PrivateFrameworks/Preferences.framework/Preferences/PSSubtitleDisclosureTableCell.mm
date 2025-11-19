@interface PSSubtitleDisclosureTableCell
+ (Class)alternativeCellClass;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_valueLabelForSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSubtitleDisclosureTableCell

- (void)_valueLabelForSpecifier:(id)a3
{
  if (!a3)
  {
    return;
  }

  v4 = [a3 propertyForKey:@"cellSubtitleText"];
  v5 = [(PSSubtitleDisclosureTableCell *)self detailTextLabel];
  [v5 setText:v4];

  v6 = [(PSTableCell *)self value];
  valueLabel = self->_valueLabel;
  v20 = v6;
  if (valueLabel)
  {
    v8 = [(UILabel *)valueLabel text];
    v6 = v20;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v6 != v9 && ([v6 isEqualToString:v9] & 1) == 0)
  {
    v10 = [v20 length];
    v11 = self->_valueLabel;
    if (v10)
    {
      if (!v11)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_valueLabel;
        self->_valueLabel = v13;

        v15 = objc_opt_new();
        v16 = [v15 detailTextLabel];
        v17 = [v16 font];
        [(UILabel *)self->_valueLabel setFont:v17];

        [(UILabel *)self->_valueLabel setNumberOfLines:0];
        [(UILabel *)self->_valueLabel setLineBreakMode:0];
        [(UILabel *)self->_valueLabel setEnabled:0];
        v18 = [(PSSubtitleDisclosureTableCell *)self contentView];
        [v18 addSubview:self->_valueLabel];

        v11 = self->_valueLabel;
      }

      [(UILabel *)v11 setText:v20];
      goto LABEL_14;
    }

    if (v11)
    {
      [(UILabel *)v11 removeFromSuperview];
      v19 = self->_valueLabel;
      self->_valueLabel = 0;

LABEL_14:
      [(PSSubtitleDisclosureTableCell *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v78.receiver = self;
    v78.super_class = PSSubtitleDisclosureTableCell;
    [(PSTableCell *)&v78 layoutSubviews];
  }

  else
  {
    v77.receiver = self;
    v77.super_class = PSSubtitleDisclosureTableCell;
    [(PSTableCell *)&v77 layoutSubviews];
    valueLabel = self->_valueLabel;
    if (valueLabel)
    {
      [(UILabel *)valueLabel sizeToFit];
      v4 = [(PSSubtitleDisclosureTableCell *)self layoutManager];
      [v4 contentRectForCell:self forState:0];
      v6 = v5;
      v8 = v7;

      [(UILabel *)self->_valueLabel frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(PSSubtitleDisclosureTableCell *)self _shouldReverseLayoutDirection];
      v16 = [(PSSubtitleDisclosureTableCell *)self traitCollection];
      v17 = [v16 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

      if (IsAccessibilityCategory)
      {
        v19 = [(PSSubtitleDisclosureTableCell *)self detailTextLabel];
        [v19 frame];
        MaxX = v20;
        if (v15)
        {
          MaxX = CGRectGetMaxX(*&v20);
        }

        v25 = self->_valueLabel;
        v26 = [(PSSubtitleDisclosureTableCell *)self textLabel];
        [v26 frame];
        [(UILabel *)v25 sizeThatFits:CGRectGetWidth(v79), 1.79769313e308];
        v28 = v27;
        v30 = v29;

        if (v15)
        {
          MaxX = MaxX - v28;
        }

        v31 = [(PSSubtitleDisclosureTableCell *)self textLabel];
        [v31 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v80.origin.x = MaxX;
        v80.origin.y = v10;
        v80.size.width = v28;
        v80.size.height = v30;
        v40 = v35 - CGRectGetHeight(v80) * 0.5;
        v41 = [(PSSubtitleDisclosureTableCell *)self textLabel];
        [v41 setFrame:{v33, v40, v37, v39}];

        v42 = [(PSSubtitleDisclosureTableCell *)self detailTextLabel];
        [v42 frame];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v81.origin.x = MaxX;
        v81.origin.y = v10;
        v81.size.width = v28;
        v81.size.height = v30;
        v51 = v46 - CGRectGetHeight(v81) * 0.5;
        v52 = [(PSSubtitleDisclosureTableCell *)self detailTextLabel];
        [v52 setFrame:{v44, v51, v48, v50}];

        v53 = [(PSSubtitleDisclosureTableCell *)self detailTextLabel];
        [v53 frame];
        MaxY = CGRectGetMaxY(v82);

        [(UILabel *)self->_valueLabel setFrame:MaxX, MaxY, v28, v30];
      }

      else
      {
        if (v15)
        {
          v55 = 0.0;
        }

        else
        {
          v55 = v6 - v12;
        }

        v56 = (v8 - v14) * 0.5;
        v57 = floorf(v56);
        [(UILabel *)self->_valueLabel setFrame:v55, v57, v12, v14];
        v58 = [(PSSubtitleDisclosureTableCell *)self textLabel];
        [v58 frame];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v76 = v62;
        if (v15)
        {
          v83.origin.x = v55;
          v83.origin.y = v57;
          v83.size.width = v12;
          v83.size.height = v14;
          v57 = v62;
          v67 = CGRectGetMaxX(v83);
          v55 = v60;
          v12 = v64;
          v14 = v66;
        }

        else
        {
          v84.origin.x = v60;
          v84.origin.y = v62;
          v84.size.width = v64;
          v84.size.height = v66;
          v67 = CGRectGetMaxX(v84);
        }

        v85.origin.x = v55;
        v85.origin.y = v57;
        v85.size.width = v12;
        v85.size.height = v14;
        v68 = v67 - CGRectGetMinX(v85);
        [(PSSubtitleDisclosureTableCell *)self contentAccessoryPadding];
        if (v68 + v69 > 0.0)
        {
          [(PSSubtitleDisclosureTableCell *)self contentAccessoryPadding];
          v71 = v68 + v70;
          v72 = v64 - v71;
          v73 = v60 + v71;
          if (v15)
          {
            v74 = v73;
          }

          else
          {
            v74 = v60;
          }

          v75 = [(PSSubtitleDisclosureTableCell *)self textLabel];
          [v75 setFrame:{v74, v76, v72, v66}];
        }
      }
    }
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSSubtitleDisclosureTableCell;
  v4 = a3;
  [(PSTableCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(PSSubtitleDisclosureTableCell *)self _valueLabelForSpecifier:v4, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v17.receiver = self;
  v17.super_class = PSSubtitleDisclosureTableCell;
  [(PSSubtitleDisclosureTableCell *)&v17 sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = [(PSSubtitleDisclosureTableCell *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v11))
  {
    valueLabel = self->_valueLabel;

    if (valueLabel)
    {
      v13 = [(PSSubtitleDisclosureTableCell *)self textLabel];
      [v13 frame];
      CGRectGetMinX(v19);

      [(UILabel *)self->_valueLabel sizeThatFits:width, height];
      v9 = v9 + v14;
    }
  }

  else
  {
  }

  v15 = v7;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end