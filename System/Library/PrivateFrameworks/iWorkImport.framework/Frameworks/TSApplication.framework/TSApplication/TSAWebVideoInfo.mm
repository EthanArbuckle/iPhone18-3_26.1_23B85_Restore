@interface TSAWebVideoInfo
+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (id)p_defaultArchivedImageStyleWithContext:(id)context;
- (NSURL)URL;
- (TSAWebVideoInfo)initWithContext:(id)context geometry:(id)geometry URL:(id)l posterImageData:(id)data;
- (TSAWebVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style URL:(id)l posterImageData:(id)data;
- (id)animationFilters;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)p_attributedStringRepresentation;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)promisedDataForType:(id)type;
- (id)typeName;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)didInitFromSOS;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)scaleDownSizeToFitWithinSize:(CGSize)size;
- (void)setAttribution:(id)attribution;
- (void)setPosterImageData:(id)data;
- (void)setStyle:(id)style;
- (void)takeGeometryFromReplacedWebVideoInfo:(id)info;
- (void)takePropertiesFromReplacedWebVideoInfo:(id)info;
@end

@implementation TSAWebVideoInfo

- (void)setPosterImageData:(id)data
{
  dataCopy = data;
  if (self->_posterImageData != dataCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->_posterImageData, v9);
    objc_storeStrong(&self->_posterImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v10, dataCopy, v11);
  }
}

- (TSAWebVideoInfo)initWithContext:(id)context geometry:(id)geometry URL:(id)l posterImageData:(id)data
{
  contextCopy = context;
  geometryCopy = geometry;
  lCopy = l;
  dataCopy = data;
  v14 = objc_opt_class();
  v17 = objc_msgSend_p_defaultArchivedImageStyleWithContext_(v14, v15, contextCopy, v16);
  v19 = objc_msgSend_initWithContext_geometry_style_URL_posterImageData_(self, v18, contextCopy, geometryCopy, v17, lCopy, dataCopy);

  return v19;
}

- (TSAWebVideoInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style URL:(id)l posterImageData:(id)data
{
  contextCopy = context;
  geometryCopy = geometry;
  styleCopy = style;
  lCopy = l;
  dataCopy = data;
  v42.receiver = self;
  v42.super_class = TSAWebVideoInfo;
  v17 = [(TSAWebVideoInfo *)&v42 initWithContext:contextCopy geometry:geometryCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_style, style);
    v19 = objc_alloc(MEMORY[0x277D802B0]);
    v22 = objc_msgSend_initWithImageData_(v19, v20, dataCopy, v21);
    objc_msgSend_naturalSize(v22, v23, v24, v25);
    v18->_archivedImageNaturalSize.width = v26;
    v18->_archivedImageNaturalSize.height = v27;

    v31 = objc_msgSend_absoluteString(lCopy, v28, v29, v30);
    v35 = objc_msgSend_copy(v31, v32, v33, v34);
    URLString = v18->_URLString;
    v18->_URLString = v35;

    objc_msgSend_setPosterImageData_(v18, v37, dataCopy, v38);
    v18->_definedPosterImageData = v18->_posterImageData != 0;
    objc_msgSend_setAspectRatioLocked_(v18, v39, 1, v40);
  }

  return v18;
}

- (id)typeName
{
  v4 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Web Video", &stru_288512028, @"TSApplication");

  return v6;
}

- (NSURL)URL
{
  v3 = objc_alloc(MEMORY[0x277CBEBC0]);
  v6 = objc_msgSend_initWithString_(v3, v4, self->_URLString, v5);

  return v6;
}

- (void)setAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (self->_attribution != attributionCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    v10 = objc_msgSend_copy(attributionCopy, v7, v8, v9);
    attribution = self->_attribution;
    self->_attribution = v10;

    self->_definedAttribution = self->_attribution != 0;
  }
}

