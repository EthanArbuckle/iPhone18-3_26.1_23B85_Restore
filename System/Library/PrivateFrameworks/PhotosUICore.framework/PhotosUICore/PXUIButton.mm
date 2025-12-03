@interface PXUIButton
+ (id)buttonWithWithCursorEffect:(int64_t)effect target:(id)target action:(SEL)action;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_pointerRectForCurrentState;
- (PXUIButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setPx_configuration:(id)px_configuration;
@end

@implementation PXUIButton

- (CGRect)_pointerRectForCurrentState
{
  [(PXUIButton *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  state = [(PXUIButton *)self state];
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  v16 = [(PXUIButton *)self titleForState:state];

  if (v16)
  {
    titleLabel = [(PXUIButton *)self titleLabel];
    [titleLabel frame];
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
    v22 = [(PXUIButton *)self imageForState:state];

    if (v22)
    {
      imageView = [(PXUIButton *)self imageView];
      [imageView frame];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  px_configuration = [(PXUIButton *)self px_configuration];
  cursorEffect = [px_configuration cursorEffect];
  if (cursorEffect)
  {
    if (cursorEffect != 1 && cursorEffect != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class _ClassForCursorEffect(PXUIButtonCursorEffect)"];
      [currentHandler handleFailureInFunction:v13 file:@"PXUIButton.m" lineNumber:26 description:@"Code which should be unreachable has been reached"];

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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  px_configuration = self->_px_configuration;
  regionCopy = region;
  if ([(PXUIButtonConfiguration *)px_configuration cursorEffect])
  {
    v7 = regionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PXUIButton;
  v5 = [(PXUIButton *)&v7 pointInside:event withEvent:?];
  [(PXUIButton *)self bounds];
  if (!CGRectIsEmpty(v8))
  {
    [(PXUIButton *)self px_configuration];
    [objc_claimAutoreleasedReturnValue() hitTestOutset];
    sub_1A524D1F4();
  }

  return v5;
}

- (void)setPx_configuration:(id)px_configuration
{
  px_configurationCopy = px_configuration;
  px_configuration = self->_px_configuration;
  if (px_configuration != px_configurationCopy)
  {
    v10 = px_configurationCopy;
    cursorEffect = [(PXUIButtonConfiguration *)px_configuration cursorEffect];
    if (cursorEffect != [(PXUIButtonConfiguration *)v10 cursorEffect])
    {
      pointerInteraction = [(PXUIButton *)self pointerInteraction];
      [pointerInteraction invalidate];
    }

    v8 = [(PXUIButtonConfiguration *)v10 copy];
    v9 = self->_px_configuration;
    self->_px_configuration = v8;

    px_configurationCopy = v10;
  }
}

- (PXUIButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXUIButton;
  v3 = [(PXUIButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

+ (id)buttonWithWithCursorEffect:(int64_t)effect target:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = objc_alloc_init(self);
  v10 = [PXUIButtonConfiguration configurationWithCursorEffect:effect];
  [v9 setPx_configuration:v10];

  [v9 addTarget:targetCopy action:action forControlEvents:0x2000];

  return v9;
}

@end