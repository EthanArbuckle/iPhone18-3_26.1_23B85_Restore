@interface SHPaletteLayer
- (SHPaletteLayer)init;
- (SHPaletteLayer)initWithCoder:(id)a3;
- (SHPaletteLayer)initWithPalette:(id)a3;
- (void)setup;
@end

@implementation SHPaletteLayer

- (SHPaletteLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SHPaletteLayer;
  v3 = [(SHPaletteLayer *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = +[SHPalette default];
    palette = v3->_palette;
    v3->_palette = v4;

    [(SHPaletteLayer *)v3 setup];
  }

  return v3;
}

- (SHPaletteLayer)init
{
  v3 = +[SHPalette default];
  v4 = [(SHPaletteLayer *)self initWithPalette:v3];

  return v4;
}

- (SHPaletteLayer)initWithPalette:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHPaletteLayer;
  v6 = [(SHPaletteLayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_palette, a3);
    [(SHPaletteLayer *)v7 setup];
  }

  return v7;
}

- (void)setup
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];
}

@end