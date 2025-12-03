@interface TSWPColumnStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
- (BOOL)equalWidth;
- (TSWPPadding)layoutMargins;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)layoutMarginsForTarget:(id)target;
- (unint64_t)columnCount;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPColumnStyle

+ (id)properties
{
  if (qword_280A58090 != -1)
  {
    sub_276F4F06C();
  }

  v3 = qword_280A58088;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  if (property == 151)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x80000000;
  }

  if (property == 152)
  {
    v3 = 0;
  }

  if (property == 153)
  {
    v3 = 0;
  }

  if (property == 149)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (property == 44)
  {
    v4 = -1;
  }

  if (property <= 150)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  if (property == 147)
  {
    return 0.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  if (property == 145 || property == 146)
  {
    v3 = objc_msgSend_padding(TSWPPadding, a2, *&property);
  }

  else if (property == 148)
  {
    v3 = objc_msgSend_columns(TSWPColumns, a2, *&property);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___TSWPColumnStyle;
    v3 = objc_msgSendSuper2(&v5, sel_defaultValueForProperty_);
  }

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  if (qword_280A580A0 != -1)
  {
    sub_276F4F080();
  }

  v4 = objc_alloc(objc_opt_class());
  v5 = qword_280A58098;
  v6 = objc_opt_class();
  v9 = objc_msgSend_defaultPropertyMap(v6, v7, v8);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v10, contextCopy, v5, v9, 0);

  return isVariation;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  objc_opt_class();
  v5 = objc_msgSend_valueForProperty_(self, v4, 146);
  v6 = TSUCheckedDynamicCast();

  objc_msgSend_floatValueForProperty_(self, v7, 147);
  v9 = v8;
  objc_msgSend_leftInset(v6, v10, v11);
  v13 = v12;
  objc_msgSend_rightInset(v6, v14, v15);
  v17 = v16;
  objc_msgSend_topInset(v6, v18, v19);
  v21 = v20;
  objc_msgSend_bottomInset(v6, v22, v23);
  v25 = v24;
  v26 = v9;
  if (v17 >= v9)
  {
    v27 = v17;
  }

  else
  {
    v27 = v9;
  }

  if (v13 < v26)
  {
    v13 = v26;
  }

  v28 = v21;
  v29 = v13;
  v30 = v25;
  v31 = v27;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (TSWPPadding)layoutMargins
{
  objc_opt_class();
  v4 = objc_msgSend_valueForProperty_(self, v3, 145);
  v5 = TSUDynamicCast();

  return v5;
}

- (id)layoutMarginsForTarget:(id)target
{
  targetCopy = target;
  v7 = objc_msgSend_layoutMargins(self, v5, v6);
  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_marginsAreMirrored(targetCopy, v8, v9))
  {
    v12 = objc_msgSend_paddingByMirroringHorizontal(v7, v10, v11);

    v7 = v12;
  }

  return v7;
}

