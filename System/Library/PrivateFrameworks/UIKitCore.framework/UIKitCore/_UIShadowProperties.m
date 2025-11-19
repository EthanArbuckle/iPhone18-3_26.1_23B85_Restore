@interface _UIShadowProperties
+ (id)propertiesFromView:(id)a3;
- (CGSize)offset;
- (_UIShadowProperties)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updatedShadowWithIntensity:(double)a3;
- (void)applyToView:(id)a3;
- (void)scaleBy:(double)a3;
@end

@implementation _UIShadowProperties

- (_UIShadowProperties)init
{
  v6.receiver = self;
  v6.super_class = _UIShadowProperties;
  v2 = [(_UIShadowProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_UIShadowProperties *)v2 setOpacity:0.0];
    v4 = +[UIColor blackColor];
    [(_UIShadowProperties *)v3 setColor:v4];

    [(_UIShadowProperties *)v3 setOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(_UIShadowProperties *)v3 setRadius:0.0];
  }

  return v3;
}

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)propertiesFromView:(id)a3
{
  v3 = [a3 _outermostLayer];
  v4 = objc_opt_new();
  [v3 shadowOpacity];
  [v4 setOpacity:v5];
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v3 shadowColor]);
  [v4 setColor:v6];

  [v3 shadowOffset];
  [v4 setOffset:?];
  [v3 shadowRadius];
  [v4 setRadius:?];

  return v4;
}

- (void)applyToView:(id)a3
{
  v6 = [a3 _outermostLayer];
  v4 = [(_UIShadowProperties *)self color];
  [v6 setShadowColor:{objc_msgSend(v4, "CGColor")}];

  [(_UIShadowProperties *)self offset];
  [v6 setShadowOffset:?];
  [(_UIShadowProperties *)self radius];
  [v6 setShadowRadius:?];
  [(_UIShadowProperties *)self opacity];
  *&v5 = v5;
  [v6 setShadowOpacity:v5];
}

- (void)scaleBy:(double)a3
{
  [(_UIShadowProperties *)self radius];
  [(_UIShadowProperties *)self setRadius:v5 * a3];
  [(_UIShadowProperties *)self offset];
  v7 = v6 * a3;
  [(_UIShadowProperties *)self offset];
  v9 = v8 * a3;

  [(_UIShadowProperties *)self setOffset:v7, v9];
}

- (id)updatedShadowWithIntensity:(double)a3
{
  v4 = [(_UIShadowProperties *)self copy];
  [v4 opacity];
  [v4 setOpacity:{fmax(fmin(a3, 1.0), 0.0) * v5}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(_UIShadowProperties *)self opacity];
  [v4 setOpacity:?];
  v5 = [(_UIShadowProperties *)self color];
  [v4 setColor:v5];

  [(_UIShadowProperties *)self offset];
  [v4 setOffset:?];
  [(_UIShadowProperties *)self radius];
  [v4 setRadius:?];
  return v4;
}

@end