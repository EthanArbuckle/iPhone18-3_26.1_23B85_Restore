@interface KNMotionBackgroundStyle
+ (id)axDescriptionForStyleIdentifier:(id)identifier;
+ (id)backgroundNameForStyleIdentifier:(id)identifier;
+ (id)defaultStyleWithContext:(id)context;
+ (id)nextUnusedStyleIdentifierInStylesheet:(id)stylesheet;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)toolTipForStyle:(id)style;
- (KNMotionBackgroundStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (TSUColor)referenceColor;
- (id)makeAlternateFill;
- (id)targetParentForStyleMappingByStyleMapper:(id)mapper intoStylesheet:(id)stylesheet;
- (void)copyAuxiliaryInformationToMigratedStyle:(id)style;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadMotionBackgroundStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)notifyClientsOfUpdate;
- (void)saveMotionBackgroundStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOverridePropertyMap:(id)map;
- (void)setPosterFrameData:(id)data;
@end

@implementation KNMotionBackgroundStyle

+ (id)properties
{
  if (qword_280A3BF68 != -1)
  {
    sub_275E59DB8();
  }

  v3 = qword_280A3BF60;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A3BF78 != -1)
  {
    sub_275E59DCC();
  }

  v3 = qword_280A3BF70;

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, contextCopy, 0, 0, 0);

  return isVariation;
}

- (KNMotionBackgroundStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = KNMotionBackgroundStyle;
  return [(KNMotionBackgroundStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)notifyClientsOfUpdate
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_stylesheet(self, a2, v2, 0);
  v5 = objc_opt_class();
  v7 = objc_msgSend_stylesOfClass_(v4, v6, v5);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = objc_msgSend_motionBackgroundStyle(v14, v9, v10);
        v16 = v15 == self;

        if (v16)
        {
          objc_msgSend_referencedStyleWasUpdated_(v14, v9, self);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
    }

    while (v11);
  }
}

- (void)setOverridePropertyMap:(id)map
{
  mapCopy = map;
  v7.receiver = self;
  v7.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v7 setOverridePropertyMap:mapCopy];
  objc_msgSend_notifyClientsOfUpdate(self, v5, v6);
}

- (void)setPosterFrameData:(id)data
{
  dataCopy = data;
  objc_msgSend_willModify(self, v5, v6);
  objc_storeStrong(&self->_posterFrameData, data);
  objc_msgSend_notifyClientsOfUpdate(self, v7, v8);
}

- (TSUColor)referenceColor
{
  v3 = objc_msgSend_propertyMap(self, a2, v2);
  if (objc_msgSend_containsProperty_(v3, v4, 4108))
  {
    objc_msgSend_objectForProperty_(v3, v5, 4108);
    goto LABEL_3;
  }

  if (!objc_msgSend_containsProperty_(v3, v5, 4107))
  {
    if (objc_msgSend_containsProperty_(v3, v8, 4109))
    {
      objc_msgSend_objectForProperty_(v3, v13, 4109);
    }

    else if (objc_msgSend_containsProperty_(v3, v13, 4110))
    {
      objc_msgSend_objectForProperty_(v3, v14, 4110);
    }

    else if (objc_msgSend_containsProperty_(v3, v14, 4191))
    {
      objc_msgSend_objectForProperty_(v3, v15, 4191);
    }

    else
    {
      if (!objc_msgSend_containsProperty_(v3, v15, 4111))
      {
        v6 = objc_msgSend_blackColor(MEMORY[0x277D81180], v16, v17);
        goto LABEL_4;
      }

      objc_msgSend_objectForProperty_(v3, v16, 4111);
    }

    v6 = LABEL_3:;
LABEL_4:
    v7 = v6;
    goto LABEL_7;
  }

  v9 = objc_msgSend_objectForProperty_(v3, v8, 4107);
  v7 = objc_msgSend_firstColor(v9, v10, v11);

LABEL_7:

  return v7;
}

- (void)copyAuxiliaryInformationToMigratedStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_posterFrameData(v4, v5, v6);
  if (!v9)
  {
    v10 = objc_msgSend_propertyMap(self, v7, v8);
    v13 = objc_msgSend_allProperties(v10, v11, v12);
    hasEqualValues_forProperties = objc_msgSend_hasEqualValues_forProperties_(self, v14, v4, v13);

    if (!hasEqualValues_forProperties)
    {
      goto LABEL_5;
    }

    v9 = objc_msgSend_posterFrameData(self, v16, v17);
    objc_msgSend_setPosterFrameData_(v4, v18, v9);
  }

LABEL_5:
}

- (id)targetParentForStyleMappingByStyleMapper:(id)mapper intoStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v8 = objc_msgSend_valueForProperty_(self, v6, 4101);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNMotionBackgroundStyle targetParentForStyleMappingByStyleMapper:intoStylesheet:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 363, 0, "invalid nil value for '%{public}s'", "motionBackgroundName");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D679EC;
  aBlock[3] = &unk_27A698120;
  v16 = v8;
  v28 = v16;
  v17 = _Block_copy(aBlock);
  v20 = objc_msgSend_rootAncestor(self, v18, v19);
  v23 = objc_msgSend_styleIdentifier(v20, v21, v22);

  if (v23)
  {
    v25 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v24, v23);
    if (v17[2](v17, v25))
    {
      if (v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v25 = objc_msgSend_firstCascadedStylePassingTest_(stylesheetCopy, v24, v17);
LABEL_9:

  return v25;
}

- (id)makeAlternateFill
{
  v4 = objc_msgSend_referenceColor(self, a2, v2);
  v9 = objc_msgSend_posterFrameData(self, v5, v6);
  if (!v9 || (objc_msgSend_posterFrameData(self, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_null(MEMORY[0x277D80828], v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v10, v9, v10 == v13))
  {
    v27 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v7, v4);
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D802C0]);
    v17 = objc_msgSend_posterFrameData(self, v15, v16);
    v20 = objc_msgSend_owningDocument(self, v18, v19);
    v23 = objc_msgSend_show(v20, v21, v22);
    objc_msgSend_size(v23, v24, v25);
    v27 = objc_msgSend_initWithImageData_technique_tintColor_size_referenceColor_(v14, v26, v17, 3, 0, v4);
  }

  return v27;
}

+ (id)backgroundNameForStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_280A3BF88 != -1)
  {
    sub_275E59DE0();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A3BF80, v3, identifierCopy);
  if (!v5)
  {
    v6 = sub_275DC204C();
    v5 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Custom Dynamic Background", &stru_2884D8E20, @"Keynote");
  }

  return v5;
}

