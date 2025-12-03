@interface TSWPEquationInfo
+ (BOOL)archiveHasEquationSource:(id)source;
+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver;
+ (TSWPEquationInfo)equationInfoWithContext:(id)context equationInfo:(id)info textStorage:(id)storage charIndex:(unint64_t)index;
+ (TSWPEquationInfo)equationInfoWithContext:(id)context string:(id)string textStorage:(id)storage charIndex:(unint64_t)index;
+ (id)defaultTextProperties;
+ (id)eqKitEquationWithWithContext:(id)context source:(id)source error:(id *)error;
+ (id)filteredTextPropertiesFromTextProperties:(id)properties;
+ (id)fontNameFromTextProperties:(id)properties;
+ (id)pdfImageDataWithContext:(id)context equation:(id)equation layout:(id)layout layoutContext:(id)layoutContext sourceString:(id)string;
+ (id)propertiesForParagraphStyle:(id)style characterStyle:(id)characterStyle;
+ (id)propertiesForStorage:(id)storage characterIndex:(unint64_t)index;
- (BOOL)needsUpdateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index isAnchoredOrFloating:(BOOL)floating;
- (CGSize)defaultOriginalSize;
- (Class)layoutClass;
- (Class)repClass;
- (NSString)debugDescription;
- (NSString)description;
- (TSWPEquationInfo)initWithContext:(id)context string:(id)string;
- (TSWPEquationInfo)initWithContext:(id)context string:(id)string filteredTextProperties:(id)properties equation:(id)equation pdfImageData:(id)data depth:(double)depth geometry:(id)geometry style:(id)self0;
- (TSWPEquationInfo)initWithContext:(id)context string:(id)string targetGeometry:(id)geometry;
- (TSWPEquationInfo)initWithContext:(id)context string:(id)string textProperties:(id)properties;
- (id)descriptionForDrawableAttachment:(id)attachment;
- (id)promisedDataForType:(id)type;
- (id)propertiesForParentAttachment;
- (id)typeName;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int)format;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)didFinalizeUnarchivingFromWPStorage:(id)storage;
- (void)loadCharacterStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)rebuildEquationPDFIncludingGeometry:(BOOL)geometry;
- (void)replaceSourceWithNewSource:(id)source;
- (void)saveCharacterStylePropertiesFromPropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)updateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index isAnchoredOrFloating:(BOOL)floating;
- (void)updateTextProperties:(id)properties;
- (void)willChangeProperty:(int)property;
@end

@implementation TSWPEquationInfo

+ (BOOL)archiveHasEquationSource:(id)source
{
  sourceCopy = source;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(sourceCopy, v5, *(*(v4 + 88) + 672));

  if (google::protobuf::internal::ExtensionSet::Has((v6 + 16)) & 1) != 0 || (google::protobuf::internal::ExtensionSet::Has((v6 + 16)))
  {
    LOBYTE(v9) = 1;
  }

  else if ((objc_msgSend_sourceType(sourceCopy, v7, v8) == 2 || objc_msgSend_fileFormatVersion(sourceCopy, v11, v12) < *MEMORY[0x277D80998]) && (*(v6 + 41) & 2) != 0)
  {
    v13 = objc_msgSend_readDataReferenceMessage_(sourceCopy, v11, *(v6 + 120));
    v16 = objc_msgSend_type(v13, v14, v15);
    v19 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v17, v18);
    v21 = objc_msgSend_tsu_conformsToUTI_(v16, v20, v19);

    if (v21)
    {
      v9 = objc_msgSend_newCGDataProvider(v13, v22, v23);
      if (v9)
      {
        v25 = objc_msgSend_equationSourceFromDataProvider_(MEMORY[0x277D7FF70], v24, v9);
        CGDataProviderRelease(v9);
        LOBYTE(v9) = v25 != 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (Class)drawableInfoSubclassForClass:(Class)class unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_opt_class() == class && objc_msgSend_archiveHasEquationSource_(self, v7, unarchiverCopy))
  {
    class = objc_opt_class();
  }

  classCopy = class;

  return class;
}

+ (TSWPEquationInfo)equationInfoWithContext:(id)context equationInfo:(id)info textStorage:(id)storage charIndex:(unint64_t)index
{
  contextCopy = context;
  storageCopy = storage;
  v14 = objc_msgSend_source(info, v12, v13);
  v16 = objc_msgSend_equationInfoWithContext_string_textStorage_charIndex_(self, v15, contextCopy, v14, storageCopy, index);

  return v16;
}

+ (TSWPEquationInfo)equationInfoWithContext:(id)context string:(id)string textStorage:(id)storage charIndex:(unint64_t)index
{
  contextCopy = context;
  stringCopy = string;
  v13 = objc_msgSend_propertiesForStorage_characterIndex_(self, v12, storage, index);
  if (!stringCopy)
  {
    stringCopy = &stru_28860A0F0;
  }

  v14 = [TSWPEquationInfo alloc];
  v16 = objc_msgSend_initWithContext_string_textProperties_(v14, v15, contextCopy, stringCopy, v13);

  return v16;
}

+ (id)eqKitEquationWithWithContext:(id)context source:(id)source error:(id *)error
{
  contextCopy = context;
  sourceCopy = source;
  objc_opt_class();
  v11 = objc_msgSend_documentRoot(contextCopy, v9, v10);
  v12 = TSUDynamicCast();

  v16 = objc_msgSend_equationEnvironment(v12, v13, v14);
  if (!v16)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSWPEquationInfo eqKitEquationWithWithContext:source:error:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 164, 0, "Failed to get an equation environment from the document: using default environment.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v16 = objc_msgSend_defaultEnvironment(MEMORY[0x277D7FF68], v24, v25);
  }

  v26 = objc_msgSend_formatFromString_(MEMORY[0x277D7FF70], v15, sourceCopy);
  if (v26)
  {
    objc_msgSend_equationWithString_format_environment_error_(MEMORY[0x277D7FF70], v27, sourceCopy, v26, v16, error);
  }

  else
  {
    objc_msgSend_equationWithString_format_environment_error_(MEMORY[0x277D7FF70], v27, sourceCopy, 2, v16, error);
  }
  v28 = ;

  return v28;
}

