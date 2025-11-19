@interface VFXLOD
+ (id)levelOfDetailWithModel:(id)a3 screenSpaceRadius:(float)a4;
+ (id)levelOfDetailWithModel:(id)a3 worldSpaceDistance:(float)a4;
- (VFXLOD)initWithCoder:(id)a3;
- (VFXLOD)initWithModel:(id)a3 thresholdMode:(int64_t)a4 lod:(__CFXLOD *)a5;
- (VFXLOD)initWithModel:(id)a3 thresholdMode:(int64_t)a4 thresholdValue:(id)a5;
- (float)screenSpaceRadius;
- (float)worldSpaceDistance;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)thresholdValue;
- (void)_customEncodingOfVFXLOD:(id)a3;
- (void)_didDecodeVFXLOD:(id)a3;
- (void)_setupWithModel:(id)a3 thresholdMode:(int64_t)a4 value:(float)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VFXLOD

- (void)dealloc
{
  lod = self->_lod;
  if (lod)
  {
    CFRelease(lod);
    self->_lod = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXLOD;
  [(VFXLOD *)&v4 dealloc];
}

- (void)_setupWithModel:(id)a3 thresholdMode:(int64_t)a4 value:(float)a5
{
  model = self->_model;
  if (model != a3)
  {

    self->_model = a3;
  }

  self->_mode = a4;
  v10 = objc_msgSend___CFObject(a3, a2, a3, a4);
  self->_lod = sub_1AF1A0910(v10, a4, a5);
}

- (VFXLOD)initWithModel:(id)a3 thresholdMode:(int64_t)a4 lod:(__CFXLOD *)a5
{
  v10.receiver = self;
  v10.super_class = VFXLOD;
  v7 = [(VFXLOD *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = a4;
    if (a5)
    {
      v7->_lod = CFRetain(a5);
    }

    v8->_mode = a4;
  }

  return v8;
}

- (VFXLOD)initWithModel:(id)a3 thresholdMode:(int64_t)a4 thresholdValue:(id)a5
{
  v15.receiver = self;
  v15.super_class = VFXLOD;
  v11 = [(VFXLOD *)&v15 init];
  if (v11)
  {
    objc_msgSend_doubleValue(a5, v8, v9, v10);
    *&v12 = v12;
    objc_msgSend__setupWithModel_thresholdMode_value_(v11, v13, a3, a4, v12);
  }

  return v11;
}

+ (id)levelOfDetailWithModel:(id)a3 screenSpaceRadius:(float)a4
{
  v6 = objc_alloc_init(VFXLOD);
  *&v7 = a4;
  objc_msgSend__setupWithModel_thresholdMode_value_(v6, v8, a3, 1, v7);

  return v6;
}

+ (id)levelOfDetailWithModel:(id)a3 worldSpaceDistance:(float)a4
{
  v6 = objc_alloc_init(VFXLOD);
  *&v7 = a4;
  objc_msgSend__setupWithModel_thresholdMode_value_(v6, v8, a3, 0, v7);

  return v6;
}

- (id)thresholdValue
{
  v5 = sub_1AF1A0A40(self->_lod);
  v6 = MEMORY[0x1E696AD98];
  v7 = v5;

  return objc_msgSend_numberWithDouble_(v6, v2, v3, v4, v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mode = self->_mode;
  model = self->_model;

  return MEMORY[0x1EEE66B58](v4, sel_initWithModel_thresholdMode_lod_, model, mode);
}

- (float)screenSpaceRadius
{
  if (self->_mode == 1)
  {
    return sub_1AF1A0A40(self->_lod);
  }

  else
  {
    return 0.0;
  }
}

- (float)worldSpaceDistance
{
  if (self->_mode)
  {
    return 0.0;
  }

  else
  {
    return sub_1AF1A0A40(self->_lod);
  }
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_model(self, a2, v2, v3);
  v7 = sub_1AF1A0A40(self->_lod);
  return objc_msgSend_stringWithFormat_(v5, v8, @"levelOfDetail <%p>: model:%@ threshold:%f useDistance:%d", v9, self, v6, *&v7, self->_mode == 0);
}

- (void)_customEncodingOfVFXLOD:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = sub_1AF1A0A40(self->_lod);
  v10 = objc_msgSend_numberWithDouble_(v4, v6, v7, v8, v5);

  objc_msgSend_encodeObject_forKey_(a3, v9, v10, @"threshold");
}

- (void)_didDecodeVFXLOD:(id)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"threshold");
  objc_msgSend_doubleValue(v7, v8, v9, v10);
  *&v12 = v12;
  mode = self->_mode;
  model = self->_model;

  objc_msgSend__setupWithModel_thresholdMode_value_(self, v11, model, mode, v12);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend__customEncodingOfVFXLOD_(self, a2, a3, v3);
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_mode, @"mode");
  model = self->_model;
  if (model)
  {

    objc_msgSend_encodeObject_forKey_(a3, v7, model, @"model");
  }
}

- (VFXLOD)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = VFXLOD;
  v7 = [(VFXLOD *)&v20 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v7->_mode = objc_msgSend_decodeIntegerForKey_(a3, v11, @"mode", v12);
    v13 = objc_opt_class();
    v7->_model = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"model");
    objc_msgSend__didDecodeVFXLOD_(v7, v15, a3, v16);
    objc_msgSend_setImmediateMode_(VFXTransaction, v17, v8, v18);
  }

  return v7;
}

@end