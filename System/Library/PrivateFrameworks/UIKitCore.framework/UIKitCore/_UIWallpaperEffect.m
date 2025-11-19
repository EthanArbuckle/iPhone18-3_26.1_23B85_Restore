@interface _UIWallpaperEffect
+ (id)wallpaperEffectWithStyle:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithStyle:(int64_t)a3;
- (id)description;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation _UIWallpaperEffect

+ (id)wallpaperEffectWithStyle:(int64_t)a3
{
  v3 = [[a1 alloc] _initWithStyle:a3];

  return v3;
}

- (id)_initWithStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _UIWallpaperEffect;
  v4 = [(_UIWallpaperEffect *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3 > 2)
    {
      switch(a3)
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

    else if (a3)
    {
      if (a3 == 1)
      {
        v4 = +[UIColor secondarySystemBackgroundColor];
      }

      else if (a3 == 2)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
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

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  if (self->_color)
  {
    v6 = a3;
    v7 = objc_alloc_init(_UIWallpaperEffectEntry);
    [(_UIWallpaperEffectEntry *)v7 setBackgroundColor:self->_color];
    [v6 addUnderlay:v7];
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