+ (id)pdfImageDataWithContext:(id)context equation:(id)equation layout:(id)layout layoutContext:(id)layoutContext sourceString:(id)string
{
  contextCopy = context;
  v14 = objc_msgSend_pdfDataWithLayout_layoutContext_sourceString_tightFit_(equation, v12, layout, layoutContext, string, 1);
  if (v14)
  {
    v15 = objc_msgSend_dataFromNSData_filename_context_(MEMORY[0x277D80828], v13, v14, @"equation.pdf", contextCopy);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TSWPEquationInfo)initWithContext:(id)context string:(id)string
{
  contextCopy = context;
  stringCopy = string;
  v8 = objc_opt_class();
  v11 = objc_msgSend_defaultTextProperties(v8, v9, v10);
  v13 = objc_msgSend_initWithContext_string_textProperties_(self, v12, contextCopy, stringCopy, v11);

  return v13;
}

- (TSWPEquationInfo)initWithContext:(id)context string:(id)string textProperties:(id)properties
{
  contextCopy = context;
  stringCopy = string;
  propertiesCopy = properties;
  v93 = stringCopy;
  v92 = propertiesCopy;
  if (!stringCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPEquationInfo initWithContext:string:textProperties:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 195, 0, "invalid nil value for '%{public}s'", "equationString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_opt_class();
  v20 = objc_msgSend_filteredTextPropertiesFromTextProperties_(v18, v19, propertiesCopy);
  v21 = objc_opt_class();
  v95 = 0;
  v23 = objc_msgSend_eqKitEquationWithWithContext_source_error_(v21, v22, contextCopy, v93, &v95);
  v91 = v95;
  v24 = [TSWPEquationLayoutContext alloc];
  v28 = objc_msgSend_initWithTextProperties_containerSize_(v24, v25, v20, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  v29 = 0.0;
  v90 = v28;
  if (v23)
  {
    v30 = objc_msgSend_newLayout(v23, v26, v27);
    v32 = v30;
    if (v30)
    {
      objc_msgSend_layoutWithContext_(v30, v31, v28);
      objc_msgSend_erasableBounds(v32, v33, v34);
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      objc_msgSend_width(v32, v43, v44);
      if (v47 > 0.0)
      {
        objc_msgSend_vsize(v32, v45, v46);
        if (v48 > 0.0)
        {
          v96.origin.x = v36;
          v96.origin.y = v38;
          v96.size.width = v40;
          v96.size.height = v42;
          if (CGRectGetWidth(v96) > 0.0)
          {
            v97.origin.x = v36;
            v97.origin.y = v38;
            v97.size.width = v40;
            v97.size.height = v42;
            if (CGRectGetHeight(v97) > 0.0)
            {
              v49 = objc_opt_class();
              v51 = objc_msgSend_pdfImageDataWithContext_equation_layout_layoutContext_sourceString_(v49, v50, contextCopy, v23, v32, v28, v93);
              v52 = objc_alloc(MEMORY[0x277D802E8]);
              v55 = objc_msgSend_initWithSize_(v52, v53, v54, v40, v42);
              v29 = v42 + v38;

              if (v55)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  v51 = 0;
LABEL_13:
  objc_msgSend_baseFontSize(v28, v26, v27);
  v57 = v56;
  objc_msgSend_baseFontSize(v28, v58, v59);
  v61 = v60;
  v62 = objc_alloc(MEMORY[0x277D802E8]);
  v55 = objc_msgSend_initWithSize_(v62, v63, v64, v57, v61);
LABEL_14:
  objc_opt_class();
  v67 = objc_msgSend_documentRoot(contextCopy, v65, v66);
  v68 = TSUDynamicCast();

  v71 = objc_msgSend_theme(v68, v69, v70);
  v74 = objc_msgSend_defaultEquationStyle(v71, v72, v73);

  if (!v74)
  {
    v74 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80340], v75, contextCopy);
    objc_msgSend_setStyleIdentifier_(v74, v77, @"equation-0-imageStyle");
  }

  objc_msgSend_size(v55, v75, v76);
  if (v80 <= 0.0)
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSWPEquationInfo initWithContext:string:textProperties:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 238, 0, "invalid equation geometry width");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
  }

  if (!v51)
  {
    v51 = objc_msgSend_null(MEMORY[0x277D80828], v78, v79);
  }

  v88 = objc_msgSend_initWithContext_string_filteredTextProperties_equation_pdfImageData_depth_geometry_style_(self, v78, contextCopy, v93, v20, v23, v51, v55, v29, v74);

  return v88;
}

- (TSWPEquationInfo)initWithContext:(id)context string:(id)string targetGeometry:(id)geometry
{
  contextCopy = context;
  stringCopy = string;
  geometryCopy = geometry;
  v141 = geometryCopy;
  selfCopy = self;
  if (!contextCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 257, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (!stringCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 258, 0, "invalid nil value for '%{public}s'", "equationString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  if (!geometryCopy)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 259, 0, "invalid nil value for '%{public}s'", "targetGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  objc_msgSend_size(geometryCopy, v10, v11);
  if (v36 <= 0.0)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 260, 0, "invalid geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
  }

  objc_msgSend_size(geometryCopy, v34, v35);
  v45 = v44;
  v46 = objc_opt_class();
  v49 = objc_msgSend_defaultTextProperties(v46, v47, v48);
  objc_msgSend_CGFloatValueForProperty_(v49, v50, 17);
  v52 = v51;
  v53 = objc_opt_class();
  v144 = 0;
  v55 = objc_msgSend_eqKitEquationWithWithContext_source_error_(v53, v54, contextCopy, stringCopy, &v144);
  v140 = v144;
  v56 = [TSWPEquationLayoutContext alloc];
  v57 = MEMORY[0x277CBF3A8];
  v143 = objc_msgSend_initWithTextProperties_containerSize_(v56, v58, v49, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  v61 = objc_msgSend_newLayout(v55, v59, v60);
  v64 = v61;
  v65 = 0.0;
  if (!v61 || (objc_msgSend_layoutWithContext_(v61, v62, v143), objc_msgSend_erasableBounds(v64, v66, v67), v69 = v68, v71 = v70, v73 = v72, v75 = v74, objc_msgSend_width(v64, v76, v77), v78 <= 0.0) || (objc_msgSend_vsize(v64, v62, v63), v79 <= 0.0) || (v145.origin.x = v69, v145.origin.y = v71, v145.size.width = v73, v145.size.height = v75, CGRectGetWidth(v145) <= 0.0) || (v146.origin.x = v69, v146.origin.y = v71, v146.size.width = v73, v146.size.height = v75, CGRectGetHeight(v146) <= 0.0))
  {
    v95 = 0;
LABEL_24:
    v89 = objc_msgSend_null(MEMORY[0x277D80828], v62, v63);
    goto LABEL_25;
  }

  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v81 = round(v52 * (v45 / v73));
    v82 = 1.0;
    if (v81 >= 1.0)
    {
      v82 = v81;
      if (v81 > 2000.0)
      {
        v82 = 2000.0;
      }
    }

    objc_msgSend_setCGFloatValue_forProperty_(v49, v80, 17, v82);
    v83 = [TSWPEquationLayoutContext alloc];
    v85 = objc_msgSend_initWithTextProperties_containerSize_(v83, v84, v49, *v57, v57[1]);

    v143 = v85;
    objc_msgSend_layoutWithContext_(v64, v86, v85);
  }

  v87 = objc_opt_class();
  v89 = objc_msgSend_pdfImageDataWithContext_equation_layout_layoutContext_sourceString_(v87, v88, contextCopy, v55, v64, v143, stringCopy);
  v90 = objc_alloc(MEMORY[0x277D802E8]);
  objc_msgSend_position(geometryCopy, v91, v92);
  v95 = objc_msgSend_initWithPosition_size_(v90, v93, v94);
  objc_msgSend_size(v95, v96, v97);
  if (v98 <= 0.0)
  {
    v139 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v102, v99, v101, 306, 0, "invalid equation geometry width");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
  }

  v65 = v75 + v71;
  if (!v89)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (!v95)
  {
    objc_msgSend_baseFontSize(v143, v62, v63);
    v106 = v105;
    objc_msgSend_baseFontSize(v143, v107, v108);
    v110 = v109;
    v111 = objc_alloc(MEMORY[0x277D802E8]);
    v95 = objc_msgSend_initWithSize_(v111, v112, v113, v106, v110);
    objc_msgSend_size(v95, v114, v115);
    if (v117 <= 0.0)
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSWPEquationInfo initWithContext:string:targetGeometry:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 317, 0, "invalid equation geometry width");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
    }
  }

  objc_opt_class();
  v127 = objc_msgSend_documentRoot(contextCopy, v125, v126);
  v128 = TSUDynamicCast();

  v131 = objc_msgSend_theme(v128, v129, v130);
  v134 = objc_msgSend_defaultEquationStyle(v131, v132, v133);

  if (!v134)
  {
    v134 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80340], v135, contextCopy);
    objc_msgSend_setStyleIdentifier_(v134, v136, @"equation-0-imageStyle");
  }

  v137 = objc_msgSend_initWithContext_string_filteredTextProperties_equation_pdfImageData_depth_geometry_style_(selfCopy, v135, contextCopy, stringCopy, v49, v55, v89, v95, v65, v134);

  return v137;
}

- (TSWPEquationInfo)initWithContext:(id)context string:(id)string filteredTextProperties:(id)properties equation:(id)equation pdfImageData:(id)data depth:(double)depth geometry:(id)geometry style:(id)self0
{
  contextCopy = context;
  stringCopy = string;
  propertiesCopy = properties;
  equationCopy = equation;
  dataCopy = data;
  geometryCopy = geometry;
  styleCopy = style;
  if (!stringCopy)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPEquationInfo initWithContext:string:filteredTextProperties:equation:pdfImageData:depth:geometry:style:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 347, 0, "invalid nil value for '%{public}s'", "equationString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (!propertiesCopy)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPEquationInfo initWithContext:string:filteredTextProperties:equation:pdfImageData:depth:geometry:style:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 348, 0, "invalid nil value for '%{public}s'", "filteredTextProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  if (!geometryCopy)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPEquationInfo initWithContext:string:filteredTextProperties:equation:pdfImageData:depth:geometry:style:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 349, 0, "invalid nil value for '%{public}s'", "geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
  }

  objc_msgSend_size(geometryCopy, v20, v21);
  if (v44 <= 0.0)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSWPEquationInfo initWithContext:string:filteredTextProperties:equation:pdfImageData:depth:geometry:style:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 350, 0, "invalid equation geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
  }

  if (!equationCopy)
  {
    v52 = objc_opt_class();
    v79 = 0;
    equationCopy = objc_msgSend_eqKitEquationWithWithContext_source_error_(v52, v53, contextCopy, stringCopy, &v79);
    v55 = v79;
    if (equationCopy)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSWPEquationInfo initWithContext:string:filteredTextProperties:equation:pdfImageData:depth:geometry:style:]");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 356, 0, "Invalid to pass nil equation unless there was an error");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    }
  }

  v78.receiver = self;
  v78.super_class = TSWPEquationInfo;
  v63 = [(TSWPEquationInfo *)&v78 initWithContext:contextCopy geometry:geometryCopy style:styleCopy imageData:dataCopy originalImageData:0];
  v64 = v63;
  if (v63)
  {
    objc_storeStrong(v63 + 50, properties);
    v67 = objc_msgSend_copy(stringCopy, v65, v66);
    v68 = *(v64 + 48);
    *(v64 + 48) = v67;

    objc_storeStrong(v64 + 47, equationCopy);
    *(v64 + 49) = depth;
    objc_msgSend_size(geometryCopy, v69, v70);
    objc_msgSend_setNaturalSize_(v64, v71, v72);
  }

  return v64;
}