- (void)takeGeometryFromReplacedWebVideoInfo:(id)info
{
  v5 = objc_msgSend_geometry(info, a2, info, v3);
  v46 = objc_msgSend_mutableCopy(v5, v6, v7, v8);

  objc_msgSend_center(v46, v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v19 = objc_msgSend_geometry(self, v16, v17, v18);
  objc_msgSend_size(v19, v20, v21, v22);
  objc_msgSend_size(v46, v23, v24, v25);
  TSUFitOrFillSizeInSize();
  v27 = v26;
  v29 = v28;

  if (v27 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v37 = objc_msgSend_geometry(self, v30, v31, v32);
    objc_msgSend_size(v37, v38, v39, v40);
    objc_msgSend_setSize_(v46, v41, v42, v43);
  }

  else
  {
    objc_msgSend_setSize_(v46, v30, v31, v32, v27, v29);
  }

  objc_msgSend_setCenter_(v46, v34, v35, v36, v13, v15);
  objc_msgSend_setGeometry_(self, v44, v46, v45);
}

- (void)takePropertiesFromReplacedWebVideoInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_context(self, v4, v5, v6);
  objc_msgSend_takeGeometryFromReplacedWebVideoInfo_(self, v8, infoCopy, v9);
  v13 = objc_msgSend_style(infoCopy, v10, v11, v12);
  objc_msgSend_setStyle_(self, v14, v13, v15);

  if (objc_msgSend_supportsAttachedComments(self, v16, v17, v18))
  {
    v22 = objc_msgSend_comment(infoCopy, v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_comment(infoCopy, v19, v20, v21);
      v27 = objc_msgSend_storage(v23, v24, v25, v26);

      v28 = objc_alloc(MEMORY[0x277D80200]);
      v32 = objc_msgSend_text(v27, v29, v30, v31);
      v36 = objc_msgSend_creationDate(v27, v33, v34, v35);
      v40 = objc_msgSend_author(v27, v37, v38, v39);
      v44 = objc_msgSend_replies(v27, v41, v42, v43);
      v46 = objc_msgSend_initWithContext_text_creationDate_author_replies_(v28, v45, v7, v32, v36, v40, v44);

      v47 = objc_alloc(MEMORY[0x277D80218]);
      v49 = objc_msgSend_initWithParent_storage_(v47, v48, self, v46);
      objc_msgSend_setComment_(self, v50, v49, v51);
    }
  }

  v52 = objc_msgSend_exteriorTextWrap(infoCopy, v19, v20, v21);
  objc_msgSend_setExteriorTextWrap_(self, v53, v52, v54);

  v58 = objc_msgSend_aspectRatioLocked(infoCopy, v55, v56, v57);
  objc_msgSend_setAspectRatioLocked_(self, v59, v58, v60);
  v64 = objc_msgSend_hyperlinkURL(infoCopy, v61, v62, v63);
  objc_msgSend_setHyperlinkURL_(self, v65, v64, v66);

  if (objc_msgSend_allowsTitle(self, v67, v68, v69))
  {
    v73 = objc_msgSend_titleInfoIgnoringVisibility(infoCopy, v70, v71, v72);
    v77 = objc_msgSend_replicateForReinsertion(v73, v74, v75, v76);
    objc_msgSend_setTitle_(self, v78, v77, v79);
  }

  v80 = objc_msgSend_titleHidden(infoCopy, v70, v71, v72);
  objc_msgSend_setTitleHidden_(self, v81, v80, v82);
  if (objc_msgSend_allowsCaption(self, v83, v84, v85))
  {
    v89 = objc_msgSend_captionInfoIgnoringVisibility(infoCopy, v86, v87, v88);
    v93 = objc_msgSend_replicateForReinsertion(v89, v90, v91, v92);
    objc_msgSend_setCaption_(self, v94, v93, v95);
  }

  v96 = objc_msgSend_captionHidden(infoCopy, v86, v87, v88);
  objc_msgSend_setCaptionHidden_(self, v97, v96, v98);
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)size
{
  if (objc_msgSend_tsp_isInDocument(self, a2, v3, v4))
  {
    v9 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAWebVideoInfo scaleDownSizeToFitWithinSize:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v49, v12, 223, 0, "Cannot mutate an object that is in the document!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_parentInfo(self, v6, v7, v8);

  if (v17)
  {
    v21 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSAWebVideoInfo scaleDownSizeToFitWithinSize:]", v20);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v50, v24, 224, 0, "Should not scale down size on info with a parent!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27, v28);
  }

  v51 = objc_msgSend_geometry(self, v18, v19, v20);
  objc_msgSend_size(v51, v29, v30, v31);
  v33 = v32;
  v35 = v34;
  TSUShrinkSizeToFitInSize();
  v41 = v40;
  v42 = v39;
  if (v40 < v33 || v39 < v35)
  {
    v43 = objc_msgSend_mutableCopy(v51, v36, v37, v38);
    objc_msgSend_setSize_(v43, v44, v45, v46, v41, v42);
    objc_msgSend_setGeometry_(self, v47, v43, v48);
  }
}

- (id)typesToPromiseWhenCopyingSingleDrawable
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], a2, v2, v3);
  v12[0] = v4;
  v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v5, v6, v7);
  v12[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v12, 2);

  return v10;
}

