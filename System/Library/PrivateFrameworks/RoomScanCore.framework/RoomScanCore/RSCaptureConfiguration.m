@interface RSCaptureConfiguration
- (RSCaptureConfiguration)init;
- (RSCaptureConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation RSCaptureConfiguration

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_liveResultEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v6, @"liveResultEnabled");

  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, self->_textCoachingEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"textCoachingEnabled");

  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_onboardingEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"onboardingEnabled");

  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, self->_coachingMaxFrameRate);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v16, v15, @"coachingMaxFrameRate");

  v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, self->_maxFramerate);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v19, v18, @"maxFramerate");

  v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, self->_mirrorDetectionEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v22, v21, @"mirrorDetectionEnabled");

  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, self->_objectBeautificationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v24, @"objectBeautificationEnabled");

  v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, self->_standardizationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v28, v27, @"standardizationEnabled");

  v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, self->_markerCoachingEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v30, @"markerCoachingEnabled");

  v33 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, self->_doorWindowBeautificationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v34, v33, @"doorWindowBeautificationEnabled");

  v36 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v35, self->_curvedWallEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v37, v36, @"curvedWallEnabled");

  v39 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, self->_driftDetectionEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v40, v39, @"driftDetectionEnabled");

  v42 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v41, self->_nonUniformHeightEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v43, v42, @"nonUniformHeightEnabled");

  v45 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v44, self->_openingReplaceOpendoorEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v46, v45, @"openingReplaceOpendoorEnabled");

  v48 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v47, self->_opendoorReplaceOpeningEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v48, @"opendoorReplaceOpeningEnabled");

  v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v50, self->_doorReplaceOpeningEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v52, v51, @"doorReplaceOpeningEnabled");

  v54 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v53, self->_boundaryRefinementEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v55, v54, @"boundaryRefinementEnabled");

  v57 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v56, self->_bayWindowRecessedAreaEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v58, v57, @"bayWindowRecessedAreaEnabled");

  return v4;
}

