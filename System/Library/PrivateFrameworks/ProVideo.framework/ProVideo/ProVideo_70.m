uint64_t ___ZN14LiPhysicsUtils14ConfigureSceneEP19Li3DEngineWorldDataP15Li3DEngineSceneP8SCNScenefb_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [a2 geometry];
  if (result)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [objc_msgSend(a2 geometry];
    result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v9 + 1) + 8 * v8++) setBlendMode:*(a1 + 32)];
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

void *std::map<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ___ZL16ConfigurePhysicsRKNSt3__110shared_ptrI20Li3DEngineObjectDataEEPNS_3mapIyS2_NS_4lessIyEENS_9allocatorINS_4pairIKyS2_EEEEEERK14PCMatrix44TmplIfEP15Li3DEngineScenefb_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 particleSystems];
  result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [(SCNParticleSystem *)v8 setParticleCharge:*(a1 + 224) * *(a1 + 248)];
        [(SCNParticleSystem *)v8 setParticleChargeVariation:*(a1 + 232) * *(a1 + 248)];
        v9 = Li3DEngineScene::particleParameters(*(**(a1 + 240) + 8), v8);
        if (v9)
        {
          v10 = v9;
          [(SCNParticleSystem *)v8 setParticleVelocity:*(v9 + 8) * *(a1 + 248)];
          [(SCNParticleSystem *)v8 setParticleVelocityVariation:*(v10 + 16) * *(a1 + 248)];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

__n128 __copy_helper_block_e8_32c36_ZTSK29Li3DEngineObjectPhysicsParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v3 = a1 + 88;
  ProCore_Impl::PCNSRefImpl::retain((a1 + 88));
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(v3 + 40) = *(a2 + 128);
  *(v3 + 24) = v5;
  *(v3 + 8) = v4;
  *(v3 + 56) = *(a2 + 144);
  *(v3 + 72) = *(a2 + 160);
  *(v3 + 88) = *(a2 + 176);
  *(v3 + 104) = *(a2 + 192);
  result = *(a2 + 200);
  v7 = *(a2 + 216);
  *(v3 + 144) = *(a2 + 232);
  *(v3 + 112) = result;
  *(v3 + 128) = v7;
  return result;
}

BOOL PCMatrix44Tmpl<float>::getTransformation(__int128 *a1, uint64_t a2)
{
  v56 = 1065353216;
  v53 = 1.0;
  v50 = 1.0;
  v47 = 1065353216;
  v49 = 0;
  v48 = 0;
  v51 = 0;
  v52 = 0;
  v55 = 0;
  v54 = 0;
  PartialTransformation = PCMatrix44Tmpl<float>::getPartialTransformation(a1, a2, &v47);
  if (PartialTransformation)
  {
    v11 = *(a2 + 24);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v23 = asin(-*&v48);
        *(a2 + 36) = v23;
        v24 = cos(v23);
        if (fabsf(v24) < 0.00001)
        {
          v25 = v53;
          v26 = -*&v51;
LABEL_21:
          v29 = atan2(v26, v25);
          *(a2 + 28) = v29;
          *(a2 + 32) = 0;
          return PartialTransformation;
        }

        v36 = atan2(*(&v52 + 1), v50);
        *(a2 + 28) = v36;
        v37 = *(&v48 + 1);
        v38 = *&v47;
LABEL_32:
        v43 = atan2(v37, v38);
        *(a2 + 32) = v43;
        return PartialTransformation;
      }

      if (v11 != 4)
      {
        if (v11 != 5)
        {
          goto LABEL_18;
        }

        v16 = asin(*(&v48 + 1));
        *(a2 + 32) = v16;
        v17 = cos(v16);
        if (fabsf(v17) >= 0.00001)
        {
          v41 = atan2(-*&v51, v53);
          *(a2 + 28) = v41;
          v35 = *&v47;
          v40 = *&v48;
LABEL_30:
          v34 = -v40;
          goto LABEL_34;
        }

        v18 = *(&v52 + 1);
        v19 = v50;
LABEL_15:
        v22 = atan2(v18, v19);
        *(a2 + 28) = v22;
LABEL_25:
        *(a2 + 36) = 0;
        return PartialTransformation;
      }

      v30 = asin(-*&v51);
      *(a2 + 28) = v30;
      v31 = cos(v30);
      if (fabsf(v31) < 0.00001)
      {
        v15 = *&v47;
        v14 = -*&v52;
        goto LABEL_24;
      }

      v44 = atan2(*(&v48 + 1), v53);
      *(a2 + 32) = v44;
      v34 = *(&v49 + 1);
      v35 = v50;
    }

    else
    {
      if (v11)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            v12 = asin(*(&v52 + 1));
            *(a2 + 28) = v12;
            v13 = cos(v12);
            if (fabsf(v13) < 0.00001)
            {
              v14 = *(&v48 + 1);
              v15 = *&v47;
LABEL_24:
              v32 = atan2(v14, v15);
              *(a2 + 32) = v32;
              goto LABEL_25;
            }

            v39 = atan2(-*&v52, v53);
            *(a2 + 32) = v39;
            v40 = *&v48;
            v35 = v50;
            goto LABEL_30;
          }

LABEL_18:
          PCPrint("File %s, line %d should not have been reached:\n\t", v3, v4, v5, v6, v7, v8, v9, "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMatrix44.h");
          pcAbortImpl();
        }

        v27 = asin(*(&v49 + 1));
        *(a2 + 36) = v27;
        v28 = cos(v27);
        if (fabsf(v28) < 0.00001)
        {
          v26 = *(&v52 + 1);
          v25 = v53;
          goto LABEL_21;
        }

        v42 = atan2(-*&v51, v50);
        *(a2 + 28) = v42;
        v38 = *&v47;
        v37 = -*&v52;
        goto LABEL_32;
      }

      v20 = asin(-*&v52);
      *(a2 + 32) = v20;
      v21 = cos(v20);
      if (fabsf(v21) < 0.00001)
      {
        v19 = v50;
        v18 = -*&v51;
        goto LABEL_15;
      }

      v33 = atan2(*(&v52 + 1), v53);
      *(a2 + 28) = v33;
      v34 = *(&v49 + 1);
      v35 = *&v47;
    }

LABEL_34:
    v45 = atan2(v34, v35);
    *(a2 + 36) = v45;
  }

  return PartialTransformation;
}

BOOL PCMatrix44Tmpl<float>::getPartialTransformation(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v87 = *a1;
  v88 = v3;
  v4 = a1[3];
  v89 = a1[2];
  v90 = v4;
  if (*(&v4 + 3) == 0.0)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v87;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v10 + i) = *(v10 + i) / *(&v90 + 3);
    }

    ++v9;
    ++v10;
  }

  while (v9 != 4);
  v12 = 0;
  HIDWORD(v86) = 1065353216;
  v83 = 0;
  v84 = 1065353216;
  v81 = 1065353216;
  v77 = 1065353216;
  v78 = 1065353216;
  v80 = 0;
  v79 = 0;
  v82 = 0;
  v74 = 1065353216;
  v71 = 1065353216;
  v68 = 1.0;
  v70 = 0;
  v69 = 0;
  v72 = 0;
  v73 = 0;
  v76 = 0;
  v75 = 0;
  v67 = 0uLL;
  do
  {
    *(&v78 + v12) = *(&v87 + v12);
    v12 += 16;
  }

  while (v12 != 64);
  v85 = 0;
  v86 = 0x3F80000000000000;
  *v13.f32 = PCMatrix44Tmpl<float>::determinant(&v78);
  v5 = v13.f32[0] != 0.0;
  if (v13.f32[0] != 0.0)
  {
    v14.i64[0] = v90;
    if (*&v90 != 0.0 || *(&v90 + 1) != 0.0 || *(&v90 + 2) != 0.0)
    {
      v65 = DWORD2(v90);
      v66 = v90;
      v15 = 0;
      v64 = HIDWORD(v90);
      do
      {
        *(&v68 + v15) = *(&v78 + v15);
        v15 += 16;
      }

      while (v15 != 64);
      PCMatrix44Tmpl<float>::invert(&v68, &v68, 0.0, v14);
      v17 = HIDWORD(v69);
      v16 = v69;
      v18 = v70;
      v19 = HIDWORD(v73);
      v69 = __PAIR64__(v73, HIDWORD(v70));
      v70 = __PAIR64__(v16, HIDWORD(v75));
      v20 = v75;
      v21 = HIDWORD(v72);
      v73 = __PAIR64__(v72, v17);
      v72 = __PAIR64__(v76, v19);
      v75 = __PAIR64__(v18, HIDWORD(v76));
      v76 = __PAIR64__(v20, v21);
      *&v22 = v66;
      *(&v22 + 1) = __PAIR64__(v64, v65);
      v67 = v22;
      PCMatrix44Tmpl<float>::transform<float>(&v68, &v67, &v67);
    }

    v23 = HIDWORD(v88);
    *a2 = HIDWORD(v87);
    *(a2 + 4) = v23;
    *(a2 + 8) = HIDWORD(v89);
    *a3 = v87;
    *(a3 + 8) = DWORD2(v87);
    v24 = *(a3 + 12);
    v13.f32[0] = ((*a3 * *a3) + (*(a3 + 4) * *(a3 + 4))) + (*(a3 + 8) * *(a3 + 8));
    *(a3 + 32) = v89;
    v25 = (a3 + 32);
    *(a3 + 24) = DWORD2(v88);
    *(a3 + 16) = v88;
    *(a3 + 40) = DWORD2(v89);
    *(a2 + 12) = sqrtf(v13.f32[0] + (v24 * v24));
    v13.i32[0] = 1.0;
    v26 = PCVector4<float>::scale(a3, v13);
    v27 = *(a3 + 4);
    v28 = *(a3 + 20);
    v29 = *(a3 + 24);
    v30 = *(a3 + 8);
    v31 = *(a3 + 12);
    v32 = *(a3 + 28);
    v33 = (((*a3 * *(a3 + 16)) + (v27 * v28)) + (v30 * v29)) + (v31 * v32);
    v26.f32[0] = *(a3 + 16) - (*a3 * v33);
    v34 = v28 - (v27 * v33);
    v35 = v29 - (v30 * v33);
    v36 = v32 - (v31 * v33);
    *(a3 + 16) = v26.i32[0];
    *(a3 + 20) = v34;
    *(a3 + 24) = v35;
    *(a3 + 28) = v36;
    *(a2 + 16) = sqrtf((v36 * v36) + ((v35 * v35) + ((v26.f32[0] * v26.f32[0]) + (v34 * v34))));
    v26.i32[0] = 1.0;
    v37 = PCVector4<float>::scale((a3 + 16), v26);
    v38 = *(a3 + 4);
    v39 = *(a3 + 36);
    v40 = *(a3 + 40);
    v41 = *(a3 + 8);
    v42 = *(a3 + 12);
    v43 = *(a3 + 44);
    v44 = (((*a3 * *(a3 + 32)) + (v38 * v39)) + (v41 * v40)) + (v42 * v43);
    v37.f32[0] = *(a3 + 32) - (*a3 * v44);
    v45 = v39 - (v38 * v44);
    v46 = v40 - (v41 * v44);
    v47 = v43 - (v42 * v44);
    v48 = *(a3 + 16);
    v49 = *(a3 + 20);
    v50 = *(a3 + 24);
    v51 = *(a3 + 28);
    v52 = (((v37.f32[0] * v48) + (v45 * v49)) + (v46 * v50)) + (v47 * v51);
    *(a2 + 40) = v44;
    *(a2 + 44) = v52;
    v37.f32[0] = v37.f32[0] - (v48 * v52);
    v53 = v45 - (v49 * v52);
    v54 = v46 - (v50 * v52);
    v55 = v47 - (v51 * v52);
    *(a3 + 32) = v37.i32[0];
    *(a3 + 36) = v53;
    *(a3 + 40) = v54;
    *(a3 + 44) = v55;
    *(a2 + 20) = sqrtf((v55 * v55) + ((v54 * v54) + ((v37.f32[0] * v37.f32[0]) + (v53 * v53))));
    v37.i32[0] = 1.0;
    v56 = PCVector4<float>::scale((a3 + 32), v37);
    v56.i32[0] = *(a2 + 20);
    *(a2 + 40) = vdiv_f32(*(a2 + 40), vdup_lane_s32(*v56.f32, 0));
    v57 = *(a3 + 20);
    v58 = *(a3 + 36);
    v59.i32[0] = vdup_lane_s32(v58, 1).u32[0];
    v59.i32[1] = *(a3 + 32);
    v60.i32[0] = vdup_lane_s32(v57, 1).u32[0];
    v60.i32[1] = *(a3 + 16);
    v61 = vmul_f32(vsub_f32(vmul_f32(v57, v59), vmul_f32(v58, v60)), *a3);
    v62 = vmul_f32(COERCE_UNSIGNED_INT((v60.f32[1] * v58.f32[0]) - (v59.f32[1] * v57.f32[0])), *(a3 + 8));
    if (vadd_f32(vadd_f32(vadd_f32(v61, vdup_lane_s32(v61, 1)), v62), vdup_lane_s32(v62, 1)).f32[0] < 0.0)
    {
      *(a2 + 12) = vneg_f32(*(a2 + 12));
      *(a2 + 20) = -v56.f32[0];
      v63 = 3;
      do
      {
        *(v25 - 8) = -*(v25 - 8);
        *(v25 - 4) = -*(v25 - 4);
        *v25 = -*v25;
        ++v25;
        --v63;
      }

      while (v63);
    }
  }

  return v5;
}

float32x2_t PCMatrix44Tmpl<float>::determinant(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 36);
  v4 = *(a1 + 48);
  v3 = *(a1 + 52);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = vmul_f32(vrev64_s32(v5), v6);
  v8 = (v3 * v2) - (v1 * v4);
  v9 = vsub_f32(vmul_n_f32(v5, v1), vmul_n_f32(v6, v3));
  v10 = vsub_f32(vmul_n_f32(v5, v2), vmul_n_f32(v6, v4));
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = vmul_n_f32(v11, v8);
  v14 = vadd_f32(vsub_f32(vrev64_s32(vmul_n_f32(v12, vsub_f32(v7, vdup_lane_s32(v7, 1)).f32[0])), vmul_n_f32(vzip2_s32(v9, v10), v11.f32[0])), vmul_lane_f32(vzip1_s32(v9, v10), v11, 1));
  v15 = vadd_f32(v13, vsub_f32(vmul_n_f32(v9, v12.f32[0]), vmul_lane_f32(v10, v12, 1)));
  v16 = vmul_f32(v14, *a1);
  v17 = vmul_f32(v15, vrev64_s32(*(a1 + 8)));
  return vsub_f32(vadd_f32(vdup_lane_s32(v17, 1), vsub_f32(v16, vdup_lane_s32(v16, 1))), v17);
}

float32x4_t PCVector4<float>::scale(float32x4_t *a1, float32x4_t result)
{
  v2 = *a1;
  v3 = vmulq_f32(v2, v2);
  v4 = sqrtf(vadd_f32(vadd_f32(vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)), *&vextq_s8(v3, v3, 8uLL)), vdup_laneq_s32(v3, 3)).f32[0]);
  if (v4 != 0.0)
  {
    result = vmulq_n_f32(v2, result.f32[0] / v4);
    *a1 = result;
  }

  return result;
}

BOOL PCMatrix44Tmpl<float>::invert(uint64_t a1, float32x2_t *a2, float a3, float32x4_t a4)
{
  v5 = a2[4].f32[0];
  v4 = a2[4].f32[1];
  v7 = a2[6].f32[0];
  v6 = a2[6].f32[1];
  v8 = (v6 * v5) - (v4 * v7);
  v9 = a2[7];
  v10 = a2[5];
  v11 = vmul_f32(vrev64_s32(v9), v10);
  v12 = vsub_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vsub_f32(vmul_n_f32(v9, v4), vmul_n_f32(v10, v6));
  v14 = vsub_f32(vmul_n_f32(v9, v5), vmul_n_f32(v10, v7));
  v16 = a2[2];
  v15 = a2[3];
  *v17.f32 = vadd_f32(vsub_f32(vrev64_s32(vmul_n_f32(v16, v12.f32[0])), vmul_n_f32(vzip2_s32(v13, v14), v15.f32[0])), vmul_lane_f32(vzip1_s32(v13, v14), v15, 1));
  *a4.f32 = vadd_f32(vmul_n_f32(v15, v8), vsub_f32(vmul_n_f32(v13, v16.f32[0]), vmul_lane_f32(v14, v16, 1)));
  v18 = *a2;
  v19 = a2[1];
  v20 = vmul_f32(*v17.f32, *a2);
  v21 = vrev64_s32(v19);
  v22 = vmul_f32(*a4.f32, v21);
  v23 = vsub_f32(vadd_f32(vdup_lane_s32(v22, 1), vsub_f32(v20, vdup_lane_s32(v20, 1))), v22).f32[0];
  v24 = fabsf(v23) >= a3 && v23 != 0.0;
  if (v24)
  {
    v25 = vmuls_lane_f32(v15.f32[0], v9, 1) - vmuls_lane_f32(v9.f32[0], v15, 1);
    v26 = vmuls_lane_f32(v9.f32[1], v16, 1) - vmuls_lane_f32(v6, v15, 1);
    v27 = vmuls_lane_f32(v9.f32[0], v16, 1) - (v6 * v15.f32[0]);
    v28 = vmuls_lane_f32(v16.f32[0], v9, 1) - vmuls_lane_f32(v7, v15, 1);
    v29 = vmul_f32(v9, v16).f32[0] - (v7 * v15.f32[0]);
    v30 = (v6 * v16.f32[0]) - vmuls_lane_f32(v7, v16, 1);
    v31 = vmuls_lane_f32(v15.f32[0], v10, 1) - vmuls_lane_f32(v10.f32[0], v15, 1);
    v32 = vmuls_lane_f32(v10.f32[1], v16, 1) - vmuls_lane_f32(v4, v15, 1);
    v33 = vmuls_lane_f32(v10.f32[0], v16, 1) - (v4 * v15.f32[0]);
    v34 = vmuls_lane_f32(v16.f32[0], v10, 1) - vmuls_lane_f32(v5, v15, 1);
    v35 = vmul_f32(v10, v16).f32[0] - (v5 * v15.f32[0]);
    v36 = (v4 * v16.f32[0]) - vmuls_lane_f32(v5, v16, 1);
    v37 = (vmuls_lane_f32(v12.f32[0], v18, 1) - vmuls_lane_f32(v19.f32[0], v13, 1)) + vmul_f32(v13, v21).f32[0];
    v38.f32[0] = (vmul_f32(v12, v18).f32[0] - vmuls_lane_f32(v19.f32[0], v14, 1)) + vmul_f32(v14, v21).f32[0];
    v39 = (vmuls_lane_f32(v18.f32[0], v13, 1) - vmuls_lane_f32(v14.f32[1], v18, 1)) + vmuls_lane_f32(v8, v19, 1);
    v40 = (vmul_f32(v13, v18).f32[0] - vmuls_lane_f32(v14.f32[0], v18, 1)) + (v8 * v19.f32[0]);
    v41 = (vmuls_lane_f32(v25, v18, 1) - (v26 * v19.f32[0])) + vmuls_lane_f32(v27, v19, 1);
    v42 = ((v25 * v18.f32[0]) - (v28 * v19.f32[0])) + vmuls_lane_f32(v29, v19, 1);
    v43 = ((v26 * v18.f32[0]) - vmuls_lane_f32(v28, v18, 1)) + vmuls_lane_f32(v30, v19, 1);
    v44 = ((v27 * v18.f32[0]) - vmuls_lane_f32(v29, v18, 1)) + (v30 * v19.f32[0]);
    v45 = (vmuls_lane_f32(v31, v18, 1) - (v32 * v19.f32[0])) + vmuls_lane_f32(v33, v19, 1);
    *&v46 = ((v31 * v18.f32[0]) - (v34 * v19.f32[0])) + vmuls_lane_f32(v35, v19, 1);
    v21.f32[0] = ((v32 * v18.f32[0]) - vmuls_lane_f32(v34, v18, 1)) + vmuls_lane_f32(v36, v19, 1);
    v47 = ((v33 * v18.f32[0]) - vmuls_lane_f32(v35, v18, 1)) + (v36 * v19.f32[0]);
    v48 = v17.f32[1];
    v17.f32[1] = -v37;
    v17.f32[2] = v41;
    v17.f32[3] = -v45;
    *a1 = vmulq_n_f32(v17, 1.0 / v23);
    v38.f32[1] = -v42;
    v38.i64[1] = __PAIR64__(a4.u32[1], v46);
    *(a1 + 16) = -(v48 * (1.0 / v23));
    *(a1 + 20) = vmulq_n_f32(v38, 1.0 / v23);
    v49.f32[0] = -v39;
    v49.f32[1] = v43;
    *a4.f32 = vzip1_s32(v21, *a4.f32);
    v49.i64[1] = vnegq_f32(a4).u64[0];
    *(a1 + 36) = vmulq_n_f32(v49, 1.0 / v23);
    *(a1 + 52) = v40 * (1.0 / v23);
    *(a1 + 56) = -(v44 * (1.0 / v23));
    *(a1 + 60) = v47 * (1.0 / v23);
  }

  return v24;
}

uint64_t LiGraphBuilder::LiGraphBuilder(uint64_t a1, const PCSharedCount *a2, _OWORD *a3)
{
  *a1 = a2->var0;
  PCSharedCount::PCSharedCount((a1 + 8), a2 + 1);
  *(a1 + 16) = 0;
  PCSharedCount::PCSharedCount((a1 + 24));
  *(a1 + 32) = 0;
  PCSharedCount::PCSharedCount((a1 + 40));
  *(a1 + 48) = 0;
  PCSharedCount::PCSharedCount((a1 + 56));
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_287261980;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 101) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = &unk_2871F25A8;
  *(a1 + 136) = 0;
  *(a1 + 144) = *a3;
  *(a1 + 160) = 0;
  PCSharedCount::PCSharedCount((a1 + 168));
  *(a1 + 176) = 0;
  PCSharedCount::PCSharedCount((a1 + 184));
  *(a1 + 192) = 0;
  PCSharedCount::PCSharedCount((a1 + 200));
  v5 = *a1;
  if (!*a1)
  {
    throw_PCNullPointerException(1);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = v6 + 1;
  *(v5 + 528) = v6;
  LiGraphBuilder::startInsertingIntoGroup(a1, a1);
  return a1;
}

void sub_25FF80CC8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 23);
  PCSharedCount::~PCSharedCount(v1 + 21);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v3);
  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::~PCArray(v2);
  PCSharedCount::~PCSharedCount(v1 + 9);
  PCSharedCount::~PCSharedCount(v1 + 7);
  PCSharedCount::~PCSharedCount(v1 + 5);
  PCSharedCount::~PCSharedCount(v1 + 3);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

PCMutex *LiGraphBuilder::startInsertingIntoGroup(LiGraphBuilder *a1, uint64_t a2)
{
  v9 = *a2;
  PCSharedCount::PCSharedCount(&v10, (a2 + 8));
  v11 = 0;
  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::push(a1 + 80, &v9);
  PCSharedCount::~PCSharedCount(&v10);
  result = dbg();
  if (result)
  {
    PCConsoleLock::PCConsoleLock(&v9, 1);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "startInsertingIntoGroup: ", 25);
    LiGraphBuilder::stackRepr(a1, &v8);
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = "";
    }

    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
    if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
    {
      *v8 = 0;
      if (v8)
      {
        v7 = (v8 - 12);
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    result = v9;
    if (v9)
    {
      if (LOBYTE(v10.var0) == 1)
      {
        return PCMutex::unlock(v9);
      }
    }
  }

  return result;
}

