@interface TSWPFloatingCommentInfo
+ (CGSize)commentInitialSizeWithContext:(id)a3;
+ (id)bezierPathForExportCommentOutline;
+ (id)commentInfoWithContext:(id)a3 size:(CGSize)a4 storage:(id)a5;
+ (id)commentParagraphStyleForStylesheet:(id)a3;
+ (id)commentParagraphStyleForStylesheet:(id)a3 scalingMultiplier:(double)a4;
+ (id)p_commentInfoWithContext:(id)a3 geometry:(id)a4 storage:(id)a5;
+ (id)p_commentParagraphStyleForStylesheet:(id)a3 fontSize:(unint64_t)a4;
+ (id)p_defaultCommentInfoStyleInStylesheet:(id)a3;
+ (void)createCommentInfoStyleInStylesheetIfNeeded:(id)a3;
+ (void)upgradeCommentInfoStorage:(id)a3;
+ (void)upgradeCommentInfoStyle:(id)a3;
+ (void)upgradeCommentParagraphStylesForStylesheet:(id)a3 withCommentScale:(double)a4;
- (BOOL)isHighlight;
- (NSDate)date;
- (NSString)annotationUUID;
- (NSString)parentUUID;
- (TSKAnnotationAuthor)author;
- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 commentStorage:(id)a7;
- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7;
- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7 commentStorage:(id)a8;
- (double)commentScalingMultiplier;
- (id)annotationWithUUID:(id)a3;
- (id)creationDateString;
- (id)pathSourceForExportCommentOutline;
- (id)typeName;
- (void)commentWillBeAddedToDocumentRoot;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setAuthor:(id)a3;
- (void)setCommentStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
@end

@implementation TSWPFloatingCommentInfo

- (void)setCommentStorage:(id)a3
{
  v7 = a3;
  if (self->_commentStorage != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_commentStorage, a3);
  }
}

+ (id)bezierPathForExportCommentOutline
{
  v2 = objc_alloc_init(MEMORY[0x277D81160]);
  objc_msgSend_moveToPoint_(v2, v3, v4, 2.0, 0.0);
  objc_msgSend_lineToPoint_(v2, v5, v6, 205.0, 0.0);
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v2, v7, v8, 210.0, 180.0, 205.0, 0.0, 204.5, 143.75);
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v2, v9, v10, 0.0, 181.5, 119.25, 187.25, 6.75, 183.25);
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v2, v11, v12, 2.0, 0.0, 3.25, 165.5, 2.0, 0.0);
  objc_msgSend_closePath(v2, v13, v14);

  return v2;
}

- (id)pathSourceForExportCommentOutline
{
  v3 = objc_alloc(MEMORY[0x277D801C8]);
  v6 = objc_msgSend_bezierPathForExportCommentOutline(TSWPFloatingCommentInfo, v4, v5);
  v8 = objc_msgSend_initWithBezierPath_(v3, v7, v6);

  v11 = objc_msgSend_geometry(self, v9, v10);
  objc_msgSend_size(v11, v12, v13);
  objc_msgSend_setNaturalSize_(v8, v14, v15);

  return v8;
}

- (id)creationDateString
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = objc_msgSend_creationDateString(v3, v4, v5);

  return v6;
}

+ (id)p_defaultCommentInfoStyleInStylesheet:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_commentStyleIdentifier(a1, v5, v6);
  v10 = objc_msgSend_cascadedStyleWithIdentifier_(v4, v8, v7);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSWPFloatingCommentInfo p_defaultCommentInfoStyleInStylesheet:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 114, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v10;
}

+ (id)commentParagraphStyleForStylesheet:(id)a3
{
  v3 = a3;
  objc_msgSend_commentFontSize(MEMORY[0x277D801B8], v4, v5);
  v7 = v6;
  v8 = objc_opt_class();
  v10 = objc_msgSend_p_commentParagraphStyleForStylesheet_fontSize_(v8, v9, v3, vcvtad_u64_f64(v7));

  return v10;
}

