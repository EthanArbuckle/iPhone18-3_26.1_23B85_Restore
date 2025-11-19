@interface _UIDiffuseShadowView
- (CGSize)offset;
- (_UIDiffuseShadowView)initWithFrame:(CGRect)a3;
- (double)radius;
- (void)_updateForCurrentTraits;
- (void)setOffset:(CGSize)a3;
- (void)setPath:(id)a3;
- (void)setRadius:(double)a3;
@end

@implementation _UIDiffuseShadowView

- (_UIDiffuseShadowView)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIDiffuseShadowView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(_UIDiffuseShadowView *)v4 setRadius:56.0];
    [(_UIDiffuseShadowView *)v4 setOffset:0.0, 7.0];
    [(_UIDiffuseShadowView *)v4 setIntensity:0.24];
    v5 = [(UIView *)v4 layer];
    [v5 setShadowPathIsBounds:1];

    [(_UIDiffuseShadowView *)v4 _updateForCurrentTraits];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)v4 registerForTraitChanges:v6 withTarget:v4 action:sel__updateForCurrentTraits];
  }

  return v4;
}

- (void)setRadius:(double)a3
{
  v4 = [(UIView *)self layer];
  [v4 setShadowRadius:a3];
}

- (double)radius
{
  v2 = [(UIView *)self layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIView *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (CGSize)offset
{
  v2 = [(UIView *)self layer];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPath:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  path = self->_path;
  self->_path = v5;

  v7 = [(UIView *)self layer];
  [v7 setShadowPathIsBounds:v4 == 0];

  v8 = [v4 CGPath];
  v9 = [(UIView *)self layer];
  [v9 setShadowPath:v8];
}

- (void)_updateForCurrentTraits
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    v5 = [(UIView *)self layer];
    [v5 setFilters:0];

    [(_UIDiffuseShadowView *)self intensity];
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    v16[2] = xmmword_18A6814A0;
    v16[3] = unk_18A6814B0;
    v16[4] = xmmword_18A6814C0;
    v16[0] = kDarkModeColorMatrix;
    v16[1] = unk_18A681490;
    v10 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v16];
    [v9 setValue:v10 forKey:@"inputColorMatrix"];

    v17[0] = v9;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(_UIDiffuseShadowView *)self intensity];
    v7 = v11 / 0.24;
  }

  v12 = [(UIView *)self layer];
  [v12 setFilters:v8];

  v14 = [(UIView *)self layer];
  v13 = v7;
  *&v15 = v13;
  [v14 setShadowOpacity:v15];
}

@end