- (Class)layoutClass
{
  if ((objc_msgSend_isInlineWithText(self, a2, v2) & 1) == 0)
  {
    objc_msgSend_isInlineForPreviewImage(self, v4, v5);
  }

  v6 = objc_opt_class();

  return v6;
}

- (Class)repClass
{
  objc_msgSend_isInlineWithText(self, a2, v2);
  v3 = objc_opt_class();

  return v3;
}

- (CGSize)defaultOriginalSize
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)needsUpdateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index isAnchoredOrFloating:(BOOL)floating
{
  floatingCopy = floating;
  storageCopy = storage;
  if (objc_msgSend_isInInit(storageCopy, v9, v10))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    if (floatingCopy)
    {
      v13 = objc_msgSend_objectForProperty_(*&self->_depth, v11, 40);
      if (v13)
      {
        objc_opt_class();
        v14 = TSUDynamicCast();
        LOBYTE(v12) = v14 != 0;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      v15 = objc_opt_class();
      v13 = objc_msgSend_propertiesForStorage_characterIndex_(v15, v16, storageCopy, index);
      v12 = objc_msgSend_isEqualToPropertyMap_(*&self->_depth, v17, v13) ^ 1;
    }
  }

  return v12;
}

- (void)updateForStyleChangeToStorage:(id)storage charIndex:(unint64_t)index isAnchoredOrFloating:(BOOL)floating
{
  floatingCopy = floating;
  storageCopy = storage;
  objc_msgSend_willModify(self, v8, v9);
  if (floatingCopy)
  {
    objc_msgSend_removeValueForProperty_(*&self->_depth, v10, 40);
  }

  else
  {
    v12 = objc_opt_class();
    v14 = objc_msgSend_propertiesForStorage_characterIndex_(v12, v13, storageCopy, index);
    objc_msgSend_setTextProperties_(self, v15, v14);
  }

  objc_msgSend_rebuildEquationPDFIncludingGeometry_(self, v11, 0);
}

