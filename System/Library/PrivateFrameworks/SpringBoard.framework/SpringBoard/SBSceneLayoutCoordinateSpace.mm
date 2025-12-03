@interface SBSceneLayoutCoordinateSpace
+ (id)coordinateSpaceForFrame:(CGRect)frame withinCoordinateSpace:(id)space;
+ (id)coordinateSpaceForInterfaceOrientation:(int64_t)orientation withReferenceCoordinateSpace:(id)space inOrientation:(int64_t)inOrientation;
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (SBSceneLayoutCoordinateSpace)initWithParentCoordinateSpace:(id)space;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBSceneLayoutCoordinateSpace

+ (id)coordinateSpaceForInterfaceOrientation:(int64_t)orientation withReferenceCoordinateSpace:(id)space inOrientation:(int64_t)inOrientation
{
  spaceCopy = space;
  v8 = [[SBSceneLayoutOrientationCoordinateSpace alloc] initWithInterfaceOrientation:orientation withReferenceCoordinateSpace:spaceCopy inOrientation:inOrientation];

  return v8;
}

+ (id)coordinateSpaceForFrame:(CGRect)frame withinCoordinateSpace:(id)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spaceCopy = space;
  height = [[SBSceneLayoutFrameCoordinateSpace alloc] initWithFrame:spaceCopy withinCoordinateSpace:x, y, width, height];

  return height;
}

- (SBSceneLayoutCoordinateSpace)initWithParentCoordinateSpace:(id)space
{
  spaceCopy = space;
  v9.receiver = self;
  v9.super_class = SBSceneLayoutCoordinateSpace;
  v6 = [(SBSceneLayoutCoordinateSpace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentCoordinateSpace, space);
  }

  return v7;
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  [(SBSceneLayoutCoordinateSpace *)self convertRect:space toCoordinateSpace:point.x, point.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  [(SBSceneLayoutCoordinateSpace *)self convertRect:space fromCoordinateSpace:point.x, point.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:61 description:@"don't use the base implementation"];

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

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:66 description:@"don't use the base implementation"];

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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneLayoutCoordinateSpace.m" lineNumber:71 description:@"don't use the base implementation"];

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
  succinctDescriptionBuilder = [(SBSceneLayoutCoordinateSpace *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneLayoutCoordinateSpace *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end