+ (id)axDescriptionForStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_280A3BF98 != -1)
  {
    sub_275E59DF4();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A3BF90, v3, identifierCopy);
  if (!v5)
  {
    v6 = sub_275DC204C();
    v5 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Customized moving background", &stru_2884D8E20, @"Keynote");
  }

  return v5;
}

+ (id)toolTipForStyle:(id)style
{
  v4 = objc_msgSend_styleIdentifier(style, a2, style);
  v6 = objc_msgSend_backgroundNameForStyleIdentifier_(self, v5, v4);

  return v6;
}

+ (id)nextUnusedStyleIdentifierInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v4 = 0;
  v5 = String() + 1;
  do
  {
    v6 = String();
    v7 = String();
    v8 = String();

    v10 = objc_msgSend_styleWithIdentifier_(stylesheetCopy, v9, v8);

    ++v5;
    v4 = v8;
  }

  while (v10);

  return v8;
}

- (void)loadMotionBackgroundStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v10 = objc_opt_class();
  v11 = *(archive + 4);
  if ((v11 & 0x80) != 0)
  {
    v12 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forProperty_(mapCopy, v13, v12, 4108);

    v11 = *(archive + 4);
  }

  if ((v11 & 0x100) != 0)
  {
    v14 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forProperty_(mapCopy, v15, v14, 4109);

    v11 = *(archive + 4);
  }

  if ((v11 & 0x200) != 0)
  {
    v16 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forProperty_(mapCopy, v17, v16, 4110);

    v11 = *(archive + 4);
  }

  if ((v11 & 0x800) != 0)
  {
    v18 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forProperty_(mapCopy, v19, v18, 4191);

    v11 = *(archive + 4);
  }

  if ((v11 & 0x400) != 0)
  {
    v20 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forProperty_(mapCopy, v21, v20, 4111);

    v11 = *(archive + 4);
  }

  if (v11)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend_tsp_initWithProtobufString_(v22, v23, *(archive + 5) & 0xFFFFFFFFFFFFFFFELL);
    v263 = v24;
    v25 = objc_opt_class();
    v27 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v26, &v263, v25, 4101);
    v28 = v263;

    if (v27)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v29, v28, 4101);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 2) != 0)
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v32 = objc_msgSend_tsp_initWithProtobufString_(v30, v31, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    v262 = v32;
    v33 = objc_opt_class();
    v35 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v34, &v262, v33, 4102);
    v36 = v262;

    if (v35)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v37, v36, 4102);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x40) != 0)
  {
    v38 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, *(archive + 11), unarchiverCopy);
    v261 = v38;
    v39 = objc_opt_class();
    v41 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v40, &v261, v39, 4107);
    v42 = v261;

    if (v41)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v43, v42, 4107);
    }
  }

  if ((*(archive + 21) & 8) != 0)
  {
    v260 = *(archive + 96);
    if (objc_msgSend_validateIntValue_forProperty_(v10, v9, &v260, 4112))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260), 4112);
    }
  }

  if ((*(archive + 17) & 0x10) != 0)
  {
    v44 = *(archive + 17);
    v260 = v44;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4118))
    {
      *&v45 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4118, v45);
    }
  }

  v46 = *(archive + 6);
  if ((v46 & 0x80000) != 0)
  {
    v47 = *(archive + 82);
    v260 = v47;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4119))
    {
      *&v48 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4119, v48);
    }

    v46 = *(archive + 6);
  }

  if ((v46 & 0x100000) != 0)
  {
    v49 = *(archive + 83);
    v260 = v49;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4120))
    {
      *&v50 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4120, v50);
    }

    v46 = *(archive + 6);
  }

  if ((v46 & 0x200000) != 0)
  {
    v51 = *(archive + 84);
    v260 = v51;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4121))
    {
      *&v52 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4121, v52);
    }

    v46 = *(archive + 6);
  }

  if ((v46 & 0x400000) != 0)
  {
    v53 = *(archive + 85);
    v260 = v53;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4122))
    {
      *&v54 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4122, v54);
    }

    v46 = *(archive + 6);
  }

  if ((v46 & 0x800000) != 0)
  {
    v55 = *(archive + 86);
    v260 = v55;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4123))
    {
      *&v56 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4123, v56);
    }

    v46 = *(archive + 6);
  }

  if ((v46 & 0x1000000) != 0)
  {
    v57 = *(archive + 87);
    v260 = v57;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4124))
    {
      *&v58 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4124, v58);
    }
  }

  if ((*(archive + 17) & 0x20) != 0)
  {
    v59 = *(archive + 18);
    v260 = v59;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4146))
    {
      *&v60 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4146, v60);
    }
  }

  if ((*(archive + 27) & 2) != 0)
  {
    v61 = *(archive + 88);
    v260 = v61;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4147))
    {
      *&v62 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4147, v62);
    }
  }

  v63 = *(archive + 4);
  if ((v63 & 0x4000) != 0)
  {
    v64 = *(archive + 19);
    v260 = v64;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4148))
    {
      *&v65 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4148, v65);
    }

    v63 = *(archive + 4);
  }

  if ((v63 & 0x8000) != 0)
  {
    v66 = *(archive + 20);
    v260 = v66;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4149))
    {
      *&v67 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4149, v67);
    }
  }

  v68 = *(archive + 6);
  if ((v68 & 0x10000000) != 0)
  {
    v69 = *(archive + 91);
    v260 = v69;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4150))
    {
      *&v70 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4150, v70);
    }

    v68 = *(archive + 6);
  }

  if ((v68 & 0x20000000) != 0)
  {
    v71 = *(archive + 92);
    v260 = v71;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4151))
    {
      *&v72 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4151, v72);
    }

    v68 = *(archive + 6);
  }

  if ((v68 & 0x40000000) != 0)
  {
    v73 = *(archive + 93);
    v260 = v73;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4152))
    {
      *&v74 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4152, v74);
    }

    v68 = *(archive + 6);
  }

  if (v68 < 0)
  {
    v75 = *(archive + 94);
    v260 = v75;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4153))
    {
      *&v76 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4153, v76);
    }
  }

  v77 = *(archive + 4);
  if ((v77 & 0x10000) != 0)
  {
    v78 = *(archive + 21);
    v260 = v78;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4156))
    {
      *&v79 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4156, v79);
    }

    v77 = *(archive + 4);
  }

  if ((v77 & 0x20000) != 0)
  {
    LODWORD(v260) = *(archive + 22);
    if (objc_msgSend_validateIntValue_forProperty_(v10, v9, &v260, 4177))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260), 4177);
    }

    v77 = *(archive + 4);
  }

  if ((v77 & 0x40000) != 0)
  {
    v80 = *(archive + 23);
    v260 = v80;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4176))
    {
      *&v81 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4176, v81);
    }
  }

  if ((*(archive + 21) & 0x10) != 0)
  {
    LODWORD(v260) = *(archive + 388);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4178))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4178);
    }
  }

  v82 = *(archive + 4);
  if ((v82 & 4) != 0)
  {
    v83 = objc_alloc(MEMORY[0x277CCACA8]);
    v85 = objc_msgSend_tsp_initWithProtobufString_(v83, v84, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    v259 = v85;
    v86 = objc_opt_class();
    v88 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v87, &v259, v86, 4103);
    v89 = v259;

    if (v88)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v90, v89, 4103);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 8) != 0)
  {
    v91 = objc_alloc(MEMORY[0x277CCACA8]);
    v93 = objc_msgSend_tsp_initWithProtobufString_(v91, v92, *(archive + 8) & 0xFFFFFFFFFFFFFFFELL);
    v258 = v93;
    v94 = objc_opt_class();
    v96 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v95, &v258, v94, 4104);
    v97 = v258;

    if (v96)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v98, v97, 4104);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x10) != 0)
  {
    v99 = objc_alloc(MEMORY[0x277CCACA8]);
    v101 = objc_msgSend_tsp_initWithProtobufString_(v99, v100, *(archive + 9) & 0xFFFFFFFFFFFFFFFELL);
    v257 = v101;
    v102 = objc_opt_class();
    v104 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v103, &v257, v102, 4105);
    v105 = v257;

    if (v104)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v106, v105, 4105);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x20) != 0)
  {
    v107 = objc_alloc(MEMORY[0x277CCACA8]);
    v109 = objc_msgSend_tsp_initWithProtobufString_(v107, v108, *(archive + 10) & 0xFFFFFFFFFFFFFFFELL);
    v256 = v109;
    v110 = objc_opt_class();
    v112 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v111, &v256, v110, 4106);
    v113 = v256;

    if (v112)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v114, v113, 4106);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x80000) != 0)
  {
    v115 = *(archive + 24);
    v260 = v115;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4113))
    {
      *&v116 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4113, v116);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x100000) != 0)
  {
    v117 = *(archive + 25);
    v260 = v117;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4114))
    {
      *&v118 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4114, v118);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x200000) != 0)
  {
    v119 = *(archive + 26);
    v260 = v119;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4115))
    {
      *&v120 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4115, v120);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x400000) != 0)
  {
    v121 = *(archive + 27);
    v260 = v121;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4116))
    {
      *&v122 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4116, v122);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x800000) != 0)
  {
    v123 = *(archive + 28);
    v260 = v123;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4117))
    {
      *&v124 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4117, v124);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x1000000) != 0)
  {
    v125 = *(archive + 29);
    v260 = v125;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4125))
    {
      *&v126 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4125, v126);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x2000000) != 0)
  {
    v127 = *(archive + 30);
    v260 = v127;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4126))
    {
      *&v128 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4126, v128);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x4000000) != 0)
  {
    v129 = *(archive + 31);
    v260 = v129;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4127))
    {
      *&v130 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4127, v130);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x8000000) != 0)
  {
    v131 = *(archive + 32);
    v260 = v131;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4128))
    {
      *&v132 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4128, v132);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x10000000) != 0)
  {
    v133 = *(archive + 33);
    v260 = v133;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4129))
    {
      *&v134 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4129, v134);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x20000000) != 0)
  {
    v135 = *(archive + 34);
    v260 = v135;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4130))
    {
      *&v136 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4130, v136);
    }

    v82 = *(archive + 4);
  }

  if ((v82 & 0x40000000) != 0)
  {
    v137 = *(archive + 35);
    v260 = v137;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4131))
    {
      *&v138 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4131, v138);
    }

    v82 = *(archive + 4);
  }

  if (v82 < 0)
  {
    v139 = *(archive + 36);
    v260 = v139;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4132))
    {
      *&v140 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4132, v140);
    }
  }

  v141 = *(archive + 5);
  if (v141)
  {
    v142 = *(archive + 37);
    v260 = v142;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4133))
    {
      *&v143 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4133, v143);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 2) != 0)
  {
    v144 = *(archive + 38);
    v260 = v144;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4134))
    {
      *&v145 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4134, v145);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 4) != 0)
  {
    v146 = *(archive + 39);
    v260 = v146;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4135))
    {
      *&v147 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4135, v147);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 8) != 0)
  {
    v148 = *(archive + 40);
    v260 = v148;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4136))
    {
      *&v149 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4136, v149);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x10) != 0)
  {
    v150 = *(archive + 41);
    v260 = v150;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4137))
    {
      *&v151 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4137, v151);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x20) != 0)
  {
    v152 = *(archive + 42);
    v260 = v152;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4138))
    {
      *&v153 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4138, v153);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x40) != 0)
  {
    v154 = *(archive + 43);
    v260 = v154;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4139))
    {
      *&v155 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4139, v155);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x80) != 0)
  {
    v156 = *(archive + 44);
    v260 = v156;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4140))
    {
      *&v157 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4140, v157);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x100) != 0)
  {
    v158 = *(archive + 45);
    v260 = v158;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4141))
    {
      *&v159 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4141, v159);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x200) != 0)
  {
    v160 = *(archive + 46);
    v260 = v160;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4142))
    {
      *&v161 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4142, v161);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x400) != 0)
  {
    v162 = *(archive + 47);
    v260 = v162;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4143))
    {
      *&v163 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4143, v163);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x10000) != 0)
  {
    v164 = *(archive + 49);
    v260 = v164;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4144))
    {
      *&v165 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4144, v165);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x20000) != 0)
  {
    v166 = *(archive + 50);
    v260 = v166;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4145))
    {
      *&v167 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4145, v167);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x40000) != 0)
  {
    v168 = *(archive + 51);
    v260 = v168;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4154))
    {
      *&v169 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4154, v169);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x80000) != 0)
  {
    v170 = *(archive + 52);
    v260 = v170;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4155))
    {
      *&v171 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4155, v171);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x100000) != 0)
  {
    v172 = *(archive + 53);
    v260 = v172;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4157))
    {
      *&v173 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4157, v173);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x200000) != 0)
  {
    v174 = *(archive + 54);
    v260 = v174;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4158))
    {
      *&v175 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4158, v175);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x400000) != 0)
  {
    v176 = *(archive + 55);
    v260 = v176;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4159))
    {
      *&v177 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4159, v177);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x800000) != 0)
  {
    v178 = *(archive + 56);
    v260 = v178;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4160))
    {
      *&v179 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4160, v179);
    }

    v141 = *(archive + 5);
  }

  if ((v141 & 0x1000000) != 0)
  {
    v180 = *(archive + 57);
    v260 = v180;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4161))
    {
      *&v181 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4161, v181);
    }
  }

  if ((*(archive + 27) & 4) != 0)
  {
    v182 = *(archive + 89);
    v260 = v182;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4162))
    {
      *&v183 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4162, v183);
    }
  }

  v184 = *(archive + 5);
  if ((v184 & 0x2000000) != 0)
  {
    v185 = *(archive + 58);
    v260 = v185;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4163))
    {
      *&v186 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4163, v186);
    }

    v184 = *(archive + 5);
  }

  if ((v184 & 0x4000000) != 0)
  {
    v187 = *(archive + 59);
    v260 = v187;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4164))
    {
      *&v188 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4164, v188);
    }

    v184 = *(archive + 5);
  }

  if ((v184 & 0x8000000) != 0)
  {
    v189 = *(archive + 60);
    v260 = v189;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4165))
    {
      *&v190 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4165, v190);
    }

    v184 = *(archive + 5);
  }

  if ((v184 & 0x10000000) != 0)
  {
    v191 = *(archive + 61);
    v260 = v191;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4166))
    {
      *&v192 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4166, v192);
    }

    v184 = *(archive + 5);
  }

  if ((v184 & 0x20000000) != 0)
  {
    v193 = *(archive + 62);
    v260 = v193;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4167))
    {
      *&v194 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4167, v194);
    }

    v184 = *(archive + 5);
  }

  if ((v184 & 0x40000000) != 0)
  {
    v195 = *(archive + 63);
    v260 = v195;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4168))
    {
      *&v196 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4168, v196);
    }

    v184 = *(archive + 5);
  }

  if (v184 < 0)
  {
    v197 = *(archive + 64);
    v260 = v197;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4169))
    {
      *&v198 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4169, v198);
    }
  }

  v199 = *(archive + 6);
  if (v199)
  {
    v200 = *(archive + 65);
    v260 = v200;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4170))
    {
      *&v201 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4170, v201);
    }

    v199 = *(archive + 6);
  }

  if ((v199 & 2) != 0)
  {
    v202 = *(archive + 66);
    v260 = v202;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4171))
    {
      *&v203 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4171, v203);
    }

    v199 = *(archive + 6);
  }

  if ((v199 & 4) != 0)
  {
    v204 = *(archive + 67);
    v260 = v204;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4172))
    {
      *&v205 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4172, v205);
    }

    v199 = *(archive + 6);
  }

  if ((v199 & 8) != 0)
  {
    v206 = *(archive + 68);
    v260 = v206;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4173))
    {
      *&v207 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4173, v207);
    }

    v199 = *(archive + 6);
  }

  if ((v199 & 0x10) != 0)
  {
    v208 = *(archive + 69);
    v260 = v208;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4174))
    {
      *&v209 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4174, v209);
    }

    v199 = *(archive + 6);
  }

  if ((v199 & 0x20) != 0)
  {
    v210 = *(archive + 70);
    v260 = v210;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4175))
    {
      *&v211 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4175, v211);
    }
  }

  v212 = *(archive + 5);
  if ((v212 & 0x2000) != 0)
  {
    LODWORD(v260) = *(archive + 389);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4179))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4179);
    }

    v212 = *(archive + 5);
  }

  if ((v212 & 0x4000) != 0)
  {
    LODWORD(v260) = *(archive + 390);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4180))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4180);
    }

    v212 = *(archive + 5);
  }

  if ((v212 & 0x8000) != 0)
  {
    LODWORD(v260) = *(archive + 391);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4181))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4181);
    }
  }

  v213 = *(archive + 6);
  if ((v213 & 0x40) != 0)
  {
    v260 = *(archive + 142);
    if (objc_msgSend_validateIntValue_forProperty_(v10, v9, &v260, 4182))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260), 4182);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x80) != 0)
  {
    LODWORD(v260) = *(archive + 572);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4183))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4183);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x100) != 0)
  {
    LODWORD(v260) = *(archive + 573);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v260, 4184))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260) != 0, 4184);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x200) != 0)
  {
    v214 = *(archive + 72);
    v260 = v214;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4185))
    {
      *&v215 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4185, v215);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x400) != 0)
  {
    v216 = *(archive + 73);
    v260 = v216;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4186))
    {
      *&v217 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4186, v217);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x800) != 0)
  {
    v218 = *(archive + 74);
    v260 = v218;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4187))
    {
      *&v219 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4187, v219);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x1000) != 0)
  {
    v220 = *(archive + 75);
    v260 = v220;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4188))
    {
      *&v221 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4188, v221);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x2000) != 0)
  {
    v222 = *(archive + 76);
    v260 = v222;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4189))
    {
      *&v223 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4189, v223);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x4000) != 0)
  {
    v224 = *(archive + 77);
    v260 = v224;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4190))
    {
      *&v225 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4190, v225);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x8000) != 0)
  {
    v226 = *(archive + 78);
    v260 = v226;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4192))
    {
      *&v227 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4192, v227);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x10000) != 0)
  {
    v228 = *(archive + 79);
    v260 = v228;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4193))
    {
      *&v229 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4193, v229);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x20000) != 0)
  {
    v230 = *(archive + 80);
    v260 = v230;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4194))
    {
      *&v231 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4194, v231);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x8000000) != 0)
  {
    v232 = *(archive + 90);
    v260 = v232;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4195))
    {
      *&v233 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4195, v233);
    }

    v213 = *(archive + 6);
  }

  if ((v213 & 0x40000) != 0)
  {
    v234 = *(archive + 81);
    v260 = v234;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4196))
    {
      *&v235 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4196, v235);
    }
  }

  v236 = *(archive + 7);
  if ((v236 & 0x20) != 0)
  {
    v260 = *(archive + 200);
    if (objc_msgSend_validateIntValue_forProperty_(v10, v9, &v260, 4197))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, LODWORD(v260), 4197);
    }

    v236 = *(archive + 7);
  }

  if (v236)
  {
    v237 = *(archive + 95);
    v260 = v237;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4198))
    {
      *&v238 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4198, v238);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 2) != 0)
  {
    v239 = *(archive + 96);
    v260 = v239;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4199))
    {
      *&v240 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4199, v240);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 4) != 0)
  {
    v241 = *(archive + 97);
    v260 = v241;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4200))
    {
      *&v242 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4200, v242);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 8) != 0)
  {
    v243 = *(archive + 98);
    v260 = v243;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4201))
    {
      *&v244 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4201, v244);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x10) != 0)
  {
    v245 = *(archive + 99);
    v260 = v245;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4202))
    {
      *&v246 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4202, v246);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x80) != 0)
  {
    v247 = *(archive + 101);
    v260 = v247;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4203))
    {
      *&v248 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4203, v248);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x100) != 0)
  {
    v249 = *(archive + 102);
    v260 = v249;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4204))
    {
      *&v250 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4204, v250);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x200) != 0)
  {
    v251 = *(archive + 103);
    v260 = v251;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4205))
    {
      *&v252 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4205, v252);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x400) != 0)
  {
    v253 = *(archive + 104);
    v260 = v253;
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v9, &v260, 4206))
    {
      *&v254 = v260;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 4206, v254);
    }

    v236 = *(archive + 7);
  }

  if ((v236 & 0x40) != 0)
  {
    v260 = *(archive + 201);
    if (objc_msgSend_validateIntValue_forProperty_(v10, v9, &v260, 4207))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v255, LODWORD(v260), 4207);
    }
  }
}

