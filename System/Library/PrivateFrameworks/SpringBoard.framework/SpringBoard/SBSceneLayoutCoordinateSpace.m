@interface SBSceneLayoutCoordinateSpace
+ (id)coordinateSpaceForFrame:(CGRect)a3 withinCoordinateSpace:(id)a4;
+ (id)coordinateSpaceForInterfaceOrientation:(int64_t)a3 withReferenceCoordinateSpace:(id)a4 inOrientation:(int64_t)a5;
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (SBSceneLayoutCoordinateSpace)initWithParentCoordinateSpace:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBSceneLayoutCoordinateSpace

+ (id)coordinateSpaceForInterfaceOrientation:(int64_t)a3 withReferenceCoordinateSpace:(id)a4 inOrientation:(int64_t)a5
{
  v7 = a4;
  v8 = [[SBSceneLayoutOrientationCoordinateSpace alloc] initWithInterfaceOrientation:a3 withReferenceCoordinateSpace:v7 inOrientation:a5];

  return v8;
}

+ (id)coordinateSpaceForFrame:(CGRect)a3 withinCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [[SBSceneLayoutFrameCoordinateSpace alloc] initWithFrame:v8 withinCoordinateSpace:x, y, width, height];

  return v9;
}

- (SBSceneLayoutCoordinateSpace)initWithParentCoordinateSpace:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSceneLayoutCoordinateSpace;
  v6 = [(SBSceneLayoutCoordinateSpace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentCoordinateSpace, a3);
  }

  return v7;
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  [(SBSceneLayoutCoordinateSpace *)self convertRect:a4 toCoordinateSpace:a3.x, a3.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  [(SBSceneLayoutCoordinateSpace *)self convertRect:a4 fromCoordinateSpace:a3.x, a3.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:61 description:@"don't use the base implementation"];

  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:66 description:@"don't use the base implementation"];

  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)bounds
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:71 description:@"don't use the base implementation"];

  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)succinctDescription
{
  v2 = [(SBSceneLayoutCoordinateSpace *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSceneLayoutCoordinateSpace *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end