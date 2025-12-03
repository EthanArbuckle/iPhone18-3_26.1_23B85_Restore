@interface PREditorElementLayoutController
+ (CGRect)boundsForElements:(unint64_t)elements;
+ (CGRect)boundsForElements:(unint64_t)elements variant:(unint64_t)variant;
+ (CGRect)frameForElements:(unint64_t)elements;
+ (CGRect)frameForElements:(unint64_t)elements variant:(unint64_t)variant;
+ (void)clearRegisteredBoundingRectForTitleLayout:(unint64_t)layout;
+ (void)registerBoundingRect:(CGRect)rect forTitleLayout:(unint64_t)layout variant:(unint64_t)variant;
- (CGRect)boundsForElements:(unint64_t)elements variant:(unint64_t)variant withBoundingRect:(CGRect)rect;
- (CGRect)boundsForElements:(unint64_t)elements withBoundingRect:(CGRect)rect;
- (CGRect)frameForElements:(unint64_t)elements variant:(unint64_t)variant withBoundingRect:(CGRect)rect;
- (CGRect)frameForElements:(unint64_t)elements withBoundingRect:(CGRect)rect;
- (PREditorElementLayoutController)initWithTraitEnvironment:(id)environment;
- (UITraitEnvironment)traitEnvironment;
- (id)boundsAttributesForElements:(unint64_t)elements variant:(unint64_t)variant titleLayout:(unint64_t)layout withBoundingRect:(CGRect)rect;
- (id)frameAttributesForElements:(unint64_t)elements variant:(unint64_t)variant titleLayout:(unint64_t)layout withBoundingRect:(CGRect)rect;
- (void)setNumberingSystem:(id)system;
@end

@implementation PREditorElementLayoutController

+ (void)registerBoundingRect:(CGRect)rect forTitleLayout:(unint64_t)layout variant:(unint64_t)variant
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = registeredTitleLayoutToBoundingRects;
  if (!registeredTitleLayoutToBoundingRects)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = registeredTitleLayoutToBoundingRects;
    registeredTitleLayoutToBoundingRects = dictionary;

    v11 = registeredTitleLayoutToBoundingRects;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
  v15 = [v11 objectForKeyedSubscript:v14];

  if (!v15)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v17 = registeredTitleLayoutToBoundingRects;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
    [v17 setObject:dictionary2 forKeyedSubscript:v18];
  }

  *v24 = x;
  *&v24[1] = y;
  *&v24[2] = width;
  *&v24[3] = height;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v20 = registeredTitleLayoutToBoundingRects;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
  [v22 setObject:v19 forKeyedSubscript:v23];
}

+ (void)clearRegisteredBoundingRectForTitleLayout:(unint64_t)layout
{
  v3 = registeredTitleLayoutToBoundingRects;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
  [v3 removeObjectForKey:v4];
}

