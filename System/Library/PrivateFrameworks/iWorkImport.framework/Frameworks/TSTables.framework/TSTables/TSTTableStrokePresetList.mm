@interface TSTTableStrokePresetList
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)strokePresetListForDefaultPropertyMapForTablePresetID:(unint64_t)d colors:(id)colors;
+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke;
+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (BOOL)isEqual:(id)equal;
- (TSTTableStrokePresetList)init;
- (TSTTableStrokePresetList)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePresets:(id)presets;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index;
- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index;
@end

@implementation TSTTableStrokePresetList

- (TSTTableStrokePresetList)init
{
  v13.receiver = self;
  v13.super_class = TSTTableStrokePresetList;
  v6 = [(TSTTableStrokePresetList *)&v13 init];
  if (v6)
  {
    v7 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v2, v3, v4, v5);
    presets = v6->_presets;
    v6->_presets = v7;

    objc_msgSend_setCount_(v6->_presets, v9, 15, v10, v11);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy[1];
  if (v8 == self->mCount)
  {
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = objc_msgSend_presetAtIndex_(self, v4, v9, v5, v6);
        v14 = objc_msgSend_presetAtIndex_(equalCopy, v11, v9, v12, v13);
        isEqual = objc_msgSend_isEqual_(v10, v15, v14, v16, v17);

        if ((isEqual & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < self->mCount);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index
{
  presetCopy = preset;
  v21 = presetCopy;
  if (self->mCount <= index)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableStrokePresetList setStrokePreset:atIndex:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 106, 0, "preset index higher than count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  else
  {
    objc_msgSend_replacePointerAtIndex_withPointer_(self->_presets, presetCopy, index, presetCopy, v9);
  }
}

+ (id)strokePresetListForDefaultPropertyMapForTablePresetID:(unint64_t)d colors:(id)colors
{
  colorsCopy = colors;
  v11 = colorsCopy;
  v12 = MEMORY[0x277D803C0];
  if (colorsCopy)
  {
    v13 = dword_2217E0DA8[d];
    v14 = objc_msgSend_objectAtIndex_(colorsCopy, v7, v13, v9, v10);
    v18 = objc_msgSend_strokeWithColor_width_(v12, v15, v14, v16, v17, 1.0);

    v19 = MEMORY[0x277D803C0];
    v23 = objc_msgSend_objectAtIndex_(v11, v20, v13, v21, v22);
    v27 = objc_msgSend_strokeWithColor_width_(v19, v24, v23, v25, v26, 1.0);

    v28 = MEMORY[0x277D803C0];
    objc_msgSend_objectAtIndex_(v11, v29, v13, v30, v31);
  }

  else
  {
    v36 = objc_msgSend_blackColor(MEMORY[0x277D81180], v7, v8, v9, v10);
    v18 = objc_msgSend_strokeWithColor_width_(v12, v37, v36, v38, v39, 1.0);

    v40 = MEMORY[0x277D803C0];
    v45 = objc_msgSend_blackColor(MEMORY[0x277D81180], v41, v42, v43, v44);
    v27 = objc_msgSend_strokeWithColor_width_(v40, v46, v45, v47, v48, 1.0);

    v28 = MEMORY[0x277D803C0];
    objc_msgSend_blackColor(MEMORY[0x277D81180], v49, v50, v51, v52);
  }
  v32 = ;
  v53 = objc_msgSend_strokeWithColor_width_(v28, v33, v32, v34, v35, 1.0);

  v55 = objc_msgSend_strokePresetListForDefaultPropertyMapWithHorizontalStroke_verticalStroke_exteriorStroke_(self, v54, v18, v27, v53);

  return v55;
}

+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  strokeCopy = stroke;
  verticalStrokeCopy = verticalStroke;
  exteriorStrokeCopy = exteriorStroke;
  v10 = objc_alloc_init(TSTTableStrokePresetList);
  v10->mCount = 15;
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = dword_2217E0DC0[i];
      v18 = [TSTTableStrokePresetData alloc];
      v20 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v18, v19, v17, strokeCopy, verticalStrokeCopy, exteriorStrokeCopy);
      objc_msgSend_setStrokePreset_atIndex_(v10, v21, v20, i, v22);
    }
  }

  return v10;
}

+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke
{
  strokeCopy = stroke;
  thinStrokeCopy = thinStroke;
  v7 = objc_alloc_init(TSTTableStrokePresetList);
  v7->mCount = 15;
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (byte_2217E0DFC[i])
      {
        v14 = strokeCopy;
      }

      else
      {
        v14 = thinStrokeCopy;
      }

      v15 = v14;
      v16 = dword_2217E0DC0[i];
      v17 = [TSTTableStrokePresetData alloc];
      v19 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v17, v18, v16, v15, v15, v15);
      objc_msgSend_setStrokePreset_atIndex_(v7, v20, v19, i, v21);
    }
  }

  return v7;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (sub_2216D838C(archive))
  {
    v10 = [TSTTableStrokePresetList alloc];
    v13 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, archive, unarchiverCopy, v12);
  }

  else
  {
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8, v9);
  }

  v14 = v13;

  return v14;
}

