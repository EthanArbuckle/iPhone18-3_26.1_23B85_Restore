@interface TSDStyledInfo
- (Class)styleClass;
- (NSArray)stylesForCopyStyle;
- (NSSet)referencedStyles;
- (NSString)styleIdentifierTemplateForNewPreset;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (TSDStroke)stroke;
- (TSSStyle)style;
- (float)opacity;
- (id)boxedValueForProperty:(int)a3;
- (id)objectForProperty:(int)a3;
- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4;
- (id)propertyMapForNewPreset;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)i_setValue:(id)a3 forProperty:(int)a4;
- (void)i_setValue:(id)a3 forProperty:(int)a4 inStylesheet:(id)a5;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)setBoxedValue:(id)a3 forProperty:(int)a4;
- (void)setOpacity:(float)a3;
- (void)setReflection:(id)a3;
- (void)setShadow:(id)a3;
- (void)setStyle:(id)a3;
- (void)setValuesForProperties:(id)a3;
@end

@implementation TSDStyledInfo

- (Class)styleClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDStyledInfo styleClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 40, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDStyledInfo styleClass]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (TSSStyle)style
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDStyledInfo style]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 46, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDStyledInfo style]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)setStyle:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStyledInfo setStyle:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 52, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSDStyledInfo setStyle:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStyledInfo pastedPropertyMapForStyle:tailLineEndInfo:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 57, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v21 = objc_msgSend_stringWithFormat_(v17, v20, @"Abstract method not overridden by %@: %s", v19, "[TSDStyledInfo pastedPropertyMapForStyle:tailLineEndInfo:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, v16, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSArray)stylesForCopyStyle
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_style(self, a2, v2);
  v7[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 1);

  return v5;
}

- (TSDStroke)stroke
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStyledInfo stroke]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 89, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  v16 = objc_msgSend_valueForProperty_(v14, v15, 517);

  v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18);

  if (v16 == v19)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDStyledInfo stroke]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 94, 0, "Styled info has an invalid null stroke; please add repro steps in 15922298.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);

  if (v16 == v29)
  {

    v16 = 0;
  }

  return v16;
}

- (float)opacity
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStyledInfo opacity]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 115, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  objc_msgSend_floatValueForProperty_(v14, v15, 518);
  v17 = v16;

  return v17;
}

- (void)setOpacity:(float)a3
{
  v56 = a3;
  v5 = objc_msgSend_style(self, a2, v3);

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStyledInfo setOpacity:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 121, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_documentRoot(self, v6, v7);
  v18 = objc_msgSend_stylesheet(v15, v16, v17);

  if (!v18)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDStyledInfo setOpacity:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 122, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  v28 = objc_msgSend_styleClass(self, v19, v20);
  objc_msgSend_validateFloatValue_forProperty_(v28, v29, &v56, 518);
  objc_msgSend_willChangeProperty_(self, v30, 518);
  v31 = objc_alloc(MEMORY[0x277D80AB8]);
  v33 = objc_msgSend_initWithPropertiesAndValues_(v31, v32, 518, v56, 0, 0);
  v36 = objc_msgSend_documentRoot(self, v34, v35);
  v39 = objc_msgSend_stylesheet(v36, v37, v38);
  v42 = objc_msgSend_style(self, v40, v41);
  v44 = objc_msgSend_variationOfStyle_propertyMap_(v39, v43, v42, v33);

  v47 = objc_msgSend_style(self, v45, v46);
  objc_opt_class();
  LOBYTE(v39) = objc_opt_isKindOfClass();

  if ((v39 & 1) == 0)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSDStyledInfo setOpacity:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 129, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
  }

  objc_msgSend_setStyle_(self, v48, v44);
}

- (TSDReflection)reflection
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStyledInfo reflection]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 135, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  v16 = objc_msgSend_valueForProperty_(v14, v15, 519);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v16 = 0;
  }

  return v16;
}

- (void)setReflection:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_i_setValue_forProperty_(self, v8, v7, 519);
}

