@interface CRLatticeRun
- (CGRect)rect;
- (CRLatticeRun)initWithRect:(CGRect)a3;
@end

@implementation CRLatticeRun

- (CRLatticeRun)initWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CRLatticeRun;
  v7 = [(CRLatticeRun *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    mutablePaths = v7->_mutablePaths;
    v7->_mutablePaths = v8;

    v7->_rect.origin.x = x;
    v7->_rect.origin.y = y;
    v7->_rect.size.width = width;
    v7->_rect.size.height = height;
  }

  return v7;
}

- (CGRect)rect
{
  objc_copyStruct(v6, &self->_rect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end