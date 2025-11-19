@interface CMIVideoDeghostingBrightLightTuningParamsV1
- (BrightLightTuning)tuningParams;
- (CMIVideoDeghostingBrightLightTuningParamsV1)init;
- (int)readPlist:(id)a3;
- (void)setDefaultTuningParams;
- (void)setTuningParams:(BrightLightTuning *)a3;
@end

@implementation CMIVideoDeghostingBrightLightTuningParamsV1

- (void)setDefaultTuningParams
{
  v25 = xmmword_27D58;
  *v26 = 0x3B03126F3CF5C28FLL;
  *&v26[24] = unk_27D80;
  *&v26[8] = xmmword_27D70;
  *&v26[56] = unk_27DA0;
  *&v26[40] = xmmword_27D90;
  v21 = *&v26[16];
  v22 = *&v26[32];
  v23 = *&v26[48];
  *v24 = unk_27DA8;
  v19 = xmmword_27D58;
  v20 = *v26;
  *&v24[8] = xmmword_27DC0;
  v12 = xmmword_27D58;
  v13 = *v26;
  v18 = 0x3DCCCCCD3E800000;
  v16 = *&v26[48];
  v17 = *v24;
  v14 = *&v26[16];
  v15 = *&v26[32];
  v2 = 256;
  v3 = xmmword_27DB0;
  v4 = 0;
  v8 = *&v26[32];
  v9 = *&v26[48];
  v10 = *v24;
  v11 = 0x3DCCCCCD3E800000;
  v5 = xmmword_27D58;
  v6 = *v26;
  v7 = *&v26[16];
  [(CMIVideoDeghostingBrightLightTuningParamsV1 *)self setTuningParams:&v2];
}

