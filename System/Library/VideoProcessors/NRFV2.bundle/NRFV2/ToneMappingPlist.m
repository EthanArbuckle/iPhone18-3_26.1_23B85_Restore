@interface ToneMappingPlist
+ (void)initialize;
- (ToneMappingPlist)init;
- (int)readPlist:(id)a3;
- (void)applyOverrides;
@end

@implementation ToneMappingPlist

+ (void)initialize
{
  dword_2A18C2374 = 2;
  dword_2A18C2370 = 2;
  dword_2A18C2364 = -1;
  dword_2A18C235C = 2;
  dword_2A18C2368 = 2;
  dword_2A18C236C = 2;
  dword_2A18C2360 = 2;
}

- (ToneMappingPlist)init
{
  v16.receiver = self;
  v16.super_class = ToneMappingPlist;
  v2 = [(ToneMappingPlist *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(SRLPlist);
    srl = v2->srl;
    v2->srl = v3;

    v5 = objc_alloc_init(SRLv2Plist);
    srlv2 = v2->srlv2;
    v2->srlv2 = v5;

    v7 = objc_alloc_init(TCRPlist);
    tcr = v2->tcr;
    v2->tcr = v7;

    v9 = objc_alloc_init(ToneMapSmoothingPlist);
    mstm = v2->mstm;
    v2->mstm = v9;

    v11 = objc_alloc_init(ToneMapSmoothingPlist);
    mstmWithSRL = v2->mstmWithSRL;
    v2->mstmWithSRL = v11;

    v13 = objc_alloc_init(SFFPlist);
    sff = v2->sff;
    v2->sff = v13;
  }

  return v2;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  self->srlVersion = objc_msgSend_cmi_unsignedIntValueForKey_defaultValue_found_(v4, v5, @"EnableSRL", 0, 0);
  self->enableSFF = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v6, @"EnableSFF", 0, 0);
  self->enableMSTM = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v7, @"EnableMSTM", 0, 0);
  self->enableTCR = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v8, @"EnableTCR", 0, 0);
  self->enableSTF = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v9, @"EnableSTF", 0, 0);
  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"StfTuningParameters", v11);
  stfTuningParameters = self->stfTuningParameters;
  self->stfTuningParameters = v12;

  if (!self->srlVersion)
  {
LABEL_4:
    v21 = 0;
    goto LABEL_6;
  }

  srl = self->srl;
  v17 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"SRL", v15);
  Plist = objc_msgSend_readPlist_(srl, v18, v17, v19);
  v21 = Plist == 0;

  srlv2 = self->srlv2;
  v25 = objc_msgSend_objectForKeyedSubscript_(v4, v23, @"SRLv2", v24);
  v28 = objc_msgSend_readPlist_(srlv2, v26, v25, v27);

  srlVersion = self->srlVersion;
  if (srlVersion != 2)
  {
    if (srlVersion == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v21 = (Plist | v28) == 0;
LABEL_6:
  if (self->enableSFF)
  {
    sff = self->sff;
    v31 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"SFF", v15);
    v34 = objc_msgSend_readPlist_(sff, v32, v31, v33) == 0;
  }

  else
  {
    v34 = 0;
  }

  if (self->enableMSTM)
  {
    mstm = self->mstm;
    v36 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"MSTM", v15);
    v39 = objc_msgSend_readPlist_(mstm, v37, v36, v38) == 0;
  }

  else
  {
    v39 = 0;
  }

  if (self->srlVersion)
  {
    mstmWithSRL = self->mstmWithSRL;
    v41 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"MSTMWithSRL", v15);
    v44 = objc_msgSend_readPlist_(mstmWithSRL, v42, v41, v43) != 0;
  }

  else
  {
    v44 = 1;
  }

  if (self->enableTCR)
  {
    tcr = self->tcr;
    v46 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"ToneCurveRegularization", v15);
    v49 = objc_msgSend_readPlist_(tcr, v47, v46, v48) == 0;
  }

  else
  {
    v49 = 0;
  }

  if (self->srlVersion && (v44 || !v21 || !v39))
  {
    self->srlVersion = 0;
  }

  if (!v49 && self->enableTCR)
  {
    self->enableTCR = 0;
  }

  if (!v34 && self->enableSFF)
  {
    self->enableSFF = 0;
  }

  if (!v39 && self->enableMSTM)
  {
    self->enableMSTM = 0;
  }

  self->enableLocalContrast = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v14, @"EnableLocalContrast", 0, 0);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v50, @"DetailEnhanceLeftLimit", 0, 0.0);
  self->detailEnhanceLeftLimit = v51;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v52, @"DetailEnhanceRightLimit", 0, 0.0);
  self->detailEnhanceRightLimit = v53;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v54, @"DetailEnhanceStrength", 0, 0.0);
  self->detailEnhanceStrength = v55;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v56, @"ChromaGainAdjustmentPower", 0, 0.0);
  self->chromaGainAdjustmentPower = v57;
  self->enableGlobalContrast = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v58, @"EnableGlobalContrast", 0, 0);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v59, @"BlackSubtractionClippingRatio", 0, 0.0);
  self->blackSubtractionClippingRatio = v60;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v61, @"BlackSubtractionLowLimit", 0, 0.0);
  self->blackSubtractionLowLimit = v62;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v63, @"MaximumContrastStrength", 0, 0.0);
  self->maximumContrastStrength = v64;
  self->GreenSkyFixEnabled = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v65, @"GreenSkyFixEnabled", 0, 0);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v66, @"GreenSkyFixEVZeroTargetGainThreshold", 0, 0.0);
  self->GreenSkyFixEVZeroTargetGainThreshold = v67;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v68, @"GreenSkyFixCCTThreshold", 0, 0.0);
  self->GreenSkyFixCCTThreshold = v69;
  self->YellowSatFixEnabled = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v70, @"YellowSatFixEnabled", 0, 0);
  self->maskedSkyFixEnabled = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v71, @"MaskedSkyFixEnabled", 0, 0);
  self->maskedSkyCubeVersion = objc_msgSend_cmi_intValueForKey_defaultValue_found_(v4, v72, @"MaskedSkyCubeVersion", 0, 0);

  return 0;
}

- (void)applyOverrides
{
  if (dword_2A18C2364 != -1)
  {
    self->srlVersion = dword_2A18C2364;
  }

  if (dword_2A18C2368 <= 1)
  {
    self->enableSFF = dword_2A18C2368 == 1;
  }

  if (dword_2A18C236C <= 1)
  {
    self->enableMSTM = dword_2A18C236C == 1;
  }

  if (dword_2A18C235C <= 1)
  {
    self->enableTCR = dword_2A18C235C == 1;
  }

  if (dword_2A18C2370 <= 1)
  {
    self->enableLocalContrast = dword_2A18C2370 == 1;
  }

  if (dword_2A18C2374 <= 1)
  {
    self->enableGlobalContrast = dword_2A18C2374 == 1;
  }

  if (dword_2A18C2360 <= 1)
  {
    self->enableSTF = dword_2A18C2360 == 1;
  }
}

@end