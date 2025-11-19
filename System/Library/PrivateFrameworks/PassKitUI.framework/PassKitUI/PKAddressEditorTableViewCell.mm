@interface PKAddressEditorTableViewCell
- (PKAddressEditorTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation PKAddressEditorTableViewCell

- (PKAddressEditorTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = PKAddressEditorTableViewCell;
  v4 = [(PKAddressEditorTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(PKAddressEditorTableViewCell *)v4 setBackgroundColor:v5];

    [(PKAddressEditorTableViewCell *)v4 setOpaque:0];
    [(PKAddressEditorTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x1E69DCF90]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    stackView = v4->_stackView;
    v4->_stackView = v7;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_stackView setDistribution:1];
    [(UIStackView *)v4->_stackView setAxis:0];
    [(UIStackView *)v4->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_stackView setSpacing:10.0];
    [(UIStackView *)v4->_stackView setPreservesSuperviewLayoutMargins:1];
    v9 = v4->_stackView;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UIStackView *)v9 setBackgroundColor:v10];

    v11 = [(PKAddressEditorTableViewCell *)v4 contentView];
    [v11 addSubview:v4->_stackView];
    [v11 setPreservesSuperviewLayoutMargins:1];
    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_stackView attribute:6 relatedBy:0 toItem:v11 attribute:6 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v12];

    v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_stackView attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v13];

    v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_stackView attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v14];

    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_stackView attribute:4 relatedBy:0 toItem:v11 attribute:4 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v15];

    v16 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_stackView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    [v11 addConstraint:v16];

    [(PKAddressEditorTableViewCell *)v4 setNeedsUpdateConstraints];
    [(PKAddressEditorTableViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9410]];
  }

  return v4;
}

- (void)prepareForReuse
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKAddressEditorTableViewCell;
  [(PKAddressEditorTableViewCell *)&v13 prepareForReuse];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(UIStackView *)self->_stackView arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(UIStackView *)self->_stackView removeArrangedSubview:v8];
        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

@end