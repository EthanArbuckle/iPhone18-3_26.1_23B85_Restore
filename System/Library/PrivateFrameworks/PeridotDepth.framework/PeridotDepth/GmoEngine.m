@interface GmoEngine
- (BOOL)homogClassifier:(const void *)a3 camCalib:(id)a4 smoothedSpotsLocAtRefDist:(id *)a5 currentSpotsLocAtRefDist:(id *)a6 factorySpotsLocAtRefDist:(id *)a7 validSpotsIndexes:(const void *)a8 smoothedSNR:(const void *)a9 smoothedSNa:(const void *)a10 gmoMetrics:(GmoMetrics *)a11 estTols:(EstTols *)a12;
- (GmoEngine)initWithPulseShape:(const float *)a3 pulseShapeSize:(unint64_t)a4 spotSizeSigma:(float)a5 unitInfo:(const PeridotUnitInfo *)a6;
- (float)calcHomogModelErrorR:(void *)a3 estSpotLocAtRefDistValid:(void *)a4 globalEstimationResult:(void *)a5;
- (id).cxx_construct;
- (int)blockSmoothing:(void *)a3 localNa:(const void *)a4 specsOut:(void *)a5 numOfFrames:(unint64_t)a6 smoothedSpotsLoc:(id *)a7 validSpotsIndexes:(void *)a8 numOfValidSpots:(unsigned int *)a9 smoothedSNR:(void *)a10 smoothedSNa:(void *)a11;
- (int)calculateGtErrP95:(id *)a3 spotLocations:(id *)a4 result:(float *)a5;
- (int)calculateItpQual:(const PDAnchors *)a3 spotLocations:(id *)a4 result:(float *)a5;
- (int)calculateSpecQs:(const GmoProcessBankInputs *)a3 pulsesPerphase:(unint64_t)a4 specsOut:(SpecsResults *)a5;
- (int)configureEngineWithSpecConfig:(const PRIConfigSpec *)a3;
- (int)findSpotLocation1D:(float)a3 spotLocation:(float *)a4 outBound:(BOOL *)a5;
- (int)findSpotLocation:(const SpecsResults *)a3 withAnchors:(const SpConfig *)a4 spotLocationEstimation:(void *)a5 outBound:(void *)a6;
- (int)getAnchorsWithHysteresis:(id *)a3 anchorsWithHist:(PDAnchors *)a4;
- (int)globalEstimation:(id *)a3 estSpotLocAtRefDist:(id *)a4 validSpotsIndexes:(const void *)a5 result:(void *)a6;
- (vector<std::vector<unsigned)specPhasePriOrder;
- (void)calculateGaussianIntegralForFrame:(id *)a3 anchors:(const PDAnchors *)a4 spotSize:(float)a5 integral:(void *)a6;
- (void)clipSpotsLocation:(id *)a3 refSpotsLoc:(id *)a4 clippedSpotLocations:(id *)a5 numOfClippedSpots:(unint64_t *)a6;
- (void)specSwitch:(unint64_t)a3 from:(const PRIConfigSpec *)a4 toBuffer:(unsigned __int8)a5[16];
@end

@implementation GmoEngine

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 12) = 0;
  *(self + 20) = 0;
  *(self + 22) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

- (vector<std::vector<unsigned)specPhasePriOrder
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[8].__begin_;
  end = self[8].__end_;
  if (end != begin)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (int)globalEstimation:(id *)a3 estSpotLocAtRefDist:(id *)a4 validSpotsIndexes:(const void *)a5 result:(void *)a6
{
  if (*(a5 + 8) - *a5 + *(a5 + 32) - *(a5 + 24) + *(a5 + 56) - *(a5 + 48) + *(a5 + 80) - *(a5 + 72) + *(a5 + 104) - *(a5 + 96) + *(a5 + 128) - *(a5 + 120) + *(a5 + 152) - *(a5 + 144) + *(a5 + 176) - *(a5 + 168))
  {
    operator new[]();
  }

  operator new[]();
}

- (float)calcHomogModelErrorR:(void *)a3 estSpotLocAtRefDistValid:(void *)a4 globalEstimationResult:(void *)a5
{
  v5 = *(a5 + 1);
  if (!v5)
  {
    return INFINITY;
  }

  v6 = *(a5 + 2);
  v7 = 0.0;
  v8 = *(a5 + 1);
  do
  {
    v9 = *v6++;
    v10 = (*(a3 + 1) + 8 * *(*(a5 + 125) + v9));
    v11 = *v10;
    v12 = (*(a4 + 1) + 8 * v9);
    v13 = *v12;
    v14 = v10[*(a3 + 5)];
    v15 = v12[*(a4 + 5)];
    v7 = (v7 + ((v11 - v13) * (v11 - v13))) + ((v14 - v15) * (v14 - v15));
    --v8;
  }

  while (v8);
  return sqrtf(v7 / v5);
}

