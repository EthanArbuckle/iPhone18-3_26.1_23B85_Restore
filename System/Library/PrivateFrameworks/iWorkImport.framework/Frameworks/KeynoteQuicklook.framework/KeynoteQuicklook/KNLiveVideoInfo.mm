@interface KNLiveVideoInfo
+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (id)i_makeArchivedMoviePosterImageDataWithContext:(id)context;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)containsProperty:(int)property;
- (CGPoint)normalizedOffset;
- (KNLiveVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (KNLiveVideoSource)source;
- (double)doubleValueForProperty:(int)property;
- (id)animationFilters;
- (id)defaultDescriptiveName;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)typeName;
- (int)intValueForProperty:(int)property;
- (int64_t)backgroundKind;
- (int64_t)effectiveBackgroundKind;
- (int64_t)effectiveMaskKind;
- (int64_t)effectiveMaskKindForGeometry:(id)geometry;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)acceptVisitor:(id)visitor;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_updateSlideNodeLiveVideoSourceUsage;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBackgroundFill:(id)fill;
- (void)setBackgroundKind:(int64_t)kind;
- (void)setI_archivedBackgroundKind:(int64_t)kind;
- (void)setI_archivedMaskKind:(int64_t)kind;
- (void)setI_sourceId:(id)id;
- (void)setIsPlaceholder:(BOOL)placeholder;
- (void)setMaskCornerRadius:(double)radius;
- (void)setNormalizedOffset:(CGPoint)offset;
- (void)setScale:(double)scale;
- (void)setSource:(id)source;
- (void)setStyle:(id)style;
@end

@implementation KNLiveVideoInfo

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_scale = scale;
  }
}

- (CGPoint)normalizedOffset
{
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setNormalizedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  p_normalizedOffset = &self->_normalizedOffset;
  if (self->_normalizedOffset.x != offset.x || self->_normalizedOffset.y != offset.y)
  {
    objc_msgSend_willModify(self, a2, v3);
    p_normalizedOffset->x = x;
    p_normalizedOffset->y = y;
  }
}

- (void)setI_archivedMaskKind:(int64_t)kind
{
  if (self->_maskKind != kind)
  {
    objc_msgSend_willModify(self, a2, kind);
    self->_maskKind = kind;
  }
}

- (void)setMaskCornerRadius:(double)radius
{
  if (self->_maskCornerRadius != radius)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_maskCornerRadius = radius;
  }
}

- (void)setI_archivedBackgroundKind:(int64_t)kind
{
  if (self->_backgroundKind != kind)
  {
    objc_msgSend_willModify(self, a2, kind);
    self->_backgroundKind = kind;
  }
}

- (void)setBackgroundFill:(id)fill
{
  fillCopy = fill;
  if (self->_backgroundFill != fillCopy)
  {
    v10 = fillCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_backgroundFill, v9);
    fillCopy = v9;
  }
}

- (KNLiveVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  contextCopy = context;
  styleCopy = style;
  v18.receiver = self;
  v18.super_class = KNLiveVideoInfo;
  v10 = [(KNLiveVideoInfo *)&v18 initWithContext:contextCopy geometry:geometry];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_style, style);
    v11->_scale = 1.0;
    v11->_maskKind = 0;
    v11->_backgroundKind = 0;
    v12 = objc_opt_class();
    v14 = objc_msgSend_i_makeArchivedMoviePosterImageDataWithContext_(v12, v13, contextCopy);
    archivedMoviePosterImageData = v11->_archivedMoviePosterImageData;
    v11->_archivedMoviePosterImageData = v14;

    objc_msgSend_didAddReferenceToData_(v11, v16, v11->_archivedMoviePosterImageData);
  }

  return v11;
}

- (KNLiveVideoSource)source
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentRoot(v5, v6, v7);
  v9 = TSUCheckedDynamicCast();

  v12 = objc_msgSend_show(v9, v10, v11);
  v15 = objc_msgSend_theme(v12, v13, v14);
  v18 = objc_msgSend_liveVideoSourceCollection(v15, v16, v17);

  sourceId = self->_sourceId;
  if (!sourceId || (objc_msgSend_sourceWithObjectUUID_(v18, v19, sourceId), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = objc_msgSend_defaultSource(v18, v19, sourceId);
  }

  return v21;
}

- (void)setSource:(id)source
{
  v5 = objc_msgSend_objectUUID(source, a2, source);
  objc_msgSend_setI_sourceId_(self, v4, v5);
}

