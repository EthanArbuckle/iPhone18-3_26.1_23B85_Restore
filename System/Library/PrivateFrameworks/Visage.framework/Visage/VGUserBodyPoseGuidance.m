@interface VGUserBodyPoseGuidance
- (VGUserBodyPoseGuidance)initWithOptions:(id)a3;
- (float)calculateAggregatedScoreFromScores:(id)a3;
- (id)calculatePoseGuidanceFromSkeleton:(float32x4_t)a3 andAtlasToDeviceTransform:(float32x4_t)a4 atTimestamp:(simd_float4)a5;
- (id)evaluatePoseValues:(id)a3 atTimestamp:(double)a4;
@end

@implementation VGUserBodyPoseGuidance

- (VGUserBodyPoseGuidance)initWithOptions:(id)a3
{
  v98[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v97.receiver = self;
  v97.super_class = VGUserBodyPoseGuidance;
  v6 = [(VGUserBodyPoseGuidance *)&v97 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadTargetMin];
    v9 = v8;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadTargetMax];
    v11 = v10;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadMarginMin];
    v13 = v12;
    [(VGBodyPoseGuidanceOptions *)v7->_options torsoHeadMarginMax];
    LODWORD(v15) = v14;
    LODWORD(v16) = v9;
    LODWORD(v17) = v11;
    LODWORD(v18) = v13;
    v19 = [VGUserBodyPoseTarget targetWithIdentifier:2 targetDescription:@"torso - up aligned with head" targetMin:1 targetMax:1 marginMin:30 marginMax:30 feedbackTooSmall:v16 feedbackTooLarge:v17 rejectionReasonTooSmall:v18 rejectionReasonTooLarge:v15];
    v98[0] = v19;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistTargetMin];
    v21 = v20;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistTargetMax];
    v23 = v22;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistMarginMin];
    v25 = v24;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersTwistMarginMax];
    LODWORD(v27) = v26;
    LODWORD(v28) = v21;
    LODWORD(v29) = v23;
    LODWORD(v30) = v25;
    v31 = [VGUserBodyPoseTarget targetWithIdentifier:3 targetDescription:@"shoulders - twist relative to head" targetMin:2 targetMax:2 marginMin:31 marginMax:31 feedbackTooSmall:v28 feedbackTooLarge:v29 rejectionReasonTooSmall:v30 rejectionReasonTooLarge:v27];
    v98[1] = v31;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowTargetMin];
    v33 = v32;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowTargetMax];
    v35 = v34;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowMarginMin];
    v37 = v36;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftElbowMarginMax];
    LODWORD(v39) = v38;
    LODWORD(v40) = v33;
    LODWORD(v41) = v35;
    LODWORD(v42) = v37;
    v43 = [VGUserBodyPoseTarget targetWithIdentifier:0 targetDescription:@"elbows - left arm" targetMin:3 targetMax:4 marginMin:33 marginMax:32 feedbackTooSmall:v40 feedbackTooLarge:v41 rejectionReasonTooSmall:v42 rejectionReasonTooLarge:v39];
    v98[2] = v43;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowTargetMin];
    v45 = v44;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowTargetMax];
    v47 = v46;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowMarginMin];
    v49 = v48;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightElbowMarginMax];
    LODWORD(v51) = v50;
    LODWORD(v52) = v45;
    LODWORD(v53) = v47;
    LODWORD(v54) = v49;
    v55 = [VGUserBodyPoseTarget targetWithIdentifier:1 targetDescription:@"elbows - right arm" targetMin:4 targetMax:3 marginMin:34 marginMax:35 feedbackTooSmall:v52 feedbackTooLarge:v53 rejectionReasonTooSmall:v54 rejectionReasonTooLarge:v51];
    v98[3] = v55;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryTargetMin];
    v57 = v56;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryTargetMax];
    v59 = v58;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryMarginMin];
    v61 = v60;
    [(VGBodyPoseGuidanceOptions *)v7->_options shouldersHeightAsymmetryMarginMax];
    LODWORD(v63) = v62;
    LODWORD(v64) = v57;
    LODWORD(v65) = v59;
    LODWORD(v66) = v61;
    v67 = [VGUserBodyPoseTarget targetWithIdentifier:4 targetDescription:@"shoulders - height asymmetry (degree)" targetMin:5 targetMax:5 marginMin:36 marginMax:36 feedbackTooSmall:v64 feedbackTooLarge:v65 rejectionReasonTooSmall:v66 rejectionReasonTooLarge:v63];
    v98[4] = v67;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardTargetMin];
    v69 = v68;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardTargetMax];
    v71 = v70;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardMarginMin];
    v73 = v72;
    [(VGBodyPoseGuidanceOptions *)v7->_options leftShoulderForwardMarginMax];
    LODWORD(v75) = v74;
    LODWORD(v76) = v69;
    LODWORD(v77) = v71;
    LODWORD(v78) = v73;
    v79 = [VGUserBodyPoseTarget targetWithIdentifier:5 targetDescription:@"shoulders - left_shoulder_pos_atlas_space z" targetMin:6 targetMax:7 marginMin:37 marginMax:38 feedbackTooSmall:v76 feedbackTooLarge:v77 rejectionReasonTooSmall:v78 rejectionReasonTooLarge:v75];
    v98[5] = v79;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardTargetMin];
    v81 = v80;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardTargetMax];
    v83 = v82;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardMarginMin];
    v85 = v84;
    [(VGBodyPoseGuidanceOptions *)v7->_options rightShoulderForwardMarginMax];
    LODWORD(v87) = v86;
    LODWORD(v88) = v81;
    LODWORD(v89) = v83;
    LODWORD(v90) = v85;
    v91 = [VGUserBodyPoseTarget targetWithIdentifier:6 targetDescription:@"shoulders - right_shoulder_pos_atlas_space z" targetMin:6 targetMax:7 marginMin:39 marginMax:40 feedbackTooSmall:v88 feedbackTooLarge:v89 rejectionReasonTooSmall:v90 rejectionReasonTooLarge:v87];
    v98[6] = v91;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:7];
    poseTargets = v7->_poseTargets;
    v7->_poseTargets = v92;

    v94 = v7;
  }

  v95 = *MEMORY[0x277D85DE8];
  return v7;
}

