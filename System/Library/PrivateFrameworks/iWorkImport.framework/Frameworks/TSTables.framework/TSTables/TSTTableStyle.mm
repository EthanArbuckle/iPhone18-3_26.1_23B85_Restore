@interface TSTTableStyle
+ (id)nonEmphasisTableProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)property;
+ (unint64_t)presetIDForStyleID:(id)d;
+ (void)initDefaultPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)strokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePresets:(id)presets;
- (void)loadTableStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveTableStylePropertiesToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)validate;
@end

@implementation TSTTableStyle

+ (id)properties
{
  if (qword_27CFB5268 != -1)
  {
    sub_2216F6CA8();
  }

  v3 = qword_27CFB5260;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_27CFB5278 != -1)
  {
    sub_2216F6CBC();
  }

  v3 = qword_27CFB5270;

  return v3;
}

+ (id)nonEmphasisTableProperties
{
  if (qword_27CFB5288 != -1)
  {
    sub_2216F6CD0();
  }

  v3 = qword_27CFB5280;

  return v3;
}

+ (unint64_t)presetIDForStyleID:(id)d
{
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(d, a2, @"tableStyle", &stru_2834BADA0, v3);
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"table", &stru_2834BADA0, v6);

  v11 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v8, @"-", v9, v10);
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v12, v11, v13, v14);

  v20 = objc_msgSend_integerValue(v15, v16, v17, v18, v19);
  return v20;
}

+ (int)defaultIntValueForProperty:(int)property
{
  if (property == 798)
  {
    return -1;
  }

  else
  {
    return 0x80000000;
  }
}

+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors
{
  mapCopy = map;
  v9 = objc_msgSend_strokePresetListForDefaultPropertyMapForTablePresetID_colors_(TSTTableStrokePresetList, v7, d, colors, v8);
  objc_msgSend_setObject_forProperty_(mapCopy, v10, v9, 787, v11);
}

+ (void)initDefaultPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  sub_22117AB24(mapCopy, d, colorsCopy);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v9, 1, 799, v10);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v11, 0, 768, v12);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v13, 0, 769, v14);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v15, 0, 798, v16);
  v19 = objc_msgSend_strokePresetListForDefaultPropertyMapForTablePresetID_colors_(TSTTableStrokePresetList, v17, d, colorsCopy, v18);
  objc_msgSend_setObject_forProperty_(mapCopy, v20, v19, 787, v21);
}

- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSTTableStyle;
  return [(TSTTableStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (id)strokeForStrokePreset:(unint64_t)preset
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 787, v3, v4);
  v10 = objc_msgSend_horizontalStrokeForStrokePreset_(v6, v7, preset, v8, v9);

  return v10;
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 787, v3, v4);
  v10 = objc_msgSend_horizontalStrokeForStrokePreset_(v6, v7, preset, v8, v9);

  return v10;
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 787, v3, v4);
  v10 = objc_msgSend_verticalStrokeForStrokePreset_(v6, v7, preset, v8, v9);

  return v10;
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 787, v3, v4);
  v10 = objc_msgSend_exteriorStrokeForStrokePreset_(v6, v7, preset, v8, v9);

  return v10;
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  v6 = objc_msgSend_valueForProperty_(self, a2, 787, v3, v4);
  LODWORD(preset) = objc_msgSend_maskForStrokePreset_(v6, v7, preset, v8, v9);

  return preset;
}

- (unsigned)maskForStrokePresets:(id)presets
{
  presetsCopy = presets;
  v8 = objc_msgSend_valueForProperty_(self, v5, 787, v6, v7);
  v12 = objc_msgSend_maskForStrokePresets_(v8, v9, presetsCopy, v10, v11);

  return v12;
}

- (void)loadTableStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v10 = objc_opt_class();
  v15 = v10;
  v16 = *(archive + 6);
  if ((v16 & 4) != 0)
  {
    v707[0] = *(archive + 560);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v11, v707, 769, v14))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v707[0] != 0, 769, v14);
    }

    v16 = *(archive + 6);
  }

  if ((v16 & 0x10) != 0)
  {
    v707[0] = *(archive + 562);
    if (objc_msgSend_validateIntValue_forProperty_(v15, v11, v707, 768, v14))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v707[0], 768, v14);
    }
  }

  if ((*(archive + 16) & 2) != 0)
  {
    v17 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v11, *(archive + 5), unarchiverCopy, v14);
    v706 = v17;
    v18 = objc_opt_class();
    v20 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v19, &v706, v18, 770);
    v21 = v706;

    if (v20)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v22, v21, 770, v23);
    }
  }

  if ((*(archive + 24) & 8) != 0)
  {
    v707[0] = *(archive + 561);
    if (objc_msgSend_validateIntValue_forProperty_(v15, v11, v707, 799, v14))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v707[0], 799, v14);
    }
  }

  v24 = *(archive + 4);
  if ((v24 & 0x100) != 0)
  {
    v139 = MEMORY[0x277D804A0];
    if (*(*(archive + 12) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 12) + 24), unarchiverCopy, v14);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, MEMORY[0x277D804A0], unarchiverCopy, v14);
    }
    v140 = ;
    v705 = v140;
    v141 = objc_opt_class();
    v143 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v142, &v705, v141, 771);
    v144 = v705;

    if (v143)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v145, v144, 771, v146);
    }

    v147 = *(archive + 4);
    if ((v147 & 0x8000) != 0)
    {
      if (*(*(archive + 19) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 19) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v148 = ;
      v704 = v148;
      v149 = objc_opt_class();
      v151 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v150, &v704, v149, 772);
      v152 = v704;

      if (v151)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v153, v152, 772, v154);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x20000) != 0)
    {
      if (*(*(archive + 21) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 21) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v155 = ;
      v703 = v155;
      v156 = objc_opt_class();
      v158 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v157, &v703, v156, 774);
      v159 = v703;

      if (v158)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v160, v159, 774, v161);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x10000) != 0)
    {
      if (*(*(archive + 20) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 20) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v162 = ;
      v702 = v162;
      v163 = objc_opt_class();
      v165 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v164, &v702, v163, 773);
      v166 = v702;

      if (v165)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v167, v166, 773, v168);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 8) != 0)
    {
      if (*(*(archive + 7) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 7) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v169 = ;
      v701 = v169;
      v170 = objc_opt_class();
      v172 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v171, &v701, v170, 782);
      v173 = v701;

      if (v172)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v174, v173, 782, v175);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 4) != 0)
    {
      if (*(*(archive + 6) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 6) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v176 = ;
      v700 = v176;
      v177 = objc_opt_class();
      v179 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v178, &v700, v177, 779);
      v180 = v700;

      if (v179)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v181, v180, 779, v182);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x200) != 0)
    {
      if (*(*(archive + 13) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 13) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v183 = ;
      v699 = v183;
      v184 = objc_opt_class();
      v186 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v185, &v699, v184, 781);
      v187 = v699;

      if (v186)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v188, v187, 781, v189);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x400) != 0)
    {
      if (*(*(archive + 14) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 14) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v190 = ;
      v698 = v190;
      v191 = objc_opt_class();
      v193 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v192, &v698, v191, 780);
      v194 = v698;

      if (v193)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v195, v194, 780, v196);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x10) != 0)
    {
      if (*(*(archive + 8) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 8) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v197 = ;
      v697 = v197;
      v198 = objc_opt_class();
      v200 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v199, &v697, v198, 778);
      v201 = v697;

      if (v200)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v202, v201, 778, v203);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x20) != 0)
    {
      if (*(*(archive + 9) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 9) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v204 = ;
      v696 = v204;
      v205 = objc_opt_class();
      v207 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v206, &v696, v205, 775);
      v208 = v696;

      if (v207)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v209, v208, 775, v210);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x800) != 0)
    {
      if (*(*(archive + 15) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 15) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v211 = ;
      v695 = v211;
      v212 = objc_opt_class();
      v214 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v213, &v695, v212, 776);
      v215 = v695;

      if (v214)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v216, v215, 776, v217);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x1000) != 0)
    {
      if (*(*(archive + 16) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 16) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v218 = ;
      v694 = v218;
      v219 = objc_opt_class();
      v221 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v220, &v694, v219, 777);
      v222 = v694;

      if (v221)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v223, v222, 777, v224);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x80) != 0)
    {
      if (*(*(archive + 11) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 11) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v225 = ;
      v693 = v225;
      v226 = objc_opt_class();
      v228 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v227, &v693, v226, 786);
      v229 = v693;

      if (v228)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v230, v229, 786, v231);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x40) != 0)
    {
      if (*(*(archive + 10) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 10) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v232 = ;
      v692 = v232;
      v233 = objc_opt_class();
      v235 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v234, &v692, v233, 783);
      v236 = v692;

      if (v235)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v237, v236, 783, v238);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x2000) != 0)
    {
      if (*(*(archive + 17) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 17) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v239 = ;
      v691 = v239;
      v240 = objc_opt_class();
      v242 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v241, &v691, v240, 785);
      v243 = v691;

      if (v242)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v244, v243, 785, v245);
      }

      v147 = *(archive + 4);
    }

    if ((v147 & 0x4000) != 0)
    {
      if (*(*(archive + 18) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 18) + 24), unarchiverCopy, v14);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v139, unarchiverCopy, v14);
      }
      v246 = ;
      v690 = v246;
      v247 = objc_opt_class();
      v249 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v248, &v690, v247, 784);
      v136 = v690;

      if (v249)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v250, v136, 784, v251);
      }

      goto LABEL_189;
    }
  }

  else
  {
    if (v24 < 0)
    {
      v25 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 35), unarchiverCopy, v14);
      v689 = v25;
      v26 = objc_opt_class();
      v28 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v27, &v689, v26, 771);
      v29 = v689;

      if (v28)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v30, v29, 771, v31);
      }
    }

    v32 = *(archive + 5);
    if (v32)
    {
      v33 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 36), unarchiverCopy, v14);
      v688 = v33;
      v34 = objc_opt_class();
      v36 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v35, &v688, v34, 772);
      v37 = v688;

      if (v36)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v38, v37, 772, v39);
      }

      v32 = *(archive + 5);
    }

    if ((v32 & 4) != 0)
    {
      v40 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 38), unarchiverCopy, v14);
      v687 = v40;
      v41 = objc_opt_class();
      v43 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v42, &v687, v41, 774);
      v44 = v687;

      if (v43)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v45, v44, 774, v46);
      }

      v32 = *(archive + 5);
    }

    if ((v32 & 2) != 0)
    {
      v47 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 37), unarchiverCopy, v14);
      v686 = v47;
      v48 = objc_opt_class();
      v50 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v49, &v686, v48, 773);
      v51 = v686;

      if (v50)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v52, v51, 773, v53);
      }
    }

    v54 = *(archive + 4);
    if ((v54 & 0x100000) != 0)
    {
      v55 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 24), unarchiverCopy, v14);
      v685 = v55;
      v56 = objc_opt_class();
      v58 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v57, &v685, v56, 782);
      v59 = v685;

      if (v58)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v60, v59, 782, v61);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x80000) != 0)
    {
      v62 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 23), unarchiverCopy, v14);
      v684 = v62;
      v63 = objc_opt_class();
      v65 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v64, &v684, v63, 779);
      v66 = v684;

      if (v65)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v67, v66, 779, v68);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x200000) != 0)
    {
      v69 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 25), unarchiverCopy, v14);
      v683 = v69;
      v70 = objc_opt_class();
      v72 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v71, &v683, v70, 781);
      v73 = v683;

      if (v72)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v74, v73, 781, v75);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x400000) != 0)
    {
      v76 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 26), unarchiverCopy, v14);
      v682 = v76;
      v77 = objc_opt_class();
      v79 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v78, &v682, v77, 780);
      v80 = v682;

      if (v79)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v81, v80, 780, v82);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x800000) != 0)
    {
      v83 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 27), unarchiverCopy, v14);
      v681 = v83;
      v84 = objc_opt_class();
      v86 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v85, &v681, v84, 778);
      v87 = v681;

      if (v86)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v88, v87, 778, v89);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x1000000) != 0)
    {
      v90 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 28), unarchiverCopy, v14);
      v680 = v90;
      v91 = objc_opt_class();
      v93 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v92, &v680, v91, 775);
      v94 = v680;

      if (v93)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v95, v94, 775, v96);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x2000000) != 0)
    {
      v97 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 29), unarchiverCopy, v14);
      v679 = v97;
      v98 = objc_opt_class();
      v100 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v99, &v679, v98, 776);
      v101 = v679;

      if (v100)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v102, v101, 776, v103);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x4000000) != 0)
    {
      v104 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 30), unarchiverCopy, v14);
      v678 = v104;
      v105 = objc_opt_class();
      v107 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v106, &v678, v105, 777);
      v108 = v678;

      if (v107)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v109, v108, 777, v110);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x10000000) != 0)
    {
      v111 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 32), unarchiverCopy, v14);
      v677 = v111;
      v112 = objc_opt_class();
      v114 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v113, &v677, v112, 786);
      v115 = v677;

      if (v114)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v116, v115, 786, v117);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x8000000) != 0)
    {
      v118 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 31), unarchiverCopy, v14);
      v676 = v118;
      v119 = objc_opt_class();
      v121 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v120, &v676, v119, 783);
      v122 = v676;

      if (v121)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v123, v122, 783, v124);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x20000000) != 0)
    {
      v125 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 33), unarchiverCopy, v14);
      v675 = v125;
      v126 = objc_opt_class();
      v128 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v127, &v675, v126, 785);
      v129 = v675;

      if (v128)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v130, v129, 785, v131);
      }

      v54 = *(archive + 4);
    }

    if ((v54 & 0x40000000) != 0)
    {
      v132 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 34), unarchiverCopy, v14);
      v674 = v132;
      v133 = objc_opt_class();
      v135 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v134, &v674, v133, 784);
      v136 = v674;

      if (v135)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v137, v136, 784, v138);
      }

