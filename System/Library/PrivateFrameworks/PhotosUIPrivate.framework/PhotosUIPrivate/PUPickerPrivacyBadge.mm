@interface PUPickerPrivacyBadge
- (CGRect)imageFrame;
- (CGRect)labelFrame;
- (PUPickerPrivacyBadge)initWithFrame:(CGRect)a3;
- (void)flipToPrivacyIconAndDismissAfterDelay:(double)a3 completion:(id)a4;
@end

@implementation PUPickerPrivacyBadge

- (void)flipToPrivacyIconAndDismissAfterDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(PUPickerBadgeIconView *)self->_iconView flipToPrivacyIconAfterDelay:a3];
  v7 = objc_alloc(MEMORY[0x1E69DD278]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PUPickerPrivacyBadge_flipToPrivacyIconAndDismissAfterDelay_completion___block_invoke;
  v16[3] = &unk_1E7B80DD0;
  v16[4] = self;
  v8 = [v7 initWithDuration:v16 controlPoint1:0.167 controlPoint2:0.33 animations:{0.0, 0.8, 0.7}];
  [v8 startAnimationAfterDelay:a3 + 1.75];
  v9 = objc_alloc(MEMORY[0x1E69DD278]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PUPickerPrivacyBadge_flipToPrivacyIconAndDismissAfterDelay_completion___block_invoke_2;
  v15[3] = &unk_1E7B80DD0;
  v15[4] = self;
  v10 = [v9 initWithDuration:v15 controlPoint1:0.167 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  [v10 startAnimationAfterDelay:a3 + 1.75];
  v11 = dispatch_time(0, (a3 + 4000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PUPickerPrivacyBadge_flipToPrivacyIconAndDismissAfterDelay_completion___block_invoke_3;
  block[3] = &unk_1E7B80C88;
  v14 = v6;
  v12 = v6;
  dispatch_after(v11, MEMORY[0x1E69E96A0], block);
}

uint64_t __73__PUPickerPrivacyBadge_flipToPrivacyIconAndDismissAfterDelay_completion___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.75, 0.75);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

- (CGRect)labelFrame
{
  label = self->_label;
  [(UILabel *)label bounds];

  [(UILabel *)label convertRect:self toView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)imageFrame
{
  iconView = self->_iconView;
  [(PUPickerBadgeIconView *)iconView bounds];

  [(PUPickerBadgeIconView *)iconView convertRect:self toView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (PUPickerPrivacyBadge)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50[9] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v49.receiver = self;
  v49.super_class = PUPickerPrivacyBadge;
  v9 = [(PUPickerPrivacyBadge *)&v49 initWithEffect:v8];
  v10 = v9;
  if (v9)
  {
    [(PUPickerPrivacyBadge *)v9 setFrame:x, y, width, height];
    [(PUPickerPrivacyBadge *)v10 _setCornerRadius:6.0];
    v11 = [[PUPickerBadgeIconView alloc] initWithFrame:0.0, 0.0, 20.0, 20.0];
    v48 = v8;
    iconView = v10->_iconView;
    v10->_iconView = v11;

    [(PUPickerBadgeIconView *)v10->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(PUPickerPrivacyBadge *)v10 contentView];
    [v13 addSubview:v10->_iconView];

    v14 = objc_alloc(MEMORY[0x1E69DCC10]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v10->_label;
    v10->_label = v15;

    [(UILabel *)v10->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
    [(UILabel *)v10->_label setFont:v17];

    v18 = PULocalizedString(@"PICKER_PRIVACY_INDICATOR");
    [(UILabel *)v10->_label setText:v18];

    v19 = [(PUPickerPrivacyBadge *)v10 contentView];
    [v19 addSubview:v10->_label];

    v38 = MEMORY[0x1E696ACD8];
    v47 = [(PUPickerBadgeIconView *)v10->_iconView widthAnchor];
    v46 = [v47 constraintEqualToConstant:20.0];
    v50[0] = v46;
    v45 = [(PUPickerBadgeIconView *)v10->_iconView heightAnchor];
    v44 = [v45 constraintEqualToConstant:20.0];
    v50[1] = v44;
    v43 = [(PUPickerBadgeIconView *)v10->_iconView leadingAnchor];
    v42 = [(PUPickerPrivacyBadge *)v10 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:2.0];
    v50[2] = v41;
    v40 = [(PUPickerBadgeIconView *)v10->_iconView topAnchor];
    v39 = [(PUPickerPrivacyBadge *)v10 topAnchor];
    v37 = [v40 constraintEqualToAnchor:v39 constant:2.0];
    v50[3] = v37;
    v36 = [(PUPickerPrivacyBadge *)v10 bottomAnchor];
    v35 = [(PUPickerBadgeIconView *)v10->_iconView bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:2.0];
    v50[4] = v34;
    v33 = [(UILabel *)v10->_label leadingAnchor];
    v32 = [(PUPickerBadgeIconView *)v10->_iconView trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 constant:3.0];
    v50[5] = v31;
    v30 = [(UILabel *)v10->_label topAnchor];
    v20 = [(PUPickerPrivacyBadge *)v10 topAnchor];
    v21 = [v30 constraintEqualToAnchor:v20];
    v50[6] = v21;
    v22 = [(UILabel *)v10->_label bottomAnchor];
    v23 = [(PUPickerPrivacyBadge *)v10 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v50[7] = v24;
    v25 = [(PUPickerPrivacyBadge *)v10 trailingAnchor];
    v26 = [(UILabel *)v10->_label trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:6.0];
    v50[8] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:9];
    [v38 activateConstraints:v28];

    v8 = v48;
  }

  return v10;
}

@end