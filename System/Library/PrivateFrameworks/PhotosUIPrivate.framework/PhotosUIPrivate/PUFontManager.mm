@interface PUFontManager
- (PUFontManager)init;
- (void)_preferredContentSizeChanged:(id)changed;
- (void)dealloc;
- (void)invalidateFonts;
- (void)setAlbumListSectionTitleLabelFont:(id)font;
- (void)setAlbumListSubtitleLabelFont:(id)font;
- (void)setAlbumListTitleLabelFont:(id)font;
@end

@implementation PUFontManager

- (void)invalidateFonts
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__PUFontManager_invalidateFonts__block_invoke;
  v2[3] = &unk_1E7B806B0;
  v2[4] = self;
  [(PUFontManager *)self performChanges:v2];
}

void __32__PUFontManager_invalidateFonts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [v3 albumListTitleLabelFont];
  [v2 setAlbumListTitleLabelFont:v4];

  v5 = *(a1 + 32);
  v6 = +[PUInterfaceManager currentTheme];
  v7 = [v6 albumListSubtitleLabelFont];
  [v5 setAlbumListSubtitleLabelFont:v7];

  v8 = *(a1 + 32);
  v10 = +[PUInterfaceManager currentTheme];
  v9 = [v10 albumListSectionTitleLabelFont];
  [v8 setAlbumListSectionTitleLabelFont:v9];
}

- (void)_preferredContentSizeChanged:(id)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PUFontManager__preferredContentSizeChanged___block_invoke;
  v3[3] = &unk_1E7B806B0;
  v3[4] = self;
  [(PUFontManager *)self performChanges:v3];
}

uint64_t __46__PUFontManager__preferredContentSizeChanged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateFonts];
  v2 = *(a1 + 32);

  return [v2 signalChange:1];
}

- (void)setAlbumListSectionTitleLabelFont:(id)font
{
  fontCopy = font;
  if (self->_albumListSectionTitleLabelFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_albumListSectionTitleLabelFont, font);
    [(PUFontManager *)self _setNeedsUpdate];
    fontCopy = v6;
  }
}

- (void)setAlbumListSubtitleLabelFont:(id)font
{
  fontCopy = font;
  if (self->_albumListSubtitleLabelFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_albumListSubtitleLabelFont, font);
    [(PUFontManager *)self _setNeedsUpdate];
    fontCopy = v6;
  }
}

- (void)setAlbumListTitleLabelFont:(id)font
{
  fontCopy = font;
  if (self->_albumListTitleLabelFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_albumListTitleLabelFont, font);
    [(PUFontManager *)self _setNeedsUpdate];
    fontCopy = v6;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PUFontManager;
  [(PUFontManager *)&v4 dealloc];
}

- (PUFontManager)init
{
  v5.receiver = self;
  v5.super_class = PUFontManager;
  v2 = [(PUFontManager *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__preferredContentSizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    [(PUFontManager *)v2 invalidateFonts];
  }

  return v2;
}

@end