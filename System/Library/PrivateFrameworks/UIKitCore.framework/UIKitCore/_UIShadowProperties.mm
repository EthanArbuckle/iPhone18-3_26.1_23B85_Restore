@interface _UIShadowProperties
+ (id)propertiesFromView:(id)view;
- (CGSize)offset;
- (_UIShadowProperties)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)updatedShadowWithIntensity:(double)intensity;
- (void)applyToView:(id)view;
- (void)scaleBy:(double)by;
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

+ (id)propertiesFromView:(id)view
{
  _outermostLayer = [view _outermostLayer];
  v4 = objc_opt_new();
  [_outermostLayer shadowOpacity];
  [v4 setOpacity:v5];
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [_outermostLayer shadowColor]);
  [v4 setColor:v6];

  [_outermostLayer shadowOffset];
  [v4 setOffset:?];
  [_outermostLayer shadowRadius];
  [v4 setRadius:?];

  return v4;
}

- (void)applyToView:(id)view
{
  _outermostLayer = [view _outermostLayer];
  color = [(_UIShadowProperties *)self color];
  [_outermostLayer setShadowColor:{objc_msgSend(color, "CGColor")}];

  [(_UIShadowProperties *)self offset];
  [_outermostLayer setShadowOffset:?];
  [(_UIShadowProperties *)self radius];
  [_outermostLayer setShadowRadius:?];
  [(_UIShadowProperties *)self opacity];
  *&v5 = v5;
  [_outermostLayer setShadowOpacity:v5];
}

- (void)scaleBy:(double)by
{
  [(_UIShadowProperties *)self radius];
  [(_UIShadowProperties *)self setRadius:v5 * by];
  [(_UIShadowProperties *)self offset];
  v7 = v6 * by;
  [(_UIShadowProperties *)self offset];
  v9 = v8 * by;

  [(_UIShadowProperties *)self setOffset:v7, v9];
}

- (id)updatedShadowWithIntensity:(double)intensity
{
  v4 = [(_UIShadowProperties *)self copy];
  [v4 opacity];
  [v4 setOpacity:{fmax(fmin(intensity, 1.0), 0.0) * v5}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(_UIShadowProperties *)self opacity];
  [v4 setOpacity:?];
  color = [(_UIShadowProperties *)self color];
  [v4 setColor:color];

  [(_UIShadowProperties *)self offset];
  [v4 setOffset:?];
  [(_UIShadowProperties *)self radius];
  [v4 setRadius:?];
  return v4;
}

@end