+ (id)commentParagraphStyleForStylesheet:(id)a3 scalingMultiplier:(double)a4
{
  v5 = a3;
  objc_msgSend_commentFontSize(MEMORY[0x277D801B8], v6, v7);
  v9 = v8;
  v10 = objc_opt_class();
  v12 = 1.0;
  if (a4 >= 1.0)
  {
    v12 = a4;
  }

  v13 = objc_msgSend_p_commentParagraphStyleForStylesheet_fontSize_(v10, v11, v5, vcvtad_u64_f64(v12 * v9));

  return v13;
}

+ (id)p_commentParagraphStyleForStylesheet:(id)a3 fontSize:(unint64_t)a4
{
  v5 = a3;
  v7 = objc_msgSend_commentParagraphStyleIdentifierForFontSize_(TSWPFloatingCommentInfo, v6, a4);
  isVariation = objc_msgSend_cascadedStyleWithIdentifier_(v5, v8, v7);
  isLocked = objc_msgSend_isLocked(v5, v10, v11);
  if (!isVariation)
  {
    v14 = isLocked;
    objc_msgSend_setIsLocked_(v5, v13, 0);
    v17 = objc_msgSend_defaultPropertyMap(TSWPParagraphStyle, v15, v16);
    objc_msgSend_setObject_forProperty_(v17, v18, @"HelveticaNeue", 16);
    v19 = a4;
    *&v19 = a4;
    objc_msgSend_setFloatValue_forProperty_(v17, v20, 17, v19);
    v23 = objc_msgSend_defaultListStyle(v5, v21, v22);
    objc_msgSend_setObject_forProperty_(v17, v24, v23, 103);

    objc_msgSend_setIntValue_forProperty_(v17, v25, 0xFFFFFFFFLL, 44);
    v26 = [TSWPParagraphStyle alloc];
    v29 = objc_msgSend_context(v5, v27, v28);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v26, v30, v29, 0, v17, 0);

    objc_msgSend_addStyle_withIdentifier_(v5, v31, isVariation, v7);
    objc_msgSend_setIsLocked_(v5, v32, v14);
  }

  return isVariation;
}

+ (void)createCommentInfoStyleInStylesheetIfNeeded:(id)a3
{
  v49 = a3;
  v5 = objc_msgSend_commentParagraphStyleForStylesheet_(TSWPFloatingCommentInfo, v4, v49);
  isLocked = objc_msgSend_isLocked(v49, v6, v7);
  isVariation = objc_msgSend_cascadedStyleWithIdentifier_(v49, v9, @"stickyComment-0-shapeStyle");
  if (!isVariation)
  {
    objc_msgSend_setIsLocked_(v49, v10, 0);
    v14 = objc_msgSend_defaultPropertyMap(TSWPShapeStyle, v12, v13);
    objc_msgSend_setIntValue_forProperty_(v14, v15, 0, 149);
    v18 = objc_msgSend_p_defaultPadding(TSWPFloatingCommentInfo, v16, v17);
    objc_msgSend_setObject_forProperty_(v14, v19, v18, 146);

    v21 = objc_msgSend_commentParagraphStyleForStylesheet_(a1, v20, v49);
    objc_msgSend_setObject_forProperty_(v14, v22, v21, 189);

    v25 = objc_msgSend_p_defaultFill(TSWPFloatingCommentInfo, v23, v24);
    objc_msgSend_setObject_forProperty_(v14, v26, v25, 516);

    v29 = objc_msgSend_p_defaultStroke(TSWPFloatingCommentInfo, v27, v28);
    objc_msgSend_setObject_forProperty_(v14, v30, v29, 517);

    v33 = objc_msgSend_p_defaultShadow(TSWPFloatingCommentInfo, v31, v32);
    objc_msgSend_setObject_forProperty_(v14, v34, v33, 520);

    v35 = [TSWPShapeStyle alloc];
    v38 = objc_msgSend_context(v49, v36, v37);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v35, v39, v38, 0, v14, 0);

    if (!isVariation)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "+[TSWPFloatingCommentInfo createCommentInfoStyleInStylesheetIfNeeded:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 185, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
    }

    objc_msgSend_addStyle_withIdentifier_(v49, v40, isVariation, @"stickyComment-0-shapeStyle");
    objc_msgSend_setIsLocked_(v49, v48, isLocked);
  }
}