- (void)updateTextProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_opt_class();
  v6 = objc_msgSend_filteredTextPropertiesFromTextProperties_(v4, v5, propertiesCopy);
  objc_msgSend_willModify(self, v7, v8);
  objc_msgSend_setTextProperties_(self, v9, v6);
  objc_msgSend_rebuildEquationPDFIncludingGeometry_(self, v10, 0);
}

- (void)willChangeProperty:(int)property
{
  v10.receiver = self;
  v10.super_class = TSWPEquationInfo;
  [(TSWPEquationInfo *)&v10 willChangeProperty:?];
  if (property == 513)
  {
    v7 = objc_msgSend_owningAttachment(self, v5, v6);

    if (!v7)
    {
      if (objc_msgSend_needsUpdateForStyleChangeToStorage_charIndex_isAnchoredOrFloating_(self, v8, 0, 0x7FFFFFFFFFFFFFFFLL, 1))
      {
        objc_msgSend_updateForStyleChangeToStorage_charIndex_isAnchoredOrFloating_(self, v9, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
      }
    }
  }
}

- (int)format
{
  v3 = MEMORY[0x277D7FF70];
  v4 = objc_msgSend_source(self, a2, v2);
  LODWORD(v3) = objc_msgSend_formatFromString_(v3, v5, v4);

  return v3;
}

- (void)replaceSourceWithNewSource:(id)source
{
  sourceCopy = source;
  v5 = objc_opt_class();
  v8 = objc_msgSend_context(self, v6, v7);
  v24 = 0;
  v10 = objc_msgSend_eqKitEquationWithWithContext_source_error_(v5, v9, v8, sourceCopy, &v24);
  v11 = v24;

  if (v10)
  {
    objc_msgSend_willModify(self, v12, v13);
    objc_msgSend_setSource_(self, v14, sourceCopy);
    objc_msgSend_setEquation_(self, v15, v10);
    objc_msgSend_rebuildEquationPDFIncludingGeometry_(self, v16, 0);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPEquationInfo replaceSourceWithNewSource:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 516, 0, "failed to create equation with error: %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }
}

- (void)rebuildEquationPDFIncludingGeometry:(BOOL)geometry
{
  geometryCopy = geometry;
  v5 = [TSWPEquationLayoutContext alloc];
  v52 = objc_msgSend_initWithTextProperties_containerSize_(v5, v6, *&self->_depth, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  objc_msgSend_baseFontSize(v52, v7, v8);
  v10 = v9;
  objc_msgSend_baseFontSize(v52, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_newLayout(*&self->_isInlineForPreviewImage, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend_layoutWithContext_(v17, v18, v52);
    objc_msgSend_erasableBounds(v20, v21, v22);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    objc_msgSend_width(v20, v31, v32);
    if (v33 > 0.0)
    {
      objc_msgSend_vsize(v20, v18, v19);
      if (v34 > 0.0)
      {
        v54.origin.x = v24;
        v54.origin.y = v26;
        v54.size.width = v28;
        v54.size.height = v30;
        if (CGRectGetWidth(v54) > 0.0)
        {
          v55.origin.x = v24;
          v55.origin.y = v26;
          v55.size.width = v28;
          v55.size.height = v30;
          if (CGRectGetHeight(v55) > 0.0)
          {
            objc_msgSend_setDepth_(self, v18, v19, v30 + v26);
            v35 = objc_opt_class();
            v38 = objc_msgSend_context(self, v36, v37);
            v40 = objc_msgSend_pdfImageDataWithContext_equation_layout_layoutContext_sourceString_(v35, v39, v38, *&self->_isInlineForPreviewImage, v20, v52, self->_equation);

            if (v40)
            {
              objc_msgSend_setImageDataNonnull_(self, v41, v40);
            }

            v14 = v30;
            v10 = v28;
          }
        }
      }
    }
  }

  if (geometryCopy)
  {
    v42 = objc_alloc(MEMORY[0x277D802E8]);
    v46 = objc_msgSend_initWithSize_(v42, v43, v44, v10, v14);
  }

  else
  {
    v47 = objc_msgSend_geometry(self, v18, v19);
    v46 = objc_msgSend_mutableCopy(v47, v48, v49);

    objc_msgSend_setSize_(v46, v50, v51, v10, v14);
  }

  objc_msgSend_setGeometry_(self, v45, v46);
}

- (void)loadCharacterStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v10 = objc_opt_class();
  v11 = *(archive + 4);
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    v44 = v14;
    v15 = objc_opt_class();
    v17 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v16, &v44, v15, 16);
    v18 = v44;

    if (v17)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v19, v18, 16);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x1000) != 0)
  {
    v43 = *(archive + 38);
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v43, 17))
    {
      LODWORD(v20) = v43;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 17, v20);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x10) != 0)
  {
    v21 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v9, *(archive + 11), unarchiverCopy);
    v42 = v21;
    v22 = objc_opt_class();
    v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v23, &v42, v22, 18);
    v25 = v42;

    if (v24)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v26, v25, 18);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x800) != 0)
  {
    v27 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, *(archive + 18), unarchiverCopy);
    v41 = v27;
    v28 = objc_opt_class();
    v30 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v29, &v41, v28, 48);
    v31 = v41;

    if (v30)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v32, v31, 48);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x40) != 0)
  {
    v33 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v9, *(archive + 13), unarchiverCopy);
    v40 = v33;
    v34 = objc_opt_class();
    v36 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v35, &v40, v34, 40);
    v37 = v40;

    if (v36)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v38, v37, 40);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x2000) != 0)
  {
    v43 = *(archive + 156);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v43, 19))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v43 != 0, 19);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x4000) != 0)
  {
    v43 = *(archive + 157);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v43, 20))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v39, v43 != 0, 20);
    }
  }
}

- (void)saveCharacterStylePropertiesFromPropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v10 = objc_opt_class();
  v13 = objc_msgSend_style(self, v11, v12);
  v14 = objc_opt_class();
  v17 = objc_msgSend_blackColor(MEMORY[0x277D81180], v15, v16);
  v19 = objc_msgSend_adjustPropertyMapForFontColorArchiving_fallbackColor_(v14, v18, mapCopy, v17);

  if (objc_msgSend_containsProperty_(v19, v20, 16))
  {
    v22 = objc_msgSend_objectForProperty_(v19, v21, 16);
    v74 = v22;
    v23 = objc_opt_class();
    v25 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v24, &v74, v23, 16);
    v26 = v74;

    if (v25)
    {
      *(archive + 4) |= 1u;
      v27 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v26, v28, v27);
    }
  }

  if (objc_msgSend_containsProperty_(v19, v21, 17))
  {
    objc_msgSend_floatValueForProperty_(v19, v29, 17);
    v73 = v30;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v31, &v73, 17))
    {
      v32 = v73;
      *(archive + 4) |= 0x1000u;
      *(archive + 38) = v32;
    }
  }

  if (objc_msgSend_containsProperty_(v19, v29, 18))
  {
    v34 = objc_msgSend_objectForProperty_(v19, v33, 18);
    v72 = v34;
    v35 = objc_opt_class();
    v37 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v36, &v72, v35, 18);
    v38 = v72;

    if (v37)
    {
      *(archive + 4) |= 0x10u;
      v40 = *(archive + 11);
      if (!v40)
      {
        v41 = *(archive + 1);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = MEMORY[0x277CA3210](v41);
        *(archive + 11) = v40;
      }

      objc_msgSend_saveToArchive_archiver_(v38, v39, v40, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v19, v33, 48))
  {
    v43 = objc_msgSend_objectForProperty_(v19, v42, 48);
    v71 = v43;
    v44 = objc_opt_class();
    v46 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v45, &v71, v44, 48);
    v47 = v71;

    if (v46)
    {
      *(archive + 4) |= 0x800u;
      v49 = *(archive + 18);
      if (!v49)
      {
        v50 = *(archive + 1);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = MEMORY[0x277CA3120](v50);
        *(archive + 18) = v49;
      }

      objc_msgSend_saveToArchive_archiver_(v47, v48, v49, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v19, v42, 40))
  {
    v52 = objc_msgSend_objectForProperty_(v19, v51, 40);
    v70 = v52;
    v53 = objc_opt_class();
    v55 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v54, &v70, v53, 40);
    v56 = v70;

    if (v55)
    {
      *(archive + 4) |= 0x40u;
      v58 = *(archive + 13);
      if (!v58)
      {
        v59 = *(archive + 1);
        if (v59)
        {
          v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
        }

        v58 = MEMORY[0x277CA3140](v59);
        *(archive + 13) = v58;
      }

      objc_msgSend_saveToArchive_archiver_(v56, v57, v58, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v19, v51, 19))
  {
    v73 = objc_msgSend_intValueForProperty_(v19, v60, 19);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v61, &v73, 19))
    {
      v62 = v73 != 0;
      *(archive + 4) |= 0x2000u;
      *(archive + 156) = v62;
    }
  }

  if (objc_msgSend_containsProperty_(v19, v60, 20))
  {
    v73 = objc_msgSend_intValueForProperty_(v19, v63, 20);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v65, &v73, 20))
    {
      v66 = v73 != 0;
      *(archive + 4) |= 0x4000u;
      *(archive + 157) = v66;
    }
  }

  v67 = objc_msgSend_style(self, v63, v64);
  v68 = objc_opt_class();
  objc_msgSend_addIgnoreAndPreserveRulesAndDocumentWarningsForPropertyMap_withArchiver_archive_(v68, v69, v19, archiverCopy, archive);
}

