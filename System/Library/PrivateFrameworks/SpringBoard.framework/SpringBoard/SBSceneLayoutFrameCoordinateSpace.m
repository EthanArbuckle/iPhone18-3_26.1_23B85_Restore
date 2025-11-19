@interface SBSceneLayoutFrameCoordinateSpace
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (SBSceneLayoutFrameCoordinateSpace)initWithFrame:(CGRect)a3 withinCoordinateSpace:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBSceneLayoutFrameCoordinateSpace

- (CGRect)bounds
{
  [(CALayer *)self->_contentLayer bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (SBSceneLayoutFrameCoordinateSpace)initWithFrame:(CGRect)a3 withinCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SBSceneLayoutFrameCoordinateSpace;
  v10 = [(SBSceneLayoutCoordinateSpace *)&v17 initWithParentCoordinateSpace:v9];
  if (v10)
  {
    v11 = [MEMORY[0x277CD9ED0] layer];
    contentLayer = v10->_contentLayer;
    v10->_contentLayer = v11;

    v13 = [MEMORY[0x277CD9ED0] layer];
    containerLayer = v10->_containerLayer;
    v10->_containerLayer = v13;

    [(CALayer *)v10->_contentLayer setFrame:x, y, width, height];
    v15 = v10->_containerLayer;
    [v9 bounds];
    [(CALayer *)v15 setFrame:?];
    [(CALayer *)v10->_containerLayer addSublayer:v10->_contentLayer];
  }

  return v10;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(CALayer *)self->_containerLayer convertRect:self->_contentLayer fromLayer:x, y, width, height];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (v9)
  {
    [v9 convertRect:self->super._parentCoordinateSpace fromCoordinateSpace:{v10, v11, v12, v13}];
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
  }

  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  if (a4)
  {
    [a4 convertRect:self->super._parentCoordinateSpace toCoordinateSpace:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  }

  containerLayer = self->_containerLayer;
  contentLayer = self->_contentLayer;

  [(CALayer *)containerLayer convertRect:contentLayer toLayer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBSceneLayoutFrameCoordinateSpace;
  v4 = a3;
  v5 = [(SBSceneLayoutCoordinateSpace *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBSceneLayoutFrameCoordinateSpace_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __75__SBSceneLayoutFrameCoordinateSpace_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 24) frame];
  v3 = NSStringFromCGRect(v9);
  v4 = [v2 appendObject:v3 withName:@"contentFrame"];

  v5 = *(a1 + 32);
  [*(*(a1 + 40) + 16) bounds];
  v7 = NSStringFromCGRect(v10);
  v6 = [v5 appendObject:v7 withName:@"containerBounds"];
}

@end