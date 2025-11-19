@interface PTSRLv2Plist
- (int)readPlist:(id)a3;
@end

@implementation PTSRLv2Plist

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"MaskThreshold"];
  [v5 floatValue];
  v7 = v6;

  self->maskThreshold = v7;
  v8 = [v4 valueForKey:@"MinFaceSize"];
  [v8 floatValue];
  v10 = v9;

  self->minFaceSize = v10;
  v11 = [v4 valueForKey:@"MaxCurveBoost"];
  [v11 floatValue];
  v13 = v12;

  self->maxCurveBoost = v13;
  v14 = [v4 valueForKey:@"MinCurveBoost"];
  [v14 floatValue];
  v16 = v15;

  self->minCurveBoost = v16;
  v17 = [v4 valueForKey:@"MaxTargetRatioDarkening"];
  [v17 floatValue];
  v19 = v18;

  self->maxTargetRatioDarkening = v19;
  v20 = [v4 valueForKey:@"MaxTargetRatioLimit"];
  [v20 floatValue];
  v22 = v21;

  self->maxTargetRatioLimit = v22;
  v23 = [v4 valueForKey:@"BiasFactorSRLv2"];
  [v23 floatValue];
  v25 = v24;

  self->biasFactorSRLv2 = v25;
  v26 = [v4 valueForKey:@"ToneSimilaritySigma"];
  [v26 floatValue];
  v28 = v27;

  self->toneSimilaritySigma = v28;
  v29 = [v4 valueForKey:@"FaceExpDifThreshold"];
  [v29 floatValue];
  v31 = v30;

  self->faceExpDifThreshold = v31;
  v32 = [v4 valueForKey:@"FaceExpDifThreshold"];
  LOBYTE(v29) = [v32 intValue] != 0;

  self->relightOnlyPersonMask = v29;
  v33 = [v4 valueForKey:@"TargetMedian_I"];
  [v33 floatValue];
  v35 = v34;

  self->targetMedian_I = v35;
  v36 = [v4 valueForKey:@"TargetMedian_II"];
  [v36 floatValue];
  v38 = v37;

  self->targetMedian_II = v38;
  v39 = [v4 valueForKey:@"TargetMedian_III"];
  [v39 floatValue];
  v41 = v40;

  self->targetMedian_III = v41;
  v42 = [v4 valueForKey:@"TargetMedian_IV"];
  [v42 floatValue];
  v44 = v43;

  self->targetMedian_IV = v44;
  v45 = [v4 valueForKey:@"TargetMedian_V"];
  [v45 floatValue];
  v47 = v46;

  self->targetMedian_V = v47;
  v48 = [v4 valueForKey:@"TargetMedian_VI"];
  [v48 floatValue];
  v50 = v49;

  self->targetMedian_VI = v50;
  v51 = [v4 valueForKey:@"MaxBoost_I"];
  [v51 floatValue];
  v53 = v52;

  self->maxBoost_I = v53;
  v54 = [v4 valueForKey:@"MaxBoost_II"];
  [v54 floatValue];
  v56 = v55;

  self->maxBoost_II = v56;
  v57 = [v4 valueForKey:@"MaxBoost_III"];
  [v57 floatValue];
  v59 = v58;

  self->maxBoost_III = v59;
  v60 = [v4 valueForKey:@"MaxBoost_IV"];
  [v60 floatValue];
  v62 = v61;

  self->maxBoost_IV = v62;
  v63 = [v4 valueForKey:@"MaxBoost_V"];
  [v63 floatValue];
  v65 = v64;

  self->maxBoost_V = v65;
  v66 = [v4 valueForKey:@"MaxBoost_VI"];

  [v66 floatValue];
  v68 = v67;

  self->maxBoost_VI = v68;
  return 0;
}

@end