void sub_25FF80E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCConsoleLock::~PCConsoleLock(va);
  _Unwind_Resume(a1);
}

uint64_t PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261980;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiGraphBuilder::LiGraphBuilder(LiGraphBuilder *this, const LiGraphBuilder *a2)
{
  *this = 0;
  PCSharedCount::PCSharedCount(this + 1);
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 4) = 0;
  PCSharedCount::PCSharedCount(this + 5);
  *(this + 6) = 0;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 8) = 0;
  PCSharedCount::PCSharedCount(this + 9);
  *(this + 10) = &unk_287261980;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 101) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = &unk_2871F25A8;
  *(this + 136) = 0;
  *(this + 9) = *(a2 + 9);
  *(this + 20) = 0;
  PCSharedCount::PCSharedCount(this + 21);
  *(this + 22) = 0;
  PCSharedCount::PCSharedCount(this + 23);
  *(this + 24) = 0;
  PCSharedCount::PCSharedCount(this + 25);
  if (*(a2 + 2))
  {
    LiGraphBuilder::createPartition(this);
  }

  v4 = *(a2 + 23);
  v14 = *(this + 2);
  PCSharedCount::PCSharedCount(&v15, this + 3);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (i >= *(a2 + 23))
      {
        PCArray_base::badIndex(v5);
      }

      (*(**(*(a2 + 12) + 24 * i) + 232))(&v12);
      v7 = v12;
      if (!v12)
      {
        throw_PCNullPointerException(1);
      }

      v8 = *(this + 26);
      *(this + 26) = v8 + 1;
      *(v7 + 528) = v8;
      v9.var0 = v7;
      PCSharedCount::PCSharedCount(&v10, &v13);
      v11 = 0;
      PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::push(this + 80, &v9);
      PCSharedCount::~PCSharedCount(&v10);
      if (!*this)
      {
        *this = v12;
        PCSharedCount::PCSharedCount(&v9, &v13);
        PCSharedCount::operator=(this + 1, &v9);
        PCSharedCount::~PCSharedCount(&v9);
      }

      if (v14)
      {
        (*(*v14 + 152))(v14, v12);
      }

      v14 = v12;
      PCSharedCount::PCSharedCount(&v9, &v13);
      PCSharedCount::operator=(&v15, &v9);
      PCSharedCount::~PCSharedCount(&v9);
      PCSharedCount::~PCSharedCount(&v13);
    }
  }

  PCSharedCount::~PCSharedCount(&v15);
}

void sub_25FF811E8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 25);
  PCSharedCount::~PCSharedCount(v1 + 23);
  PCSharedCount::~PCSharedCount(v1 + 21);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v3);
  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::~PCArray(v2);
  PCSharedCount::~PCSharedCount(v1 + 9);
  PCSharedCount::~PCSharedCount(v1 + 7);
  PCSharedCount::~PCSharedCount(v1 + 5);
  PCSharedCount::~PCSharedCount(v1 + 3);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

PC_Sp_counted_base *LiGraphBuilder::createPartition(PCSharedCount *this)
{
  result = this[2].var0;
  if (!result)
  {
    PCSharedCount::PCSharedCount(&v3, this + 1);
    operator new();
  }

  return result;
}

void sub_25FF81404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

uint64_t PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::push(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) <= v4)
  {
    v5 = 2 * (v4 + 1) + 1;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(a1, v4 + 1, v5);
  LiGraphBuilderGroup::operator=(*(a1 + 16) + 24 * *(a1 + 12) - 24, a2);
  return *(a1 + 16) + 24 * *(a1 + 12) - 24;
}

void LiGraphBuilder::~LiGraphBuilder(PCSharedCount *this)
{
  PCSharedCount::~PCSharedCount(this + 25);
  PCSharedCount::~PCSharedCount(this + 23);
  PCSharedCount::~PCSharedCount(this + 21);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&this[14]);
  this[10].var0 = &unk_287261980;
  if (SLODWORD(this[11].var0) < 0)
  {
    var0 = 1;
  }

  else
  {
    var0 = this[11].var0;
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(&this[10], 0, var0);
  v3 = this[12].var0;
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  this[12].var0 = 0;
  LODWORD(this[11].var0) = 0;
  PCSharedCount::~PCSharedCount(this + 9);
  PCSharedCount::~PCSharedCount(this + 7);
  PCSharedCount::~PCSharedCount(this + 5);
  PCSharedCount::~PCSharedCount(this + 3);
  PCSharedCount::~PCSharedCount(this + 1);
}

void LiGraphBuilder::setLights(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(a1 + 120) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a1 + 120);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1 + 112, v4, v5);
  if (*(a2 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      LiLight::operator=(*(a1 + 128) + v6, *(a2 + 16) + v6);
      ++v7;
      v6 += 944;
    }

    while (v7 < *(a2 + 12));
  }

  *(a1 + 136) = *(a2 + 24);
}

PCMutex *LiGraphBuilder::add2d(PCSharedCount *a1, void *a2)
{
  LiGraphBuilder::prepare2d(a1);
  LiGraphBuilder::addChild(a1, a2);
  result = dbg();
  if (result)
  {
    PCConsoleLock::PCConsoleLock(&v12, 1);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "add2d: ", 7);
    v6 = strlen((0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, 0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL, v6);
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v8 = *(*a2 + 512);
    if (v8)
    {
      v9 = *(v8 - 2);
    }

    else
    {
      v9 = 0;
    }

    v10 = malloc_type_malloc(v9 + 15, 0x10000403E1C8BA9uLL);
    *(v10 + 1) = v9 + 2;
    *(v10 + 2) = v9 + 3;
    atomic_store(1u, v10);
    atomic_store(0, v10);
    *(v10 + 6) = 8736;
    memcpy(v10 + 14, v8, v9);
    v10[v9 + 14] = 0;
    atomic_fetch_add(v10, 1u);
    v11 = strlen(v10 + 12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, (v10 + 12), v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 2);
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      free(v10);
    }

    result = v12;
    if (v12)
    {
      if (v13 == 1)
      {
        return PCMutex::unlock(v12);
      }
    }
  }

  return result;
}

PCSharedCount *LiGraphBuilder::prepare2d(PCSharedCount *this)
{
  var0 = this[4].var0;
  v2 = this + 4;
  if (var0)
  {
    PCPtr<LiImageSource>::reset(v2);
    PCPtr<LiImageSource>::reset(&this[8].var0);
    BYTE4(this[13].var0) = 1;
  }

  result = this + 20;
  if (this[20].var0)
  {
    PCPtr<LiImageSource>::reset(result);
    PCPtr<LiImageSource>::reset(&this[24].var0);
    BYTE4(this[13].var0) = 1;
  }

  else if ((BYTE4(this[13].var0) & 1) == 0)
  {
    return result;
  }

  return LiGraphBuilder::makeNewPartition(this, 1);
}

void LiGraphBuilder::addChild(LiGraphBuilder *this, void *a2)
{
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v3 = *(this + 26);
  *(*a2 + 528) = v3;
  *(this + 26) = v3 + 1;
  LiGraphBuilder::getCurrentInsertionGroup(this, &v4);
  if (!v4.var0)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v4.var0 + 152))(v4.var0, *a2);
  PCSharedCount::~PCSharedCount(&v5);
}

void sub_25FF81910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t dbg(void)
{
  {
    dbg(void)::result = liDebug("LiGraphBuilder");
  }

  return dbg(void)::result;
}

void PCConsoleLock::~PCConsoleLock(PCMutex **this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8) == 1)
    {
      PCMutex::unlock(v2);
      *(this + 8) = 0;
    }
  }
}

PCMutex *LiGraphBuilder::add3d(LiGraphBuilder *a1, void *a2, uint64_t a3)
{
  v14 = 0;
  PCSharedCount::PCSharedCount(&v15);
  LiGraphBuilder::prepare3d(a1, a3, &v14);
  PCSharedCount::~PCSharedCount(&v15);
  LiGraphBuilder::addChild(a1, a2);
  result = dbg();
  if (result)
  {
    PCConsoleLock::PCConsoleLock(&v14, 1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "add3d: ", 7);
    v8 = strlen((0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL, v8);
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v10 = *(*a2 + 512);
    if (v10)
    {
      v11 = *(v10 - 2);
    }

    else
    {
      v11 = 0;
    }

    v12 = malloc_type_malloc(v11 + 15, 0x10000403E1C8BA9uLL);
    *(v12 + 1) = v11 + 2;
    *(v12 + 2) = v11 + 3;
    atomic_store(1u, v12);
    atomic_store(0, v12);
    *(v12 + 6) = 8736;
    memcpy(v12 + 14, v10, v11);
    v12[v11 + 14] = 0;
    atomic_fetch_add(v12, 1u);
    v13 = strlen(v12 + 12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, (v12 + 12), v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 2);
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      free(v12);
    }

    result = v14;
    if (v14)
    {
      if (LOBYTE(v15.var0) == 1)
      {
        return PCMutex::unlock(v14);
      }
    }
  }

  return result;
}

uint64_t LiGraphBuilder::prepare3d(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (!*(result + 32) || *(result + 108) == 1)
  {
    v5 = dbg();
    PCConsoleLock::PCConsoleLock(&v12, v5);
    v10 = 0;
    PCSharedCount::PCSharedCount(&v11);
    if (*a3)
    {
      v7 = *(v4 + 92);
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          if (v8 >= *(v4 + 92))
          {
            PCArray_base::badIndex(v6);
          }

          v9 = *(v4 + 96);
          v6 = *(v9 + 24 * v8);
          if (v6)
          {
            if (v6)
            {
              break;
            }
          }

          if (++v8 == v7)
          {
            goto LABEL_15;
          }
        }

        if (*(v4 + 92) <= v8)
        {
          PCArray_base::badIndex(v6);
        }

        PCPtr<Li3DGroupForEquirect>::operator=<LiGroup>(&v10, (v9 + 24 * v8));
      }
    }

LABEL_15:
    LiGraphBuilder::makeNewPartition(v4, 0);
    operator new();
  }

  return result;
}

void sub_25FF826C0(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v2 - 160));
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v2 - 128));
  PCSharedCount::~PCSharedCount((v2 - 112));
  PCConsoleLock::~PCConsoleLock((v2 - 104));
  _Unwind_Resume(a1);
}

PCMutex *LiGraphBuilder::add3DEngine(LiGraphBuilder *a1, void *a2, uint64_t a3)
{
  v14 = 0;
  PCSharedCount::PCSharedCount(&v15);
  LiGraphBuilder::prepare3DEngine(a1, a3, &v14);
  PCSharedCount::~PCSharedCount(&v15);
  LiGraphBuilder::addChild(a1, a2);
  result = dbg();
  if (result)
  {
    PCConsoleLock::PCConsoleLock(&v14, 1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "add3DEngine: ", 13);
    v8 = strlen((0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x800000026084BA20 & 0x7FFFFFFFFFFFFFFFLL, v8);
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v10 = *(*a2 + 512);
    if (v10)
    {
      v11 = *(v10 - 2);
    }

    else
    {
      v11 = 0;
    }

    v12 = malloc_type_malloc(v11 + 15, 0x10000403E1C8BA9uLL);
    *(v12 + 1) = v11 + 2;
    *(v12 + 2) = v11 + 3;
    atomic_store(1u, v12);
    atomic_store(0, v12);
    *(v12 + 6) = 8736;
    memcpy(v12 + 14, v10, v11);
    v12[v11 + 14] = 0;
    atomic_fetch_add(v12, 1u);
    v13 = strlen(v12 + 12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, (v12 + 12), v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 2);
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      free(v12);
    }

    result = v14;
    if (v14)
    {
      if (LOBYTE(v15.var0) == 1)
      {
        return PCMutex::unlock(v14);
      }
    }
  }

  return result;
}

uint64_t LiGraphBuilder::prepare3DEngine(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (!*(result + 160) || *(result + 108) == 1)
  {
    v5 = dbg();
    PCConsoleLock::PCConsoleLock(&v12, v5);
    v10 = 0;
    PCSharedCount::PCSharedCount(&v11);
    if (*a3)
    {
      v7 = *(v4 + 92);
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          if (v8 >= *(v4 + 92))
          {
            PCArray_base::badIndex(v6);
          }

          v9 = *(v4 + 96);
          v6 = *(v9 + 24 * v8);
          if (v6)
          {
            if (v6)
            {
              break;
            }
          }

          if (++v8 == v7)
          {
            goto LABEL_15;
          }
        }

        if (*(v4 + 92) <= v8)
        {
          PCArray_base::badIndex(v6);
        }

        PCPtr<Li3DGroupForEquirect>::operator=<LiGroup>(&v10, (v9 + 24 * v8));
      }
    }

LABEL_15:
    LiGraphBuilder::makeNewPartition(v4, 0);
    operator new();
  }

  return result;
}

void sub_25FF83548(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v2 - 160));
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v2 - 128));
  PCSharedCount::~PCSharedCount((v2 - 112));
  PCConsoleLock::~PCConsoleLock((v2 - 104));
  _Unwind_Resume(a1);
}

void LiGraphBuilder::addGroup(PCSharedCount *this, const PCSharedCount *a2)
{
  if (BYTE4(this[13].var0) == 1)
  {
    LiGraphBuilder::makeNewPartition(this, 1);
  }

  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v4, a2);
  LiGraphBuilder::addChild(this, &v4);
  PCSharedCount::~PCSharedCount(&v5);
}

uint64_t LiGraphBuilder::makeNewPartition(PCSharedCount *this, int a2)
{
  var0 = this[4].var0;
  v4 = this + 4;
  BYTE4(v4[9].var0) = 0;
  if (var0)
  {
    PCPtr<LiImageSource>::reset(v4);
    PCPtr<LiImageSource>::reset(&this[8].var0);
  }

  if (this[20].var0)
  {
    PCPtr<LiImageSource>::reset(&this[20].var0);
    PCPtr<LiImageSource>::reset(&this[24].var0);
  }

  v38 = 0;
  v39 = 0;
  v37 = &unk_287261980;
  var0_high = HIDWORD(this[11].var0);
  v35 = 0;
  PCSharedCount::PCSharedCount(&v36);
  v29 = a2;
  if (a2)
  {
    Partition = LiGraphBuilder::createPartition(this);
    v7 = PCPtr<LiImageSource>::operator=<LiImageSource>(&v35, Partition);
  }

  if (var0_high >= 1)
  {
    v9 = 0;
    v10 = 1;
    v11 = 16;
    do
    {
      if (v9 >= SHIDWORD(this[11].var0))
      {
        PCArray_base::badIndex(v7);
      }

      v12 = this[12].var0 + v11;
      if ((*v12 & 1) == 0)
      {
        v13 = *(v12 - 2);
        if (!v13)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v13 + 232))(&lpsrc);
        v14 = lpsrc;
        if (!lpsrc)
        {
          throw_PCNullPointerException(1);
        }

        v15 = this[13].var0;
        LODWORD(this[13].var0) = v15 + 1;
        *(v14 + 132) = v15;
        if (v35)
        {
          (*(*v35 + 152))(v35, v14);
          v14 = lpsrc;
        }

        v35 = v14;
        PCSharedCount::PCSharedCount(&v30, &v34);
        PCSharedCount::operator=(&v36, &v30);
        PCSharedCount::~PCSharedCount(&v30);
        v30.var0 = lpsrc;
        PCSharedCount::PCSharedCount(&v31, &v34);
        v32 = 0;
        PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::push(&v37, &v30);
        PCSharedCount::~PCSharedCount(&v31);
        PCSharedCount::~PCSharedCount(&v34);
      }

      ++v9;
      v11 += 24;
    }

    while (var0_high != v9);
  }

  if (SLODWORD(this[11].var0) < SHIDWORD(v38))
  {
    v16 = 2 * HIDWORD(v38) + 1;
  }

  else
  {
    v16 = this[11].var0;
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(&this[10], SHIDWORD(v38), v16);
  if (SHIDWORD(v38) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      LiGraphBuilderGroup::operator=(this[12].var0 + v17, v39 + v17);
      ++v18;
      v17 += 24;
    }

    while (v18 < SHIDWORD(v38));
  }

  if (dbg())
  {
    PCConsoleLock::PCConsoleLock(&v30, 1);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "makeNewPartition(", 17);
    if (v29)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    if (v29)
    {
      v21 = 4;
    }

    else
    {
      v21 = 5;
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "): ", 3);
    LiGraphBuilder::stackRepr(this, &lpsrc);
    if (lpsrc)
    {
      v24 = lpsrc;
    }

    else
    {
      v24 = "";
    }

    v25 = strlen(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
    if (lpsrc && atomic_fetch_add(lpsrc - 3, 0xFFFFFFFF) == 1)
    {
      *lpsrc = 0;
      if (lpsrc)
      {
        v26 = lpsrc - 12;
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    if (v30.var0 && LOBYTE(v31.var0) == 1)
    {
      PCMutex::unlock(v30.var0);
    }
  }

  PCSharedCount::~PCSharedCount(&v36);
  v37 = &unk_287261980;
  if (v38 < 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = v38;
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(&v37, 0, v27);
  result = v39;
  if (v39)
  {
    return MEMORY[0x2666E9ED0](v39, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF83BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, PCMutex *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11.var0 = va_arg(va2, PC_Sp_counted_base *);
  PCConsoleLock::~PCConsoleLock(va);
  PCSharedCount::~PCSharedCount(va1);
  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::~PCArray(va2);
  _Unwind_Resume(a1);
}

void LiGraphBuilder::getCurrentInsertionGroup(LiGraphBuilder *this@<X0>, PCSharedCount *a2@<X8>)
{
  v3 = *(this + 23);
  if (v3 <= 0)
  {
    PCArray_base::badIndex(this);
  }

  v4 = *(this + 12) + 24 * v3;
  a2->var0 = *(v4 - 24);

  PCSharedCount::PCSharedCount(a2 + 1, (v4 - 16));
}

void LiGraphBuilder::stackRepr(LiGraphBuilder *this@<X0>, LiString *a2@<X8>)
{
  *a2 = 0;
  LiString::LiString(&v54, "None");
  v5 = *(this + 2);
  if (v5)
  {
    for (i = 7; i != -1; --i)
    {
      if (v5 >> i <= 0)
      {
        v7 = -(-(v5 >> i) & 0xF);
      }

      else
      {
        v7 = (v5 >> i) & 0xF;
      }

      __src[0] = a0123456789abcd[v7];
      LiString::append(a2, __src, 1);
    }

    LiString::append(a2, " ", 2);
    v8 = *(this + 2);
    if (!v8)
    {
      throw_PCNullPointerException(1);
    }

    v9 = *(v8 + 512);
    if (v9)
    {
      v10 = *(v9 - 2);
    }

    else
    {
      v10 = 0;
    }

    LiString::append(a2, v9, v10);
    LiString::append(a2, "", 1);
    v11 = *(this + 2);
    if (!v11)
    {
      throw_PCNullPointerException(1);
    }

    v12 = (*(*v11 + 136))(v11);
    LiString::format(v12, __src);
    v13 = *__src;
    if (*__src)
    {
      v14 = *(*__src - 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = malloc_type_malloc(v14 + 15, 0x10000403E1C8BA9uLL);
    v15[1] = v14 + 2;
    v15[2] = v14 + 3;
    atomic_store(1u, v15);
    atomic_store(0, v15);
    *(v15 + 6) = 10272;
    memcpy(v15 + 14, v13, v14);
    *(v15 + v14 + 14) = 0;
    atomic_fetch_add(v15, 1u);
    v16 = v15[1];
    v17 = malloc_type_malloc(v16 + 14, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v17);
    v18 = v17 + 3;
    atomic_store(0, v17);
    v17[1] = v16 + 1;
    v17[2] = v16 + 2;
    memcpy(v17 + 3, v15 + 3, v16);
    *(v18 + v16) = 41;
    *(v18 + v16 + 1) = 0;
    atomic_fetch_add(v17, 1u);
    LiString::append(a2, v17 + 12, v17[1]);
    if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      free(v17);
    }

    if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      free(v15);
    }

    if (*__src && atomic_fetch_add((*__src - 12), 0xFFFFFFFF) == 1)
    {
      **__src = 0;
      if (*__src)
      {
        v19 = (*__src - 12);
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (&v54 != a2)
    {
      if (v54 && atomic_fetch_add(v54 - 3, 0xFFFFFFFF) == 1)
      {
        *v54 = 0;
        if (v54)
        {
          v20 = v54 - 3;
        }

        else
        {
          v20 = 0;
        }

        free(v20);
      }

      v21 = *a2;
      v54 = v21;
      if (v21)
      {
        atomic_fetch_add(v21 - 3, 1u);
      }
    }

    v4 = LiString::operator=(a2, "");
  }

  v48 = *(this + 23);
  if (v48)
  {
    v22 = 0;
    do
    {
      if (v22 < 0 || *(this + 23) <= v22)
      {
        PCArray_base::badIndex(v4);
      }

      v23 = *(this + 12) + 24 * v22;
      *__src = *v23;
      PCSharedCount::PCSharedCount(&v52, (v23 + 8));
      v53 = *(v23 + 16);
      if (*a2 && *(*a2 - 8))
      {
        LiString::append(a2, ", ", 2);
      }

      v24 = *__src;
      for (j = 7; j != -1; --j)
      {
        if (v24 >> j <= 0)
        {
          v26 = -(-(v24 >> j) & 0xF);
        }

        else
        {
          v26 = (v24 >> j) & 0xF;
        }

        v50[0] = a0123456789abcd[v26];
        LiString::append(a2, v50, 1);
      }

      LiString::append(a2, " ", 2);
      v27 = *(*__src + 512);
      if (v27)
      {
        v28 = *(v27 - 2);
      }

      else
      {
        v28 = 0;
      }

      LiString::append(a2, v27, v28);
      LiString::append(a2, "", 1);
      if (v53 == 1)
      {
        LiString::append(a2, " synth", 6);
      }

      v29 = (*(**__src + 136))(*__src);
      LiString::format(v29, v50);
      v30 = *v50;
      v49 = v22;
      if (*v50)
      {
        v31 = *(*v50 - 8);
      }

      else
      {
        v31 = 0;
      }

      v32 = malloc_type_malloc(v31 + 15, 0x10000403E1C8BA9uLL);
      v33 = v31 + 2;
      v32[1] = v33;
      v32[2] = v31 + 3;
      atomic_store(1u, v32);
      atomic_store(0, v32);
      *(v32 + 6) = 10272;
      memcpy(v32 + 14, v30, v31);
      *(v32 + v33 + 12) = 0;
      atomic_fetch_add(v32, 1u);
      v34 = v32[1];
      v35 = malloc_type_malloc(v34 + 14, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v35);
      v36 = v35 + 3;
      atomic_store(0, v35);
      v35[1] = v34 + 1;
      v35[2] = v34 + 2;
      memcpy(v35 + 3, v32 + 3, v34);
      *(v36 + v34) = 41;
      *(v36 + v34 + 1) = 0;
      atomic_fetch_add(v35, 1u);
      LiString::append(a2, v35 + 12, v35[1]);
      if (atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
      {
        free(v35);
      }

      if (atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
      {
        free(v32);
      }

      if (*v50 && atomic_fetch_add((*v50 - 12), 0xFFFFFFFF) == 1)
      {
        **v50 = 0;
        if (*v50)
        {
          v37 = (*v50 - 12);
        }

        else
        {
          v37 = 0;
        }

        free(v37);
      }

      PCSharedCount::~PCSharedCount(&v52);
      ++v22;
    }

    while (v48 != v49 + 1);
  }

  v38 = v54;
  if (v54)
  {
    v39 = *(v54 - 2);
    if (!v39)
    {
      goto LABEL_79;
    }

    v40 = malloc_type_malloc(v39 + 16, 0x10000403E1C8BA9uLL);
    v40[1] = v39 + 3;
    v40[2] = v39 + 4;
    atomic_store(1u, v40);
    atomic_store(0, v40);
    memcpy(v40 + 3, v38, v39);
    v41 = v40 + v39 + 12;
    *v41 = 12064;
    v41[2] = 32;
    *(v40 + v39 + 15) = 0;
    atomic_fetch_add(v40, 1u);
    v42 = v40[1];
    v43 = *a2;
    if (*a2)
    {
      v44 = *(v43 - 2);
    }

    else
    {
      v44 = 0;
    }

    v45 = v42 + v44;
    v46 = malloc_type_malloc(v45 + 13, 0x10000403E1C8BA9uLL);
    v46[1] = v45;
    v46[2] = v45 + 1;
    atomic_store(1u, v46);
    atomic_store(0, v46);
    memcpy(v46 + 3, v40 + 3, v42);
    memcpy(v46 + v42 + 12, v43, v44);
    *(v46 + v45 + 12) = 0;
    atomic_fetch_add(v46, 1u);
    LiString::dec(a2);
    *a2 = v46 + 3;
    atomic_fetch_add(v46, 1u);
    if (atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
    {
      free(v46);
    }

    if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
    {
      free(v40);
    }

    v38 = v54;
    if (v54)
    {
LABEL_79:
      if (atomic_fetch_add(v38 - 3, 0xFFFFFFFF) == 1)
      {
        *v54 = 0;
        if (v54)
        {
          v47 = v54 - 3;
        }

        else
        {
          v47 = 0;
        }

        free(v47);
      }
    }
  }
}

void sub_25FF84430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    free(v17);
  }

  if (a16)
  {
    if (atomic_fetch_add(a16 - 3, 0xFFFFFFFF) == 1)
    {
      *a16 = 0;
      free(a16 - 3);
    }
  }

  LiString::dec(v16);
  _Unwind_Resume(a1);
}

LiString *LiString::operator=(unsigned int **this, unsigned int *__src)
{
  v3 = *this;
  if (*this)
  {
    v4 = v3 == __src;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (__src && *__src)
    {
      v6 = 0;
        ;
      }

      if (!v3)
      {
        goto LABEL_19;
      }

      v8 = atomic_load(v3 - 3);
      if (v8 != 1)
      {
        goto LABEL_19;
      }

      v9 = *this;
      v10 = (*this - 3);
      if (!*this)
      {
        v10 = 0;
      }

      if (v6 < *(v10 + 8))
      {
        memcpy(v9, __src, v6 + 1);
        *(*this + v6) = 0;
        if (*this)
        {
          v11 = (*this - 3);
        }

        else
        {
          v11 = 0;
        }

        *(v11 + 4) = v6;
      }

      else
      {
LABEL_19:
        LiString::dec(this);
        v12 = malloc_type_malloc(v6 + 13, 0x10000403E1C8BA9uLL);
        v12[2] = v6 + 1;
        atomic_store(1u, v12);
        *this = v12 + 3;
        v12[1] = v6;
        memcpy(v12 + 3, __src, v6 + 1);
      }
    }

    else
    {
      LiString::dec(this);
      *this = 0;
    }
  }

  return this;
}

PCMutex *LiGraphBuilder::endInsertingIntoGroup(LiGraphBuilder *this)
{
  v2 = dbg();
  PCConsoleLock::PCConsoleLock(&v26, v2);
  v3 = MEMORY[0x277D82670];
  do
  {
    if (!*(this + 23))
    {
      break;
    }

    PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::pop(this + 80, &v23);
    v4 = v23;
    if (*(this + 6) == v23)
    {
      if (dbg())
      {
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "  leaving _3dgroup ", 19);
        v6 = strlen((0x800000026084BA31 & 0x7FFFFFFFFFFFFFFFLL));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, 0x800000026084BA31 & 0x7FFFFFFFFFFFFFFFLL, v6);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 2);
        if (*(v23 + 64))
        {
          v9 = *(v23 + 64);
        }

        else
        {
          v9 = "";
        }

        v10 = strlen(v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 2);
      }

      PCPtr<LiImageSource>::reset(this + 4);
      PCPtr<LiImageSource>::reset(this + 6);
      *(this + 108) = 1;
      v4 = v23;
    }

    if (*(this + 22) == v4)
    {
      if (dbg())
      {
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "  leaving _3DEngineGroup ", 25);
        v12 = strlen((0x800000026084BA31 & 0x7FFFFFFFFFFFFFFFLL));
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, 0x800000026084BA31 & 0x7FFFFFFFFFFFFFFFLL, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 2);
        if (*(v23 + 64))
        {
          v15 = *(v23 + 64);
        }

        else
        {
          v15 = "";
        }

        v16 = strlen(v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 2);
      }

      PCPtr<LiImageSource>::reset(this + 20);
      PCPtr<LiImageSource>::reset(this + 22);
      *(this + 108) = 1;
    }

    v17 = v25;
    PCSharedCount::~PCSharedCount(&v24);
  }

  while ((v17 & 1) != 0);
  if (dbg())
  {
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "endInsertingIntoGroup: ", 23);
    LiGraphBuilder::stackRepr(this, &v23);
    v19 = v23 ? v23 : "";
    v20 = strlen(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
    if (v23)
    {
      if (atomic_fetch_add(v23 - 3, 0xFFFFFFFF) == 1)
      {
        *v23 = 0;
        if (v23)
        {
          v21 = (v23 - 12);
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }
    }
  }

  result = v26;
  if (v26)
  {
    if (v27 == 1)
    {
      return PCMutex::unlock(v26);
    }
  }

  return result;
}

void sub_25FF849C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCConsoleLock::~PCConsoleLock(va);
  _Unwind_Resume(a1);
}

void PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::pop(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16) + 24 * *(a1 + 12);
  *a2 = *(v4 - 24);
  PCSharedCount::PCSharedCount((a2 + 8), (v4 - 16));
  *(a2 + 16) = *(v4 - 8);
  v5 = *(a1 + 12) - 1;
  if (*(a1 + 8) < v5)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(a1, v5, v6);
}

