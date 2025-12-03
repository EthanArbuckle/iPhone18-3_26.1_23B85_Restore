@interface SBHIconTableViewHeaderFooterView
- (NSDirectionalEdgeInsets)titleLayoutMargins;
- (SBHIconTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
- (void)setTitleLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation SBHIconTableViewHeaderFooterView

- (SBHIconTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SBHIconTableViewHeaderFooterView;
  v3 = [(SBHIconTableViewHeaderFooterView *)&v6 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SBHIconTableViewHeaderFooterView *)v3 setBackgroundView:v4];
  }

  return v3;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  defaultContentConfiguration = [(SBHIconTableViewHeaderFooterView *)self defaultContentConfiguration];
  v5 = [defaultContentConfiguration updatedConfigurationForState:stateCopy];

  tableView = [(SBHIconTableViewHeaderFooterView *)self tableView];
  sectionIndexColor = [tableView sectionIndexColor];

  title = [(SBHIconTableViewHeaderFooterView *)self title];
  if ([title isEqualToString:*MEMORY[0x1E69DE3E0]])
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"appclip"];
    [v5 setImage:v9];

    imageProperties = [v5 imageProperties];
    [imageProperties setTintColor:sectionIndexColor];
  }

  else
  {
    traitCollection = [stateCopy traitCollection];
    v12 = MEMORY[0x1E69DD1B8];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v14 = SBHContentSizeCategoryClip(preferredContentSizeCategory, *MEMORY[0x1E69DDC88], *MEMORY[0x1E69DDC28]);
    imageProperties = [v12 traitCollectionWithPreferredContentSizeCategory:v14];

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40] compatibleWithTraitCollection:imageProperties];
    [v5 setText:title];
    textProperties = [v5 textProperties];
    [textProperties setFont:v15];

    textProperties2 = [v5 textProperties];
    [textProperties2 setColor:sectionIndexColor];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    [(SBHIconTableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setTitleLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_titleLayoutMargins.top, v3), vceqq_f64(*&self->_titleLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    self->_titleLayoutMargins = margins;
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