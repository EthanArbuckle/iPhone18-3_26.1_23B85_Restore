@interface TSTTableStrokePresetData
- (BOOL)isEqual:(id)a3;
- (TSTTableStrokePresetData)init;
- (TSTTableStrokePresetData)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTTableStrokePresetData)initWithMask:(unsigned int)a3 horizontalStroke:(id)a4 verticalStroke:(id)a5 exteriorStroke:(id)a6;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTTableStrokePresetData

- (TSTTableStrokePresetData)init
{
  v3.receiver = self;
  v3.super_class = TSTTableStrokePresetData;
  return [(TSTTableStrokePresetData *)&v3 init];
}

- (TSTTableStrokePresetData)initWithMask:(unsigned int)a3 horizontalStroke:(id)a4 verticalStroke:(id)a5 exteriorStroke:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TSTTableStrokePresetData;
  v14 = [(TSTTableStrokePresetData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mVerticalStroke, a5);
    objc_storeStrong(&v15->mHorizontalStroke, a4);
    objc_storeStrong(&v15->mExteriorStroke, a6);
    v15->mVisibleMask = a3;
  }

  return v15;
}

- (TSTTableStrokePresetData)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v23 init];
  v10 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(a3 + 12);
    v11 = MEMORY[0x277D804A0];
    if (*(a3 + 3))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, *(a3 + 3), v6, v9);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], v6, v9);
    }
    v12 = ;
    mHorizontalStroke = v10->mHorizontalStroke;
    v10->mHorizontalStroke = v12;

    if (*(a3 + 4))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v14, *(a3 + 4), v6, v15);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v14, v11, v6, v15);
    }
    v16 = ;
    mVerticalStroke = v10->mVerticalStroke;
    v10->mVerticalStroke = v16;

    if (*(a3 + 5))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v18, *(a3 + 5), v6, v19);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v18, v11, v6, v19);
    }
    v20 = ;
    mExteriorStroke = v10->mExteriorStroke;
    v10->mExteriorStroke = v20;
  }

  return v10;
}

- (TSTTableStrokePresetData)initWithDeprecatedArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TSTTableStrokePresetData;
  v7 = [(TSTTableStrokePresetData *)&v29 init];
  v10 = v7;
  if (v7)
  {
    v7->mVisibleMask = *(a3 + 12);
    v11 = *(a3 + 4);
    if (!v11)
    {
      v11 = &qword_2812E9B08;
    }

    v12 = v11[3];
    v13 = MEMORY[0x277D804A0];
    if (v12)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, v12, v6, v9);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v8, MEMORY[0x277D804A0], v6, v9);
    }
    v14 = ;
    mHorizontalStroke = v10->mHorizontalStroke;
    v10->mHorizontalStroke = v14;

    v18 = *(a3 + 3);
    if (!v18)
    {
      v18 = &qword_2812E9B08;
    }

    v19 = v18[3];
    if (v19)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, v19, v6, v17);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v16, v13, v6, v17);
    }
    v20 = ;
    mVerticalStroke = v10->mVerticalStroke;
    v10->mVerticalStroke = v20;

    v24 = *(a3 + 5);
    if (!v24)
    {
      v24 = &qword_2812E9B08;
    }

    v25 = v24[3];
    if (v25)
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v22, v25, v6, v23);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80368], v22, v13, v6, v23);
    }
    v26 = ;
    mExteriorStroke = v10->mExteriorStroke;
    v10->mExteriorStroke = v26;
  }

  return v10;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = a4;
  mVisibleMask = self->mVisibleMask;
  v10 = *(a3 + 4);
  *(a3 + 4) = v10 | 8;
  *(a3 + 12) = mVisibleMask;
  mHorizontalStroke = self->mHorizontalStroke;
  *(a3 + 4) = v10 | 9;
  v12 = *(a3 + 3);
  v24 = v7;
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0290](v13);
    *(a3 + 3) = v12;
    v7 = v24;
  }

  objc_msgSend_saveToArchive_archiver_(mHorizontalStroke, v6, v12, v7, v8);
  mVerticalStroke = self->mVerticalStroke;
  *(a3 + 4) |= 2u;
  v17 = *(a3 + 4);
  if (!v17)
  {
    v18 = *(a3 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0290](v18);
    *(a3 + 4) = v17;
  }

  objc_msgSend_saveToArchive_archiver_(mVerticalStroke, v14, v17, v24, v15);
  mExteriorStroke = self->mExteriorStroke;
  *(a3 + 4) |= 4u;
  v22 = *(a3 + 5);
  if (!v22)
  {
    v23 = *(a3 + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0290](v23);
    *(a3 + 5) = v22;
  }

  objc_msgSend_saveToArchive_archiver_(mExteriorStroke, v19, v22, v24, v20);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14 = (objc_msgSend_isEqual_(self->mHorizontalStroke, v5, v4[1], v6, v7) & 1) != 0 && objc_msgSend_isEqual_(self->mVerticalStroke, v8, v4[2], v9, v10) && objc_msgSend_isEqual_(self->mExteriorStroke, v11, v4[3], v12, v13) && self->mVisibleMask == *(v4 + 8);

  return v14;
}

@end