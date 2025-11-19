@interface KNAnimParameterGroup
+ (id)easeInEaseOutPath;
+ (id)easeInPath;
+ (id)easeOutPath;
+ (id)linearPath;
+ (id)mediaTimingFunctionForPath:(id)a3 reversed:(BOOL)a4;
+ (id)parameterGroupForName:(id)a3;
+ (void)p_loadAllParametersIfNecessary;
- (BOOL)BOOLForKey:(id)a3;
- (KNAnimParameterGroup)initWithFileName:(id)a3;
- (double)doubleForAnimationCurve:(id)a3 atPercent:(double)a4;
- (double)doubleForKey:(id)a3;
- (id)mediaTimingFunctionForAnimationCurve:(id)a3 reversed:(BOOL)a4;
- (id)pathForAnimationCurve:(id)a3;
- (void)p_loadParameters;
@end

@implementation KNAnimParameterGroup

+ (id)parameterGroupForName:(id)a3
{
  v4 = a3;
  if (qword_280A3C090 != -1)
  {
    sub_275E5B55C();
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_275DC2384;
  v32 = sub_275DC2394;
  v33 = 0;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[KNAnimParameterGroup parameterGroupForName:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 56, 0, "invalid nil value for '%{public}s'", "name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = qword_280A3C098;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DC239C;
  block[3] = &unk_27A698618;
  v27 = &v28;
  v13 = v4;
  v26 = v13;
  dispatch_sync(v12, block);
  v15 = v29[5];
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[KNAnimParameterGroup parameterGroupForName:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 93, 0, "Unable to find parameterGroup for name %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v15 = v29[5];
  }

  v23 = v15;

  _Block_object_dispose(&v28, 8);

  return v23;
}

+ (void)p_loadAllParametersIfNecessary
{
  if ((objc_msgSend_isAnimationEditorConnected(KNAnimationTools, a2, v2) & 1) == 0)
  {
    v3 = qword_280A3C098;

    dispatch_sync(v3, &unk_2884D50F0);
  }
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_savedGroup(self, v5, v6);
  v9 = objc_msgSend_parameterForName_(v7, v8, v4);

  if (!v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNAnimParameterGroup doubleForKey:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 134, 0, "Name does not exist for parameter '%@'", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_type(v9, v10, v11) != 1)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNAnimParameterGroup doubleForKey:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 135, 0, "Trying to access the constant from the wrong type of parameter '%@'", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  objc_msgSend_doubleValue(v9, v19, v20);
  v29 = v28;

  return v29;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_savedGroup(self, v5, v6);
  v9 = objc_msgSend_parameterForName_(v7, v8, v4);

  if (!v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNAnimParameterGroup BOOLForKey:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 144, 0, "Name does not exist for parameter '%@'", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_type(v9, v10, v11) != 2)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNAnimParameterGroup BOOLForKey:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 145, 0, "Trying to access the BOOL from the wrong type of parameter '%@'", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  objc_msgSend_doubleValue(v9, v19, v20);
  v29 = v28 > 0.0;

  return v29;
}

- (double)doubleForAnimationCurve:(id)a3 atPercent:(double)a4
{
  v7 = objc_msgSend_pathForAnimationCurve_(self, a2, a3);
  if (a4 < 0.0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimParameterGroup doubleForAnimationCurve:atPercent:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 152, 0, "percent less than 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (a4 > 1.0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimParameterGroup doubleForAnimationCurve:atPercent:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 153, 0, "percent greater than 1");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_msgSend_yValueFromXValue_(v7, v5, v6, a4);
  TSUClamp();
  v23 = v22;

  return v23;
}

- (id)pathForAnimationCurve:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_savedGroup(self, v5, v6);
  v9 = objc_msgSend_parameterForName_(v7, v8, v4);

  v14 = objc_msgSend_pathValue(v9, v10, v11);
  if (!v9)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNAnimParameterGroup pathForAnimationCurve:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    v21 = objc_msgSend_name(self, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v16, v18, 164, 0, "Name does not exist for parameter: %@(%@)", v21, v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if (objc_msgSend_type(v9, v12, v13) != 11 && objc_msgSend_type(v9, v25, v26) != 10)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAnimParameterGroup pathForAnimationCurve:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    v33 = objc_msgSend_name(self, v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v28, v30, 165, 0, "Trying to access a bezier path from the wrong type of parameter: %@(%@)", v33, v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  if (!v14)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAnimParameterGroup pathForAnimationCurve:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    v43 = objc_msgSend_name(self, v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v38, v40, 166, 0, "Bezier path is nil for parameter: %@(%@)", v43, v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
  }

  return v14;
}

- (id)mediaTimingFunctionForAnimationCurve:(id)a3 reversed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = objc_msgSend_savedGroup(self, v7, v8);
  v11 = objc_msgSend_parameterForName_(v9, v10, v6);

  if (!v11 || objc_msgSend_type(v11, v12, v13) != 10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNAnimParameterGroup mediaTimingFunctionForAnimationCurve:reversed:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    v20 = objc_msgSend_name(self, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v15, v17, 180, 0, "Trying to access media timing function from a parameter that is not a simple path for parameter: %@(%@)", v20, v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_pathForAnimationCurve_(self, v12, v6);
  v26 = objc_msgSend_mediaTimingFunctionForPath_reversed_(KNAnimParameterGroup, v25, v24, v4);

  return v26;
}

+ (id)mediaTimingFunctionForPath:(id)a3 reversed:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = *MEMORY[0x277CBF348];
  if (objc_msgSend_elementCount(v5, v6, v7) < 2)
  {
    v30 = v31;
  }

  else
  {
    v11 = 1;
    v10.i64[0] = 2;
    v29 = v10;
    v30 = v31;
    do
    {
      v12.i64[0] = objc_msgSend_elementAtIndex_associatedPoints_(v5, v8, v11, v32, *&v29);
      v13 = vdupq_lane_s64(vceqq_s64(v12, v29).i64[0], 0);
      v30 = vbslq_s8(v13, v32[1], v30);
      v31 = vbslq_s8(v13, v32[0], v31);
      ++v11;
    }

    while (v11 < objc_msgSend_elementCount(v5, v14, v15));
  }

  __asm { FMOV            V0.2D, #1.0 }

  v21 = vsubq_f64(_Q0, v30);
  v22 = vsubq_f64(_Q0, v31);
  if (v4)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

  v24 = vdupq_n_s64(v23);
  v25 = vbslq_s8(v24, v22, v30);
  v26 = vbslq_s8(v24, v21, v31);
  *v22.i32 = *v26.i64;
  v26.i32[1] = v26.i32[3];
  *v26.i32 = *&v26.i64[1];
  *v24.i32 = *v25.i64;
  v25.i32[1] = v25.i32[3];
  *v25.i32 = *&v25.i64[1];
  v27 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v8, v9, *v22.i64, *v26.i64, *v24.i64, *v25.i64);

  return v27;
}

+ (id)linearPath
{
  v3 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v3, v4, v5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v3, v6, v7, 1.0, 1.0, 0.25, 0.25, 0.75, 0.75);

  return v3;
}

+ (id)easeInEaseOutPath
{
  v3 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v3, v4, v5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v3, v6, v7, 1.0, 1.0, 0.25, 0.1, 0.75, 0.9);

  return v3;
}

+ (id)easeInPath
{
  v3 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v3, v4, v5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v3, v6, v7, 1.0, 1.0, 0.25, 0.1, 1.0, 1.0);

  return v3;
}

+ (id)easeOutPath
{
  v3 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v2);
  objc_msgSend_moveToPoint_(v3, v4, v5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v3, v6, v7, 1.0, 1.0, 0.0, 0.0, 0.75, 0.9);

  return v3;
}