PCMutex *LiGraphBuilder::addGroupAndMakeCurrent(PCSharedCount *a1, const PCSharedCount *a2)
{
  LiGraphBuilder::addGroup(a1, a2);

  return LiGraphBuilder::startInsertingIntoGroup(a1, a2);
}

uint64_t LiGraphBuilder::getAndIncrementCompositeOrder(LiGraphBuilder *this)
{
  v1 = *(this + 26);
  *(this + 26) = v1 + 1;
  return v1;
}

void LiGraphBuilder::getLastChildInCurrentGroup(LiGraphBuilder *this@<X0>, PCSharedCount *a2@<X8>)
{
  LiGraphBuilder::getCurrentInsertionGroup(this, &v7);
  var0 = v7.var0;
  PCSharedCount::~PCSharedCount(&v8);
  v4 = (*(*var0 + 136))(var0);
  if (v4)
  {
    v5 = (*(*var0 + 144))(var0, (v4 - 1));
    a2->var0 = v5;
    if (v5)
    {
      v6 = (v5 + *(*v5 - 24));
    }

    else
    {
      v6 = 0;
    }

    PCSharedCount::PCSharedCount(a2 + 1, v6);
  }

  else
  {
    a2->var0 = 0;
    PCSharedCount::PCSharedCount(a2 + 1);
  }
}

void LiGraphBuilder::getCurrentLocalToWorld(LiGraphBuilder *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v3 = *(this + 23);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if (i >= *(this + 23))
      {
        PCArray_base::badIndex(this);
      }

      PCMatrix44Tmpl<double>::rightMult(a2, (*(*(this + 12) + 24 * i) + 8));
    }
  }
}

uint64_t LiGraphBuilder::addLightsToGraph(uint64_t result)
{
  if (*(result + 124) >= 1)
  {
    operator new();
  }

  return result;
}

uint64_t LiGraphBuilder::firstProjection(LiGraphBuilder *this)
{
  v1 = this;
  v2 = *(this + 23);
  for (i = v2 - 1; ; --i)
  {
    v4 = (v2 - 1);
    if (v2 < 1)
    {
      break;
    }

    if (*(v1 + 23) < v2)
    {
      PCArray_base::badIndex(this);
    }

    v5 = *(*(v1 + 12) + 24 * i);
    this = (*(*v5 + 200))(v5);
    v2 = v4;
    if (this)
    {
      return v4;
    }
  }

  return 0xFFFFFFFFLL;
}

void LiGraphBuilder::combinedTransform(LiGraphBuilder *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 120) = 0x3FF0000000000000;
  *(a4 + 80) = 0x3FF0000000000000;
  *(a4 + 40) = 0x3FF0000000000000;
  *a4 = 0x3FF0000000000000;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  v5 = *(this + 23);
  v6 = v5 - a2;
  if (v5 > a2)
  {
    v8 = a2;
    v9 = a3;
    v10 = 24 * a2;
    do
    {
      if (v8 < 0 || v8 >= *(this + 23))
      {
        PCArray_base::badIndex(this);
      }

      v11 = *(*(this + 12) + v10);
      PCMatrix44Tmpl<double>::rightMult(a4, v11 + 1);
      if (v9 == v8)
      {
        break;
      }

      LiGroup::viewProjectionTransform(v11, v12);
      PCMatrix44Tmpl<double>::rightMult(a4, v12);
      ++v8;
      v10 += 24;
      --v6;
    }

    while (v6);
  }
}

void *PCPtr<Li3DGroupForEquirect>::operator=<LiGroup>(void *a1, const PCSharedCount *a2)
{
  if (!a2->var0)
  {
    *a1 = 0;
    goto LABEL_5;
  }

  *a1 = v4;
  if (!v4)
  {
LABEL_5:
    v5 = &v8;
    PCSharedCount::PCSharedCount(&v8);
    PCSharedCount::operator=(a1 + 1, &v8);
    goto LABEL_6;
  }

  v5 = &v7;
  PCSharedCount::PCSharedCount(&v7, a2 + 1);
  PCSharedCount::operator=(a1 + 1, &v7);
LABEL_6:
  PCSharedCount::~PCSharedCount(v5);
  return a1;
}

void PCConsoleLock::PCConsoleLock(PCConsoleLock *this, int a2)
{
  if (PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::object(void)::once != -1)
  {
    PCConsoleLock::PCConsoleLock();
  }

  v4 = (PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_instance + 8);
  *this = PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_instance + 8;
  *(this + 8) = 0;
  if (a2)
  {
    PCMutex::lock(v4);
    *(this + 8) = 1;
  }
}

void sub_25FF85278(_Unwind_Exception *a1)
{
  PCSingleton::~PCSingleton(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::~PCSingletonObject(uint64_t a1)
{
  *a1 = &unk_287261938;
  PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_dead = 1;
  PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_instance = 0;
  PCMutex::~PCMutex((a1 + 8));

  PCSingleton::~PCSingleton(a1);
}

{
  *a1 = &unk_287261938;
  PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_dead = 1;
  PCSingletonObject<PCMutex,PCConsoleLock::SingletonTag,1000000000>::_instance = 0;
  PCMutex::~PCMutex((a1 + 8));
  PCSingleton::~PCSingleton(a1);

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261980;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiGraphBuilderGroup,PCArray_Traits<LiGraphBuilderGroup>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v21, "PCArray::resize");
    PCException::PCException(exception, &v21);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 24 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = *(a1 + 16);
          *(v11 + v9) = 0;
          PCSharedCount::PCSharedCount((v11 + v9 + 8));
          v9 += 24;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 24 * a2 + 8;
      v8 = a2;
      do
      {
        PCSharedCount::~PCSharedCount((*(a1 + 16) + v7));
        v7 += 24;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(a1 + 12);
    if (a2 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 16) + v14;
        *v14 = *v15;
        PCSharedCount::PCSharedCount((v14 + 8), (v15 + 8));
        *(v14 + 16) = *(v15 + 16);
        PCSharedCount::~PCSharedCount((*(a1 + 16) + v14 + 8));
        v14 += 24;
      }

      while (24 * v13 != v14);
      v12 = *(a1 + 12);
    }

    if (v13 < v12)
    {
      v16 = 24 * v13 + 8;
      do
      {
        PCSharedCount::~PCSharedCount((*(a1 + 16) + v16));
        v16 += 24;
        ++v13;
      }

      while (*(a1 + 12) > v13);
    }

    if (v13 < a2)
    {
      v17 = (24 * v13 + 8);
      do
      {
        v17[-1].var0 = 0;
        PCSharedCount::PCSharedCount(v17);
        v17 = v18 + 3;
        ++v13;
      }

      while (v13 < a2);
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

uint64_t LiGraphBuilderGroup::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    PCSharedCount::PCSharedCount(&v5, (a2 + 8));
    PCSharedCount::operator=((a1 + 8), &v5);
    PCSharedCount::~PCSharedCount(&v5);
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void LiImageProjection::LiImageProjection(LiImageProjection *this)
{
  *(this + 5) = &unk_2872DEA38;
  *(this + 6) = 0;
  *(this + 56) = 1;
  LiImageFilter::LiImageFilter(this, &off_287261AC8);
  *this = &unk_2872619C0;
  *(this + 5) = &unk_287261AA8;
}

void sub_25FF857F4(_Unwind_Exception *a1)
{
  *(v1 + 40) = v2;
  *(v1 + 56) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiImageProjection::LiImageProjection(LiImageProjection *this, LiImageSource *a2)
{
  *(this + 5) = &unk_2872DEA38;
  *(this + 6) = 0;
  *(this + 56) = 1;
  LiImageFilter::LiImageFilter(this, &off_287261AC8);
  *this = &unk_2872619C0;
  *(this + 5) = &unk_287261AA8;
  PCPtr<LiImageSource>::operator=<LiImageSource>(this + 2, a2);
}

void sub_25FF858CC(_Unwind_Exception *a1)
{
  LiImageFilter::~LiImageFilter(v1, &off_287261AC8);
  *(v1 + 40) = v2;
  *(v1 + 56) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t LiImageTransform::getBoundary(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  v6 = (*(*v5 + 24))(v5, a2, a3);
  return PCMatrix44Tmpl<double>::transformRect<double>((a1 + 40), a3, a3) & v6;
}

uint64_t LiImageTransform::getHelium@<X0>(LiImageTransform *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  *(a2 + 8) = 2;
  LiAgent::loadTransform(a2, this + 40);
  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v6) = *(v6 + 44);
  }

  LiRenderingTechnology::setEnableMetalRendering(a2, v6 & 1);
  v7 = *(this + 2);

  return LiAgent::getHelium(a2, v7, a3);
}

uint64_t LiImageTransform::print(uint64_t a1, void *a2, int a3)
{
  LiImageSource::printIndent(a2, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LiImageTransform:\n", 18);
  PCMatrix44Tmpl<double>::print(a1 + 40, a2, a3 + 2);
  if (*(a1 + 296) == 1)
  {
    LiImageSource::printIndent(a2, a3 + 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "World transform:\n", 17);
    PCMatrix44Tmpl<double>::print(a1 + 168, a2, a3 + 2);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    throw_PCNullPointerException(1);
  }

  v7 = *(*v6 + 128);

  return v7();
}

void LiSolidSource::LiSolidSource(LiSolidSource *this)
{
  *(this + 4) = &unk_2872DEA38;
  *(this + 5) = 0;
  *(this + 48) = 1;
  LiImageSource::LiImageSource(this, &off_287261C00);
  *this = &unk_287261B18;
  *(this + 4) = &unk_287261BE0;
  PCWorkingColorVector::PCWorkingColorVector((this + 16));
}

void sub_25FF85DA8(_Unwind_Exception *a1)
{
  OZChannelBase::setRangeName(v1, &off_287261C00);
  *(v1 + 32) = v2;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiSolidSource::getHelium(float32x2_t *this, LiAgent *a2)
{
  v2 = 0;
  v3 = vcvtq_f64_f32(this[3]);
  v5 = vcvtq_f64_f32(this[2]);
  v6 = v3;
  do
  {
    v5.f64[v2] = v6.f64[1] * v5.f64[v2];
    ++v2;
  }

  while (v2 != 3);
  v4 = HGObject::operator new(0x1A0uLL);
  LiHeBackgroundGenerator::LiHeBackgroundGenerator(v4);
}

void LiImageAlphaFill::LiImageAlphaFill(LiImageAlphaFill *this)
{
  *(this + 7) = &unk_2872DEA38;
  *(this + 8) = 0;
  *(this + 72) = 1;
  LiImageFilter::LiImageFilter(this, &off_287261D48);
  *this = &unk_287261C40;
  *(this + 7) = &unk_287261D28;
  PCWorkingColorVector::PCWorkingColorVector((this + 36));
}

void sub_25FF86064(_Unwind_Exception *a1)
{
  LiImageFilter::~LiImageFilter(v1, &off_287261D48);
  *(v1 + 56) = v2;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiImageAlphaFill::~LiImageAlphaFill(PCSharedCount *this)
{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount((v1 + 64));
}

{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount((v1 + 64));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiImageAlphaFill::~LiImageAlphaFill(LiImageAlphaFill *this)
{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  v2 = (v1 + 64);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiImageAlphaFill::~LiImageAlphaFill((this + *(*this - 24)));
}

__n128 LiImageAlphaFill::setColor(LiImageAlphaFill *this, __n128 *a2)
{
  result = *a2;
  *(this + 36) = *a2;
  return result;
}

void sub_25FF862F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

uint64_t LiImageAlphaFill::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, LiHeAlphaFill **a3@<X8>)
{
  *(a2 + 8) = 2;
  result = LiAgent::getHelium(a2, this[2], &v7);
  if (v7)
  {
    v6 = HGObject::operator new(0x1A0uLL);
    LiHeAlphaFill::LiHeAlphaFill(v6);
    (*(*v6 + 120))(v6, 0, v7);
    (*(*v6 + 96))(v6, 0, *(this + 9), *(this + 10), *(this + 11), *(this + 12));
    (*(*v6 + 96))(v6, 1, 1.0, 0.0, 0.0, 0.0);
    *a3 = v6;
    result = v7;
    if (v7)
    {
      return (*(*v7 + 24))(v7);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_25FF86470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void LiImageTransform::~LiImageTransform(PCSharedCount *this)
{
  this->var0 = &unk_287261D98;
  this[44].var0 = &unk_287261E80;
  LiClipSet::~LiClipSet(&this[38]);
  this->var0 = off_287261EF0;
  this[44].var0 = off_287261FD8;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287261EA8);
  this[44].var0 = &unk_2872DEA38;
  LOBYTE(this[46].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[45].var0);
}

{
  this->var0 = &unk_287261D98;
  this[44].var0 = &unk_287261E80;
  LiClipSet::~LiClipSet(&this[38]);
  this->var0 = off_287261EF0;
  this[44].var0 = off_287261FD8;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287261EA8);
  this[44].var0 = &unk_2872DEA38;
  LOBYTE(this[46].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[45].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiImageTransform::~LiImageTransform(LiImageTransform *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287261D98;
  v1[44].var0 = &unk_287261E80;
  LiClipSet::~LiClipSet(&v1[38]);
  v1->var0 = off_287261EF0;
  v1[44].var0 = off_287261FD8;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287261EA8);
  v1[44].var0 = &unk_2872DEA38;
  LOBYTE(v1[46].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[45].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287261D98;
  v1[44].var0 = &unk_287261E80;
  LiClipSet::~LiClipSet(&v1[38]);
  v1->var0 = off_287261EF0;
  v1[44].var0 = off_287261FD8;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287261EA8);
  v1[44].var0 = &unk_2872DEA38;
  LOBYTE(v1[46].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[45].var0);

  JUMPOUT(0x2666E9F00);
}

void LiEmptyImage::~LiEmptyImage(OZChannelBase *this)
{
  v1 = OZChannelBase::setRangeName(this, &off_287262260);
  *(v1 + 16) = &unk_2872DEA38;
  *(v1 + 32) = 0;
  PCWeakCount::~PCWeakCount((v1 + 24));
}

{
  v1 = OZChannelBase::setRangeName(this, &off_287262260);
  *(v1 + 16) = &unk_2872DEA38;
  *(v1 + 32) = 0;
  PCWeakCount::~PCWeakCount((v1 + 24));

  JUMPOUT(0x2666E9F00);
}

HGNode *LiEmptyImage::getHelium@<X0>(HGNode **a1@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  result = HGNode::HGNode(v4);
  *a1 = v4;
  return result;
}

void virtual thunk toLiEmptyImage::~LiEmptyImage(LiEmptyImage *this)
{
  v1 = OZChannelBase::setRangeName((this + *(*this - 24)), &off_287262260);
  *(v1 + 16) = &unk_2872DEA38;
  *(v1 + 32) = 0;
  v2 = (v1 + 24);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = this + *(*this - 24);
  OZChannelBase::setRangeName(v1, &off_287262260);
  *(v1 + 2) = &unk_2872DEA38;
  v1[32] = 0;
  PCWeakCount::~PCWeakCount(v1 + 3);

  JUMPOUT(0x2666E9F00);
}

void LiImageProjection::~LiImageProjection(PCSharedCount *this)
{
  this->var0 = off_287262410;
  this[5].var0 = off_2872624F8;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287261AD0);
  this[5].var0 = &unk_2872DEA38;
  LOBYTE(this[7].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[6].var0);
}

{
  this->var0 = off_287262410;
  this[5].var0 = off_2872624F8;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287261AD0);
  this[5].var0 = &unk_2872DEA38;
  LOBYTE(this[7].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[6].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiImageProjection::~LiImageProjection(LiImageProjection *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = off_287262410;
  v1[5].var0 = off_2872624F8;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287261AD0);
  v1[5].var0 = &unk_2872DEA38;
  LOBYTE(v1[7].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[6].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = off_287262410;
  v1[5].var0 = off_2872624F8;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287261AD0);
  v1[5].var0 = &unk_2872DEA38;
  LOBYTE(v1[7].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[6].var0);

  JUMPOUT(0x2666E9F00);
}

void LiSolidSource::~LiSolidSource(OZChannelBase *this)
{
  v1 = OZChannelBase::setRangeName(this, &off_287261C00);
  *(v1 + 32) = &unk_2872DEA38;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount((v1 + 40));
}

{
  v1 = OZChannelBase::setRangeName(this, &off_287261C00);
  *(v1 + 32) = &unk_2872DEA38;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount((v1 + 40));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiSolidSource::~LiSolidSource(LiSolidSource *this)
{
  v1 = OZChannelBase::setRangeName((this + *(*this - 24)), &off_287261C00);
  *(v1 + 32) = &unk_2872DEA38;
  *(v1 + 48) = 0;
  v2 = (v1 + 40);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = this + *(*this - 24);
  OZChannelBase::setRangeName(v1, &off_287261C00);
  *(v1 + 4) = &unk_2872DEA38;
  v1[48] = 0;
  PCWeakCount::~PCWeakCount(v1 + 5);

  JUMPOUT(0x2666E9F00);
}

void LiEmptyImage::LiEmptyImage(LiEmptyImage *this)
{
  *(this + 2) = &unk_2872DEA38;
  *(this + 3) = 0;
  *(this + 32) = 1;
  LiImageSource::LiImageSource(this, &off_287262260);
  *this = &unk_287262178;
  *(this + 2) = &unk_287262240;
}

void sub_25FF8710C(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  *(v1 + 32) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiMaterial::LiMaterial(LiMaterial *this, uint64_t *a2)
{
  LiSceneObject::LiSceneObject(this, a2 + 1);
  v3 = *a2;
  *v4 = *a2;
  *(v4 + *(v3 - 24)) = a2[5];
  *(v4 + 568) = 1;
  *(v4 + 576) = &unk_287262AC0;
  *(v4 + 584) = 0u;
  *(v4 + 608) = 0u;
  *(v4 + 600) = v4 + 608;
  *(v4 + 624) = 0;
  *(v4 + 632) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 640) = _Q0;
  *(v4 + 656) = 0;
}

void LiMaterial::~LiMaterial(LiMaterial *this, PC_Sp_counted_base **a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 3)) = a2[5];
  v5 = *(this + 75);
  v6 = this + 608;
  if (v5 != this + 608)
  {
    do
    {
      v7 = *(v5 + 5);
      if (v7)
      {
        LiMaterialSamplerInfo::~LiMaterialSamplerInfo(v7);
        MEMORY[0x2666E9F00]();
      }

      v8 = *(v5 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v5 + 2);
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }

  PCSpinLock::~PCSpinLock(this + 156);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 600, *(this + 76));
  *(this + 72) = &unk_287262AC0;
  if (*(this + 146) < 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 146);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(this + 72, 0, v11);
  v12 = *(this + 74);
  if (v12)
  {
    MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
  }

  *(this + 74) = 0;
  *(this + 146) = 0;

  LiSceneObject::~LiSceneObject(this, a2 + 1);
}

double LiMaterial::localBoundingBox(uint64_t a1, _OWORD *a2)
{
  result = 1.0;
  a2[1] = xmmword_2603429E0;
  a2[2] = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  return result;
}

void LiMaterial::plane(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xBFF0000000000000;
}

void LiMaterial::cast(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  PCSharedCount::PCSharedCount((a1 + 72));
}

uint64_t LiMaterial::printMaterial(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  LiImageSource::printIndent(a2, a3);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LiMaterial(", 12);
  if (*(a1 + 512))
  {
    v9 = *(a1 + 512);
  }

  else
  {
    v9 = "";
  }

  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "", 1);
  if (a4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "parts ", 6);
    MEMORY[0x2666E9B50](v11, *(a1 + 568));
  }

  if (*(a1 + 588))
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
    v13 = MEMORY[0x2666E9B50](v12, *(a1 + 588));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " uniforms", 9);
  }

  if (*(a1 + 616))
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
    v15 = MEMORY[0x2666E9B80](v14, *(a1 + 616));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " samplers", 9);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ")", 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v20);
  std::ostream::put();
  std::ostream::flush();
  v18 = *(*a1 + 144);

  return v18(a1, a2, a3);
}