- (float)calculateAggregatedScoreFromScores:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__VGUserBodyPoseGuidance_calculateAggregatedScoreFromScores___block_invoke;
  v7[3] = &unk_279E28E80;
  v7[4] = &v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = [v3 count];
  v5 = v9[6] / v4;
  v9[6] = v5;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __61__VGUserBodyPoseGuidance_calculateAggregatedScoreFromScores___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 value];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)evaluatePoseValues:(id)a3 atTimestamp:(double)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v79 = a3;
  v74 = objc_opt_new();
  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v87 = vg::shared::VisualLogger::sharedLogger(v76);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = self->_poseTargets;
  v73 = self;
  v80 = [(NSArray *)obj countByEnumeratingWithState:&v93 objects:v103 count:16];
  v6 = 0;
  if (v80)
  {
    v78 = *v94;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v94 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v84 = v6;
        v8 = *(*(&v93 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v8 targetMin];
        [v9 setRawValueTargetMin:?];
        [v8 targetMax];
        [v9 setRawValueTargetMax:?];
        [v8 marginMin];
        [v9 setRawValueMarginMin:?];
        [v8 marginMax];
        [v9 setRawValueMarginMax:?];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
        v85 = [v79 objectForKeyedSubscript:v10];

        if (v85)
        {
          [v85 floatValue];
          v12 = v11;
          [v9 setRawValue:?];
          [v8 targetMax];
          if (v12 <= v13)
          {
            [v8 targetMin];
            if (v12 >= *&v18)
            {
              LODWORD(v18) = 1.0;
              [v9 setValue:v18];
            }

            else
            {
              [v9 setFeedback:{objc_msgSend(v8, "feedbackTooSmall")}];
              if (!v84)
              {
                v84 = [v8 rejectionReasonTooSmall];
              }

              [v8 targetMin];
              v20 = v19;
              [v8 marginMin];
              *&v22 = fmaxf(1.0 - ((v20 - v12) / v21), 0.0);
              [v9 setValue:v22];
            }
          }

          else
          {
            [v9 setFeedback:{objc_msgSend(v8, "feedbackTooLarge")}];
            if (!v84)
            {
              v84 = [v8 rejectionReasonTooLarge];
            }

            [v8 targetMax];
            v15 = v14;
            [v8 marginMax];
            *&v17 = fmaxf(1.0 - ((v12 - v15) / v16), 0.0);
            [v9 setValue:v17];
          }

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
          [v77 setObject:v9 forKey:v23];

          v101[0] = @"id";
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "identifier")}];
          v102[0] = v82;
          v101[1] = @"description";
          v83 = [v8 targetDescription];
          v102[1] = v83;
          v101[2] = @"rawValueTargetMin";
          v24 = MEMORY[0x277CCABB0];
          [v8 targetMin];
          v81 = [v24 numberWithFloat:?];
          v102[2] = v81;
          v101[3] = @"rawValueTargetMax";
          v25 = MEMORY[0x277CCABB0];
          [v8 targetMax];
          v26 = [v25 numberWithFloat:?];
          v102[3] = v26;
          v101[4] = @"rawValueMarginMin";
          v27 = MEMORY[0x277CCABB0];
          [v8 marginMin];
          v28 = [v27 numberWithFloat:?];
          v102[4] = v28;
          v101[5] = @"rawValueMarginMax";
          v29 = MEMORY[0x277CCABB0];
          [v8 marginMax];
          v30 = [v29 numberWithFloat:?];
          v102[5] = v30;
          v101[6] = @"rawValue";
          *&v31 = v12;
          v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
          v102[6] = v32;
          v101[7] = @"value";
          v33 = MEMORY[0x277CCABB0];
          [v9 value];
          v34 = [v33 numberWithFloat:?];
          v102[7] = v34;
          v101[8] = @"feedback";
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "feedback")}];
          v102[8] = v35;
          v101[9] = @"feedbackStr";
          v36 = +[VGBodyPoseFeedbackHelper feedbackToString:](VGBodyPoseFeedbackHelper, "feedbackToString:", [v9 feedback]);
          v102[9] = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:10];
          [(vg::shared::VisualLogger *)v76 addObject:v37];

          v38 = MEMORY[0x277CCACA8];
          v39 = [v8 targetDescription];
          v40 = [v38 stringWithFormat:@"visage.userbodyposeguidance.rawValues.%@", v39];

          v41 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v87, v12, a4, v40, v41);

          [v8 targetMin];
          vg::shared::VisualLogger::logFloat(v87, v42, a4, v40, &cfstr_Min.isa);
          [v8 targetMax];
          vg::shared::VisualLogger::logFloat(v87, v43, a4, v40, &cfstr_Max.isa);
          [v8 targetMin];
          v45 = v44;
          [v8 marginMin];
          vg::shared::VisualLogger::logFloat(v87, v45 - v46, a4, v40, &cfstr_Minmargin.isa);
          [v8 targetMax];
          v48 = v47;
          [v8 marginMax];
          vg::shared::VisualLogger::logFloat(v87, v48 + v49, a4, v40, &cfstr_Maxmargin.isa);
          [v9 value];
          v51 = v50;
          v52 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v87, v51, a4, &cfstr_VisageUserbody_0.isa, v52);

          [v9 value];
          v54 = v53;
          v55 = [v8 targetDescription];
          vg::shared::VisualLogger::logFloat(v87, v7 + v54, a4, &cfstr_VisageUserbody_1.isa, v55);

          v7 = v7 + 1.0;
        }

        v6 = v84;
      }

      v80 = [(NSArray *)obj countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v80);
  }

  v56 = objc_opt_new();
  [v56 setScores:v77];
  [(VGUserBodyPoseGuidance *)v73 calculateAggregatedScoreFromScores:v77];
  [v56 setAggregatedScore:?];
  [v56 aggregatedScore];
  vg::shared::VisualLogger::logFloat(v87, v57, a4, &cfstr_VisageUserbody_0.isa, &cfstr_Aggregatedscor.isa);
  v99[0] = @"aggregatedScore";
  v58 = MEMORY[0x277CCABB0];
  [v56 aggregatedScore];
  v59 = [v58 numberWithFloat:?];
  v99[1] = @"poseValues";
  v100[0] = v59;
  v60 = [(vg::shared::VisualLogger *)v76 copy];
  v100[1] = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];

  if (v6)
  {
    v62 = MEMORY[0x277CCACA8];
    vg::frame_selection::frameRejectionReasonToString(v6, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v64 = [v62 stringWithFormat:@"Body Pose Guidance filter failed with rejection: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v64 = 0;
  }

  v88 = v6;
  v65 = v64;
  v89 = v65;
  v90 = 0;
  v66 = v61;
  v91 = v66;
  if (v74)
  {
    [v74 setRejection:&v88];
  }

  else
  {
  }

  [v74 setFrameState:v56];
  if (vg::shared::VisualLogger::isLoggerEnabled(v87, &cfstr_VisageUserbody_2.isa))
  {
    v97[0] = @"aggregatedScore";
    v67 = MEMORY[0x277CCABB0];
    [v56 aggregatedScore];
    v68 = [v67 numberWithFloat:?];
    v97[1] = @"poseValues";
    v98[0] = v68;
    v69 = [(vg::shared::VisualLogger *)v76 copy];
    v98[1] = v69;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];

    vg::shared::VisualLogger::logDictionary(v87, v70, a4, &cfstr_VisageUserbody_2.isa, 0);
  }

  v71 = *MEMORY[0x277D85DE8];

  return v74;
}

