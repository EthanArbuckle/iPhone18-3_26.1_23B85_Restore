@interface SBWallpaperLegibilitySettingsProvider
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (SBWallpaperLegibilitySettingsProvider)initWithVariant:(int64_t)variant;
- (_UILegibilitySettings)legibilitySettings;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant;
@end

@implementation SBWallpaperLegibilitySettingsProvider

- (_UILegibilitySettings)legibilitySettings
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [v3 legibilitySettingsForVariant:self->_variant];

  return v4;
}

- (void)dealloc
{
  v3 = +[SBWallpaperController sharedInstance];
  [v3 removeObserver:self forVariant:self->_variant];

  v4.receiver = self;
  v4.super_class = SBWallpaperLegibilitySettingsProvider;
  [(SBWallpaperLegibilitySettingsProvider *)&v4 dealloc];
}

- (SBWallpaperLegibilitySettingsProvider)initWithVariant:(int64_t)variant
{
  v7.receiver = self;
  v7.super_class = SBWallpaperLegibilitySettingsProvider;
  v4 = [(SBWallpaperLegibilitySettingsProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, 0);
    v5->_variant = variant;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = +[SBWallpaperController sharedInstance];
    variant = self->_variant;
    if (obj)
    {
      [v6 addObserver:self forVariant:variant];
    }

    else
    {
      [v6 removeObserver:self forVariant:variant];
    }

    v5 = obj;
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  if (self->_variant == variant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained providerLegibilitySettingsChanged:self];
  }
}

- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant
{
  if (self->_variant == variant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained providerLegibilitySettingsChanged:self];
  }
}

- (SBFLegibilitySettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end