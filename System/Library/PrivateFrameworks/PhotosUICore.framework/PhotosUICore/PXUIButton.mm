@interface PXUIButton
+ (id)buttonWithWithCursorEffect:(int64_t)a3 target:(id)a4 action:(SEL)a5;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_pointerRectForCurrentState;
- (PXUIButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setPx_configuration:(id)a3;
@end

@implementation PXUIButton

- (CGRect)_pointerRectForCurrentState
{
  [(PXUIButton *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXUIButton *)self state];
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  v16 = [(PXUIButton *)self titleForState:v11];

  if (v16)
  {
    v17 = [(PXUIButton *)self titleLabel];
    [v17 frame];
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
  }

  v32.origin.x = v12;
  v32.origin.y = v13;
  v32.size.width = v14;
  v32.size.height = v15;
  if (CGRectIsNull(v32))
  {
    v22 = [(PXUIButton *)self imageForState:v11];

    if (v22)
    {
      v23 = [(PXUIButton *)self imageView];
      [v23 frame];
      v12 = v24;
      v13 = v25;
      v14 = v26;
      v15 = v27;
    }
  }

  v33.origin.x = v12;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  if (!CGRectIsNull(v33))
  {
    PXPointAdd();
  }

  v28 = v4;
  v29 = v6;
  v30 = v8;
  v31 = v10;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXUIButton *)self px_configuration];
  v9 = [v8 cursorEffect];
  if (v9)
  {
    if (v9 != 1 && v9 != 2)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class _ClassForCursorEffect(PXUIButtonCursorEffect)"];
      [v12 handleFailureInFunction:v13 file:@"PXUIButton.m" lineNumber:26 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = objc_opt_class();
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  [v10 effectWithPreview:{objc_msgSend(objc_alloc(MEMORY[0x1E69DD070]), "initWithView:", self)}];
  objc_claimAutoreleasedReturnValue();
  PXEdgeInsetsMake();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  px_configuration = self->_px_configuration;
  v6 = a5;
  if ([(PXUIButtonConfiguration *)px_configuration cursorEffect])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXUIButton;
  v5 = [(PXUIButton *)&v7 pointInside:a4 withEvent:?];
  [(PXUIButton *)self bounds];
  if (!CGRectIsEmpty(v8))
  {
    [(PXUIButton *)self px_configuration];
    [objc_claimAutoreleasedReturnValue() hitTestOutset];
    sub_1A524D1F4();
  }

  return v5;
}

- (void)setPx_configuration:(id)a3
{
  v4 = a3;
  px_configuration = self->_px_configuration;
  if (px_configuration != v4)
  {
    v10 = v4;
    v6 = [(PXUIButtonConfiguration *)px_configuration cursorEffect];
    if (v6 != [(PXUIButtonConfiguration *)v10 cursorEffect])
    {
      v7 = [(PXUIButton *)self pointerInteraction];
      [v7 invalidate];
    }

    v8 = [(PXUIButtonConfiguration *)v10 copy];
    v9 = self->_px_configuration;
    self->_px_configuration = v8;

    v4 = v10;
  }
}

- (PXUIButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PXUIButton;
  v3 = [(PXUIButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PXUIButtonConfiguration);
    px_configuration = v3->_px_configuration;
    v3->_px_configuration = v4;

    v6 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    pointerInteraction = v3->_pointerInteraction;
    v3->_pointerInteraction = v6;

    [(PXUIButton *)v3 addInteraction:v3->_pointerInteraction];
  }

  return v3;
}

+ (id)buttonWithWithCursorEffect:(int64_t)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = objc_alloc_init(a1);
  v10 = [PXUIButtonConfiguration configurationWithCursorEffect:a3];
  [v9 setPx_configuration:v10];

  [v9 addTarget:v8 action:a5 forControlEvents:0x2000];

  return v9;
}

@end