- (void)saveMotionBackgroundStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_opt_class();
  if (objc_msgSend_containsProperty_(mapCopy, v10, 4108))
  {
    v12 = objc_msgSend_objectForProperty_(mapCopy, v11, 4108);
    *(archive + 4) |= 0x80u;
    if (!*(archive + 12))
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 12) = MEMORY[0x277C8F010](v13);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_containsProperty_(mapCopy, v11, 4109))
  {
    v15 = objc_msgSend_objectForProperty_(mapCopy, v14, 4109);
    *(archive + 4) |= 0x100u;
    if (!*(archive + 13))
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 13) = MEMORY[0x277C8F010](v16);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_containsProperty_(mapCopy, v14, 4110))
  {
    v18 = objc_msgSend_objectForProperty_(mapCopy, v17, 4110);
    *(archive + 4) |= 0x200u;
    if (!*(archive + 14))
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 14) = MEMORY[0x277C8F010](v19);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_containsProperty_(mapCopy, v17, 4191))
  {
    v21 = objc_msgSend_objectForProperty_(mapCopy, v20, 4191);
    *(archive + 4) |= 0x800u;
    if (!*(archive + 16))
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 16) = MEMORY[0x277C8F010](v22);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_containsProperty_(mapCopy, v20, 4111))
  {
    v24 = objc_msgSend_objectForProperty_(mapCopy, v23, 4111);
    *(archive + 4) |= 0x400u;
    if (!*(archive + 15))
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 15) = MEMORY[0x277C8F010](v25);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_containsProperty_(mapCopy, v23, 4101))
  {
    v27 = objc_msgSend_objectForProperty_(mapCopy, v26, 4101);
    v459 = v27;
    v28 = objc_opt_class();
    v30 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v29, &v459, v28, 4101);
    v31 = v459;

    if (v30)
    {
      *(archive + 4) |= 1u;
      v32 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v31, v33, v32);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v26, 4102))
  {
    v35 = objc_msgSend_objectForProperty_(mapCopy, v34, 4102);
    v458 = v35;
    v36 = objc_opt_class();
    v38 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v37, &v458, v36, 4102);
    v39 = v458;

    if (v38)
    {
      *(archive + 4) |= 2u;
      v40 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v39, v41, v40);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v34, 4107))
  {
    v43 = objc_msgSend_objectForProperty_(mapCopy, v42, 4107);
    v457 = v43;
    v44 = objc_opt_class();
    v46 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v45, &v457, v44, 4107);
    v47 = v457;

    if (v46)
    {
      *(archive + 4) |= 0x40u;
      v49 = *(archive + 11);
      if (!v49)
      {
        v50 = *(archive + 1);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = MEMORY[0x277C8EF70](v50);
        *(archive + 11) = v49;
      }

      objc_msgSend_saveToArchive_archiver_(v47, v48, v49, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v42, 4112))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v51, 4112);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v52, &v456, 4112))
    {
      v53 = v456;
      *(archive + 5) |= 0x800u;
      *(archive + 96) = v53;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v51, 4118))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v54, 4118);
    v456 = v55;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v56, &v456, 4118))
    {
      v57 = v456;
      *(archive + 4) |= 0x1000u;
      *(archive + 17) = v57;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v54, 4119))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v58, 4119);
    v456 = v59;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v60, &v456, 4119))
    {
      v61 = v456;
      *(archive + 6) |= 0x80000u;
      *(archive + 82) = v61;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v58, 4120))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v62, 4120);
    v456 = v63;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v64, &v456, 4120))
    {
      v65 = v456;
      *(archive + 6) |= 0x100000u;
      *(archive + 83) = v65;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v62, 4121))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v66, 4121);
    v456 = v67;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v68, &v456, 4121))
    {
      v69 = v456;
      *(archive + 6) |= 0x200000u;
      *(archive + 84) = v69;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v66, 4122))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v70, 4122);
    v456 = v71;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v72, &v456, 4122))
    {
      v73 = v456;
      *(archive + 6) |= 0x400000u;
      *(archive + 85) = v73;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v70, 4123))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v74, 4123);
    v456 = v75;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v76, &v456, 4123))
    {
      v77 = v456;
      *(archive + 6) |= 0x800000u;
      *(archive + 86) = v77;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v74, 4124))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v78, 4124);
    v456 = v79;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v80, &v456, 4124))
    {
      v81 = v456;
      *(archive + 6) |= 0x1000000u;
      *(archive + 87) = v81;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v78, 4146))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v82, 4146);
    v456 = v83;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v84, &v456, 4146))
    {
      v85 = v456;
      *(archive + 4) |= 0x2000u;
      *(archive + 18) = v85;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v82, 4147))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v86, 4147);
    v456 = v87;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v88, &v456, 4147))
    {
      v89 = v456;
      *(archive + 6) |= 0x2000000u;
      *(archive + 88) = v89;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v86, 4148))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v90, 4148);
    v456 = v91;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v92, &v456, 4148))
    {
      v93 = v456;
      *(archive + 4) |= 0x4000u;
      *(archive + 19) = v93;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v90, 4149))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v94, 4149);
    v456 = v95;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v96, &v456, 4149))
    {
      v97 = v456;
      *(archive + 4) |= 0x8000u;
      *(archive + 20) = v97;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v94, 4150))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v98, 4150);
    v456 = v99;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v100, &v456, 4150))
    {
      v101 = v456;
      *(archive + 6) |= 0x10000000u;
      *(archive + 91) = v101;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v98, 4151))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v102, 4151);
    v456 = v103;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v104, &v456, 4151))
    {
      v105 = v456;
      *(archive + 6) |= 0x20000000u;
      *(archive + 92) = v105;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v102, 4152))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v106, 4152);
    v456 = v107;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v108, &v456, 4152))
    {
      v109 = v456;
      *(archive + 6) |= 0x40000000u;
      *(archive + 93) = v109;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v106, 4153))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v110, 4153);
    v456 = v111;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v112, &v456, 4153))
    {
      v113 = v456;
      *(archive + 6) |= 0x80000000;
      *(archive + 94) = v113;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v110, 4156))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v114, 4156);
    v456 = v115;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v116, &v456, 4156))
    {
      v117 = v456;
      *(archive + 4) |= 0x10000u;
      *(archive + 21) = v117;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v114, 4177))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v118, 4177);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v119, &v456, 4177))
    {
      v120 = SLODWORD(v456);
      *(archive + 4) |= 0x20000u;
      *(archive + 22) = v120;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v118, 4176))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v121, 4176);
    v456 = v122;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v123, &v456, 4176))
    {
      v124 = v456;
      *(archive + 4) |= 0x40000u;
      *(archive + 23) = v124;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v121, 4178))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v125, 4178);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v126, &v456, 4178))
    {
      v127 = LODWORD(v456) != 0;
      *(archive + 5) |= 0x1000u;
      *(archive + 388) = v127;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v125, 4103))
  {
    v129 = objc_msgSend_objectForProperty_(mapCopy, v128, 4103);
    v455 = v129;
    v130 = objc_opt_class();
    v132 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v131, &v455, v130, 4103);
    v133 = v455;

    if (v132)
    {
      *(archive + 4) |= 4u;
      v134 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v133, v135, v134);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v128, 4104))
  {
    v137 = objc_msgSend_objectForProperty_(mapCopy, v136, 4104);
    v454 = v137;
    v138 = objc_opt_class();
    v140 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v139, &v454, v138, 4104);
    v141 = v454;

    if (v140)
    {
      *(archive + 4) |= 8u;
      v142 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v141, v143, v142);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v136, 4105))
  {
    v145 = objc_msgSend_objectForProperty_(mapCopy, v144, 4105);
    v453 = v145;
    v146 = objc_opt_class();
    v148 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v147, &v453, v146, 4105);
    v149 = v453;

    if (v148)
    {
      *(archive + 4) |= 0x10u;
      v150 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v149, v151, v150);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v144, 4106))
  {
    v153 = objc_msgSend_objectForProperty_(mapCopy, v152, 4106);
    v452 = v153;
    v154 = objc_opt_class();
    v156 = objc_msgSend_validateObjectValue_withClass_forProperty_(v9, v155, &v452, v154, 4106);
    v157 = v452;

    if (v156)
    {
      *(archive + 4) |= 0x20u;
      v158 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v157, v159, v158);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v152, 4113, v452))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v160, 4113);
    v456 = v161;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v162, &v456, 4113))
    {
      v163 = v456;
      *(archive + 4) |= 0x80000u;
      *(archive + 24) = v163;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v160, 4114))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v164, 4114);
    v456 = v165;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v166, &v456, 4114))
    {
      v167 = v456;
      *(archive + 4) |= 0x100000u;
      *(archive + 25) = v167;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v164, 4115))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v168, 4115);
    v456 = v169;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v170, &v456, 4115))
    {
      v171 = v456;
      *(archive + 4) |= 0x200000u;
      *(archive + 26) = v171;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v168, 4116))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v172, 4116);
    v456 = v173;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v174, &v456, 4116))
    {
      v175 = v456;
      *(archive + 4) |= 0x400000u;
      *(archive + 27) = v175;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v172, 4117))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v176, 4117);
    v456 = v177;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v178, &v456, 4117))
    {
      v179 = v456;
      *(archive + 4) |= 0x800000u;
      *(archive + 28) = v179;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v176, 4125))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v180, 4125);
    v456 = v181;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v182, &v456, 4125))
    {
      v183 = v456;
      *(archive + 4) |= 0x1000000u;
      *(archive + 29) = v183;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v180, 4126))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v184, 4126);
    v456 = v185;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v186, &v456, 4126))
    {
      v187 = v456;
      *(archive + 4) |= 0x2000000u;
      *(archive + 30) = v187;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v184, 4127))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v188, 4127);
    v456 = v189;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v190, &v456, 4127))
    {
      v191 = v456;
      *(archive + 4) |= 0x4000000u;
      *(archive + 31) = v191;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v188, 4128))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v192, 4128);
    v456 = v193;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v194, &v456, 4128))
    {
      v195 = v456;
      *(archive + 4) |= 0x8000000u;
      *(archive + 32) = v195;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v192, 4129))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v196, 4129);
    v456 = v197;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v198, &v456, 4129))
    {
      v199 = v456;
      *(archive + 4) |= 0x10000000u;
      *(archive + 33) = v199;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v196, 4130))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v200, 4130);
    v456 = v201;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v202, &v456, 4130))
    {
      v203 = v456;
      *(archive + 4) |= 0x20000000u;
      *(archive + 34) = v203;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v200, 4131))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v204, 4131);
    v456 = v205;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v206, &v456, 4131))
    {
      v207 = v456;
      *(archive + 4) |= 0x40000000u;
      *(archive + 35) = v207;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v204, 4132))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v208, 4132);
    v456 = v209;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v210, &v456, 4132))
    {
      v211 = v456;
      *(archive + 4) |= 0x80000000;
      *(archive + 36) = v211;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v208, 4133))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v212, 4133);
    v456 = v213;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v214, &v456, 4133))
    {
      v215 = v456;
      *(archive + 5) |= 1u;
      *(archive + 37) = v215;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v212, 4134))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v216, 4134);
    v456 = v217;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v218, &v456, 4134))
    {
      v219 = v456;
      *(archive + 5) |= 2u;
      *(archive + 38) = v219;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v216, 4135))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v220, 4135);
    v456 = v221;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v222, &v456, 4135))
    {
      v223 = v456;
      *(archive + 5) |= 4u;
      *(archive + 39) = v223;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v220, 4136))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v224, 4136);
    v456 = v225;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v226, &v456, 4136))
    {
      v227 = v456;
      *(archive + 5) |= 8u;
      *(archive + 40) = v227;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v224, 4137))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v228, 4137);
    v456 = v229;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v230, &v456, 4137))
    {
      v231 = v456;
      *(archive + 5) |= 0x10u;
      *(archive + 41) = v231;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v228, 4138))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v232, 4138);
    v456 = v233;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v234, &v456, 4138))
    {
      v235 = v456;
      *(archive + 5) |= 0x20u;
      *(archive + 42) = v235;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v232, 4139))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v236, 4139);
    v456 = v237;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v238, &v456, 4139))
    {
      v239 = v456;
      *(archive + 5) |= 0x40u;
      *(archive + 43) = v239;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v236, 4140))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v240, 4140);
    v456 = v241;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v242, &v456, 4140))
    {
      v243 = v456;
      *(archive + 5) |= 0x80u;
      *(archive + 44) = v243;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v240, 4141))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v244, 4141);
    v456 = v245;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v246, &v456, 4141))
    {
      v247 = v456;
      *(archive + 5) |= 0x100u;
      *(archive + 45) = v247;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v244, 4142))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v248, 4142);
    v456 = v249;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v250, &v456, 4142))
    {
      v251 = v456;
      *(archive + 5) |= 0x200u;
      *(archive + 46) = v251;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v248, 4143))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v252, 4143);
    v456 = v253;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v254, &v456, 4143))
    {
      v255 = v456;
      *(archive + 5) |= 0x400u;
      *(archive + 47) = v255;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v252, 4144))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v256, 4144);
    v456 = v257;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v258, &v456, 4144))
    {
      v259 = v456;
      *(archive + 5) |= 0x10000u;
      *(archive + 49) = v259;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v256, 4145))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v260, 4145);
    v456 = v261;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v262, &v456, 4145))
    {
      v263 = v456;
      *(archive + 5) |= 0x20000u;
      *(archive + 50) = v263;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v260, 4154))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v264, 4154);
    v456 = v265;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v266, &v456, 4154))
    {
      v267 = v456;
      *(archive + 5) |= 0x40000u;
      *(archive + 51) = v267;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v264, 4155))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v268, 4155);
    v456 = v269;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v270, &v456, 4155))
    {
      v271 = v456;
      *(archive + 5) |= 0x80000u;
      *(archive + 52) = v271;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v268, 4157))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v272, 4157);
    v456 = v273;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v274, &v456, 4157))
    {
      v275 = v456;
      *(archive + 5) |= 0x100000u;
      *(archive + 53) = v275;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v272, 4158))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v276, 4158);
    v456 = v277;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v278, &v456, 4158))
    {
      v279 = v456;
      *(archive + 5) |= 0x200000u;
      *(archive + 54) = v279;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v276, 4159))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v280, 4159);
    v456 = v281;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v282, &v456, 4159))
    {
      v283 = v456;
      *(archive + 5) |= 0x400000u;
      *(archive + 55) = v283;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v280, 4160))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v284, 4160);
    v456 = v285;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v286, &v456, 4160))
    {
      v287 = v456;
      *(archive + 5) |= 0x800000u;
      *(archive + 56) = v287;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v284, 4161))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v288, 4161);
    v456 = v289;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v290, &v456, 4161))
    {
      v291 = v456;
      *(archive + 5) |= 0x1000000u;
      *(archive + 57) = v291;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v288, 4162))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v292, 4162);
    v456 = v293;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v294, &v456, 4162))
    {
      v295 = v456;
      *(archive + 6) |= 0x4000000u;
      *(archive + 89) = v295;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v292, 4163))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v296, 4163);
    v456 = v297;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v298, &v456, 4163))
    {
      v299 = v456;
      *(archive + 5) |= 0x2000000u;
      *(archive + 58) = v299;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v296, 4164))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v300, 4164);
    v456 = v301;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v302, &v456, 4164))
    {
      v303 = v456;
      *(archive + 5) |= 0x4000000u;
      *(archive + 59) = v303;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v300, 4165))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v304, 4165);
    v456 = v305;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v306, &v456, 4165))
    {
      v307 = v456;
      *(archive + 5) |= 0x8000000u;
      *(archive + 60) = v307;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v304, 4166))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v308, 4166);
    v456 = v309;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v310, &v456, 4166))
    {
      v311 = v456;
      *(archive + 5) |= 0x10000000u;
      *(archive + 61) = v311;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v308, 4167))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v312, 4167);
    v456 = v313;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v314, &v456, 4167))
    {
      v315 = v456;
      *(archive + 5) |= 0x20000000u;
      *(archive + 62) = v315;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v312, 4168))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v316, 4168);
    v456 = v317;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v318, &v456, 4168))
    {
      v319 = v456;
      *(archive + 5) |= 0x40000000u;
      *(archive + 63) = v319;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v316, 4169))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v320, 4169);
    v456 = v321;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v322, &v456, 4169))
    {
      v323 = v456;
      *(archive + 5) |= 0x80000000;
      *(archive + 64) = v323;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v320, 4170))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v324, 4170);
    v456 = v325;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v326, &v456, 4170))
    {
      v327 = v456;
      *(archive + 6) |= 1u;
      *(archive + 65) = v327;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v324, 4171))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v328, 4171);
    v456 = v329;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v330, &v456, 4171))
    {
      v331 = v456;
      *(archive + 6) |= 2u;
      *(archive + 66) = v331;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v328, 4172))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v332, 4172);
    v456 = v333;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v334, &v456, 4172))
    {
      v335 = v456;
      *(archive + 6) |= 4u;
      *(archive + 67) = v335;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v332, 4173))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v336, 4173);
    v456 = v337;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v338, &v456, 4173))
    {
      v339 = v456;
      *(archive + 6) |= 8u;
      *(archive + 68) = v339;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v336, 4174))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v340, 4174);
    v456 = v341;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v342, &v456, 4174))
    {
      v343 = v456;
      *(archive + 6) |= 0x10u;
      *(archive + 69) = v343;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v340, 4175))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v344, 4175);
    v456 = v345;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v346, &v456, 4175))
    {
      v347 = v456;
      *(archive + 6) |= 0x20u;
      *(archive + 70) = v347;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v344, 4179))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v348, 4179);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v349, &v456, 4179))
    {
      v350 = LODWORD(v456) != 0;
      *(archive + 5) |= 0x2000u;
      *(archive + 389) = v350;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v348, 4180))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v351, 4180);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v352, &v456, 4180))
    {
      v353 = LODWORD(v456) != 0;
      *(archive + 5) |= 0x4000u;
      *(archive + 390) = v353;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v351, 4181))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v354, 4181);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v355, &v456, 4181))
    {
      v356 = LODWORD(v456) != 0;
      *(archive + 5) |= 0x8000u;
      *(archive + 391) = v356;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v354, 4182))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v357, 4182);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v358, &v456, 4182))
    {
      v359 = v456;
      *(archive + 6) |= 0x40u;
      *(archive + 142) = v359;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v357, 4183))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v360, 4183);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v361, &v456, 4183))
    {
      v362 = LODWORD(v456) != 0;
      *(archive + 6) |= 0x80u;
      *(archive + 572) = v362;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v360, 4184))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v363, 4184);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v364, &v456, 4184))
    {
      v365 = LODWORD(v456) != 0;
      *(archive + 6) |= 0x100u;
      *(archive + 573) = v365;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v363, 4185))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v366, 4185);
    v456 = v367;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v368, &v456, 4185))
    {
      v369 = v456;
      *(archive + 6) |= 0x200u;
      *(archive + 72) = v369;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v366, 4186))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v370, 4186);
    v456 = v371;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v372, &v456, 4186))
    {
      v373 = v456;
      *(archive + 6) |= 0x400u;
      *(archive + 73) = v373;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v370, 4187))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v374, 4187);
    v456 = v375;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v376, &v456, 4187))
    {
      v377 = v456;
      *(archive + 6) |= 0x800u;
      *(archive + 74) = v377;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v374, 4188))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v378, 4188);
    v456 = v379;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v380, &v456, 4188))
    {
      v381 = v456;
      *(archive + 6) |= 0x1000u;
      *(archive + 75) = v381;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v378, 4189))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v382, 4189);
    v456 = v383;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v384, &v456, 4189))
    {
      v385 = v456;
      *(archive + 6) |= 0x2000u;
      *(archive + 76) = v385;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v382, 4190))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v386, 4190);
    v456 = v387;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v388, &v456, 4190))
    {
      v389 = v456;
      *(archive + 6) |= 0x4000u;
      *(archive + 77) = v389;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v386, 4192))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v390, 4192);
    v456 = v391;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v392, &v456, 4192))
    {
      v393 = v456;
      *(archive + 6) |= 0x8000u;
      *(archive + 78) = v393;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v390, 4193))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v394, 4193);
    v456 = v395;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v396, &v456, 4193))
    {
      v397 = v456;
      *(archive + 6) |= 0x10000u;
      *(archive + 79) = v397;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v394, 4194))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v398, 4194);
    v456 = v399;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v400, &v456, 4194))
    {
      v401 = v456;
      *(archive + 6) |= 0x20000u;
      *(archive + 80) = v401;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v398, 4195))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v402, 4195);
    v456 = v403;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v404, &v456, 4195))
    {
      v405 = v456;
      *(archive + 6) |= 0x8000000u;
      *(archive + 90) = v405;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v402, 4196))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v406, 4196);
    v456 = v407;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v408, &v456, 4196))
    {
      v409 = v456;
      *(archive + 6) |= 0x40000u;
      *(archive + 81) = v409;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v406, 4197))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v410, 4197);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v411, &v456, 4197))
    {
      v412 = v456;
      *(archive + 7) |= 0x20u;
      *(archive + 200) = v412;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v410, 4198))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v413, 4198);
    v456 = v414;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v415, &v456, 4198))
    {
      v416 = v456;
      *(archive + 7) |= 1u;
      *(archive + 95) = v416;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v413, 4199))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v417, 4199);
    v456 = v418;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v419, &v456, 4199))
    {
      v420 = v456;
      *(archive + 7) |= 2u;
      *(archive + 96) = v420;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v417, 4200))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v421, 4200);
    v456 = v422;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v423, &v456, 4200))
    {
      v424 = v456;
      *(archive + 7) |= 4u;
      *(archive + 97) = v424;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v421, 4201))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v425, 4201);
    v456 = v426;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v427, &v456, 4201))
    {
      v428 = v456;
      *(archive + 7) |= 8u;
      *(archive + 98) = v428;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v425, 4202))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v429, 4202);
    v456 = v430;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v431, &v456, 4202))
    {
      v432 = v456;
      *(archive + 7) |= 0x10u;
      *(archive + 99) = v432;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v429, 4203))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v433, 4203);
    v456 = v434;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v435, &v456, 4203))
    {
      v436 = v456;
      *(archive + 7) |= 0x80u;
      *(archive + 101) = v436;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v433, 4204))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v437, 4204);
    v456 = v438;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v439, &v456, 4204))
    {
      v440 = v456;
      *(archive + 7) |= 0x100u;
      *(archive + 102) = v440;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v437, 4205))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v441, 4205);
    v456 = v442;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v443, &v456, 4205))
    {
      v444 = v456;
      *(archive + 7) |= 0x200u;
      *(archive + 103) = v444;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v441, 4206))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v445, 4206);
    v456 = v446;
    if (objc_msgSend_validateFloatValue_forProperty_(v9, v447, &v456, 4206))
    {
      v448 = v456;
      *(archive + 7) |= 0x400u;
      *(archive + 104) = v448;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v445, 4207))
  {
    LODWORD(v456) = objc_msgSend_intValueForProperty_(mapCopy, v449, 4207);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v450, &v456, 4207))
    {
      v451 = v456;
      *(archive + 7) |= 0x40u;
      *(archive + 201) = v451;
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[118]);

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
    v7 = MEMORY[0x277D80BD0];
  }

  v23.receiver = self;
  v23.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v23 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 12);
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D80AB8]);
    v14 = objc_msgSend_initWithCapacity_(v11, v12, v10);
    if (*(archive + 4))
    {
      objc_msgSend_loadMotionBackgroundStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v14, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadMotionBackgroundStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v14, &unk_2812EBDF0, unarchiverCopy);
    }

    v15 = *MEMORY[0x277D80AF0];
    v16 = *(&self->super.super.super.isa + v15);
    *(&self->super.super.super.isa + v15) = v14;
  }

  if ((*(archive + 16) & 4) != 0)
  {
    v17 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 5));
    posterFrameData = self->_posterFrameData;
    self->_posterFrameData = v17;
  }

  v19 = objc_msgSend_name(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, &stru_2884D8E20);

  if (isEqualToString)
  {
    objc_msgSend_setName_(self, v22, 0);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D6D55C, off_2812EA908[118]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
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

    v7 = MEMORY[0x277C8F060](v8);
    *(archive + 3) = v7;
  }

  v26.receiver = self;
  v26.super_class = KNMotionBackgroundStyle;
  [(KNMotionBackgroundStyle *)&v26 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (v11 >> 31)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNMotionBackgroundStyle(PersistenceAdditions) saveToArchive:archiver:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMotionBackgroundStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 617, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      LODWORD(v11) = 0x7FFFFFFF;
    }

    v13 = *(archive + 4);
    *(archive + 12) = v11;
    *(archive + 4) = v13 | 0xA;
    v14 = *(archive + 4);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_275E219FC(v15);
      *(archive + 4) = v14;
    }

    objc_msgSend_saveMotionBackgroundStylePropertyMap_toArchive_archiver_(self, v12, *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]), v14, archiverCopy);
  }

  posterFrameData = self->_posterFrameData;
  if (posterFrameData)
  {
    *(archive + 4) |= 4u;
    v17 = *(archive + 5);
    if (!v17)
    {
      v18 = *(archive + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C8EFD0](v18);
      *(archive + 5) = v17;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v12, posterFrameData, v17);
  }
}

@end