void *LiMaterial::printMaterialDetails(unsigned int *a1, void *a2, int a3)
{
  v4 = a1;
  v55[18] = *MEMORY[0x277D85DE8];
  __nel = 0;
  __base = 0;
  v49[1] = 0;
  v50 = &unk_287262AF8;
  v48 = v49;
  v49[0] = 0;
  v5 = a1[147];
  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if ((i & 0x80000000) != 0 || v4[147] <= i)
      {
        PCArray_base::badIndex(a1);
      }

      v8 = *(v4 + 74) + 152 * SHIDWORD(v6);
      v54.__locale_ = *v8;
      ProShade::Value::Value(v55, (v8 + 8));
      v9 = *(v54.__locale_ + 4);
      v47 = v9;
      if (v9)
      {
        atomic_fetch_add(v9 - 3, 1u);
      }

      if (__nel <= SHIDWORD(__nel))
      {
        v10 = 2 * (HIDWORD(__nel) + 1) + 1;
      }

      else
      {
        v10 = __nel;
      }

      PCArray<LiString,PCArray_Traits<LiString>>::resize(&v50, HIDWORD(__nel) + 1, v10);
      v11 = __base + 8 * SHIDWORD(__nel);
      v12 = (v11 - 8);
      if (v11 - 8 != &v47)
      {
        LiString::dec((v11 - 8));
        v13 = v47;
        *v12 = v47;
        if (v13)
        {
          atomic_fetch_add(v13 - 3, 1u);
        }
      }

      v53.__locale_ = &v47;
      v14 = std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::__emplace_unique_key_args<LiString,std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>(&v48, &v47);
      a1 = ProShade::Value::operator=(v14 + 40, v55);
      if (v47 && atomic_fetch_add(v47 - 3, 0xFFFFFFFF) == 1)
      {
        *v47 = 0;
        if (v47)
        {
          v15 = (v47 - 3);
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v6 += 0x100000000;
    }

    if (HIDWORD(__nel))
    {
      qsort(__base, HIDWORD(__nel), 8uLL, uniform_order);
    }
  }

  LiImageSource::printIndent(a2, a3 + 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Uniforms:\n", 10);
  v17 = HIDWORD(__nel);
  if (HIDWORD(__nel))
  {
    v18 = 0;
    v19 = 0;
    v20 = MEMORY[0x277D82680];
    do
    {
      if ((v19 & 0x80000000) != 0 || SHIDWORD(__nel) <= v19)
      {
        PCArray_base::badIndex(v16);
      }

      v21 = (__base + (v18 >> 29));
      v54.__locale_ = v21;
      v22 = std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::__emplace_unique_key_args<LiString,std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>(&v48, v21);
      LiImageSource::printIndent(a2, a3 + 2);
      if (*v21)
      {
        v23 = *v21;
      }

      else
      {
        v23 = "";
      }

      v24 = strlen(v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v23, v24);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " = ", 3);
      ProShade::Value::repr((v22 + 40), &v54);
      if (v54.__locale_)
      {
        locale = v54.__locale_;
      }

      else
      {
        locale = "";
      }

      v27 = strlen(locale);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, locale, v27);
      if (v54.__locale_ && atomic_fetch_add(v54.__locale_ - 3, 0xFFFFFFFF) == 1)
      {
        *v54.__locale_ = 0;
        if (v54.__locale_)
        {
          v28 = v54.__locale_ - 12;
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v29 = std::locale::use_facet(&v54, v20);
      (v29->__vftable[2].~facet_0)(v29, 10);
      std::locale::~locale(&v54);
      std::ostream::put();
      v16 = std::ostream::flush();
      ++v19;
      v18 += 0x100000000;
    }

    while (v17 != v19);
  }

  LiImageSource::printIndent(a2, a3 + 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Textures:\n", 10);
  v47 = (v4 + 156);
  PCSpinLock::lock(v4 + 156);
  v30 = *(v4 + 75);
  if (v30 != v4 + 152)
  {
    v31 = MEMORY[0x277D82680];
    do
    {
      v32 = *(v30 + 4);
      v33 = *(v30 + 5);
      if (*(v33 + 312) != 1 || (*(v33 + 316) & 1) != 0)
      {
        LiImageSource::printIndent(a2, a3 + 2);
        if (*(v32 + 32))
        {
          v34 = *(v32 + 32);
        }

        else
        {
          v34 = "";
        }

        v35 = strlen(v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v34, v35);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ": ", 2);
        LiMaterialSamplerInfo::getTexture(v33, &v54);
        Width = ProGL::TextureHandle::getWidth(&v54.__locale_);
        v37 = MEMORY[0x2666E9B50](a2, Width);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " x ", 3);
        Height = ProGL::TextureHandle::getHeight(&v54.__locale_);
        MEMORY[0x2666E9B50](v38, Height);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        if (*(v33 + 312) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "[", 1);
          if (*(v33 + 317) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " triplanar", 10);
          }

          if (*(v33 + 318) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " rotateSideTexture", 18);
          }

          if (*(v33 + 319) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " invert", 7);
          }

          if (*(v33 + 324) && *(v33 + 328) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " bumpIsHeight", 13);
          }

          if (*(v33 + 329) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " mipmap", 7);
          }

          if (*(v33 + 336) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " gradient", 9);
          }

          if (*(v33 + 337) == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " checkTransparency", 18);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ]", 2);
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "no attributes", 13);
        }

        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v40 = std::locale::use_facet(&v53, v31);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v53);
        std::ostream::put();
        std::ostream::flush();
        if (v55[0].var0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55[0].var0);
        }
      }

      v41 = *(v30 + 1);
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = *(v30 + 2);
          v43 = *v42 == v30;
          v30 = v42;
        }

        while (!v43);
      }

      v30 = v42;
    }

    while (v42 != v4 + 152);
  }

  PCSpinLock::unlock(v4 + 156);
  std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::destroy(&v48, v49[0]);
  v50 = &unk_287262AF8;
  if ((__nel & 0x80000000) != 0)
  {
    v44 = 1;
  }

  else
  {
    v44 = __nel;
  }

  PCArray<LiString,PCArray_Traits<LiString>>::resize(&v50, 0, v44);
  result = __base;
  if (__base)
  {
    return MEMORY[0x2666E9ED0](__base, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF87DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, std::locale a20, uint64_t a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uniform_order(const LiString *a1, const LiString *a2)
{
  v4 = parseName(a1);
  v5 = parseName(a2);
  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v5)
  {
    return 1;
  }

  v7 = *a1;
  v8 = *a2;
  if (*a1 == *a2)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  return strcmp(v7, v8);
}

void LiMaterialSamplerInfo::getTexture(LiMaterialSamplerInfo *this@<X0>, PCWorkingColorVector *a2@<X8>)
{
  v4 = ProGL::TextureHandle::operator void (ProGL::TextureHandle::*)(void)(this + 18);
  if (v5)
  {
    v6 = (v5 & 1 | v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4 || v7)
  {
    v8 = *(this + 19);
    *a2 = *(this + 18);
    *(a2 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    ProGL::GL::GL(v9);
    LiTextureStoreToken::redeem(this + 20, v9, a2);
    ProGL::GL::~GL(v9);
  }
}

void sub_25FF87F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

uint64_t LiMaterial::obtainSamplerInfo(os_unfair_lock_s *this, const ProShade::SamplerNode *a2)
{
  v4 = this + 156;
  PCSpinLock::lock(this + 156);
  v5 = *&this[152]._os_unfair_lock_opaque;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 152;
  do
  {
    v7 = *&v5[8]._os_unfair_lock_opaque;
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[2 * v9]._os_unfair_lock_opaque;
  }

  while (v5);
  if (v6 == &this[152] || *&v6[8]._os_unfair_lock_opaque > a2)
  {
LABEL_9:
    operator new();
  }

  v11 = *&v6[10]._os_unfair_lock_opaque;
  PCSpinLock::unlock(v4);
  return v11;
}

void sub_25FF88080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_unfair_lock_s *a9)
{
  MEMORY[0x2666E9F00](v9, 0x10A0C40905BE205);
  PCLockSentry<PCSpinLock>::~PCLockSentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t LiMaterial::getSamplerInfo(os_unfair_lock_s *this, const ProShade::SamplerNode *a2)
{
  PCSpinLock::lock(this + 156);
  v4 = *&this[152]._os_unfair_lock_opaque;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 152;
  do
  {
    v6 = *&v4[8]._os_unfair_lock_opaque;
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * v8]._os_unfair_lock_opaque;
  }

  while (v4);
  if (v5 != &this[152] && *&v5[8]._os_unfair_lock_opaque <= a2)
  {
    v9 = *&v5[10]._os_unfair_lock_opaque;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  PCSpinLock::unlock(this + 156);
  return v9;
}

void LiMaterial::setTexture(os_unfair_lock_s *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = LiMaterial::obtainSamplerInfo(a1, *(a2 + 16));

  LiMaterialSamplerInfo::set(v7, a2, a3, a4);
}

void LiMaterialSamplerInfo::set(uint64_t *a1, const PCSharedCount *a2, uint64_t *a3, uint64_t *a4)
{
  ProShade::Sampler::operator=(a1, a2);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[19];
  a1[18] = v8;
  a1[19] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  PCPtr<LiImageSource>::reset(a1 + 12);
  v10 = a1 + 23;
  if (a1 + 23 != a4)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v10[j] = a4[j];
      }

      v10 += 4;
      a4 += 4;
    }
  }
}

void LiMaterial::setTexture(os_unfair_lock_s *a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v9 = LiMaterial::obtainSamplerInfo(a1, *(a2 + 16));

  LiMaterialSamplerInfo::set(v9, a2, a3, a4, a5);
}

void LiMaterialSamplerInfo::set(uint64_t a1, const PCSharedCount *a2, uint64_t *a3, char a4, uint64_t a5)
{
  ProShade::Sampler::operator=(a1, a2);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 168);
  *(a1 + 160) = v10;
  *(a1 + 168) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(a1 + 176) = a4;
  PCPtr<LiImageSource>::reset((a1 + 96));
  v12 = a1 + 184;
  if (a1 + 184 != a5)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v12 + j) = *(a5 + j);
      }

      v12 += 32;
      a5 += 32;
    }
  }
}

void LiMaterial::setTexture(os_unfair_lock_s *a1, uint64_t a2, const PCSharedCount *a3, CGColorSpace *a4, _OWORD *a5, double a6)
{
  v11 = LiMaterial::obtainSamplerInfo(a1, *(a2 + 16));

  LiMaterialSamplerInfo::set(v11, a2, a3, a4, a5, a6);
}

void LiMaterialSamplerInfo::set(uint64_t a1, const PCSharedCount *a2, const PCSharedCount *a3, CGColorSpace *a4, _OWORD *a5, double a6)
{
  ProShade::Sampler::operator=(a1, a2);
  *(a1 + 96) = a3->var0;
  PCSharedCount::PCSharedCount(&v13, a3 + 1);
  PCSharedCount::operator=((a1 + 104), &v13);
  PCSharedCount::~PCSharedCount(&v13);
  PCColorSpaceHandle::setColorSpace((a1 + 112), a4);
  PCWorkingColorVector::PCWorkingColorVector(&v13);
  v11 = v13;
  v13 = 0uLL;
  v12 = *(a1 + 152);
  *(a1 + 144) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }

  *(a1 + 136) = a6;
  if (a5)
  {
    *(a1 + 120) = *a5;
  }
}

uint64_t *LiMaterial::getProgramCache(LiMaterial *this)
{
  {
    operator new();
  }

  if (LiMaterial::getProgramCache(void)::once != -1)
  {
    LiMaterial::getProgramCache();
  }

  return &LiMaterial::getProgramCache(void)::cache;
}

void LiMaterial::getProgram(uint64_t a1@<X0>, LiContext *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = (*(*a1 + 168))(&v14);
  isObjectRef = OZChannelBase::isObjectRef(v8);
  *v16 = a3;
  v17 = isObjectRef;
  PCHash128::addData(&v14, v16, 8uLL);
  LiContext::getHash(a2);
  PCHash128::operator+=(&v14, v13);
  PCWorkingColorVector::PCWorkingColorVector(v13);
  *v13 = v14;
  LiMaterial::getProgramCache(v10);
  LOBYTE(v11) = 0;
  PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::findValue(LiMaterial::getProgramCache(void)::cache, v13, &v11, a4);
  if (!*a4)
  {
    (*(*a1 + 176))(&v11, a1, a2);
    *a4 = v11;
    PCSharedCount::PCSharedCount(&v15, &v12);
    PCSharedCount::operator=((a4 + 8), &v15);
    PCSharedCount::~PCSharedCount(&v15);
    PCSharedCount::~PCSharedCount(&v12);
    PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::addValue(LiMaterial::getProgramCache(void)::cache, v13, a4, 0);
  }
}

void LiMaterial::setUniforms(LiMaterial *this, const LiTextureCoordinator *a2)
{
  CurrentContextUniformData = ProShade::UniformData::getCurrentContextUniformData(this);
  v5 = CurrentContextUniformData;
  v6 = *(this + 147);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      if (v7 >= *(this + 147))
      {
        PCArray_base::badIndex(CurrentContextUniformData);
      }

      CurrentContextUniformData = ProShade::UniformData::set(v5, *(*(this + 74) + v8 - 8), (*(this + 74) + v8));
      ++v7;
      v8 += 152;
    }

    while (v6 != v7);
  }

  v9 = *(this + 75);
  v10 = this + 608;
  if (v9 != this + 608)
  {
    do
    {
      v11 = *(v9 + 5);
      v22 = *(v11 + 96);
      PCSharedCount::PCSharedCount(&v23, (v11 + 104));
      v12 = LiTextureCoordinator::textureForImage(a2, v22);
      v13 = v12;
      if (v12)
      {
        ProShade::Sampler::setWrapMode(v11, *(v12 + 24));
      }

      v14 = LiMaterialSamplerInfo::textureID(v11);
      TextureID = v14;
      if (v13 && !v14)
      {
        TextureID = LiMaterialTextureInfo::getTextureID(v13);
      }

      if (TextureID)
      {
        ProShade::Sampler::setTexture(v11, TextureID);
        ProShade::Sampler::setWrapMode(v11, *(v11 + 320));
        v16 = (v13 ? v13 + 32 : v11 + 184);
        ProShade::UniformData::set<PCMatrix44Tmpl<double>>(v5, v11 + 64, v16);
        v17 = LiMaterialSamplerInfo::textureID(v11);
        if (v13)
        {
          if (!v17)
          {
            v21 = vcvtq_f32_s32(*(v13 + 160));
            ProShade::UniformData::set<PCVector4<float>>(v5, v11 + 32, &v21);
          }
        }
      }

      PCSharedCount::~PCSharedCount(&v23);
      v18 = *(v9 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v9 + 2);
          v20 = *v19 == v9;
          v9 = v19;
        }

        while (!v20);
      }

      v9 = v19;
    }

    while (v19 != v10);
  }
}

HGGLBlendingInfo *LiMaterialSamplerInfo::textureID(LiMaterialSamplerInfo *this)
{
  LiMaterialSamplerInfo::getTexture(this, &v3);
  Name = ProGL::TextureHandle::getName(&v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return Name;
}

void sub_25FF88924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::UniformData::set<PCMatrix44Tmpl<double>>(ProShade::UniformData *a1, uint64_t a2, const void *a3)
{
  v7[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v7);
  ProShade::Value::set(v7, 3, 7, a3);
  return ProShade::UniformData::set(a1, *(a2 + 16), v7);
}

uint64_t ProShade::UniformData::set<PCVector4<float>>(ProShade::UniformData *a1, uint64_t a2, float32x2_t *a3)
{
  v9[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v9);
  v6 = vcvtq_f64_f32(a3[1]);
  v8[0] = vcvtq_f64_f32(*a3);
  v8[1] = v6;
  ProShade::Value::set(v9, 3, 4, v8);
  return ProShade::UniformData::set(a1, *(a2 + 16), v9);
}

void LiMaterial::getSamplerInfos(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 600);
  v3 = (a1 + 608);
  if (v2 != (a1 + 608))
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = v2[5];
      v7 = *(a2 + 16);
      if (v5 >= v7)
      {
        v8 = (v5 - *a2) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v9 = v7 - *a2;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a2, v11);
        }

        v12 = (8 * v8);
        *v12 = v6;
        v5 = (8 * v8 + 8);
        v13 = *(a2 + 8) - *a2;
        v14 = v12 - v13;
        memcpy(v12 - v13, *a2, v13);
        v15 = *a2;
        *a2 = v14;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v5++ = v6;
      }

      *(a2 + 8) = v5;
      v16 = v2[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v2[2];
          v18 = *v17 == v2;
          v2 = v17;
        }

        while (!v18);
      }

      v2 = v17;
    }

    while (v17 != v3);
  }
}

double *LiMaterial::setAlpha(double *result, double a2, double a3, double a4)
{
  result[79] = a2;
  result[80] = a3;
  result[81] = a4;
  return result;
}

void LiMaterial::setSamplerProperties()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "subclass must implement");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiMaterial.h");
  PCException::PCException(exception, &v2, &v1, 328);
  *exception = &unk_2871F6178;
}

void sub_25FF88C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void LiMaterialSamplerInfo::~LiMaterialSamplerInfo(LiMaterialSamplerInfo *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 14);
  PCSharedCount::~PCSharedCount(this + 13);
  *this = &unk_28725E878;
  *(this + 8) = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 11);
  *(this + 4) = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 7);
  *this = &unk_28725E920;
  PCSharedCount::~PCSharedCount(this + 3);
}

uint64_t parseName(const LiString *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 - 8);
    v3 = v2 - 1;
    while (1)
    {
      v4 = __OFSUB__(v2, 1);
      LODWORD(v2) = v2 - 1;
      if (v2 < 0 != v4)
      {
        break;
      }

      v5 = *(v1 + v3--);
      if (v5 == 95)
      {
        if ((v2 & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        LiString::from(a1, v2 + 1, &v11);
        v6 = v11;
        if (v11)
        {
          v7 = v11;
        }

        else
        {
          v7 = "";
        }

        v8 = atoi(v7);
        if (v6 && atomic_fetch_add(v6 - 3, 0xFFFFFFFF) == 1)
        {
          *v11 = 0;
          if (v11)
          {
            v9 = (v11 - 12);
          }

          else
          {
            v9 = 0;
          }

          free(v9);
        }

        return v8;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void LiString::from(LiString *this@<X0>, int a2@<W1>, LiString *a3@<X8>)
{
  v3 = *this;
  if (*this && (v4 = *(v3 - 8), v4 > a2))
  {
    LiString::LiString(a3, (v3 + a2), v4 - a2);
  }

  else
  {
    *a3 = 0;
  }
}

void LiString::LiString(LiString *this, const char *a2, int a3)
{
  if (a3 < 1)
  {
    *this = 0;
  }

  else
  {
    v6 = a3 + 1;
    v7 = malloc_type_malloc((a3 + 13), 0x10000403E1C8BA9uLL);
    v7[2] = v6;
    atomic_store(1u, v7);
    *this = v7 + 3;
    v7[1] = a3;
    memcpy(v7 + 3, a2, a3);
    *(*this + a3) = 0;
  }
}

void LiMaterialSamplerInfo::LiMaterialSamplerInfo(LiMaterialSamplerInfo *this)
{
  v2 = ProShade::Sampler::Sampler(this);
  v2[12].var0 = 0;
  PCSharedCount::PCSharedCount(v2 + 13);
  *(this + 14) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 120));
  *(this + 17) = 0x3FF0000000000000;
  PCWorkingColorVector::PCWorkingColorVector((this + 144));
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 38) = 0x3FF0000000000000;
  *(this + 33) = 0x3FF0000000000000;
  *(this + 28) = 0x3FF0000000000000;
  *(this + 23) = 0x3FF0000000000000;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 312) = 0;
  *(this + 81) = 0;
  *(this + 316) = 0;
  *(this + 164) = 257;
  *(this + 83) = 0;
  *(this + 168) = 256;
  *(this + 338) = 0;
}

void PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262AC0;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262AC0;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void *PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(void *result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "PCArray::resize");
    PCException::PCException(exception, &v17);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 2))
  {
    v6 = *(result + 3);
    if (a2 > v6)
    {
      v7 = 152 * v6;
      v8 = a2 - v6;
      do
      {
        v9 = v5[2] + v7;
        *(v9 + 144) = 0;
        *(v9 + 112) = 0u;
        *(v9 + 128) = 0u;
        *(v9 + 80) = 0u;
        *(v9 + 96) = 0u;
        *(v9 + 48) = 0u;
        *(v9 + 64) = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 32) = 0u;
        *v9 = 0u;
        result = ProShade::Value::Value((v9 + 8));
        v7 += 152;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v10 = *(result + 3);
    if (a2 >= v10)
    {
      v11 = *(result + 3);
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      v11 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = (v12 + v5[2]);
        *v12 = v13->var0;
        ProShade::Value::Value((v12 + 1), v13 + 1);
        v12 += 19;
      }

      while ((152 * v11) != v12);
      v10 = *(v5 + 3);
    }

    if (v11 > v10)
    {
      v10 = v11;
    }

    if (v10 < a2)
    {
      v14 = (152 * v10 + 8);
      v15 = a2 - v10;
      do
      {
        v14[17] = 0;
        *(v14 + 15) = 0u;
        *(v14 + 13) = 0u;
        *(v14 + 11) = 0u;
        *(v14 + 9) = 0u;
        *(v14 + 7) = 0u;
        *(v14 + 5) = 0u;
        *(v14 + 3) = 0u;
        *(v14 + 1) = 0u;
        *(v14 - 1) = 0u;
        v14 = ProShade::Value::Value(v14) + 19;
        --v15;
      }

      while (v15);
    }

    result = v5[2];
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    v5[2] = 0;
  }

  *(v5 + 2) = v3;
  *(v5 + 3) = a2;
  return result;
}

void PCArray<LiString,PCArray_Traits<LiString>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262AF8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiString,PCArray_Traits<LiString>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<LiString,PCArray_Traits<LiString>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262AF8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiString,PCArray_Traits<LiString>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<LiString,PCArray_Traits<LiString>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "PCArray::resize");
    PCException::PCException(exception, &v17);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 <= a2)
    {
      if (v6 < a2)
      {
        bzero((*(a1 + 16) + 8 * v6), 8 * (~v6 + a2) + 8);
      }
    }

    else
    {
      v7 = 8 * a2;
      v8 = a2;
      do
      {
        LiString::dec((*(a1 + 16) + v7));
        v7 += 8;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v9 = *(a1 + 12);
    if (a2 >= v9)
    {
      v10 = *(a1 + 12);
    }

    else
    {
      v10 = a2;
    }

    if (v10 < 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = *(a1 + 16);
        v13 = *(v11 + v12);
        *v11 = v13;
        if (v13)
        {
          atomic_fetch_add((v13 - 12), 1u);
          v12 = *(a1 + 16);
        }

        LiString::dec((v11++ + v12));
      }

      while ((8 * v10) != v11);
      v9 = *(a1 + 12);
    }

    if (v10 < v9)
    {
      v14 = 8 * v10;
      do
      {
        LiString::dec((*(a1 + 16) + v14));
        v14 += 8;
        ++v10;
      }

      while (*(a1 + 12) > v10);
    }

    if (v10 < a2)
    {
      bzero((8 * v10), 8 * (~v10 + a2) + 8);
    }

    v15 = *(a1 + 16);
    if (v15)
    {
      MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::destroy(a1, a2[1]);
    LiString::dec((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::__emplace_unique_key_args<LiString,std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>(uint64_t a1, const char **a2)
{
  result = *std::__tree<LiString>::__find_equal<LiString>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<LiString,ProShade::Value>,std::__map_value_compare<LiString,std::__value_type<LiString,ProShade::Value>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,ProShade::Value>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>();
  }

  return result;
}

void sub_25FF89840(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<LiString,ProShade::Value>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *_ZNSt3__14pairIK8LiStringN8ProShade5ValueEEC2B8ne200100IJRS2_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS9_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSI_IJXspT2_EEEE(void *a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if (v3)
  {
    atomic_fetch_add((v3 - 12), 1u);
  }

  ProShade::Value::Value(a1 + 1);
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<LiString,ProShade::Value>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    LiString::dec((__p + 32));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *std::__tree<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::setMaxSize(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = a2;
  if (!*(a1 + 104))
  {
    v7[3] = v2;
    v7[4] = v3;
    while (*(a1 + 80) > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
    {
      v5 = *(a1 + 48);
      if (v5 == *(a1 + 56))
      {
        break;
      }

      v7[0] = *v5;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove((a1 + 48), v7);
      v6 = v7[0];
      *(a1 + 80) -= *(v7[0] + 64);
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v6);
      PCSharedCount::~PCSharedCount((v6 + 56));
      operator delete(v6);
    }
  }
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 80) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 80);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 72) <= *(v17 + 72))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 80) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 80) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 72);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 72);
    v13 = *(*(v2 + 8 * v5) + 72);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 72))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 80) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 80) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 80);
    goto LABEL_24;
  }

  return result;
}

uint64_t *PCCache<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

void std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::destroy(uint64_t a1, PCSharedCount *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::destroy(a1, a2[1].var0);
    PCSharedCount::~PCSharedCount(a2 + 7);

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::findValue(uint64_t a1@<X0>, const PCHash128 *a2@<X1>, _BYTE *a3@<X2>, PCSharedCount *a4@<X8>)
{
  v7 = std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::find<LiMaterial::ShaderKey>(a1 + 24, a2);
  v10 = v7;
  if ((a1 + 32) == v7)
  {
    *a3 = 0;
    a4->var0 = 0;

    PCSharedCount::PCSharedCount(a4 + 1);
  }

  else
  {
    v8 = v7;
    a4->var0 = v7[6].var0;
    PCSharedCount::PCSharedCount(a4 + 1, v7 + 7);
    v9 = *(a1 + 72) + 1;
    *(a1 + 72) = v9;
    v8[9].var0 = v9;
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v10);
    *a3 = 1;
  }
}

uint64_t std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::find<LiMaterial::ShaderKey>(uint64_t a1, const PCHash128 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = LiMaterial::ShaderKey::compare((v3 + 32), a2);
    if (v6 != -1)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == -1));
  }

  while (v3);
  if (v5 == v2 || LiMaterial::ShaderKey::compare(a2, (v5 + 32)) == -1)
  {
    return v2;
  }

  return v5;
}

uint64_t LiMaterial::ShaderKey::compare(const PCHash128 *a1, const PCHash128 *a2)
{
  if (operator<(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return operator>(a1, a2);
  }
}

void PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::addValue(uint64_t a1, const PCHash128 *a2, const PCSharedCount *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v8 = std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::find<LiMaterial::ShaderKey>(a1 + 24, a2);
    v32 = v8;
    if (a1 + 32 == v8)
    {
      v16 = *(a1 + 72) + 1;
      *(a1 + 72) = v16;
      var0 = a3->var0;
      PCSharedCount::PCSharedCount(&v29, a3 + 1);
      *&v30 = a4;
      *(&v30 + 1) = v16;
      v31 = 0;
      v21 = *a2;
      v22 = var0;
      PCSharedCount::PCSharedCount(&v23, &v29);
      v24 = v30;
      v25 = v31;
      v26 = std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::__emplace_unique_key_args<LiMaterial::ShaderKey,std::pair<LiMaterial::ShaderKey const,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>(a1 + 24, &v21);
      v27 = v17;
      PCSharedCount::~PCSharedCount(&v23);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::add(a1 + 48, &v26);
      v18 = *(a1 + 80) + a4;
      *(a1 + 80) = v18;
      if (!*(a1 + 104))
      {
        while (v18 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v20 = *(a1 + 48);
          if (v20 == *(a1 + 56))
          {
            break;
          }

          *&v21 = *v20;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v21);
          v19 = v21;
          *(a1 + 80) -= *(v21 + 64);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v19);
          PCSharedCount::~PCSharedCount((v19 + 56));
          operator delete(v19);
          v18 = *(a1 + 80);
        }
      }

      PCSharedCount::~PCSharedCount(&v29);
    }

    else
    {
      v9 = v8;
      *(v8 + 48) = a3->var0;
      PCSharedCount::PCSharedCount(&v21, a3 + 1);
      PCSharedCount::operator=((v9 + 56), &v21);
      PCSharedCount::~PCSharedCount(&v21);
      v10 = *(a1 + 72) + 1;
      *(a1 + 72) = v10;
      *(v9 + 72) = v10;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v32);
      v11 = v32;
      v12 = a4 - *(v32 + 64);
      if (v12)
      {
        v13 = v12 + *(a1 + 80);
        *(a1 + 80) = v13;
        *(v11 + 64) = a4;
        if (!*(a1 + 104))
        {
          while (v13 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v15 = *(a1 + 48);
            if (v15 == *(a1 + 56))
            {
              break;
            }

            *&v21 = *v15;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v21);
            v14 = v21;
            *(a1 + 80) -= *(v21 + 64);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v14);
            PCSharedCount::~PCSharedCount((v14 + 56));
            operator delete(v14);
            v13 = *(a1 + 80);
          }
        }
      }
    }
  }
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 80) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 80);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 72) <= *(v18 + 72))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 80) = v16;
      v18 = v17[v20];
      *(v18 + 80) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

uint64_t std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::__emplace_unique_key_args<LiMaterial::ShaderKey,std::pair<LiMaterial::ShaderKey const,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::__find_equal<LiMaterial::ShaderKey>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::__construct_node<std::pair<LiMaterial::ShaderKey const,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__map_value_compare<LiMaterial::ShaderKey,std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::less<LiMaterial::ShaderKey>,true>,std::allocator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>>>::__find_equal<LiMaterial::ShaderKey>(uint64_t a1, void *a2, const PCHash128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (LiMaterial::ShaderKey::compare(a3, (v4 + 4)) != -1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (LiMaterial::ShaderKey::compare((v7 + 4), a3) != -1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCSharedCount::~PCSharedCount(v2 + 7);
    }

    operator delete(v2);
  }

  return a1;
}

void LiImageSource::LiImageSource(LiImageSource *this, uint64_t *a2)
{
  v2 = a2[1];
  *this = v2;
  *(this + *(v2 - 24)) = a2[2];
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  *(this + 12) = 0;
  *(this + 2) = 0;
}

void LiImageSource::clone(LiImageSource *this)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v3, "subclass must implement");
  PCString::PCString(&v2, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiImageSource.cpp");
  PCException::PCException(exception, &v3, &v2, 34);
  *exception = &unk_2871F6178;
}

void sub_25FF8A6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t LiImageSource::filteredEdges(LiImageSource *this)
{
  return 0;
}

{
  return (*(*this + 32))();
}

void LiImageSource::repr(LiImageSource *this@<X0>, LiString *a2@<X8>)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = (*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL);

  LiString::LiString(a2, v3);
}

void *LiImageSource::printIndent(void *result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      --v2;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "  ", 2);
    }

    while (v2);
  }

  return result;
}

uint64_t LiImageSource::print(void *a1, void *a2, int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      --v5;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  ", 2);
    }

    while (v5);
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *(*(*a1 - 8) + 8);
  v7 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6 & 0x7FFFFFFFFFFFFFFFLL, v7);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  return std::ostream::flush();
}

double LiImageSource::fixPixelTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*a1 + 56))(a1, a4);
  if (v5 > 1)
  {
    if ((v5 - 2) < 2)
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0;
      v9 = 0uLL;
      v10 = 0.0;
      getScaleTranslateFlip(a3, &v11, &v9);
      v13 = 0x3FF0000000000000;
      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *a3 = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      v7 = PCMatrix44Tmpl<double>::leftScale(a3, v11, v12, 1.0);
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          v11 = 0.0;
          v12 = 0.0;
          v13 = 0;
          *&result = *&perspectiveToAffine(a3, &v11, a3);
        }

        return result;
      }

      v11 = 0.0;
      v12 = 0.0;
      v13 = 0;
      v9 = 0uLL;
      v10 = 0.0;
      v8 = 0.0;
      getScaleTranslateRotate(a3, &v11, &v9, &v8);
      v13 = 0x3FF0000000000000;
      v10 = 0.0;
      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *a3 = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      PCMatrix44Tmpl<double>::leftScale(a3, v11, v12, 1.0);
      PCMatrix44Tmpl<double>::leftRotate(a3, 4, 0.0, 0.0, v8);
    }

    v7.f64[0] = v9.f64[0];
    *&result = *&PCMatrix44Tmpl<double>::leftTranslate(a3, v7, v9.f64[1], v10);
    return result;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0;
      v9 = 0uLL;
      v10 = 0.0;
      getScaleTranslate(a3, &v11, &v9);
      v13 = 0x3FF0000000000000;
      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *a3 = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      *&result = *&PCMatrix44Tmpl<double>::leftScale(a3, v11, v12, 1.0);
    }
  }

  else
  {
    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
  }

  return result;
}

void PCMatrix44Tmpl<double>::leftRotate(float64x2_t *a1, int a2, double a3, double a4, double a5)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        PCMatrix44Tmpl<double>::leftRotate(a1, 1, a4);
        v12 = a1;
        v13 = a5;
        v14 = 2;
        break;
      case 4:
        PCMatrix44Tmpl<double>::leftRotate(a1, 2, a5);
        v18 = a1;
        v19 = a3;
        v20 = 0;
        goto LABEL_17;
      case 5:
        PCMatrix44Tmpl<double>::leftRotate(a1, 2, a5);
        v12 = a1;
        v13 = a4;
        v14 = 1;
        break;
      default:
        return;
    }

    PCMatrix44Tmpl<double>::leftRotate(v12, v14, v13);
    v15 = a1;
    v16 = a3;
    v17 = 0;
    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

      PCMatrix44Tmpl<double>::leftRotate(a1, 1, a4);
      v9 = a1;
      v10 = a3;
      v11 = 0;
      goto LABEL_11;
    }

    PCMatrix44Tmpl<double>::leftRotate(a1, 0, a3);
    v18 = a1;
    v19 = a5;
    v20 = 2;
LABEL_17:
    PCMatrix44Tmpl<double>::leftRotate(v18, v20, v19);
    v15 = a1;
    v16 = a4;
    v17 = 1;
    goto LABEL_18;
  }

  PCMatrix44Tmpl<double>::leftRotate(a1, 0, a3);
  v9 = a1;
  v10 = a4;
  v11 = 1;
LABEL_11:
  PCMatrix44Tmpl<double>::leftRotate(v9, v11, v10);
  v15 = a1;
  v16 = a5;
  v17 = 2;
LABEL_18:

  PCMatrix44Tmpl<double>::leftRotate(v15, v17, v16);
}

uint64_t LiImageFilter::estimateRenderMemory(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 112))();
  }

  return result;
}

void *LiImageFilter::print(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      --v5;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  ", 2);
    }

    while (v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LiImageFilter Image source:", 27);
  if (*(a1 + 16))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
    v6 = *(a1 + 16);
    if (!v6)
    {
      throw_PCNullPointerException(1);
    }

    v7 = *(*v6 + 128);

    return v7();
  }

  else
  {

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " NULL\n", 6);
  }
}

void LiImageFilterChain::LiImageFilterChain(LiImageFilterChain *this)
{
  *this = 0;
  PCSharedCount::PCSharedCount(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_2871F2660;
}

void LiImageFilterChain::LiImageFilterChain(LiImageFilterChain *this, const LiImageFilterChain *a2)
{
  *this = 0;
  PCSharedCount::PCSharedCount(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_2871F2660;
  LiImageFilterChain::operator=(this, a2);
}

void sub_25FF8AF14(_Unwind_Exception *a1)
{
  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::~PCArray(v2);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t LiImageFilterChain::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 24) < 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a1 + 24);
    }

    PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1 + 16, 0, v4);
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
    }

    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    v10 = *(a2 + 28);
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (i >= *(a2 + 28))
        {
          PCArray_base::badIndex(v9);
        }

        v12 = *(*(a2 + 32) + 16 * i);
        if (!v12)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v12 + 16))(&v15);
        var0 = v15.var0;
        PCSharedCount::PCSharedCount(&v18, &v16);
        PCSharedCount::~PCSharedCount(&v16);
        if (!var0)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          PCString::PCString(&v15, "clone failed (sorry, Dolly)");
          PCException::PCException(exception, &v15);
        }

        LiImageFilterChain::append(a1, var0);
        PCSharedCount::~PCSharedCount(&v18);
      }
    }

    LiImageFilterChain::connect(a1, v5, v6, v7, v8);
  }

  return a1;
}

void sub_25FF8B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  PCSharedCount::~PCSharedCount(v9 + 1);
  _Unwind_Resume(a1);
}

uint64_t LiImageFilterChain::connect(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, int (*a5)(const void *, const void *))
{
  v5 = *(this + 28);
  if (v5)
  {
    v6 = this;
    if (*(v6 + 28) <= 0)
    {
      PCArray_base::badIndex(v7);
    }

    v8 = **(v6 + 32);
    if (!v8)
    {
      throw_PCNullPointerException(1);
    }

    this = (*(*v8 + 168))(v8, *v6);
    if (v5 >= 2)
    {
      for (i = 1; i != v5; ++i)
      {
        if (i >= *(v6 + 28))
        {
          PCArray_base::badIndex(this);
        }

        v10 = (*(v6 + 32) + 16 * i);
        if (!*v10)
        {
          throw_PCNullPointerException(1);
        }

        if (i > *(v6 + 28))
        {
          PCArray_base::badIndex(this);
        }

        this = (*(**v10 + 168))(*v10, *(*(v6 + 32) + 16 * i - 16));
      }
    }
  }

  return this;
}

PCShared_base **LiImageFilterChain::setInput(PCShared_base **this, LiImageSource *a2)
{
  result = PCPtr<LiImageSource>::operator=<LiImageSource>(this, a2);
  v4 = *(this + 7);
  if (v4)
  {
    if (v4 <= 0)
    {
      PCArray_base::badIndex(result);
    }

    v5 = *this[4];
    if (!v5)
    {
      throw_PCNullPointerException(1);
    }

    v6 = *(*v5 + 168);

    return v6();
  }

  return result;
}

uint64_t LiImageFilterChain::getTail(LiImageFilterChain *this)
{
  v1 = *(this + 7);
  if (v1 <= 0)
  {
    PCArray_base::badIndex(this);
  }

  return *(*(this + 4) + 16 * v1 - 16);
}

uint64_t anonymous namespace::by_priority(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*a1 + 32);
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v3 = *(*a2 + 32);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

void LiImageFilterChain::append(LiImageFilterChain *this, const LiImageFilterChain *a2)
{
  v2 = *(a2 + 7);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= *(a2 + 7))
      {
        PCArray_base::badIndex(this);
      }

      (*(**(*(a2 + 4) + 16 * i) + 16))(&v6);
      v8 = v6;
      PCSharedCount::PCSharedCount(&v9, &v7);
      PCSharedCount::~PCSharedCount(&v7);
      LiImageFilterChain::append(this, v8);
      PCSharedCount::~PCSharedCount(&v9);
    }
  }
}

uint64_t LiImageFilter::adjustCasterLocalToWorld(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 144))();
  }

  return result;
}

void LiMaskBlender::~LiMaskBlender(CGColorSpace **this)
{
  LiBlender::~LiBlender(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t LiMaskBlender::add(uint64_t a1, HGNode **a2, uint64_t a3, uint64_t a4, uint64_t a5, const PCSharedCount *a6, double a7)
{
  v14 = *(a1 + 8);
  if (v14)
  {
    LiImagePolygon::getDOD(v14, 1.7, v29);
    LiBlender::crop(*(a1 + 96), *(a1 + 8), *(a1 + 16));
    *(a1 + 8) = 0;
  }

  else
  {
    DOD = HGRenderer::GetDOD(*(a1 + 24), *a2);
    HGRectIsNull(DOD, v16);
  }

  v17 = *a2;
  v29[0] = v17;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  if (*(*(a1 + 88) + 68))
  {
    v18 = (*(*a1 + 32))(a1);
    v27 = 0;
    PCSharedCount::PCSharedCount(&v28);
    (*(*v18 + 16))(v18, v29, 0, 0, 0, &v27, 1.0);
    PCSharedCount::~PCSharedCount(&v28);
    (*(**(a1 + 88) + 168))(&v26);
    v24 = 0;
    PCSharedCount::PCSharedCount(&v25);
    (*(*v18 + 16))(v18, &v26, 27, 0, 0, &v24, 1.0);
    PCSharedCount::~PCSharedCount(&v25);
    if (v26)
    {
      (*(**&v26 + 24))(v26);
    }

    (*(*v18 + 24))(&v26, v18);
    v19 = v26;
    if (*v29 == *&v26)
    {
      if (v29[0])
      {
        (*(**&v26 + 24))(v26);
      }
    }

    else
    {
      if (v29[0])
      {
        (*(**v29 + 24))();
        v19 = v26;
      }

      v29[0] = v19;
    }

    (*(*v18 + 8))(v18);
  }

  v20 = *(a1 + 96);
  var0 = a6->var0;
  PCSharedCount::PCSharedCount(&v23, a6 + 1);
  (*(*v20 + 16))(v20, v29, a3, a4, a5, &var0, a7);
  PCSharedCount::~PCSharedCount(&v23);
  result = v29[0];
  if (v29[0])
  {
    return (*(**v29 + 24))(*v29);
  }

  return result;
}

void sub_25FF8B838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMaskBlender::addPatch(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v14 = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  if (*(a1[11] + 17))
  {
    v6 = ((*a1)[4])(a1);
    v12 = 0;
    PCSharedCount::PCSharedCount(&v13);
    (*(*v6 + 16))(v6, &v14, 0, 0, 0, &v12, 1.0);
    PCSharedCount::~PCSharedCount(&v13);
    (*(*a1[11] + 168))(&v11);
    v9 = 0;
    PCSharedCount::PCSharedCount(&v10);
    (*(*v6 + 16))(v6, &v11, 27, 0, 0, &v9, 1.0);
    PCSharedCount::~PCSharedCount(&v10);
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    (*(*v6 + 24))(&v11, v6);
    v7 = v11;
    if (v14 == v11)
    {
      if (v14)
      {
        (*(*v11 + 24))(v11);
      }
    }

    else
    {
      if (v14)
      {
        (*(*v14 + 24))(v14);
        v7 = v11;
      }

      v14 = v7;
    }

    (*(*v6 + 8))(v6);
  }

  (*(*a1[12] + 40))(a1[12], a2, &v14);
  result = v14;
  if (v14)
  {
    return (*(*v14 + 24))(v14);
  }

  return result;
}

void sub_25FF8BC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMaskDrawer::LiMaskDrawer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LiDrawer::LiDrawer(a1);
  *v6 = &unk_287262BA0;
  v6[9] = 0;
  v6[10] = 0;
  v6[8] = 0;
  v6[6] = a2;
  v6[7] = &unk_28725F208;
  v6[2] = a2;
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize((v6 + 7), 1, 3);
  *(*(a1 + 72) + 8 * *(a1 + 68) - 8) = a3;
  return a1;
}

void sub_25FF8BDC0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 10);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  PCPtrArray<LiSeam>::~PCPtrArray(v2);
  LiDrawer::~LiDrawer(v1);
  _Unwind_Resume(a1);
}

