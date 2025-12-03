@interface _UIWallpaperEffect
+ (id)wallpaperEffectWithStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (id)_initWithStyle:(int64_t)style;
- (id)description;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIWallpaperEffect

+ (id)wallpaperEffectWithStyle:(int64_t)style
{
  v3 = [[self alloc] _initWithStyle:style];

  return v3;
}

- (id)_initWithStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = _UIWallpaperEffect;
  v4 = [(_UIWallpaperEffect *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (style > 2)
    {
      switch(style)
      {
        case 3:
          v4 = +[UIColor systemGroupedBackgroundColor];
          break;
        case 4:
          v4 = +[UIColor secondarySystemGroupedBackgroundColor];
          break;
        case 5:
          v4 = +[UIColor tertiarySystemGroupedBackgroundColor];
          break;
      }
    }

    else if (style)
    {
      if (style == 1)
      {
        v4 = +[UIColor secondarySystemBackgroundColor];
      }

      else if (style == 2)
      {
        v4 = +[UIColor tertiarySystemBackgroundColor];
      }
    }

    else
    {
      v4 = +[UIColor systemBackgroundColor];
    }

    color = v5->_color;
    v5->_color = v4;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_8;
  }

  color = self->_color;
  if (color == v5->_color)
  {
    goto LABEL_7;
  }

  v7 = [(UIColor *)color isEqual:?];
LABEL_8:

  return v7;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  if (self->_color)
  {
    descriptorCopy = descriptor;
    v7 = objc_alloc_init(_UIWallpaperEffectEntry);
    [(_UIWallpaperEffectEntry *)v7 setBackgroundColor:self->_color];
    [descriptorCopy addUnderlay:v7];
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIWallpaperEffect;
  v3 = [(_UIWallpaperEffect *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" color=%@", self->_color];

  return v4;
}

@end