- (id)promisedDataForType:(id)type
{
  v40[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v5, v6, v7);
  v11 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v9, v8, v10);

  if (v11)
  {
    v15 = objc_msgSend_p_attributedStringRepresentation(self, v12, v13, v14);
    v19 = objc_msgSend_length(v15, v16, v17, v18);
    v39 = *MEMORY[0x277D74090];
    v40[0] = *MEMORY[0x277D74130];
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v40, &v39, 1);
    v23 = objc_msgSend_dataFromRange_documentAttributes_error_(v15, v22, 0, v19, v21, 0);
  }

  else
  {
    v24 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v12, v13, v14);
    v27 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v25, v24, v26);

    if (v27)
    {
      v31 = objc_msgSend_URL(self, v28, v29, v30);
      v35 = objc_msgSend_absoluteString(v31, v32, v33, v34);
      v23 = objc_msgSend_dataUsingEncoding_(v35, v36, 4, v37);
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)p_attributedStringRepresentation
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_URL(self, a2, v2, v3);
  v5 = objc_alloc(MEMORY[0x277CCA898]);
  v9 = objc_msgSend_absoluteString(v4, v6, v7, v8);
  v15 = *MEMORY[0x277D740E8];
  v16[0] = v4;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v16, &v15, 1);
  v13 = objc_msgSend_initWithString_attributes_(v5, v12, v9, v11);

  return v13;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_pushMappingContext_(mapperCopy, v8, self, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_27609287C;
  v16[3] = &unk_27A6AF678;
  v10 = mapperCopy;
  v17 = v10;
  objc_msgSend_replaceReferencedStylesUsingBlock_(self, v11, v16, v12);
  v15.receiver = self;
  v15.super_class = TSAWebVideoInfo;
  [(TSAWebVideoInfo *)&v15 adoptStylesheet:stylesheetCopy withMapper:v10];
  objc_msgSend_popMappingContext_(v10, v13, self, v14);
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    style = self->_style;
    self->_style = v7;
  }
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  styleCopy = style;
  v5 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAWebVideoInfo pastedPropertyMapForStyle:tailLineEndInfo:]", v7);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v8, v11, 342, 0, "Styles should not be pasted on web videos.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  v19 = objc_msgSend_fullPropertyMap(styleCopy, v16, v17, v18);
  v23 = objc_msgSend_copy(v19, v20, v21, v22);

  return v23;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy[2](blockCopy, self->_style);
  if (v6)
  {
    objc_msgSend_setStyle_(self, v4, v6, v5);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSAWebVideoInfo replaceReferencedStylesUsingBlock:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 358, 0, "Failed to map style %{public}@", self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

- (id)animationFilters
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D805A8];
  v9[0] = *MEMORY[0x277D805A0];
  v9[1] = v3;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v9, 2);
  v7 = objc_msgSend_setWithArray_(v2, v5, v4, v6);

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v11 = TSUDynamicCast();
  if (v11)
  {
    v12 = objc_msgSend_geometry(self, v8, v9, v10);
    v16 = objc_msgSend_geometry(v11, v13, v14, v15);
    objc_msgSend_mixingTypeWithObject_context_(v12, v17, v16, contextCopy);
    v18 = TSDMixingTypeBestFromMixingTypes();

    v22 = objc_msgSend_URL(self, v19, v20, v21);
    v26 = objc_msgSend_URL(v11, v23, v24, v25);
    isEqual = objc_msgSend_isEqual_(v22, v27, v26, v28);

    if ((isEqual & 1) == 0)
    {
      v18 = TSDMixingTypeBestFromMixingTypes();
    }

    v33 = objc_msgSend_posterImageData(self, v30, v31, v32);
    v37 = objc_msgSend_posterImageData(v11, v34, v35, v36);
    v40 = objc_msgSend_isEqual_(v33, v38, v37, v39);

    if ((v40 & 1) == 0)
    {
      v18 = TSDMixingTypeBestFromMixingTypes();
    }

    if (v18 == 3)
    {
      v41 = 2;
    }

    else
    {
      v41 = v18;
    }
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAWebVideoInfo mixingTypeWithObject:context:]", v10);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 377, 0, "invalid nil value for '%{public}s'", "otherWebVideoInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
    v41 = 1;
  }

  return v41;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v10 = objc_msgSend_geometry(self, v7, v8, v9);
  v14 = objc_msgSend_geometry(v6, v11, v12, v13);
  v15 = TSDMixingMixedObjectWithFraction();

  v16 = [TSAWebVideoInfo alloc];
  v20 = objc_msgSend_context(self, v17, v18, v19);
  v24 = objc_msgSend_URL(self, v21, v22, v23);
  v28 = objc_msgSend_posterImageData(self, v25, v26, v27);
  v30 = objc_msgSend_initWithContext_geometry_URL_posterImageData_(v16, v29, v20, v15, v24, v28);

  return v30;
}