void LiMaskDrawer::~LiMaskDrawer(LiMaskDrawer *this)
{
  *this = &unk_287262BA0;
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  *(this + 7) = &unk_28725F258;
  v3 = *(this + 16);
  if (v3 < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 & ~(v3 >> 31);
  }

  if (v4 == v3)
  {
    v5 = *(this + 17);
    if ((v5 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 9) + 8 * v5) = 0;
      }

      while (!__CFADD__(v5++, 1));
    }
  }

  else
  {
    if (v4)
    {
      operator new[]();
    }

    v7 = *(this + 9);
    if (v7)
    {
      MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
    }

    *(this + 9) = 0;
  }

  *(this + 16) = v4;
  *(this + 17) = 0;
  v8 = *(this + 9);
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  *(this + 16) = 0;

  LiDrawer::~LiDrawer(this);
}

{
  LiMaskDrawer::~LiMaskDrawer(this);

  JUMPOUT(0x2666E9F00);
}

void LiMaskDrawer::draw(LiMaskDrawer *this, LiBlender *a2)
{
  LiBlender::LiBlender(v5, *(a2 + 13), (a2 + 56));
  v5[11] = this;
  v5[12] = a2;
  v4 = *(a2 + 3);
  v5[0] = &unk_287262B60;
  v5[3] = v4;
  (*(**(this + 6) + 16))(*(this + 6), v5);
  LiBlender::~LiBlender(v5);
}

void sub_25FF8C04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LiBlender::~LiBlender(va);
  _Unwind_Resume(a1);
}

void LiMaskDrawer::intersect(LiMaskDrawer *this, LiIntersection *a2)
{
  v4 = (*(**(this + 6) + 80))(*(this + 6));
  v5 = *(a2 + 5);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (i >= *(a2 + 5))
      {
        PCArray_base::badIndex(v4);
      }

      v7 = *(*(a2 + 3) + 8 * i);
      if (*(v7 + 8))
      {
        __p = 0;
        v10 = 0;
        v11 = 0;
        elim<double>((v7 + 16), &__p, 2);
        if (*(this + 17) >= 1)
        {
          if (*(this + 17) <= 0)
          {
            PCArray_base::badIndex(v8);
          }

          operator new();
        }

        v4 = __p;
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_25FF8C49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double elim<double>(double **a1, void *a2, int a3)
{
  v6 = -1431655765 * (a1[1] - *a1);
  std::vector<PCVector2<double>>::resize(a2, v6);
  if (v6 >= 1)
  {
    v8 = *a1;
    v9 = v6 & 0x7FFFFFFF;
    v10 = (*a2 + 8);
    do
    {
      v11 = v8 + 1;
      if (a3 > 0)
      {
        v11 = v8;
      }

      if (a3 <= 1)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      result = v8[v12];
      *(v10 - 1) = *v11;
      *v10 = result;
      v10 += 2;
      v8 += 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

void LiMaskDrawer::name(LiMaskDrawer *this@<X0>, void *a2@<X8>)
{
  LiString::LiString(&v16, "mask(");
  (*(**(this + 6) + 88))(&v15);
  v4 = v16;
  if (v16)
  {
    v5 = *(v16 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v15;
  if (v15)
  {
    v7 = *(v15 - 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + v5;
  v9 = malloc_type_malloc(v8 + 13, 0x10000403E1C8BA9uLL);
  v9[1] = v8;
  v9[2] = v8 + 1;
  atomic_store(1u, v9);
  atomic_store(0, v9);
  memcpy(v9 + 3, v4, v5);
  memcpy(v9 + v5 + 12, v6, v7);
  *(v9 + v8 + 12) = 0;
  atomic_fetch_add(v9, 1u);
  v10 = v9[1];
  v11 = malloc_type_malloc(v10 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v11);
  v12 = v11 + 3;
  atomic_store(0, v11);
  v11[1] = v10 + 1;
  v11[2] = v10 + 2;
  memcpy(v11 + 3, v9 + 3, v10);
  *(v12 + v10) = 41;
  *(v12 + v10 + 1) = 0;
  *a2 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    free(v9);
  }

  if (v15 && atomic_fetch_add(v15 - 3, 0xFFFFFFFF) == 1)
  {
    *v15 = 0;
    if (v15)
    {
      v13 = v15 - 12;
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
  {
    *v16 = 0;
    if (v16)
    {
      v14 = v16 - 12;
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }
}

void sub_25FF8C77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void LiMaskDrawer::dump(LiMaskDrawer *this, const char **a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  v6 = MEMORY[0x277D82670];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "mask[", 5);
  v8 = MEMORY[0x2666E9B50](v7, *(this + 17));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]\n", 2);
  v9 = *a2;
  if (v9)
  {
    v10 = *(v9 - 2);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + 4;
  v12 = malloc_type_malloc(v10 + 17, 0x10000403E1C8BA9uLL);
  v12[1] = v11;
  v12[2] = v10 + 5;
  atomic_store(1u, v12);
  v13 = v12 + 3;
  atomic_store(0, v12);
  memcpy(v12 + 3, v9, v10);
  *(v13 + v10) = 544022560;
  *(v13 + v11) = 0;
  v15 = (v12 + 3);
  atomic_fetch_add(v12, 1u);
  (*(**(this + 6) + 96))(*(this + 6), &v15);
  if (v15 && atomic_fetch_add(v15 - 3, 0xFFFFFFFF) == 1)
  {
    *v15 = 0;
    if (v15)
    {
      v14 = v15 - 3;
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }
}

void sub_25FF8C9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    LiGeode::print(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

HGNode *LiMaskDrawer::getMask@<X0>(LiMaskDrawer *this@<X0>, HGRenderer *a2@<X1>, HGNode **a3@<X8>)
{
  result = *(this + 10);
  if (!result)
  {
    v6 = *(this + 17);
    if (v6)
    {
      PCColorDescription::PCColorDescription(&v19._pcColorDesc);
      v19._isPremultiplied = 1;
      v8 = LiMultiBlender::LiMultiBlender(v17, 1.0, &v19);
      v18 = a2;
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          if (i >= *(this + 17))
          {
            PCArray_base::badIndex(v8);
          }

          (*(**(*(this + 9) + 8 * i) + 168))(&v16);
          v14.var0 = 0;
          PCSharedCount::PCSharedCount(&v15);
          LiMultiBlender::add(v17, &v16, 0, 0, 0, &v14, 1.0);
          PCSharedCount::~PCSharedCount(&v15);
          v8 = v16;
          if (v16)
          {
            v8 = (*(*v16 + 24))(v16);
          }
        }
      }

      LiMultiBlender::getOutput(v17, &v16, v9);
      v11 = *(this + 10);
      v12 = v16;
      if (v11 == v16)
      {
        if (v11)
        {
          (*(*v16 + 24))(v16);
        }
      }

      else
      {
        if (v11)
        {
          (*(*v11 + 24))(v11);
          v12 = v16;
        }

        *(this + 10) = v12;
      }

      LiMultiBlender::~LiMultiBlender(v17);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v19._pcColorDesc._colorSpaceRef._obj);
      goto LABEL_22;
    }

    v13 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v13);
    result = *(this + 10);
    if (result == v13)
    {
      if (v13)
      {
        (*(*v13 + 24))(v13);
LABEL_22:
        result = *(this + 10);
      }
    }

    else
    {
      if (result)
      {
        (*(*result + 24))(result);
      }

      *(this + 10) = v13;
      result = v13;
    }

    *a3 = result;
    if (!result)
    {
      return result;
    }

    return (*(*result + 16))(result, a2);
  }

  *a3 = result;
  return (*(*result + 16))(result, a2);
}

void sub_25FF8CCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::UniformProgram::addVariable(uint64_t a1, const PCSharedCount *a2, uint64_t *a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  v19[0] = var0;
  v7 = *(a4 + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = a4 + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= var0;
    v11 = v9 < var0;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != a4 + 8 && var0 >= *(v8 + 32))
  {
    return *(v8 + 40);
  }

LABEL_9:
  v13 = *a3;
  v12 = a3[1];
  v19[1] = v19;
  v14 = 0x4EC4EC4EC4EC4EC5 * ((v12 - v13) >> 3);
  *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a4, v19) + 10) = v14;
  std::vector<ProShade::UniformProgram::CompileNode>::resize(a3, ((v14 << 32) + 0x100000000) >> 32);
  ProShade::VarT<ProShade::Node>::operator=(*a3 + 104 * v14, a2);
  v17[1] = 0;
  v18 = 0;
  ProShade::VarT<ProShade::Node>::inputs(a2);
  v17[0] = &unk_28725EA68;
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(v17, 0, 0);
  v15 = v14;
  if (v18)
  {
    MEMORY[0x2666E9ED0](v18, 0x1000C8077774924);
  }

  return v15;
}

void sub_25FF8D020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ProShade::UniformProgram::CompileNode>::resize(void *a1, unint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<ProShade::UniformProgram::CompileNode>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<ProShade::UniformProgram::CompileNode>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 104 * a2));
  }
}

void ProShade::UniformProgram::addRegister(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 96) & 0x80000000) != 0)
  {
    v6 = *(a2 + 72);
    v7 = *(a2 + 80);
    while (v6 != v7)
    {
      v8 = *v6++;
      ProShade::UniformProgram::addRegister(a1, *a3 + 104 * v8, a3);
    }

    v9 = -286331153 * ((*(a1 + 8) - *a1) >> 3);
    v15 = v9;
    v23 = 0;
    v21 = 0u;
    *__p = 0u;
    v19 = 0u;
    *v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    ProShade::UniformProgram::Register::Register(&v16);
    std::vector<ProShade::UniformProgram::Register>::push_back[abi:ne200100](a1, &v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v20[1])
    {
      *&v21 = v20[1];
      operator delete(v20[1]);
    }

    *&v18 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v19 + 1);
    *&v16 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v17 + 1);
    v10 = *(a1 + 8);
    *(a2 + 96) = v9;
    v14 = *(a2 + 16);
    *&v16 = &v14;
    *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a1 + 24, &v14) + 10) = v9;
    ProShade::VarT<ProShade::Node>::operator=(v10 - 120, a2);
    ProShade::VarT<ProShade::Node>::operator=(v10 - 88, (a2 + 32));
    v11 = *(a2 + 64);
    *(v10 - 56) = v9;
    *(v10 - 52) = v11;
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    if (v12 != v13)
    {
      do
      {
        LODWORD(v16) = *(*a3 + 104 * *v12 + 96);
        std::vector<int>::push_back[abi:ne200100]((v10 - 48), &v16);
        std::vector<int>::push_back[abi:ne200100]((*a1 + 120 * v16 + 96), &v15);
        ++v12;
      }

      while (v12 != v13);
      v11 = *(v10 - 52);
    }

    if ((v11 & 0x80000000) == 0)
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 48), &v15);
    }
  }
}

void sub_25FF8D2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProShade::UniformProgram::Register::~Register(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ProShade::UniformProgram::Register>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ProShade::UniformProgram::Register>::__emplace_back_slow_path<ProShade::UniformProgram::Register>(a1, a2);
  }

  else
  {
    std::vector<ProShade::UniformProgram::Register>::__construct_one_at_end[abi:ne200100]<ProShade::UniformProgram::Register>(a1, a2);
    result = v3 + 120;
  }

  *(a1 + 8) = result;
  return result;
}

void *ProShade::UniformProgram::UniformProgram(void *this)
{
  *this = 0;
  this[1] = 0;
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  this[2] = 0;
  this[3] = this + 4;
  this[7] = 0;
  this[8] = 0;
  return this;
}

void ProShade::UniformProgram::initialize(PCArray_base *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v12 = *(a2 + 12);
  if (v12)
  {
    v3 = 0;
    for (i = 0; i != v12; ++i)
    {
      if (i < 0 || *(a2 + 12) <= i)
      {
        PCArray_base::badIndex(a1);
      }

      v5 = *(a2 + 16) + 72 * SHIDWORD(v3);
      v25 = &unk_28725E328;
      v26 = *(v5 + 8);
      v27 = *(v5 + 16);
      PCSharedCount::PCSharedCount(&v28, (v5 + 24));
      v29.var0 = &unk_28725E328;
      v30 = *(v5 + 40);
      v31 = *(v5 + 48);
      PCSharedCount::PCSharedCount(&v32, (v5 + 56));
      v33 = *(v5 + 64);
      v21.var0 = &unk_28725E328;
      v22 = v26;
      v23 = v27;
      PCSharedCount::PCSharedCount(&v24, &v28);
      if (!v23)
      {
        throw_PCNullPointerException(1);
      }

      if (!v31)
      {
        throw_PCNullPointerException(1);
      }

      if (*(v23 + 24) != *(v31 + 24))
      {
        v7 = ProShade::VarT<ProShade::Node>::width(&v29, v6);
        if (!v31)
        {
          throw_PCNullPointerException(1);
        }

        ProShade::cast(&v25, v7, *(v31 + 24), v19);
        ProShade::VarT<ProShade::Node>::operator=(&v21, v19);
        v19[0].var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(&v20);
      }

      v8 = ProShade::UniformProgram::addVariable(a1, &v21, &v16, &v14);
      if (0x4EC4EC4EC4EC4EC5 * ((v17 - v16) >> 3) <= v8)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v16 + 104 * v8;
      ProShade::VarT<ProShade::Node>::operator=(v9 + 32, &v29);
      *(v9 + 64) = v33;
      v21.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v24);
      v29.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v32);
      v25 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v28);
      v3 += 0x100000000;
    }

    v10 = v16;
    v11 = v17;
    while (v10 != v11)
    {
      ProShade::UniformProgram::addRegister(a1, v10, &v16);
      v10 += 104;
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v14, v15[0]);
  v25 = &v16;
  std::vector<ProShade::UniformProgram::CompileNode>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_25FF8D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, PCSharedCount a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount a26)
{
  a18 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a21);
  PCSharedCount::~PCSharedCount(v26 + 3);
  ProShade::UniformVariable::~UniformVariable(&a26);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a12, a13);
  a26.var0 = &a15;
  std::vector<ProShade::UniformProgram::CompileNode>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UniformWorkspace::UniformWorkspace(uint64_t this, const PCString *a2)
{
  v2 = this;
  *(this + 8) = 0u;
  v3 = (this + 8);
  *this = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  var0 = a2->var0;
  if (a2->var0 != a2[1].var0)
  {
    v6 = *(this + 16);
    v5 = *(this + 24);
    if (v6 >= v5)
    {
      v8 = (v6 - *v3) >> 1;
      if (v8 <= -2)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v9 = v5 - *v3;
      if (v9 <= v8 + 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v9;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformWorkspace::RegisterState>>(v3, v11);
      }

      *(2 * v8) = 0;
      v7 = 2 * v8 + 2;
      v12 = *(this + 8);
      v13 = *(this + 16) - v12;
      v14 = (2 * v8 - v13);
      memcpy(v14, v12, v13);
      v15 = v2[1];
      v2[1] = v14;
      v2[2] = v7;
      v2[3] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v6 = 0;
      v7 = (v6 + 1);
    }

    v2[2] = v7;
    ProShade::VarT<ProShade::Node>::bytes(var0, a2);
    operator new[]();
  }

  return this;
}

void sub_25FF8D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<char>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<char>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

ProShade::UniformWorkspace *ProShade::UniformWorkspace::dirty(ProShade::UniformWorkspace *this, const ProShade::UniformProgram::Register *a2)
{
  v2 = (*(this + 1) + 2 * *(a2 + 16));
  if (*v2 == 1)
  {
    *v2 = 0;
    v3 = *(a2 + 12);
    v4 = *(a2 + 13);
    if (v3 != v4)
    {
      v5 = this;
      do
      {
        v6 = *v3;
        v7 = **v5;
        if (0xEEEEEEEEEEEEEEEFLL * ((*(*v5 + 8) - v7) >> 3) <= v6)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        this = ProShade::UniformWorkspace::dirty(v5, (v7 + 120 * v6));
        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

void **ProShade::UniformWorkspace::setUniform(void **this, int a2)
{
  v33.var9 = *MEMORY[0x277D85DE8];
  v2 = **this + 120 * a2;
  v3 = *(v2 + 68);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = this;
    PCSharedCount::PCSharedCount(&v33);
    v6 = *(v2 + 64);
    v7 = v4[1];
    v8 = v4[4][2 * v6];
    *(v7 + 2 * v6 + 1) = 0;
    v9 = *(v2 + 16);
    if (!v9)
    {
      throw_PCNullPointerException(1);
    }

    v10 = *(v9 + 24);
    if (v10 <= 1)
    {
      if (v10 != 1)
      {
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          PCException::PCException(exception);
          *exception = &unk_2872DE188;
        }

        return OZChannelBase::setRangeName(&v33, v5);
      }

      v15 = *(v9 + 28);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          glUniform3i(v3, *v8, v8[1], v8[2]);
          return OZChannelBase::setRangeName(&v33, v5);
        }

        if (v15 == 4)
        {
          glUniform4i(v3, *v8, v8[1], v8[2], v8[3]);
          return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      else
      {
        if (v15 == 1)
        {
          glUniform1i(v3, *v8);
          return OZChannelBase::setRangeName(&v33, v5);
        }

        if (v15 == 2)
        {
          glUniform2i(v3, *v8, v8[1]);
          return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      v30 = __cxa_allocate_exception(0x40uLL);
      PCException::PCException(v30);
      *v30 = &unk_2872DE188;
    }

    if (v10 == 2)
    {
      v16 = *(v9 + 28);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          glUniform3i(v3, *v8, *(v8 + 1), *(v8 + 2));
          return OZChannelBase::setRangeName(&v33, v5);
        }

        if (v16 == 4)
        {
          glUniform4i(v3, *v8, *(v8 + 1), *(v8 + 2), *(v8 + 3));
          return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      else
      {
        if (v16 == 1)
        {
          glUniform1i(v3, *v8);
          return OZChannelBase::setRangeName(&v33, v5);
        }

        if (v16 == 2)
        {
          glUniform2i(v3, *v8, *(v8 + 1));
          return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      v31 = __cxa_allocate_exception(0x40uLL);
      PCException::PCException(v31);
      *v31 = &unk_2872DE188;
    }

    if (v10 == 3)
    {
      v11 = *(v9 + 28);
      if (v11 > 3)
      {
        switch(v11)
        {
          case 4:
            v26 = *v8;
            v27 = *(v8 + 1);
            v28 = *(v8 + 2);
            v29 = *(v8 + 3);
            glUniform4f(v3, v26, v27, v28, v29);
            return OZChannelBase::setRangeName(&v33, v5);
          case 6:
            for (i = 0; i != 9; ++i)
            {
              v24 = *&v8[8 * i];
              *(&v33.var1 + i) = v24;
            }

            glUniformMatrix3fv(v3, 1, 1u, &v33.var1);
            return OZChannelBase::setRangeName(&v33, v5);
          case 7:
            for (j = 0; j != 64; j += 16)
            {
              v20 = *v8;
              v19 = *(v8 + 1);
              v8 += 32;
              *(&v33.var1 + j) = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v19);
            }

            glUniformMatrix4fv(v3, 1, 1u, &v33.var1);
            return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      else
      {
        switch(v11)
        {
          case 1:
            v25 = *v8;
            glUniform1f(v3, v25);
            return OZChannelBase::setRangeName(&v33, v5);
          case 2:
            v21 = *v8;
            v22 = *(v8 + 1);
            glUniform2f(v3, v21, v22);
            return OZChannelBase::setRangeName(&v33, v5);
          case 3:
            v12 = *v8;
            v13 = *(v8 + 1);
            v14 = *(v8 + 2);
            glUniform3f(v3, v12, v13, v14);
            return OZChannelBase::setRangeName(&v33, v5);
        }
      }

      v32 = __cxa_allocate_exception(0x40uLL);
      PCException::PCException(v32);
      *v32 = &unk_2872DE188;
    }

    return OZChannelBase::setRangeName(&v33, v5);
  }

  return this;
}

void sub_25FF8DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  OZChannelBase::setRangeName(&a9, v11);
  _Unwind_Resume(a1);
}

void *ProShade::UniformWorkspace::getValue(ProShade::UniformWorkspace *this, const ProShade::UniformProgram::Register *a2, ProShade::Value *a3)
{
  v4 = *(*(this + 4) + 16 * *(a2 + 16));
  v5 = *(a2 + 2);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  v6 = *(v5 + 24);
  v7 = *(v5 + 28);

  return ProShade::Value::set(a3, v6, v7, v4);
}

uint64_t ProShade::UniformWorkspace::computeRegister(uint64_t **this, const ProShade::UniformProgram::Register *a2)
{
  v23[16] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v17 = this[1];
  __dst = this[4][2 * v3];
  v20 = 0;
  v21 = 0;
  v19 = &unk_287262D08;
  v4 = *(a2 + 10) - *(a2 + 9);
  if ((v4 >> 2) >= 1)
  {
    v6 = 0;
    v7 = (v4 >> 2) & 0x7FFFFFFF;
    do
    {
      v8 = *(*(a2 + 9) + 4 * v6);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = **this;
        if (v20 <= SHIDWORD(v20))
        {
          v10 = 2 * (HIDWORD(v20) + 1) + 1;
        }

        else
        {
          v10 = v20;
        }

        PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(&v19, HIDWORD(v20) + 1, v10);
        ProShade::UniformWorkspace::getValue(this, (v9 + 120 * v8), (v21 + 144 * SHIDWORD(v20) - 144));
      }

      ++v6;
    }

    while (v7 != v6);
  }

  ProShade::Value::Value(v22);
  v11 = *(a2 + 2);
  if (!v11)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v11 + 112))(v11, &v19, v22);
  Size = ProShade::shapeGetSize(v22[1], v12);
  v14 = *(a2 + 2);
  if (!v14)
  {
    throw_PCNullPointerException(1);
  }

  ProShade::copyData(v22[0], v23, *(v14 + 24), __dst, Size);
  *(v17 + v3) = 257;
  v19 = &unk_287262D08;
  if (v20 < 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v20;
  }

  PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(&v19, 0, v15);
  result = v21;
  if (v21)
  {
    return MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF8E150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::UniformWorkspace::computeAllOutputs(uint64_t this)
{
  v1 = 0xEEEEEEEEEEEEEEEFLL * ((*(*this + 8) - **this) >> 3);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = v1 & 0x7FFFFFFF;
    do
    {
      v5 = (**v2 + v3);
      if ((*(*(v2 + 8) + 2 * v5[16]) & 1) == 0)
      {
        this = ProShade::UniformWorkspace::computeRegister(v2, v5);
      }

      v3 += 120;
      --v4;
    }

    while (v4);
  }

  return this;
}

void **ProShade::UniformWorkspace::sendChangedUniforms(void **this)
{
  v1 = (*this)[6];
  v2 = (*this)[7];
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      if (*(*(v3 + 8) + 2 * *(**v3 + 120 * *v1 + 64) + 1) == 1)
      {
        this = ProShade::UniformWorkspace::setUniform(v3, *v1);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t **ProShade::UniformWorkspace::set(uint64_t **this, const ProShade::UniformNode *a2, int a3, const char *__s2)
{
  v4 = (*this)[4];
  if (v4)
  {
    v6 = this;
    v7 = (*this + 4);
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != *this + 4 && *(v7 + 32) <= a2)
    {
      v11 = *(v7 + 40);
      v12 = **this;
      if (0xEEEEEEEEEEEEEEEFLL * (((*this)[1] - v12) >> 3) <= v11)
      {
        goto LABEL_15;
      }

      v13 = v12 + 120 * v11;
      v14 = *(v13 + 64);
      *(this[1] + v14) = 257;
      v15 = this[4][2 * v14];
      v16 = a3;
      this = memcmp(v15, __s2, a3);
      if (this)
      {
        this = memcpy(v15, __s2, v16);
        v17 = *(v13 + 96);
        v18 = *(v13 + 104);
        if (v17 != v18)
        {
          while (1)
          {
            v19 = *v17;
            v20 = **v6;
            if (0xEEEEEEEEEEEEEEEFLL * ((*(*v6 + 8) - v20) >> 3) <= v19)
            {
              break;
            }

            this = ProShade::UniformWorkspace::dirty(v6, (v20 + 120 * v19));
            if (++v17 == v18)
            {
              return this;
            }
          }

LABEL_15:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }
      }
    }
  }

  return this;
}

uint64_t ProShade::UniformData::getCurrentContextUniformData(ProShade::UniformData *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire) & 1) == 0)
  {
    ProShade::UniformData::getCurrentContextUniformData();
  }

  v2 = 0;
  return *LiPerContext<ProShade::UniformData *,LiPerContextObject_Traits<ProShade::UniformData>,LiOpenGLContextGetter>::get(&qword_280C5E8F0, &v2);
}

uint64_t LiPerContextObject<ProShade::UniformData>::~LiPerContextObject(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      LiPerContextObject_Traits<ProShade::UniformData>::destroy(v3[6]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  PCSpinLock::~PCSpinLock((a1 + 24));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t **ProShade::UniformData::setWorkspaceGlobals(uint64_t **this, PCString *a2)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v5 = v3[4];
      AllocSize = ProShade::Value::getAllocSize((v3 + 5), a2);
      this = ProShade::UniformWorkspace::set(a2, v5, AllocSize, v3 + 56);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v2);
  }

  return this;
}

ProShade::UniformProgram::Register *ProShade::UniformProgram::Register::Register(ProShade::UniformProgram::Register *this)
{
  *this = &unk_28725E328;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 4) = &unk_28725E328;
  *(this + 6) = 0;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 8) = -1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return this;
}