+ (id)fontNameFromTextProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_msgSend_intValueForProperty_(propertiesCopy, v4, 19);
  v7 = objc_msgSend_intValueForProperty_(propertiesCopy, v6, 20);
  v9 = objc_msgSend_objectForProperty_(propertiesCopy, v8, 16);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Helvetica";
  }

  objc_opt_class();
  v12 = objc_msgSend_objectForProperty_(propertiesCopy, v11, 43);
  v13 = TSUDynamicCast();
  v14 = v5 & 0x7FFFFFFF;
  v15 = (v7 & 0x7FFFFFFF) != 0;
  v16 = v14 != 0;

  v17 = sub_276D38D60(v10, v16, v15, v13, 0.0);
  v18 = v17;
  if (v17)
  {
    v19 = sub_276D35B50(v17);

    v10 = v19;
    CFRelease(v18);
  }

  return v10;
}

+ (id)defaultTextProperties
{
  v3 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], a2, v2);
  objc_msgSend_setObject_forProperty_(v3, v4, @"Helvetica", 16);
  objc_msgSend_setCGFloatValue_forProperty_(v3, v5, 17, 12.0);

  return v3;
}

+ (id)filteredTextPropertiesFromTextProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v4, v5);
  if ((objc_msgSend_intValueForProperty_(propertiesCopy, v7, 19) & 0x7FFFFFFF) != 0)
  {
    objc_msgSend_setBoolValue_forProperty_(v6, v8, 1, 19);
  }

  if ((objc_msgSend_intValueForProperty_(propertiesCopy, v8, 20) & 0x7FFFFFFF) != 0)
  {
    objc_msgSend_setBoolValue_forProperty_(v6, v9, 1, 20);
  }

  v10 = objc_msgSend_objectForProperty_(propertiesCopy, v9, 16);
  if (v10)
  {
    v12 = v10;
    objc_msgSend_setObject_forProperty_(v6, v11, v10, 16);
  }

  else
  {
    v12 = @"Helvetica";
    objc_msgSend_setObject_forProperty_(v6, v11, @"Helvetica", 16);
  }

  objc_msgSend_CGFloatValueForProperty_(propertiesCopy, v13, 17);
  v16 = v15;
  if (v15 == INFINITY)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSWPEquationInfo filteredTextPropertiesFromTextProperties:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 669, 0, "Expected valid float value for font size.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = 12.0;
  if (v16 != INFINITY)
  {
    v24 = 1.0;
    if (v16 >= 1.0)
    {
      v24 = v16;
      if (v16 > 2000.0)
      {
        v24 = 2000.0;
      }
    }
  }

  objc_msgSend_setCGFloatValue_forProperty_(v6, v14, 17, v24);
  v28 = objc_msgSend_objectForProperty_(propertiesCopy, v25, 48);
  if (!v28 || (objc_opt_class(), TSUDynamicCast(), v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v30 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v26, v27);

    v28 = v30;
  }

  objc_msgSend_setObject_forProperty_(v6, v26, v28, 48);
  v32 = objc_msgSend_objectForProperty_(propertiesCopy, v31, 40);
  if (v32)
  {
    objc_opt_class();
    v33 = TSUDynamicCast();

    if (v33)
    {
      objc_msgSend_setObject_forProperty_(v6, v34, v32, 40);
    }
  }

  return v6;
}

+ (id)propertiesForParagraphStyle:(id)style characterStyle:(id)characterStyle
{
  styleCopy = style;
  characterStyleCopy = characterStyle;
  v8 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_opt_class();
  v9 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 16);
  v10 = TSUDynamicCast();

  if (v10)
  {
    objc_msgSend_setObject_forProperty_(v8, v11, v10, 16);
  }

  objc_opt_class();
  v12 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 48);
  v13 = TSUDynamicCast();

  if (v13)
  {
    objc_msgSend_setObject_forProperty_(v8, v14, v13, 48);
  }

  v15 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 17);
  v18 = v15;
  if (v15)
  {
    objc_msgSend_tsu_CGFloatValue(v15, v16, v17);
    objc_msgSend_setCGFloatValue_forProperty_(v8, v19, 17);
  }

  v20 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 19);
  v23 = v20;
  if (v20 && objc_msgSend_BOOLValue(v20, v21, v22))
  {
    objc_msgSend_setBoolValue_forProperty_(v8, v24, 1, 19);
  }

  v25 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 20);
  v28 = v25;
  if (v25 && objc_msgSend_BOOLValue(v25, v26, v27))
  {
    objc_msgSend_setBoolValue_forProperty_(v8, v29, 1, 20);
  }

  objc_opt_class();
  v30 = TSWPResolvePropertyForStyles(characterStyleCopy, styleCopy, 40);
  v31 = TSUDynamicCast();

  if (v31)
  {
    objc_msgSend_setObject_forProperty_(v8, v32, v31, 40);
  }

  v34 = objc_msgSend_filteredTextPropertiesFromTextProperties_(self, v33, v8);

  return v34;
}

+ (id)propertiesForStorage:(id)storage characterIndex:(unint64_t)index
{
  storageCopy = storage;
  v8 = storageCopy;
  if (storageCopy)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSWPEquationInfo propertiesForStorage:characterIndex:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 728, 0, "Equation has no character index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    else
    {
      v16 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(storageCopy, v7, index, 0, 0);
      v18 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v8, v17, index, 0);
      v20 = objc_msgSend_propertiesForParagraphStyle_characterStyle_(self, v19, v18, v16);

      if (v20)
      {
        goto LABEL_6;
      }
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277D80AB8]);
LABEL_6:
  v22 = objc_msgSend_filteredTextPropertiesFromTextProperties_(self, v21, v20);

  return v22;
}

- (id)propertiesForParentAttachment
{
  objc_opt_class();
  v5 = objc_msgSend_owningAttachment(self, v3, v4);
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPEquationInfo propertiesForParentAttachment]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 748, 0, "Equation is not attached.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v18 = objc_msgSend_parentStorage(v6, v7, v8);
  if (!v18)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPEquationInfo propertiesForParentAttachment]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 750, 0, "Equation has no parent storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    goto LABEL_7;
  }

  CharIndex = objc_msgSend_findCharIndex(v6, v16, v17);
  if (CharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPEquationInfo propertiesForParentAttachment]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 753, 0, "Equation has no character index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