- (KNAnimParameterGroup)initWithFileName:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = KNAnimParameterGroup;
  v7 = [(KNAnimParameterGroup *)&v30 init];
  if (v7)
  {
    if (!v4)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimParameterGroup initWithFileName:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 257, 0, "Nil file path to animation parameters.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    v15 = objc_msgSend_copy(v4, v5, v6);
    fileName = v7->_fileName;
    v7->_fileName = v15;

    v19 = objc_msgSend_lastPathComponent(v4, v17, v18);
    v22 = objc_msgSend_stringByDeletingPathExtension(v19, v20, v21);
    v25 = objc_msgSend_copy(v22, v23, v24);
    name = v7->_name;
    v7->_name = v25;

    objc_msgSend_p_loadParameters(v7, v27, v28);
  }

  return v7;
}

- (void)p_loadParameters
{
  v53 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v6 = objc_msgSend_fileName(self, v4, v5);
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObject_(v8, v10, v9);
  v13 = objc_msgSend_tsu_securelyUnarchiveObjectWithFile_ofClasses_(v7, v12, v6, v11);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
  }

  if (objc_msgSend_isAnimationEditorConnected(KNAnimationTools, v14, v15))
  {
    v18 = NSHomeDirectory();
    v20 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"Animation Editor");

    v23 = objc_msgSend_fileName(self, v21, v22);
    v26 = objc_msgSend_lastPathComponent(v23, v24, v25);
    v28 = objc_msgSend_stringByAppendingPathComponent_(v20, v27, v26);

    if (objc_msgSend_fileExistsAtPath_isDirectory_(v53, v29, v28, 0))
    {
      v30 = MEMORY[0x277CCAAC8];
      v31 = MEMORY[0x277CBEB98];
      v32 = objc_opt_class();
      v34 = objc_msgSend_setWithObject_(v31, v33, v32);
      v36 = objc_msgSend_tsu_securelyUnarchiveObjectWithFile_ofClasses_(v30, v35, v28, v34);

      if (v36)
      {
        objc_msgSend_setSavedGroup_(self, v37, v36);
      }
    }
  }

  v38 = objc_msgSend_savedGroup(self, v16, v17);

  if (!v38)
  {
    objc_msgSend_setSavedGroup_(self, v39, v13);
  }

  v41 = objc_msgSend_savedGroup(self, v39, v40);

  if (!v41)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[KNAnimParameterGroup p_loadParameters]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m");
    v49 = objc_msgSend_name(self, v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v44, v46, 304, 0, "No Parameter Group Loaded for Parameter: %@", v49);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
  }
}

@end