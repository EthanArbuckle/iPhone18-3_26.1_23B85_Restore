@interface RSGenerationConfiguration
- (RSGenerationConfiguration)init;
- (RSGenerationConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation RSGenerationConfiguration

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_windowDoorDetectionEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v6, @"doorWindowDetectionEnabled");

  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, self->_objectBeautificationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"objectBeautificationEnabled");

  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_chairBeautificationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"chairBeautificationEnabled");

  v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v14, self->_standardizationEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v16, v15, @"standardizationEnabled");

  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, self->_wallOpeningMergeEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v19, v18, @"wallOpeningMergeEnabled");

  v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, self->_openingReplaceOpendoorEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v22, v21, @"openingReplaceOpendoorEnabled");

  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, self->_nonUniformHeightEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v24, @"nonUniformHeightEnabled");

  v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, self->_opendoorReplaceOpeningEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v28, v27, @"opendoorReplaceOpeningEnabled");

  v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, self->_roomTypeEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v30, @"roomTypeEnabled");

  v33 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, self->_curveEnabled);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v34, v33, @"curveEnabled");

  return v4;
}

- (RSGenerationConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = RSGenerationConfiguration;
  v6 = [(RSGenerationConfiguration *)&v47 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"doorWindowDetectionEnabled");
    v6->_windowDoorDetectionEnabled = objc_msgSend_BOOLValue(v7, v8, v9);

    v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"objectBeautificationEnabled");
    v6->_objectBeautificationEnabled = objc_msgSend_BOOLValue(v11, v12, v13);

    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"chairBeautificationEnabled");
    v6->_chairBeautificationEnabled = objc_msgSend_BOOLValue(v15, v16, v17);

    v19 = objc_msgSend_objectForKeyedSubscript_(v4, v18, @"standardizationEnabled");
    v6->_standardizationEnabled = objc_msgSend_BOOLValue(v19, v20, v21);

    v23 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"wallOpeningMergeEnabled");
    v6->_wallOpeningMergeEnabled = objc_msgSend_BOOLValue(v23, v24, v25);

    v27 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"openingReplaceOpendoorEnabled");
    v6->_openingReplaceOpendoorEnabled = objc_msgSend_BOOLValue(v27, v28, v29);

    v31 = objc_msgSend_objectForKeyedSubscript_(v4, v30, @"nonUniformHeightEnabled");
    v6->_nonUniformHeightEnabled = objc_msgSend_BOOLValue(v31, v32, v33);

    v35 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"opendoorReplaceOpeningEnabled");
    v6->_opendoorReplaceOpeningEnabled = objc_msgSend_BOOLValue(v35, v36, v37);

    v39 = objc_msgSend_objectForKeyedSubscript_(v4, v38, @"roomTypeEnabled");
    v6->_roomTypeEnabled = objc_msgSend_BOOLValue(v39, v40, v41);

    v43 = objc_msgSend_objectForKeyedSubscript_(v4, v42, @"curveEnabled");
    v6->_curveEnabled = objc_msgSend_BOOLValue(v43, v44, v45);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  *(result + 8) = self->_windowDoorDetectionEnabled;
  *(result + 9) = self->_objectBeautificationEnabled;
  *(result + 10) = self->_chairBeautificationEnabled;
  *(result + 11) = self->_standardizationEnabled;
  *(result + 12) = self->_wallOpeningMergeEnabled;
  *(result + 13) = self->_openingReplaceOpendoorEnabled;
  *(result + 14) = self->_nonUniformHeightEnabled;
  *(result + 15) = self->_opendoorReplaceOpeningEnabled;
  *(result + 16) = self->_roomTypeEnabled;
  *(result + 17) = self->_curveEnabled;
  return result;
}

- (RSGenerationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = RSGenerationConfiguration;
  result = [(RSGenerationConfiguration *)&v3 init];
  if (result)
  {
    *&result->_windowDoorDetectionEnabled = 16843009;
    *&result->_wallOpeningMergeEnabled = 1;
    *&result->_nonUniformHeightEnabled = 16843009;
  }

  return result;
}

@end