@interface TSCH3DBarResourceCacheKey
+ (id)keyWithExtrusionSetting:(const BarExtrusionSetting *)setting;
- (BOOL)isEqual:(id)equal;
- (TSCH3DBarResourceCacheKey)initWithExtrusionSetting:(const BarExtrusionSetting *)setting;
- (id).cxx_construct;
- (unint64_t)hash;
@end

@implementation TSCH3DBarResourceCacheKey

+ (id)keyWithExtrusionSetting:(const BarExtrusionSetting *)setting
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithExtrusionSetting_(v4, v5, v6, v7, v8, setting);

  return v9;
}

- (TSCH3DBarResourceCacheKey)initWithExtrusionSetting:(const BarExtrusionSetting *)setting
{
  v8.receiver = self;
  v8.super_class = TSCH3DBarResourceCacheKey;
  result = [(TSCH3DBarResourceCacheKey *)&v8 init];
  if (result)
  {
    v5 = *&setting->size;
    v6 = *&setting->details.crossSection.adaptiveThreshold;
    v7 = *&setting->details.spine.bevelHeight;
    *&result->_setting.details.spine.stride = *&setting->details.spine.stride;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && sub_2761CCB20(&self->_setting, equalCopy + 8);

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