LABEL_7:
    v35 = 0;
    goto LABEL_9;
  }

  v36 = objc_opt_class();
  v35 = objc_msgSend_propertiesForStorage_characterIndex_(v36, v37, v18, CharIndex);
LABEL_9:

  return v35;
}

- (void)didFinalizeUnarchivingFromWPStorage:(id)storage
{
  if (!*&self->_depth)
  {
    if ((objc_msgSend_isInlineWithText(self, a2, storage) & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPEquationInfo didFinalizeUnarchivingFromWPStorage:]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v25, v8, 763, 0, "If text properties are nil, then we must be inline");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    }

    if (!*&self->_depth && objc_msgSend_isInlineWithText(self, v4, v5))
    {
      v14 = objc_msgSend_geometry(self, v12, v13);
      v26 = objc_msgSend_copy(v14, v15, v16);

      v21 = objc_msgSend_propertiesForParentAttachment(self, v17, v18);
      if (v21)
      {
        objc_msgSend_willModifyForUpgrade(self, v19, v20);
        objc_msgSend_updateTextProperties_(self, v22, v21);
      }

      v23 = objc_msgSend_geometry(self, v19, v20);
      if ((objc_msgSend_isEqual_(v23, v24, v26) & 1) == 0 && qword_280A57DD0 != -1)
      {
        sub_276F4F8B4();
      }
    }
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v24.receiver = self;
  v24.super_class = TSWPEquationInfo;
  [(TSWPEquationInfo *)&v24 loadFromArchive:archive unarchiver:unarchiverCopy];
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v7 = objc_alloc_init(MEMORY[0x277D80AB8]);
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v9, v7, Message, unarchiverCopy);
    depth = self->_depth;
    *&self->_depth = v7;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)) || google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v13 = MEMORY[0x277CCACA8];
    String = google::protobuf::internal::ExtensionSet::GetString();
    v16 = objc_msgSend_tsp_stringWithProtobufString_(v13, v15, String);
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_msgSend_fileFormatVersion(unarchiverCopy, v11, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_276E480E4;
  v21[3] = &unk_27A6F3E30;
  v23 = v17;
  v21[4] = self;
  v18 = v16;
  v22 = v18;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v19, v21);
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    google::protobuf::internal::ExtensionSet::GetFloat((archive + 16), *(&TSWP::EquationInfoArchive::equation_depth + 1));
    *&self->_source = v20;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v55.receiver = self;
  v55.super_class = TSWPEquationInfo;
  [(TSWPEquationInfo *)&v55 saveToArchive:archive archiver:archiverCopy];
  if (self->_equation || (v8 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPEquationInfo saveToArchive:archiver:]"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 902, 0, "invalid nil value for '%{public}s'", "_source"), v11, v9, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14), self->_equation))
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v7, 103, archive);
    v17 = objc_msgSend_tsp_protobufString(self->_equation, v15, v16);
    sub_276DA9454(__p, v17);
    v18 = TSWP::EquationInfoArchive::equation_source_text;
    if (SHIBYTE(v54) < 0)
    {
      sub_276E4972C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v57 = v54;
    }

    v19 = google::protobuf::internal::ExtensionSet::MutableString((archive + 16), v18, 9, 0);
    v22 = v19;
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    v23 = __dst;
    *(v22 + 16) = v57;
    *v22 = v23;
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    if (objc_msgSend_isInlineWithText(self, v20, v21))
    {
      objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v24, 100, archive);
      v27 = objc_msgSend_tsp_protobufString(self->_equation, v25, v26);
      sub_276DA9454(__p, v27);
      v28 = TSWP::EquationInfoArchive::equation_source_old;
      if (SHIBYTE(v54) < 0)
      {
        sub_276E4972C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v57 = v54;
      }

      v29 = google::protobuf::internal::ExtensionSet::MutableString((archive + 16), v28, 9, 0);
      v31 = v29;
      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v32 = __dst;
      *(v31 + 16) = v57;
      *v31 = v32;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v30, *MEMORY[0x277D80968], *MEMORY[0x277D80978], @"TSWPEquations");
    }

    else
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v24, *MEMORY[0x277D80968], *MEMORY[0x277D80998], @"TSWPFloatingEquations");
    }
  }

  if (*&self->_depth)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v7, 101, archive);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_276E48A08;
    v50[3] = &unk_27A6F3E30;
    v50[4] = self;
    archiveCopy = archive;
    v51 = archiverCopy;
    objc_msgSend_pushScopeForField_message_usingBlock_(v51, v33, 101, archive, v50);
  }

  else
  {
    objc_opt_class();
    v37 = objc_msgSend_owningAttachment(self, v35, v36);
    v38 = TSUDynamicCast();

    if (!v38 || (objc_msgSend_parentStorage(v38, v39, v40), v41 = objc_claimAutoreleasedReturnValue(), v41, v41))
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSWPEquationInfo saveToArchive:archiver:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 926, 0, "archiving attached equation without text properties");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }
  }

  if (*&self->_source != 0.0)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v34, 102, archive);
    v49 = *&self->_source;
    google::protobuf::internal::ExtensionSet::SetFloat((archive + 16), TSWP::EquationInfoArchive::equation_depth, 2, v49, 0);
  }
}

- (id)typeName
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Equation", &stru_28860A0F0, @"TSText");

  return v5;
}