LABEL_189:
    }
  }

  if ((objc_msgSend_isVariation(self, v11, v12, v13, v14) & 1) == 0 && objc_msgSend_fileFormatVersion(unarchiverCopy, v252, v253, v254, v255) < *MEMORY[0x277D80950])
  {
    v256 = objc_msgSend_objectForProperty_(mapCopy, v252, 771, v254, v255);
    v260 = objc_msgSend_objectForProperty_(mapCopy, v257, 772, v258, v259);
    v265 = v260;
    if (v256 && !v260)
    {
      objc_msgSend_willModifyForUpgrade(self, v261, v262, v263, v264);
      objc_msgSend_setObject_forProperty_(mapCopy, v266, v256, 772, v267);
    }
  }

  isVariation = objc_msgSend_isVariation(self, v252, v253, v254, v255);
  v273 = *(archive + 5);
  if (isVariation)
  {
    if ((v273 & 8) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_210;
  }

  if ((v273 & 8) != 0)
  {
LABEL_210:
    v337 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 39), unarchiverCopy, v272);
    v673 = v337;
    v338 = objc_opt_class();
    v340 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v339, &v673, v338, 808);
    v341 = v673;

    if (v340)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v342, v341, 808, v343);
    }

    v273 = *(archive + 5);
    goto LABEL_213;
  }

  if ((v273 & 0x40000) == 0 && (v273 & 0x100) == 0 && (v273 & 0x2000) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v269, 2, v271, v272);
    objc_opt_class();
    v277 = objc_msgSend_objectForProperty_(mapCopy, v274, 783, v275, v276);
    v278 = TSUCheckedDynamicCast();

    objc_opt_class();
    v282 = objc_msgSend_objectForProperty_(mapCopy, v279, 784, v280, v281);
    v283 = TSUCheckedDynamicCast();

    v287 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v284, v278, v285, v286);
    v291 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v288, v278, v289, v290);
    v299 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v292, v283, v293, v294);
    if (v287)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v295, v287, 808, v298);
      objc_msgSend_setObject_forProperty_(mapCopy, v300, v287, 809, v301);
      objc_msgSend_setObject_forProperty_(mapCopy, v302, v287, 810, v303);
      objc_msgSend_setObject_forProperty_(mapCopy, v304, v287, 811, v305);
      objc_msgSend_setObject_forProperty_(mapCopy, v306, v287, 812, v307);
    }

    if (v291)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v295, v291, 813, v298);
      objc_msgSend_setObject_forProperty_(mapCopy, v308, v291, 814, v309);
      objc_msgSend_setObject_forProperty_(mapCopy, v310, v291, 815, v311);
      objc_msgSend_setObject_forProperty_(mapCopy, v312, v291, 816, v313);
      objc_msgSend_setObject_forProperty_(mapCopy, v314, v291, 817, v315);
    }

    v316 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v295, v296, v297, v298, 0.0, self);
    objc_msgSend_setObject_forProperty_(mapCopy, v317, v316, 818, v318);
    objc_msgSend_setObject_forProperty_(mapCopy, v319, v316, 819, v320);
    objc_msgSend_setObject_forProperty_(mapCopy, v321, v316, 820, v322);
    objc_msgSend_setObject_forProperty_(mapCopy, v323, v316, 821, v324);
    objc_msgSend_setObject_forProperty_(mapCopy, v325, v316, 822, v326);
    if (v299)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v327, v299, 823, v328);
      objc_msgSend_setObject_forProperty_(mapCopy, v329, v299, 824, v330);
      objc_msgSend_setObject_forProperty_(mapCopy, v331, v299, 825, v332);
      objc_msgSend_setObject_forProperty_(mapCopy, v333, v299, 826, v334);
      objc_msgSend_setObject_forProperty_(mapCopy, v335, v299, 827, v336);
    }

    self = v634;
    goto LABEL_288;
  }