+ (void)upgradeCommentInfoStyle:(id)a3
{
  v26 = a3;
  v6 = objc_msgSend_p_defaultPadding(TSWPFloatingCommentInfo, v4, v5);
  objc_msgSend_setValue_forProperty_(v26, v7, v6, 146);

  v10 = objc_msgSend_stylesheet(v26, v8, v9);
  v12 = objc_msgSend_commentParagraphStyleForStylesheet_(a1, v11, v10);
  objc_msgSend_setValue_forProperty_(v26, v13, v12, 189);

  v16 = objc_msgSend_p_defaultFill(TSWPFloatingCommentInfo, v14, v15);
  objc_msgSend_setValue_forProperty_(v26, v17, v16, 516);

  v20 = objc_msgSend_p_defaultStroke(TSWPFloatingCommentInfo, v18, v19);
  objc_msgSend_setValue_forProperty_(v26, v21, v20, 517);

  v24 = objc_msgSend_p_defaultShadow(TSWPFloatingCommentInfo, v22, v23);
  objc_msgSend_setValue_forProperty_(v26, v25, v24, 520);
}

+ (void)upgradeCommentParagraphStylesForStylesheet:(id)a3 withCommentScale:(double)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_commentPossibleFontSizes(MEMORY[0x277D801B8], v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = objc_opt_class();
        v17 = objc_msgSend_integerValue(v13, v15, v16);
        v19 = objc_msgSend_p_commentParagraphStyleForStylesheet_fontSize_(v14, v18, v5, v17);
        if (a4 != 1.0)
        {
          v21 = objc_opt_class();
          v24 = objc_msgSend_integerValue(v13, v22, v23);
          v26 = objc_msgSend_p_commentParagraphStyleForStylesheet_fontSize_(v21, v25, v5, vcvtad_u64_f64(v24 * a4));
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v20, &v27, v31, 16);
    }

    while (v10);
  }
}

+ (void)upgradeCommentInfoStorage:(id)a3
{
  v32 = a3;
  objc_opt_class();
  v6 = objc_msgSend_textStorage(v32, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    objc_opt_class();
    v11 = objc_msgSend_context(v32, v9, v10);
    v14 = objc_msgSend_documentObject(v11, v12, v13);
    v15 = TSUDynamicCast();

    v18 = objc_msgSend_stylesheet(v15, v16, v17);
    v20 = objc_msgSend_commentParagraphStyleForStylesheet_(a1, v19, v18);
    v23 = objc_msgSend_range(v7, v21, v22);
    objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v7, v24, v20, v23, v24, 0);
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSWPFloatingCommentInfo upgradeCommentInfoStorage:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 213, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }
}

+ (CGSize)commentInitialSizeWithContext:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = objc_msgSend_documentObject(v3, v4, v5);
  v7 = TSUDynamicCast();

  objc_msgSend_stickyCommentScaleMultiplier(v7, v8, v9);
  v11 = v10 * 240.0;
  v12 = v10 * 140.0;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (id)p_commentInfoWithContext:(id)a3 geometry:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v13 = objc_msgSend_documentObject(v8, v11, v12);
  v14 = TSUDynamicCast();

  v17 = objc_msgSend_stylesheet(v14, v15, v16);
  v19 = objc_msgSend_p_defaultCommentInfoStyleInStylesheet_(a1, v18, v17);

  if (!v19)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSWPFloatingCommentInfo p_commentInfoWithContext:geometry:storage:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 236, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  v28 = objc_alloc(MEMORY[0x277D801C8]);
  objc_msgSend_size(v9, v29, v30);
  v33 = objc_msgSend_initWithNaturalSize_(v28, v31, v32);
  v34 = [TSWPFloatingCommentInfo alloc];
  v36 = objc_msgSend_initWithContext_geometry_style_pathSource_commentStorage_(v34, v35, v8, v9, v19, v33, v10);

  return v36;
}

