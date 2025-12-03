@interface TSDMaskInfo
- (BOOL)isEqualToMaskInfo:(id)info;
- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry pathSource:(id)source;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setGeometry:(id)geometry;
- (void)setPathSource:(id)source;
@end

@implementation TSDMaskInfo

- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry pathSource:(id)source
{
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = TSDMaskInfo;
  v10 = [(TSDDrawableInfo *)&v19 initWithContext:context geometry:geometry];
  if (v10)
  {
    if (!sourceCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDMaskInfo initWithContext:geometry:pathSource:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 32, 0, "invalid nil value for '%{public}s'", "pathSource");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    objc_msgSend_setPathSource_(v10, v9, sourceCopy);
  }

  return v10;
}

- (BOOL)isEqualToMaskInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v7 = objc_msgSend_geometry(self, v4, v5);
    v10 = objc_msgSend_geometry(infoCopy, v8, v9);
    if (objc_msgSend_isEqual_(v7, v11, v10))
    {
      v14 = objc_msgSend_pathSource(self, v12, v13);
      v17 = objc_msgSend_bezierPath(v14, v15, v16);
      v20 = objc_msgSend_pathSource(infoCopy, v18, v19);
      v23 = objc_msgSend_bezierPath(v20, v21, v22);
      isEqual = objc_msgSend_isEqual_(v17, v24, v23);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)setGeometry:(id)geometry
{
  v27.receiver = self;
  v27.super_class = TSDMaskInfo;
  geometryCopy = geometry;
  [(TSDDrawableInfo *)&v27 setGeometry:geometryCopy];
  v7 = objc_msgSend_geometry(self, v5, v6, v27.receiver, v27.super_class);

  if (v7 == geometryCopy)
  {
    v10 = objc_msgSend_geometry(self, v8, v9);
    objc_msgSend_size(v10, v11, v12);
    v14 = v13;
    v16 = v15;

    objc_msgSend_naturalSize(self->_pathSource, v17, v18);
    if (v21 != v14 || v20 != v16)
    {
      objc_msgSend_willChangeProperty_(self, v19, 527);
      objc_msgSend_willModify(self, v23, v24);
      objc_msgSend_setNaturalSize_(self->_pathSource, v25, v26, v14, v16);
    }
  }
}