void sub_25FF8E5B8(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::UniformProgram::Register::~Register(PCSharedCount *this)
{
  var0 = this[12].var0;
  if (var0)
  {
    this[13].var0 = var0;
    operator delete(var0);
  }

  v3 = this[9].var0;
  if (v3)
  {
    this[10].var0 = v3;
    operator delete(v3);
  }

  this[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 7);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

void ProShade::UniformVariable::~UniformVariable(PCSharedCount *this)
{
  this[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 7);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

uint64_t ProShade::VarT<ProShade::Node>::bytes(uint64_t a1, const PCString *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  Size = ProShade::shapeGetSize(*(v2 + 28), a2);
  return ProShade::typeGetSize(*(v2 + 24), v4) * Size;
}

uint64_t LiPerContextObject_Traits<ProShade::UniformData>::destroy(uint64_t result)
{
  if (result)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(result, *(result + 8));

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void std::vector<ProShade::UniformProgram::CompileNode>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v5) >> 3) >= a2)
  {

    std::vector<ProShade::UniformProgram::CompileNode>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x276276276276276)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v8;
    }

    v20 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformProgram::CompileNode>>(a1, v9);
    }

    v10 = 104 * v6;
    v17 = 0;
    v18 = v10;
    v19 = v10;
    v11 = 104 * a2;
    v12 = v10 + 104 * a2;
    do
    {
      _ZNSt3__116allocator_traitsINS_9allocatorIN8ProShade14UniformProgram11CompileNodeEEEE9constructB8ne200100IS4_JELi0EEEvRS5_PT_DpOT0_(v20, v10);
      v10 += 104;
      v11 -= 104;
    }

    while (v11);
    *&v19 = v12;
    v13 = *(a1 + 8);
    v14 = v18 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    std::__split_buffer<ProShade::UniformProgram::CompileNode>::~__split_buffer(&v17);
  }
}

void sub_25FF8E8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ProShade::UniformProgram::CompileNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ProShade::UniformProgram::CompileNode>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v3 + 104 * a2;
    v5 = 104 * a2;
    do
    {
      _ZNSt3__116allocator_traitsINS_9allocatorIN8ProShade14UniformProgram11CompileNodeEEEE9constructB8ne200100IS4_JELi0EEEvRS5_PT_DpOT0_(a1, v3);
      v3 += 104;
      v5 -= 104;
    }

    while (v5);
    v3 = v4;
  }

  *(a1 + 8) = v3;
}

void _ZNSt3__116allocator_traitsINS_9allocatorIN8ProShade14UniformProgram11CompileNodeEEEE9constructB8ne200100IS4_JELi0EEEvRS5_PT_DpOT0_(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0u;
  v3 = (a2 + 56);
  *(a2 + 24) = 0u;
  *a2 = &unk_28725E328;
  PCSharedCount::PCSharedCount((a2 + 24));
  *(a2 + 32) = &unk_28725E328;
  *(a2 + 48) = 0;
  PCSharedCount::PCSharedCount(v3);
  *(a2 + 64) = -1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = -1;
}

void sub_25FF8EA24(_Unwind_Exception *a1)
{
  *v1 = v3;
  PCSharedCount::~PCSharedCount(v2);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformProgram::CompileNode>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>(uint64_t a1, PCSharedCount *a2, PCSharedCount *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      *v4 = &unk_28725E328;
      *(v4 + 8) = v8[1].var0;
      *(v4 + 16) = v8[2];
      PCSharedCount::PCSharedCount((v4 + 24), v8 + 3);
      *(v4 + 32) = &unk_28725E328;
      *(v4 + 40) = v8[5].var0;
      *(v4 + 48) = v8[6];
      PCSharedCount::PCSharedCount((v4 + 56), v8 + 7);
      var0 = v8[8].var0;
      *(v4 + 72) = 0;
      *(v4 + 64) = var0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 72, v8[9].var0, v8[10].var0, (v8[10].var0 - v8[9].var0) >> 2);
      *(v4 + 96) = v8[12].var0;
      v8 += 13;
      v4 = v14 + 104;
      v14 += 104;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ProShade::UniformProgram::CompileNode>>::destroy[abi:ne200100]<ProShade::UniformProgram::CompileNode,0>(a1, v6);
      v6 += 13;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator_traits<std::allocator<ProShade::UniformProgram::CompileNode>>::destroy[abi:ne200100]<ProShade::UniformProgram::CompileNode,0>(uint64_t a1, PCSharedCount *a2)
{
  var0 = a2[9].var0;
  if (var0)
  {
    a2[10].var0 = var0;
    operator delete(var0);
  }

  a2[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(a2 + 7);
  a2->var0 = &unk_28725E328;

  PCSharedCount::~PCSharedCount(a2 + 3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::CompileNode>,ProShade::UniformProgram::CompileNode*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 13;
      std::allocator_traits<std::allocator<ProShade::UniformProgram::CompileNode>>::destroy[abi:ne200100]<ProShade::UniformProgram::CompileNode,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ProShade::UniformProgram::CompileNode>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ProShade::UniformProgram::CompileNode>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ProShade::UniformProgram::CompileNode>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<ProShade::UniformProgram::CompileNode>>::destroy[abi:ne200100]<ProShade::UniformProgram::CompileNode,0>(v5, (v4 - 104));
  }
}

void std::vector<ProShade::UniformProgram::CompileNode>::__base_destruct_at_end[abi:ne200100](uint64_t a1, PCSharedCount *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ProShade::UniformProgram::CompileNode>>::destroy[abi:ne200100]<ProShade::UniformProgram::CompileNode,0>(a1, i))
  {
    i -= 13;
  }

  *(a1 + 8) = a2;
}

__n128 std::vector<ProShade::UniformProgram::Register>::__construct_one_at_end[abi:ne200100]<ProShade::UniformProgram::Register>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = &unk_28725E328;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  PCSharedCount::PCSharedCount((v4 + 24), (a2 + 24));
  *(v4 + 32) = &unk_28725E328;
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  PCSharedCount::PCSharedCount((v4 + 56), (a2 + 56));
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = *(a2 + 72);
  *(v4 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  result = *(a2 + 96);
  *(v4 + 96) = result;
  *(v4 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 8) = v4 + 120;
  return result;
}

void sub_25FF8EF08(_Unwind_Exception *a1)
{
  v3->var0 = v2;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<ProShade::UniformProgram::Register>::__emplace_back_slow_path<ProShade::UniformProgram::Register>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformProgram::Register>>(a1, v6);
  }

  v7 = 120 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 120 * v2;
  *v7 = &unk_28725E328;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  PCSharedCount::PCSharedCount((120 * v2 + 24), (a2 + 24));
  *(v7 + 32) = &unk_28725E328;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  PCSharedCount::PCSharedCount((120 * v2 + 56), (a2 + 56));
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *&v16 = v16 + 120;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ProShade::UniformProgram::Register>::~__split_buffer(&v14);
  return v13;
}

void sub_25FF8F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5->var0 = v4;
  PCSharedCount::~PCSharedCount(v5 + 3);
  std::__split_buffer<ProShade::UniformProgram::Register>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformProgram::Register>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>(uint64_t a1, PCSharedCount *a2, ProShade::UniformProgram::Register *a3, ProShade::UniformProgram::Register *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      ProShade::UniformProgram::Register::Register(this, v7);
      v7 = (v7 + 120);
      this = (v12 + 120);
      v12 = (v12 + 120);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ProShade::UniformProgram::Register>>::destroy[abi:ne200100]<ProShade::UniformProgram::Register,0>(a1, v5);
      v5 += 15;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

ProShade::UniformProgram::Register *ProShade::UniformProgram::Register::Register(ProShade::UniformProgram::Register *this, const ProShade::UniformProgram::Register *a2)
{
  *this = &unk_28725E328;
  *(this + 8) = *(a2 + 8);
  *(this + 2) = *(a2 + 2);
  PCSharedCount::PCSharedCount(this + 3, a2 + 3);
  *(this + 4) = &unk_28725E328;
  *(this + 40) = *(a2 + 40);
  *(this + 6) = *(a2 + 6);
  PCSharedCount::PCSharedCount(this + 7, a2 + 7);
  v4 = *(a2 + 8);
  *(this + 9) = 0;
  *(this + 8) = v4;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  return this;
}

void sub_25FF8F33C(_Unwind_Exception *a1)
{
  v7 = *v4;
  if (*v4)
  {
    v1[10].var0 = v7;
    operator delete(v7);
  }

  *v5 = v3;
  PCSharedCount::~PCSharedCount(v1 + 7);
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ProShade::UniformProgram::Register>>::destroy[abi:ne200100]<ProShade::UniformProgram::Register,0>(uint64_t a1, PCSharedCount *a2)
{
  var0 = a2[12].var0;
  if (var0)
  {
    a2[13].var0 = var0;
    operator delete(var0);
  }

  v4 = a2[9].var0;
  if (v4)
  {
    a2[10].var0 = v4;
    operator delete(v4);
  }

  a2[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(a2 + 7);
  a2->var0 = &unk_28725E328;

  PCSharedCount::~PCSharedCount(a2 + 3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ProShade::UniformProgram::Register>,ProShade::UniformProgram::Register*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 15;
      std::allocator_traits<std::allocator<ProShade::UniformProgram::Register>>::destroy[abi:ne200100]<ProShade::UniformProgram::Register,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ProShade::UniformProgram::Register>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ProShade::UniformProgram::Register>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ProShade::UniformProgram::Register>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<ProShade::UniformProgram::Register>>::destroy[abi:ne200100]<ProShade::UniformProgram::Register,0>(v5, (v4 - 120));
  }
}

void std::vector<ProShade::UniformProgram::CompileNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ProShade::UniformProgram::CompileNode>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProShade::UniformWorkspace::RegisterState>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25FF8F624(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x2666E9F00](v1, 0x1000C4077774924);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<char *,std::shared_ptr<char>::__shared_ptr_default_delete<char,char>,std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<char>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262D08;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287262D08;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void *PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(void *result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "PCArray::resize");
    PCException::PCException(exception, &v15);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 2))
  {
    v6 = *(result + 3);
    if (a2 > v6)
    {
      v7 = 144 * v6;
      v8 = a2 - v6;
      do
      {
        result = ProShade::Value::Value((v5[2] + v7));
        v7 += 144;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v9 = *(result + 3);
    if (a2 >= v9)
    {
      v10 = *(result + 3);
    }

    else
    {
      v10 = a2;
    }

    if (v10 < 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        ProShade::Value::Value(v11, (v5[2] + v11));
        v11 += 144;
      }

      while (144 * v10 != v11);
      v9 = *(v5 + 3);
    }

    if (v10 > v9)
    {
      v9 = v10;
    }

    if (v9 < a2)
    {
      v12 = 144 * v9;
      v13 = a2 - v9;
      do
      {
        v12 = (ProShade::Value::Value(v12) + 18);
        --v13;
      }

      while (v13);
    }

    result = v5[2];
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    v5[2] = 0;
  }

  *(v5 + 2) = v3;
  *(v5 + 3) = a2;
  return result;
}

uint64_t LiPerContext<ProShade::UniformData *,LiPerContextObject_Traits<ProShade::UniformData>,LiOpenGLContextGetter>::get(os_unfair_lock_s *a1, _BYTE *a2)
{
  v4 = a1 + 6;
  v9[2] = &a1[6];
  PCSpinLock::lock(a1 + 6);
  v9[1] = 0;
  v9[0] = LiGLState::getCurrentContext(v5);
  v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(a1, v9);
  if (&a1[2] == v6)
  {
    *a2 = 1;
    v9[4] = v9;
    std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(a1, v9);
    operator new();
  }

  *a2 = 0;
  v7 = v6 + 48;
  PCSpinLock::unlock(v4);
  return v7;
}

void sub_25FF8FB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProShade::UniformData::getCurrentContextUniformData()
{
  if (__cxa_guard_acquire(&_MergedGlobals_35))
  {
    qword_280C5E900 = 0;
    qword_280C5E8F8 = 0;
    qword_280C5E8F0 = &qword_280C5E8F8;
    dword_280C5E908 = 0;
    __cxa_atexit(LiPerContextObject<ProShade::UniformData>::~LiPerContextObject, &qword_280C5E8F0, &dword_25F8F0000);

    __cxa_guard_release(&_MergedGlobals_35);
  }
}

void LiMaterialProperties::LiMaterialProperties(LiMaterialProperties *this)
{
  PCWorkingColorVector::PCWorkingColorVector(this);
  *(v2 + 16) = 0;
  PCWorkingColorVector::PCWorkingColorVector((v2 + 24));
  *(this + 5) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 48));
  PCWorkingColorVector::PCWorkingColorVector((this + 64));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 96) = 1;
  *(this + 97) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 7) = _Q0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 9) = _Q0;
  LiPolygon::LiPolygon((this + 160));
  *(this + 49) = 0x3FF0000000000000;
  *(this + 44) = 0x3FF0000000000000;
  *(this + 39) = 0x3FF0000000000000;
  *(this + 33) = 0;
  *(this + 34) = 0x3FF0000000000000;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
}

double *LiMaterialProperties::getZExtent@<X0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v5 = 0;
  v14[12] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a2[2];
  v8 = v6 + a2[3];
  v14[0] = *a2;
  v14[1] = v8;
  v14[2] = 0.0;
  v14[3] = v14[0] + v7;
  v14[4] = v8;
  v14[5] = 0.0;
  v14[6] = v14[0];
  v14[7] = v6;
  v14[8] = 0.0;
  v14[9] = v14[0] + v7;
  v14[10] = v6;
  v14[11] = 0.0;
  v9 = 1.79769313e308;
  v10 = 2.22507386e-308;
  do
  {
    result = PCMatrix44Tmpl<double>::transform<double>(a1, &v14[v5], &v14[v5]);
    v11 = &v14[v5];
    v13 = -v14[v5 + 2];
    if (v9 > v13)
    {
      v9 = -v11[2];
    }

    if (v10 < v13)
    {
      v10 = -v11[2];
    }

    v5 += 3;
  }

  while (v5 != 12);
  *a3 = v9;
  a3[1] = v10;
  return result;
}

double LiEdgeTexture::erfc_filter(LiEdgeTexture *this, double a2, double a3)
{
  v5 = a3 * 0.5;
  v6 = erfc(a3 * 0.5 * 1.5);
  v7 = a2 - v5;
  v8 = 1.0;
  if (a2 - v5 > -(a3 * 0.5))
  {
    v8 = 0.0;
    if (v7 < v5)
    {
      return (erfc(v7 * 1.5) * 0.5 - v6 * 0.5) / (1.0 - (v6 * 0.5 + v6 * 0.5));
    }
  }

  return v8;
}

long double LiEdgeTexture::smoothStep(LiEdgeTexture *this, double a2, double a3)
{
  result = 1.0;
  if (a2 >= 0.0)
  {
    result = 0.0;
    if (a2 <= 2.0)
    {
      v5 = (2.0 - a2) * 0.5;
      v6 = (pow(v5, 1.5) - v5) * ((1.0 - v5) * 0.5 + -0.5 + 1.0);
      return (v5 * 0.5 + -0.5 + 1.0) * (1.0 - pow(1.0 - v5, 1.5) - v5) + v5 + v6;
    }
  }

  return result;
}

double LiEdgeTexture::eval(LiEdgeTexture *a1, double a2, double a3)
{
  result = 1.0;
  if (a2 <= 0.0)
  {
    return result;
  }

  if (a2 >= a3)
  {
    return 0.0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = exp(a3 * a3 * -1.5);
        return (exp(fabs(a2 * a2) * -1.5) - v5) / (1.0 - v5);
      }

      if (a1 != 2)
      {
        goto LABEL_31;
      }

      result = 0.0;
      if (a2 < 2.0)
      {
        return (cos(a2 * 3.14159265 * 0.5) + 1.0) * 0.5;
      }
    }

    else if (a2 >= 0.5)
    {
      result = 0.0;
      if (a2 <= 1.5)
      {
        return 1.5 - a2;
      }
    }
  }

  else
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {

        return LiEdgeTexture::erfc_filter(a1, a2, a3);
      }

      else
      {
        result = 0.0;
        if (a2 < 2.0)
        {
          return sin(a2 * -0.96875 * 3.14159265 * 0.25) + 1.0;
        }
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {

        return LiEdgeTexture::smoothStep(a1, a2, a3);
      }

LABEL_31:
      exception = __cxa_allocate_exception(0x40uLL);
      PCIllegalArgumentException::PCIllegalArgumentException(exception);
    }

    result = 0.0;
    if (a2 < 2.0)
    {
      v6 = 2.0 - a2;
      v7 = v6 * 0.96875 * 3.14159265 * 0.25;

      return sin(v7);
    }
  }

  return result;
}

void LiEdgeTexture::createHeliumBitmap(int a1@<W0>, LiEdgeTexture *a2@<X1>, int a3@<W2>, int32x4_t ***a4@<X8>, double a5@<D0>)
{
  if (a1)
  {
    v10 = 28;
  }

  else
  {
    v10 = 24;
  }

  v11 = HGRectMake4i(0, 0, a3, a3);
  v13 = v12;
  v14 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v14, v11, v13, v10);
  *a4 = v14;
  if (a1)
  {
    v15 = a3 - 1;
    if (a3 >= 1)
    {
      v16 = a5 / (a3 - 3);
      v17 = v14[10];
      do
      {
        v18 = LiEdgeTexture::eval(a2, v16 * (v15 - 1), a5);
        v19 = a3;
        do
        {
          v20 = v18 * LiEdgeTexture::eval(a2, v16 * (v19 - 2), a5);
          *&v20 = v20;
          *&v20 = fminf(fmaxf(*&v20, 0.0), 1.0);
          *v17++ = vdupq_lane_s32(*&v20, 0);
          v21 = __OFSUB__(v19--, 1);
        }

        while (!((v19 < 0) ^ v21 | (v19 == 0)));
      }

      while (v15-- >= 1);
    }
  }

  else
  {
  }
}

void anonymous namespace::evalBitmap<unsigned char>(char *a1, int a2, int a3, LiEdgeTexture *a4, double a5)
{
  v5 = a3 - 1;
  if (a3 >= 1)
  {
    v11 = a5 / (a3 - 3);
    v12 = a2;
    v13 = (a2 - 1) + 1;
    do
    {
      v14 = v5--;
      v15 = LiEdgeTexture::eval(a4, v11 * v5, a5);
      for (i = a3; i >= 1; --i)
      {
        v17 = LiEdgeTexture::eval(a4, v11 * (i - 2), a5);
        if (a2 >= 1)
        {
          v18 = vcvtmd_s64_f64(v15 * v17 * 255.0 + 0.5 + 0.0000001);
          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 255)
          {
            v20 = 255;
          }

          else
          {
            v20 = v19;
          }

          memset(a1, v20, v12);
          a1 += v13;
        }
      }
    }

    while (v14 >= 1);
  }
}

int32x4_t **LiEdgeTexture::createHeliumNode@<X0>(const void *a1@<X0>, LiEdgeTexture *a2@<X1>, HGBitmapLoader **a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = (*(*v5 + 128))(v5, 43);
  v8 = (*(*v6 + 128))(v6, 43);
  if (!v7)
  {
    HGGPURenderer::GetCurrentContext(v6, &v17);
    v15.var0 = v17.var0;
    LiEdgeTexture::createProGLTexture(&v15.var0);
  }

  if (v8 == 1)
  {
    LiEdgeTexture::createMetalTexture(v6, a2, 64, &v16, 2.0);
    v9 = v16;
    v10 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v10, v9);
    *a3 = v10;
    result = v16;
    if (v16)
    {
      return ((*v16)[1].i64[1])(v16);
    }
  }

  else
  {
LABEL_7:
    LiEdgeTexture::createHeliumBitmap(1, a2, 64, &v16, 2.0);
    v12 = v16;
    v13 = HGObject::operator new(0x80uLL);
    HGTexture::HGTexture(v13, *(v12 + 20), v12);
    v14 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v14, v13);
    *a3 = v14;
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    return ((*v12)[1].i64[1])(v12);
  }

  return result;
}

void sub_25FF90648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, uint64_t a12, uint64_t a13, PCSharedCount a14)
{
  HGObject::operator delete(v14);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(a1);
}

void LiEdgeTexture::createProGLTexture(PC_Sp_counted_base **a1)
{
  getLiEdgeTextureLock();
  v4 = &getLiEdgeTextureLock(void)::sLiEdgeTextureLock;
  v2 = PCMutex::lock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
  v5 = 1;
  v3.var0 = *a1;
  HGGLContext::Share();
}

void sub_25FF90B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, PCSharedCount a18, char a19, uint64_t a20, char a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v25 = *(v21 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  ProGL::GL::~GL(&a11);
  ProGL::ContextHandle::~ContextHandle(&a16);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(&a19);
  PCBitmap::~PCBitmap(&a21);
  v26 = *(v23 - 144);
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(v23 - 136);
  _Unwind_Resume(a1);
}