+ (id)commentInfoWithContext:(id)a3 size:(CGSize)a4 storage:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277D80358]);
  v14 = objc_msgSend_initWithSize_(v11, v12, v13, width, height);
  v16 = objc_msgSend_p_commentInfoWithContext_geometry_storage_(a1, v15, v9, v14, v10);

  return v16;
}

- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 commentStorage:(id)a7
{
  v12 = a3;
  v52 = a4;
  v13 = a5;
  obj = a7;
  v51 = a6;
  v53 = a7;
  if (!v53)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPFloatingCommentInfo initWithContext:geometry:style:pathSource:commentStorage:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 285, 0, "Invalid parameter not satisfying: %{public}s", "commentStorage != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_opt_class();
  v24 = objc_msgSend_documentObject(v12, v22, v23);
  v25 = self;
  v26 = TSUDynamicCast();

  v27 = v13;
  v28 = [TSWPStorage alloc];
  v31 = objc_msgSend_text(v53, v29, v30);
  v34 = objc_msgSend_stylesheet(v26, v32, v33);
  v37 = objc_msgSend_defaultParagraphStyle(v27, v35, v36);
  v40 = objc_msgSend_defaultParagraphStyle(v27, v38, v39);
  v43 = objc_msgSend_initialListStyle(v40, v41, v42);
  v45 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v28, v44, v12, v31, 3, v34, v37, v43, 0, 0);

  objc_msgSend_addDisallowedElementKind_(v45, v46, 784399);
  v54.receiver = v25;
  v54.super_class = TSWPFloatingCommentInfo;
  v47 = [(TSWPShapeInfo *)&v54 initWithContext:v12 geometry:v52 style:v27 pathSource:v51 wpStorage:v45];
  v48 = v47;
  if (v47)
  {
    objc_storeStrong(&v47->_commentStorage, obj);
  }

  return v48;
}

- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7 commentStorage:(id)a8
{
  v14 = a3;
  v15 = a4;
  v32 = a5;
  v16 = a6;
  v17 = a7;
  v19 = a8;
  if (!v19)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPFloatingCommentInfo initWithContext:geometry:style:pathSource:wpStorage:commentStorage:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 315, 0, "Invalid parameter not satisfying: %{public}s", "commentStorage != nil", v32);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = v32;
  v33.receiver = self;
  v33.super_class = TSWPFloatingCommentInfo;
  v28 = [(TSWPShapeInfo *)&v33 initWithContext:v14 geometry:v15 style:v27 pathSource:v16 wpStorage:v17];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_commentStorage, a8);
    objc_msgSend_addDisallowedElementKind_(v17, v30, 784399);
  }

  return v29;
}

- (TSWPFloatingCommentInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6 wpStorage:(id)a7
{
  v29 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPFloatingCommentInfo initWithContext:geometry:style:pathSource:wpStorage:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v17, v19, 333, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  v23 = MEMORY[0x277CBEAD8];
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%s: %s", "Do not call method", "[TSWPFloatingCommentInfo initWithContext:geometry:style:pathSource:wpStorage:]", v29, self);
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v23, v26, *MEMORY[0x277CBE658], v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (BOOL)isHighlight
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_text(v3, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8) == 0;

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[114]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = &TSWP::_ShapeInfoArchive_default_instance_;
  }

  v18.receiver = self;
  v18.super_class = TSWPFloatingCommentInfo;
  [(TSWPShapeInfo *)&v18 loadFromArchive:v7 unarchiver:v6];
  if ((*(a3 + 16) & 2) != 0)
  {
    v10 = *(a3 + 4);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276F3EE94;
    v17[3] = &unk_27A6F5AD8;
    v17[4] = self;
    v11 = v6;
    v12 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v17);
  }

  if (objc_msgSend_fileFormatVersion(v6, v8, v9) < *MEMORY[0x277D80988])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276F3EEA0;
    v16[3] = &unk_27A6F46E8;
    v16[4] = self;
    objc_msgSend_addFinalizeHandler_(v6, v14, v16);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276F3F0A8;
  v15[3] = &unk_27A6F46E8;
  v15[4] = self;
  objc_msgSend_addFinalizeHandler_(v6, v14, v15);
}