- (RSCaptureConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v83.receiver = self;
  v83.super_class = RSCaptureConfiguration;
  v6 = [(RSCaptureConfiguration *)&v83 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"liveResultEnabled");
    v6->_liveResultEnabled = objc_msgSend_BOOLValue(v7, v8, v9);

    v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"textCoachingEnabled");
    v6->_textCoachingEnabled = objc_msgSend_BOOLValue(v11, v12, v13);

    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"onboardingEnabled");
    v6->_onboardingEnabled = objc_msgSend_BOOLValue(v15, v16, v17);

    v19 = objc_msgSend_objectForKeyedSubscript_(v4, v18, @"coachingMaxFrameRate");
    v6->_coachingMaxFrameRate = objc_msgSend_intValue(v19, v20, v21);

    v23 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"maxFramerate");
    v6->_maxFramerate = objc_msgSend_intValue(v23, v24, v25);

    v27 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"mirrorDetectionEnabled");
    v6->_mirrorDetectionEnabled = objc_msgSend_BOOLValue(v27, v28, v29);

    v31 = objc_msgSend_objectForKeyedSubscript_(v4, v30, @"objectBeautificationEnabled");
    v6->_objectBeautificationEnabled = objc_msgSend_BOOLValue(v31, v32, v33);

    v35 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"standardizationEnabled");
    v6->_standardizationEnabled = objc_msgSend_BOOLValue(v35, v36, v37);

    v39 = objc_msgSend_objectForKeyedSubscript_(v4, v38, @"markerCoachingEnabled");
    v6->_markerCoachingEnabled = objc_msgSend_BOOLValue(v39, v40, v41);

    v43 = objc_msgSend_objectForKeyedSubscript_(v4, v42, @"doorWindowBeautificationEnabled");
    v6->_doorWindowBeautificationEnabled = objc_msgSend_BOOLValue(v43, v44, v45);

    v47 = objc_msgSend_objectForKeyedSubscript_(v4, v46, @"curvedWallEnabled");
    v6->_curvedWallEnabled = objc_msgSend_BOOLValue(v47, v48, v49);

    v51 = objc_msgSend_objectForKeyedSubscript_(v4, v50, @"driftDetectionEnabled");
    v6->_driftDetectionEnabled = objc_msgSend_BOOLValue(v51, v52, v53);

    v55 = objc_msgSend_objectForKeyedSubscript_(v4, v54, @"nonUniformHeightEnabled");
    v6->_nonUniformHeightEnabled = objc_msgSend_BOOLValue(v55, v56, v57);

    v59 = objc_msgSend_objectForKeyedSubscript_(v4, v58, @"openingReplaceOpendoorEnabled");
    v6->_openingReplaceOpendoorEnabled = objc_msgSend_BOOLValue(v59, v60, v61);

    v63 = objc_msgSend_objectForKeyedSubscript_(v4, v62, @"opendoorReplaceOpeningEnabled");
    v6->_opendoorReplaceOpeningEnabled = objc_msgSend_BOOLValue(v63, v64, v65);

    v67 = objc_msgSend_objectForKeyedSubscript_(v4, v66, @"doorReplaceOpeningEnabled");
    v6->_doorReplaceOpeningEnabled = objc_msgSend_BOOLValue(v67, v68, v69);

    v71 = objc_msgSend_objectForKeyedSubscript_(v4, v70, @"boundaryRefinementEnabled");
    v6->_boundaryRefinementEnabled = objc_msgSend_BOOLValue(v71, v72, v73);

    v75 = objc_msgSend_objectForKeyedSubscript_(v4, v74, @"bayWindowRecessedAreaEnabled");
    v6->_bayWindowRecessedAreaEnabled = objc_msgSend_BOOLValue(v75, v76, v77);

    v79 = objc_msgSend_objectForKeyedSubscript_(v4, v78, @"uniformHeightPolygonEnabled");
    v6->_uniformHeightPolygonEnabled = objc_msgSend_BOOLValue(v79, v80, v81);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  *(result + 9) = self->_liveResultEnabled;
  *(result + 8) = self->_windowDoorDetectionEnabled;
  *(result + 4) = self->_maxFramerate;
  *(result + 10) = self->_textCoachingEnabled;
  *(result + 11) = self->_onboardingEnabled;
  *(result + 23) = self->_mirrorDetectionEnabled;
  *(result + 12) = self->_objectBeautificationEnabled;
  *(result + 13) = self->_standardizationEnabled;
  *(result + 14) = self->_markerCoachingEnabled;
  *(result + 15) = self->_doorWindowBeautificationEnabled;
  *(result + 24) = self->_curvedWallEnabled;
  *(result + 16) = self->_driftDetectionEnabled;
  *(result + 17) = self->_nonUniformHeightEnabled;
  *(result + 18) = self->_openingReplaceOpendoorEnabled;
  *(result + 19) = self->_opendoorReplaceOpeningEnabled;
  *(result + 20) = self->_doorReplaceOpeningEnabled;
  *(result + 21) = self->_boundaryRefinementEnabled;
  *(result + 22) = self->_bayWindowRecessedAreaEnabled;
  *(result + 25) = self->_uniformHeightPolygonEnabled;
  return result;
}

- (RSCaptureConfiguration)init
{
  v3.receiver = self;
  v3.super_class = RSCaptureConfiguration;
  result = [(RSCaptureConfiguration *)&v3 init];
  if (result)
  {
    *&result->_windowDoorDetectionEnabled = 16843009;
    *&result->_maxFramerate = xmmword_2623A7B10;
    *&result->_driftDetectionEnabled = 65793;
    *&result->_doorReplaceOpeningEnabled = 257;
    *&result->_bayWindowRecessedAreaEnabled = 0;
  }

  return result;
}

@end