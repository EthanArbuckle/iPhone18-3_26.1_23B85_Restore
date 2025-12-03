@interface TSTTableStrokePresetData
- (BOOL)isEqual:(id)equal;
- (TSTTableStrokePresetData)init;
- (TSTTableStrokePresetData)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTTableStrokePresetData

- (TSTTableStrokePresetData)init
{
  v3.receiver = self;
  v3.super_class = TSTTableStrokePresetData;
  return [(TSTTableStrokePresetData *)&v3 init];
}

- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  strokeCopy = stroke;
  verticalStrokeCopy = verticalStroke;
  exteriorStrokeCopy = exteriorStroke;
  v17.receiver = self;
  v17.super_class = TSTTableStrokePresetData;
  v14 = [(TSTTableStrokePresetData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mVerticalStroke, verticalStroke);
    objc_storeStrong(&v15->mHorizontalStroke, stroke);
    objc_storeStrong(&v15->mExteriorStroke, exteriorStroke);
    v15->mVisibleMask = mask;
  }

  return v15;
}

- (TSTTableStrokePresetData)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v23.receiver = self;
  v23.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v23 init];
  v10 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(archive + 12);
    v11 = MEMORY[0x277D804A0];
    if (*(archive + 3))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, *(archive + 3), unarchiverCopy, v9);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], unarchiverCopy, v9);
    }
    v12 = ;
    mHorizontalStroke = v10->mHorizontalStroke;
    v10->mHorizontalStroke = v12;

    if (*(archive + 4))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v14, *(archive + 4), unarchiverCopy, v15);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v14, v11, unarchiverCopy, v15);
    }
    v16 = ;
    mVerticalStroke = v10->mVerticalStroke;
    v10->mVerticalStroke = v16;

    if (*(archive + 5))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v18, *(archive + 5), unarchiverCopy, v19);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v18, v11, unarchiverCopy, v19);
    }
    v20 = ;
    mExteriorStroke = v10->mExteriorStroke;
    v10->mExteriorStroke = v20;
  }

  return v10;
}

- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v29.receiver = self;
  v29.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v29 init];
  v10 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(archive + 12);
    v11 = *(archive + 4);
    if (!v11)
    {
      v11 = &qword_2812E9B08;
    }

    v12 = v11[3];
    v13 = MEMORY[0x277D804A0];
    if (v12)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, v12, unarchiverCopy, v9);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], unarchiverCopy, v9);
    }
    v14 = ;
    mHorizontalStroke = v10->mHorizontalStroke;
    v10->mHorizontalStroke = v14;

    v18 = *(archive + 3);
    if (!v18)
    {
      v18 = &qword_2812E9B08;
    }

    v19 = v18[3];
    if (v19)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, v19, unarchiverCopy, v17);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, v13, unarchiverCopy, v17);
    }
    v20 = ;
    mVerticalStroke = v10->mVerticalStroke;
    v10->mVerticalStroke = v20;

    v24 = *(archive + 5);
    if (!v24)
    {
      v24 = &qword_2812E9B08;
    }

    v25 = v24[3];
    if (v25)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v22, v25, unarchiverCopy, v23);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v22, v13, unarchiverCopy, v23);
    }
    v26 = ;
    mExteriorStroke = v10->mExteriorStroke;
    v10->mExteriorStroke = v26;
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  mVisibleMask = self->mVisibleMask;
  v10 = *(archive + 4);
  *(archive + 4) = v10 | 8;
  *(archive + 12) = mVisibleMask;
  mHorizontalStroke = self->mHorizontalStroke;
  *(archive + 4) = v10 | 9;
  v12 = *(archive + 3);
  v24 = archiverCopy;
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0290](v13);
    *(archive + 3) = v12;
    archiverCopy = v24;
  }

  objc_msgSend_saveToArchive_archiver_(mHorizontalStroke, v6, v12, archiverCopy, v8);
  mVerticalStroke = self->mVerticalStroke;
  *(archive + 4) |= 2u;
  v17 = *(archive + 4);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0290](v18);
    *(archive + 4) = v17;
  }

  objc_msgSend_saveToArchive_archiver_(mVerticalStroke, v14, v17, v24, v15);
  mExteriorStroke = self->mExteriorStroke;
  *(archive + 4) |= 4u;
  v22 = *(archive + 5);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0290](v23);
    *(archive + 5) = v22;
  }

  objc_msgSend_saveToArchive_archiver_(mExteriorStroke, v19, v22, v24, v20);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14 = (objc_msgSend_isEqual_(self->mHorizontalStroke, v5, equalCopy[1], v6, v7) & 1) != 0 && objc_msgSend_isEqual_(self->mVerticalStroke, v8, equalCopy[2], v9, v10) && objc_msgSend_isEqual_(self->mExteriorStroke, v11, equalCopy[3], v12, v13) && self->mVisibleMask == *(equalCopy + 8);

  return v14;
}

@end