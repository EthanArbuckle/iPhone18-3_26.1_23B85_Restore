@interface SemanticStylesPlist
- (const)bgTuningForSceneType:(unsigned int)a3;
- (int)readBackgroundTuning:(id)a3 forSceneType:(unsigned int)a4;
- (int)readForegroundTuning:(id)a3;
- (int)readPlist:(id)a3;
- (int)readToneBiasRemap:(id)a3;
@end

@implementation SemanticStylesPlist

- (const)bgTuningForSceneType:(unsigned int)a3
{
  if (a3 <= 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  return &self->_bgTuning[v3];
}

- (int)readToneBiasRemap:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"ZeroPoint", v6);
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = 25;
  }

  objc_msgSend_floatValue(v10, v7, v8, v9);
  v13 = v12;

  self->_toneBiasRemap.zeroPoint = v13;
  v19 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"NegCutoff", v15);
  if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 25;
  }

  objc_msgSend_floatValue(v19, v16, v17, v18);
  v21 = v20;

  self->_toneBiasRemap.negCutoff = v21;
  v27 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"PosCutoff", v23);
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 25;
  }

  objc_msgSend_floatValue(v27, v24, v25, v26);
  v29 = v28;

  self->_toneBiasRemap.posCutoff = v29;
  return v11;
}

- (int)readBackgroundTuning:(id)a3 forSceneType:(unsigned int)a4
{
  v157 = 0;
  v6 = a3;
  v7 = sub_29586565C(a4);
  v10 = objc_msgSend_stringByAppendingPathComponent_(@"Background", v8, v7, v9);
  v12 = sub_29586E880(v6, v7, &v157, v11);

  if (v12)
  {
    v15 = &self->_bgTuning[a4];
    v16 = objc_msgSend_stringByAppendingPathComponent_(v10, v13, @"Positive", v14);

    v18 = sub_29586E880(v12, @"Positive", &v157, v17);
    v22 = v18;
    if (v18)
    {
      v26 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"Tide", v21);
      if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v26, v23, v24, v25);
      v28 = v27;

      v15->pos.tide = v28;
      v34 = objc_msgSend_objectForKeyedSubscript_(v22, v29, @"Light", v30);
      if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v34, v31, v32, v33);
      v36 = v35;

      v15->pos.light = v36;
      v42 = objc_msgSend_objectForKeyedSubscript_(v22, v37, @"Shadow", v38);
      if (!v42 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v42, v39, v40, v41);
      v44 = v43;

      v15->pos.shadow = v44;
      v50 = objc_msgSend_objectForKeyedSubscript_(v22, v45, @"BrightSat", v46);
      if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v50, v47, v48, v49);
      v52 = v51;

      v15->pos.brightSat = v52;
      v58 = objc_msgSend_objectForKeyedSubscript_(v22, v53, @"Sat", v54);
      if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v58, v55, v56, v57);
      v60 = v59;

      v15->pos.sat = v60;
      v66 = objc_msgSend_objectForKeyedSubscript_(v22, v61, @"Exposure", v62);
      if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v66, v63, v64, v65);
      v68 = v67;

      v15->pos.exposure = v68;
      v74 = objc_msgSend_objectForKeyedSubscript_(v22, v69, @"Brightness", v70);
      if (!v74 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v74, v71, v72, v73);
      v76 = v75;

      v15->pos.brightness = v76;
      v82 = objc_msgSend_objectForKeyedSubscript_(v22, v77, @"Contrast", v78);
      if (!v82 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v82, v79, v80, v81);
      v84 = v83;

      v15->pos.contrast = v84;
    }

    v85 = objc_msgSend_stringByDeletingLastPathComponent(v16, v19, v20, v21);

    v10 = objc_msgSend_stringByAppendingPathComponent_(v85, v86, @"Negative", v87);

    v89 = sub_29586E880(v12, @"Negative", &v157, v88);
    v92 = v89;
    if (v89)
    {
      v96 = objc_msgSend_objectForKeyedSubscript_(v89, v90, @"Tide", v91);
      if (!v96 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v96, v93, v94, v95);
      v98 = v97;

      v15->neg.tide = v98;
      v104 = objc_msgSend_objectForKeyedSubscript_(v92, v99, @"Light", v100);
      if (!v104 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v104, v101, v102, v103);
      v106 = v105;

      v15->neg.light = v106;
      v112 = objc_msgSend_objectForKeyedSubscript_(v92, v107, @"Shadow", v108);
      if (!v112 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v112, v109, v110, v111);
      v114 = v113;

      v15->neg.shadow = v114;
      v120 = objc_msgSend_objectForKeyedSubscript_(v92, v115, @"BrightSat", v116);
      if (!v120 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v120, v117, v118, v119);
      v122 = v121;

      v15->neg.brightSat = v122;
      v128 = objc_msgSend_objectForKeyedSubscript_(v92, v123, @"Sat", v124);
      if (!v128 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v128, v125, v126, v127);
      v130 = v129;

      v15->neg.sat = v130;
      v136 = objc_msgSend_objectForKeyedSubscript_(v92, v131, @"Exposure", v132);
      if (!v136 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v136, v133, v134, v135);
      v138 = v137;

      v15->neg.exposure = v138;
      v144 = objc_msgSend_objectForKeyedSubscript_(v92, v139, @"Brightness", v140);
      if (!v144 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v144, v141, v142, v143);
      v146 = v145;

      v15->neg.brightness = v146;
      v152 = objc_msgSend_objectForKeyedSubscript_(v92, v147, @"Contrast", v148);
      if (!v152 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v157 = 25;
      }

      objc_msgSend_floatValue(v152, v149, v150, v151);
      v154 = v153;

      v15->neg.contrast = v154;
    }

    v155 = v157;
  }

  else
  {
    v155 = v157;
  }

  return v155;
}

