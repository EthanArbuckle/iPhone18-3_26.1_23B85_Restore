@interface CRVCQuad
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CRVCQuad)initWithImageSpaceQuad:(id)quad uuid:(id)uuid homographyGroupID:(int)d;
- (id)quadAfterScaling:(float)scaling;
- (void)updateWithQuad:(id)quad;
@end

@implementation CRVCQuad

- (id)quadAfterScaling:(float)scaling
{
  scalingCopy = scaling;
  scalingCopy = [[CRImageSpaceQuad alloc] initWithTopLeft:self->_topLeft.x * scalingCopy topRight:self->_topLeft.y * scalingCopy bottomRight:self->_topRight.x * scalingCopy bottomLeft:self->_topRight.y * scalingCopy, self->_bottomRight.x * scalingCopy, self->_bottomRight.y * scalingCopy, self->_bottomLeft.x * scalingCopy, self->_bottomLeft.y * scalingCopy];
  selfCopy = self;
  v7 = [(CRVCQuad *)selfCopy initWithImageSpaceQuad:scalingCopy uuid:selfCopy->_UUID homographyGroupID:selfCopy->_homographyGroupID];

  return v7;
}

- (CRVCQuad)initWithImageSpaceQuad:(id)quad uuid:(id)uuid homographyGroupID:(int)d
{
  quadCopy = quad;
  uuidCopy = uuid;
  v20.receiver = self;
  v20.super_class = CRVCQuad;
  v10 = [(CRVCQuad *)&v20 init];
  if (v10)
  {
    [quadCopy topLeft];
    v10->_topLeft.x = v11;
    v10->_topLeft.y = v12;
    [quadCopy topRight];
    v10->_topRight.x = v13;
    v10->_topRight.y = v14;
    [quadCopy bottomRight];
    v10->_bottomRight.x = v15;
    v10->_bottomRight.y = v16;
    [quadCopy bottomLeft];
    v10->_bottomLeft.x = v17;
    v10->_bottomLeft.y = v18;
    objc_storeStrong(&v10->_UUID, uuid);
    v10->_homographyGroupID = d;
  }

  return v10;
}

- (void)updateWithQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy topLeft];
  self->_topLeft.x = v5;
  self->_topLeft.y = v6;
  [quadCopy topRight];
  self->_topRight.x = v7;
  self->_topRight.y = v8;
  [quadCopy bottomRight];
  self->_bottomRight.x = v9;
  self->_bottomRight.y = v10;
  [quadCopy bottomLeft];
  v12 = v11;
  v14 = v13;

  self->_bottomLeft.x = v12;
  self->_bottomLeft.y = v14;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

@end