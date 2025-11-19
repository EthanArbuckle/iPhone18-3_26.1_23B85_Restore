@interface CRVCQuad
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CRVCQuad)initWithImageSpaceQuad:(id)a3 uuid:(id)a4 homographyGroupID:(int)a5;
- (id)quadAfterScaling:(float)a3;
- (void)updateWithQuad:(id)a3;
@end

@implementation CRVCQuad

- (id)quadAfterScaling:(float)a3
{
  v4 = a3;
  v5 = [[CRImageSpaceQuad alloc] initWithTopLeft:self->_topLeft.x * v4 topRight:self->_topLeft.y * v4 bottomRight:self->_topRight.x * v4 bottomLeft:self->_topRight.y * v4, self->_bottomRight.x * v4, self->_bottomRight.y * v4, self->_bottomLeft.x * v4, self->_bottomLeft.y * v4];
  v6 = self;
  v7 = [(CRVCQuad *)v6 initWithImageSpaceQuad:v5 uuid:v6->_UUID homographyGroupID:v6->_homographyGroupID];

  return v7;
}

- (CRVCQuad)initWithImageSpaceQuad:(id)a3 uuid:(id)a4 homographyGroupID:(int)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = CRVCQuad;
  v10 = [(CRVCQuad *)&v20 init];
  if (v10)
  {
    [v8 topLeft];
    v10->_topLeft.x = v11;
    v10->_topLeft.y = v12;
    [v8 topRight];
    v10->_topRight.x = v13;
    v10->_topRight.y = v14;
    [v8 bottomRight];
    v10->_bottomRight.x = v15;
    v10->_bottomRight.y = v16;
    [v8 bottomLeft];
    v10->_bottomLeft.x = v17;
    v10->_bottomLeft.y = v18;
    objc_storeStrong(&v10->_UUID, a4);
    v10->_homographyGroupID = a5;
  }

  return v10;
}

- (void)updateWithQuad:(id)a3
{
  v4 = a3;
  [v4 topLeft];
  self->_topLeft.x = v5;
  self->_topLeft.y = v6;
  [v4 topRight];
  self->_topRight.x = v7;
  self->_topRight.y = v8;
  [v4 bottomRight];
  self->_bottomRight.x = v9;
  self->_bottomRight.y = v10;
  [v4 bottomLeft];
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