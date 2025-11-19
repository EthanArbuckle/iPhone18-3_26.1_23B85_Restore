@interface TPPageLayout
- (BOOL)textIsVertical;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (Class)repClassForTextLayout:(id)a3;
- (TPSectionTemplateDrawableProvider)sectionTemplateDrawableProvider;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (id)dependentsOfTextLayout:(id)a3;
- (id)existingAttachmentLayoutForInfo:(id)a3;
- (id)layoutsForChildInfo:(id)a3;
- (id)p_childLayoutInParentLayout:(id)a3 forChildInfo:(id)a4;
- (unint64_t)pageCount;
- (unint64_t)pageIndex;
- (unint64_t)pageNumber;
- (void)validate;
@end

@implementation TPPageLayout

- (id)p_childLayoutInParentLayout:(id)a3 forChildInfo:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_275FF976C(self, v7);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, 0, v10, v11, v12, &v26, v30, 16);
  if (v13)
  {
    v19 = v13;
    v20 = 0;
    v21 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v8);
        }

        v23 = *(*(&v26 + 1) + 8 * i);
        if (!v20 || objc_msgSend_orderedBefore_(*(*(&v26 + 1) + 8 * i), v14, v15, v16, v17, v18, v20))
        {
          v24 = v23;

          v20 = v24;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, v18, &v26, v30, 16);
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)layoutsForChildInfo:(id)a3
{
  v3 = sub_275FF976C(self, a3);
  v9 = objc_msgSend_copy(v3, v4, v5, v6, v7, v8);

  return v9;
}

- (unint64_t)pageIndex
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageIndex(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)existingAttachmentLayoutForInfo:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_layoutController(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_layoutForInfo_childOfLayout_(v10, v11, v12, v13, v14, v15, v4, self);

  return v16;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  v3.n128_u64[0] = *MEMORY[0x277CBF3A8];
  v4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
  (MEMORY[0x2821F9670])(self, sel_autosizedFrameForTextLayout_textSize_, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, v10, "[TPPageLayout autosizedFrameForTextLayout:textSize:]");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v20, v21, v22, v23, v24, v11, v17, 178, 0, "Abstract method not overridden by %{public}@", v19);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  v30 = MEMORY[0x277CBEAD8];
  v31 = *MEMORY[0x277CBE658];
  v32 = MEMORY[0x277CCACA8];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v40 = objc_msgSend_stringWithFormat_(v32, v35, v36, v37, v38, v39, @"Abstract method not overridden by %@: %s", v34, "[TPPageLayout autosizedFrameForTextLayout:textSize:]");
  v46 = objc_msgSend_exceptionWithName_reason_userInfo_(v30, v41, v42, v43, v44, v45, v31, v40, 0);
  v47 = v46;

  objc_exception_throw(v46);
}

- (id)dependentsOfTextLayout:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPageLayout dependentsOfTextLayout:]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v19, v20, v21, v22, v23, v10, v16, 183, 0, "Abstract method not overridden by %{public}@", v18);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  v29 = MEMORY[0x277CBEAD8];
  v30 = *MEMORY[0x277CBE658];
  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v39 = objc_msgSend_stringWithFormat_(v31, v34, v35, v36, v37, v38, @"Abstract method not overridden by %@: %s", v33, "[TPPageLayout dependentsOfTextLayout:]");
  v45 = objc_msgSend_exceptionWithName_reason_userInfo_(v29, v40, v41, v42, v43, v44, v30, v39, 0);
  v46 = v45;

  objc_exception_throw(v45);
}

- (Class)repClassForTextLayout:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPageLayout repClassForTextLayout:]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v19, v20, v21, v22, v23, v10, v16, 188, 0, "Abstract method not overridden by %{public}@", v18);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  v29 = MEMORY[0x277CBEAD8];
  v30 = *MEMORY[0x277CBE658];
  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v39 = objc_msgSend_stringWithFormat_(v31, v34, v35, v36, v37, v38, @"Abstract method not overridden by %@: %s", v33, "[TPPageLayout repClassForTextLayout:]");
  v45 = objc_msgSend_exceptionWithName_reason_userInfo_(v29, v40, v41, v42, v43, v44, v30, v39, 0);
  v46 = v45;

  objc_exception_throw(v45);
}

- (void)validate
{
  v2.receiver = self;
  v2.super_class = TPPageLayout;
  [(TPPageLayout *)&v2 validate];
}

- (unint64_t)pageNumber
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageLayout pageNumber]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v17, v18, v19, v20, v7, v13, 224, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = MEMORY[0x277CBEAD8];
  v27 = *MEMORY[0x277CBE658];
  v28 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v36 = objc_msgSend_stringWithFormat_(v28, v31, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v30, "[TPPageLayout pageNumber]");
  v42 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v37, v38, v39, v40, v41, v27, v36, 0);
  v43 = v42;

  objc_exception_throw(v42);
}

- (unint64_t)pageCount
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageLayout pageCount]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v17, v18, v19, v20, v7, v13, 229, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = MEMORY[0x277CBEAD8];
  v27 = *MEMORY[0x277CBE658];
  v28 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v36 = objc_msgSend_stringWithFormat_(v28, v31, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v30, "[TPPageLayout pageCount]");
  v42 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v37, v38, v39, v40, v41, v27, v36, 0);
  v43 = v42;

  objc_exception_throw(v42);
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  if (a6)
  {
    *a6 = a4;
  }

  if (a7)
  {
    *a7 = 0.0;
  }

  return 0.0;
}

- (BOOL)textIsVertical
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageLayout textIsVertical]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v14, v15, v16, v17, v18, v7, v13, 273, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v25 = *MEMORY[0x277CBE658];
  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, @"%s: %s", "Do not call method", "[TPPageLayout textIsVertical]");
  v37 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v32, v33, v34, v35, v36, v25, v31, 0);
  v38 = v37;

  objc_exception_throw(v37);
}

- (TPSectionTemplateDrawableProvider)sectionTemplateDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  return WeakRetained;
}

@end