+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == class)
  {
    v7 = unarchiverCopy;
    v8 = MEMORY[0x277D80558];
    google::protobuf::internal::AssignDescriptors();
    v11 = objc_msgSend_messageWithDescriptor_(v7, v9, *(*(v8 + 88) + 672), v10);

    if (google::protobuf::internal::ExtensionSet::Has((v11 + 16)))
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
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, *(*(v4 + 88) + 672), v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276094000, *(*(v4 + 88) + 672));

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 6))
  {
    v7 = *(archive + 6);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v45.receiver = self;
  v45.super_class = TSAWebVideoInfo;
  [(TSAWebVideoInfo *)&v45 loadFromArchive:v7 unarchiver:unarchiverCopy];
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v11 = *(Message + 16);
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(Message + 24) & 0xFFFFFFFFFFFFFFFELL, v14);
    URLString = self->_URLString;
    self->_URLString = v15;

    v11 = *(Message + 16);
  }

  if ((v11 & 2) != 0)
  {
    v17 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(Message + 32), v9);
    posterImageData = self->_posterImageData;
    self->_posterImageData = v17;
  }

  if (!self->_posterImageData)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAWebVideoInfo loadFromArchive:unarchiver:]", v9);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 453, 0, "invalid nil value for '%{public}s'", "_posterImageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    if (!self->_posterImageData)
    {
      v31 = objc_msgSend_null(MEMORY[0x277D80828], v28, v29, v30);
      v32 = self->_posterImageData;
      self->_posterImageData = v31;
    }
  }

  self->_definedPosterImageData = 1;
  if ((*(Message + 16) & 4) != 0)
  {
    v33 = objc_alloc(MEMORY[0x277D801C0]);
    if (*(Message + 40))
    {
      v35 = objc_msgSend_initFromMessage_unarchiver_(v33, v34, *(Message + 40), unarchiverCopy);
    }

    else
    {
      v35 = objc_msgSend_initFromMessage_unarchiver_(v33, v34, MEMORY[0x277D80480], unarchiverCopy);
    }

    attribution = self->_attribution;
    self->_attribution = v35;

    self->_definedAttribution = 1;
  }

  v37 = *(archive + 8);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2760935B8;
  v44[3] = &unk_27A6AF6A0;
  v44[4] = self;
  v38 = unarchiverCopy;
  v40 = objc_opt_class();
  if (v37)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v39, v37, v40, 0, v44);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v39, MEMORY[0x277D80A18], v40, 0, v44);
  }

  if (*(archive + 13))
  {
    v41 = *(archive + 13);
  }

  else
  {
    v41 = MEMORY[0x277D809D8];
  }

  TSPCGSizeCreateFromMessage(v41);
  self->_archivedImageNaturalSize.width = v42;
  self->_archivedImageNaturalSize.height = v43;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v72 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_276093B54;
  v62[3] = &unk_27A6AF6C8;
  archiveCopy = archive;
  v7 = archiverCopy;
  v63 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v62);
  v10 = objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v9, 300, archive);
  TSA::WebVideoInfo::default_instance(v10);
  v14 = google::protobuf::internal::ExtensionSet::MutableMessage();
  URLString = self->_URLString;
  if (URLString)
  {
    v16 = objc_msgSend_tsp_protobufString(URLString, v11, v12, v13);
    *(v14 + 16) |= 1u;
    sub_276093EA0(__p, v16);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v69 < 0)
    {
      operator delete(__p[0]);
    }
  }

  posterImageData = self->_posterImageData;
  if (posterImageData)
  {
    *(v14 + 16) |= 2u;
    v18 = *(v14 + 32);
    if (!v18)
    {
      v19 = *(v14 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C95130](v19);
      *(v14 + 32) = v18;
    }

    objc_msgSend_setDataReference_message_(v7, v11, posterImageData, v18);
  }

  attribution = self->_attribution;
  if (attribution)
  {
    *(v14 + 16) |= 4u;
    v21 = *(v14 + 40);
    if (!v21)
    {
      v22 = *(v14 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C95060](v22);
      *(v14 + 40) = v21;
    }

    objc_msgSend_saveToMessage_archiver_(attribution, v11, v21, v7);
  }

  v26 = self->_posterImageData;
  if (!v26)
  {
    v26 = objc_msgSend_null(MEMORY[0x277D80828], v23, v24, v25);
  }

  *(archive + 10) |= 0x200u;
  v27 = *(archive + 15);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C95130](v28);
    *(archive + 15) = v27;
  }

  objc_msgSend_setDataReference_message_(v7, v23, v26, v27);
  style = self->_style;
  *(archive + 10) |= 4u;
  v31 = *(archive + 8);
  if (!v31)
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x277C951B0](v32);
    *(archive + 8) = v31;
  }

  objc_msgSend_setStrongReference_message_(v7, v29, style, v31);
  width = self->_archivedImageNaturalSize.width;
  height = self->_archivedImageNaturalSize.height;
  *(archive + 10) |= 8u;
  v35 = *(archive + 9);
  if (!v35)
  {
    v36 = *(archive + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C95160](v36);
    *(archive + 9) = v35;
  }

  v73.width = width;
  v73.height = height;
  TSPCGSizeCopyToMessage(v73, v35);
  v37 = self->_archivedImageNaturalSize.width;
  v38 = self->_archivedImageNaturalSize.height;
  *(archive + 10) |= 0x80u;
  v39 = *(archive + 13);
  if (!v39)
  {
    v40 = *(archive + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C95160](v40);
    *(archive + 13) = v39;
  }

  v74.width = v37;
  v74.height = v38;
  TSPCGSizeCopyToMessage(v74, v39);
  v44 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v41, v42, v43);
  v48 = v44;
  if (v44)
  {
    v49 = objc_msgSend_webVideoRequiredDocumentWriteVersion(v44, v45, v46, v47);
  }

  else
  {
    v49 = *MEMORY[0x277D808D0];
  }

  shouldSaveAlternates = objc_msgSend_shouldSaveAlternates(v7, v45, v46, v47);
  v54 = MEMORY[0x277D80970];
  if (shouldSaveAlternates)
  {
    v55 = objc_msgSend_hyperlinkURL(self, v51, v52, v53);
    if (!v55)
    {
      if (!self->_URLString)
      {
        goto LABEL_40;
      }

      v55 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(v7, v51, v49, *v54, archive);
      v56 = MEMORY[0x277D80558];
      google::protobuf::internal::AssignDescriptors();
      v58 = objc_msgSend_messageWithNewFunction_descriptor_(v55, v57, sub_276094000, *(*(v56 + 88) + 672));

      sub_27609406C(__p, self->_URLString);
      *(v58 + 40) |= 1u;
      v59 = *(v58 + 48);
      if (!v59)
      {
        v60 = *(v58 + 8);
        if (v60)
        {
          v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
        }

        v59 = MEMORY[0x277C95070](v60);
        *(v58 + 48) = v59;
      }

      v61 = __s;
      *(v59 + 16) |= 1u;
      sub_276093EA0(&v66, v61);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v67 < 0)
      {
        operator delete(v66);
      }

      if (v70)
      {
        free(v70);
      }
    }
  }

