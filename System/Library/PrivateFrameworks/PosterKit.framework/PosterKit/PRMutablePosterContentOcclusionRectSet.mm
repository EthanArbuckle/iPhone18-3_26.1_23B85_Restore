@interface PRMutablePosterContentOcclusionRectSet
- (PRMutablePosterContentOcclusionRectSet)init;
- (void)addRect:(CGRect)rect withName:(id)name;
@end

@implementation PRMutablePosterContentOcclusionRectSet

- (PRMutablePosterContentOcclusionRectSet)init
{
  v6.receiver = self;
  v6.super_class = PRMutablePosterContentOcclusionRectSet;
  v2 = [(PRPosterContentOcclusionRectSet *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    nameToRectMap = v2->_nameToRectMap;
    v2->_nameToRectMap = dictionary;
  }

  return v2;
}

- (void)addRect:(CGRect)rect withName:(id)name
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nameToRectMap = self->_nameToRectMap;
  nameCopy = name;
  v11 = [(NSDictionary *)nameToRectMap mutableCopy];
  *v15 = x;
  *&v15[1] = y;
  *&v15[2] = width;
  *&v15[3] = height;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v11 setObject:v12 forKeyedSubscript:nameCopy];

  v13 = [v11 copy];
  v14 = self->_nameToRectMap;
  self->_nameToRectMap = v13;
}

@end