@interface TSDSmartStroke
+ (Class)classForName:(id)name;
+ (id)p_mapOfStrokeNamesToAlternatesForOldVersions;
+ (id)strokeWithName:(id)name color:(id)color width:(double)width;
- (BOOL)canDrawWithOtherStroke:(id)stroke;
- (BOOL)isEqual:(id)equal;
- (TSDSmartStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width;
- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDSmartStroke

- (TSDSmartStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v21.receiver = self;
  v21.super_class = TSDSmartStroke;
  v7 = [(TSDStroke *)&v21 initWithArchive:archive unarchiver:unarchiverCopy];
  if (v7)
  {
    if (*(archive + 5))
    {
      v8 = *(archive + 5);
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v45 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v42.receiver = self;
  v42.super_class = TSDSmartStroke;
  [(TSDStroke *)&v42 saveToArchive:archive archiver:archiverCopy];
  *(archive + 4) |= 4u;
  v9 = *(archive + 5);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::SmartStrokeArchive>(v10);
    *(archive + 5) = v9;
  }

  v11 = objc_msgSend_strokeName(self, v7, v8);
  v12 = v11;
  v15 = objc_msgSend_UTF8String(v11, v13, v14);
  sub_2766BFA7C(v9, v15);

  v16 = objc_opt_class();
  v19 = objc_msgSend_p_mapOfStrokeNamesToAlternatesForOldVersions(v16, v17, v18);
  v22 = objc_msgSend_strokeName(self, v20, v21);
  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v23, v22);

  shouldSaveAlternates = objc_msgSend_shouldSaveAlternates(archiverCopy, v25, v26);
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
    v29 = archiverCopy;
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

+ (Class)classForName:(id)name
{
  v28[6] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v28[0] = @"Chalk2";
  v28[1] = @"Dry Brush";
  v28[2] = @"Feathered Brush";
  v28[3] = @"Pen";
  v28[4] = @"Pencil";
  v28[5] = @"Crayon";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v28, 6);
  v7 = objc_msgSend_containsObject_(v5, v6, nameCopy);

  if ((v7 & 1) == 0)
  {
    v27 = @"Calligraphy";
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, &v27, 1);
    v11 = objc_msgSend_containsObject_(v9, v10, nameCopy);

    if ((v11 & 1) == 0)
    {
      v26 = @"Doodles";
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v26, 1);
      v15 = objc_msgSend_containsObject_(v13, v14, nameCopy);

      if ((v15 & 1) == 0)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSDSmartStroke classForName:]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSmartStroke.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 71, 0, "Unable to find Smart Stroke class for name: %@", nameCopy);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v22, v23);
      }
    }
  }

  v24 = objc_opt_class();

  return v24;
}

+ (id)strokeWithName:(id)name color:(id)color width:(double)width
{
  nameCopy = name;
  colorCopy = color;
  v9 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithName_color_width_(v9, v10, nameCopy, colorCopy, width);

  return v11;
}

- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width
{
  nameCopy = name;
  colorCopy = color;
  v12 = objc_msgSend_solidPattern(TSDStrokePattern, v10, v11);
  v14 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(self, v13, nameCopy, colorCopy, 0, 0, v12, width, 4.0);

  return v14;
}

- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v11 = *&join;
  v12 = *&cap;
  nameCopy = name;
  colorCopy = color;
  patternCopy = pattern;
  v25.receiver = self;
  v25.super_class = TSDSmartStroke;
  v21 = [(TSDStroke *)&v25 initWithColor:colorCopy width:v12 cap:v11 join:patternCopy pattern:width miterLimit:limit];
  if (v21)
  {
    v22 = objc_msgSend_copy(nameCopy, v19, v20);
    mStrokeName = v21->mStrokeName;
    v21->mStrokeName = v22;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

- (BOOL)canDrawWithOtherStroke:(id)stroke
{
  strokeCopy = stroke;
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

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  v25.receiver = self;
  v25.super_class = TSDSmartStroke;
  v7 = [(TSDStroke *)&v25 mixingTypeWithObject:objectCopy context:context];
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
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
  v24 = objc_msgSend_blendedColorWithFraction_ofColor_(v19, v23, v22, fraction);
  objc_msgSend_width(self, v25, v26);
  objc_msgSend_width(v7, v27, v28);
  TSUMix();
  v32 = v31;
  if (fraction >= 0.5)
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
  v46 = TSDMixingMixedObjectWithFraction(v42, v45, fraction);
  objc_msgSend_miterLimit(self, v47, v48);
  objc_msgSend_miterLimit(v7, v49, v50);
  TSUMix();
  v53 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v55, v51, v57, v24, v33, v41, v46, v32, v52);

  return v53;
}

@end