LABEL_40:
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v51, *v54, v49, @"TSAWebVideos");
}

+ (id)p_defaultArchivedImageStyleWithContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v7 = objc_msgSend_documentRoot(contextCopy, v4, v5, v6);
  v11 = objc_msgSend_theme(v7, v8, v9, v10);
  v13 = objc_msgSend_presetOfKind_index_(v11, v12, *MEMORY[0x277D80B38], 0);
  v14 = TSUCheckedDynamicCast();

  return v14;
}

- (void)didInitFromSOS
{
  v28.receiver = self;
  v28.super_class = TSAWebVideoInfo;
  [(TSAWebVideoInfo *)&v28 didInitFromSOS];
  if (!self->_posterImageData)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAWebVideoInfo didInitFromSOS]", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAWebVideoInfo.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 534, 0, "invalid nil value for '%{public}s'", "_posterImageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    if (!self->_posterImageData)
    {
      v17 = objc_msgSend_null(MEMORY[0x277D80828], v14, v15, v16);
      posterImageData = self->_posterImageData;
      self->_posterImageData = v17;
    }
  }

  v19 = objc_alloc(MEMORY[0x277D802B0]);
  v22 = objc_msgSend_initWithImageData_(v19, v20, self->_posterImageData, v21);
  objc_msgSend_naturalSize(v22, v23, v24, v25);
  self->_archivedImageNaturalSize.width = v26;
  self->_archivedImageNaturalSize.height = v27;
}

@end