- (void)setPathSource:(id)source
{
  sourceCopy = source;
  v44 = sourceCopy;
  if (!sourceCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDMaskInfo setPathSource:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 77, 0, "invalid nil value for '%{public}s'", "newPathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    sourceCopy = 0;
  }

  if (self->_pathSource != sourceCopy)
  {
    objc_msgSend_willChangeProperty_(self, v5, 527);
    objc_msgSend_willModify(self, v13, v14);
    v17 = objc_msgSend_copy(v44, v15, v16);
    pathSource = self->_pathSource;
    self->_pathSource = v17;

    objc_msgSend_naturalSize(self->_pathSource, v19, v20);
    v23 = objc_msgSend_geometry(self, v21, v22);
    objc_msgSend_size(v23, v24, v25);
    v26 = TSUNearlyEqualSizes();

    sourceCopy = v44;
    if ((v26 & 1) == 0)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSDMaskInfo setPathSource:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskInfo.m");
      objc_msgSend_naturalSize(self->_pathSource, v32, v33);
      v34 = NSStringFromCGSize(v46);
      v37 = objc_msgSend_geometry(self, v35, v36);
      objc_msgSend_size(v37, v38, v39);
      v40 = NSStringFromCGSize(v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v41, v29, v31, 85, 0, "Path source set on mask info that doesn't have a natural size that aligns with the mask's info geometry! Path Source Size: %{public}@ Geometry Size: %{public}@", v34, v40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
      sourceCopy = v44;
    }
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDMaskInfo mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 97, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_geometry(self, v9, v10);
  v21 = objc_msgSend_geometry(v8, v19, v20);
  v22 = TSDMixingTypeWithObjects(v18, v21, contextCopy);

  if (v22 == 5)
  {
    v25 = 5;
    goto LABEL_27;
  }

  v26 = objc_msgSend_pathSource(self, v23, v24);
  if ((objc_msgSend_isRectangular(v26, v27, v28) & 1) == 0)
  {

    goto LABEL_26;
  }

  v31 = objc_msgSend_pathSource(v8, v29, v30);
  isRectangular = objc_msgSend_isRectangular(v31, v32, v33);

  if (!isRectangular)
  {
LABEL_26:
    v25 = 3;
    goto LABEL_27;
  }

  v35 = objc_msgSend_geometry(v8, v23, v24);
  objc_msgSend_size(v35, v36, v37);
  v41 = 0.0;
  if (v40 != 0.0 && fabs(v40) >= 0.00999999978)
  {
    v42 = objc_msgSend_geometry(self, v38, v39);
    objc_msgSend_size(v42, v43, v44);
    v46 = v45;
    v49 = objc_msgSend_geometry(v8, v47, v48);
    objc_msgSend_size(v49, v50, v51);
    v41 = v46 / v52;
  }

  v55 = objc_msgSend_geometry(v8, v53, v54);
  objc_msgSend_size(v55, v56, v57);
  v59 = v41 * v58;
  v62 = objc_msgSend_geometry(self, v60, v61);
  objc_msgSend_size(v62, v63, v64);
  v66 = v65;
  v67 = vabdd_f64(v59, v65);

  v70 = objc_msgSend_geometry(v8, v68, v69);
  objc_msgSend_position(v70, v71, v72);
  v74 = v41 * v73;
  v77 = objc_msgSend_geometry(self, v75, v76);
  objc_msgSend_position(v77, v78, v79);
  v81 = vabdd_f64(v74, v80) < 0.00999999978 || v74 == v80;

  v84 = objc_msgSend_geometry(v8, v82, v83);
  objc_msgSend_position(v84, v85, v86);
  v88 = v41 * v87;
  v91 = objc_msgSend_geometry(self, v89, v90);
  objc_msgSend_position(v91, v92, v93);
  v95 = vabdd_f64(v88, v94) < 0.00999999978 || v88 == v94;

  v96 = v67 < 0.00999999978 || v59 == v66;
  v25 = 3;
  v97 = !v96 || !v81;
  if (!v97 && v95)
  {
    v98 = 4;
    goto LABEL_28;
  }

LABEL_27:
  v99 = objc_msgSend_pathSource(self, v23, v24);
  v102 = objc_msgSend_pathSource(v8, v100, v101);
  v103 = TSDMixingTypeWithObjects(v99, v102, contextCopy);
  v98 = TSDMixingTypeBestFromMixingTypes(v25, v103);

LABEL_28:
  if ((v98 - 6) < 0xFFFFFFFFFFFFFFFELL)
  {
    v98 = 2;
  }

  return v98;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_geometry(self, v8, v9);
  v13 = objc_msgSend_geometry(v7, v11, v12);
  v14 = TSDMixingMixedObjectWithFraction(v10, v13, fraction);

  v17 = objc_msgSend_pathSource(self, v15, v16);
  v20 = objc_msgSend_pathSource(v7, v18, v19);
  v21 = TSDMixingMixedObjectWithFraction(v17, v20, fraction);

  v22 = [TSDMaskInfo alloc];
  v25 = objc_msgSend_context(self, v23, v24);
  v27 = objc_msgSend_initWithContext_geometry_pathSource_(v22, v26, v25, v14, v21);

  return v27;
}

- (id)objectForProperty:(int)property
{
  if (property == 527)
  {
    v3 = objc_msgSend_pathSource(self, a2, *&property);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDMaskInfo;
    v3 = [(TSDMaskInfo *)&v5 objectForProperty:?];
  }

  return v3;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[86]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = &TSD::_DrawableArchive_default_instance_;
  }

  v11.receiver = self;
  v11.super_class = TSDMaskInfo;
  [(TSDDrawableInfo *)&v11 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 4))
  {
    objc_msgSend_pathSourceWithArchive_(TSDPathSource, v8, *(archive + 4));
  }

  else
  {
    objc_msgSend_pathSourceWithArchive_(TSDPathSource, v8, &TSD::_PathSourceArchive_default_instance_);
  }
  v9 = ;
  objc_msgSend_setPathSource_(self, v10, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_27669EBC0, off_2812F5188[86]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_27669EB38;
  v15[3] = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v16 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v15);
  v12 = objc_msgSend_pathSource(self, v9, v10);
  *(archive + 4) |= 2u;
  v13 = *(archive + 4);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v14);
    *(archive + 4) = v13;
  }

  objc_msgSend_saveToArchive_(v12, v11, v13);
}

@end