LABEL_213:
  if ((v273 & 0x10) != 0)
  {
    v344 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 40), unarchiverCopy, v272);
    v672 = v344;
    v345 = objc_opt_class();
    v347 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v346, &v672, v345, 809);
    v348 = v672;

    if (v347)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v349, v348, 809, v350);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x20) != 0)
  {
    v351 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 41), unarchiverCopy, v272);
    v671 = v351;
    v352 = objc_opt_class();
    v354 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v353, &v671, v352, 810);
    v355 = v671;

    if (v354)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v356, v355, 810, v357);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x40) != 0)
  {
    v358 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 42), unarchiverCopy, v272);
    v670 = v358;
    v359 = objc_opt_class();
    v361 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v360, &v670, v359, 811);
    v362 = v670;

    if (v361)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v363, v362, 811, v364);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x80) != 0)
  {
    v365 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 43), unarchiverCopy, v272);
    v669 = v365;
    v366 = objc_opt_class();
    v368 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v367, &v669, v366, 812);
    v369 = v669;

    if (v368)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v370, v369, 812, v371);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x40000) != 0)
  {
    v372 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 54), unarchiverCopy, v272);
    v668 = v372;
    v373 = objc_opt_class();
    v375 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v374, &v668, v373, 818);
    v376 = v668;

    if (v375)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v377, v376, 818, v378);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x80000) != 0)
  {
    v379 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 55), unarchiverCopy, v272);
    v667 = v379;
    v380 = objc_opt_class();
    v382 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v381, &v667, v380, 819);
    v383 = v667;

    if (v382)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v384, v383, 819, v385);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x100000) != 0)
  {
    v386 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 56), unarchiverCopy, v272);
    v666 = v386;
    v387 = objc_opt_class();
    v389 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v388, &v666, v387, 820);
    v390 = v666;

    if (v389)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v391, v390, 820, v392);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x200000) != 0)
  {
    v393 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 57), unarchiverCopy, v272);
    v665 = v393;
    v394 = objc_opt_class();
    v396 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v395, &v665, v394, 821);
    v397 = v665;

    if (v396)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v398, v397, 821, v399);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x400000) != 0)
  {
    v400 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 58), unarchiverCopy, v272);
    v664 = v400;
    v401 = objc_opt_class();
    v403 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v402, &v664, v401, 822);
    v404 = v664;

    if (v403)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v405, v404, 822, v406);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x100) != 0)
  {
    v407 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 44), unarchiverCopy, v272);
    v663 = v407;
    v408 = objc_opt_class();
    v410 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v409, &v663, v408, 813);
    v411 = v663;

    if (v410)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v412, v411, 813, v413);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x200) != 0)
  {
    v414 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 45), unarchiverCopy, v272);
    v662 = v414;
    v415 = objc_opt_class();
    v417 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v416, &v662, v415, 814);
    v418 = v662;

    if (v417)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v419, v418, 814, v420);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x400) != 0)
  {
    v421 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 46), unarchiverCopy, v272);
    v661 = v421;
    v422 = objc_opt_class();
    v424 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v423, &v661, v422, 815);
    v425 = v661;

    if (v424)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v426, v425, 815, v427);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x800) != 0)
  {
    v428 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 47), unarchiverCopy, v272);
    v660 = v428;
    v429 = objc_opt_class();
    v431 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v430, &v660, v429, 816);
    v432 = v660;

    if (v431)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v433, v432, 816, v434);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x1000) != 0)
  {
    v435 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 48), unarchiverCopy, v272);
    v659 = v435;
    v436 = objc_opt_class();
    v438 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v437, &v659, v436, 817);
    v439 = v659;

    if (v438)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v440, v439, 817, v441);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x2000) != 0)
  {
    v442 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 49), unarchiverCopy, v272);
    v658 = v442;
    v443 = objc_opt_class();
    v445 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v444, &v658, v443, 823);
    v446 = v658;

    if (v445)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v447, v446, 823, v448);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x4000) != 0)
  {
    v449 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 50), unarchiverCopy, v272);
    v657 = v449;
    v450 = objc_opt_class();
    v452 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v451, &v657, v450, 824);
    v453 = v657;

    if (v452)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v454, v453, 824, v455);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x8000) != 0)
  {
    v456 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 51), unarchiverCopy, v272);
    v656 = v456;
    v457 = objc_opt_class();
    v459 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v458, &v656, v457, 825);
    v460 = v656;

    if (v459)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v461, v460, 825, v462);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x10000) != 0)
  {
    v463 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 52), unarchiverCopy, v272);
    v655 = v463;
    v464 = objc_opt_class();
    v466 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v465, &v655, v464, 826);
    v467 = v655;

    if (v466)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v468, v467, 826, v469);
    }

    v273 = *(archive + 5);
  }

  if ((v273 & 0x20000) != 0)
  {
    v283 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v269, *(archive + 53), unarchiverCopy, v272);
    v654 = v283;
    v470 = objc_opt_class();
    v472 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v471, &v654, v470, 827);
    v278 = v654;

    if (v472)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v473, v278, 827, v474);
    }

LABEL_288:
  }

  v475 = objc_msgSend_isVariation(self, v269, v270, v271, v272);
  v479 = *(archive + 5);
  if (v475)
  {
    if ((v479 & 0x800000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_295;
  }

  if ((v479 & 0x800000) != 0)
  {
LABEL_295:
    v530 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 59), unarchiverCopy, v478);
    v653 = v530;
    v531 = objc_opt_class();
    v533 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v532, &v653, v531, 828);
    v534 = v653;

    if (v533)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v535, v534, 828, v536);
    }

    v479 = *(archive + 5);
    goto LABEL_298;
  }

  if ((v479 & 0x1000000) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v476, 2, v477, v478);
    v482 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v480, 0, mapCopy, v481);
    v485 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v483, 0, mapCopy, v484);
    v640 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v486, 0, mapCopy, v487);
    v639 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v488, 0, mapCopy, v489);
    v638 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v490, 0, mapCopy, v491);
    v637 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v492, 0, mapCopy, v493);
    v636 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v494, 0, mapCopy, v495);
    selfCopy = self;
    v498 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v496, 0, mapCopy, v497);
    v501 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v499, 0, mapCopy, v500);
    v504 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v502, 0, mapCopy, v503);
    v507 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v505, 0, mapCopy, v506);
    objc_msgSend_setObject_forProperty_(mapCopy, v508, v482, 828, v509);
    objc_msgSend_setObject_forProperty_(mapCopy, v510, v485, 829, v511);
    objc_msgSend_setObject_forProperty_(mapCopy, v512, v640, 830, v513);
    objc_msgSend_setObject_forProperty_(mapCopy, v514, v639, 831, v515);
    objc_msgSend_setObject_forProperty_(mapCopy, v516, v638, 832, v517);
    objc_msgSend_setObject_forProperty_(mapCopy, v518, v637, 833, v519);
    objc_msgSend_setObject_forProperty_(mapCopy, v520, v636, 834, v521);
    objc_msgSend_setObject_forProperty_(mapCopy, v522, v498, 835, v523);
    objc_msgSend_setObject_forProperty_(mapCopy, v524, v501, 836, v525);
    objc_msgSend_setObject_forProperty_(mapCopy, v526, v504, 837, v527);
    objc_msgSend_setObject_forProperty_(mapCopy, v528, v507, 838, v529);

    self = selfCopy;
LABEL_337:

    goto LABEL_338;
  }

LABEL_298:
  if ((v479 & 0x1000000) != 0)
  {
    v537 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 60), unarchiverCopy, v478);
    v652 = v537;
    v538 = objc_opt_class();
    v540 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v539, &v652, v538, 829);
    v541 = v652;

    if (v540)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v542, v541, 829, v543);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x2000000) != 0)
  {
    v544 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 61), unarchiverCopy, v478);
    v651 = v544;
    v545 = objc_opt_class();
    v547 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v546, &v651, v545, 830);
    v548 = v651;

    if (v547)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v549, v548, 830, v550);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x4000000) != 0)
  {
    v551 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 62), unarchiverCopy, v478);
    v650 = v551;
    v552 = objc_opt_class();
    v554 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v553, &v650, v552, 831);
    v555 = v650;

    if (v554)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v556, v555, 831, v557);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x8000000) != 0)
  {
    v558 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 63), unarchiverCopy, v478);
    v649 = v558;
    v559 = objc_opt_class();
    v561 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v560, &v649, v559, 832);
    v562 = v649;

    if (v561)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v563, v562, 832, v564);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x10000000) != 0)
  {
    v565 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 64), unarchiverCopy, v478);
    v648 = v565;
    v566 = objc_opt_class();
    v568 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v567, &v648, v566, 833);
    v569 = v648;

    if (v568)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v570, v569, 833, v571);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x20000000) != 0)
  {
    v572 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 65), unarchiverCopy, v478);
    v647 = v572;
    v573 = objc_opt_class();
    v575 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v574, &v647, v573, 834);
    v576 = v647;

    if (v575)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v577, v576, 834, v578);
    }

    v479 = *(archive + 5);
  }

  if ((v479 & 0x40000000) != 0)
  {
    v579 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 66), unarchiverCopy, v478);
    v646 = v579;
    v580 = objc_opt_class();
    v582 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v581, &v646, v580, 835);
    v583 = v646;

    if (v582)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v584, v583, 835, v585);
    }

    v479 = *(archive + 5);
  }

  if (v479 < 0)
  {
    v586 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 67), unarchiverCopy, v478);
    v645 = v586;
    v587 = objc_opt_class();
    v589 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v588, &v645, v587, 836);
    v590 = v645;

    if (v589)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v591, v590, 836, v592);
    }
  }

  v593 = *(archive + 6);
  if (v593)
  {
    v594 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 68), unarchiverCopy, v478);
    v644 = v594;
    v595 = objc_opt_class();
    v597 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v596, &v644, v595, 837);
    v598 = v644;

    if (v597)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v599, v598, 837, v600);
    }

    v593 = *(archive + 6);
  }

  if ((v593 & 2) != 0)
  {
    v485 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v476, *(archive + 69), unarchiverCopy, v478);
    v643 = v485;
    v601 = objc_opt_class();
    v603 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v602, &v643, v601, 838);
    v482 = v643;

    if (v603)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v604, v482, 838, v605);
    }

    goto LABEL_337;
  }