- (CMIVideoDeghostingBrightLightTuningParamsV1)init
{
  v4.receiver = self;
  v4.super_class = CMIVideoDeghostingBrightLightTuningParamsV1;
  v2 = [(CMIVideoDeghostingBrightLightTuningParamsV1 *)&v4 init];
  [(CMIVideoDeghostingBrightLightTuningParamsV1 *)v2 setDefaultTuningParams];
  return v2;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"enabled"];

  if (!v5)
  {
    sub_19028();
    goto LABEL_57;
  }

  v6 = [v4 objectForKeyedSubscript:@"enabled"];
  self->_tuningParams.enabled = [v6 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"useClippingData"];

  if (!v7)
  {
    sub_18FD0();
    goto LABEL_57;
  }

  v8 = [v4 objectForKeyedSubscript:@"useClippingData"];
  self->_tuningParams.useClippingData = [v8 BOOLValue];

  v9 = [v4 objectForKeyedSubscript:@"clipping"];
  if (!v9)
  {
    sub_18F78();
    goto LABEL_57;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"paddingRatio"];

  if (!v11)
  {
    sub_18F08(v10);
    goto LABEL_57;
  }

  v12 = [v10 objectForKeyedSubscript:@"paddingRatio"];
  [v12 floatValue];
  self->_tuningParams.clippingDataParams.paddingRatio = v13;

  v14 = [v10 objectForKeyedSubscript:@"minClippedPixelRatio"];

  if (!v14)
  {
    sub_18E98(v10);
    goto LABEL_57;
  }

  v15 = [v10 objectForKeyedSubscript:@"minClippedPixelRatio"];
  [v15 floatValue];
  self->_tuningParams.clippingDataParams.minClippedPixelRatio = v16;

  v17 = [v10 objectForKeyedSubscript:@"clippedPixelRatio"];

  if (!v17)
  {
    sub_18E28(v10);
    goto LABEL_57;
  }

  v18 = [v10 objectForKeyedSubscript:@"clippedPixelRatio"];
  [v18 floatValue];
  self->_tuningParams.clippingDataParams.clippedPixelRatio = v19;

  v20 = [v10 objectForKeyedSubscript:@"maxClippedTilesCount"];

  if (!v20)
  {
    sub_18DB8(v10);
    goto LABEL_57;
  }

  v21 = [v10 objectForKeyedSubscript:@"maxClippedTilesCount"];
  [v21 floatValue];
  self->_tuningParams.clippingDataParams.maxClippedTilesCount = v22;

  v23 = [v4 objectForKeyedSubscript:@"detection"];
  if (!v23)
  {
    sub_18D48(v10);
    goto LABEL_57;
  }

  v24 = v23;
  v25 = [v23 objectForKeyedSubscript:@"brightness"];
  v26 = v25;
  if (!v25)
  {
    sub_18CF0();
LABEL_56:

    goto LABEL_57;
  }

  v27 = [v25 objectForKeyedSubscript:@"threshold"];

  if (!v27)
  {
    sub_18C98();
    goto LABEL_56;
  }

  v28 = [v26 objectForKeyedSubscript:@"threshold"];
  [v28 floatValue];
  self->_tuningParams.blDetectionParams.detectionParams.brightParams.threshold = v29;

  v30 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];

  if (!v30)
  {
    sub_18C40();
    goto LABEL_56;
  }

  v31 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];
  [v31 floatValue];
  self->_tuningParams.blDetectionParams.detectionParams.var1 = v32;

  v33 = [v26 objectForKeyedSubscript:@"erosionNormalizedRadius"];

  if (!v33)
  {
    sub_18BE8();
    goto LABEL_56;
  }

  v34 = [v26 objectForKeyedSubscript:@"erosionNormalizedRadius"];
  [v34 floatValue];
  *(&self->_tuningParams.blDetectionParams.detectionParams.var1 + 1) = v35;

  v36 = [v26 objectForKeyedSubscript:@"normalizedOpticalCenter"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v36 count] != &dword_0 + 2)
  {
    sub_186D8(v36, v26, v24, v10);
LABEL_57:
    v88 = -1;
    goto LABEL_31;
  }

  v37 = [v36 objectAtIndexedSubscript:0];
  [v37 floatValue];
  LODWORD(self->_tuningParams.blDetectionParams.detectionParams.var0) = v38;

  v39 = [v36 objectAtIndexedSubscript:1];
  [v39 floatValue];
  HIDWORD(self->_tuningParams.blDetectionParams.detectionParams.var0) = v40;

  v41 = [v24 objectForKeyedSubscript:@"greenSDR"];
  v26 = v41;
  if (!v41)
  {
    sub_18B90();
    goto LABEL_56;
  }

  v42 = [v41 objectForKeyedSubscript:@"hueThreshold"];
  [v42 floatValue];
  self->_tuningParams.var0 = v43;

  v44 = [v26 objectForKeyedSubscript:@"openingNormalizedRadius"];
  [v44 floatValue];
  *&self[1]._tuningParams.enabled = v45;

  v46 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];
  [v46 floatValue];
  self[1]._tuningParams.clippingDataParams.paddingRatio = v47;

  v48 = [v26 objectForKeyedSubscript:@"hueRange"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v48 count] != &dword_0 + 2)
  {
    sub_18770(v48);
    goto LABEL_56;
  }

  v49 = [v48 objectAtIndexedSubscript:0];
  [v49 floatValue];
  LODWORD(self->_tuningParams.blDetectionParams.detectionParams.var2) = v50;

  v51 = [v48 objectAtIndexedSubscript:1];
  [v51 floatValue];
  HIDWORD(self->_tuningParams.blDetectionParams.detectionParams.var2) = v52;

  v53 = [v26 objectForKeyedSubscript:@"valueThresholds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v53 count] != &dword_0 + 2)
  {
    sub_187E0(v53, v26, v24, v10);
    goto LABEL_57;
  }

  v54 = [v53 objectAtIndexedSubscript:0];
  [v54 floatValue];
  LODWORD(self[1].super.isa) = v55;

  v56 = [v53 objectAtIndexedSubscript:1];
  [v56 floatValue];
  HIDWORD(self[1].super.isa) = v57;

  v58 = [v24 objectForKeyedSubscript:@"greenHDR"];
  v26 = v58;
  if (!v58)
  {
    sub_18B38();
    goto LABEL_56;
  }

  v59 = [v58 objectForKeyedSubscript:@"hueThreshold"];
  [v59 floatValue];
  self[1]._tuningParams.clippingDataParams.maxClippedTilesCount = v60;

  v61 = [v26 objectForKeyedSubscript:@"openingNormalizedRadius"];
  [v61 floatValue];
  LODWORD(self[1]._tuningParams.blDetectionParams.detectionParams.var0) = v62;

  v63 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];
  [v63 floatValue];
  HIDWORD(self[1]._tuningParams.blDetectionParams.detectionParams.var0) = v64;

  v65 = [v26 objectForKeyedSubscript:@"hueRange"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v65 count] != &dword_0 + 2)
  {
    sub_18878(v65);
    goto LABEL_56;
  }

  v66 = [v65 objectAtIndexedSubscript:0];
  [v66 floatValue];
  self[1]._tuningParams.clippingDataParams.minClippedPixelRatio = v67;

  v68 = [v65 objectAtIndexedSubscript:1];
  [v68 floatValue];
  self[1]._tuningParams.clippingDataParams.clippedPixelRatio = v69;

  v70 = [v26 objectForKeyedSubscript:@"valueThresholds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v70 count] != &dword_0 + 2)
  {
    sub_188E8(v70, v26, v24, v10);
    goto LABEL_57;
  }

  v71 = [v70 objectAtIndexedSubscript:0];
  [v71 floatValue];
  self[1]._tuningParams.blDetectionParams.detectionParams.brightParams.threshold = v72;

  v73 = [v70 objectAtIndexedSubscript:1];
  [v73 floatValue];
  *(&self[1]._tuningParams.blDetectionParams.detectionParams.brightParams + 1) = v74;

  v75 = [v24 objectForKeyedSubscript:@"refinement"];
  v26 = v75;
  if (!v75)
  {
    sub_18AE0();
    goto LABEL_56;
  }

  v76 = [v75 objectForKeyedSubscript:@"openingNormalizedRadius"];

  if (!v76)
  {
    sub_18A88();
    goto LABEL_56;
  }

  v77 = [v26 objectForKeyedSubscript:@"openingNormalizedRadius"];
  [v77 floatValue];
  self[1]._tuningParams.blDetectionParams.detectionParams.var1 = v78;

  v79 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];

  if (!v79)
  {
    sub_18A30();
    goto LABEL_56;
  }

  v80 = [v26 objectForKeyedSubscript:@"dilationNormalizedRadius"];
  [v80 floatValue];
  *(&self[1]._tuningParams.blDetectionParams.detectionParams.var1 + 1) = v81;

  v82 = [v26 objectForKeyedSubscript:@"threshold"];

  if (!v82)
  {
    sub_189D8();
    goto LABEL_56;
  }

  v83 = [v26 objectForKeyedSubscript:@"threshold"];
  [v83 floatValue];
  LODWORD(self[1]._tuningParams.blDetectionParams.detectionParams.var2) = v84;

  v85 = [v26 objectForKeyedSubscript:@"maskSurroundThreshold"];

  if (!v85)
  {
    sub_18980();
    goto LABEL_56;
  }

  v86 = [v26 objectForKeyedSubscript:@"maskSurroundThreshold"];
  [v86 floatValue];
  HIDWORD(self[1]._tuningParams.blDetectionParams.detectionParams.var2) = v87;

  v88 = 0;