- (id)calculatePoseGuidanceFromSkeleton:(float32x4_t)a3 andAtlasToDeviceTransform:(float32x4_t)a4 atTimestamp:(simd_float4)a5
{
  v103[7] = *MEMORY[0x277D85DE8];
  v10 = a8;
  v11 = objc_opt_new();
  v105.columns[1] = a3;
  v105.columns[0] = a2;
  v105.columns[3] = a5;
  v105.columns[2] = a4;
  v106 = __invert_f4(v105);
  v67 = v106.columns[0];
  v68 = v106.columns[1];
  v69 = v106.columns[3];
  v71 = v106.columns[2];
  v101.i32[2] = 0;
  v101.i64[0] = 0;
  if (!device_space_joint_pos(&v101, v10, 19))
  {
    missing_joint(&cfstr_Leftshoulder.isa, v98);
    if (!v11)
    {

      v55 = v99;
      goto LABEL_31;
    }

    [v11 setRejection:v98];
LABEL_32:
    v54 = v11;
    goto LABEL_33;
  }

  v97.i32[2] = 0;
  v97.i64[0] = 0;
  if (!device_space_joint_pos(&v97, v10, 15))
  {
    missing_joint(&cfstr_Rightshoulder.isa, v94);
    if (!v11)
    {

      v55 = v95;
      goto LABEL_31;
    }

    [v11 setRejection:v94];
    goto LABEL_32;
  }

  v93.i32[2] = 0;
  v93.i64[0] = 0;
  if (!device_space_joint_pos(&v93, v10, 20))
  {
    missing_joint(&cfstr_Leftelbow.isa, v90);
    if (!v11)
    {

      v55 = v91;
      goto LABEL_31;
    }

    [v11 setRejection:v90];
    goto LABEL_32;
  }

  v89.i32[2] = 0;
  v89.i64[0] = 0;
  if (!device_space_joint_pos(&v89, v10, 16))
  {
    missing_joint(&cfstr_Rightelbow.isa, v86);
    if (!v11)
    {

      v55 = v87;
      goto LABEL_31;
    }

    [v11 setRejection:v86];
    goto LABEL_32;
  }

  v85.i32[2] = 0;
  v85.i64[0] = 0;
  if (!device_space_joint_pos(&v85, v10, 0))
  {
    missing_joint(&cfstr_Midshoulder.isa, v82);
    if (!v11)
    {

      v55 = v83;
      goto LABEL_31;
    }

    [v11 setRejection:v82];
    goto LABEL_32;
  }

  v81.i32[2] = 0;
  v81.i64[0] = 0;
  if (!device_space_joint_pos(&v81, v10, 1))
  {
    missing_joint(&cfstr_Spine3.isa, v78);
    if (v11)
    {
      [v11 setRejection:v78];
      goto LABEL_32;
    }

    v55 = v79;
LABEL_31:

    goto LABEL_32;
  }

  v12 = vsubq_f32(v93, v101);
  v13 = vmulq_f32(v12, v12);
  v13.f32[0] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) + 1.0e-16;
  v14 = vsubq_f32(v89, v97);
  v15 = vmulq_f32(v14, v14);
  v15.f32[0] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) + 1.0e-16;
  v64 = vdivq_f32(v12, vdupq_lane_s32(*v13.f32, 0));
  v65 = vdivq_f32(v14, vdupq_lane_s32(*v15.f32, 0));
  v58 = v97;
  v59 = v101;
  v16 = vsubq_f32(v97, v101);
  v17 = vmulq_f32(v16, v16);
  v17.f32[0] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) + 1.0e-16;
  v18 = vdivq_f32(v16, vdupq_lane_s32(*v17.f32, 0));
  v19 = vsubq_f32(v81, v85);
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) + 1.0e-16;
  v66 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
  v62 = v18;
  v63 = vnegq_f32(v18);
  v61 = angle_deg_in_2d_plane(v63, a2, a4);
  v60 = angle_deg_in_2d_plane(v63, a2, a3);
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL), v63), v66, vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL));
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vmulq_f32(v21, v21);
  v23.f32[0] = sqrtf(v23.f32[1] + (v23.f32[2] + v23.f32[0])) + 1.0e-16;
  v76 = vdivq_f32(v22, vdupq_lane_s32(*v23.f32, 0));
  v24 = vnegq_f32(v66);
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), v66), v76, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmulq_f32(v25, v25);
  v27.f32[0] = sqrtf(v27.f32[1] + (v27.f32[2] + v27.f32[0])) + 1.0e-16;
  v73 = vdivq_f32(v26, vdupq_lane_s32(*v27.f32, 0));
  v28 = angle_deg_in_2d_plane(v64, v66, v73);
  v29 = angle_deg_in_2d_plane(v65, v66, v73);
  v30 = deg_angle_between(v76, v64);
  v31 = deg_angle_between(v76, v65);
  v32 = v28;
  if (v30 < 25.0)
  {
    v33 = fminf(fmaxf((25.0 - v30) / 10.0, 0.0), 1.0);
    v32 = (v33 * 90.0) + ((1.0 - v33) * v28);
  }

  v34 = fminf(fmaxf((25.0 - v31) / 10.0, 0.0), 1.0);
  v35 = (v34 * -90.0) + ((1.0 - v34) * v29);
  if (v31 < 25.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = v29;
  }

  v37 = deg_angle_between(v66, vnegq_f32(a3));
  v102[0] = &unk_2880F5EF0;
  *&v38 = v32;
  v103[0] = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v102[1] = &unk_2880F5F08;
  *&v39 = v36;
  v77 = v103[0];
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v103[1] = v40;
  v102[2] = &unk_2880F5F20;
  *&v41 = v37;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v103[2] = v42;
  v102[3] = &unk_2880F5F38;
  *&v43 = v61;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v103[3] = v44;
  v102[4] = &unk_2880F5F50;
  *&v45 = v60;
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  v47 = vaddq_f32(v69, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v59.f32[0]), v68, *v59.f32, 1), v71, v59, 2));
  v103[4] = v46;
  v102[5] = &unk_2880F5F68;
  v47.i32[0] = v47.i32[2];
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:*v47.i64];
  v49 = vaddq_f32(v69, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v58.f32[0]), v68, *v58.f32, 1), v71, v58, 2));
  v103[5] = v48;
  v102[6] = &unk_2880F5F80;
  v49.i32[0] = v49.i32[2];
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:*v49.i64];
  v103[6] = v50;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:7];

  v53 = vg::shared::VisualLogger::sharedLogger(v52);
  vg::shared::VisualLogger::logFloat(v53, v28, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Leftelbowraw.isa);
  vg::shared::VisualLogger::logFloat(v53, v29, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Rightelbowraw.isa);
  vg::shared::VisualLogger::logFloat(v53, v30, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Leftelbowforwa.isa);
  vg::shared::VisualLogger::logFloat(v53, v31, a6, &cfstr_VisageUserbody_3.isa, &cfstr_Rightelbowforw.isa);
  v54 = [a1 evaluatePoseValues:v51 atTimestamp:a6];

LABEL_33:
  v56 = *MEMORY[0x277D85DE8];

  return v54;
}

@end