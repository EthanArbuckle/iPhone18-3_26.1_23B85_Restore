@interface PUPickerBanner
- (double)height;
- (id)view;
@end

@implementation PUPickerBanner

- (id)view
{
  view = self->_view;
  if (!view)
  {
    v4 = [PUPickerBannerView alloc];
    v5 = [(PUPickerBannerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_view;
    self->_view = v5;

    view = self->_view;
  }

  return view;
}

- (double)height
{
  v2 = +[PUInterfaceManager currentTheme];
  [v2 bannerHeight];
  v4 = v3;

  return v4;
}

@end