- (TSDShadow)shadow
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStyledInfo shadow]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 152, 0, "invalid nil value for 'self.style' on %{public}@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_style(self, v5, v6);
  v18 = objc_msgSend_valueForProperty_(v16, v17, 520);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v18 = 0;
  }

  return v18;
}

- (void)setShadow:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_i_setValue_forProperty_(self, v8, v7, 520);
}

- (id)boxedValueForProperty:(int)a3
{
  v3 = *&a3;
  v5 = objc_msgSend_style(self, a2, *&a3);

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStyledInfo boxedValueForProperty:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 169, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_style(self, v6, v7);
  v17 = objc_msgSend_containsProperty_(v15, v16, v3);

  if (v17)
  {
    v20 = objc_msgSend_style(self, v18, v19);
    v22 = objc_msgSend_boxedValueForProperty_(v20, v21, v3);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = TSDStyledInfo;
    v22 = [(TSDStyledInfo *)&v24 boxedObjectForProperty:v3];
  }

  return v22;
}

- (id)objectForProperty:(int)a3
{
  if (a3 == 515)
  {
    v3 = objc_msgSend_style(self, a2, *&a3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDStyledInfo;
    v3 = [(TSDStyledInfo *)&v5 objectForProperty:?];
  }

  return v3;
}

- (void)setBoxedValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v63 = a3;
  if (!v63)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStyledInfo setBoxedValue:forProperty:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 187, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_style(self, v6, v7);

  if (!v15)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDStyledInfo setBoxedValue:forProperty:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 188, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_documentRoot(self, v16, v17);
  v28 = objc_msgSend_stylesheet(v25, v26, v27);

  if (!v28)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSDStyledInfo setBoxedValue:forProperty:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 189, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  objc_msgSend_willChangeProperty_(self, v29, v4);
  v37 = objc_alloc(MEMORY[0x277D80AB8]);
  v39 = objc_msgSend_initWithCapacity_(v37, v38, 1);
  objc_msgSend_setBoxedObject_forProperty_(v39, v40, v63, v4);
  v43 = objc_msgSend_documentRoot(self, v41, v42);
  v46 = objc_msgSend_stylesheet(v43, v44, v45);
  v49 = objc_msgSend_style(self, v47, v48);
  v51 = objc_msgSend_variationOfStyle_propertyMap_(v46, v50, v49, v39);

  v54 = objc_msgSend_style(self, v52, v53);
  objc_opt_class();
  LOBYTE(v46) = objc_opt_isKindOfClass();

  if ((v46 & 1) == 0)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSDStyledInfo setBoxedValue:forProperty:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 198, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
  }

  objc_msgSend_setStyle_(self, v55, v51);
}

- (void)setValuesForProperties:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_style(self, v5, v6);

  if (!v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDStyledInfo setValuesForProperties:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 204, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_documentRoot(self, v8, v9);
  v20 = objc_msgSend_stylesheet(v17, v18, v19);

  if (!v20)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDStyledInfo setValuesForProperties:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 205, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_allProperties(v4, v21, v22);
  objc_msgSend_willChangeProperties_(self, v31, v30);

  v34 = objc_msgSend_documentRoot(self, v32, v33);
  v37 = objc_msgSend_stylesheet(v34, v35, v36);
  v40 = objc_msgSend_style(self, v38, v39);
  v53 = objc_msgSend_variationOfStyle_propertyMap_(v37, v41, v40, v4);

  v44 = objc_msgSend_style(self, v42, v43);
  objc_opt_class();
  LOBYTE(v34) = objc_opt_isKindOfClass();

  if ((v34 & 1) == 0)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSDStyledInfo setValuesForProperties:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 210, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
  }

  objc_msgSend_setStyle_(self, v45, v53);
}