- (BOOL)equalWidth
{
  v2 = objc_msgSend_valueForProperty_(self, a2, 148);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_equalWidth(v2, v3, v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (unint64_t)columnCount
{
  v2 = objc_msgSend_valueForProperty_(self, a2, 148);
  v5 = objc_msgSend_columnCount(v2, v3, v4);
  if (v5 >= 0xA)
  {
    v6 = 10;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 148);
  objc_msgSend_widthForColumnIndex_bodyWidth_(v6, v7, index, width);
  v9 = v8;

  return v9;
}

- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 148);
  objc_msgSend_gapForColumnIndex_bodyWidth_(v6, v7, index, width);
  v9 = v8;

  return v9;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  v11 = objc_msgSend_valueForProperty_(self, a2, 148, target);
  objc_msgSend_positionForColumnIndex_bodyWidth_outWidth_outGap_(v11, v12, index, outWidth, gap, width);
  v14 = v13;

  return v14;
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
    v7 = MEMORY[0x277D80BD0];
  }

  v82.receiver = self;
  v82.super_class = TSWPColumnStyle;
  [(TSWPColumnStyle *)&v82 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 10);
  if (!v10)
  {
    goto LABEL_69;
  }

  v11 = objc_alloc(MEMORY[0x277D80AB8]);
  v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
  if (*(archive + 4))
  {
    v14 = *(archive + 4);
  }

  else
  {
    v14 = &TSWP::_ColumnStylePropertiesArchive_default_instance_;
  }

  v17 = objc_opt_class();
  v18 = *(v14 + 4);
  if (v18)
  {
    if (unarchiverCopy)
    {
      v20 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPColumns, v15, *(v14 + 3), unarchiverCopy);
      v19 = 1;
      goto LABEL_16;
    }

    v19 = 0;
    if ((v18 & 0x40) == 0)
    {
LABEL_19:
      v22 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v19 = unarchiverCopy != 0;
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v14[51] != 1)
  {
    goto LABEL_19;
  }

  v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v15, v16);
LABEL_16:
  v21 = v20;
  v22 = v21;
  if (!v21)
  {
LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v81 = v21;
  v23 = objc_opt_class();
  v25 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v24, &v81, v23, 148);
  v26 = v81;

  if (v25)
  {
    objc_msgSend_setObject_forProperty_(v13, v27, v26, 148);
  }

LABEL_21:

  v30 = *(v14 + 4);
  if ((v30 & 8) != 0)
  {
    v80 = v14[48];
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v17, v28, &v80, 151))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v28, v80 != 0, 151);
    }

    v30 = *(v14 + 4);
  }

  v31 = !v19;
  if ((v30 & 2) == 0)
  {
    v31 = 1;
  }

  if (v31)
  {
    if ((v30 & 0x200) == 0 || v14[60] != 1)
    {
      v34 = 0;
      goto LABEL_36;
    }

    v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29);
  }

  else
  {
    v32 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPPadding, v28, *(v14 + 4), unarchiverCopy);
  }

  v33 = v32;
  v34 = v33;
  if (!v33)
  {
LABEL_36:
    v38 = 0;
    goto LABEL_37;
  }

  v79 = v33;
  v35 = objc_opt_class();
  v37 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v36, &v79, v35, 145);
  v38 = v79;

  if (v37)
  {
    objc_msgSend_setObject_forProperty_(v13, v39, v38, 145);
  }

LABEL_37:

  v42 = *(v14 + 4);
  if ((v42 & 0x80) != 0)
  {
    v80 = *(v14 + 13);
    if (objc_msgSend_validateFloatValue_forProperty_(v17, v40, &v80, 147))
    {
      LODWORD(v43) = v80;
      objc_msgSend_setFloatValue_forProperty_(v13, v40, 147, v43);
    }

    v42 = *(v14 + 4);
  }

  v44 = !v19;
  if ((v42 & 4) == 0)
  {
    v44 = 1;
  }

  if (v44)
  {
    if ((v42 & 0x400) == 0 || v14[61] != 1)
    {
      v47 = 0;
      goto LABEL_52;
    }

    v45 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41);
  }

  else
  {
    v45 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPPadding, v40, *(v14 + 5), unarchiverCopy);
  }

  v46 = v45;
  v47 = v46;
  if (v46)
  {
    v78 = v46;
    v48 = objc_opt_class();
    v50 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v49, &v78, v48, 146);
    v51 = v78;

    if (v50)
    {
      objc_msgSend_setObject_forProperty_(v13, v52, v51, 146);
    }

    goto LABEL_53;
  }

LABEL_52:
  v51 = 0;
