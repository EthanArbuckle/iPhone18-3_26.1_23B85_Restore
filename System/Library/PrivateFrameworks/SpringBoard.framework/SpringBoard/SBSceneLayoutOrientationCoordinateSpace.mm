@interface SBSceneLayoutOrientationCoordinateSpace
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (SBSceneLayoutOrientationCoordinateSpace)initWithInterfaceOrientation:(int64_t)orientation withReferenceCoordinateSpace:(id)space inOrientation:(int64_t)inOrientation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBSceneLayoutOrientationCoordinateSpace

- (CGRect)bounds
{
  [(UICoordinateSpace *)self->super._parentCoordinateSpace bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  Width = v6;
  if ((self->_orientation - 3) <= 1)
  {
    Height = CGRectGetHeight(*&v3);
    v16.origin.x = v7;
    v16.origin.y = v8;
    v16.size.width = v9;
    v16.size.height = Width;
    Width = CGRectGetWidth(v16);
    v8 = 0.0;
    v9 = Height;
    v7 = 0.0;
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = Width;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (SBSceneLayoutOrientationCoordinateSpace)initWithInterfaceOrientation:(int64_t)orientation withReferenceCoordinateSpace:(id)space inOrientation:(int64_t)inOrientation
{
  v8.receiver = self;
  v8.super_class = SBSceneLayoutOrientationCoordinateSpace;
  result = [(SBSceneLayoutCoordinateSpace *)&v8 initWithParentCoordinateSpace:space];
  if (result)
  {
    result->_orientation = orientation;
    result->_referenceOrientation = inOrientation;
  }

  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  spaceCopy = space;
  [(UICoordinateSpace *)self->super._parentCoordinateSpace bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (spaceCopy)
  {
    [spaceCopy convertRect:self->super._parentCoordinateSpace fromCoordinateSpace:{v6, v7, v8, v9}];
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  if (space)
  {
    [space convertRect:self->super._parentCoordinateSpace toCoordinateSpace:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  }

  [(UICoordinateSpace *)self->super._parentCoordinateSpace bounds];

  _UIWindowConvertRectFromOrientationToOrientation();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBSceneLayoutOrientationCoordinateSpace;
  prefixCopy = prefix;
  v5 = [(SBSceneLayoutCoordinateSpace *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBSceneLayoutOrientationCoordinateSpace_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __81__SBSceneLayoutOrientationCoordinateSpace_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) bounds];
  v3 = NSStringFromCGRect(v8);
  v4 = [v2 appendObject:v3 withName:@"bounds"];

  v5 = *(*(a1 + 40) + 24);
  switch(v5)
  {
    case 1:
      v6 = @"UIInterfaceOrientationPortrait";
      break;
    case 3:
      v6 = @"UIInterfaceOrientationLandscapeRight";
      break;
    case 4:
      v6 = @"UIInterfaceOrientationLandscapeLeft";
      break;
    case 2:
      v6 = @"UIInterfaceOrientationPortraitUpsideDown";
      break;
    default:
      v6 = 0;
      break;
  }

  return [*(a1 + 32) appendObject:v6 withName:@"interfaceOrientation"];
}

@end