- (TSTTableStrokePresetList)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v108.receiver = self;
  v108.super_class = TSTTableStrokePresetList;
  v11 = [(TSTTableStrokePresetList *)&v108 init];
  if (!v11)
  {
LABEL_25:
    v40 = v11;
    goto LABEL_26;
  }

  v12 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9, v10);
  presets = v11->_presets;
  v11->_presets = v12;

  objc_msgSend_setCount_(v11->_presets, v14, 15, v15, v16);
  v11->mCount = 15;
  v21 = *(archive + 18);
  if ((v21 & 0x80000000) != 0)
  {
    v86 = MEMORY[0x277D81150];
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v19, v20);
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v89, v90);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v92, v87, v91, 172, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96);
    v21 = 0;
  }

  v22 = *(archive + 8);
  if (v22 < 1)
  {
    v30 = *(archive + 14);
    if (v30 < 0)
    {
      v97 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v19, v20);
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v100, v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v103, v98, v102, 189, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
      v30 = 0;
    }

    if (v21 != v30 || objc_msgSend_count(v11->_presets, v17, v18, v19, v20) < v21)
    {
      v31 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v19, v20);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v24, v28, 190, 0, "invalid preset count");
      goto LABEL_13;
    }

    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v50 = v11->_presets;
        v51 = [TSTTableStrokePresetData alloc];
        v54 = objc_msgSend_initWithArchive_unarchiver_(v51, v52, *(*(archive + 8) + 8 * i + 8), unarchiverCopy, v53);
        objc_msgSend_replacePointerAtIndex_withPointer_(v50, v55, i, v54, v56);
      }
    }

    goto LABEL_20;
  }

  if (v21 == v22 && objc_msgSend_count(v11->_presets, v17, v18, v19, v20) >= v21)
  {
    v41 = 0;
    do
    {
      v42 = v11->_presets;
      v43 = [TSTTableStrokePresetData alloc];
      v46 = objc_msgSend_initWithDeprecatedArchive_unarchiver_(v43, v44, *(*(archive + 5) + 8 * v41 + 8), unarchiverCopy, v45);
      objc_msgSend_replacePointerAtIndex_withPointer_(v42, v47, v41, v46, v48);

      ++v41;
    }

    while (v21 != v41);
LABEL_20:
    if (v11->mCount > v21)
    {
      v57 = objc_msgSend_pointerAtIndex_(v11->_presets, v17, 0, v19, v20);
      v62 = objc_msgSend_horizontalStroke(v57, v58, v59, v60, v61);
      v67 = objc_msgSend_verticalStroke(v57, v63, v64, v65, v66);
      v72 = objc_msgSend_exteriorStroke(v57, v68, v69, v70, v71);
      v74 = objc_msgSend_strokePresetListForDefaultPropertyMapWithHorizontalStroke_verticalStroke_exteriorStroke_(TSTTableStrokePresetList, v73, v62, v67, v72);
      v75 = v21;

      if (v11->mCount > v21)
      {
        v79 = v21 + 1;
        do
        {
          v80 = v11->_presets;
          v81 = objc_msgSend_presetAtIndex_(v74, v76, v75, v77, v78);
          objc_msgSend_replacePointerAtIndex_withPointer_(v80, v82, v75, v81, v83);
          v75 = v79;
        }

        while (v11->mCount > v79++);
      }
    }

    goto LABEL_25;
  }

  v23 = MEMORY[0x277D81150];
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v19, v20);
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v26, v27);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 178, 0, "invalid preset count");
LABEL_13:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  v40 = 0;
LABEL_26:

  return v40;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  mCount = self->mCount;
  *(archive + 4) |= 1u;
  *(archive + 18) = mCount;
  if (mCount)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = *(archive + 8);
      if (!v12)
      {
        goto LABEL_8;
      }

      v13 = *(archive + 14);
      v14 = *v12;
      if (v13 >= *v12)
      {
        break;
      }

      *(archive + 14) = v13 + 1;
LABEL_10:
      v18 = objc_msgSend_pointerAtIndex_(self->_presets, v6, v10, v7, v8);
      objc_msgSend_saveToArchive_archiver_(v18, v19, *(*(archive + 8) + 8 * (v11 - 1) + 8), archiverCopy, v20);

      v10 = v11;
      if (self->mCount <= v11++)
      {
        goto LABEL_11;
      }
    }

    if (v14 == *(archive + 15))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v12 = *(archive + 8);
      v14 = *v12;
    }

    *v12 = v14 + 1;
    v15 = sub_2216E308C(*(archive + 6));
    v16 = *(archive + 14);
    v17 = *(archive + 8) + 8 * v16;
    *(archive + 14) = v16 + 1;
    *(v17 + 8) = v15;
    goto LABEL_10;
  }

LABEL_11:
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList horizontalStrokeForStrokePreset:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 225, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3, v4);
  v23 = objc_msgSend_horizontalStroke(v18, v19, v20, v21, v22);

  return v23;
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList verticalStrokeForStrokePreset:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 234, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3, v4);
  v23 = objc_msgSend_verticalStroke(v18, v19, v20, v21, v22);

  return v23;
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList exteriorStrokeForStrokePreset:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 243, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3, v4);
  v23 = objc_msgSend_exteriorStroke(v18, v19, v20, v21, v22);

  return v23;
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList maskForStrokePreset:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 252, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3, v4);
  v23 = objc_msgSend_mask(v18, v19, v20, v21, v22);

  return v23;
}

- (unsigned)maskForStrokePresets:(id)presets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22124149C;
  v7[3] = &unk_278461DD0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend_enumerateObjectsUsingBlock_(presets, a2, v7, v3, v4);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index
{
  strokeCopy = stroke;
  v9 = objc_msgSend_presetAtIndex_(self, v6, index, v7, v8);
  v10 = [TSTTableStrokePresetData alloc];
  v15 = objc_msgSend_mask(v9, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v10, v16, v15, strokeCopy, strokeCopy, strokeCopy);
  objc_msgSend_setStrokePreset_atIndex_(self, v18, v17, index, v19);
}

@end