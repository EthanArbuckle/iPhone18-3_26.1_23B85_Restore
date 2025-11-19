@interface SBHIconTableViewHeaderFooterView
- (NSDirectionalEdgeInsets)titleLayoutMargins;
- (SBHIconTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
- (void)setTitleLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation SBHIconTableViewHeaderFooterView

- (SBHIconTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBHIconTableViewHeaderFooterView;
  v3 = [(SBHIconTableViewHeaderFooterView *)&v6 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SBHIconTableViewHeaderFooterView *)v3 setBackgroundView:v4];
  }

  return v3;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v24 = a3;
  v4 = [(SBHIconTableViewHeaderFooterView *)self defaultContentConfiguration];
  v5 = [v4 updatedConfigurationForState:v24];

  v6 = [(SBHIconTableViewHeaderFooterView *)self tableView];
  v7 = [v6 sectionIndexColor];

  v8 = [(SBHIconTableViewHeaderFooterView *)self title];
  if ([v8 isEqualToString:*MEMORY[0x1E69DE3E0]])
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"appclip"];
    [v5 setImage:v9];

    v10 = [v5 imageProperties];
    [v10 setTintColor:v7];
  }

  else
  {
    v11 = [v24 traitCollection];
    v12 = MEMORY[0x1E69DD1B8];
    v13 = [v11 preferredContentSizeCategory];
    v14 = SBHContentSizeCategoryClip(v13, *MEMORY[0x1E69DDC88], *MEMORY[0x1E69DDC28]);
    v10 = [v12 traitCollectionWithPreferredContentSizeCategory:v14];

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40] compatibleWithTraitCollection:v10];
    [v5 setText:v8];
    v16 = [v5 textProperties];
    [v16 setFont:v15];

    v17 = [v5 textProperties];
    [v17 setColor:v7];
  }

  [(SBHIconTableViewHeaderFooterView *)self titleLayoutMargins];
  v19.f64[0] = v18;
  v19.f64[1] = v20;
  v22.f64[0] = v21;
  v22.f64[1] = v23;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *MEMORY[0x1E69DC5C0]), vceqq_f64(v22, *(MEMORY[0x1E69DC5C0] + 16))))) & 1) == 0)
  {
    [v5 setDirectionalLayoutMargins:?];
  }

  [(SBHIconTableViewHeaderFooterView *)self setContentConfiguration:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBHIconTableViewHeaderFooterView;
  [(SBHIconTableViewHeaderFooterView *)&v3 prepareForReuse];
  [(SBHIconTableViewHeaderFooterView *)self setTitle:0];
  [(SBHIconTableViewHeaderFooterView *)self setTitleLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    [(SBHIconTableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setTitleLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_titleLayoutMargins.top, v3), vceqq_f64(*&self->_titleLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    self->_titleLayoutMargins = a3;
    [(SBHIconTableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (NSDirectionalEdgeInsets)titleLayoutMargins
{
  top = self->_titleLayoutMargins.top;
  leading = self->_titleLayoutMargins.leading;
  bottom = self->_titleLayoutMargins.bottom;
  trailing = self->_titleLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end