- (id)typesToPromiseWhenCopyingSingleDrawable
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TSWPEquationInfo;
  typesToPromiseWhenCopyingSingleDrawable = [(TSWPEquationInfo *)&v18 typesToPromiseWhenCopyingSingleDrawable];
  v5 = *MEMORY[0x277CE1E08];
  if (typesToPromiseWhenCopyingSingleDrawable)
  {
    v6 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v2, v3);
    v8 = objc_msgSend_containsObject_(typesToPromiseWhenCopyingSingleDrawable, v7, v6);

    if ((v8 & 1) == 0)
    {
      v11 = objc_msgSend_identifier(v5, v9, v10);
      v13 = objc_msgSend_arrayByAddingObject_(typesToPromiseWhenCopyingSingleDrawable, v12, v11);

      typesToPromiseWhenCopyingSingleDrawable = v13;
    }

    v14 = objc_msgSend_arrayByAddingObject_(typesToPromiseWhenCopyingSingleDrawable, v9, @"public.mathml");
    v15 = typesToPromiseWhenCopyingSingleDrawable;
  }

  else
  {
    v15 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v2, v3);
    v19[0] = v15;
    v19[1] = @"public.mathml";
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v19, 2);
  }

  return v14;
}

- (id)promisedDataForType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_tsu_conformsToUTI_(typeCopy, v5, @"public.mathml"))
  {
    v8 = objc_msgSend_source(self, v6, v7);
    if (objc_msgSend_formatFromString_(MEMORY[0x277D7FF70], v9, v8) != 1)
    {
      objc_opt_class();
      v13 = objc_msgSend_context(self, v11, v12);
      v16 = objc_msgSend_documentRoot(v13, v14, v15);
      v17 = TSUDynamicCast();

      v18 = MEMORY[0x277D7FF70];
      v21 = objc_msgSend_equationEnvironment(v17, v19, v20);
      v37 = 0;
      v23 = objc_msgSend_mathMLStringFromLaTeXString_environment_error_(v18, v22, v8, v21, &v37);
      v24 = v37;

      if (v23)
      {
        v26 = v23;

        v8 = v26;
      }

      else
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPEquationInfo promisedDataForType:]");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 973, 0, "Error translating LaTeX to MathML for equation: %@\n\nError:%@", v8, v24);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      }
    }

    v27 = objc_msgSend_dataUsingEncoding_allowLossyConversion_(v8, v10, 4, 1);
  }

  else
  {
    v36.receiver = self;
    v36.super_class = TSWPEquationInfo;
    v27 = [(TSWPEquationInfo *)&v36 promisedDataForType:typeCopy];
  }

  return v27;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPEquationInfo mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1287, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_source(self, v8, v9);
  v21 = objc_msgSend_source(v10, v19, v20);
  isEqualToString = objc_msgSend_isEqualToString_(v18, v22, v21);

  if (isEqualToString)
  {
    v26 = objc_msgSend_geometry(self, v24, v25);
    v29 = objc_msgSend_geometry(v10, v27, v28);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v32 = objc_msgSend_imageStyle(self, v30, v31);
    v35 = objc_msgSend_imageStyle(v10, v33, v34);
    TSDMixingTypeWithObjects();
    v36 = TSDMixingTypeBestFromMixingTypes();

    if (v36 == 5)
    {
      v39 = objc_msgSend_textProperties(self, v37, v38);
      v42 = objc_msgSend_textProperties(v10, v40, v41);
      isEqual = objc_msgSend_isEqual_(v39, v43, v42);

      if (isEqual)
      {
        v45 = 5;
      }

      else
      {
        v45 = 4;
      }
    }

    else if (v36 == 3)
    {
      v45 = 2;
    }

    else
    {
      v45 = v36;
    }
  }

  else
  {
    v45 = 1;
  }

  return v45;
}

- (id)descriptionForDrawableAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v6 = MEMORY[0x277D811A8];
  v9 = objc_opt_class();
  if (attachmentCopy)
  {
    objc_msgSend_hOffset(attachmentCopy, v7, v8);
    v11 = v10;
    objc_msgSend_vOffset(attachmentCopy, v12, v13);
    v15 = v14;
    v3 = objc_msgSend_geometry(self, v16, v17);
    objc_msgSend_size(v3, v18, v19);
  }

  else
  {
    v15 = 0;
    v11 = 0;
    v20 = 0;
    v21 = 0;
  }

  v22 = NSStringFromCGSize(*&v20);
  v24 = objc_msgSend_descriptionWithObject_class_format_(v6, v23, attachmentCopy, v9, @" (h:%+g v:%+g) size=%@", v11, v15, v22);;

  if (attachmentCopy)
  {
  }

  objc_msgSend_addSuperDescription(v24, v25, v26);
  v27 = TSUObjectReferenceDescription();
  objc_msgSend_addField_value_(v24, v28, @"equation", v27);

  v31 = objc_msgSend_textProperties(self, v29, v30);
  v32 = TSUObjectReferenceDescription();
  objc_msgSend_addField_value_(v24, v33, @"textProperties id", v32);

  v36 = objc_msgSend_textProperties(self, v34, v35);
  v39 = objc_msgSend_description(v36, v37, v38);
  objc_msgSend_addField_value_(v24, v40, @"textProperties", v39);

  v43 = objc_msgSend_source(self, v41, v42);
  v44 = TSUObjectReferenceDescription();
  objc_msgSend_addField_value_(v24, v45, @"source", v44);

  v48 = objc_msgSend_descriptionString(v24, v46, v47);

  return v48;
}

- (NSString)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_(v3, v5, self, v4);
  v9 = objc_msgSend_descriptionString(v6, v7, v8);

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_(v3, v5, self, v4);
  v9 = objc_msgSend_textProperties(self, v7, v8);
  v10 = TSUObjectReferenceDescription();
  objc_msgSend_addField_value_(v6, v11, @"textProperties id", v10);

  v14 = objc_msgSend_textProperties(self, v12, v13);
  v17 = objc_msgSend_description(v14, v15, v16);
  objc_msgSend_addField_value_(v6, v18, @"textProperties", v17);

  v21 = objc_msgSend_source(self, v19, v20);
  v22 = TSUObjectReferenceDescription();
  objc_msgSend_addField_value_(v6, v23, @"source", v22);

  v26 = objc_msgSend_descriptionString(v6, v24, v25);

  return v26;
}

@end