uint64_t LiEdgeTexture::createMetalTexture@<X0>(HGGPURenderer *a1@<X0>, LiEdgeTexture *a2@<X1>, int a3@<W2>, HGMetalTexture **a4@<X8>, double a5@<D0>)
{
  getLiEdgeTextureLock();
  v27[1] = &getLiEdgeTextureLock(void)::sLiEdgeTextureLock;
  v10 = PCMutex::lock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
  v28 = 1;
  MetalContext = HGGPURenderer::GetMetalContext(a1);
  v13 = *(PCICCTransferFunctionLUT::getLUTEnd(MetalContext) + 24);
  v14 = *(v11 + 204);
  v15 = 4;
  while (1)
  {
    v16 = v14 <= 0 ? -(-v14 & 3) : v14 & 3;
    v17 = v11 + 8 + 48 * v16;
    v18 = *v17 == a2 && *(v17 + 24) == -1;
    if (v18 && *(v17 + 40) == v13)
    {
      break;
    }

    ++v14;
    if (!--v15)
    {
      LiEdgeTexture::createHeliumBitmap(1, a2, a3, v27, a5);
      v20 = HGGPURenderer::GetMetalContext(a1);
      v21 = HGMetalContext::texturePool(v20);
      v22 = HGGPURenderer::GetMetalContext(a1);
      v23 = v27[0];
      HGMetalTexture::createWithCopy(*(*(v22 + 16) + 16), v21, v27[0], *(v27[0] + 20), *(v27[0] + 28), 0, 0, a4);
      v24 = *a4;
      if (*a4)
      {
        (*(*v24 + 16))(*a4);
      }

      PCWorkingColorVector::PCWorkingColorVector(&v30);
      v29 = v24;
      if (v24)
      {
        (*(*v24 + 16))(v24);
      }

      if (v24)
      {
        (*(*v24 + 24))(v24);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v24)
      {
        (*(*v24 + 24))(v24);
      }

      ((*v23)[1].i64[1])(v23);
      return PCMutex::unlock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
    }
  }

  *(v11 + 204) = v16;
  v25 = *(v17 + 32);
  *a4 = v25;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  return PCMutex::unlock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
}

void sub_25FF90E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (*v14)
  {
    (*(**v14 + 24))(*v14);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a10);
  _Unwind_Resume(a1);
}

void sub_25FF91068(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    HGArrayData::Release(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *setUseLiEdgeTextureNodeCache(char a1)
{
  getEdgeTextureUseFlag();
  result = PCThreadLocalValue<BOOL>::getValuePtr(&getEdgeTextureUseFlag(void)::result);
  *result = a1;
  return result;
}

void getEdgeTextureUseFlag(void)
{
  {
    byte_27FE4B9B8 = 1;
    pthread_key_create(&getEdgeTextureUseFlag(void)::result, PCThreadLocalValue<BOOL>::destroy);
  }
}

void getLiEdgeTextureLock(void)
{
  {
    PCMutex::PCMutex(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock, 1);
    getLiEdgeTextureLock(void)::sLiEdgeTextureLock._vptr$PCMutex = &unk_2871D83A0;
    __cxa_atexit(PCRecursiveMutex::~PCRecursiveMutex, &getLiEdgeTextureLock(void)::sLiEdgeTextureLock, &dword_25F8F0000);
  }
}

uint64_t anonymous namespace::EdgeTextureCache::instance(_anonymous_namespace_::EdgeTextureCache *this)
{
  {
    operator new();
  }
}

void sub_25FF912DC(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C401995F540);
  _Unwind_Resume(a1);
}

PCMutex *LiEdgeTexture::getHeliumNode@<X0>(const void *a1@<X0>, LiEdgeTexture *a2@<X1>, HGBitmapLoader **a3@<X8>)
{
  getLiEdgeTextureLock();
  PCMutex::lock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
  getEdgeTextureUseFlag();
  if (*PCThreadLocalValue<BOOL>::getValuePtr(&getEdgeTextureUseFlag(void)::result))
  {
    {
      LiEdgeTexture::getHeliumNode();
    }

    {
      LiEdgeTexture::getHeliumNode();
    }

    if ((atomic_load_explicit(qword_280C5E918, memory_order_acquire) & 1) == 0)
    {
      LiEdgeTexture::getHeliumNode();
    }

    for (i = 0; i != 4; ++i)
    {
      if (i + getLast(void)::last <= 0)
      {
        v7 = -(-(i + getLast(void)::last) & 3);
      }

      else
      {
        v7 = (i + getLast(void)::last) & 3;
      }

      v8 = _MergedGlobals_36 + 32 * v7;
      if (*(v8 + 8) == a1 && *(v8 + 20) == a2)
      {
        v9 = *(v8 + 16);
        if (v9 == (*(*a1 + 128))(a1, 43))
        {
          getLast(void)::last = v7;
          v27 = *v8;
          *a3 = *v8;
          if (v27)
          {
            (*(*v27 + 16))(v27);
          }

          goto LABEL_49;
        }
      }
    }

    LiEdgeTexture::createHeliumNode(a1, a2, a3);
    v10 = getLast(void)::last;
    v11 = -1;
    v12 = 4;
    v13 = -1;
    do
    {
      if (v10 <= 0)
      {
        v14 = -(-v10 & 3);
      }

      else
      {
        v14 = v10 & 3;
      }

      v15 = _MergedGlobals_36 + 32 * v14;
      v16 = *(v15 + 8);
      if (v16 == a1 || v16 == 0)
      {
        v18 = *(v15 + 24);
        if (v11 == -1 || v11 > v18)
        {
          v13 = v14;
          v11 = v18;
        }
      }

      ++v10;
      --v12;
    }

    while (v12);
    if (v13 != -1)
    {
      v21 = _MergedGlobals_36 + 32 * v13;
      getLast(void)::last = v13;
      *(v21 + 24) = ++getSerial(void)::serial;
      if (a1)
      {
        (*(*a1 + 16))(a1);
        v23 = (v21 + 8);
        v22 = *(v21 + 8);
        if (v22 == a1)
        {
          (*(*a1 + 24))(a1);
LABEL_43:
          *(v21 + 16) = (*(*a1 + 128))(a1, 43);
          v24 = *v21;
          v25 = *a3;
          if (*v21 != *a3)
          {
            if (v24)
            {
              (*(*v24 + 24))(*v21);
              v25 = *a3;
            }

            *v21 = v25;
            if (v25)
            {
              (*(*v25 + 16))(v25);
            }
          }

          *(v21 + 20) = a2;
          goto LABEL_49;
        }
      }

      else
      {
        v23 = (v21 + 8);
        v22 = *(v21 + 8);
        if (!v22)
        {
          goto LABEL_43;
        }
      }

      if (v22)
      {
        (*(*v22 + 24))(v22);
      }

      *v23 = a1;
      goto LABEL_43;
    }
  }

  else
  {
    LiEdgeTexture::createHeliumNode(a1, a2, a3);
  }

LABEL_49:
  result = &getLiEdgeTextureLock(void)::sLiEdgeTextureLock;
  if (&getLiEdgeTextureLock(void)::sLiEdgeTextureLock)
  {
    return PCMutex::unlock(&getLiEdgeTextureLock(void)::sLiEdgeTextureLock);
  }

  return result;
}

void getCache(void)
{
  if ((atomic_load_explicit(&qword_280C5E930, memory_order_acquire) & 1) == 0)
  {
    getCache();
  }
}

uint64_t PCThreadLocalValue<BOOL>::destroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x2666E9F00);
  }

  return result;
}

_anonymous_namespace_::EdgeTextureCache *anonymous namespace::EdgeTextureCache::EdgeTextureCache(_anonymous_namespace_::EdgeTextureCache *this)
{
  PCSingleton::PCSingleton(this, 0);
  v2 = 0;
  *v3 = &unk_287262D40;
  do
  {
    v4 = this + v2;
    *(this + v2 + 8) = 7;
    PCWorkingColorVector::PCWorkingColorVector((this + v2 + 16));
    *(v4 + 8) = -1;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    v2 += 48;
  }

  while (v2 != 192);
  *(this + 25) = 1;
  return this;
}

void sub_25FF9183C(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
    v6 = (v3 - 40);
    v7 = -v4;
    do
    {
      LiEdgeTextureCacheEntry::~LiEdgeTextureCacheEntry(v6);
      v6 = (v8 - 48);
      v7 += 48;
    }

    while (v7);
  }

  PCSingleton::~PCSingleton(v1);
  _Unwind_Resume(a1);
}

void anonymous namespace::EdgeTextureCache::~EdgeTextureCache(_anonymous_namespace_::EdgeTextureCache *this)
{
  v2 = 0;
  *this = &unk_287262D40;
  do
  {
    v3 = *(this + v2 + 184);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    v4 = *(this + v2 + 168);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v2 -= 48;
  }

  while (v2 != -192);

  PCSingleton::~PCSingleton(this);
}

{
  v2 = 0;
  *this = &unk_287262D40;
  while (1)
  {
    v3 = *(this + v2 + 184);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    v4 = *(this + v2 + 168);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v2 -= 48;
    if (v2 == -192)
    {
      PCSingleton::~PCSingleton(this);

      JUMPOUT(0x2666E9F00);
    }
  }
}

void LiEdgeTextureCacheEntry::~LiEdgeTextureCacheEntry(LiEdgeTextureCacheEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t anonymous namespace::EdgeTextureCache::setCacheEntry(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t *a5, uint64_t a6)
{
  v12 = *(a1 + 204);
  v13 = a1 + 8;
  v14 = -1;
  v15 = 4;
  v16 = -1;
  do
  {
    if (v12 <= 0)
    {
      v17 = -(-v12 & 3);
    }

    else
    {
      v17 = v12 & 3;
    }

    if (v15 == 4 || v16 > *(v13 + 48 * v17 + 4))
    {
      v16 = *(v13 + 48 * v17 + 4);
      v14 = v17;
    }

    ++v12;
    --v15;
  }

  while (v15);
  v20 = v13 + 48 * v14;
  *(a1 + 204) = v14;
  LiEdgeTextureCacheEntry::reset(v20);
  v21 = *(a1 + 200) + 1;
  *(a1 + 200) = v21;
  *v20 = a2;
  *(v20 + 4) = v21;
  v23 = *a3;
  v22 = a3[1];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(v20 + 16);
  *(v20 + 8) = v23;
  *(v20 + 16) = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *(v20 + 24) = a4;
  v25 = *(v20 + 32);
  result = *a5;
  if (v25 != *a5)
  {
    if (v25)
    {
      (*(*v25 + 24))(*(v20 + 32));
      result = *a5;
    }

    *(v20 + 32) = result;
    if (result)
    {
      result = (*(*result + 16))(result);
    }
  }

  *(v20 + 40) = a6;
  return result;
}

uint64_t LiEdgeTextureCacheEntry::reset(LiEdgeTextureCacheEntry *this)
{
  *this = 7;
  PCWorkingColorVector::PCWorkingColorVector(&v5);
  v2 = v5;
  v5 = 0uLL;
  v3 = *(this + 2);
  *(this + 8) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }

  *(this + 6) = -1;
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(this + 4) = 0;
  *(this + 5) = -1;
  return result;
}

uint64_t HGArrayData::allocate(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    v2 = this;
    v3 = *(this + 4) * a2;
    *(this + 12) = a2;
    if (v3)
    {
      operator new[]();
    }

    this = *(this + 16);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v2 + 16) = 0;
  }

  return this;
}

void *PCThreadLocalValue<BOOL>::getValuePtr(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void LiEdgeTexture::getHeliumNode()
{
  {
  }
}

{
  {
  }
}

{
  if (__cxa_guard_acquire(qword_280C5E918))
  {
    getCache();
    _MergedGlobals_36 = &qword_280C5E938;

    __cxa_guard_release(qword_280C5E918);
  }
}

void getCache()
{
  if (__cxa_guard_acquire(&qword_280C5E930))
  {
    v0 = &qword_280C5E938;
    v1 = 128;
    do
    {
      *(v0 + 6) = 0;
      *v0 = 0;
      v0[1] = 0;
      v0 += 4;
      v1 -= 32;
    }

    while (v1);
    __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E930);
  }
}

uint64_t __cxx_global_array_dtor_0()
{
  v0 = &qword_280C5E9A0;
  v1 = -128;
  do
  {
    if (*v0)
    {
      (*(**v0 + 24))(*v0);
    }

    result = *(v0 - 1);
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    v0 -= 4;
    v1 += 32;
  }

  while (v1);
  return result;
}

void LiGroup::LiGroup(LiGroup *this, uint64_t *a2)
{
  LiSceneObject::LiSceneObject(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 71) = &unk_287263058;
  *(this + 75) = 0;
  *(this + 36) = 0u;
  *(this + 591) = 0;
  PCSharedCount::PCSharedCount(this + 76);
  *(this + 616) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 620));
  *(this + 159) = 1065353216;
  *(this + 320) = 257;
  *(this + 642) = 0;
  *(this + 322) = 257;
  *(this + 121) = 34;
}

void sub_25FF92050(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 76);
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(v3);
  LiSceneObject::~LiSceneObject(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287263058;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiGroup::LiGroup(LiGroup *this)
{
  *(this + 81) = &unk_2872DEA38;
  *(this + 82) = 0;
  *(this + 664) = 1;
  LiSceneObject::LiSceneObject(this, &off_287262ED0);
  *this = &unk_287262D80;
  *(this + 81) = &unk_287262EB0;
  *(this + 71) = &unk_287263058;
  *(this + 75) = 0;
  *(this + 36) = 0u;
  *(this + 591) = 0;
  PCSharedCount::PCSharedCount(this + 76);
  *(this + 616) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 620));
  *(this + 159) = 1065353216;
  *(this + 320) = 257;
  *(this + 642) = 0;
  *(this + 322) = 257;
  *(this + 121) = 34;
}

void sub_25FF92204(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 608));
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(v3);
  LiSceneObject::~LiSceneObject(v1, &off_287262ED0);
  *(v1 + 648) = v2;
  *(v1 + 664) = 0;
  PCWeakCount::~PCWeakCount((v1 + 656));
  _Unwind_Resume(a1);
}

void LiGroup::~LiGroup(PCSharedCount *this, PCSharedCount *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + *(var0 - 3)) = a2[5];
  PCSharedCount::~PCSharedCount(this + 76);
  this[71].var0 = &unk_287263058;
  if (SLODWORD(this[72].var0) < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = this[72].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(&this[71], 0, v5);
  v6 = this[73].var0;
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
  }

  this[73].var0 = 0;
  LODWORD(this[72].var0) = 0;

  LiSceneObject::~LiSceneObject(this, &a2[1].var0);
}

void LiGroup::~LiGroup(PCSharedCount *this)
{
  *(v1 + 648) = &unk_2872DEA38;
  *(v1 + 664) = 0;
  PCWeakCount::~PCWeakCount((v1 + 656));
}

{
  *(v1 + 648) = &unk_2872DEA38;
  *(v1 + 664) = 0;
  PCWeakCount::~PCWeakCount((v1 + 656));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiGroup::~LiGroup(LiGroup *this)
{
  *(v1 + 648) = &unk_2872DEA38;
  *(v1 + 664) = 0;
  v2 = (v1 + 656);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiGroup::~LiGroup((this + *(*this - 24)));
}

unsigned int *LiGroup::localBoundingBox(unsigned int *result, uint64_t a2)
{
  *(a2 + 16) = xmmword_2603429E0;
  *(a2 + 32) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  v20 = xmmword_2603429E0;
  v21 = xmmword_2603429E0;
  v19 = xmmword_2603429E0;
  v2 = result[145];
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      if (i >= v4[145])
      {
        PCArray_base::badIndex(result);
      }

      v6 = *(*(v4 + 73) + 16 * i);
      result = (*(*v6 + 80))(v6, &v19, v6 + 8);
      if (vmovn_s64(vcgtq_f64(*a2, vdupq_laneq_s64(*a2, 1))).u8[0] & 1) != 0 || (v7 = *(a2 + 16), (vmovn_s64(vcgtq_f64(v7, vdupq_laneq_s64(v7, 1))).u32[0]) || (v9 = *(a2 + 32), v8 = *(a2 + 40), v9 > v8))
      {
        v10 = v20;
        *a2 = v19;
        *(a2 + 16) = v10;
        *(a2 + 32) = v21;
      }

      else if ((vmovn_s64(vcgtq_f64(v19, vdupq_laneq_s64(v19, 1))).u32[0] & 1) == 0 && (vmovn_s64(vcgtq_f64(v20, vdupq_laneq_s64(v20, 1))).u32[0] & 1) == 0)
      {
        v11 = v21;
        if (*&v21 <= *(&v21 + 1))
        {
          v12.f64[0] = *a2;
          v12.f64[1] = v19.f64[1];
          v13.f64[0] = *(a2 + 16);
          v13.f64[1] = *(&v20 + 1);
          v14.f64[0] = v19.f64[0];
          v14.f64[1] = *(a2 + 8);
          *&v15.f64[0] = v20;
          v15.f64[1] = *(a2 + 24);
          v16 = vbslq_s8(vcgtq_f64(v15, v13), v7, v20);
          *a2 = vbslq_s8(vcgtq_f64(v14, v12), *a2, v19);
          *(a2 + 16) = v16;
          if (v9 >= *&v11)
          {
            v17 = *&v11;
          }

          else
          {
            v17 = v9;
          }

          if (v8 <= *(&v11 + 1))
          {
            v18 = *(&v11 + 1);
          }

          else
          {
            v18 = v8;
          }

          *(a2 + 32) = v17;
          *(a2 + 40) = v18;
        }
      }
    }
  }

  return result;
}

unsigned int *LiGroup::boundingBox(unsigned int *result, uint64_t a2, double *a3)
{
  *(a2 + 16) = xmmword_2603429E0;
  *(a2 + 32) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  v30 = xmmword_2603429E0;
  v31 = xmmword_2603429E0;
  v29 = xmmword_2603429E0;
  v3 = result[145];
  if (v3 >= 1)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      if (i >= v6[145])
      {
        PCArray_base::badIndex(result);
      }

      v8 = *(*(v6 + 73) + 16 * i);
      v9 = *(v8 + 8);
      v10 = *(v8 + 24);
      v11 = *(v8 + 56);
      v28[2] = *(v8 + 40);
      v28[3] = v11;
      v28[0] = v9;
      v28[1] = v10;
      v12 = *(v8 + 72);
      v13 = *(v8 + 88);
      v14 = *(v8 + 120);
      v28[6] = *(v8 + 104);
      v28[7] = v14;
      v28[4] = v12;
      v28[5] = v13;
      v15 = PCMatrix44Tmpl<double>::leftMult(v28, a3);
      result = (*(*v8 + 80))(v8, &v29, v28, v15);
      if (vmovn_s64(vcgtq_f64(*a2, vdupq_laneq_s64(*a2, 1))).u8[0] & 1) != 0 || (v16 = *(a2 + 16), (vmovn_s64(vcgtq_f64(v16, vdupq_laneq_s64(v16, 1))).u8[0]) || (v18 = *(a2 + 32), v17 = *(a2 + 40), v18 > v17))
      {
        v19 = v30;
        *a2 = v29;
        *(a2 + 16) = v19;
        *(a2 + 32) = v31;
      }

      else if ((vmovn_s64(vcgtq_f64(v29, vdupq_laneq_s64(v29, 1))).u8[0] & 1) == 0)
      {
        v20 = v30;
        if ((vmovn_s64(vcgtq_f64(v30, vdupq_laneq_s64(v30, 1))).u8[0] & 1) == 0)
        {
          v21 = v31;
          if (*&v31 <= *(&v31 + 1))
          {
            v22.f64[0] = *a2;
            v22.f64[1] = v29.f64[1];
            v23.f64[0] = *(a2 + 16);
            v23.f64[1] = *(&v30 + 1);
            v24.f64[0] = v29.f64[0];
            v24.f64[1] = *(a2 + 8);
            *&v25.f64[0] = v30;
            v25.f64[1] = *(a2 + 24);
            *a2 = vbslq_s8(vcgtq_f64(v24, v22), *a2, v29);
            *(a2 + 16) = vbslq_s8(vcgtq_f64(v25, v23), v16, v20);
            if (v18 >= *&v21)
            {
              v26 = *&v21;
            }

            else
            {
              v26 = v18;
            }

            if (v17 <= *(&v21 + 1))
            {
              v27 = *(&v21 + 1);
            }

            else
            {
              v27 = v17;
            }

            *(a2 + 32) = v26;
            *(a2 + 40) = v27;
          }
        }
      }
    }
  }

  return result;
}

uint64_t LiGroup::plane@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 594);
  v3 = 0.0;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v2)
  {
    v3 = 1.0;
  }

  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  return this;
}

uint64_t LiGroup::child(LiGroup *this, int a2)
{
  if (a2 < 0 || *(this + 145) <= a2)
  {
    PCArray_base::badIndex(this);
  }

  return *(*(this + 73) + 16 * a2);
}

void LiGroup::addChild(LiGroup *this, LiSceneObject *a2)
{
  v6 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(&v7, a2);
  v3 = *(this + 145);
  if (*(this + 144) <= v3)
  {
    v4 = 2 * (v3 + 1) + 1;
  }

  else
  {
    v4 = *(this + 144);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 568, v3 + 1, v4);
  v5 = *(this + 73) + 16 * *(this + 145);
  *(v5 - 16) = v6;
  PCSharedCount::PCSharedCount(&v8, &v7);
  PCSharedCount::operator=((v5 - 8), &v8);
  PCSharedCount::~PCSharedCount(&v8);
  PCSharedCount::~PCSharedCount(&v7);
}

void sub_25FF92954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

void LiGroup::insertChild(LiGroup *this, int a2, PC_Sp_counted_base *a3)
{
  v6.var0 = a3;
  if (a3)
  {
    v5 = (a3 + *(*a3 - 24));
  }

  else
  {
    v5 = 0;
  }

  PCSharedCount::PCSharedCount(&v7, v5);
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::insert(this + 568, &v6, a2);
  PCSharedCount::~PCSharedCount(&v7);
}

uint64_t PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::insert(uint64_t a1, const PCSharedCount *a2, int a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, v6 + 1, v7);
  v8 = *(a1 + 12);
  if (v8 > a3 && v8 - 1 > a3)
  {
    v10 = v8 - 1;
    v11 = 16 * v8 - 16;
    do
    {
      v12 = *(a1 + 16);
      v13 = v12 + 16 * v8;
      v14 = v12 + v11;
      *(v12 + v11) = *(v13 - 32);
      PCSharedCount::PCSharedCount(&v17, (v13 - 24));
      PCSharedCount::operator=((v14 + 8), &v17);
      PCSharedCount::~PCSharedCount(&v17);
      --v10;
      --v8;
      v11 -= 16;
    }

    while (v10 > a3);
  }

  v15 = (*(a1 + 16) + 16 * a3);
  *v15 = a2->var0;
  PCSharedCount::PCSharedCount(&v17, a2 + 1);
  PCSharedCount::operator=(v15 + 1, &v17);
  PCSharedCount::~PCSharedCount(&v17);
  return *(a1 + 16) + 16 * a3;
}