LABEL_338:
  v606 = *(archive + 6);
  if ((v606 & 0x20) != 0)
  {
    v707[0] = *(archive + 563);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 788, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 788, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x40) != 0)
  {
    v707[0] = *(archive + 564);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 789, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 789, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x80) != 0)
  {
    v707[0] = *(archive + 565);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 790, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 790, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x100) != 0)
  {
    v707[0] = *(archive + 566);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 792, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 792, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x200) != 0)
  {
    v707[0] = *(archive + 567);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 794, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 794, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x800) != 0)
  {
    v707[0] = *(archive + 572);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 796, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 796, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x4000) != 0)
  {
    v707[0] = *(archive + 575);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 791, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 791, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x2000) != 0)
  {
    v707[0] = *(archive + 574);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 793, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 793, v478);
    }

    v606 = *(archive + 6);
  }

  if ((v606 & 0x8000) != 0)
  {
    v707[0] = *(archive + 576);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v476, v707, 795, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0] != 0, 795, v478);
    }
  }

  if (*(archive + 16))
  {
    v607 = objc_alloc(MEMORY[0x277CCACA8]);
    v611 = objc_msgSend_tsp_initWithProtobufString_(v607, v608, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL, v609, v610);
    v642 = v611;
    v612 = objc_opt_class();
    v614 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v613, &v642, v612, 797);
    v615 = v642;

    if (v614)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v616, v615, 797, v617);
    }
  }

  if (*(archive + 26))
  {
    v707[0] = *(archive + 145);
    if (objc_msgSend_validateIntValue_forProperty_(v15, v476, v707, 798, v478))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v476, v707[0], 798, v478);
    }
  }

  if ((*(archive + 18) & 4) != 0)
  {
    v618 = objc_msgSend_instanceWithArchive_unarchiver_(TSTTableStrokePresetList, v476, *(archive + 22), unarchiverCopy, v478);
    v641 = v618;
    v619 = objc_opt_class();
    v621 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v620, &v641, v619, 787);
    v622 = v641;

    if (v621)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v623, v622, 787, v624);
    }
  }

  if ((objc_msgSend_containsProperty_(mapCopy, v476, 798, v477, v478) & 1) == 0 && (objc_msgSend_isVariation(self, v625, v626, v627, v628) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v629, 2, v630, v631);
    objc_msgSend_setIntValue_forProperty_(mapCopy, v632, 0, 798, v633);
  }
}

