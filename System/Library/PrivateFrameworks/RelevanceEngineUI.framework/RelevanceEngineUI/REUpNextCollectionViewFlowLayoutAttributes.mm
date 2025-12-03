@interface REUpNextCollectionViewFlowLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CGRect)unitFrameOnScreen;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation REUpNextCollectionViewFlowLayoutAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = REUpNextCollectionViewFlowLayoutAttributes, [(UICollectionViewLayoutAttributes *)&v11 isEqual:equalCopy]))
  {
    [equalCopy unitFrameOnScreen];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    v9 = CGRectEqualToRect(self->_unitFrameOnScreen, v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = REUpNextCollectionViewFlowLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v7 hash];
  v4 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_unitFrameOnScreen.origin.x, self->_unitFrameOnScreen.origin.y, self->_unitFrameOnScreen.size.width, self->_unitFrameOnScreen.size.height}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REUpNextCollectionViewFlowLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [(REUpNextCollectionViewFlowLayoutAttributes *)self unitFrameOnScreen];
  [v4 setUnitFrameOnScreen:?];
  return v4;
}

- (CGRect)unitFrameOnScreen
{
  x = self->_unitFrameOnScreen.origin.x;
  y = self->_unitFrameOnScreen.origin.y;
  width = self->_unitFrameOnScreen.size.width;
  height = self->_unitFrameOnScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end