+ (CGRect)frameForElements:(unint64_t)elements
{
  [self frameForElements:elements variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)boundsForElements:(unint64_t)elements
{
  [self boundsForElements:elements variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)frameForElements:(unint64_t)elements variant:(unint64_t)variant
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = frameForElements_variant__mainScreenLayoutController;
  if (!frameForElements_variant__mainScreenLayoutController)
  {
    v8 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:mainScreen];
    v9 = frameForElements_variant__mainScreenLayoutController;
    frameForElements_variant__mainScreenLayoutController = v8;

    v7 = frameForElements_variant__mainScreenLayoutController;
  }

  [mainScreen bounds];
  [v7 frameForElements:elements variant:variant withBoundingRect:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (CGRect)boundsForElements:(unint64_t)elements variant:(unint64_t)variant
{
  [self frameForElements:elements variant:variant];
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (PREditorElementLayoutController)initWithTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = PREditorElementLayoutController;
  v5 = [(PREditorElementLayoutController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_traitEnvironment, environmentCopy);
    v7 = [objc_alloc(MEMORY[0x1E6999638]) initWithTraitEnvironment:environmentCopy];
    csLayoutController = v6->_csLayoutController;
    v6->_csLayoutController = v7;
  }

  return v6;
}

- (void)setNumberingSystem:(id)system
{
  csLayoutController = self->_csLayoutController;
  v4 = CSTimeNumberingSystemStringToType();

  [(CSProminentLayoutController *)csLayoutController setNumberingSystem:v4];
}

- (CGRect)frameForElements:(unint64_t)elements withBoundingRect:(CGRect)rect
{
  [(PREditorElementLayoutController *)self frameForElements:elements variant:0 withBoundingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForElements:(unint64_t)elements withBoundingRect:(CGRect)rect
{
  [(PREditorElementLayoutController *)self boundsForElements:elements variant:0 withBoundingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForElements:(unint64_t)elements variant:(unint64_t)variant withBoundingRect:(CGRect)rect
{
  v5 = [(PREditorElementLayoutController *)self frameAttributesForElements:elements variant:variant titleLayout:0 withBoundingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [v5 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)boundsForElements:(unint64_t)elements variant:(unint64_t)variant withBoundingRect:(CGRect)rect
{
  v5 = [(PREditorElementLayoutController *)self boundsAttributesForElements:elements variant:variant titleLayout:0 withBoundingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [v5 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)frameAttributesForElements:(unint64_t)elements variant:(unint64_t)variant titleLayout:(unint64_t)layout withBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  elementsCopy = elements;
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  if (elements)
  {
    v17 = registeredTitleLayoutToBoundingRects;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (!v21)
    {
LABEL_5:
      if (variant - 1 >= 3)
      {
        variantCopy = 0;
      }

      else
      {
        variantCopy = variant;
      }

      [(CSProminentLayoutController *)self->_csLayoutController frameForElements:elementsCopy & 0x3F | ((elementsCopy >> 6) << 7) variant:variantCopy withBoundingRect:x, y, width, height];
      v39.origin.x = v27;
      v39.origin.y = v28;
      v39.size.width = v29;
      v39.size.height = v30;
      v36.origin.x = v13;
      v36.origin.y = v14;
      v36.size.width = v15;
      v36.size.height = v16;
      v37 = CGRectUnion(v36, v39);
      v13 = v37.origin.x;
      v14 = v37.origin.y;
      v15 = v37.size.width;
      v16 = v37.size.height;
      goto LABEL_9;
    }

    [v21 CGRectValue];
    v38.origin.x = v22;
    v38.origin.y = v23;
    v38.size.width = v24;
    v38.size.height = v25;
    v34.origin.x = v13;
    v34.origin.y = v14;
    v34.size.width = v15;
    v34.size.height = v16;
    v35 = CGRectUnion(v34, v38);
    v13 = v35.origin.x;
    v14 = v35.origin.y;
    v15 = v35.size.width;
    v16 = v35.size.height;

    elementsCopy &= ~1uLL;
  }

  if (elementsCopy)
  {
    goto LABEL_5;
  }

LABEL_9:
  v31 = [[PREditorElementLayoutAttributes alloc] initWithRect:variant variant:0 resolvedTitleLayout:v13, v14, v15, v16];

  return v31;
}

- (id)boundsAttributesForElements:(unint64_t)elements variant:(unint64_t)variant titleLayout:(unint64_t)layout withBoundingRect:(CGRect)rect
{
  v7 = [(PREditorElementLayoutController *)self frameAttributesForElements:elements variant:variant titleLayout:layout withBoundingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [v7 rect];
  v10 = -[PREditorElementLayoutAttributes initWithRect:variant:resolvedTitleLayout:]([PREditorElementLayoutAttributes alloc], "initWithRect:variant:resolvedTitleLayout:", variant, [v7 resolvedTitleLayout], 0.0, 0.0, v8, v9);

  return v10;
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

@end