- (void)saveTableStylePropertiesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 769, v10, v11))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v12, 769, v13, v14);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v15, &v739, 769, v16))
    {
      v17 = v739 != 0;
      *(archive + 6) |= 4u;
      *(archive + 560) = v17;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v12, 768, v13, v14))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v18, 768, v19, v20);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v21, &v739, 768, v22))
    {
      v23 = v739 != 0;
      *(archive + 6) |= 0x10u;
      *(archive + 562) = v23;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v18, 770, v19, v20))
  {
    v27 = objc_msgSend_objectForProperty_(v8, v24, 770, v25, v26);
    v738 = v27;
    v28 = objc_opt_class();
    v30 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v29, &v738, v28, 770);
    v31 = v738;

    if (v30)
    {
      *(archive + 4) |= 2u;
      v34 = *(archive + 5);
      if (!v34)
      {
        v35 = *(archive + 1);
        if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
        }

        v34 = MEMORY[0x223DA0280](v35);
        *(archive + 5) = v34;
      }

      objc_msgSend_saveToArchive_archiver_(v31, v32, v34, archiverCopy, v33);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v24, 799, v25, v26))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v36, 799, v37, v38);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v39, &v739, 799, v40))
    {
      v41 = v739 != 0;
      *(archive + 6) |= 8u;
      *(archive + 561) = v41;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v36, 771, v37, v38))
  {
    v45 = objc_msgSend_objectForProperty_(v8, v42, 771, v43, v44);
    v737 = v45;
    v46 = objc_opt_class();
    v48 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v47, &v737, v46, 771);
    v49 = v737;

    if (v48)
    {
      *(archive + 4) |= 0x80000000;
      v52 = *(archive + 35);
      if (!v52)
      {
        v53 = *(archive + 1);
        if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
        }

        v52 = MEMORY[0x223DA0290](v53);
        *(archive + 35) = v52;
      }

      objc_msgSend_saveToArchive_archiver_(v49, v50, v52, archiverCopy, v51);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v42, 772, v43, v44))
  {
    v57 = objc_msgSend_objectForProperty_(v8, v54, 772, v55, v56);
    v736 = v57;
    v58 = objc_opt_class();
    v60 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v59, &v736, v58, 772);
    v61 = v736;

    if (v60)
    {
      *(archive + 5) |= 1u;
      v64 = *(archive + 36);
      if (!v64)
      {
        v65 = *(archive + 1);
        if (v65)
        {
          v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
        }

        v64 = MEMORY[0x223DA0290](v65);
        *(archive + 36) = v64;
      }

      objc_msgSend_saveToArchive_archiver_(v61, v62, v64, archiverCopy, v63);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v54, 774, v55, v56))
  {
    v69 = objc_msgSend_objectForProperty_(v8, v66, 774, v67, v68);
    v735 = v69;
    v70 = objc_opt_class();
    v72 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v71, &v735, v70, 774);
    v73 = v735;

    if (v72)
    {
      *(archive + 5) |= 4u;
      v76 = *(archive + 38);
      if (!v76)
      {
        v77 = *(archive + 1);
        if (v77)
        {
          v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
        }

        v76 = MEMORY[0x223DA0290](v77);
        *(archive + 38) = v76;
      }

      objc_msgSend_saveToArchive_archiver_(v73, v74, v76, archiverCopy, v75);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v66, 773, v67, v68))
  {
    v81 = objc_msgSend_objectForProperty_(v8, v78, 773, v79, v80);
    v734 = v81;
    v82 = objc_opt_class();
    v84 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v83, &v734, v82, 773);
    v85 = v734;

    if (v84)
    {
      *(archive + 5) |= 2u;
      v88 = *(archive + 37);
      if (!v88)
      {
        v89 = *(archive + 1);
        if (v89)
        {
          v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
        }

        v88 = MEMORY[0x223DA0290](v89);
        *(archive + 37) = v88;
      }

      objc_msgSend_saveToArchive_archiver_(v85, v86, v88, archiverCopy, v87);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v78, 782, v79, v80))
  {
    v93 = objc_msgSend_objectForProperty_(v8, v90, 782, v91, v92);
    v733 = v93;
    v94 = objc_opt_class();
    v96 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v95, &v733, v94, 782);
    v97 = v733;

    if (v96)
    {
      *(archive + 4) |= 0x100000u;
      v100 = *(archive + 24);
      if (!v100)
      {
        v101 = *(archive + 1);
        if (v101)
        {
          v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
        }

        v100 = MEMORY[0x223DA0290](v101);
        *(archive + 24) = v100;
      }

      objc_msgSend_saveToArchive_archiver_(v97, v98, v100, archiverCopy, v99);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v90, 779, v91, v92))
  {
    v105 = objc_msgSend_objectForProperty_(v8, v102, 779, v103, v104);
    v732 = v105;
    v106 = objc_opt_class();
    v108 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v107, &v732, v106, 779);
    v109 = v732;

    if (v108)
    {
      *(archive + 4) |= 0x80000u;
      v112 = *(archive + 23);
      if (!v112)
      {
        v113 = *(archive + 1);
        if (v113)
        {
          v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
        }

        v112 = MEMORY[0x223DA0290](v113);
        *(archive + 23) = v112;
      }

      objc_msgSend_saveToArchive_archiver_(v109, v110, v112, archiverCopy, v111);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v102, 781, v103, v104))
  {
    v117 = objc_msgSend_objectForProperty_(v8, v114, 781, v115, v116);
    v731 = v117;
    v118 = objc_opt_class();
    v120 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v119, &v731, v118, 781);
    v121 = v731;

    if (v120)
    {
      *(archive + 4) |= 0x200000u;
      v124 = *(archive + 25);
      if (!v124)
      {
        v125 = *(archive + 1);
        if (v125)
        {
          v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
        }

        v124 = MEMORY[0x223DA0290](v125);
        *(archive + 25) = v124;
      }

      objc_msgSend_saveToArchive_archiver_(v121, v122, v124, archiverCopy, v123);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v114, 780, v115, v116))
  {
    v129 = objc_msgSend_objectForProperty_(v8, v126, 780, v127, v128);
    v730 = v129;
    v130 = objc_opt_class();
    v132 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v131, &v730, v130, 780);
    v133 = v730;

    if (v132)
    {
      *(archive + 4) |= 0x400000u;
      v136 = *(archive + 26);
      if (!v136)
      {
        v137 = *(archive + 1);
        if (v137)
        {
          v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
        }

        v136 = MEMORY[0x223DA0290](v137);
        *(archive + 26) = v136;
      }

      objc_msgSend_saveToArchive_archiver_(v133, v134, v136, archiverCopy, v135);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v126, 778, v127, v128))
  {
    v141 = objc_msgSend_objectForProperty_(v8, v138, 778, v139, v140);
    v729 = v141;
    v142 = objc_opt_class();
    v144 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v143, &v729, v142, 778);
    v145 = v729;

    if (v144)
    {
      *(archive + 4) |= 0x800000u;
      v148 = *(archive + 27);
      if (!v148)
      {
        v149 = *(archive + 1);
        if (v149)
        {
          v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
        }

        v148 = MEMORY[0x223DA0290](v149);
        *(archive + 27) = v148;
      }

      objc_msgSend_saveToArchive_archiver_(v145, v146, v148, archiverCopy, v147);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v138, 775, v139, v140))
  {
    v153 = objc_msgSend_objectForProperty_(v8, v150, 775, v151, v152);
    v728 = v153;
    v154 = objc_opt_class();
    v156 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v155, &v728, v154, 775);
    v157 = v728;

    if (v156)
    {
      *(archive + 4) |= 0x1000000u;
      v160 = *(archive + 28);
      if (!v160)
      {
        v161 = *(archive + 1);
        if (v161)
        {
          v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
        }

        v160 = MEMORY[0x223DA0290](v161);
        *(archive + 28) = v160;
      }

      objc_msgSend_saveToArchive_archiver_(v157, v158, v160, archiverCopy, v159);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v150, 776, v151, v152))
  {
    v165 = objc_msgSend_objectForProperty_(v8, v162, 776, v163, v164);
    v727 = v165;
    v166 = objc_opt_class();
    v168 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v167, &v727, v166, 776);
    v169 = v727;

    if (v168)
    {
      *(archive + 4) |= 0x2000000u;
      v172 = *(archive + 29);
      if (!v172)
      {
        v173 = *(archive + 1);
        if (v173)
        {
          v173 = *(v173 & 0xFFFFFFFFFFFFFFFELL);
        }

        v172 = MEMORY[0x223DA0290](v173);
        *(archive + 29) = v172;
      }

      objc_msgSend_saveToArchive_archiver_(v169, v170, v172, archiverCopy, v171);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v162, 777, v163, v164))
  {
    v177 = objc_msgSend_objectForProperty_(v8, v174, 777, v175, v176);
    v726 = v177;
    v178 = objc_opt_class();
    v180 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v179, &v726, v178, 777);
    v181 = v726;

    if (v180)
    {
      *(archive + 4) |= 0x4000000u;
      v184 = *(archive + 30);
      if (!v184)
      {
        v185 = *(archive + 1);
        if (v185)
        {
          v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
        }

        v184 = MEMORY[0x223DA0290](v185);
        *(archive + 30) = v184;
      }

      objc_msgSend_saveToArchive_archiver_(v181, v182, v184, archiverCopy, v183);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v174, 786, v175, v176))
  {
    v189 = objc_msgSend_objectForProperty_(v8, v186, 786, v187, v188);
    v725 = v189;
    v190 = objc_opt_class();
    v192 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v191, &v725, v190, 786);
    v193 = v725;

    if (v192)
    {
      *(archive + 4) |= 0x10000000u;
      v196 = *(archive + 32);
      if (!v196)
      {
        v197 = *(archive + 1);
        if (v197)
        {
          v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
        }

        v196 = MEMORY[0x223DA0290](v197);
        *(archive + 32) = v196;
      }

      objc_msgSend_saveToArchive_archiver_(v193, v194, v196, archiverCopy, v195);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v186, 783, v187, v188))
  {
    v201 = objc_msgSend_objectForProperty_(v8, v198, 783, v199, v200);
    v724 = v201;
    v202 = objc_opt_class();
    v204 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v203, &v724, v202, 783);
    v205 = v724;

    if (v204)
    {
      *(archive + 4) |= 0x8000000u;
      v208 = *(archive + 31);
      if (!v208)
      {
        v209 = *(archive + 1);
        if (v209)
        {
          v209 = *(v209 & 0xFFFFFFFFFFFFFFFELL);
        }

        v208 = MEMORY[0x223DA0290](v209);
        *(archive + 31) = v208;
      }

      objc_msgSend_saveToArchive_archiver_(v205, v206, v208, archiverCopy, v207);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v198, 785, v199, v200))
  {
    v213 = objc_msgSend_objectForProperty_(v8, v210, 785, v211, v212);
    v723 = v213;
    v214 = objc_opt_class();
    v216 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v215, &v723, v214, 785);
    v217 = v723;

    if (v216)
    {
      *(archive + 4) |= 0x20000000u;
      v220 = *(archive + 33);
      if (!v220)
      {
        v221 = *(archive + 1);
        if (v221)
        {
          v221 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
        }

        v220 = MEMORY[0x223DA0290](v221);
        *(archive + 33) = v220;
      }

      objc_msgSend_saveToArchive_archiver_(v217, v218, v220, archiverCopy, v219);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v210, 784, v211, v212))
  {
    v225 = objc_msgSend_objectForProperty_(v8, v222, 784, v223, v224);
    v722 = v225;
    v226 = objc_opt_class();
    v228 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v227, &v722, v226, 784);
    v229 = v722;

    if (v228)
    {
      *(archive + 4) |= 0x40000000u;
      v232 = *(archive + 34);
      if (!v232)
      {
        v233 = *(archive + 1);
        if (v233)
        {
          v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
        }

        v232 = MEMORY[0x223DA0290](v233);
        *(archive + 34) = v232;
      }

      objc_msgSend_saveToArchive_archiver_(v229, v230, v232, archiverCopy, v231);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v222, 808, v223, v224))
  {
    v237 = objc_msgSend_objectForProperty_(v8, v234, 808, v235, v236);
    v721 = v237;
    v238 = objc_opt_class();
    v240 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v239, &v721, v238, 808);
    v241 = v721;

    if (v240)
    {
      *(archive + 5) |= 8u;
      v244 = *(archive + 39);
      if (!v244)
      {
        v245 = *(archive + 1);
        if (v245)
        {
          v245 = *(v245 & 0xFFFFFFFFFFFFFFFELL);
        }

        v244 = MEMORY[0x223DA0290](v245);
        *(archive + 39) = v244;
      }

      objc_msgSend_saveToArchive_archiver_(v241, v242, v244, archiverCopy, v243);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v234, 809, v235, v236))
  {
    v249 = objc_msgSend_objectForProperty_(v8, v246, 809, v247, v248);
    v720 = v249;
    v250 = objc_opt_class();
    v252 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v251, &v720, v250, 809);
    v253 = v720;

    if (v252)
    {
      *(archive + 5) |= 0x10u;
      v256 = *(archive + 40);
      if (!v256)
      {
        v257 = *(archive + 1);
        if (v257)
        {
          v257 = *(v257 & 0xFFFFFFFFFFFFFFFELL);
        }

        v256 = MEMORY[0x223DA0290](v257);
        *(archive + 40) = v256;
      }

      objc_msgSend_saveToArchive_archiver_(v253, v254, v256, archiverCopy, v255);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v246, 810, v247, v248))
  {
    v261 = objc_msgSend_objectForProperty_(v8, v258, 810, v259, v260);
    v719 = v261;
    v262 = objc_opt_class();
    v264 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v263, &v719, v262, 810);
    v265 = v719;

    if (v264)
    {
      *(archive + 5) |= 0x20u;
      v268 = *(archive + 41);
      if (!v268)
      {
        v269 = *(archive + 1);
        if (v269)
        {
          v269 = *(v269 & 0xFFFFFFFFFFFFFFFELL);
        }

        v268 = MEMORY[0x223DA0290](v269);
        *(archive + 41) = v268;
      }

      objc_msgSend_saveToArchive_archiver_(v265, v266, v268, archiverCopy, v267);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v258, 811, v259, v260))
  {
    v273 = objc_msgSend_objectForProperty_(v8, v270, 811, v271, v272);
    v718 = v273;
    v274 = objc_opt_class();
    v276 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v275, &v718, v274, 811);
    v277 = v718;

    if (v276)
    {
      *(archive + 5) |= 0x40u;
      v280 = *(archive + 42);
      if (!v280)
      {
        v281 = *(archive + 1);
        if (v281)
        {
          v281 = *(v281 & 0xFFFFFFFFFFFFFFFELL);
        }

        v280 = MEMORY[0x223DA0290](v281);
        *(archive + 42) = v280;
      }

      objc_msgSend_saveToArchive_archiver_(v277, v278, v280, archiverCopy, v279);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v270, 812, v271, v272))
  {
    v285 = objc_msgSend_objectForProperty_(v8, v282, 812, v283, v284);
    v717 = v285;
    v286 = objc_opt_class();
    v288 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v287, &v717, v286, 812);
    v289 = v717;

    if (v288)
    {
      *(archive + 5) |= 0x80u;
      v292 = *(archive + 43);
      if (!v292)
      {
        v293 = *(archive + 1);
        if (v293)
        {
          v293 = *(v293 & 0xFFFFFFFFFFFFFFFELL);
        }

        v292 = MEMORY[0x223DA0290](v293);
        *(archive + 43) = v292;
      }

      objc_msgSend_saveToArchive_archiver_(v289, v290, v292, archiverCopy, v291);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v282, 818, v283, v284))
  {
    v297 = objc_msgSend_objectForProperty_(v8, v294, 818, v295, v296);
    v716 = v297;
    v298 = objc_opt_class();
    v300 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v299, &v716, v298, 818);
    v301 = v716;

    if (v300)
    {
      *(archive + 5) |= 0x40000u;
      v304 = *(archive + 54);
      if (!v304)
      {
        v305 = *(archive + 1);
        if (v305)
        {
          v305 = *(v305 & 0xFFFFFFFFFFFFFFFELL);
        }

        v304 = MEMORY[0x223DA0290](v305);
        *(archive + 54) = v304;
      }

      objc_msgSend_saveToArchive_archiver_(v301, v302, v304, archiverCopy, v303);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v294, 819, v295, v296))
  {
    v309 = objc_msgSend_objectForProperty_(v8, v306, 819, v307, v308);
    v715 = v309;
    v310 = objc_opt_class();
    v312 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v311, &v715, v310, 819);
    v313 = v715;

    if (v312)
    {
      *(archive + 5) |= 0x80000u;
      v316 = *(archive + 55);
      if (!v316)
      {
        v317 = *(archive + 1);
        if (v317)
        {
          v317 = *(v317 & 0xFFFFFFFFFFFFFFFELL);
        }

        v316 = MEMORY[0x223DA0290](v317);
        *(archive + 55) = v316;
      }

      objc_msgSend_saveToArchive_archiver_(v313, v314, v316, archiverCopy, v315);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v306, 820, v307, v308))
  {
    v321 = objc_msgSend_objectForProperty_(v8, v318, 820, v319, v320);
    v714 = v321;
    v322 = objc_opt_class();
    v324 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v323, &v714, v322, 820);
    v325 = v714;

    if (v324)
    {
      *(archive + 5) |= 0x100000u;
      v328 = *(archive + 56);
      if (!v328)
      {
        v329 = *(archive + 1);
        if (v329)
        {
          v329 = *(v329 & 0xFFFFFFFFFFFFFFFELL);
        }

        v328 = MEMORY[0x223DA0290](v329);
        *(archive + 56) = v328;
      }

      objc_msgSend_saveToArchive_archiver_(v325, v326, v328, archiverCopy, v327);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v318, 821, v319, v320))
  {
    v333 = objc_msgSend_objectForProperty_(v8, v330, 821, v331, v332);
    v713 = v333;
    v334 = objc_opt_class();
    v336 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v335, &v713, v334, 821);
    v337 = v713;

    if (v336)
    {
      *(archive + 5) |= 0x200000u;
      v340 = *(archive + 57);
      if (!v340)
      {
        v341 = *(archive + 1);
        if (v341)
        {
          v341 = *(v341 & 0xFFFFFFFFFFFFFFFELL);
        }

        v340 = MEMORY[0x223DA0290](v341);
        *(archive + 57) = v340;
      }

      objc_msgSend_saveToArchive_archiver_(v337, v338, v340, archiverCopy, v339);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v330, 822, v331, v332))
  {
    v345 = objc_msgSend_objectForProperty_(v8, v342, 822, v343, v344);
    v712 = v345;
    v346 = objc_opt_class();
    v348 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v347, &v712, v346, 822);
    v349 = v712;

    if (v348)
    {
      *(archive + 5) |= 0x400000u;
      v352 = *(archive + 58);
      if (!v352)
      {
        v353 = *(archive + 1);
        if (v353)
        {
          v353 = *(v353 & 0xFFFFFFFFFFFFFFFELL);
        }

        v352 = MEMORY[0x223DA0290](v353);
        *(archive + 58) = v352;
      }

      objc_msgSend_saveToArchive_archiver_(v349, v350, v352, archiverCopy, v351);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v342, 813, v343, v344))
  {
    v357 = objc_msgSend_objectForProperty_(v8, v354, 813, v355, v356);
    v711 = v357;
    v358 = objc_opt_class();
    v360 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v359, &v711, v358, 813);
    v361 = v711;

    if (v360)
    {
      *(archive + 5) |= 0x100u;
      v364 = *(archive + 44);
      if (!v364)
      {
        v365 = *(archive + 1);
        if (v365)
        {
          v365 = *(v365 & 0xFFFFFFFFFFFFFFFELL);
        }

        v364 = MEMORY[0x223DA0290](v365);
        *(archive + 44) = v364;
      }

      objc_msgSend_saveToArchive_archiver_(v361, v362, v364, archiverCopy, v363);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v354, 814, v355, v356))
  {
    v369 = objc_msgSend_objectForProperty_(v8, v366, 814, v367, v368);
    v710 = v369;
    v370 = objc_opt_class();
    v372 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v371, &v710, v370, 814);
    v373 = v710;

    if (v372)
    {
      *(archive + 5) |= 0x200u;
      v376 = *(archive + 45);
      if (!v376)
      {
        v377 = *(archive + 1);
        if (v377)
        {
          v377 = *(v377 & 0xFFFFFFFFFFFFFFFELL);
        }

        v376 = MEMORY[0x223DA0290](v377);
        *(archive + 45) = v376;
      }

      objc_msgSend_saveToArchive_archiver_(v373, v374, v376, archiverCopy, v375);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v366, 815, v367, v368))
  {
    v381 = objc_msgSend_objectForProperty_(v8, v378, 815, v379, v380);
    v709 = v381;
    v382 = objc_opt_class();
    v384 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v383, &v709, v382, 815);
    v385 = v709;

    if (v384)
    {
      *(archive + 5) |= 0x400u;
      v388 = *(archive + 46);
      if (!v388)
      {
        v389 = *(archive + 1);
        if (v389)
        {
          v389 = *(v389 & 0xFFFFFFFFFFFFFFFELL);
        }

        v388 = MEMORY[0x223DA0290](v389);
        *(archive + 46) = v388;
      }

      objc_msgSend_saveToArchive_archiver_(v385, v386, v388, archiverCopy, v387);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v378, 816, v379, v380))
  {
    v393 = objc_msgSend_objectForProperty_(v8, v390, 816, v391, v392);
    v708 = v393;
    v394 = objc_opt_class();
    v396 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v395, &v708, v394, 816);
    v397 = v708;

    if (v396)
    {
      *(archive + 5) |= 0x800u;
      v400 = *(archive + 47);
      if (!v400)
      {
        v401 = *(archive + 1);
        if (v401)
        {
          v401 = *(v401 & 0xFFFFFFFFFFFFFFFELL);
        }

        v400 = MEMORY[0x223DA0290](v401);
        *(archive + 47) = v400;
      }

      objc_msgSend_saveToArchive_archiver_(v397, v398, v400, archiverCopy, v399);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v390, 817, v391, v392))
  {
    v405 = objc_msgSend_objectForProperty_(v8, v402, 817, v403, v404);
    v707 = v405;
    v406 = objc_opt_class();
    v408 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v407, &v707, v406, 817);
    v409 = v707;

    if (v408)
    {
      *(archive + 5) |= 0x1000u;
      v412 = *(archive + 48);
      if (!v412)
      {
        v413 = *(archive + 1);
        if (v413)
        {
          v413 = *(v413 & 0xFFFFFFFFFFFFFFFELL);
        }

        v412 = MEMORY[0x223DA0290](v413);
        *(archive + 48) = v412;
      }

      objc_msgSend_saveToArchive_archiver_(v409, v410, v412, archiverCopy, v411);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v402, 823, v403, v404))
  {
    v417 = objc_msgSend_objectForProperty_(v8, v414, 823, v415, v416);
    v706 = v417;
    v418 = objc_opt_class();
    v420 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v419, &v706, v418, 823);
    v421 = v706;

    if (v420)
    {
      *(archive + 5) |= 0x2000u;
      v424 = *(archive + 49);
      if (!v424)
      {
        v425 = *(archive + 1);
        if (v425)
        {
          v425 = *(v425 & 0xFFFFFFFFFFFFFFFELL);
        }

        v424 = MEMORY[0x223DA0290](v425);
        *(archive + 49) = v424;
      }

      objc_msgSend_saveToArchive_archiver_(v421, v422, v424, archiverCopy, v423);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v414, 824, v415, v416))
  {
    v429 = objc_msgSend_objectForProperty_(v8, v426, 824, v427, v428);
    v705 = v429;
    v430 = objc_opt_class();
    v432 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v431, &v705, v430, 824);
    v433 = v705;

    if (v432)
    {
      *(archive + 5) |= 0x4000u;
      v436 = *(archive + 50);
      if (!v436)
      {
        v437 = *(archive + 1);
        if (v437)
        {
          v437 = *(v437 & 0xFFFFFFFFFFFFFFFELL);
        }

        v436 = MEMORY[0x223DA0290](v437);
        *(archive + 50) = v436;
      }

      objc_msgSend_saveToArchive_archiver_(v433, v434, v436, archiverCopy, v435);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v426, 825, v427, v428))
  {
    v441 = objc_msgSend_objectForProperty_(v8, v438, 825, v439, v440);
    v704 = v441;
    v442 = objc_opt_class();
    v444 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v443, &v704, v442, 825);
    v445 = v704;

    if (v444)
    {
      *(archive + 5) |= 0x8000u;
      v448 = *(archive + 51);
      if (!v448)
      {
        v449 = *(archive + 1);
        if (v449)
        {
          v449 = *(v449 & 0xFFFFFFFFFFFFFFFELL);
        }

        v448 = MEMORY[0x223DA0290](v449);
        *(archive + 51) = v448;
      }

      objc_msgSend_saveToArchive_archiver_(v445, v446, v448, archiverCopy, v447);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v438, 826, v439, v440))
  {
    v453 = objc_msgSend_objectForProperty_(v8, v450, 826, v451, v452);
    v703 = v453;
    v454 = objc_opt_class();
    v456 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v455, &v703, v454, 826);
    v457 = v703;

    if (v456)
    {
      *(archive + 5) |= 0x10000u;
      v460 = *(archive + 52);
      if (!v460)
      {
        v461 = *(archive + 1);
        if (v461)
        {
          v461 = *(v461 & 0xFFFFFFFFFFFFFFFELL);
        }

        v460 = MEMORY[0x223DA0290](v461);
        *(archive + 52) = v460;
      }

      objc_msgSend_saveToArchive_archiver_(v457, v458, v460, archiverCopy, v459);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v450, 827, v451, v452))
  {
    v465 = objc_msgSend_objectForProperty_(v8, v462, 827, v463, v464);
    v702 = v465;
    v466 = objc_opt_class();
    v468 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v467, &v702, v466, 827);
    v469 = v702;

    if (v468)
    {
      *(archive + 5) |= 0x20000u;
      v472 = *(archive + 53);
      if (!v472)
      {
        v473 = *(archive + 1);
        if (v473)
        {
          v473 = *(v473 & 0xFFFFFFFFFFFFFFFELL);
        }

        v472 = MEMORY[0x223DA0290](v473);
        *(archive + 53) = v472;
      }

      objc_msgSend_saveToArchive_archiver_(v469, v470, v472, archiverCopy, v471);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v462, 828, v463, v464))
  {
    v477 = objc_msgSend_objectForProperty_(v8, v474, 828, v475, v476);
    v701 = v477;
    v478 = objc_opt_class();
    v480 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v479, &v701, v478, 828);
    v481 = v701;

    if (v480)
    {
      *(archive + 5) |= 0x800000u;
      v484 = *(archive + 59);
      if (!v484)
      {
        v485 = *(archive + 1);
        if (v485)
        {
          v485 = *(v485 & 0xFFFFFFFFFFFFFFFELL);
        }

        v484 = MEMORY[0x223DA0290](v485);
        *(archive + 59) = v484;
      }

      objc_msgSend_saveToArchive_archiver_(v481, v482, v484, archiverCopy, v483);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v474, 829, v475, v476))
  {
    v489 = objc_msgSend_objectForProperty_(v8, v486, 829, v487, v488);
    v700 = v489;
    v490 = objc_opt_class();
    v492 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v491, &v700, v490, 829);
    v493 = v700;

    if (v492)
    {
      *(archive + 5) |= 0x1000000u;
      v496 = *(archive + 60);
      if (!v496)
      {
        v497 = *(archive + 1);
        if (v497)
        {
          v497 = *(v497 & 0xFFFFFFFFFFFFFFFELL);
        }

        v496 = MEMORY[0x223DA0290](v497);
        *(archive + 60) = v496;
      }

      objc_msgSend_saveToArchive_archiver_(v493, v494, v496, archiverCopy, v495);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v486, 830, v487, v488))
  {
    v501 = objc_msgSend_objectForProperty_(v8, v498, 830, v499, v500);
    v699 = v501;
    v502 = objc_opt_class();
    v504 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v503, &v699, v502, 830);
    v505 = v699;

    if (v504)
    {
      *(archive + 5) |= 0x2000000u;
      v508 = *(archive + 61);
      if (!v508)
      {
        v509 = *(archive + 1);
        if (v509)
        {
          v509 = *(v509 & 0xFFFFFFFFFFFFFFFELL);
        }

        v508 = MEMORY[0x223DA0290](v509);
        *(archive + 61) = v508;
      }

      objc_msgSend_saveToArchive_archiver_(v505, v506, v508, archiverCopy, v507);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v498, 831, v499, v500))
  {
    v513 = objc_msgSend_objectForProperty_(v8, v510, 831, v511, v512);
    v698 = v513;
    v514 = objc_opt_class();
    v516 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v515, &v698, v514, 831);
    v517 = v698;

    if (v516)
    {
      *(archive + 5) |= 0x4000000u;
      v520 = *(archive + 62);
      if (!v520)
      {
        v521 = *(archive + 1);
        if (v521)
        {
          v521 = *(v521 & 0xFFFFFFFFFFFFFFFELL);
        }

        v520 = MEMORY[0x223DA0290](v521);
        *(archive + 62) = v520;
      }

      objc_msgSend_saveToArchive_archiver_(v517, v518, v520, archiverCopy, v519);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v510, 832, v511, v512))
  {
    v525 = objc_msgSend_objectForProperty_(v8, v522, 832, v523, v524);
    v697 = v525;
    v526 = objc_opt_class();
    v528 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v527, &v697, v526, 832);
    v529 = v697;

    if (v528)
    {
      *(archive + 5) |= 0x8000000u;
      v532 = *(archive + 63);
      if (!v532)
      {
        v533 = *(archive + 1);
        if (v533)
        {
          v533 = *(v533 & 0xFFFFFFFFFFFFFFFELL);
        }

        v532 = MEMORY[0x223DA0290](v533);
        *(archive + 63) = v532;
      }

      objc_msgSend_saveToArchive_archiver_(v529, v530, v532, archiverCopy, v531);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v522, 833, v523, v524))
  {
    v537 = objc_msgSend_objectForProperty_(v8, v534, 833, v535, v536);
    v696 = v537;
    v538 = objc_opt_class();
    v540 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v539, &v696, v538, 833);
    v541 = v696;

    if (v540)
    {
      *(archive + 5) |= 0x10000000u;
      v544 = *(archive + 64);
      if (!v544)
      {
        v545 = *(archive + 1);
        if (v545)
        {
          v545 = *(v545 & 0xFFFFFFFFFFFFFFFELL);
        }

        v544 = MEMORY[0x223DA0290](v545);
        *(archive + 64) = v544;
      }

      objc_msgSend_saveToArchive_archiver_(v541, v542, v544, archiverCopy, v543);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v534, 834, v535, v536))
  {
    v549 = objc_msgSend_objectForProperty_(v8, v546, 834, v547, v548);
    v695 = v549;
    v550 = objc_opt_class();
    v552 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v551, &v695, v550, 834);
    v553 = v695;

    if (v552)
    {
      *(archive + 5) |= 0x20000000u;
      v556 = *(archive + 65);
      if (!v556)
      {
        v557 = *(archive + 1);
        if (v557)
        {
          v557 = *(v557 & 0xFFFFFFFFFFFFFFFELL);
        }

        v556 = MEMORY[0x223DA0290](v557);
        *(archive + 65) = v556;
      }

      objc_msgSend_saveToArchive_archiver_(v553, v554, v556, archiverCopy, v555);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v546, 835, v547, v548))
  {
    v561 = objc_msgSend_objectForProperty_(v8, v558, 835, v559, v560);
    v694 = v561;
    v562 = objc_opt_class();
    v564 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v563, &v694, v562, 835);
    v565 = v694;

    if (v564)
    {
      *(archive + 5) |= 0x40000000u;
      v568 = *(archive + 66);
      if (!v568)
      {
        v569 = *(archive + 1);
        if (v569)
        {
          v569 = *(v569 & 0xFFFFFFFFFFFFFFFELL);
        }

        v568 = MEMORY[0x223DA0290](v569);
        *(archive + 66) = v568;
      }

      objc_msgSend_saveToArchive_archiver_(v565, v566, v568, archiverCopy, v567);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v558, 836, v559, v560))
  {
    v573 = objc_msgSend_objectForProperty_(v8, v570, 836, v571, v572);
    v693 = v573;
    v574 = objc_opt_class();
    v576 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v575, &v693, v574, 836);
    v577 = v693;

    if (v576)
    {
      *(archive + 5) |= 0x80000000;
      v580 = *(archive + 67);
      if (!v580)
      {
        v581 = *(archive + 1);
        if (v581)
        {
          v581 = *(v581 & 0xFFFFFFFFFFFFFFFELL);
        }

        v580 = MEMORY[0x223DA0290](v581);
        *(archive + 67) = v580;
      }

      objc_msgSend_saveToArchive_archiver_(v577, v578, v580, archiverCopy, v579);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v570, 837, v571, v572))
  {
    v585 = objc_msgSend_objectForProperty_(v8, v582, 837, v583, v584);
    v692 = v585;
    v586 = objc_opt_class();
    v588 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v587, &v692, v586, 837);
    v589 = v692;

    if (v588)
    {
      *(archive + 6) |= 1u;
      v592 = *(archive + 68);
      if (!v592)
      {
        v593 = *(archive + 1);
        if (v593)
        {
          v593 = *(v593 & 0xFFFFFFFFFFFFFFFELL);
        }

        v592 = MEMORY[0x223DA0290](v593);
        *(archive + 68) = v592;
      }

      objc_msgSend_saveToArchive_archiver_(v589, v590, v592, archiverCopy, v591);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v582, 838, v583, v584))
  {
    v597 = objc_msgSend_objectForProperty_(v8, v594, 838, v595, v596);
    v691 = v597;
    v598 = objc_opt_class();
    v600 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v599, &v691, v598, 838);
    v601 = v691;

    if (v600)
    {
      *(archive + 6) |= 2u;
      v604 = *(archive + 69);
      if (!v604)
      {
        v605 = *(archive + 1);
        if (v605)
        {
          v605 = *(v605 & 0xFFFFFFFFFFFFFFFELL);
        }

        v604 = MEMORY[0x223DA0290](v605);
        *(archive + 69) = v604;
      }

      objc_msgSend_saveToArchive_archiver_(v601, v602, v604, archiverCopy, v603);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v594, 788, v595, v596))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v606, 788, v607, v608);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v609, &v739, 788, v610))
    {
      v611 = v739 != 0;
      *(archive + 6) |= 0x20u;
      *(archive + 563) = v611;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v606, 789, v607, v608))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v612, 789, v613, v614);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v615, &v739, 789, v616))
    {
      v617 = v739 != 0;
      *(archive + 6) |= 0x40u;
      *(archive + 564) = v617;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v612, 790, v613, v614))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v618, 790, v619, v620);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v621, &v739, 790, v622))
    {
      v623 = v739 != 0;
      *(archive + 6) |= 0x80u;
      *(archive + 565) = v623;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v618, 792, v619, v620))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v624, 792, v625, v626);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v627, &v739, 792, v628))
    {
      v629 = v739 != 0;
      *(archive + 6) |= 0x100u;
      *(archive + 566) = v629;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v624, 794, v625, v626))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v630, 794, v631, v632);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v633, &v739, 794, v634))
    {
      v635 = v739 != 0;
      *(archive + 6) |= 0x200u;
      *(archive + 567) = v635;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v630, 796, v631, v632))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v636, 796, v637, v638);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v639, &v739, 796, v640))
    {
      v641 = v739 != 0;
      *(archive + 6) |= 0x800u;
      *(archive + 572) = v641;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v636, 791, v637, v638))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v642, 791, v643, v644);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v645, &v739, 791, v646))
    {
      v647 = v739 != 0;
      *(archive + 6) |= 0x4000u;
      *(archive + 575) = v647;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v642, 793, v643, v644))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v648, 793, v649, v650);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v651, &v739, 793, v652))
    {
      v653 = v739 != 0;
      *(archive + 6) |= 0x2000u;
      *(archive + 574) = v653;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v648, 795, v649, v650))
  {
    v739 = objc_msgSend_intValueForProperty_(v8, v654, 795, v655, v656);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v657, &v739, 795, v658))
    {
      v659 = v739 != 0;
      *(archive + 6) |= 0x8000u;
      *(archive + 576) = v659;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v654, 797, v655, v656))
  {
    v663 = objc_msgSend_objectForProperty_(v8, v660, 797, v661, v662);
    v690 = v663;
    v664 = objc_opt_class();
    v666 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v665, &v690, v664, 797);
    v667 = v690;

    if (v666)
    {
      *(archive + 4) |= 1u;
      v668 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v667, v669, v668, v670, v671);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v660, 798, v661, v662))
  {
    v675 = objc_msgSend_intValueForProperty_(v8, v672, 798, v673, v674);
    v739 = v675;
    if (TSWP::WritingDirectionType_IsValid(v675))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v672, &v739, 798, v674))
      {
        v676 = v739;
        *(archive + 6) |= 0x10000u;
        *(archive + 145) = v676;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v672, 787, v673, v674))
  {
    v680 = objc_msgSend_objectForProperty_(v8, v677, 787, v678, v679);
    v689 = v680;
    v681 = objc_opt_class();
    v683 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v682, &v689, v681, 787);
    v684 = v689;

    if (v683)
    {
      *(archive + 4) |= 0x40000u;
      v687 = *(archive + 22);
      if (!v687)
      {
        v688 = *(archive + 1);
        if (v688)
        {
          v688 = *(v688 & 0xFFFFFFFFFFFFFFFELL);
        }

        v687 = sub_2216E3160(v688);
        *(archive + 22) = v687;
      }

      objc_msgSend_saveToArchive_archiver_(v684, v685, v687, archiverCopy, v686);
    }
  }
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[160], v6, v7);

  if (*(v8 + 24))
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = MEMORY[0x277D80BD0];
  }

  v26.receiver = self;
  v26.super_class = TSTTableStyle;
  [(TSTTableStyle *)&v26 loadFromArchive:v9 unarchiver:unarchiverCopy];
  v10 = *(v8 + 40);
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D80AB8]);
    v15 = objc_msgSend_initWithCapacity_(v11, v12, v10, v13, v14);
    if (*(v8 + 32))
    {
      v16 = *(v8 + 32);
    }

    else
    {
      v16 = &unk_2812E9C60;
    }

    sub_2216D9570(v25, v16);
    objc_msgSend_loadTableStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v17, v15, v25, unarchiverCopy);
    if ((v25[18] & 4) != 0)
    {
      v21 = objc_msgSend_containsProperty_(v15, v18, 787, v19, v20);
    }

    else
    {
      v21 = 1;
    }

    v22 = *MEMORY[0x277D80AF0];
    v23 = *(&self->super.super.super.isa + v22);
    *(&self->super.super.super.isa + v22) = v15;

    sub_2216D9B78(v25);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_221181DC4, off_2812E4498[160], v6);

  *(v7 + 16) |= 1u;
  v8 = *(v7 + 24);
  if (!v8)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA03A0](v9);
    *(v7 + 24) = v8;
  }

  v20.receiver = self;
  v20.super_class = TSTTableStyle;
  [(TSTTableStyle *)&v20 saveToArchive:v8 archiver:archiverCopy];
  v14 = objc_msgSend_overrideCount(self, v10, v11, v12, v13);
  if (v14)
  {
    v17 = *(v7 + 16);
    *(v7 + 40) = v14;
    *(v7 + 16) = v17 | 6;
    v18 = *(v7 + 32);
    if (!v18)
    {
      v19 = *(v7 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_2216E31EC(v19);
      *(v7 + 32) = v18;
    }

    objc_msgSend_saveTableStylePropertiesToArchive_archiver_(self, v15, v18, archiverCopy, v16);
  }
}

