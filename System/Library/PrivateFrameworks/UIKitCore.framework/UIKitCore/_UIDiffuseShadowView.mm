@interface _UIDiffuseShadowView
- (CGSize)offset;
- (_UIDiffuseShadowView)initWithFrame:(CGRect)frame;
- (double)radius;
- (void)_updateForCurrentTraits;
- (void)setOffset:(CGSize)offset;
- (void)setPath:(id)path;
- (void)setRadius:(double)radius;
@end

@implementation _UIDiffuseShadowView

- (_UIDiffuseShadowView)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIDiffuseShadowView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(_UIDiffuseShadowView *)v4 setRadius:56.0];
    [(_UIDiffuseShadowView *)v4 setOffset:0.0, 7.0];
    [(_UIDiffuseShadowView *)v4 setIntensity:0.24];
    layer = [(UIView *)v4 layer];
    [layer setShadowPathIsBounds:1];

    [(_UIDiffuseShadowView *)v4 _updateForCurrentTraits];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)v4 registerForTraitChanges:v6 withTarget:v4 action:sel__updateForCurrentTraits];
  }

  return v4;
}

- (void)setRadius:(double)radius
{
  layer = [(UIView *)self layer];
  [layer setShadowRadius:radius];
}

- (double)radius
{
  layer = [(UIView *)self layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(UIView *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (CGSize)offset
{
  layer = [(UIView *)self layer];
  [layer shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy copy];
  path = self->_path;
  self->_path = v5;

  layer = [(UIView *)self layer];
  [layer setShadowPathIsBounds:pathCopy == 0];

  cGPath = [pathCopy CGPath];
  layer2 = [(UIView *)self layer];
  [layer2 setShadowPath:cGPath];
}

- (void)_updateForCurrentTraits
{
  v17[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    layer = [(UIView *)self layer];
    [layer setFilters:0];

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

  layer2 = [(UIView *)self layer];
  [layer2 setFilters:v8];

  layer3 = [(UIView *)self layer];
  v13 = v7;
  *&v15 = v13;
  [layer3 setShadowOpacity:v15];
}

@end