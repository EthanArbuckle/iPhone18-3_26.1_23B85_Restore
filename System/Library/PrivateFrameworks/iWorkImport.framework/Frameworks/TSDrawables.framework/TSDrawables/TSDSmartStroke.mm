@interface TSDSmartStroke
+ (Class)classForName:(id)a3;
+ (id)p_mapOfStrokeNamesToAlternatesForOldVersions;
+ (id)strokeWithName:(id)a3 color:(id)a4 width:(double)a5;
- (BOOL)canDrawWithOtherStroke:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSDSmartStroke)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5;
- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDSmartStroke

- (TSDSmartStroke)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = TSDSmartStroke;
  v7 = [(TSDStroke *)&v21 initWithArchive:a3 unarchiver:v6];
  if (v7)
  {
    if (*(a3 + 5))
    {
      v8 = *(a3 + 5);
    }

    else
    {
      v8 = &TSD::_SmartStrokeArchive_default_instance_;
    }

    TSD::SmartStrokeArchive::SmartStrokeArchive(v18, v8);
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, v19 & 0xFFFFFFFFFFFFFFFELL);
    v13 = objc_msgSend_copy(v10, v11, v12);
    objc_msgSend_i_setStrokeName_(v7, v14, v13);

    objc_msgSend_i_setDeprecatedPatternOffsetDistance_(v7, v15, v16, v20);
    TSD::SmartStrokeArchive::~SmartStrokeArchive(v18);
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v42.receiver = self;
  v42.super_class = TSDSmartStroke;
  [(TSDStroke *)&v42 saveToArchive:a3 archiver:v6];
  *(a3 + 4) |= 4u;
  v9 = *(a3 + 5);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::SmartStrokeArchive>(v10);
    *(a3 + 5) = v9;
  }

  v11 = objc_msgSend_strokeName(self, v7, v8);
  v12 = v11;
  v15 = objc_msgSend_UTF8String(v11, v13, v14);
  sub_2766BFA7C(v9, v15);

  v16 = objc_opt_class();
  v19 = objc_msgSend_p_mapOfStrokeNamesToAlternatesForOldVersions(v16, v17, v18);
  v22 = objc_msgSend_strokeName(self, v20, v21);
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v23, v22);

  shouldSaveAlternates = objc_msgSend_shouldSaveAlternates(v6, v25, v26);
  if (v24)
  {
    v28 = shouldSaveAlternates;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == 1)
  {
    v29 = v6;
    google::protobuf::internal::AssignDescriptors();
    v31 = objc_msgSend_messageWithNewFunction_descriptor_(v29, v30, sub_2766BFC3C, off_2812F5188[58]);

    v32 = *MEMORY[0x277D80990];
    v33 = *MEMORY[0x277D809B8];
    v43 = 0x700000002;
    v44 = 0;
    v35 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_message_(v29, v34, v32, v33, &v43, v31);
    google::protobuf::internal::AssignDescriptors();
    v37 = objc_msgSend_messageWithNewFunction_descriptor_(v35, v36, sub_2766BFCA8, off_2812F5188[38]);

    v38 = v24;
    v41 = objc_msgSend_UTF8String(v24, v39, v40);
    sub_2766BFA7C(v37, v41);
  }
}

+ (id)p_mapOfStrokeNamesToAlternatesForOldVersions
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"Pencil";
  v4[1] = @"Crayon";
  v5[0] = @"Dry Brush";
  v5[1] = @"Chalk2";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 2);

  return v2;
}

+ (Class)classForName:(id)a3
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28[0] = @"Chalk2";
  v28[1] = @"Dry Brush";
  v28[2] = @"Feathered Brush";
  v28[3] = @"Pen";
  v28[4] = @"Pencil";
  v28[5] = @"Crayon";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v28, 6);
  v7 = objc_msgSend_containsObject_(v5, v6, v3);

  if ((v7 & 1) == 0)
  {
    v27 = @"Calligraphy";
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, &v27, 1);
    v11 = objc_msgSend_containsObject_(v9, v10, v3);

    if ((v11 & 1) == 0)
    {
      v26 = @"Doodles";
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v26, 1);
      v15 = objc_msgSend_containsObject_(v13, v14, v3);

      if ((v15 & 1) == 0)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSDSmartStroke classForName:]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSmartStroke.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 71, 0, "Unable to find Smart Stroke class for name: %@", v3);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v22, v23);
      }
    }
  }

  v24 = objc_opt_class();

  return v24;
}