- (void)i_setValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v60 = a3;
  if (!v60)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStyledInfo i_setValue:forProperty:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 216, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_style(self, v6, v7);

  if (!v15)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDStyledInfo i_setValue:forProperty:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 217, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_documentRoot(self, v16, v17);
  v28 = objc_msgSend_stylesheet(v25, v26, v27);

  if (!v28)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSDStyledInfo i_setValue:forProperty:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 218, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  objc_msgSend_willChangeProperty_(self, v29, v4);
  v37 = objc_msgSend_initWithPropertiesAndValues_(objc_alloc(MEMORY[0x277D80AB8]), v60, v4, v60, 0);
  v40 = objc_msgSend_documentRoot(self, v38, v39);
  v43 = objc_msgSend_stylesheet(v40, v41, v42);
  v46 = objc_msgSend_style(self, v44, v45);
  v48 = objc_msgSend_variationOfStyle_propertyMap_(v43, v47, v46, v37);

  v51 = objc_msgSend_style(self, v49, v50);
  objc_opt_class();
  LOBYTE(v43) = objc_opt_isKindOfClass();

  if ((v43 & 1) == 0)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSDStyledInfo i_setValue:forProperty:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 224, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
  }

  objc_msgSend_setStyle_(self, v52, v48);
}

- (void)i_setValue:(id)a3 forProperty:(int)a4 inStylesheet:(id)a5
{
  v6 = *&a4;
  v52 = a3;
  v10 = a5;
  if (!v52)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDStyledInfo i_setValue:forProperty:inStylesheet:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 230, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_style(self, v8, v9);

  if (v18)
  {
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDStyledInfo i_setValue:forProperty:inStylesheet:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 231, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v45 = MEMORY[0x277D81150];
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDStyledInfo i_setValue:forProperty:inStylesheet:]");
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 232, 0, "invalid nil value for '%{public}s'", "stylesheet");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
LABEL_5:
  objc_msgSend_willChangeProperty_(self, v19, v6);
  v20 = objc_msgSend_initWithPropertiesAndValues_(objc_alloc(MEMORY[0x277D80AB8]), v52, v6, v52, 0);
  v23 = objc_msgSend_style(self, v21, v22);
  v25 = objc_msgSend_variationOfStyle_propertyMap_(v10, v24, v23, v20);

  v28 = objc_msgSend_style(self, v26, v27);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSDStyledInfo i_setValue:forProperty:inStylesheet:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 238, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  }

  objc_msgSend_setStyle_(self, v30, v25);
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2766DCDB8;
  v11[3] = &unk_27A6CCEB0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  objc_msgSend_replaceReferencedStylesUsingBlock_(self, v9, v11);
  v10.receiver = self;
  v10.super_class = TSDStyledInfo;
  [(TSDDrawableInfo *)&v10 adoptStylesheet:v8 withMapper:v7];
}

- (id)propertyMapForNewPreset
{
  v3 = objc_msgSend_style(self, a2, v2);
  v6 = objc_msgSend_fullPropertyMap(v3, v4, v5);

  return v6;
}

- (NSString)styleIdentifierTemplateForNewPreset
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDStyledInfo styleIdentifierTemplateForNewPreset]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 258, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDStyledInfo styleIdentifierTemplateForNewPreset]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (NSSet)referencedStyles
{
  v6 = objc_msgSend_style(self, a2, v2);
  v7 = MEMORY[0x277D812C0];
  if (v6)
  {
    v8 = objc_msgSend_style(self, v4, v5);
    v10 = objc_msgSend_setWithObject_(v7, v9, v8);
  }

  else
  {
    v10 = objc_msgSend_set(MEMORY[0x277D812C0], v4, v5);
  }

  return v10;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  v27 = objc_msgSend_style(self, v5, v6);
  v7 = v4[2](v4);

  if (!v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDStyledInfo replaceReferencedStylesUsingBlock:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 271, 0, "Failed to map style %{public}@", v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  objc_msgSend_styleClass(self, v8, v9);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSDStyledInfo replaceReferencedStylesUsingBlock:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledInfo.m");
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v21, 272, 0, "style mapped returned style of class %{public}@ for %{public}@ for TSDStyledInfo %{public}@", v23, v27, self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  objc_msgSend_setStyle_(self, v17, v7);
}

@end