LABEL_31:

  return v88;
}

- (BrightLightTuning)tuningParams
{
  v3 = *&self[1].blDetectionParams.detectionParams.brightParams.threshold;
  *&retstr[1].enabled = *&self[1].clippingDataParams.minClippedPixelRatio;
  *&retstr[1].clippingDataParams.maxClippedTilesCount = v3;
  v4 = *&self[1].var0;
  *&retstr[1].blDetectionParams.detectionParams.var0 = *&self[1].blDetectionParams.detectionParams.var1;
  *&retstr[1].blDetectionParams.detectionParams.var2 = v4;
  v5 = *&self->blDetectionParams.detectionParams.brightParams.threshold;
  *&retstr->enabled = *&self->clippingDataParams.minClippedPixelRatio;
  *&retstr->clippingDataParams.maxClippedTilesCount = v5;
  v6 = *&self->var0;
  *&retstr->blDetectionParams.detectionParams.var0 = *&self->blDetectionParams.detectionParams.var1;
  *&retstr->blDetectionParams.detectionParams.var2 = v6;
  return self;
}

- (void)setTuningParams:(BrightLightTuning *)a3
{
  v3 = *&a3->enabled;
  v4 = *&a3->clippingDataParams.maxClippedTilesCount;
  v5 = *&a3->blDetectionParams.detectionParams.var0;
  *&self->_tuningParams.blDetectionParams.detectionParams.var2 = *&a3->blDetectionParams.detectionParams.var2;
  *&self->_tuningParams.blDetectionParams.detectionParams.var0 = v5;
  *&self->_tuningParams.clippingDataParams.maxClippedTilesCount = v4;
  *&self->_tuningParams.enabled = v3;
  v6 = *&a3[1].enabled;
  v7 = *&a3[1].clippingDataParams.maxClippedTilesCount;
  v8 = *&a3[1].blDetectionParams.detectionParams.var0;
  *&self[1]._tuningParams.blDetectionParams.detectionParams.var1 = *&a3[1].blDetectionParams.detectionParams.var2;
  *&self[1]._tuningParams.blDetectionParams.detectionParams.brightParams.threshold = v8;
  *&self[1]._tuningParams.clippingDataParams.minClippedPixelRatio = v7;
  *&self[1].super.isa = v6;
}

@end