- (double)commentScalingMultiplier
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPFloatingCommentInfo commentScalingMultiplier]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 463, 0, "invalid nil value for '%{public}s'", "root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_msgSend_stickyCommentScaleMultiplier(v9, v10, v11);
  v20 = v19;

  return v20;
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276F3FC60, off_2812DC408[114]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_276F3F460;
  v18[3] = &unk_27A6F3E30;
  v21 = a3;
  v7 = v6;
  v19 = v7;
  v20 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v18);
  v11 = objc_msgSend_commentStorage(self, v9, v10);

  if (v11)
  {
    v15 = objc_msgSend_commentStorage(self, v12, v13);
    *(a3 + 4) |= 2u;
    v16 = *(a3 + 4);
    if (!v16)
    {
      v17 = *(a3 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA3250](v17);
      *(a3 + 4) = v16;
    }

    objc_msgSend_setStrongReference_message_(v7, v14, v15, v16);
  }
}

- (id)typeName
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Comment", &stru_28860A0F0, @"TSText");

  return v5;
}

- (TSKAnnotationAuthor)author
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = objc_msgSend_author(v3, v4, v5);

  return v6;
}

- (void)setAuthor:(id)a3
{
  v10 = a3;
  v6 = objc_msgSend_commentStorage(self, v4, v5);
  v8 = objc_msgSend_copyWithAuthor_(v6, v7, v10);
  objc_msgSend_setCommentStorage_(self, v9, v8);
}

- (NSDate)date
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = objc_msgSend_creationDate(v3, v4, v5);

  return v6;
}

- (void)commentWillBeAddedToDocumentRoot
{
  v5 = objc_msgSend_commentStorage(self, a2, v2);
  objc_msgSend_commentWillBeAddedToDocumentRoot(v5, v3, v4);
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = TSWPFloatingCommentInfo;
  [(TSWPShapeInfo *)&v10 willBeAddedToDocumentRoot:v6 dolcContext:v7];
  objc_msgSend_commentWillBeAddedToDocumentRoot(self, v8, v9);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = TSWPFloatingCommentInfo;
  [(TSWPShapeInfo *)&v16 wasAddedToDocumentRoot:v6 dolcContext:a4];
  v7 = *MEMORY[0x277D805B8];
  v17 = self;
  v18 = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, &v17, 1);
  v19[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v19, &v18, 1);

  v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13);
  objc_msgSend_postNotificationName_object_userInfo_(v14, v15, *MEMORY[0x277D805B0], v6, v11);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TSWPFloatingCommentInfo;
  [(TSWPShapeInfo *)&v14 wasRemovedFromDocumentRoot:v4];
  v5 = *MEMORY[0x277D805C8];
  v15 = self;
  v16 = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v15, 1);
  v17[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v17, &v16, 1);

  v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11);
  objc_msgSend_postNotificationName_object_userInfo_(v12, v13, *MEMORY[0x277D805B0], v4, v9);
}

- (id)annotationWithUUID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_annotationUUID(self, v5, v6);
  isEqual = objc_msgSend_isEqual_(v7, v8, v4);

  if (isEqual)
  {
    v11 = self;
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPFloatingCommentInfo annotationWithUUID:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFloatingCommentInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 554, 0, "The only child annotation of a floating comment is itself.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v11 = 0;
  }

  return v11;
}

- (NSString)annotationUUID
{
  v3 = objc_msgSend_objectUUID(self, a2, v2);
  v6 = objc_msgSend_UUIDString(v3, v4, v5);

  return v6;
}

- (NSString)parentUUID
{
  v3 = objc_msgSend_objectUUID(self, a2, v2);
  v6 = objc_msgSend_UUIDString(v3, v4, v5);

  return v6;
}

@end