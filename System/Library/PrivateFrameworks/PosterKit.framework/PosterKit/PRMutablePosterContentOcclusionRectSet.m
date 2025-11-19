@interface PRMutablePosterContentOcclusionRectSet
- (PRMutablePosterContentOcclusionRectSet)init;
- (void)addRect:(CGRect)a3 withName:(id)a4;
@end

@implementation PRMutablePosterContentOcclusionRectSet

- (PRMutablePosterContentOcclusionRectSet)init
{
  v6.receiver = self;
  v6.super_class = PRMutablePosterContentOcclusionRectSet;
  v2 = [(PRPosterContentOcclusionRectSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    nameToRectMap = v2->_nameToRectMap;
    v2->_nameToRectMap = v3;
  }

  return v2;
}

- (void)addRect:(CGRect)a3 withName:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  nameToRectMap = self->_nameToRectMap;
  v10 = a4;
  v11 = [(NSDictionary *)nameToRectMap mutableCopy];
  *v15 = x;
  *&v15[1] = y;
  *&v15[2] = width;
  *&v15[3] = height;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v11 setObject:v12 forKeyedSubscript:v10];

  v13 = [v11 copy];
  v14 = self->_nameToRectMap;
  self->_nameToRectMap = v13;
}

@end