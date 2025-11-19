@interface TSCH3DBaseImageTextureTiling
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSCH3DBaseImageTextureTiling)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (tvec2<float>)scale;
- (unint64_t)hash;
- (void)restoreDefault;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setScale:(tvec2<float>)a3;
@end

@implementation TSCH3DBaseImageTextureTiling

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = TSCH3DBaseImageTextureTiling;
  v5 = [(TSCH3DTextureTiling *)&v15 copyWithZone:a3];
  if (v5)
  {
    objc_msgSend_scale(self, v4, v6, v7, v8);
    v14 = v13;
    objc_msgSend_setScale_(v5, v9, v13, v10, v11, &v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (v6)
    {
      objc_msgSend_scale(self, v5, v7, v8, v9);
      objc_msgSend_scale(v6, v10, v11, v12, v13);
      v15 = 0;
      if (v20 == v18)
      {
        *&v14 = v21;
        if (v21 == v19)
        {
          v17.receiver = self;
          v17.super_class = TSCH3DBaseImageTextureTiling;
          v15 = [(TSCH3DTextureTiling *)&v17 isEqual:v4, v14];
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = TSCH3DBaseImageTextureTiling;
  v3 = [(TSCH3DTextureTiling *)&v14 hash];
  objc_msgSend_scale(self, v4, v5, v6, v7);
  *v13 = v12;
  v13[1] = 0;
  return v3 + objc_msgSend_hashVec4_(TSCH3DVector, v8, v12, v9, v10, v13);
}

- (void)restoreDefault
{
  v15.receiver = self;
  v15.super_class = TSCH3DBaseImageTextureTiling;
  [(TSCH3DTextureTiling *)&v15 restoreDefault];
  v3 = [TSCH3DVector alloc];
  __asm { FMOV            V0.2S, #1.0 }

  v14 = _D0;
  v12 = objc_msgSend_initWithVec2_(v3, v9, _D0, v10, v11, &v14);
  scale = self->_scale;
  self->_scale = v12;

  self->_rotation = 0.0;
}

- (tvec2<float>)scale
{
  v7 = v2;
  scale = self->_scale;
  if (scale || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DBaseImageTextureTiling scale]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureTiling.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 95, 0, "invalid nil value for '%{public}s'", "_scale"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (scale = self->_scale) != 0))
  {

    return MEMORY[0x2821F9670](scale, sel_value2, v3, v4, v5);
  }

  else
  {
    *v7 = 0;
  }

  return scale;
}

- (void)setScale:(tvec2<float>)a3
{
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec2_(v5, v6, v7, v8, v9, a3);
  scale = self->_scale;
  self->_scale = v10;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DBaseImageTextureTiling alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DBaseImageTextureTiling)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = TSCH3DBaseImageTextureTiling;
  v7 = [(TSCH3DTextureTiling *)&v22 init];
  v12 = v7;
  if (v7)
  {
    objc_msgSend_restoreDefault(v7, v8, v9, v10, v11);
    v13 = *(a3 + 4);
    if (v13)
    {
      v14 = [TSCH3DVector alloc];
      if (*(a3 + 3))
      {
        v19 = objc_msgSend_initWithArchive_unarchiver_(v14, v15, v16, v17, v18, *(a3 + 3), v6);
      }

      else
      {
        v19 = objc_msgSend_initWithArchive_unarchiver_(v14, v15, v16, v17, v18, &qword_2812F15A8, v6);
      }

      scale = v12->_scale;
      v12->_scale = v19;

      v13 = *(a3 + 4);
    }

    if ((v13 & 2) != 0)
    {
      v12->_rotation = *(a3 + 8);
    }
  }

  return v12;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v29 = a4;
  scale = self->_scale;
  if (!scale)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DBaseImageTextureTiling(PersistenceAdditions) saveToArchive:archiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureTiling.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 205, 0, "invalid nil value for '%{public}s'", "_scale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    scale = self->_scale;
  }

  *(a3 + 4) |= 1u;
  v26 = *(a3 + 3);
  if (!v26)
  {
    v27 = *(a3 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = sub_276447FD4(v27);
    *(a3 + 3) = v26;
  }

  objc_msgSend_saveToArchive_archiver_(scale, v6, v7, v8, v9, v26, v29);
  rotation = self->_rotation;
  *(a3 + 4) |= 2u;
  *(a3 + 8) = rotation;
}

@end