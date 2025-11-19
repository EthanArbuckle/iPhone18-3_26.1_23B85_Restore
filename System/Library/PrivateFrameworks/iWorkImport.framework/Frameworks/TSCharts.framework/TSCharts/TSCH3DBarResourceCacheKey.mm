@interface TSCH3DBarResourceCacheKey
+ (id)keyWithExtrusionSetting:(const BarExtrusionSetting *)a3;
- (BOOL)isEqual:(id)a3;
- (TSCH3DBarResourceCacheKey)initWithExtrusionSetting:(const BarExtrusionSetting *)a3;
- (id).cxx_construct;
- (unint64_t)hash;
@end

@implementation TSCH3DBarResourceCacheKey

+ (id)keyWithExtrusionSetting:(const BarExtrusionSetting *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithExtrusionSetting_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DBarResourceCacheKey)initWithExtrusionSetting:(const BarExtrusionSetting *)a3
{
  v8.receiver = self;
  v8.super_class = TSCH3DBarResourceCacheKey;
  result = [(TSCH3DBarResourceCacheKey *)&v8 init];
  if (result)
  {
    v5 = *&a3->size;
    v6 = *&a3->details.crossSection.adaptiveThreshold;
    v7 = *&a3->details.spine.bevelHeight;
    *&result->_setting.details.spine.stride = *&a3->details.spine.stride;
    *&result->_setting.details.spine.bevelHeight = v7;
    *&result->_setting.details.crossSection.adaptiveThreshold = v6;
    *&result->_setting.size = v5;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = 2;
  if (!self->_setting.hasBottomBevel)
  {
    v2 = 0;
  }

  v3 = 4;
  if (!self->_setting.isCylindrical)
  {
    v3 = 0;
  }

  return (v2 | self->_setting.hasTopBevel | v3) + (self->_setting.size * 257.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && sub_2761CCB20(&self->_setting, v4 + 8);

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 1065353216;
  *(self + 12) = 1;
  *(self + 10) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 16) = 0;
  *(self + 21) = 0;
  *(self + 13) = 0;
  *(self + 28) = 0;
  return self;
}

@end