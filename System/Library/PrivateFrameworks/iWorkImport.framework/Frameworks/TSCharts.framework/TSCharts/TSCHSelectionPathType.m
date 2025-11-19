@interface TSCHSelectionPathType
+ (TSCHSelectionPathType)selectionPathTypeWithType:(id)a3 name:(id)a4;
- (BOOL)canApplyChartStyleWithDescription:(id)a3;
- (BOOL)canApplyParagraphStyle;
- (BOOL)canApplyShapeStyle;
- (BOOL)isEqual:(id)a3;
- (TSCHSelectionPathType)initWithArchive:(const void *)a3;
- (TSCHSelectionPathType)initWithType:(id)a3 name:(id)a4;
- (id)description;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCHSelectionPathType

+ (TSCHSelectionPathType)selectionPathTypeWithType:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithType_name_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCHSelectionPathType)initWithType:(id)a3 name:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHSelectionPathType initWithType:name:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelectionPath.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 367, 0, "invalid nil value for '%{public}s'", "type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (!v8)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHSelectionPathType initWithType:name:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelectionPath.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 368, 0, "invalid nil value for '%{public}s'", "name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  v56.receiver = self;
  v56.super_class = TSCHSelectionPathType;
  v43 = [(TSCHSelectionPathType *)&v56 init];
  if (v43)
  {
    v47 = objc_msgSend_copy(v6, v42, v44, v45, v46);
    type = v43->_type;
    v43->_type = v47;

    v53 = objc_msgSend_copy(v8, v49, v50, v51, v52);
    name = v43->_name;
    v43->_name = v53;
  }

  return v43;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (v6 && objc_msgSend_isEqual_(self->_name, v5, v7, v8, v9, v6[2]))
    {
      isEqual = objc_msgSend_isEqual_(self->_type, v10, v11, v12, v13, v6[1]);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCHSelectionPathType;
  v4 = [(TSCHSelectionPathType *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@, name: %@, type: %@", v4, self->_name, self->_type);

  return v9;
}

- (BOOL)canApplyParagraphStyle
{
  v5 = objc_msgSend_type(self, a2, v2, v3, v4);
  isEqual = objc_msgSend_isEqual_(@"text", v6, v7, v8, v9, v5);

  return isEqual;
}

- (BOOL)canApplyShapeStyle
{
  if (objc_msgSend_canApplyParagraphStyle(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_seriesType(TSCHSelectionPathType, v6, v7, v8, v9);
  if (objc_msgSend_isEqual_(self, v12, v13, v14, v15, v11))
  {
    isEqual = 1;
  }

  else
  {
    v20 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v16, v17, v18, v19);
    if (objc_msgSend_isEqual_(self, v21, v22, v23, v24, v20))
    {
      isEqual = 1;
    }

    else
    {
      v29 = objc_msgSend_errorBarType(TSCHSelectionPathType, v25, v26, v27, v28);
      if (objc_msgSend_isEqual_(self, v30, v31, v32, v33, v29))
      {
        isEqual = 1;
      }

      else
      {
        v38 = objc_msgSend_trendLineType(TSCHSelectionPathType, v34, v35, v36, v37);
        if (objc_msgSend_isEqual_(self, v39, v40, v41, v42, v38))
        {
          isEqual = 1;
        }

        else
        {
          v47 = objc_msgSend_axisLineType(TSCHSelectionPathType, v43, v44, v45, v46);
          if (objc_msgSend_isEqual_(self, v48, v49, v50, v51, v47))
          {
            isEqual = 1;
          }

          else
          {
            v56 = objc_msgSend_gridLineType(TSCHSelectionPathType, v52, v53, v54, v55);
            if (objc_msgSend_isEqual_(self, v57, v58, v59, v60, v56))
            {
              isEqual = 1;
            }

            else
            {
              v65 = objc_msgSend_legendType(TSCHSelectionPathType, v61, v62, v63, v64);
              if (objc_msgSend_isEqual_(self, v66, v67, v68, v69, v65))
              {
                isEqual = 1;
              }

              else
              {
                v74 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v70, v71, v72, v73);
                if (objc_msgSend_isEqual_(self, v75, v76, v77, v78, v74))
                {
                  isEqual = 1;
                }

                else
                {
                  v83 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v79, v80, v81, v82);
                  isEqual = objc_msgSend_isEqual_(self, v84, v85, v86, v87, v83);
                }
              }
            }
          }
        }
      }
    }
  }

  return isEqual;
}

- (BOOL)canApplyChartStyleWithDescription:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v5, v6, v7, v8);
  isEqual = objc_msgSend_isEqual_(self, v10, v11, v12, v13, v9);
  if (isEqual)
  {
    objc_opt_class();
    v122 = objc_msgSend_objectForKey_(v4, v19, v20, v21, v22, @"chartStyle");
    v121 = TSUCheckedDynamicCast();
    if (objc_msgSend_BOOLValue(v121, v23, v24, v25, v26))
    {
      v27 = 1;
LABEL_24:

      goto LABEL_25;
    }
  }

  v28 = objc_msgSend_legendType(TSCHSelectionPathType, v14, v16, v17, v18);
  v123 = objc_msgSend_isEqual_(self, v29, v30, v31, v32, v28);
  if (v123)
  {
    objc_opt_class();
    v117 = objc_msgSend_objectForKey_(v4, v37, v38, v39, v40, @"legendStyle");
    v116 = TSUCheckedDynamicCast();
    if (objc_msgSend_BOOLValue(v116, v41, v42, v43, v44))
    {
      v27 = 1;
      goto LABEL_23;
    }
  }

  v120 = objc_msgSend_valueAxisType(TSCHSelectionPathType, v33, v34, v35, v36);
  v50 = objc_msgSend_isEqual_(self, v45, v46, v47, v48, v120);
  if (v50)
  {
    objc_opt_class();
    v115 = objc_msgSend_objectForKey_(v4, v54, v55, v56, v57, @"valueAxisStyles");
    v114 = objc_msgSend_lastObject(v115, v58, v59, v60, v61);
    v62 = TSUCheckedDynamicCast();
    if (objc_msgSend_BOOLValue(v62, v63, v64, v65, v66))
    {
      v27 = 1;
      goto LABEL_22;
    }

    v113 = v62;
  }

  v118 = v28;
  v119 = v9;
  v67 = objc_msgSend_categoryAxisType(TSCHSelectionPathType, v49, v51, v52, v53);
  v73 = objc_msgSend_isEqual_(self, v68, v69, v70, v71, v67);
  if (v73)
  {
    objc_opt_class();
    v112 = objc_msgSend_objectForKey_(v4, v77, v78, v79, v80, @"categoryAxisStyles");
    v111 = objc_msgSend_lastObject(v112, v81, v82, v83, v84);
    v110 = TSUCheckedDynamicCast();
    if (objc_msgSend_BOOLValue(v110, v85, v86, v87, v88))
    {
      v27 = 1;
      goto LABEL_21;
    }
  }

  v89 = objc_msgSend_seriesType(TSCHSelectionPathType, v72, v74, v75, v76);
  if (objc_msgSend_isEqual_(self, v90, v91, v92, v93, v89))
  {
    objc_opt_class();
    v98 = objc_msgSend_objectForKey_(v4, v94, v95, v96, v97, @"seriesStyles");
    v103 = objc_msgSend_lastObject(v98, v99, v100, v101, v102);
    v104 = TSUCheckedDynamicCast();
    v27 = objc_msgSend_BOOLValue(v104, v105, v106, v107, v108);

    v28 = v118;
    v9 = v119;
    if ((v73 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v27 = 0;
    v28 = v118;
    if (!v73)
    {
LABEL_16:

      v62 = v113;
      if (v50)
      {
        goto LABEL_22;
      }

LABEL_17:

      if (v123)
      {
        goto LABEL_23;
      }

LABEL_18:

      if (!isEqual)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

LABEL_21:

  v62 = v113;
  if ((v50 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:

  if ((v123 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:

  if (isEqual)
  {
    goto LABEL_24;
  }

LABEL_25:

  return v27;
}

- (TSCHSelectionPathType)initWithArchive:(const void *)a3
{
  if (*(a3 + 16))
  {
    v8 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, v3, v4, v5, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = 0;
  }

  if ((*(a3 + 16) & 2) != 0)
  {
    v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, v3, v4, v5, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
    v10 = objc_msgSend_initWithType_name_(self, v11, v12, v13, v14, v8, v9);
  }

  else
  {
    v9 = 0;
    v10 = objc_msgSend_initWithType_name_(self, a2, v3, v4, v5, v8, 0);
  }

  v15 = v10;

  return v15;
}

- (void)saveToArchive:(void *)a3
{
  TSCH::StylePasteboardDataArchive::StylePasteboardDataArchive(v25, 0);
  v9 = objc_msgSend_type(self, v5, v6, v7, v8);
  v14 = objc_msgSend_tsp_protobufString(v9, v10, v11, v12, v13);
  *(a3 + 4) |= 1u;
  sub_2762F3BA4(__p, v14);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = objc_msgSend_name(self, v15, v16, v17, v18);
  v24 = objc_msgSend_tsp_protobufString(v19, v20, v21, v22, v23);
  *(a3 + 4) |= 2u;
  sub_2762F3BA4(__p, v24);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  TSCH::StylePasteboardDataArchive::~StylePasteboardDataArchive(v25);
}

@end