- (BOOL)homogClassifier:(const void *)a3 camCalib:(id)a4 smoothedSpotsLocAtRefDist:(id *)a5 currentSpotsLocAtRefDist:(id *)a6 factorySpotsLocAtRefDist:(id *)a7 validSpotsIndexes:(const void *)a8 smoothedSNR:(const void *)a9 smoothedSNa:(const void *)a10 gmoMetrics:(GmoMetrics *)a11 estTols:(EstTols *)a12
{
  v241 = *MEMORY[0x277D85DE8];
  v15 = (a3 + 260);
  a4;
  v16 = *(a3 + 126) - *(a3 + 125);
  a11->var2 = v16 * 0.0089286;
  v17 = *(a3 + 92);
  v18 = *(a3 + 6);
  v17.i32[1] = HIDWORD(*(a3 + 12));
  v17.i32[2] = v18.i32[3];
  v17.i32[3] = *(a3 + 29);
  v19 = *&a7->var0[0].var0[0].var0;
  v20 = *&a7->var0[0].var0[0].var1;
  v19.i32[1] = HIDWORD(*&a7->var0[0].var0[0].var1);
  v19.i32[2] = v20.i32[3];
  v19.i32[3] = LODWORD(a7->var0[0].var0[3].var0);
  v18.i32[1] = *(a3 + 13);
  v18.i32[2] = *(a3 + 28);
  v18.i32[3] = *(a3 + 30);
  v20.i32[1] = *&a7->var0[0].var0[1].var1;
  v20.i32[2] = LODWORD(a7->var0[0].var0[2].var1);
  v21 = vsubq_f32(v17, v19);
  v20.i32[3] = LODWORD(a7->var0[0].var0[3].var1);
  v22 = vsubq_f32(v18, v20);
  v23 = vmulq_f32(v21, v21);
  v24 = *&a5->var0[0].var0[0].var0;
  v25 = *&a5->var0[0].var0[0].var1;
  v24.i32[1] = HIDWORD(*&a5->var0[0].var0[0].var1);
  v24.i32[2] = v25.i32[3];
  v134 = vmlaq_f32(v23, v22, v22);
  v24.i32[3] = LODWORD(a5->var0[0].var0[3].var0);
  v25.i32[1] = *&a5->var0[0].var0[1].var1;
  v25.i32[2] = LODWORD(a5->var0[0].var0[2].var1);
  v25.i32[3] = LODWORD(a5->var0[0].var0[3].var1);
  v26 = vsubq_f32(v17, v24);
  v27 = vsubq_f32(v18, v25);
  v28 = *(a3 + 124);
  v29 = *(a3 + 8);
  v28.i32[1] = HIDWORD(*(a3 + 16));
  v30 = vmulq_f32(v26, v26);
  v28.i32[2] = v29.i32[3];
  v28.i32[3] = *(a3 + 37);
  v31 = *&a7->var0[0].var0[4].var0;
  v32 = *&a7->var0[0].var0[4].var1;
  v31.i32[1] = HIDWORD(*&a7->var0[0].var0[4].var1);
  v31.i32[2] = v32.i32[3];
  v33 = vmlaq_f32(v30, v27, v27);
  v31.i32[3] = LODWORD(a7->var0[0].var0[7].var0);
  v29.i32[1] = *(a3 + 17);
  v29.i32[2] = *(a3 + 36);
  v29.i32[3] = *(a3 + 38);
  v34 = vsubq_f32(v28, v31);
  v32.i32[1] = *&a7->var0[0].var0[5].var1;
  v32.i32[2] = LODWORD(a7->var0[0].var0[6].var1);
  v32.i32[3] = LODWORD(a7->var0[0].var0[7].var1);
  v35 = vsubq_f32(v29, v32);
  v36 = vmlaq_f32(vmulq_f32(v34, v34), v35, v35);
  v37 = *&a5->var0[0].var0[4].var0;
  v38 = *&a5->var0[0].var0[4].var1;
  v37.i32[1] = HIDWORD(*&a5->var0[0].var0[4].var1);
  v37.i32[2] = v38.i32[3];
  v38.i32[1] = *&a5->var0[0].var0[5].var1;
  v38.i32[2] = LODWORD(a5->var0[0].var0[6].var1);
  v37.i32[3] = LODWORD(a5->var0[0].var0[7].var0);
  v38.i32[3] = LODWORD(a5->var0[0].var0[7].var1);
  v39 = vsubq_f32(v28, v37);
  v40 = vsubq_f32(v29, v38);
  v41 = *(a3 + 156);
  v42 = *(a3 + 10);
  v41.i32[1] = HIDWORD(*(a3 + 20));
  v43 = vmulq_f32(v39, v39);
  v41.i32[2] = v42.i32[3];
  v41.i32[3] = *(a3 + 45);
  v44 = *&a7->var0[0].var0[8].var0;
  v45 = *&a7->var0[0].var0[8].var1;
  v44.i32[1] = HIDWORD(*&a7->var0[0].var0[8].var1);
  v44.i32[2] = v45.i32[3];
  v46 = vmlaq_f32(v43, v40, v40);
  v44.i32[3] = LODWORD(a7->var0[0].var0[11].var0);
  v42.i32[1] = *(a3 + 21);
  v42.i32[2] = *(a3 + 44);
  v42.i32[3] = *(a3 + 46);
  v47 = vsubq_f32(v41, v44);
  v45.i32[1] = *&a7->var0[0].var0[9].var1;
  v45.i32[2] = LODWORD(a7->var0[0].var0[10].var1);
  v45.i32[3] = LODWORD(a7->var0[0].var0[11].var1);
  v48 = vsubq_f32(v42, v45);
  v49 = vmlaq_f32(vmulq_f32(v47, v47), v48, v48);
  v50 = *&a5->var0[0].var0[8].var0;
  v51 = *&a5->var0[0].var0[8].var1;
  v50.i32[1] = HIDWORD(*&a5->var0[0].var0[8].var1);
  v50.i32[2] = v51.i32[3];
  v51.i32[1] = *&a5->var0[0].var0[9].var1;
  v51.i32[2] = LODWORD(a5->var0[0].var0[10].var1);
  v50.i32[3] = LODWORD(a5->var0[0].var0[11].var0);
  v52 = vsubq_f32(v41, v50);
  v51.i32[3] = LODWORD(a5->var0[0].var0[11].var1);
  v53 = vsubq_f32(v42, v51);
  v54 = vmulq_f32(v52, v52);
  v52.i64[0] = *(a3 + 188);
  v50.i64[0] = *(a3 + 24);
  v52.i32[1] = v50.i32[1];
  v55 = vmlaq_f32(v54, v53, v53);
  v53.i64[0] = a7->var0[0].var0[12];
  v51.i64[0] = *&a7->var0[0].var0[12].var1;
  v53.i32[1] = v51.i32[1];
  *v53.f32 = vsub_f32(*v52.f32, *v53.f32);
  v50.i32[1] = *(a3 + 50);
  v51.i32[1] = LODWORD(a7->var0[0].var0[13].var1);
  *v51.f32 = vsub_f32(*v50.f32, *v51.f32);
  v56 = vmul_f32(*v53.f32, *v53.f32);
  v53.i64[0] = a5->var0[0].var0[12];
  v45.i64[0] = *&a5->var0[0].var0[12].var1;
  v53.i32[1] = v45.i32[1];
  v57 = vmla_f32(v56, *v51.f32, *v51.f32);
  *v53.f32 = vsub_f32(*v52.f32, *v53.f32);
  v45.i32[1] = LODWORD(a5->var0[0].var0[13].var1);
  *v52.f32 = vsub_f32(*v50.f32, *v45.f32);
  v58 = vmla_f32(vmul_f32(*v53.f32, *v53.f32), *v52.f32, *v52.f32);
  v53.i64[0] = *(a3 + 204);
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[1].var0[0]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[1].var0[0]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v51.i64[0] = *(a3 + 212);
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[1].var0[1]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v23.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v52.f32 = vsub_f32(*v51.f32, a5->var0[1].var0[1]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v50.i64[0] = *(a3 + 220);
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[1].var0[2]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v132 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v133 = *v23.f32;
  *v52.f32 = vsub_f32(*v50.f32, a5->var0[1].var0[2]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v50.i64[0] = *(a3 + 228);
  *v45.f32 = vsub_f32(*v50.f32, a7->var0[1].var0[3]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  *v53.f32 = vsub_f32(*v50.f32, a5->var0[1].var0[3]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v130 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  v131 = vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32));
  v53.i64[0] = *(a3 + 236);
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[1].var0[4]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[1].var0[4]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v51.i64[0] = *(a3 + 244);
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[1].var0[5]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v23.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v52.f32 = vsub_f32(*v51.f32, a5->var0[1].var0[5]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v128 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v129 = *v23.f32;
  v53.i64[0] = *(a3 + 252);
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[1].var0[6]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[1].var0[6]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v59 = v15[1];
  *v50.f32 = vsub_f32(*v15, a7->var0[1].var0[7]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v23.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v52.f32 = vsub_f32(*v15, a5->var0[1].var0[7]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v50.f32 = vsub_f32(v59, a7->var0[1].var0[8]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v126 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v127 = *v23.f32;
  *v52.f32 = vsub_f32(v59, a5->var0[1].var0[8]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v45.f32 = v15[2];
  v60 = v15[3];
  *v51.f32 = vsub_f32(*v45.f32, a7->var0[1].var0[9]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[1].var0[9]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v124 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  v125 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v53.f32 = vsub_f32(v60, a7->var0[1].var0[10]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v60, a5->var0[1].var0[10]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[4];
  v61 = v15[5];
  *v52.f32 = vsub_f32(*v45.f32, a7->var0[1].var0[11]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[1].var0[11]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v62 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v123 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v53.f32 = vsub_f32(v61, a7->var0[1].var0[12]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v61, a5->var0[1].var0[12]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[6];
  v63 = v15[7];
  *v52.f32 = vsub_f32(*v45.f32, a7->var0[1].var0[13]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v64 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[1].var0[13]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v63, a7->var0[2].var0[0]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v65 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  *v52.f32 = vsub_f32(v63, a5->var0[2].var0[0]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v45.f32 = v15[8];
  v66 = v15[9];
  *v51.f32 = vsub_f32(*v45.f32, a7->var0[2].var0[1]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v67 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[2].var0[1]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v68 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vsub_f32(v66, a7->var0[2].var0[2]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v66, a5->var0[2].var0[2]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[10];
  v69 = v15[11];
  *v52.f32 = vsub_f32(*v45.f32, a7->var0[2].var0[3]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[2].var0[3]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v70 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v71 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v53.f32 = vsub_f32(v69, a7->var0[2].var0[4]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v69, a5->var0[2].var0[4]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[12];
  v72 = v15[13];
  *v52.f32 = vsub_f32(*v45.f32, a7->var0[2].var0[5]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v73 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[2].var0[5]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v72, a7->var0[2].var0[6]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v74 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  *v52.f32 = vsub_f32(v72, a5->var0[2].var0[6]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v45.f32 = v15[14];
  v75 = v15[15];
  *v51.f32 = vsub_f32(*v45.f32, a7->var0[2].var0[7]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v76 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[2].var0[7]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v77 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vsub_f32(v75, a7->var0[2].var0[8]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v78 = vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32);
  *v50.f32 = vsub_f32(v75, a5->var0[2].var0[8]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[16];
  *v23.f32 = v15[17];
  *v52.f32 = vsub_f32(*v45.f32, a7->var0[2].var0[9]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  *v52.f32 = vsub_f32(*v45.f32, a5->var0[2].var0[9]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v79 = vzip1_s32(v78, *v53.f32);
  v80 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v53.f32 = vsub_f32(*v23.f32, a7->var0[2].var0[10]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(*v23.f32, a5->var0[2].var0[10]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v81 = vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32);
  *v23.f32 = v15[18];
  *v50.f32 = v15[19];
  *v52.f32 = vsub_f32(*v23.f32, a7->var0[2].var0[11]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v82 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v52.f32 = vsub_f32(*v23.f32, a5->var0[2].var0[11]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[2].var0[12]);
  v83 = vmul_f32(*v51.f32, *v51.f32);
  v84 = vzip1_s32(v81, vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v52.f32 = vsub_f32(*v50.f32, a5->var0[2].var0[12]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v85 = v15[20];
  *v53.f32 = v15[21];
  *v50.f32 = vsub_f32(v85, a7->var0[2].var0[13]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v86 = vzip1_s32(vadd_f32(vdup_lane_s32(v83, 1), v83), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v51.f32 = vsub_f32(v85, a5->var0[2].var0[13]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v87 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v51.f32 = vsub_f32(*v53.f32, a7->var0[3].var0[0]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v45.f32 = vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32);
  v88 = a5->var0[3].var0[1];
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[3].var0[0]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v89 = v15[22];
  *v51.f32 = v15[23];
  *v23.f32 = vsub_f32(v89, a7->var0[3].var0[1]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v135 = vsqrtq_f32(v134);
  v136 = vsqrtq_f32(v36);
  *v36.f32 = vzip1_s32(*v45.f32, vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32));
  v188 = vsqrtq_f32(v33);
  v189 = vsqrtq_f32(v46);
  v137 = vsqrtq_f32(v49);
  *v52.f32 = vsub_f32(v89, v88);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v45.i64[0] = a7->var0[3].var0[3];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[3].var0[2]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v49.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  v53.i64[0] = a5->var0[3].var0[3];
  *v52.f32 = vsub_f32(*v51.f32, a5->var0[3].var0[2]);
  v190 = vsqrtq_f32(v55);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v33.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  *v23.f32 = v15[24];
  *v55.f32 = v15[25];
  *v52.f32 = vsub_f32(*v23.f32, *v45.f32);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v138 = vsqrt_f32(v57);
  v139 = vsqrt_f32(v133);
  v191 = vsqrt_f32(v58);
  v192 = vsqrt_f32(v132);
  v140 = vsqrt_f32(v131);
  v141 = vsqrt_f32(v129);
  v193 = vsqrt_f32(v130);
  v194 = vsqrt_f32(v128);
  v142 = vsqrt_f32(v127);
  v143 = vsqrt_f32(v125);
  v195 = vsqrt_f32(v126);
  v196 = vsqrt_f32(v124);
  v144 = vsqrt_f32(v62);
  v145 = vsqrt_f32(v64);
  v197 = vsqrt_f32(v123);
  v198 = vsqrt_f32(v65);
  v146 = vsqrt_f32(v67);
  v147 = vsqrt_f32(v70);
  v199 = vsqrt_f32(v68);
  v200 = vsqrt_f32(v71);
  *v51.f32 = vsqrt_f32(v87);
  *v45.f32 = vsqrt_f32(*v49.f32);
  v148 = vsqrt_f32(v73);
  v149 = vsqrt_f32(v76);
  *v46.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  *v53.f32 = vsub_f32(*v23.f32, *v53.f32);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v53.f32 = vzip1_s32(*v33.f32, vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v52.f32 = vsub_f32(*v55.f32, a7->var0[3].var0[4]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v23.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  v49.i64[0] = a5->var0[3].var0[5];
  *v52.f32 = vsub_f32(*v55.f32, a5->var0[3].var0[4]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v55.f32 = vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32);
  *v33.f32 = v15[26];
  v90 = v15[27];
  *v52.f32 = vsub_f32(*v33.f32, a7->var0[3].var0[5]);
  v201 = vsqrt_f32(v74);
  v202 = vsqrt_f32(v77);
  *v50.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v52.f32 = vsqrt_f32(*v53.f32);
  v150 = vsqrt_f32(v79);
  v151 = vsqrt_f32(v82);
  v91 = vsqrt_f32(vzip1_s32(*v23.f32, vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v53.f32 = vsub_f32(*v33.f32, *v49.f32);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v90, a7->var0[3].var0[6]);
  *v49.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v50.f32 = vsqrt_f32(vzip1_s32(*v55.f32, vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vadd_f32(vdup_lane_s32(*v49.f32, 1), *v49.f32);
  v55.i64[0] = a5->var0[3].var0[7];
  *v49.f32 = vsub_f32(v90, a5->var0[3].var0[6]);
  *v49.f32 = vmul_f32(*v49.f32, *v49.f32);
  *v33.f32 = v15[28];
  v92 = v15[29];
  *v23.f32 = vsub_f32(*v33.f32, a7->var0[3].var0[7]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v203 = vsqrt_f32(v80);
  v204 = vsqrt_f32(v84);
  *v23.f32 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32));
  *v53.f32 = vsub_f32(*v33.f32, *v55.f32);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v93 = vsub_f32(v92, a7->var0[3].var0[8]);
  *v33.f32 = vmul_f32(v93, v93);
  v94 = vzip1_s32(vadd_f32(vdup_lane_s32(*v49.f32, 1), *v49.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32);
  v33.i64[0] = a5->var0[3].var0[9];
  *v49.f32 = vsub_f32(v92, a5->var0[3].var0[8]);
  *v49.f32 = vmul_f32(*v49.f32, *v49.f32);
  v95 = vadd_f32(vdup_lane_s32(*v49.f32, 1), *v49.f32);
  v96 = v15[30];
  v97 = v15[31];
  *v49.f32 = vsub_f32(v96, a7->var0[3].var0[9]);
  *v49.f32 = vmul_f32(*v49.f32, *v49.f32);
  v152 = vsqrt_f32(v86);
  v153 = vsqrt_f32(*v36.f32);
  *v49.f32 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v49.f32, 1), *v49.f32));
  *v53.f32 = vsub_f32(v96, *v33.f32);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v36.f32 = vsub_f32(v97, a7->var0[3].var0[10]);
  *v33.f32 = vmul_f32(*v36.f32, *v36.f32);
  *v36.f32 = vzip1_s32(v95, vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32);
  v98 = a5->var0[3].var0[11];
  *v33.f32 = vsub_f32(v97, a5->var0[3].var0[10]);
  *v33.f32 = vmul_f32(*v33.f32, *v33.f32);
  v99 = v15[32];
  v100 = v15[33];
  *v55.f32 = vsub_f32(v99, a7->var0[3].var0[11]);
  *v55.f32 = vmul_f32(*v55.f32, *v55.f32);
  v205 = v51.i64[0];
  v206 = v45.i64[0];
  *v51.f32 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v55.f32, 1), *v55.f32));
  *v53.f32 = vsub_f32(v99, v98);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v45.f32 = vsub_f32(v100, a7->var0[3].var0[12]);
  v101 = vmul_f32(*v45.f32, *v45.f32);
  *v45.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32));
  *v53.f32 = vadd_f32(vdup_lane_s32(v101, 1), v101);
  v102 = a5->var0[3].var0[13];
  *v33.f32 = vsub_f32(v100, a5->var0[3].var0[12]);
  *v33.f32 = vmul_f32(*v33.f32, *v33.f32);
  v103 = v15[34];
  v104 = v15[35];
  *v55.f32 = vsub_f32(v103, a7->var0[3].var0[13]);
  *v55.f32 = vmul_f32(*v55.f32, *v55.f32);
  v154 = v46.i64[0];
  v155 = v91;
  *v53.f32 = vzip1_s32(*v53.f32, vadd_f32(vdup_lane_s32(*v55.f32, 1), *v55.f32));
  v105 = vsub_f32(v103, v102);
  v106 = vmul_f32(v105, v105);
  *v55.f32 = vsub_f32(v104, a7->var0[4].var0[0]);
  *v55.f32 = vmul_f32(*v55.f32, *v55.f32);
  v107 = vzip1_s32(vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32), vadd_f32(vdup_lane_s32(v106, 1), v106));
  v108 = a5->var0[4].var0[1];
  *v33.f32 = vsub_f32(v104, a5->var0[4].var0[0]);
  *v33.f32 = vmul_f32(*v33.f32, *v33.f32);
  v109 = v15[36];
  v110 = v15[37];
  *v46.f32 = vsub_f32(v109, a7->var0[4].var0[1]);
  v207 = v52.i64[0];
  v208 = v50.i64[0];
  *v52.f32 = vmul_f32(*v46.f32, *v46.f32);
  v156 = vsqrt_f32(*v23.f32);
  v157 = vsqrt_f32(*v49.f32);
  v209 = vsqrt_f32(v94);
  v210 = vsqrt_f32(*v36.f32);
  v158 = vsqrt_f32(*v51.f32);
  v159 = vsqrt_f32(*v53.f32);
  *v53.f32 = vsub_f32(v109, v108);
  v211 = vsqrt_f32(*v45.f32);
  v212 = vsqrt_f32(v107);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = vsub_f32(v110, a7->var0[4].var0[2]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v23.i64[0] = a5->var0[4].var0[3];
  *v45.f32 = vsub_f32(v110, a5->var0[4].var0[2]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v111 = v15[38];
  v112 = v15[39];
  *v51.f32 = vsub_f32(v111, a7->var0[4].var0[3]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v160 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v55.f32, 1), *v55.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  v161 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32)));
  *v52.f32 = vsub_f32(v111, *v23.f32);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  *v50.f32 = vsub_f32(v112, a7->var0[4].var0[4]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v23.i64[0] = a5->var0[4].var0[5];
  *v45.f32 = vsub_f32(v112, a5->var0[4].var0[4]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v113 = v15[40];
  v114 = v15[41];
  *v51.f32 = vsub_f32(v113, a7->var0[4].var0[5]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v213 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  v214 = v52.i64[0];
  *v52.f32 = vsub_f32(v113, *v23.f32);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v52.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32));
  *v50.f32 = vsub_f32(v114, a7->var0[4].var0[6]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v23.i64[0] = a5->var0[4].var0[7];
  *v45.f32 = vsub_f32(v114, a5->var0[4].var0[6]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v115 = v15[42];
  v116 = v15[43];
  *v51.f32 = vsub_f32(v115, a7->var0[4].var0[7]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  v162 = vsqrt_f32(*v53.f32);
  v163 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32)));
  *v53.f32 = vsub_f32(v115, *v23.f32);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v215 = vsqrt_f32(*v52.f32);
  v216 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v116, a7->var0[4].var0[8]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v116, a5->var0[4].var0[8]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = v15[44];
  *v45.f32 = v15[45];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[4].var0[9]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[4].var0[9]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v45.f32, a7->var0[4].var0[10]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[4].var0[10]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v23.f32 = v15[46];
  v117 = v15[47];
  *v45.f32 = vsub_f32(*v23.f32, a7->var0[4].var0[11]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v164 = v53.i64[0];
  v165 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = vsub_f32(*v23.f32, a5->var0[4].var0[11]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v217 = v52.i64[0];
  v218 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v117, a7->var0[4].var0[12]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v117, a5->var0[4].var0[12]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = v15[48];
  *v45.f32 = v15[49];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[4].var0[13]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[4].var0[13]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v45.f32, a7->var0[5].var0[0]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[5].var0[0]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v23.f32 = v15[50];
  v118 = v15[51];
  *v45.f32 = vsub_f32(*v23.f32, a7->var0[5].var0[1]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v166 = v53.i64[0];
  v167 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = vsub_f32(*v23.f32, a5->var0[5].var0[1]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v219 = v52.i64[0];
  v220 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v118, a7->var0[5].var0[2]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v118, a5->var0[5].var0[2]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = v15[52];
  *v45.f32 = v15[53];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[5].var0[3]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[5].var0[3]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v45.f32, a7->var0[5].var0[4]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[5].var0[4]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v23.f32 = v15[54];
  v119 = v15[55];
  *v45.f32 = vsub_f32(*v23.f32, a7->var0[5].var0[5]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v168 = v53.i64[0];
  v169 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = vsub_f32(*v23.f32, a5->var0[5].var0[5]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v221 = v52.i64[0];
  v222 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v119, a7->var0[5].var0[6]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v119, a5->var0[5].var0[6]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = v15[56];
  *v45.f32 = v15[57];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[5].var0[7]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[5].var0[7]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = vsub_f32(*v45.f32, a7->var0[5].var0[8]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[5].var0[8]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v23.f32 = v15[58];
  v120 = v15[59];
  *v45.f32 = vsub_f32(*v23.f32, a7->var0[5].var0[9]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v170 = v53.i64[0];
  v171 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = vsub_f32(*v23.f32, a5->var0[5].var0[9]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v223 = v52.i64[0];
  v224 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v120, a7->var0[5].var0[10]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v120, a5->var0[5].var0[10]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v51.f32 = v15[60];
  *v45.f32 = v15[61];
  *v50.f32 = vsub_f32(*v51.f32, a7->var0[5].var0[11]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[5].var0[11]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v50.f32 = vsub_f32(*v45.f32, a7->var0[5].var0[12]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v51.f32 = vsub_f32(*v45.f32, a5->var0[5].var0[12]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v23.f32 = v15[62];
  v121 = v15[63];
  *v45.f32 = vsub_f32(*v23.f32, a7->var0[5].var0[13]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v172 = vsqrt_f32(*v53.f32);
  v173 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = vsub_f32(*v23.f32, a5->var0[5].var0[13]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v225 = vsqrt_f32(*v52.f32);
  v226 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = vsub_f32(v121, a7->var0[6].var0[0]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v52.f32 = vsub_f32(v121, a5->var0[6].var0[0]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v50.f32 = v15[64];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[1]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[1]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = v15[65];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[2]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[2]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[66];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[6].var0[3]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v174 = vsqrt_f32(*v53.f32);
  v175 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v53.f32 = vsub_f32(*v45.f32, a5->var0[6].var0[3]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  v227 = v52.i64[0];
  v228 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32)));
  *v53.f32 = v15[67];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[6].var0[4]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[6].var0[4]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = v15[68];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[5]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32)));
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[5]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = v15[69];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[6]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[6]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[70];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[6].var0[7]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v45.f32 = vsub_f32(*v45.f32, a5->var0[6].var0[7]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v176 = v52.i64[0];
  v177 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v229 = v53.i64[0];
  v230 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = v15[71];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[6].var0[8]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[6].var0[8]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v51.f32 = v15[72];
  *v45.f32 = vsub_f32(*v51.f32, a7->var0[6].var0[9]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[6].var0[9]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v50.f32 = v15[73];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[10]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[10]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[74];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[6].var0[11]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v178 = v52.i64[0];
  v179 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v52.f32 = vsub_f32(*v45.f32, a5->var0[6].var0[11]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v231 = vsqrt_f32(*v53.f32);
  v232 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  *v53.f32 = v15[75];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[6].var0[12]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[6].var0[12]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = v15[76];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[6].var0[13]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v52.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[6].var0[13]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = v15[77];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[0]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[7].var0[0]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[78];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[7].var0[1]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v180 = vsqrt_f32(*v52.f32);
  v181 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v52.f32 = vsub_f32(*v45.f32, a5->var0[7].var0[1]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v233 = v53.i64[0];
  v234 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  *v53.f32 = v15[79];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[7].var0[2]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[7].var0[2]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = v15[80];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[3]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32)));
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[7].var0[3]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  *v50.f32 = v15[81];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[4]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[7].var0[4]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[82];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[7].var0[5]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v45.f32 = vsub_f32(*v45.f32, a5->var0[7].var0[5]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  v182 = v52.i64[0];
  v183 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v235 = v53.i64[0];
  v236 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v53.f32 = v15[83];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[7].var0[6]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[7].var0[6]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v51.f32 = v15[84];
  *v45.f32 = vsub_f32(*v51.f32, a7->var0[7].var0[7]);
  *v45.f32 = vmul_f32(*v45.f32, *v45.f32);
  *v52.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v45.f32, 1), *v45.f32)));
  *v50.f32 = vsub_f32(*v51.f32, a5->var0[7].var0[7]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v50.f32 = v15[85];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[8]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[7].var0[8]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v45.f32 = v15[86];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[7].var0[9]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v184 = v52.i64[0];
  v185 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v52.f32 = vsub_f32(*v45.f32, a5->var0[7].var0[9]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  v237 = vsqrt_f32(*v53.f32);
  v238 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32), vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32)));
  *v53.f32 = v15[87];
  *v52.f32 = vsub_f32(*v53.f32, a7->var0[7].var0[10]);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v53.f32 = vsub_f32(*v53.f32, a5->var0[7].var0[10]);
  *v53.f32 = vmul_f32(*v53.f32, *v53.f32);
  *v50.f32 = v15[88];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[11]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v52.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32));
  *v50.f32 = vsub_f32(*v50.f32, a5->var0[7].var0[11]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  *v53.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v53.f32, 1), *v53.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32));
  *v50.f32 = v15[89];
  *v51.f32 = vsub_f32(*v50.f32, a7->var0[7].var0[12]);
  *v51.f32 = vmul_f32(*v51.f32, *v51.f32);
  *v45.f32 = v15[90];
  *v23.f32 = vsub_f32(*v45.f32, a7->var0[7].var0[13]);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v51.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v51.f32, 1), *v51.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32));
  v23.i64[0] = a5->var0[7].var0[12];
  v186 = vsqrt_f32(*v52.f32);
  v187 = vsqrt_f32(*v51.f32);
  *v52.f32 = vsub_f32(*v50.f32, *v23.f32);
  *v52.f32 = vmul_f32(*v52.f32, *v52.f32);
  *v50.f32 = vsub_f32(*v45.f32, a5->var0[7].var0[13]);
  *v50.f32 = vmul_f32(*v50.f32, *v50.f32);
  v239 = vsqrt_f32(*v53.f32);
  v240 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v52.f32, 1), *v52.f32), vadd_f32(vdup_lane_s32(*v50.f32, 1), *v50.f32)));
  if (v16)
  {
    operator new[]();
  }

  operator new[]();
}

- (int)blockSmoothing:(void *)a3 localNa:(const void *)a4 specsOut:(void *)a5 numOfFrames:(unint64_t)a6 smoothedSpotsLoc:(id *)a7 validSpotsIndexes:(void *)a8 numOfValidSpots:(unsigned int *)a9 smoothedSNR:(void *)a10 smoothedSNa:(void *)a11
{
  (MEMORY[0x28223BE20])(self, a2, a3);
  v43 = v13;
  v65 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  v44 = v12;
  if (v12[2] - *v12 < 0xEuLL)
  {
    operator new();
  }

  if (v12[5] - v12[3] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[8] - v12[6] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[11] - v12[9] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[14] - v12[12] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[17] - v12[15] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[20] - v12[18] <= 0xDuLL)
  {
    operator new();
  }

  if (v12[23] - v12[21] <= 0xDuLL)
  {
    operator new();
  }

  v64 = 1116143616;
  v63[4] = xmmword_2247A7150;
  v63[5] = unk_2247A7160;
  v63[6] = xmmword_2247A7170;
  v63[0] = xmmword_2247A7110;
  v63[1] = unk_2247A7120;
  v62 = 1189027840;
  v63[2] = xmmword_2247A7130;
  v63[3] = unk_2247A7140;
  v61[4] = xmmword_2247A71C4;
  v61[5] = unk_2247A71D4;
  v61[6] = xmmword_2247A71E4;
  v61[0] = xmmword_2247A7184;
  v61[1] = unk_2247A7194;
  v61[2] = xmmword_2247A71A4;
  v61[3] = unk_2247A71B4;
  __p = 0;
  v58 = 0;
  v59 = 0;
  if (v11)
  {
    if (v11 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v53 = v63;
  v54 = 0x1D00000001;
  v55 = 0;
  v56 = 116;
  v51 = 116;
  v52 = &unk_28380A0A8;
  v49 = 0x1D00000001;
  v50 = 0;
  v47 = &unk_28380A0A8;
  v48 = v61;
  *(a10 + 26) = 0u;
  *(a10 + 27) = 0u;
  *(a10 + 24) = 0u;
  *(a10 + 25) = 0u;
  *(a10 + 22) = 0u;
  *(a10 + 23) = 0u;
  *(a10 + 20) = 0u;
  *(a10 + 21) = 0u;
  *(a10 + 18) = 0u;
  *(a10 + 19) = 0u;
  *(a10 + 16) = 0u;
  *(a10 + 17) = 0u;
  *(a10 + 14) = 0u;
  *(a10 + 15) = 0u;
  *(a10 + 12) = 0u;
  *(a10 + 13) = 0u;
  *(a10 + 10) = 0u;
  *(a10 + 11) = 0u;
  *(a10 + 8) = 0u;
  *(a10 + 9) = 0u;
  *(a10 + 6) = 0u;
  *(a10 + 7) = 0u;
  *(a10 + 4) = 0u;
  *(a10 + 5) = 0u;
  *(a10 + 2) = 0u;
  *(a10 + 3) = 0u;
  *a10 = 0u;
  *(a10 + 1) = 0u;
  v14.i64[0] = 0x3F0000003FLL;
  v14.i64[1] = 0x3F0000003FLL;
  v15 = vnegq_f32(v14);
  *a11 = v15;
  *(a11 + 1) = v15;
  *(a11 + 2) = v15;
  *(a11 + 3) = v15;
  *(a11 + 4) = v15;
  *(a11 + 5) = v15;
  *(a11 + 6) = v15;
  *(a11 + 7) = v15;
  *(a11 + 8) = v15;
  *(a11 + 9) = v15;
  *(a11 + 10) = v15;
  *(a11 + 11) = v15;
  *(a11 + 12) = v15;
  *(a11 + 13) = v15;
  *(a11 + 14) = v15;
  *(a11 + 15) = v15;
  *(a11 + 16) = v15;
  *(a11 + 17) = v15;
  *(a11 + 18) = v15;
  *(a11 + 19) = v15;
  *(a11 + 20) = v15;
  *(a11 + 21) = v15;
  *(a11 + 22) = v15;
  *(a11 + 23) = v15;
  *(a11 + 24) = v15;
  *(a11 + 25) = v15;
  *(a11 + 26) = v15;
  *(a11 + 27) = v15;
  v16 = 0;
  v17 = 0;
  v18 = &v60;
  v19 = vneg_f32(0x3F0000003FLL);
  do
  {
    v20 = 0;
    v46 = v16;
    v45 = v18;
    v21 = &v44[3 * v17];
    do
    {
      v23 = vceqz_f32(0);
      *(v43 + 112 * v17 + 8 * v20) = vbsl_s8(v23, v19, 0);
      if (((v23.i32[0] | v23.i32[1]) & 1) == 0)
      {
        v25 = v21[1];
        v24 = v21[2];
        if (v25 < v24)
        {
          *v25 = v20;
          v22 = v25 + 1;
        }

        else
        {
          v26 = *v21;
          v27 = &v25[-*v21];
          v28 = (v27 + 1);
          if ((v27 + 1) < 0)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v29 = v24 - v26;
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            operator new();
          }

          v31 = &v25[-*v21];
          *v27 = v20;
          v22 = v27 + 1;
          memcpy(0, v26, v31);
          *v21 = 0;
          v21[1] = v27 + 1;
          v21[2] = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        v21[1] = v22;
        ++*a9;
      }

      ++v20;
      v18 += 4;
      v16 += 16;
    }

    while (v20 != 14);
    ++v17;
    v18 = v45 + 56;
    v16 = v46 + 224;
  }

  while (v17 != 8);
  v47 = &unk_283809D60;
  if (v48 && v50 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v52 = &unk_283809D60;
  if (v53 && v55 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v32 = __p;
  if (__p)
  {
    v33 = v58;
    if (v58 != __p)
    {
      v34 = v58;
      do
      {
        v37 = *(v34 - 3);
        v34 -= 3;
        v36 = v37;
        if (v37)
        {
          v38 = *(v33 - 2);
          v35 = v36;
          if (v38 != v36)
          {
            v39 = *(v33 - 2);
            do
            {
              v41 = *(v39 - 3);
              v39 -= 24;
              v40 = v41;
              if (v41)
              {
                *(v38 - 2) = v40;
                operator delete(v40);
              }

              v38 = v39;
            }

            while (v39 != v36);
            v35 = *v34;
          }

          *(v33 - 2) = v36;
          operator delete(v35);
        }

        v33 = v34;
      }

      while (v34 != v32);
    }

    operator delete(v32);
  }

  return 0;
}

- (int)getAnchorsWithHysteresis:(id *)a3 anchorsWithHist:(PDAnchors *)a4
{
  v6 = 0;
  LODWORD(v4) = -1.0;
  return [(GmoEngine *)self getAnchorsWithHysteresis:a3 currAnchors:v10 snrHysteresisPct:a4 anchorsWithHist:v9 violations:v8 anchorMoveIdx:v7 spotLocationsAtRefDist:v4 anchorsMoved:&v6];
}

- (void)clipSpotsLocation:(id *)a3 refSpotsLoc:(id *)a4 clippedSpotLocations:(id *)a5 numOfClippedSpots:(unint64_t *)a6
{
  v6 = 0;
  v61 = *MEMORY[0x277D85DE8];
  allowedDistFromCalib = self->_allowedDistFromCalib;
  *a6 = 0;
  a5->var1 = a3->var1;
  a5->var2 = a3->var2;
  v8 = *a3->var3;
  a5->var3[2] = a3->var3[2];
  *a5->var3 = v8;
  v9 = *a6;
  do
  {
    v10 = a4->var0[0].var0[v6];
    v11 = vsub_f32(a3->var0[0].var0[v6], v10);
    v12 = sqrtf(vaddv_f32(vmul_f32(v11, v11)));
    v13 = 1.0;
    if (v12 == 0.0)
    {
      if (v12 <= allowedDistFromCalib)
      {
        goto LABEL_2;
      }

LABEL_10:
      *a6 = ++v9;
      goto LABEL_2;
    }

    if (allowedDistFromCalib >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = allowedDistFromCalib;
    }

    v13 = v14 / v12;
    if (v12 > allowedDistFromCalib)
    {
      goto LABEL_10;
    }

LABEL_2:
    a5->var0[0].var0[v6++] = vmla_n_f32(v10, v11, v13);
  }

  while (v6 != 14);
  for (i = 0; i != 14; ++i)
  {
    v16 = a4->var0[1].var0[i];
    v17 = vsub_f32(a3->var0[1].var0[i], v16);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    v19 = 1.0;
    if (v18 == 0.0)
    {
      if (v18 <= allowedDistFromCalib)
      {
        goto LABEL_12;
      }

LABEL_20:
      *a6 = ++v9;
      goto LABEL_12;
    }

    if (allowedDistFromCalib >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = allowedDistFromCalib;
    }

    v19 = v20 / v18;
    if (v18 > allowedDistFromCalib)
    {
      goto LABEL_20;
    }

LABEL_12:
    a5->var0[1].var0[i] = vmla_n_f32(v16, v17, v19);
  }

  for (j = 0; j != 14; ++j)
  {
    v22 = a4->var0[2].var0[j];
    v23 = vsub_f32(a3->var0[2].var0[j], v22);
    v24 = sqrtf(vaddv_f32(vmul_f32(v23, v23)));
    v25 = 1.0;
    if (v24 == 0.0)
    {
      if (v24 <= allowedDistFromCalib)
      {
        goto LABEL_22;
      }

LABEL_30:
      *a6 = ++v9;
      goto LABEL_22;
    }

    if (allowedDistFromCalib >= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = allowedDistFromCalib;
    }

    v25 = v26 / v24;
    if (v24 > allowedDistFromCalib)
    {
      goto LABEL_30;
    }

LABEL_22:
    a5->var0[2].var0[j] = vmla_n_f32(v22, v23, v25);
  }

  for (k = 0; k != 14; ++k)
  {
    v28 = a4->var0[3].var0[k];
    v29 = vsub_f32(a3->var0[3].var0[k], v28);
    v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
    v31 = 1.0;
    if (v30 == 0.0)
    {
      if (v30 <= allowedDistFromCalib)
      {
        goto LABEL_32;
      }

LABEL_40:
      *a6 = ++v9;
      goto LABEL_32;
    }

    if (allowedDistFromCalib >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = allowedDistFromCalib;
    }

    v31 = v32 / v30;
    if (v30 > allowedDistFromCalib)
    {
      goto LABEL_40;
    }

LABEL_32:
    a5->var0[3].var0[k] = vmla_n_f32(v28, v29, v31);
  }

  for (m = 0; m != 14; ++m)
  {
    v34 = a4->var0[4].var0[m];
    v35 = vsub_f32(a3->var0[4].var0[m], v34);
    v36 = sqrtf(vaddv_f32(vmul_f32(v35, v35)));
    v37 = 1.0;
    if (v36 == 0.0)
    {
      if (v36 <= allowedDistFromCalib)
      {
        goto LABEL_42;
      }

LABEL_50:
      *a6 = ++v9;
      goto LABEL_42;
    }

    if (allowedDistFromCalib >= v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = allowedDistFromCalib;
    }

    v37 = v38 / v36;
    if (v36 > allowedDistFromCalib)
    {
      goto LABEL_50;
    }

LABEL_42:
    a5->var0[4].var0[m] = vmla_n_f32(v34, v35, v37);
  }

  for (n = 0; n != 14; ++n)
  {
    v40 = a4->var0[5].var0[n];
    v41 = vsub_f32(a3->var0[5].var0[n], v40);
    v42 = sqrtf(vaddv_f32(vmul_f32(v41, v41)));
    v43 = 1.0;
    if (v42 == 0.0)
    {
      if (v42 <= allowedDistFromCalib)
      {
        goto LABEL_52;
      }

LABEL_60:
      *a6 = ++v9;
      goto LABEL_52;
    }

    if (allowedDistFromCalib >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = allowedDistFromCalib;
    }

    v43 = v44 / v42;
    if (v42 > allowedDistFromCalib)
    {
      goto LABEL_60;
    }

LABEL_52:
    a5->var0[5].var0[n] = vmla_n_f32(v40, v41, v43);
  }

  for (ii = 0; ii != 14; ++ii)
  {
    v46 = a4->var0[6].var0[ii];
    v47 = vsub_f32(a3->var0[6].var0[ii], v46);
    v48 = sqrtf(vaddv_f32(vmul_f32(v47, v47)));
    v49 = 1.0;
    if (v48 == 0.0)
    {
      if (v48 <= allowedDistFromCalib)
      {
        goto LABEL_62;
      }

LABEL_70:
      *a6 = ++v9;
      goto LABEL_62;
    }

    if (allowedDistFromCalib >= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = allowedDistFromCalib;
    }

    v49 = v50 / v48;
    if (v48 > allowedDistFromCalib)
    {
      goto LABEL_70;
    }

LABEL_62:
    a5->var0[6].var0[ii] = vmla_n_f32(v46, v47, v49);
  }

  for (jj = 0; jj != 14; ++jj)
  {
    v52 = a4->var0[7].var0[jj];
    v53 = vsub_f32(a3->var0[7].var0[jj], v52);
    v54 = sqrtf(vaddv_f32(vmul_f32(v53, v53)));
    v55 = 1.0;
    if (v54 == 0.0)
    {
      if (v54 <= allowedDistFromCalib)
      {
        goto LABEL_72;
      }

LABEL_80:
      *a6 = ++v9;
      goto LABEL_72;
    }

    if (allowedDistFromCalib >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = allowedDistFromCalib;
    }

    v55 = v56 / v54;
    if (v54 > allowedDistFromCalib)
    {
      goto LABEL_80;
    }

LABEL_72:
    a5->var0[7].var0[jj] = vmla_n_f32(v52, v53, v55);
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v57 = 136315394;
      v58 = "[GmoEngine clipSpotsLocation:refSpotsLoc:clippedSpotLocations:numOfClippedSpots:]";
      v59 = 2048;
      v60 = v9;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Number of clipped spots is: %zu", &v57, 0x16u);
    }
  }
}

- (int)calculateGtErrP95:(id *)a3 spotLocations:(id *)a4 result:(float *)a5
{
  v5 = 0;
  v30 = *MEMORY[0x277D85DE8];
  v6 = &a4->var0[0].var0[7];
  v7 = &a3->var0[0].var0[7];
  do
  {
    v8.i32[0] = *(v6 - 14);
    v9.i32[0] = *(v6 - 13);
    v10.i32[0] = *(v7 - 14);
    v11.i32[0] = *(v7 - 13);
    v8.i32[1] = *(v6 - 12);
    v8.i32[2] = *(v6 - 10);
    v8.i32[3] = *(v6 - 8);
    v10.i32[1] = *(v7 - 12);
    v10.i32[2] = *(v7 - 10);
    v10.i32[3] = *(v7 - 8);
    v9.i32[1] = *(v6 - 11);
    v9.i32[2] = *(v6 - 9);
    v9.i32[3] = *(v6 - 7);
    v11.i32[1] = *(v7 - 11);
    v11.i32[2] = *(v7 - 9);
    v12 = vsubq_f32(v8, v10);
    v13 = vmulq_f32(v12, v12);
    v11.i32[3] = *(v7 - 7);
    v14 = vsubq_f32(v9, v11);
    v15 = vmlaq_f32(v13, v14, v14);
    v16 = &v29[v5];
    v17.i32[0] = *(v6 - 6);
    v14.i32[0] = *(v6 - 5);
    v18.i32[0] = *(v7 - 6);
    v9.i32[0] = *(v7 - 5);
    *v16 = vsqrtq_f32(v15);
    v17.i32[1] = *(v6 - 4);
    v17.i32[2] = *(v6 - 2);
    v17.i32[3] = *v6;
    v18.i32[1] = *(v7 - 4);
    v18.i32[2] = *(v7 - 2);
    v18.i32[3] = *v7;
    v14.i32[1] = *(v6 - 3);
    v9.i32[1] = *(v7 - 3);
    v19.i32[0] = v6[2];
    v11.i32[0] = v6[3];
    v21.i32[0] = v7[2];
    v20.i32[0] = v7[3];
    v22 = vsubq_f32(v17, v18);
    v14.i32[2] = *(v6 - 1);
    v19.i32[1] = v6[4];
    v9.i32[2] = *(v7 - 1);
    v19.i32[2] = v6[6];
    v14.i32[3] = v6[1];
    v21.i32[1] = v7[4];
    v21.i32[2] = v7[6];
    v19.i32[3] = v6[8];
    v11.i32[1] = v6[5];
    v11.i32[2] = v6[7];
    v21.i32[3] = v7[8];
    v11.i32[3] = v6[9];
    v20.i32[1] = v7[5];
    v9.i32[3] = v7[1];
    v20.i32[2] = v7[7];
    v20.i32[3] = v7[9];
    v23 = vsubq_f32(v19, v21);
    v18.i32[0] = v6[10];
    v19.i32[0] = v6[11];
    v21.i32[0] = v7[10];
    v24.i32[0] = v7[11];
    v25 = vsubq_f32(v11, v20);
    v18.i32[1] = v6[12];
    v21.i32[1] = v7[12];
    v26 = vsubq_f32(v14, v9);
    *v9.f32 = vsub_f32(*v18.f32, *v21.f32);
    v19.i32[1] = v6[13];
    v27 = vmlaq_f32(vmulq_f32(v23, v23), v25, v25);
    v24.i32[1] = v7[13];
    *v25.f32 = vsub_f32(*v19.f32, v24);
    v16[1] = vsqrtq_f32(vmlaq_f32(vmulq_f32(v22, v22), v26, v26));
    v16[2] = vsqrtq_f32(v27);
    *v16[3].f32 = vsqrt_f32(vmla_f32(vmul_f32(*v9.f32, *v9.f32), *v25.f32, *v25.f32));
    v5 += 56;
    v6 += 28;
    v7 += 28;
  }

  while (v5 != 448);
  common::utils::prctile<float>();
}

- (int)calculateItpQual:(const PDAnchors *)a3 spotLocations:(id *)a4 result:(float *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  [(GmoEngine *)self calculateSnrLoss:a3 gtSpotLocations:a4 radialTargetFlag:1 gtSnr:v12 snrLoss:v11];
  __asm { FMOV            V0.4S, #1.0 }

  v13 = vsubq_f32(_Q0, v11[0]);
  v14 = vsubq_f32(_Q0, v11[1]);
  v15 = vsubq_f32(_Q0, v11[2]);
  v16 = vsubq_f32(_Q0, v11[3]);
  v17 = vsubq_f32(_Q0, v11[4]);
  v18 = vsubq_f32(_Q0, v11[5]);
  v19 = vsubq_f32(_Q0, v11[6]);
  v20 = vsubq_f32(_Q0, v11[7]);
  v21 = vsubq_f32(_Q0, v11[8]);
  v22 = vsubq_f32(_Q0, v11[9]);
  v23 = vsubq_f32(_Q0, v11[10]);
  v24 = vsubq_f32(_Q0, v11[11]);
  v25 = vsubq_f32(_Q0, v11[12]);
  v26 = vsubq_f32(_Q0, v11[13]);
  v27 = vsubq_f32(_Q0, v11[14]);
  v28 = vsubq_f32(_Q0, v11[15]);
  v29 = vsubq_f32(_Q0, v11[16]);
  v30 = vsubq_f32(_Q0, v11[17]);
  v31 = vsubq_f32(_Q0, v11[18]);
  v32 = vsubq_f32(_Q0, v11[19]);
  v33 = vsubq_f32(_Q0, v11[20]);
  v34 = vsubq_f32(_Q0, v11[21]);
  v35 = vsubq_f32(_Q0, v11[22]);
  v36 = vsubq_f32(_Q0, v11[23]);
  v37 = vsubq_f32(_Q0, v11[24]);
  v38 = vsubq_f32(_Q0, v11[25]);
  v39 = vsubq_f32(_Q0, v11[26]);
  v40 = vsubq_f32(_Q0, v11[27]);
  common::utils::prctile<float>();
}

- (void)calculateGaussianIntegralForFrame:(id *)a3 anchors:(const PDAnchors *)a4 spotSize:(float)a5 integral:(void *)a6
{
  v8 = 0;
  p_y = &a4->banks[0].anchors[0].y;
  p_var1 = &a3->var0[0].var0[0].var1;
  v10 = 0.70711 / a5;
  do
  {
    v11 = 0;
    v12 = v8;
    v13 = p_var1;
    v14 = p_y;
    v15 = a6;
    do
    {
      v16 = 0;
      v17 = v13;
      v18 = v14;
      do
      {
        LOBYTE(a5) = *(v18 - 1);
        v6.i32[0] = *(v17 - 1);
        v19 = (vmovl_s16(*&vmovl_s8(*&a5)).i32[0] - *v6.i32) + v12;
        v20 = v19 + -1.0;
        v6.i8[0] = *v18;
        v21 = vmovl_s16(*&vmovl_s8(v6)).i32[0] - *v17;
        v22 = v21 + -1.0;
        v23 = erff(v10 * v19);
        v24 = (v23 - erff(v10 * v20)) * 0.5;
        v25 = erff(v10 * v21);
        v26 = (v25 - erff(v10 * v22)) * 0.5;
        *&v26 = v26;
        a5 = *&v26 * v24;
        *&v15[v16] = a5;
        v16 += 48;
        v18 += 3;
        v17 += 2;
      }

      while (v16 != 672);
      ++v11;
      v15 += 672;
      v14 += 42;
      v13 += 28;
    }

    while (v11 != 8);
    v27 = 0;
    v28 = p_var1;
    v29 = p_y;
    v30 = a6;
    v31 = 1.0;
    do
    {
      v32 = v28;
      v33 = v29;
      for (i = 12; i != 684; i += 48)
      {
        LOBYTE(a5) = *(v33 - 1);
        v6.i32[0] = *(v32 - 1);
        v35 = (vmovl_s16(*&vmovl_s8(*&a5)).i32[0] - *v6.i32) + v12;
        v36 = v35 + -1.0;
        v6.i8[0] = *v33;
        v37 = vmovl_s16(*&vmovl_s8(v6)).i32[0] - *v32;
        v38 = v37 + v31;
        v39 = erff(v10 * v35);
        *&v39 = (v39 - erff(v10 * v36)) * 0.5;
        v40 = erff(v10 * v38);
        v41 = erff(v10 * v37);
        v31 = 1.0;
        v42 = (v40 - v41) * 0.5;
        *&v42 = v42;
        a5 = *&v42 * *&v39;
        *&v30[i] = a5;
        v33 += 3;
        v32 += 2;
      }

      ++v27;
      v30 += 672;
      v29 += 42;
      v28 += 28;
    }

    while (v27 != 8);
    v43 = 0;
    v44 = p_var1;
    v45 = p_y;
    v46 = a6;
    do
    {
      v47 = v44;
      v48 = v45;
      for (j = 24; j != 696; j += 48)
      {
        LOBYTE(a5) = *(v48 - 1);
        v6.i32[0] = *(v47 - 1);
        v50 = (vmovl_s16(*&vmovl_s8(*&a5)).i32[0] - *v6.i32) + v12;
        v51 = v50 + -1.0;
        v6.i8[0] = *v48;
        v52 = vmovl_s16(*&vmovl_s8(v6)).i32[0] - *v47;
        v53 = v52 + 2.0;
        v54 = v52 + v31;
        v55 = erff(v10 * v50);
        v56 = (v55 - erff(v10 * v51)) * 0.5;
        v57 = erff(v10 * v53);
        v58 = erff(v10 * v54);
        v31 = 1.0;
        v59 = (v57 - v58) * 0.5;
        *&v59 = v59;
        a5 = *&v59 * v56;
        *&v46[j] = a5;
        v48 += 3;
        v47 += 2;
      }

      ++v43;
      v46 += 672;
      v45 += 42;
      v44 += 28;
    }

    while (v43 != 8);
    v60 = 0;
    v61 = p_var1;
    v62 = p_y;
    v63 = a6;
    v64 = 2.0;
    v65 = 3.0;
    do
    {
      v66 = v61;
      v67 = v62;
      for (k = 36; k != 708; k += 48)
      {
        LOBYTE(a5) = *(v67 - 1);
        v6.i32[0] = *(v66 - 1);
        v69 = (vmovl_s16(*&vmovl_s8(*&a5)).i32[0] - *v6.i32) + v12;
        v70 = v69 + -1.0;
        v6.i8[0] = *v67;
        v71 = vmovl_s16(*&vmovl_s8(v6)).i32[0] - *v66;
        v72 = v71 + v65;
        v73 = v71 + v64;
        v74 = erff(v10 * v69);
        v75 = (v74 - erff(v10 * v70)) * 0.5;
        v76 = erff(v10 * v72);
        v77 = erff(v10 * v73);
        v65 = 3.0;
        v64 = 2.0;
        v78 = (v76 - v77) * 0.5;
        *&v78 = v78;
        a5 = *&v78 * v75;
        *&v63[k] = a5;
        v67 += 3;
        v66 += 2;
      }

      ++v60;
      v63 += 672;
      v62 += 42;
      v61 += 28;
    }

    while (v60 != 8);
    ++v8;
    a6 = a6 + 4;
  }

  while (v8 != 3);
}

- (int)findSpotLocation:(const SpecsResults *)a3 withAnchors:(const SpConfig *)a4 spotLocationEstimation:(void *)a5 outBound:(void *)a6
{
  v11 = 0;
  v12 = 1;
  v13 = vdupq_n_s64(0x7FF8000000000000uLL);
  v50 = v13;
  v14 = a3;
  do
  {
    v15 = v14[56];
    v16 = v15 + v14[14];
    v17 = v14[42];
    v18 = fmaxf((v16 + (v17 + *v14)) + 0.000005, 0.0);
    v19 = v14[70];
    v20 = ((v19 + v14[28]) + v16) + 0.000004;
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    v22 = v14[98];
    v23 = v22 + v15;
    v24 = v14[84];
    v25 = (v23 + (v24 + v17)) + 0.000003;
    if (v25 <= v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = v25;
    }

    v27 = v14[112];
    v28 = ((v27 + v19) + v23) + 0.000002;
    v29 = v28 > v26;
    if (v28 <= v26)
    {
      v28 = v26;
    }

    v30 = v25 > v21 || v29;
    v32 = v20 > v18 && v25 <= v21;
    v33 = v29 || v32;
    v34 = v14[140] + v22;
    v35 = (v34 + (v14[126] + v24)) + 0.000001;
    v36 = v35 <= v28;
    if (v35 > v28)
    {
      v28 = (v34 + (v14[126] + v24)) + 0.000001;
      v30 = 2;
    }

    v37 = v36 & v33;
    v38 = (v14[154] + v27) + v34;
    if (v38 <= v28)
    {
      v39 = v28;
    }

    else
    {
      v39 = v38;
    }

    if (v38 <= v28)
    {
      v40 = v30;
    }

    else
    {
      v40 = 2;
    }

    if (v38 > v28)
    {
      v41 = 1;
    }

    else
    {
      v41 = v37;
    }

    v42 = &a3->var0[v40][v41][v11];
    v43 = *v42;
    *v13.i32 = v42[42] + *v42;
    v44 = 2;
    if (!v41)
    {
      v44 = 1;
    }

    v45 = a3->var0[v40][v44][v11];
    *v13.i32 = *v13.i32 / v39;
    v51 = 0;
    if ([(GmoEngine *)self findSpotLocation1D:&v51 + 4 spotLocation:a6 outBound:*v13.i64, *&v50])
    {
      return v12;
    }

    *&v46 = (v45 + v43) / v39;
    v47.i8[0] = a4->var0[v11];
    *a5 = (v41 + ((*(&v51 + 1) + -1.0) + vmovl_s16(*&vmovl_s8(v47)).i32[0]));
    if ([(GmoEngine *)self findSpotLocation1D:&v51 spotLocation:a6 + 1 outBound:v46])
    {
      return v12;
    }

    v48.i8[0] = a4->var1[v11];
    *v13.i64 = ((*&v51 + vmovl_s16(*&vmovl_s8(v48)).i32[0]) + (v40 - 1));
    *(a5 + 1) = v13.i64[0];
    if (v14[168] < self->_minSpecQsSnr)
    {
      v13.i32[1] = v50.i32[1];
      *a5 = v50;
    }

    v12 = v11 < 0xD;
    ++v14;
    a5 = a5 + 16;
    a6 = a6 + 2;
    ++v11;
  }

  while (v11 != 14);
  return 0;
}

- (int)findSpotLocation1D:(float)a3 spotLocation:(float *)a4 outBound:(BOOL *)a5
{
  *a5 = 0;
  ptr = self->_refRelQs.__ptr_;
  if (*ptr < a3)
  {
    v6 = *self->_refX.__ptr_;
LABEL_5:
    *a4 = v6;
    *a5 = 1;
    return 0;
  }

  v7 = self->_refXSize - 1;
  if (ptr[v7] > a3)
  {
    v6 = self->_refX.__ptr_[v7];
    goto LABEL_5;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    v11 = ptr[v9];
    if (v9 >= v7)
    {
      break;
    }

    ++v9;
  }

  while (v11 >= a3);
  *a4 = (((self->_refX.__ptr_[v10] - self->_refX.__ptr_[v10 - 1]) * (a3 - ptr[v10 - 1])) / (v11 - ptr[v10 - 1])) + self->_refX.__ptr_[v10 - 1];
  return 0;
}

- (int)calculateSpecQs:(const GmoProcessBankInputs *)a3 pulsesPerphase:(unint64_t)a4 specsOut:(SpecsResults *)a5
{
  v5 = (MEMORY[0x28223BE20])(self, a2, a3);
  __b = v8;
  v98 = v5;
  v116[1018] = *MEMORY[0x277D85DE8];
  v10 = *(v6 + 24);
  v9 = *(v6 + 32);
  v97 = v6;
  if (v9)
  {
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v12 = 0;
    v13 = vdupq_lane_s64(COERCE__INT64(v7 + -1.0), 0);
    v14 = vdupq_lane_s64(COERCE__INT64(1.0 / v7), 0);
    v15 = (v6 + 892);
    v16 = v116;
    __asm { FMOV            V6.2D, #1.0 }

    v113 = -v7;
    v114 = v13;
    v110 = _Q6;
    v111 = v14;
    do
    {
      v99 = v12;
      v21 = 0;
      v22 = v16;
      v23 = v15;
      do
      {
        v24 = v22;
        v25 = v23;
        v26 = v10;
        do
        {
          v27 = *v25[-4].f32;
          v28 = vcvtq_f64_f32(*v27.f32);
          v29 = vcvt_hight_f64_f32(v27);
          v107 = vmlsq_f64(_Q6, v14, vbslq_s8(vcgtq_f64(v29, v13), v114, v29));
          __x = vmlsq_f64(_Q6, v14, vbslq_s8(vcgtq_f64(v28, v114), v114, v28));
          v103 = log(__x.f64[1]);
          v30.f64[0] = log(__x.f64[0]);
          v30.f64[1] = v103;
          v104 = v30;
          __x.f64[0] = log(v107.f64[1]);
          v31.f64[0] = log(v107.f64[0]);
          v31.f64[1] = __x.f64[0];
          v24[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v104, v113)), vmulq_n_f64(v31, v113));
          v32 = *v25[-2].f32;
          v33 = vcvtq_f64_f32(*v32.f32);
          v34 = vcvt_hight_f64_f32(v32);
          v108 = vmlsq_f64(v110, v111, vbslq_s8(vcgtq_f64(v34, v114), v114, v34));
          __xa = vmlsq_f64(v110, v111, vbslq_s8(vcgtq_f64(v33, v114), v114, v33));
          v104.f64[0] = log(__xa.f64[1]);
          v35.f64[0] = log(__xa.f64[0]);
          v35.f64[1] = v104.f64[0];
          v105 = v35;
          __xa.f64[0] = log(v108.f64[1]);
          v36.f64[0] = log(v108.f64[0]);
          v36.f64[1] = __xa.f64[0];
          v24[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v105, v113)), vmulq_n_f64(v36, v113));
          v37 = vcvtq_f64_f32(*v25);
          v38 = vcvt_hight_f64_f32(*v25->f32);
          v109 = vmlsq_f64(v110, v111, vbslq_s8(vcgtq_f64(v38, v114), v114, v38));
          __xb = vmlsq_f64(v110, v111, vbslq_s8(vcgtq_f64(v37, v114), v114, v37));
          v105.f64[0] = log(__xb.f64[1]);
          v39.f64[0] = log(__xb.f64[0]);
          v39.f64[1] = v105.f64[0];
          v106 = v39;
          __xb.f64[0] = log(v109.f64[1]);
          v40.f64[0] = log(v109.f64[0]);
          _Q6 = v110;
          v14 = v111;
          v13 = v114;
          v40.f64[1] = __xb.f64[0];
          *v24 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v106, v113)), vmulq_n_f64(v40, v113));
          v25 += 84;
          v24 += 42;
          --v26;
        }

        while (v26);
        ++v21;
        v23 += 336;
        v22 += 168;
      }

      while (v21 != v9);
      v12 = v99 + 1;
      v15 += 6;
      v16 += 3;
    }

    while (v99 != 13);
  }

  v41 = 0;
  v42 = 0;
  v43 = v97 + 103;
  v44 = v97 + 20;
  do
  {
    if (v43[1] <= 0.8)
    {
      if (v43[5] <= 0.8)
      {
        *(&v116[1011] + v41) = 2143289344;
        v48 = &v116[1004] + v41;
        goto LABEL_13;
      }

      if (*v44 <= 0.8)
      {
        v50 = 2143289344;
      }

      else
      {
        v50 = *(v43 + 4);
      }

      v47 = &v116[1011] + v41;
      *(&v116[1011] + v41) = v50;
      v48 = &v116[1004] + 4 * v42;
      *(&v116[1004] + v41) = v50;
      goto LABEL_32;
    }

    v45 = *v44;
    v46 = v43[5];
    if (v46 > 0.8)
    {
      if (v45 <= 0.8)
      {
LABEL_27:
        v47 = &v116[1011] + v41;
        *(&v116[1011] + v41) = 2143289344;
        v48 = &v116[1004] + 4 * v42;
        *(&v116[1004] + v41) = 2143289344;
        if (v43[3] > 0.8)
        {
          goto LABEL_12;
        }

        if (v46 <= 0.8)
        {
          goto LABEL_14;
        }

        v47 = &v116[1011] + 4 * v42;
      }

      else
      {
        v47 = &v116[1011] + 4 * v42;
        *(&v116[1011] + v41) = *v43;
        v48 = &v116[1004] + v41;
        v49 = v43[3];
        *(&v116[1004] + v41) = v43[4];
        if (v49 > 0.8)
        {
          goto LABEL_12;
        }
      }

LABEL_32:
      if (v43[7] > 0.8)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (v45 <= 0.8)
    {
      goto LABEL_27;
    }

    v51 = *v43;
    *(&v116[1011] + v41) = *v43;
    *(&v116[1004] + v41) = v51;
    if (v43[3] > 0.8)
    {
      v47 = &v116[1011] + 4 * v42;
      v48 = &v116[1004] + 4 * v42;
LABEL_12:
      *v47 = 2143289344;
LABEL_13:
      *v48 = 2143289344;
    }

LABEL_14:
    ++v42;
    v41 += 4;
    v44 += 6;
    v43 += 8;
  }

  while (v41 != 56);
  memset_pattern16(__b, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 56, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 112, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 168, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 224, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 280, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 336, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 392, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 448, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 504, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 560, &unk_2247A54B0, 0x38uLL);
  memset_pattern16(__b + 616, &unk_2247A54B0, 0x38uLL);
  v52 = 0;
  v53 = 0;
  *(__b + 188) = 0;
  *(__b + 45) = 0u;
  *(__b + 46) = 0u;
  *(__b + 43) = 0u;
  *(__b + 44) = 0u;
  *(__b + 42) = 0u;
  v54 = 4.0;
  v55 = -1.0;
  v56 = v98;
  do
  {
    v57 = (v55 - v56[6] + round(*(&v116[1011] + v52) / (v97[10] * v54)));
    if (v57 <= 0x5B)
    {
      v115 = v53;
      v58 = v56[20];
      v59 = v57 << 7;
      if (*(v58 + (v57 << 7)))
      {
        operator new();
      }

      if (*(v58 + v59 + 32))
      {
        operator new();
      }

      if (*(v98[20] + v59 + 64))
      {
        operator new();
      }

      if (*(v98[20] + v59 + 96))
      {
        operator new();
      }

      v56 = v98;
      v53 = v115;
      v54 = 4.0;
      v55 = -1.0;
    }

    v60 = ((-1.0 - v56[4]) + roundf(*(&v116[1004] + v52) / v97[10]));
    if (v60 <= 0x5B)
    {
      v61 = v56[20];
      if (*(v61 + (v60 << 7) + 16))
      {
        operator new();
      }

      if (*(v61 + (v60 << 7) + 48))
      {
        operator new();
      }

      if (*(v98[20] + (v60 << 7) + 80))
      {
        operator new();
      }

      if (*(v98[20] + (v60 << 7) + 112))
      {
        operator new();
      }

      v56 = v98;
    }

    if ((__b[v52 + 728] & 1) != 0 || __b[v52 + 742] == 1)
    {
      v62 = &__b[4 * v52];
      v63 = v62[56];
      v64 = v63 + v62[14];
      v65 = v62[42];
      v66 = (v64 + (v65 + *v62)) + 0.000005;
      v67 = fmaxf(v66, 0.0);
      if (v66 <= 0.0)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = v66 * 0.25;
      }

      v69 = v62[70];
      v70 = ((v69 + v62[28]) + v64) + 0.000004;
      if (v70 > v67)
      {
        v68 = v70 * 0.25;
      }

      else
      {
        v70 = v67;
      }

      v71 = v62[98];
      v72 = v71 + v63;
      v73 = v62[84];
      v74 = (v72 + (v73 + v65)) + 0.000003;
      if (v74 <= v70)
      {
        v75 = v70;
      }

      else
      {
        v75 = v74;
      }

      if (v74 > v70)
      {
        v68 = v74 * 0.25;
      }

      v76 = v62[112];
      v77 = ((v76 + v69) + v72) + 0.000002;
      LODWORD(v78) = v77 > v75;
      if (v77 > v75)
      {
        v68 = v77 * 0.25;
      }

      else
      {
        v77 = v75;
      }

      if (v74 > v70)
      {
        v78 = 1;
      }

      else
      {
        v78 = v78;
      }

      v79 = v62[140] + v71;
      v80 = (v79 + (v62[126] + v73)) + 0.000001;
      v81 = v80 <= v77;
      if (v80 <= v77)
      {
        v82 = v68;
      }

      else
      {
        v77 = (v79 + (v62[126] + v73)) + 0.000001;
        v82 = v80 * 0.25;
      }

      v83 = (v62[154] + v76) + v79;
      v84 = v81 && v83 <= v77;
      v85 = 2;
      if (v84)
      {
        v85 = v78;
      }

      if (v83 <= v77)
      {
        v86 = v82;
      }

      else
      {
        v86 = v83 * 0.25;
      }

      *&v87 = v86;
      if (v85 == 2)
      {
        v93 = *&v87 / sqrt(*&v87 + (0 * 0 / v53 + 0) * 0.0);
      }

      else
      {
        v88 = vcvtq_f64_u64(0);
        v89.i64[0] = 0;
        v89.i64[1] = v53;
        v90 = vaddq_f64(vdivq_f64(vmulq_f64(v88, v88), vcvtq_f64_u64(v89)), v88);
        v91 = vdupq_lane_s64(v87, 0);
        v92 = vaddvq_f64(vdivq_f64(v91, vsqrtq_f64(vmlaq_f64(v91, vcvtq_f64_f32(0), v90)))) * 0.5;
        v93 = *&v87 / sqrt(*&v87 + (0 * 0 / 0 + 0) * 0.0);
        if (v85)
        {
          v93 = v92;
        }
      }

      v94 = v93;
      *&__b[4 * v52 + 672] = v94;
    }

    v112 = v52++ < 0xD;
  }

  while (v52 != 14);
  return v112;
}

- (int)configureEngineWithSpecConfig:(const PRIConfigSpec *)a3
{
  v3 = (MEMORY[0x28223BE20])(self, a2, a3);
  v5 = v4;
  v6 = v3;
  v16 = *MEMORY[0x277D85DE8];
  bzero(*(v3 + 144), *(v3 + 152));
  bzero(*(v6 + 136), 8 * *(v6 + 152));
  bzero(*(v6 + 160), 8 * *(v6 + 168));
  bzero(*(v6 + 176), 8 * *(v6 + 184));
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  *(v6 + 264) = v5[3];
  *(v6 + 248) = v9;
  *(v6 + 232) = v8;
  *(v6 + 216) = v7;
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[7];
  *(v6 + 312) = v5[6];
  *(v6 + 328) = v12;
  *(v6 + 280) = v10;
  *(v6 + 296) = v11;
  bzero(v15, 0x1140uLL);
  [v6 specSwitch:0 from:v6 + 216 toBuffer:&v14];
  operator new();
}

- (GmoEngine)initWithPulseShape:(const float *)a3 pulseShapeSize:(unint64_t)a4 spotSizeSigma:(float)a5 unitInfo:(const PeridotUnitInfo *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = GmoEngine;
  v6 = [(GmoEngine *)&v14 init];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[GmoEngine initWithPulseShape:pulseShapeSize:spotSizeSigma:unitInfo:]";
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMOE Init ...", buf, 0xCu);
  }

  if (v6)
  {
    *(v6 + 13) = 25;
    *(v6 + 12) = 0x3FE6666640200000;
    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"0", @"0.5", @"1.5", @"2.5", @"3.5", @"4.5", @"5.5", @"6.5", @"7.5", @"8.5", @"9.5", @"11", @"13", @"15", @"17", @"19", @"21", @"23", @"25", @"27", @"29", @"32.5", @"37.5", @"42.5", @"47.5", @"52.5", @"57.5", @"62.5", @"67.5", 0}];
    v8 = *(v6 + 14);
    *(v6 + 14) = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"10", @"1.2528", @"0.3622", @"0.1795", @"0.1291", @"0.1120", @"0.0952", @"0.0805", @"0.0668", @"0.0563", @"0.0480", @"0.0405", @"0.0341", @"0.0293", @"0.0253", @"0.0213", @"0.0193", @"0.0175", @"0.0165", @"0.0154", @"0.0142", @"0.0127", @"0.0115", @"0.0104", @"0.0096", @"0.0087", @"0.0084", @"0.0079", @"0.0074", 0}];
    v10 = *(v6 + 15);
    *(v6 + 15) = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"0", @"3", @"21", @"52", @"89", @"131", @"180", @"256", @"363", @"509", @"711", @"996", @"1378", @"1877", @"2580", @"3375", @"4266", @"5035", @"5836", @"6722", @"8044", @"9794", @"12037", @"14470", @"17426", @"20003", @"22709", @"25351", @"28560", 0}];
    v12 = *(v6 + 16);
    *(v6 + 16) = v11;

    *(v6 + 11) = 21;
    operator new[]();
  }

  return 0;
}

- (void)specSwitch:(unint64_t)a3 from:(const PRIConfigSpec *)a4 toBuffer:(unsigned __int8)a5[16]
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      p_spect1hp = &a4->data[0].spect1hp;
      v6 = 124;
      v7 = 116;
      v8 = 108;
      v9 = 100;
      v10 = 92;
      v11 = 84;
      v12 = 76;
      v13 = 68;
      v14 = 60;
      v15 = 52;
      v16 = 44;
      v17 = 36;
      v18 = 28;
      v19 = 20;
      v20 = 12;
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      p_spect1hp = &a4->data[0].spect1pepx;
      v6 = 126;
      v7 = 118;
      v8 = 110;
      v9 = 102;
      v10 = 94;
      v11 = 86;
      v12 = 78;
      v13 = 70;
      v14 = 62;
      v15 = 54;
      v16 = 46;
      v17 = 38;
      v18 = 30;
      v19 = 22;
      v20 = 14;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a3)
    {
      v6 = 120;
      v7 = 112;
      v8 = 104;
      v9 = 96;
      v10 = 88;
      v11 = 80;
      v12 = 72;
      v13 = 64;
      v14 = 56;
      v15 = 48;
      v16 = 40;
      v17 = 32;
      v18 = 24;
      v19 = 16;
      v20 = 8;
      p_spect1hp = a4;
      goto LABEL_11;
    }

    if (a3 == 1)
    {
      p_spect1hp = &a4->data[0].spect1hs2;
      v6 = 122;
      v7 = 114;
      v8 = 106;
      v9 = 98;
      v10 = 90;
      v11 = 82;
      v12 = 74;
      v13 = 66;
      v14 = 58;
      v15 = 50;
      v16 = 42;
      v17 = 34;
      v18 = 26;
      v19 = 18;
      v20 = 10;
LABEL_11:
      *a5 = p_spect1hp->data[0].spect1hs1;
      a5[1] = *(&a4->data[0].spect1hs1 + v20);
      a5[2] = *(&a4->data[0].spect1hs1 + v19);
      a5[3] = *(&a4->data[0].spect1hs1 + v18);
      a5[4] = *(&a4->data[0].spect1hs1 + v17);
      a5[5] = *(&a4->data[0].spect1hs1 + v16);
      a5[6] = *(&a4->data[0].spect1hs1 + v15);
      a5[7] = *(&a4->data[0].spect1hs1 + v14);
      a5[8] = *(&a4->data[0].spect1hs1 + v13);
      a5[9] = *(&a4->data[0].spect1hs1 + v12);
      a5[10] = *(&a4->data[0].spect1hs1 + v11);
      a5[11] = *(&a4->data[0].spect1hs1 + v10);
      a5[12] = *(&a4->data[0].spect1hs1 + v9);
      a5[13] = *(&a4->data[0].spect1hs1 + v8);
      a5[14] = *(&a4->data[0].spect1hs1 + v7);
      a5[15] = *(&a4->data[0].spect1hs1 + v6);
    }
  }
}

@end