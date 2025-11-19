@interface PREditorElementLayoutController
+ (CGRect)boundsForElements:(unint64_t)a3;
+ (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4;
+ (CGRect)frameForElements:(unint64_t)a3;
+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4;
+ (void)clearRegisteredBoundingRectForTitleLayout:(unint64_t)a3;
+ (void)registerBoundingRect:(CGRect)a3 forTitleLayout:(unint64_t)a4 variant:(unint64_t)a5;
- (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5;
- (CGRect)boundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5;
- (CGRect)frameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (PREditorElementLayoutController)initWithTraitEnvironment:(id)a3;
- (UITraitEnvironment)traitEnvironment;
- (id)boundsAttributesForElements:(unint64_t)a3 variant:(unint64_t)a4 titleLayout:(unint64_t)a5 withBoundingRect:(CGRect)a6;
- (id)frameAttributesForElements:(unint64_t)a3 variant:(unint64_t)a4 titleLayout:(unint64_t)a5 withBoundingRect:(CGRect)a6;
- (void)setNumberingSystem:(id)a3;
@end

@implementation PREditorElementLayoutController

+ (void)registerBoundingRect:(CGRect)a3 forTitleLayout:(unint64_t)a4 variant:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = registeredTitleLayoutToBoundingRects;
  if (!registeredTitleLayoutToBoundingRects)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = registeredTitleLayoutToBoundingRects;
    registeredTitleLayoutToBoundingRects = v12;

    v11 = registeredTitleLayoutToBoundingRects;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v15 = [v11 objectForKeyedSubscript:v14];

  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v17 = registeredTitleLayoutToBoundingRects;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }

  *v24 = x;
  *&v24[1] = y;
  *&v24[2] = width;
  *&v24[3] = height;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v20 = registeredTitleLayoutToBoundingRects;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v22 setObject:v19 forKeyedSubscript:v23];
}

+ (void)clearRegisteredBoundingRectForTitleLayout:(unint64_t)a3
{
  v3 = registeredTitleLayoutToBoundingRects;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v3 removeObjectForKey:v4];
}

+ (CGRect)frameForElements:(unint64_t)a3
{
  [a1 frameForElements:a3 variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)boundsForElements:(unint64_t)a3
{
  [a1 boundsForElements:a3 variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4
{
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = frameForElements_variant__mainScreenLayoutController;
  if (!frameForElements_variant__mainScreenLayoutController)
  {
    v8 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:v6];
    v9 = frameForElements_variant__mainScreenLayoutController;
    frameForElements_variant__mainScreenLayoutController = v8;

    v7 = frameForElements_variant__mainScreenLayoutController;
  }

  [v6 bounds];
  [v7 frameForElements:a3 variant:a4 withBoundingRect:?];
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

+ (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4
{
  [a1 frameForElements:a3 variant:a4];
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (PREditorElementLayoutController)initWithTraitEnvironment:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PREditorElementLayoutController;
  v5 = [(PREditorElementLayoutController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_traitEnvironment, v4);
    v7 = [objc_alloc(MEMORY[0x1E6999638]) initWithTraitEnvironment:v4];
    csLayoutController = v6->_csLayoutController;
    v6->_csLayoutController = v7;
  }

  return v6;
}

- (void)setNumberingSystem:(id)a3
{
  csLayoutController = self->_csLayoutController;
  v4 = CSTimeNumberingSystemStringToType();

  [(CSProminentLayoutController *)csLayoutController setNumberingSystem:v4];
}

- (CGRect)frameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(PREditorElementLayoutController *)self frameForElements:a3 variant:0 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(PREditorElementLayoutController *)self boundsForElements:a3 variant:0 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5
{
  v5 = [(PREditorElementLayoutController *)self frameAttributesForElements:a3 variant:a4 titleLayout:0 withBoundingRect:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
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

- (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5
{
  v5 = [(PREditorElementLayoutController *)self boundsAttributesForElements:a3 variant:a4 titleLayout:0 withBoundingRect:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
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

- (id)frameAttributesForElements:(unint64_t)a3 variant:(unint64_t)a4 titleLayout:(unint64_t)a5 withBoundingRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a3;
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  if (a3)
  {
    v17 = registeredTitleLayoutToBoundingRects;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (!v21)
    {
LABEL_5:
      if (a4 - 1 >= 3)
      {
        v26 = 0;
      }

      else
      {
        v26 = a4;
      }

      [(CSProminentLayoutController *)self->_csLayoutController frameForElements:v11 & 0x3F | ((v11 >> 6) << 7) variant:v26 withBoundingRect:x, y, width, height];
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

    v11 &= ~1uLL;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_9:
  v31 = [[PREditorElementLayoutAttributes alloc] initWithRect:a4 variant:0 resolvedTitleLayout:v13, v14, v15, v16];

  return v31;
}

- (id)boundsAttributesForElements:(unint64_t)a3 variant:(unint64_t)a4 titleLayout:(unint64_t)a5 withBoundingRect:(CGRect)a6
{
  v7 = [(PREditorElementLayoutController *)self frameAttributesForElements:a3 variant:a4 titleLayout:a5 withBoundingRect:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  [v7 rect];
  v10 = -[PREditorElementLayoutAttributes initWithRect:variant:resolvedTitleLayout:]([PREditorElementLayoutAttributes alloc], "initWithRect:variant:resolvedTitleLayout:", a4, [v7 resolvedTitleLayout], 0.0, 0.0, v8, v9);

  return v10;
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

@end