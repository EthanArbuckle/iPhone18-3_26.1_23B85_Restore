@interface _UIOverlayEffectViewEntry
+ (id)newEntryWithFilterType:(id)type color:(id)color alpha:(double)alpha;
+ (id)newEntryWithFilterType:(id)type image:(id)image alpha:(double)alpha;
- (BOOL)canTransitionToEffect:(id)effect;
- (id)description;
- (void)addEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
- (void)setImage:(id)image;
@end

@implementation _UIOverlayEffectViewEntry

+ (id)newEntryWithFilterType:(id)type color:(id)color alpha:(double)alpha
{
  colorCopy = color;
  typeCopy = type;
  v9 = objc_opt_new();
  [v9 setRequirements:0];
  v10 = [typeCopy copy];

  v11 = *(v9 + 16);
  *(v9 + 16) = v10;

  v12 = [colorCopy copy];
  v13 = *(v9 + 24);
  *(v9 + 24) = v12;

  v14 = *(v9 + 32);
  *(v9 + 32) = 0;

  *(v9 + 40) = alpha;
  return v9;
}

+ (id)newEntryWithFilterType:(id)type image:(id)image alpha:(double)alpha
{
  imageCopy = image;
  typeCopy = type;
  v9 = objc_opt_new();
  [v9 setRequirements:imageCopy != 0];
  v10 = [typeCopy copy];

  v11 = *(v9 + 16);
  *(v9 + 16) = v10;

  v12 = *(v9 + 24);
  *(v9 + 24) = 0;

  v13 = *(v9 + 32);
  *(v9 + 32) = imageCopy;

  *(v9 + 40) = alpha;
  return v9;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(_UIVisualEffectViewEntry *)self setRequirements:self->_image != 0];
    imageCopy = v6;
  }
}

- (void)addEffectToView:(id)view
{
  v4 = MEMORY[0x1E6979378];
  viewCopy = view;
  v9 = [[v4 alloc] initWithType:self->_filterType];
  layer = [viewCopy layer];
  [layer setCompositingFilter:v9];

  [viewCopy setBackgroundColor:self->_color];
  image = self->_image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = viewCopy;
  }

  else
  {
    v8 = 0;
  }

  [v8 setImage:image];
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer setCompositingFilter:0];

  [viewCopy setAlpha:1.0];
  _nilBackgroundColor = [viewCopy _nilBackgroundColor];
  [viewCopy setBackgroundColor:_nilBackgroundColor];

  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = viewCopy;
  if (v5)
  {
    v6 = 0;
  }

  [v6 setImage:0];
}

- (BOOL)canTransitionToEffect:(id)effect
{
  filterType = self->_filterType;
  filterType = [effect filterType];
  LOBYTE(filterType) = [(NSString *)filterType isEqualToString:filterType];

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