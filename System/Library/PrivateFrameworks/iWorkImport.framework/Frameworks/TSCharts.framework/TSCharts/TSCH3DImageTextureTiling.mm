@interface TSCH3DImageTextureTiling
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (TSCH3DImageTextureTiling)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)copyFromBaseImageTextureTiling:(id)tiling;
- (void)restoreDefault;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCH3DImageTextureTiling

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCH3DImageTextureTiling;
  result = [(TSCH3DBaseImageTextureTiling *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 5) = *(&self->super._rotation + 1);
    *(result + 6) = self->_mode;
    *(result + 7) = self->_wrap;
    *(result + 8) = self->_face;
    *(result + 9) = self->_xPosition;
    *(result + 10) = self->_yPosition;
    *(result + 11) = self->_sContinuity;
    *(result + 48) = self->_tContinuity;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5;
    if (v5 && *(&self->super._rotation + 1) == *(v5 + 20) && self->_mode == *(v5 + 24) && self->_wrap == *(v5 + 28) && self->_face == *(v5 + 32) && self->_xPosition == *(v5 + 36) && self->_yPosition == *(v5 + 40) && self->_sContinuity == *(v5 + 44) && LOBYTE(self->_tContinuity) == *(v5 + 48))
    {
      v9.receiver = self;
      v9.super_class = TSCH3DImageTextureTiling;
      v7 = [(TSCH3DBaseImageTextureTiling *)&v9 isEqual:equalCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSCH3DImageTextureTiling;
  return [(TSCH3DBaseImageTextureTiling *)&v3 hash]+ *(&self->super._rotation + 1) + self->_mode + self->_wrap + self->_face + self->_xPosition + self->_yPosition + self->_sContinuity + LOBYTE(self->_tContinuity);
}

- (void)restoreDefault
{
  v3.receiver = self;
  v3.super_class = TSCH3DImageTextureTiling;
  [(TSCH3DBaseImageTextureTiling *)&v3 restoreDefault];
  *(&self->super._rotation + 1) = 1;
  self->_mode = 0;
  self->_wrap = 0;
  self->_face = 0;
  self->_xPosition = 0;
  self->_yPosition = 0;
  self->_sContinuity = 0;
  LOBYTE(self->_tContinuity) = 0;
}

- (void)copyFromBaseImageTextureTiling:(id)tiling
{
  tilingCopy = tiling;
  v9 = tilingCopy;
  if (tilingCopy)
  {
    objc_msgSend_scale(tilingCopy, v5, v6, v7, v8);
    v10 = v19;
  }

  else
  {
    v19 = 0.0;
    v10 = 0.0;
  }

  v20 = v10;
  objc_msgSend_setScale_(self, v5, v10, v7, v8, &v20, *&v19);
  objc_msgSend_rotation(v9, v11, v12, v13, v14);
  objc_msgSend_setRotation_(self, v15, v16, v17, v18);
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCH3DImageTextureTiling alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSCH3DImageTextureTiling)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v5 = *(archive + 3);
  }

  else
  {
    v5 = &qword_2812F1540;
  }

  v16.receiver = self;
  v16.super_class = TSCH3DImageTextureTiling;
  result = [(TSCH3DBaseImageTextureTiling *)&v16 initWithArchive:v5 unarchiver:unarchiver];
  if (!result)
  {
    return result;
  }

  v7 = *(archive + 4);
  if ((v7 & 2) != 0)
  {
    *(&result->super._rotation + 1) = *(archive + 8) != 0;
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  result->_mode = *(archive + 9) == 1;
  if ((v7 & 8) == 0)
  {
LABEL_8:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_17:
  v8 = *(archive + 10);
  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == 1;
  }

  result->_wrap = v9;
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_21:
  v10 = *(archive + 11);
  if (v10 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10 == 1;
  }

  result->_face = v11;
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v14 = *(archive + 13);
    if ((v14 - 1) >= 3)
    {
      v14 = 0;
    }

    result->_yPosition = v14;
    if ((v7 & 0x80) == 0)
    {
LABEL_12:
      if ((v7 & 0x100) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_25:
  v12 = *(archive + 12);
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12 == 1;
  }

  result->_xPosition = v13;
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v15 = *(archive + 14);
  if ((v15 - 1) >= 3)
  {
    v15 = 0;
  }

  result->_sContinuity = v15;
  if ((v7 & 0x100) != 0)
  {
LABEL_13:
    LOBYTE(result->_tContinuity) = *(archive + 60);
  }

  return result;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_276447E2C(v8);
    *(archive + 3) = v7;
  }

  v18.receiver = self;
  v18.super_class = TSCH3DImageTextureTiling;
  [(TSCH3DBaseImageTextureTiling *)&v18 saveToArchive:v7 archiver:archiverCopy];
  v9 = *(archive + 4);
  v10 = self->_mode == 1;
  wrap = self->_wrap;
  *(archive + 8) = *(&self->super._rotation + 1) != 0;
  *(archive + 9) = v10;
  v12 = wrap == 1;
  if (wrap == 2)
  {
    v12 = 2;
  }

  face = self->_face;
  if (face == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = face == 1;
  }

  xPosition = self->_xPosition;
  *(archive + 10) = v12;
  *(archive + 11) = v14;
  v16 = xPosition == 1;
  if (xPosition == 2)
  {
    v16 = 2;
  }

  *(archive + 12) = v16;
  *(archive + 4) = v9 | 0x7E;
  *(archive + 52) = vand_s8(*&self->_yPosition, vcgt_u32(0x300000003, vadd_s32(*&self->_yPosition, -1)));
  tContinuity = self->_tContinuity;
  *(archive + 4) = v9 | 0x1FE;
  *(archive + 60) = tContinuity;
}

@end