LABEL_53:

  v54 = *(v14 + 4);
  if ((v54 & 0x10) != 0)
  {
    v80 = v14[49];
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v17, v53, &v80, 152))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v53, v80 != 0, 152);
    }

    v54 = *(v14 + 4);
  }

  if ((v54 & 0x100) != 0)
  {
    v80 = *(v14 + 14);
    if (objc_msgSend_validateIntValue_forProperty_(v17, v53, &v80, 149))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v53, v80, 149);
    }

    v54 = *(v14 + 4);
  }

  if ((v54 & 0x20) != 0)
  {
    v80 = v14[50];
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v17, v53, &v80, 153))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v53, v80 != 0, 153);
    }

    v54 = *(v14 + 4);
  }

  if ((v54 & 0x800) != 0)
  {
    v80 = *(v14 + 16);
    if (objc_msgSend_validateIntValue_forProperty_(v17, v53, &v80, 44))
    {
      objc_msgSend_setIntValue_forProperty_(v13, v55, v80, 44);
    }
  }

  v56 = *MEMORY[0x277D80AF0];
  v57 = *(&self->super.super.super.isa + v56);
  *(&self->super.super.super.isa + v56) = v13;

LABEL_69:
  if ((objc_msgSend_isVariation(self, v8, v9) & 1) == 0)
  {
    v60 = objc_msgSend_overrideCount(self, v58, v59);
    v61 = objc_opt_class();
    v64 = objc_msgSend_properties(v61, v62, v63);
    v67 = objc_msgSend_count(v64, v65, v66);

    if (v60 != v67)
    {
      v70 = objc_msgSend_overriddenProperties(self, v68, v69);
      v71 = objc_opt_class();
      v74 = objc_msgSend_defaultPropertyMap(v71, v72, v73);
      objc_msgSend_setIntValue_forProperty_(v74, v75, 0, 44);
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = sub_276D43A84;
      v77[3] = &unk_27A6F3D98;
      v77[4] = v70;
      v77[5] = self;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v74, v76, v77);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[60]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277CA3260](v8);
    *(archive + 3) = v7;
  }

  v83.receiver = self;
  v83.super_class = TSWPColumnStyle;
  [(TSWPColumnStyle *)&v83 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (HIDWORD(v11))
    {
      v72 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPColumnStyle saveToArchive:archiver:]");
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumnStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v76, v73, v75, 261, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78);
      LODWORD(v11) = -1;
    }

    v13 = *(archive + 4);
    *(archive + 10) = v11;
    *(archive + 4) = v13 | 6;
    v14 = *(archive + 4);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnStylePropertiesArchive>(v15);
      *(archive + 4) = v14;
    }

    v16 = objc_opt_class();
    v17 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
    if (objc_msgSend_containsProperty_(v17, v18, 148))
    {
      v20 = objc_msgSend_objectForProperty_(v17, v19, 148);
      v82 = v20;
      v21 = objc_opt_class();
      v23 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v22, &v82, v21, 148);
      v24 = v82;

      if (v23)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v27 = *(v14 + 16);
        if (isKindOfClass)
        {
          *(v14 + 16) = v27 | 0x40;
          *(v14 + 51) = 1;
        }

        else
        {
          *(v14 + 16) = v27 | 1;
          v28 = *(v14 + 24);
          if (!v28)
          {
            v29 = *(v14 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v29);
            *(v14 + 24) = v28;
          }

          objc_msgSend_saveToArchive_archiver_(v24, v26, v28, archiverCopy);
        }
      }
    }

    if (objc_msgSend_containsProperty_(v17, v19, 151))
    {
      v81 = objc_msgSend_intValueForProperty_(v17, v30, 151);
      if (objc_msgSend_validateIntValueAsBool_forProperty_(v16, v31, &v81, 151))
      {
        v32 = v81 != 0;
        *(v14 + 16) |= 8u;
        *(v14 + 48) = v32;
      }
    }

    if (objc_msgSend_containsProperty_(v17, v30, 145))
    {
      v34 = objc_msgSend_objectForProperty_(v17, v33, 145);
      v80 = v34;
      v35 = objc_opt_class();
      v37 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v36, &v80, v35, 145);
      v38 = v80;

      if (v37)
      {
        objc_opt_class();
        v39 = objc_opt_isKindOfClass();
        v41 = *(v14 + 16);
        if (v39)
        {
          *(v14 + 16) = v41 | 0x200;
          *(v14 + 60) = 1;
        }

        else
        {
          *(v14 + 16) = v41 | 2;
          v42 = *(v14 + 32);
          if (!v42)
          {
            v43 = *(v14 + 8);
            if (v43)
            {
              v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v43);
            *(v14 + 32) = v42;
          }

          objc_msgSend_saveToArchive_archiver_(v38, v40, v42, archiverCopy);
        }
      }
    }

    if (objc_msgSend_containsProperty_(v17, v33, 147))
    {
      objc_msgSend_floatValueForProperty_(v17, v44, 147);
      v81 = v45;
      if (objc_msgSend_validateFloatValue_forProperty_(v16, v46, &v81, 147))
      {
        v47 = v81;
        *(v14 + 16) |= 0x80u;
        *(v14 + 52) = v47;
      }
    }

    if (objc_msgSend_containsProperty_(v17, v44, 146))
    {
      v49 = objc_msgSend_objectForProperty_(v17, v48, 146);
      v79 = v49;
      v50 = objc_opt_class();
      v52 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v51, &v79, v50, 146);
      v53 = v79;

      if (v52)
      {
        objc_opt_class();
        v54 = objc_opt_isKindOfClass();
        v56 = *(v14 + 16);
        if (v54)
        {
          *(v14 + 16) = v56 | 0x400;
          *(v14 + 61) = 1;
        }

        else
        {
          *(v14 + 16) = v56 | 4;
          v57 = *(v14 + 40);
          if (!v57)
          {
            v58 = *(v14 + 8);
            if (v58)
            {
              v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
            }

            v57 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v58);
            *(v14 + 40) = v57;
          }

          objc_msgSend_saveToArchive_archiver_(v53, v55, v57, archiverCopy, v79);
        }
      }
    }

    if (objc_msgSend_containsProperty_(v17, v48, 152, v79))
    {
      v81 = objc_msgSend_intValueForProperty_(v17, v59, 152);
      if (objc_msgSend_validateIntValueAsBool_forProperty_(v16, v60, &v81, 152))
      {
        v61 = v81 != 0;
        *(v14 + 16) |= 0x10u;
        *(v14 + 49) = v61;
      }
    }

    if (objc_msgSend_containsProperty_(v17, v59, 149))
    {
      v63 = objc_msgSend_intValueForProperty_(v17, v62, 149);
      v81 = v63;
      if (TSWP::ColumnStylePropertiesArchive_VerticalAlignmentType_IsValid(v63))
      {
        if (objc_msgSend_validateIntValue_forProperty_(v16, v62, &v81, 149))
        {
          v64 = v81;
          *(v14 + 16) |= 0x100u;
          *(v14 + 56) = v64;
        }
      }
    }

    if (objc_msgSend_containsProperty_(v17, v62, 153))
    {
      v81 = objc_msgSend_intValueForProperty_(v17, v65, 153);
      if (objc_msgSend_validateIntValueAsBool_forProperty_(v16, v66, &v81, 153))
      {
        v67 = v81 != 0;
        *(v14 + 16) |= 0x20u;
        *(v14 + 50) = v67;
      }
    }

    if (objc_msgSend_containsProperty_(v17, v65, 44))
    {
      v69 = objc_msgSend_intValueForProperty_(v17, v68, 44);
      v81 = v69;
      if (TSWP::WritingDirectionType_IsValid(v69))
      {
        if (objc_msgSend_validateIntValue_forProperty_(v16, v70, &v81, 44))
        {
          v71 = v81;
          *(v14 + 16) |= 0x800u;
          *(v14 + 64) = v71;
        }
      }
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276D442FC, off_2812DC408[60]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end