- (void)setI_sourceId:(id)id
{
  idCopy = id;
  sourceId = self->_sourceId;
  if (idCopy | sourceId)
  {
    v14 = idCopy;
    isEqual = objc_msgSend_isEqual_(sourceId, idCopy, idCopy);
    idCopy = v14;
    if ((isEqual & 1) == 0)
    {
      objc_msgSend_willModify(self, v14, v7);
      v10 = objc_msgSend_copy(v14, v8, v9);
      v11 = self->_sourceId;
      self->_sourceId = v10;

      objc_msgSend_p_updateSlideNodeLiveVideoSourceUsage(self, v12, v13);
      idCopy = v14;
    }
  }
}

- (int64_t)effectiveMaskKind
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  v6 = objc_msgSend_effectiveMaskKindForGeometry_(self, v5, v4);

  return v6;
}

- (int64_t)effectiveMaskKindForGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (objc_msgSend_maskKind(self, v5, v6) == 1)
  {
    objc_msgSend_size(geometryCopy, v7, v8);
    v11 = vabdd_f64(v9, v10) < 0.00999999978 || v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)backgroundKind
{
  v3 = objc_msgSend_i_archivedBackgroundKind(self, a2, v2);
  v4 = objc_opt_class();

  return objc_msgSend_i_backgroundKindForArchivedBackgroundKind_(v4, v5, v3);
}

- (void)setBackgroundKind:(int64_t)kind
{
  objc_msgSend_setI_archivedBackgroundKind_(self, a2, kind == 1);

  objc_msgSend_p_updateSlideNodeLiveVideoSourceUsage(self, v4, v5);
}

- (int64_t)effectiveBackgroundKind
{
  v4 = objc_msgSend_backgroundKind(self, a2, v2);
  v7 = objc_msgSend_source(self, v5, v6);
  v9 = objc_msgSend_supportsBackgroundKind_(v7, v8, v4);

  if (v9)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)setIsPlaceholder:(BOOL)placeholder
{
  if (self->_isPlaceholder != placeholder)
  {
    objc_msgSend_willModify(self, a2, placeholder);
    self->_isPlaceholder = placeholder;

    objc_msgSend_p_updateSlideNodeLiveVideoSourceUsage(self, v5, v6);
  }
}

- (void)p_updateSlideNodeLiveVideoSourceUsage
{
  v2 = objc_msgSend_parentSlideNodeForInfo_(KNSlideNode, a2, self);
  if (v2)
  {
    v5 = v2;
    objc_msgSend_updateLiveVideoSourceUsage(v2, v3, v4);
    v2 = v5;
  }
}

+ (id)i_makeArchivedMoviePosterImageDataWithContext:(id)context
{
  contextCopy = context;
  v4 = TSDBitmapContextCreate();
  v7 = objc_msgSend_blackColor(MEMORY[0x277D81180], v5, v6);
  v10 = objc_msgSend_CGColor(v7, v8, v9);
  CGContextSetFillColorWithColor(v4, v10);

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 1.0;
  v17.size.height = 1.0;
  CGContextFillRect(v4, v17);
  Image = CGBitmapContextCreateImage(v4);
  CGContextRelease(v4);
  v12 = CGImagePNGRepresentation();
  v14 = objc_msgSend_dataFromNSData_filename_context_(MEMORY[0x277D80828], v13, v12, @"blankMoviePosterImage.png", contextCopy);

  CGImageRelease(Image);

  return v14;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v7.receiver = self;
  v7.super_class = KNLiveVideoInfo;
  canAspectRatioLockBeChangedByUser = [(KNLiveVideoInfo *)&v7 canAspectRatioLockBeChangedByUser];
  if (canAspectRatioLockBeChangedByUser)
  {
    LOBYTE(canAspectRatioLockBeChangedByUser) = objc_msgSend_effectiveMaskKind(self, v4, v5) != 1;
  }

  return canAspectRatioLockBeChangedByUser;
}

- (id)defaultDescriptiveName
{
  v3 = objc_msgSend_source(self, a2, v2);
  v6 = objc_msgSend_name(v3, v4, v5);

  return v6;
}

