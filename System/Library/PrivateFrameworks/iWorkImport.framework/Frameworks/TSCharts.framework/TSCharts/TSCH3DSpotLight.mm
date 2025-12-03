@interface TSCH3DSpotLight
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DSpotLight)init;
- (TSCH3DSpotLight)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (tvec3<float>)direction;
- (tvec3<float>)position;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setDirection:(tvec3<float>)direction;
- (void)setPosition:(tvec3<float>)position;
@end

@implementation TSCH3DSpotLight

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCH3DSpotLight alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSCH3DSpotLight)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v43.receiver = self;
  v43.super_class = TSCH3DSpotLight;
  v8 = [(TSCH3DLight *)&v43 initWithLightArchive:archive unarchiver:unarchiverCopy];
  if (v8)
  {
    if ((*(archive + 16) & 0x80) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DSpotLight(PersistenceAdditions) initWithArchive:unarchiver:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 303, 0, "invalid archive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    if (*(archive + 10))
    {
      v27 = *(archive + 10);
    }

    else
    {
      v27 = &qword_2812F11E0;
    }

    v28 = [TSCH3DVector alloc];
    if (v27[3])
    {
      v33 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, v30, v31, v32, v27[3], unarchiverCopy);
    }

    else
    {
      v33 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, v30, v31, v32, &qword_2812F15A8, unarchiverCopy);
    }

    position = v8->_position;
    v8->_position = v33;

    v35 = [TSCH3DVector alloc];
    if (v27[4])
    {
      v40 = objc_msgSend_initWithArchive_unarchiver_(v35, v36, v37, v38, v39, v27[4], unarchiverCopy);
    }

    else
    {
      v40 = objc_msgSend_initWithArchive_unarchiver_(v35, v36, v37, v38, v39, &qword_2812F15A8, unarchiverCopy);
    }

    direction = v8->_direction;
    v8->_direction = v40;

    v8->_cutOff = *(v27 + 10);
    v8->_dropOff = *(v27 + 11);
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v55.receiver = self;
  v55.super_class = TSCH3DSpotLight;
  [(TSCH3DLight *)&v55 saveToLightArchive:archive archiver:archiverCopy];
  *(archive + 4) |= 0x80u;
  v11 = *(archive + 10);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = sub_27644745C(v12);
    *(archive + 10) = v11;
  }

  position = self->_position;
  if (!position)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DSpotLight(PersistenceAdditions) saveToArchive:archiver:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 317, 0, "invalid nil value for '%{public}s'", "_position");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    position = self->_position;
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

  objc_msgSend_saveToArchive_archiver_(position, v7, v8, v9, v10, v29, archiverCopy);
  direction = self->_direction;
  if (!direction)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCH3DSpotLight(PersistenceAdditions) saveToArchive:archiver:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 319, 0, "invalid nil value for '%{public}s'", "_direction");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    direction = self->_direction;
  }

  *(v11 + 16) |= 2u;
  v51 = *(v11 + 32);
  if (!v51)
  {
    v52 = *(v11 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = sub_276447FD4(v52);
    *(v11 + 32) = v51;
  }

  objc_msgSend_saveToArchive_archiver_(direction, v31, v32, v33, v34, v51, archiverCopy);
  v53 = *(v11 + 16);
  *(v11 + 40) = self->_cutOff;
  dropOff = self->_dropOff;
  *(v11 + 16) = v53 | 0xC;
  *(v11 + 44) = dropOff;
}

- (TSCH3DSpotLight)init
{
  v20.receiver = self;
  v20.super_class = TSCH3DSpotLight;
  v2 = [(TSCH3DLight *)&v20 init];
  if (v2)
  {
    v3 = [TSCH3DVector alloc];
    v18 = 0;
    v19 = 1065353216;
    v8 = objc_msgSend_initWithVec3_(v3, v4, v5, v6, v7, &v18);
    position = v2->_position;
    v2->_position = v8;

    v10 = [TSCH3DVector alloc];
    v18 = 0;
    v19 = -1082130432;
    v15 = objc_msgSend_initWithVec3_(v10, v11, v12, v13, v14, &v18);
    direction = v2->_direction;
    v2->_direction = v15;

    v2->_dropOff = 0.0;
    v2->_cutOff = 0.7854;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DSpotLight;
  v4 = [(TSCH3DLight *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(_position %@ _direction %@)", v4, self->_position, self->_direction);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42.receiver = self;
  v42.super_class = TSCH3DSpotLight;
  v5 = [(TSCH3DLight *)&v42 copyWithZone:zone];
  if (v5)
  {
    objc_msgSend_position(self, v4, v6, v7, v8);
    v40 = v38;
    v41 = v39;
    objc_msgSend_setPosition_(v5, v9, COERCE_DOUBLE(__PAIR64__(HIDWORD(v38), v39)), v10, v11, &v40);
    objc_msgSend_direction(self, v12, v13, v14, v15);
    v40 = v36;
    v41 = v37;
    objc_msgSend_setDirection_(v5, v16, COERCE_DOUBLE(__PAIR64__(HIDWORD(v36), v37)), v17, v18, &v40);
    objc_msgSend_cutOff(self, v19, v20, v21, v22);
    objc_msgSend_setCutOff_(v5, v23, v24, v25, v26);
    objc_msgSend_dropOff(self, v27, v28, v29, v30);
    objc_msgSend_setDropOff_(v5, v31, v32, v33, v34);
  }

  return v5;
}

- (tvec3<float>)position
{
  v7 = v2;
  position = self->_position;
  if (position || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DSpotLight position]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 217, 0, "invalid nil value for '%{public}s'", "_position"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (position = self->_position) != 0))
  {

    position = objc_msgSend_value3(position, a2, v3, v4, v5);
  }

  else
  {
    *(v7 + 8) = 0;
    *v7 = 0;
  }

  result.var2 = a2;
  result.var0 = position;
  result.var1 = *(&position + 4);
  return result;
}

- (void)setPosition:(tvec3<float>)position
{
  v3 = *&position.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec3_(v5, v6, v7, v8, v9, v3);
  position = self->_position;
  self->_position = v10;
}

- (tvec3<float>)direction
{
  v7 = v2;
  direction = self->_direction;
  if (direction || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DSpotLight direction]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 226, 0, "invalid nil value for '%{public}s'", "_direction"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (direction = self->_direction) != 0))
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

- (void)setDirection:(tvec3<float>)direction
{
  v3 = *&direction.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec3_(v5, v6, v7, v8, v9, v3);
  direction = self->_direction;
  self->_direction = v10;
}

@end