+ (id)strokeWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithName_color_width_(v9, v10, v7, v8, a5);

  return v11;
}

- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_solidPattern(TSDStrokePattern, v10, v11);
  v14 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(self, v13, v8, v9, 0, 0, v12, a5, 4.0);

  return v14;
}

- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v11 = *&a7;
  v12 = *&a6;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = TSDSmartStroke;
  v21 = [(TSDStroke *)&v25 initWithColor:v17 width:v12 cap:v11 join:v18 pattern:a5 miterLimit:a9];
  if (v21)
  {
    v22 = objc_msgSend_copy(v16, v19, v20);
    mStrokeName = v21->mStrokeName;
    v21->mStrokeName = v22;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDSmartStroke copyWithZone:]");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSmartStroke.mm");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v7, 108, 0, "%@ is an abstract superclass. Subclasses must inherit %@", v9, v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDSmartStroke mutableCopyWithZone:]");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSmartStroke.mm");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v7, 113, 0, "%@ is an abstract superclass. Subclasses must inherit %@", v9, v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  if (v5 && (objc_msgSend_strokeName(v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strokeName(self, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v9, v13, v12), v12, v9, (isEqualToString & 1) != 0))
  {
    v17.receiver = self;
    v17.super_class = TSDSmartStroke;
    v15 = [(TSDStroke *)&v17 isEqual:v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canDrawWithOtherStroke:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    isEqual = objc_msgSend_isEqual_(self, v5, v6);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TSDSmartStroke;
  v3 = [(TSDStroke *)&v7 hash];
  return objc_msgSend_hash(self->mStrokeName, v4, v5) ^ v3;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = TSDSmartStroke;
  v7 = [(TSDStroke *)&v25 mixingTypeWithObject:v6 context:a4];
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    v11 = objc_msgSend_strokeName(self, v8, v9);
    v14 = objc_msgSend_strokeName(v10, v12, v13);
    v17 = v14;
    if (v11 == v14)
    {
    }

    else
    {
      v18 = objc_msgSend_strokeName(self, v15, v16);
      v21 = objc_msgSend_strokeName(v10, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v18, v22, v21);

      if ((isEqualToString & 1) == 0)
      {
        v7 = TSDMixingTypeBestFromMixingTypes(v7, 2);
      }
    }
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v56 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDSmartStroke mixedObjectWithFraction:ofObject:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSmartStroke.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 175, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v55 = objc_alloc(objc_opt_class());
  v57 = objc_msgSend_strokeName(self, v15, v16);
  v19 = objc_msgSend_color(self, v17, v18);
  v22 = objc_msgSend_color(v7, v20, v21);
  v24 = objc_msgSend_blendedColorWithFraction_ofColor_(v19, v23, v22, a3);
  objc_msgSend_width(self, v25, v26);
  objc_msgSend_width(v7, v27, v28);
  TSUMix();
  v32 = v31;
  if (a3 >= 0.5)
  {
    v33 = objc_msgSend_cap(v7, v29, v30);
    v36 = objc_msgSend_join(v7, v39, v40);
  }

  else
  {
    v33 = objc_msgSend_cap(self, v29, v30);
    v36 = objc_msgSend_join(self, v34, v35);
  }

  v41 = v36;
  v42 = objc_msgSend_pattern(self, v37, v38);
  v45 = objc_msgSend_pattern(v7, v43, v44);
  v46 = TSDMixingMixedObjectWithFraction(v42, v45, a3);
  objc_msgSend_miterLimit(self, v47, v48);
  objc_msgSend_miterLimit(v7, v49, v50);
  TSUMix();
  v53 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v55, v51, v57, v24, v33, v41, v46, v32, v52);

  return v53;
}

@end