- (id)typeName
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Live Video", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  if (!v4)
  {
    sub_275E5A140();
  }

  v7 = v4;
  if (v4 != self->_style)
  {
    v8 = objc_msgSend_properties(MEMORY[0x277D80340], v5, v6);
    objc_msgSend_willChangeProperties_(self, v9, v8);

    objc_msgSend_willModify(self, v10, v11);
    objc_storeStrong(&self->_style, v7);
  }
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  v4 = objc_msgSend_fullPropertyMap(style, a2, style, *&info);
  v7 = objc_msgSend_copy(v4, v5, v6);

  objc_msgSend_validatePastedPropertyMap_(MEMORY[0x277D80340], v8, v7);

  return v7;
}

- (BOOL)containsProperty:(int)property
{
  v4.receiver = self;
  v4.super_class = KNLiveVideoInfo;
  return ((property - 4576) < 7) | [(KNLiveVideoInfo *)&v4 containsProperty:?];
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 4582:
      v3 = objc_msgSend_backgroundFill(self, a2, *&property);
      break;
    case 4578:
      v4 = MEMORY[0x277CCAE60];
      objc_msgSend_normalizedOffset(self, a2, *&property);
      v10[0] = v5;
      v10[1] = v6;
      v3 = objc_msgSend_valueWithBytes_objCType_(v4, v7, v10, "{CGPoint=dd}");
      break;
    case 4576:
      v3 = objc_msgSend_source(self, a2, *&property);
      break;
    default:
      v9.receiver = self;
      v9.super_class = KNLiveVideoInfo;
      v3 = [(KNLiveVideoInfo *)&v9 objectForProperty:?];
      break;
  }

  return v3;
}

- (int)intValueForProperty:(int)property
{
  if (property == 4581)
  {
    v3 = objc_msgSend_backgroundKind(self, a2, *&property);
    if (v3 < 0x80000000)
    {
      if (v3 > 0xFFFFFFFF7FFFFFFFLL)
      {
        return v3;
      }

      sub_275E5A1F4();
      goto LABEL_15;
    }

    sub_275E5A278();
  }

  else
  {
    if (property != 4579)
    {
      v5.receiver = self;
      v5.super_class = KNLiveVideoInfo;
      LODWORD(v3) = [(KNLiveVideoInfo *)&v5 intValueForProperty:?];
      return v3;
    }

    v3 = objc_msgSend_maskKind(self, a2, *&property);
    if (v3 < 0x80000000)
    {
      if (v3 > 0xFFFFFFFF7FFFFFFFLL)
      {
        return v3;
      }

      sub_275E5A2FC();
LABEL_15:
      LODWORD(v3) = 0x80000000;
      return v3;
    }

    sub_275E5A380();
  }

  LODWORD(v3) = 0x7FFFFFFF;
  return v3;
}

- (double)doubleValueForProperty:(int)property
{
  if (property == 4580)
  {

    objc_msgSend_maskCornerRadius(self, a2, *&property);
  }

  else if (property == 4577)
  {

    objc_msgSend_scale(self, a2, *&property);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = KNLiveVideoInfo;
    [(KNLiveVideoInfo *)&v6 doubleValueForProperty:?];
  }

  return result;
}

- (void)acceptVisitor:(id)visitor
{
  v4 = TSUProtocolCast();
  if (v4)
  {
    v6 = v4;
    objc_msgSend_visitKNLiveVideoInfo_(v4, v5, self, &unk_2885462B0);
    v4 = v6;
  }
}

