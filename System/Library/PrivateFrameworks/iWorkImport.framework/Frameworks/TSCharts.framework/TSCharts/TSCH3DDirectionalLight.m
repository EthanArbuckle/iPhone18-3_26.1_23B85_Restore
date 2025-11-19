@interface TSCH3DDirectionalLight
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCH3DDirectionalLight)init;
- (TSCH3DDirectionalLight)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (tvec3<float>)direction;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setDirection:(tvec3<float>)a3;
@end

@implementation TSCH3DDirectionalLight

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DDirectionalLight alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DDirectionalLight)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v38.receiver = self;
  v38.super_class = TSCH3DDirectionalLight;
  v8 = [(TSCH3DLight *)&v38 initWithLightArchive:a3 unarchiver:v6];
  if (v8)
  {
    if ((*(a3 + 16) & 0x40) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DDirectionalLight(PersistenceAdditions) initWithArchive:unarchiver:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 276, 0, "invalid archive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    v27 = *(a3 + 9);
    v28 = [TSCH3DVector alloc];
    v33 = &qword_2812F11C0;
    if (v27)
    {
      v33 = v27;
    }

    v34 = v33[3];
    if (v34)
    {
      v35 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, v30, v31, v32, v34, v6);
    }

    else
    {
      v35 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, v30, v31, v32, &qword_2812F15A8, v6);
    }

    direction = v8->_direction;
    v8->_direction = v35;
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = TSCH3DDirectionalLight;
  [(TSCH3DLight *)&v31 saveToLightArchive:a3 archiver:v6];
  *(a3 + 4) |= 0x40u;
  v11 = *(a3 + 9);
  if (!v11)
  {
    v12 = *(a3 + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = sub_276447390(v12);
    *(a3 + 9) = v11;
  }

  direction = self->_direction;
  if (!direction)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DDirectionalLight(PersistenceAdditions) saveToArchive:archiver:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 288, 0, "invalid nil value for '%{public}s'", "_direction");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    direction = self->_direction;
  }

  *(v11 + 16) |= 1u;
  v29 = *(v11 + 24);
  if (!v29)
  {
    v30 = *(v11 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = sub_276447FD4(v30);
    *(v11 + 24) = v29;
  }

  objc_msgSend_saveToArchive_archiver_(direction, v7, v8, v9, v10, v29, v6);
}

- (TSCH3DDirectionalLight)init
{
  v13.receiver = self;
  v13.super_class = TSCH3DDirectionalLight;
  v2 = [(TSCH3DLight *)&v13 init];
  if (v2)
  {
    v3 = [TSCH3DVector alloc];
    v11 = 0;
    v12 = -1082130432;
    v8 = objc_msgSend_initWithVec3_(v3, v4, v5, v6, v7, &v11);
    direction = v2->_direction;
    v2->_direction = v8;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DDirectionalLight;
  v4 = [(TSCH3DLight *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(direction %@)", v4, self->_direction);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = TSCH3DDirectionalLight;
  v5 = [(TSCH3DLight *)&v17 copyWithZone:a3];
  if (v5)
  {
    objc_msgSend_direction(self, v4, v6, v7, v8);
    v15 = v13;
    v16 = v14;
    objc_msgSend_setDirection_(v5, v9, COERCE_DOUBLE(__PAIR64__(HIDWORD(v13), v14)), v10, v11, &v15);
  }

  return v5;
}

- (tvec3<float>)direction
{
  v7 = v2;
  direction = self->_direction;
  if (direction || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DDirectionalLight direction]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDirectionalLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 150, 0, "invalid nil value for '%{public}s'", "_direction"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (direction = self->_direction) != 0))
  {

    direction = objc_msgSend_value3(direction, a2, v3, v4, v5);
  }

  else
  {
    *(v7 + 8) = 0;
    *v7 = 0;
  }

  result.var2 = a2;
  result.var0 = direction;
  result.var1 = *(&direction + 4);
  return result;
}

- (void)setDirection:(tvec3<float>)a3
{
  v3 = *&a3.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec3_(v5, v6, v7, v8, v9, v3);
  direction = self->_direction;
  self->_direction = v10;
}

@end