- (void)validate
{
  v6 = objc_msgSend_stylesheet(self, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableStyle validate]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 929, 0, "orphaned table style %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_stylesheet(self, v7, v8, v9, v10);
  selfCopy = self;
  v24 = v22;
  if (objc_msgSend_containsStyle_(v24, v25, selfCopy, v26, v27))
  {
    v32 = objc_msgSend_stylesheet(selfCopy, v28, v29, v30, v31);

    if (v32 == v24)
    {
      return;
    }
  }

  else
  {
  }

  v36 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableStyle validate]", v34, v35);
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v39, v40);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 932, 0, "Table style not in its stylesheet");

  v47 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v47, v43, v44, v45, v46);
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  comparisonCopy = comparison;
  v9 = objc_msgSend_curatedTableStylePropertySetForCrossDocumentPasteMasterComparison(TSTTableStyleNetwork, v5, v6, v7, v8);
  LOBYTE(self) = objc_msgSend_hasEqualValues_forProperties_(self, v10, comparisonCopy, v9, v11);

  return self;
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v6 = *&property;
  valueCopy = value;
  v13 = valueCopy;
  if ((v6 - 771) > 0xF)
  {
    v19 = *&transform->c;
    v23 = *&transform->a;
    v24 = v19;
    v25 = *&transform->tx;
    v22.receiver = self;
    v22.super_class = TSTTableStyle;
    v18 = [(TSTTableStyle *)&v22 boxedValueForProperty:v6 oldBoxedValue:valueCopy transformedByTransform:&v23];
  }

  else if (!valueCopy || objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11, v12) == valueCopy)
  {
    v18 = v13;
  }

  else
  {
    v17 = *&transform->c;
    v23 = *&transform->a;
    v24 = v17;
    v25 = *&transform->tx;
    v18 = objc_msgSend_strokeByTransformingByTransform_(v13, v14, &v23, v15, v16);
  }

  v20 = v18;

  return v20;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  v13 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v9, v10, v11, v12);
  v18 = objc_msgSend_propertyMap(self, v14, v15, v16, v17);
  v23 = objc_msgSend_allProperties(v18, v19, v20, v21, v22);
  objc_msgSend_addProperties_(v13, v24, v23, v25, v26);

  v31 = objc_msgSend_propertyMap(v8, v27, v28, v29, v30);
  v36 = objc_msgSend_allProperties(v31, v32, v33, v34, v35);
  objc_msgSend_addProperties_(v13, v37, v36, v38, v39);

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 5;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_221181A20;
  v47[3] = &unk_27845F830;
  v47[4] = self;
  v40 = v8;
  v48 = v40;
  v50 = &v51;
  v41 = contextCopy;
  v49 = v41;
  objc_msgSend_enumeratePropertiesUsingBlock_(v13, v42, v47, v43, v44);
  v45 = v52[3];

  _Block_object_dispose(&v51, 8);
  return v45;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v12 = objc_msgSend_copy(self, v8, v9, v10, v11);
  v17 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v13, v14, v15, v16);
  v22 = objc_msgSend_propertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_allProperties(v22, v23, v24, v25, v26);
  objc_msgSend_addProperties_(v17, v28, v27, v29, v30);

  v35 = objc_msgSend_propertyMap(v7, v31, v32, v33, v34);
  v40 = objc_msgSend_allProperties(v35, v36, v37, v38, v39);
  objc_msgSend_addProperties_(v17, v41, v40, v42, v43);

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_221181CF8;
  v52[3] = &unk_27845F858;
  v52[4] = self;
  v44 = v7;
  v53 = v44;
  fractionCopy = fraction;
  v45 = v12;
  v54 = v45;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v46, v52, v47, v48);
  v49 = v54;
  v50 = v45;

  return v45;
}

@end