- (int)readForegroundTuning:(id)a3
{
  v4 = a3;
  v85 = 0;
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"PersonMix", v6);
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v85 = 25;
  }

  objc_msgSend_floatValue(v10, v7, v8, v9);
  v12 = v11;

  self->_fgTuning.personMix = v12;
  v18 = objc_msgSend_objectForKeyedSubscript_(v4, v13, @"SkinMix", v14);
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v85 = 25;
  }

  objc_msgSend_floatValue(v18, v15, v16, v17);
  v20 = v19;

  self->_fgTuning.skinMix = v20;
  v23 = objc_msgSend_stringByAppendingPathComponent_(@"Foreground", v21, @"Warm", v22);
  v25 = sub_29586E880(v4, @"Warm", &v85, v24);
  v29 = v25;
  if (v25)
  {
    v33 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"FaceI", v28);
    if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v33, v30, v31, v32);
    v35 = v34;

    self->_fgTuning.warm.faceI = v35;
    v41 = objc_msgSend_objectForKeyedSubscript_(v29, v36, @"FaceQ", v37);
    if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v41, v38, v39, v40);
    v43 = v42;

    self->_fgTuning.warm.faceQ = v43;
    v49 = objc_msgSend_objectForKeyedSubscript_(v29, v44, @"UnderTone", v45);
    if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v49, v46, v47, v48);
    v51 = v50;

    self->_fgTuning.warm.underTone = v51;
  }

  v52 = objc_msgSend_stringByDeletingLastPathComponent(v23, v26, v27, v28);

  v55 = objc_msgSend_stringByAppendingPathComponent_(v52, v53, @"Cool", v54);

  v57 = sub_29586E880(v4, @"Cool", &v85, v56);
  v60 = v57;
  if (v57)
  {
    v64 = objc_msgSend_objectForKeyedSubscript_(v57, v58, @"FaceI", v59);
    if (!v64 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v64, v61, v62, v63);
    v66 = v65;

    self->_fgTuning.cool.faceI = v66;
    v72 = objc_msgSend_objectForKeyedSubscript_(v60, v67, @"FaceQ", v68);
    if (!v72 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v72, v69, v70, v71);
    v74 = v73;

    self->_fgTuning.cool.faceQ = v74;
    v80 = objc_msgSend_objectForKeyedSubscript_(v60, v75, @"UnderTone", v76);
    if (!v80 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v85 = 25;
    }

    objc_msgSend_floatValue(v80, v77, v78, v79);
    v82 = v81;

    self->_fgTuning.cool.underTone = v82;
  }

  v83 = v85;

  return v83;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"ToneBiasRemap", v6);
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_readToneBiasRemap_(self, v7, v9, v8);
    }
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"Background", v8);

  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = 0;
    do
    {
      BackgroundTuning_forSceneType = objc_msgSend_readBackgroundTuning_forSceneType_(self, v11, v10, v12);
      if (BackgroundTuning_forSceneType)
      {
        ForegroundTuning = BackgroundTuning_forSceneType;
        sub_2958C9F74();
        goto LABEL_16;
      }

      v12 = (v12 + 1);
    }

    while (v12 != 4);
    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"Foreground", v14);

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ForegroundTuning = objc_msgSend_readForegroundTuning_(self, v16, v15, v17);
      }

      else
      {
        ForegroundTuning = 25;
      }

      v10 = v15;
    }

    else
    {
      v10 = 0;
      ForegroundTuning = 25;
    }
  }

  else
  {
    ForegroundTuning = 25;
    FigDebugAssert3();
  }

LABEL_16:

  return ForegroundTuning;
}

@end