@interface SBHViewDarkeningHelper
- (NSString)description;
- (SBHViewDarkeningHelper)initWithView:(id)a3;
- (UIView)view;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)setBrightness:(double)a3;
@end

@implementation SBHViewDarkeningHelper

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (SBHViewDarkeningHelper)initWithView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBHViewDarkeningHelper;
  v5 = [(SBHViewDarkeningHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
    v6->_brightness = 1.0;
  }

  return v6;
}

- (void)setBrightness:(double)a3
{
  if (self->_brightness == a3)
  {
    return;
  }

  self->_brightness = a3;
  v5 = [(SBHViewDarkeningHelper *)self view];
  v11 = [v5 layer];

  brightness = self->_brightness;
  multiplyFilter = self->_multiplyFilter;
  if (brightness < 1.0)
  {
    if (!multiplyFilter)
    {
      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
      v9 = self->_multiplyFilter;
      self->_multiplyFilter = v8;

      [(CAFilter *)self->_multiplyFilter setName:@"SBHViewDarkening"];
      [v11 sbh_addFilter:self->_multiplyFilter];
      multiplyFilter = self->_multiplyFilter;
      brightness = self->_brightness;
    }

    v10 = [MEMORY[0x1E69DC888] colorWithWhite:brightness alpha:1.0];
    -[CAFilter setValue:forKey:](multiplyFilter, "setValue:forKey:", [v10 CGColor], @"inputColor");
    goto LABEL_9;
  }

  if (multiplyFilter)
  {
    [v11 sbh_removeFilterWithName:@"SBHViewDarkening"];
    v10 = self->_multiplyFilter;
    self->_multiplyFilter = 0;
LABEL_9:
  }
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37__SBHViewDarkeningHelper_description__block_invoke;
  v10 = &unk_1E8088F18;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(SBHViewDarkeningHelper *)self view];
  v5 = [v7 appendObject:v4 withName:@"view"];

  [(SBHViewDarkeningHelper *)self brightness];
  v6 = [v7 appendFloat:@"brightness" withName:?];
}

@end