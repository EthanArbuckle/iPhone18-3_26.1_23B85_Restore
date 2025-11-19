@interface _UIOverlayEffectViewEntry
+ (id)newEntryWithFilterType:(id)a3 color:(id)a4 alpha:(double)a5;
+ (id)newEntryWithFilterType:(id)a3 image:(id)a4 alpha:(double)a5;
- (BOOL)canTransitionToEffect:(id)a3;
- (id)description;
- (void)addEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation _UIOverlayEffectViewEntry

+ (id)newEntryWithFilterType:(id)a3 color:(id)a4 alpha:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setRequirements:0];
  v10 = [v8 copy];

  v11 = *(v9 + 16);
  *(v9 + 16) = v10;

  v12 = [v7 copy];
  v13 = *(v9 + 24);
  *(v9 + 24) = v12;

  v14 = *(v9 + 32);
  *(v9 + 32) = 0;

  *(v9 + 40) = a5;
  return v9;
}

+ (id)newEntryWithFilterType:(id)a3 image:(id)a4 alpha:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setRequirements:v7 != 0];
  v10 = [v8 copy];

  v11 = *(v9 + 16);
  *(v9 + 16) = v10;

  v12 = *(v9 + 24);
  *(v9 + 24) = 0;

  v13 = *(v9 + 32);
  *(v9 + 32) = v7;

  *(v9 + 40) = a5;
  return v9;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(_UIVisualEffectViewEntry *)self setRequirements:self->_image != 0];
    v5 = v6;
  }
}

- (void)addEffectToView:(id)a3
{
  v4 = MEMORY[0x1E6979378];
  v5 = a3;
  v9 = [[v4 alloc] initWithType:self->_filterType];
  v6 = [v5 layer];
  [v6 setCompositingFilter:v9];

  [v5 setBackgroundColor:self->_color];
  image = self->_image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  [v8 setImage:image];
}

- (void)removeEffectFromView:(id)a3
{
  v7 = a3;
  v3 = [v7 layer];
  [v3 setCompositingFilter:0];

  [v7 setAlpha:1.0];
  v4 = [v7 _nilBackgroundColor];
  [v7 setBackgroundColor:v4];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = v7;
  if (v5)
  {
    v6 = 0;
  }

  [v6 setImage:0];
}

- (BOOL)canTransitionToEffect:(id)a3
{
  filterType = self->_filterType;
  v4 = [a3 filterType];
  LOBYTE(filterType) = [(NSString *)filterType isEqualToString:v4];

  return filterType;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIOverlayEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" compositingMode=%@ color=%@ image=%@ alpha=%f", self->_filterType, self->_color, self->_image, *&self->_alpha];

  return v4;
}

@end