- (id)animationFilters
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = *MEMORY[0x277D80570];
  v9[0] = *MEMORY[0x277D805A0];
  v9[1] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v9, 2);
  v7 = objc_msgSend_initWithArray_(v2, v6, v5);

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();

  if (!v8)
  {
    goto LABEL_33;
  }

  v11 = objc_msgSend_source(self, v9, v10);
  objc_msgSend_source(v8, v12, v13);

  v16 = objc_msgSend_geometry(self, v14, v15);
  v19 = objc_msgSend_geometry(v8, v17, v18);
  objc_msgSend_mixingTypeWithObject_context_(v16, v20, v19, contextCopy);
  TSDMixingTypeBestFromMixingTypes();

  v21 = MEMORY[0x277CCABB0];
  objc_msgSend_scale(self, v22, v23);
  v26 = objc_msgSend_numberWithDouble_(v21, v24, v25);
  v27 = MEMORY[0x277CCABB0];
  objc_msgSend_scale(v8, v28, v29);
  v32 = objc_msgSend_numberWithDouble_(v27, v30, v31);
  objc_msgSend_mixingTypeWithObject_context_(v26, v33, v32, contextCopy);
  TSDMixingTypeBestFromMixingTypes();

  v34 = MEMORY[0x277CCAE60];
  objc_msgSend_normalizedOffset(self, v35, v36);
  v164[0] = v37;
  v164[1] = v38;
  v40 = objc_msgSend_valueWithBytes_objCType_(v34, v39, v164, "{CGPoint=dd}");
  v41 = MEMORY[0x277CCAE60];
  objc_msgSend_normalizedOffset(v8, v42, v43);
  v163[0] = v44;
  v163[1] = v45;
  v47 = objc_msgSend_valueWithBytes_objCType_(v41, v46, v163, "{CGPoint=dd}");
  objc_msgSend_mixingTypeWithObject_context_(v40, v48, v47, contextCopy);
  v49 = TSDMixingTypeBestFromMixingTypes();

  if (v49 != 1)
  {
    v52 = objc_msgSend_maskKind(self, v50, v51);
    if (v52 == objc_msgSend_maskKind(v8, v53, v54))
    {
      if (v52 || (objc_msgSend_maskCornerRadius(self, v50, v51), v65 = v64, objc_msgSend_maskCornerRadius(v8, v66, v67), v65 == v68))
      {
        v55 = objc_msgSend_backgroundKind(self, v50, v51);
        if (v55 == objc_msgSend_backgroundKind(v8, v56, v57) && v55 == 1)
        {
          v58 = objc_msgSend_backgroundFill(self, v50, v51);
          v61 = objc_msgSend_backgroundFill(v8, v59, v60);
          objc_opt_class();
          v62 = TSUCheckedClassAndProtocolCast();
          objc_opt_class();
          v162 = &unk_2885032E0;
          v63 = TSUCheckedClassAndProtocolCast();
          TSDMixingTypeWithObjects();
          TSDMixingTypeBestFromMixingTypes();
        }
      }
    }
  }

  v69 = objc_msgSend_style(self, v50, v51, v162);
  v72 = objc_msgSend_style(v8, v70, v71);
  TSDMixingTypeWithObjects();
  v73 = TSDMixingTypeBestFromMixingTypes();

  if (v73 == 1)
  {
    goto LABEL_33;
  }

  v76 = objc_msgSend_reflection(self, v74, v75);
  v77 = v76 != 0;

  v80 = objc_msgSend_reflection(v8, v78, v79);

  if (v77 == (v80 == 0))
  {
    goto LABEL_33;
  }

  v83 = objc_msgSend_shadow(self, v81, v82);
  v86 = v83;
  if (v83)
  {
    isEnabled = objc_msgSend_isEnabled(v83, v84, v85);
  }

  else
  {
    isEnabled = 0;
  }

  v88 = objc_msgSend_shadow(v8, v84, v85);
  v91 = v88;
  if (!v88)
  {
    v94 = 0;
LABEL_25:

    if (isEnabled != v94)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v94 = objc_msgSend_isEnabled(v88, v89, v90);
  if ((isEnabled & v94) != 1)
  {
    goto LABEL_25;
  }

  v95 = objc_msgSend_shadowType(v86, v92, v93);
  if (v95 != objc_msgSend_shadowType(v91, v96, v97) || (objc_msgSend_radius(v86, v98, v99), v101 = v100, objc_msgSend_radius(v91, v102, v103), v101 != v106) && vabdd_f64(v101, v106) >= 0.00999999978 || (objc_msgSend_angle(v86, v104, v105), v108 = v107, objc_msgSend_angle(v91, v109, v110), v108 != v113) && vabdd_f64(v108, v113) >= 0.00999999978 || (objc_msgSend_offset(v86, v111, v112), v115 = v114, objc_msgSend_offset(v91, v116, v117), v115 != v118) && vabdd_f64(v115, v118) >= 0.00999999978)
  {

LABEL_33:
    v135 = 1;
    goto LABEL_34;
  }

LABEL_26:
  v121 = objc_msgSend_stroke(self, v119, v120);
  v124 = objc_msgSend_stroke(v8, v122, v123);
  v127 = v124;
  if ((v121 != 0) != (v124 != 0))
  {
    v128 = 1;
  }

  else
  {
    v128 = v73;
  }

  if (!v121 || !v124)
  {
    goto LABEL_54;
  }

  isFrame = objc_msgSend_isFrame(v121, v125, v126);
  v132 = objc_msgSend_isFrame(v127, v130, v131);
  if (isFrame != v132)
  {
LABEL_32:

    goto LABEL_33;
  }

  if ((isFrame & v132) == 1)
  {
    objc_opt_class();
    v137 = TSUDynamicCast();
    objc_opt_class();
    v138 = TSUDynamicCast();
    v141 = v138;
    if (v137 && v138)
    {
      v142 = objc_msgSend_archivableFrameName(v137, v139, v140);
      v145 = objc_msgSend_archivableFrameName(v141, v143, v144);
      if (objc_msgSend_isEqualToString_(v142, v146, v145))
      {
        objc_msgSend_assetScale(v137, v147, v148);
        v150 = v149;
        objc_msgSend_assetScale(v141, v151, v152);
        v154 = v153;
        v155 = vabdd_f64(v150, v153);

        if (v155 < 0.00999999978 || v150 == v154)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    v73 = 1;
LABEL_52:

LABEL_53:
    v128 = v73;
    goto LABEL_54;
  }

  if ((isFrame | v132))
  {
    goto LABEL_53;
  }

  objc_msgSend_width(v121, v133, v134);
  v158 = v157;
  objc_msgSend_width(v127, v159, v160);
  if (v158 == v161)
  {
    goto LABEL_53;
  }

  v128 = v73;
  if (vabdd_f64(v158, v161) >= 0.00999999978)
  {
    goto LABEL_32;
  }

LABEL_54:

  if (v128 == 3)
  {
    v135 = 2;
  }

  else
  {
    v135 = v128;
  }

LABEL_34:

  return v135;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  v7 = objectCopy;
  if (fraction >= 1.0)
  {
    self = objectCopy;
  }

  selfCopy = self;

  return self;
}

+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == class)
  {
    v7 = unarchiverCopy;
    v8 = MEMORY[0x277D80558];
    google::protobuf::internal::AssignDescriptors();
    v10 = objc_msgSend_messageWithDescriptor_(v7, v9, *(*(v8 + 88) + 720));

    if (google::protobuf::internal::ExtensionSet::Has((v10 + 16)))
    {
      class = self;
    }
  }

  classCopy = class;

  return class;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, *(*(v4 + 88) + 720));

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_275D7C4DC, *(*(v4 + 88) + 720));

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 8))
  {
    v7 = *(archive + 8);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v28.receiver = self;
  v28.super_class = KNLiveVideoInfo;
  [(KNLiveVideoInfo *)&v28 loadFromArchive:v7 unarchiver:unarchiverCopy];
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v10 = Message;
  v11 = *(Message + 16);
  if (v11)
  {
    v12 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(unarchiverCopy, v9, *(Message + 24));
    sourceId = self->_sourceId;
    self->_sourceId = v12;

    v11 = *(v10 + 16);
  }

  v14 = *(v10 + 48);
  if ((v11 & 8) == 0)
  {
    v14 = 1.0;
  }

  self->_scale = v14;
  if ((v11 & 2) != 0)
  {
    TSPCGPointFromMessage(*(v10 + 32));
    self->_normalizedOffset.x = v15;
    self->_normalizedOffset.y = v16;
    v11 = *(v10 + 16);
  }

  if ((v11 & 0x20) != 0)
  {
    self->_maskKind = *(v10 + 60);
    if ((v11 & 0x40) == 0)
    {
LABEL_12:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_12;
  }

  self->_maskCornerRadius = *(v10 + 64);
  if ((v11 & 0x80) == 0)
  {
LABEL_13:
    if ((v11 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_backgroundKind = *(v10 + 72);
  if ((v11 & 4) == 0)
  {
LABEL_14:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  v24 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, *(v10 + 40), unarchiverCopy);
  backgroundFill = self->_backgroundFill;
  self->_backgroundFill = v24;

  if ((*(v10 + 16) & 0x10) != 0)
  {
LABEL_15:
    self->_isPlaceholder = *(v10 + 56);
  }

LABEL_16:
  v17 = *(archive + 15);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_275D7BCCC;
  v27[3] = &unk_27A6984E0;
  v27[4] = self;
  v18 = unarchiverCopy;
  v20 = objc_opt_class();
  if (v17)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v19, v17, v20, 0, v27);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v19, MEMORY[0x277D80A18], v20, 0, v27);
  }

  if ((*(archive + 40) & 0x80) != 0)
  {
    v22 = objc_msgSend_readDataReferenceMessage_(v18, v21, *(archive + 13));
    archivedMoviePosterImageData = self->_archivedMoviePosterImageData;
    self->_archivedMoviePosterImageData = v22;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_275D7BCE4;
  v26[3] = &unk_27A698390;
  v26[4] = self;
  objc_msgSend_addFinalizeHandler_(v18, v21, v26);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v84 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v75 = MEMORY[0x277D85DD0];
  v76 = 3221225472;
  v77 = sub_275D7C454;
  v78 = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v79 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, &v75);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v9, 100, archive, v75, v76, v77, v78);
  sub_275E16A0C();
  v10 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v12 = v10;
  sourceId = self->_sourceId;
  if (sourceId)
  {
    *(v10 + 16) |= 1u;
    v14 = *(v10 + 24);
    if (!v14)
    {
      v15 = *(v10 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8F000](v15);
      *(v12 + 24) = v14;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v7, v11, sourceId, v14);
  }

  v16 = *(v12 + 16);
  *(v12 + 48) = self->_scale;
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  *(v12 + 16) = v16 | 0xA;
  v19 = *(v12 + 32);
  if (!v19)
  {
    v20 = *(v12 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C8F020](v20);
    *(v12 + 32) = v19;
  }

  v85.x = x;
  v85.y = y;
  TSPCGPointCopyToMessage(v85, v19);
  maskKind = self->_maskKind;
  if (maskKind >= 0x80000000)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 135, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
    LODWORD(maskKind) = 0x7FFFFFFF;
  }

  else if (maskKind <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 135, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
    LODWORD(maskKind) = 0x80000000;
  }

  v23 = *(v12 + 16);
  *(v12 + 60) = maskKind;
  maskCornerRadius = self->_maskCornerRadius;
  v25 = v23 | 0x60;
  *(v12 + 16) = v23 | 0x60;
  *(v12 + 64) = maskCornerRadius;
  backgroundKind = self->_backgroundKind;
  if (backgroundKind)
  {
    if (backgroundKind >= 0x80000000)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 141, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
      LODWORD(v27) = 0x7FFFFFFF;
    }

    else if (backgroundKind <= 0xFFFFFFFF7FFFFFFFLL)
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNLiveVideoInfo(KNLiveVideoInfoPersistenceAdditions) saveToArchive:archiver:]");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 141, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
      LODWORD(v27) = 0x80000000;
    }

    else
    {
      v27 = self->_backgroundKind;
    }

    *(v12 + 16) |= 0x80u;
    *(v12 + 72) = v27;
    v82 = 0x700000064;
    v83 = 0;
    objc_msgSend_setIgnoreAndPreserveRuleForFieldPath_message_(v7, v21, &v82, archive);
    v25 = *(v12 + 16);
  }

  backgroundFill = self->_backgroundFill;
  if (backgroundFill)
  {
    *(v12 + 16) = v25 | 4;
    v29 = *(v12 + 40);
    if (!v29)
    {
      v30 = *(v12 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C8EF70](v30);
      *(v12 + 40) = v29;
    }

    objc_msgSend_saveToArchive_archiver_(backgroundFill, v21, v29, v7);
    v82 = 0x800000064;
    v83 = 0;
    objc_msgSend_setIgnoreAndPreserveRuleForFieldPath_message_(v7, v31, &v82, archive);
    v25 = *(v12 + 16);
  }

  isPlaceholder = self->_isPlaceholder;
  *(v12 + 16) = v25 | 0x10;
  *(v12 + 56) = isPlaceholder;
  *(archive + 10) |= 0x20000000u;
  *(archive + 206) = 1;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v21, 30, archive);
  style = self->_style;
  *(archive + 10) |= 0x200u;
  v35 = *(archive + 15);
  if (!v35)
  {
    v36 = *(archive + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C8F050](v36);
    *(archive + 15) = v35;
  }

  objc_msgSend_setStrongReference_message_(v7, v33, style, v35);
  archivedMoviePosterImageData = self->_archivedMoviePosterImageData;
  if (archivedMoviePosterImageData)
  {
    *(archive + 10) |= 0x80u;
    v39 = *(archive + 13);
    if (!v39)
    {
      v40 = *(archive + 1);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = MEMORY[0x277C8EFD0](v40);
      *(archive + 13) = v39;
    }

    objc_msgSend_setDataReference_message_(v7, v37, archivedMoviePosterImageData, v39);
  }

  v41 = sub_275E53AD0();
  v42 = sub_275E53AE0();
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v43, v41, v42, @"KNLiveVideos");
  if (backgroundKind)
  {
    v44 = sub_275E53AD0();
    v45 = sub_275E53AF0();
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v46, v44, v45, @"KNLiveVideoBackgrounds");
  }
}

@end