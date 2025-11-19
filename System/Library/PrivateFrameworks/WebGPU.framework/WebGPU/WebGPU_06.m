double wgpuDefaultLimits@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_225881A80;
  *(a1 + 16) = xmmword_225881A70;
  *(a1 + 32) = xmmword_225881A60;
  *(a1 + 48) = 0xC00000004;
  *(a1 + 56) = xmmword_225881A90;
  *(a1 + 72) = 0x10000000100;
  *(a1 + 80) = 8;
  *(a1 + 88) = 0x10000000;
  *(a1 + 96) = xmmword_225881AE0;
  *(a1 + 112) = xmmword_225881AD0;
  *&result = 0x10000000100;
  *(a1 + 128) = xmmword_225881AC0;
  *(a1 + 144) = xmmword_225881AB0;
  return result;
}

void WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 + 208) & 1) == 0)
  {
    v18 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v18;
    v19 = *(a2 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v21;
    *(v3 + 32) = v19;
    *(v3 + 48) = v20;
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    v24 = *(a2 + 144);
    *(v3 + 128) = *(a2 + 128);
    *(v3 + 144) = v24;
    *(v3 + 96) = v22;
    *(v3 + 112) = v23;
    v25 = *(a2 + 172);
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    *(v3 + 172) = v25;
    if (v25)
    {
      if (v25 >> 30)
      {
        goto LABEL_91;
      }

      v26 = WTF::fastMalloc((4 * v25));
      *(v3 + 168) = v25;
      *(v3 + 160) = v26;
      memcpy(v26, *(a2 + 160), 4 * *(a2 + 172));
    }

    v27 = *(a2 + 184);
    *(v3 + 176) = *(a2 + 176);
    *(v3 + 184) = v27;
    *(v3 + 192) = *(a2 + 192);
    v28 = *(a2 + 203);
    *(v3 + 200) = *(a2 + 200);
    *(v3 + 203) = v28;
    *(v3 + 208) = 1;
    return;
  }

  v5 = *(v3 + 16);
  v6 = *(a2 + 16);
  v7 = *(v3 + 32);
  if (v7 <= *(a2 + 32))
  {
    v7 = *(a2 + 32);
  }

  v8 = *(v3 + 36);
  v9 = *(a2 + 36);
  v10 = *(v3 + 52);
  if (v10 <= *(a2 + 52))
  {
    v10 = *(a2 + 52);
  }

  if (v10 >= 0x3E8)
  {
    v10 = 1000;
  }

  v11 = *(v3 + 72);
  v12 = *(a2 + 72);
  if (v11 >= 2)
  {
    v29 = __clz(v11 - 1);
    if (!v29)
    {
      goto LABEL_90;
    }

    v13 = 1 << -v29;
    if (v12 < 2)
    {
LABEL_10:
      if (v13 > 1)
      {
        v13 = 1;
      }

      v14 = *(v3 + 76);
      v15 = *(a2 + 76);
      if (v14 < 2)
      {
        goto LABEL_13;
      }

LABEL_25:
      v32 = __clz(v14 - 1);
      if (!v32)
      {
        goto LABEL_90;
      }

      v16 = 1 << -v32;
      if (v15 < 2)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v13 = 1;
    if (v12 < 2)
    {
      goto LABEL_10;
    }
  }

  v30 = __clz(v12 - 1);
  if (!v30)
  {
    goto LABEL_90;
  }

  v31 = 1 << -v30;
  if (v31 < v13)
  {
    v13 = v31;
  }

  v14 = *(v3 + 76);
  v15 = *(a2 + 76);
  if (v14 >= 2)
  {
    goto LABEL_25;
  }

LABEL_13:
  v16 = 1;
  if (v15 < 2)
  {
LABEL_14:
    v17 = 1;
    goto LABEL_29;
  }

LABEL_27:
  v33 = __clz(v15 - 1);
  if (!v33)
  {
    goto LABEL_90;
  }

  v17 = 1 << -v33;
LABEL_29:
  v34 = vmaxq_u32(*v3, *a2);
  v35 = *(a2 + 88);
  *(v3 + 56) = vbslq_s8(vcgtq_u64(*(v3 + 56), *(a2 + 56)), *(v3 + 56), *(a2 + 56));
  v36 = vmaxq_u32(v5, v6);
  v37 = vminq_u32(vmaxq_u32(v8, v9), vdupq_n_s32(0x3E8u));
  v38 = vmaxq_u32(*(v3 + 96), *(a2 + 96));
  v39 = vmaxq_u32(*(v3 + 112), *(a2 + 112));
  v40 = *(v3 + 144);
  v41 = *(a2 + 144);
  v42 = vmaxq_u32(*(v3 + 128), *(a2 + 128));
  if (v17 < v16)
  {
    v16 = v17;
  }

  v43 = *(v3 + 80);
  if (v43 <= *(a2 + 80))
  {
    v43 = *(a2 + 80);
  }

  if (*(v3 + 88) > v35)
  {
    v35 = *(v3 + 88);
  }

  *(v3 + 88) = v35;
  *v3 = v34;
  *(v3 + 16) = v36;
  *(v3 + 32) = v7;
  *(v3 + 36) = v37;
  *(v3 + 52) = v10;
  *(v3 + 72) = v13;
  *(v3 + 76) = v16;
  *(v3 + 80) = v43;
  *(v3 + 96) = v38;
  *(v3 + 112) = v39;
  *(v3 + 128) = v42;
  *(v3 + 144) = vmaxq_u32(v40, v41);
  v44 = *(v3 + 172);
  v45 = *(a2 + 172);
  v46 = v45 + v44;
  if (v45 + v44)
  {
    if (!(v46 >> 30))
    {
      v47 = WTF::fastMalloc((4 * v46));
      v44 = *(v3 + 172);
      v48 = *(a2 + 172);
      v49 = *(v3 + 160);
      v50 = v49 + 4 * v44;
      v51 = *(a2 + 160);
      v52 = v51 + 4 * v48;
      if (v48)
      {
        goto LABEL_38;
      }

LABEL_52:
      v54 = v47;
LABEL_53:
      if (v49 < v50)
      {
        goto LABEL_54;
      }

LABEL_63:
      v62 = v54;
      goto LABEL_66;
    }

LABEL_91:
    __break(0xC471u);
    JUMPOUT(0x2256A3274);
  }

  v47 = 0;
  v49 = *(v3 + 160);
  v50 = v49 + 4 * v44;
  v51 = *(a2 + 160);
  v52 = v51 + 4 * v45;
  if (!v45)
  {
    goto LABEL_52;
  }

LABEL_38:
  if (!v44)
  {
    v54 = v47;
    if (v49 < v50)
    {
      goto LABEL_54;
    }

    goto LABEL_63;
  }

  v53 = v47;
  do
  {
    while (1)
    {
      v54 = v53;
      while (1)
      {
        v55 = *v49;
        v56 = *v51;
        if (*v49 >= *v51)
        {
          break;
        }

        *v54++ = v55;
        v49 += 4;
        if (v49 >= v50)
        {
          goto LABEL_53;
        }
      }

      v53 = v54 + 1;
      if (v55 == v56)
      {
        break;
      }

      *v54 = v56;
      v51 += 4;
      if (v51 >= v52)
      {
        goto LABEL_49;
      }
    }

    *v54 = v55;
    v49 += 4;
    v51 += 4;
  }

  while (v49 < v50 && v51 < v52);
LABEL_49:
  ++v54;
  if (v49 >= v50)
  {
    goto LABEL_63;
  }

LABEL_54:
  v57 = (v49 + 4);
  if (v50 > v49 + 4)
  {
    v57 = v50;
  }

  v58 = v57 + ~v49;
  if (v58 < 0x1C || v54 - v49 <= 0x1F)
  {
    v61 = v49;
    v62 = v54;
    do
    {
LABEL_65:
      v67 = *v61++;
      *v62++ = v67;
    }

    while (v61 < v50);
    goto LABEL_66;
  }

  v59 = (v58 >> 2) + 1;
  v60 = v59 & 0x7FFFFFFFFFFFFFF8;
  v61 = (v49 + v60 * 4);
  v62 = &v54[v60];
  v63 = v54 + 4;
  v64 = (v49 + 16);
  v65 = v59 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v66 = *v64;
    *(v63 - 1) = *(v64 - 1);
    *v63 = v66;
    v63 += 2;
    v64 += 2;
    v65 -= 8;
  }

  while (v65);
  if (v59 != (v59 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v51 >= v52)
  {
    v72 = v62;
    goto LABEL_79;
  }

  v68 = (v51 + 4);
  if (v52 > v51 + 4)
  {
    v68 = v52;
  }

  v69 = v68 + ~v51;
  if (v69 < 0x1C || v62 - v51 <= 0x1F)
  {
    v71 = v51;
    v72 = v62;
    do
    {
LABEL_78:
      v79 = *v71++;
      *v72++ = v79;
    }

    while (v71 < v52);
    goto LABEL_79;
  }

  v73 = (v69 >> 2) + 1;
  v74 = v73 & 0x7FFFFFFFFFFFFFF8;
  v71 = (v51 + v74 * 4);
  v72 = &v62[v74];
  v75 = v62 + 4;
  v76 = (v51 + 16);
  v77 = v73 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v78 = *v76;
    *(v75 - 1) = *(v76 - 1);
    *v75 = v78;
    v75 += 2;
    v76 += 2;
    v77 -= 8;
  }

  while (v77);
  if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_78;
  }

LABEL_79:
  if (v46 < ((v72 - v47) >> 2))
  {
    goto LABEL_90;
  }

  v80 = *a1;
  if ((*(*a1 + 208) & 1) == 0)
  {
    goto LABEL_90;
  }

  v81 = (v72 - v47) >> 2;
  v82 = *(v80 + 160);
  if (v82)
  {
    *(v80 + 160) = 0;
    *(v80 + 168) = 0;
    WTF::fastFree(v82, a2);
    *(v80 + 160) = v47;
    *(v80 + 168) = v46;
    *(v80 + 172) = v81;
    v80 = *a1;
    if ((*(*a1 + 208) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
    *(v80 + 160) = v47;
    *(v80 + 168) = v46;
    *(v80 + 172) = v81;
  }

  v83 = *(v80 + 176);
  v84 = *(v80 + 184);
  v85 = *(v80 + 192);
  v86 = *a1;
  if ((*(v86 + 208) & 1) == 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v87 = v85;
  v88 = (*(v80 + 206) | *(a2 + 206)) & 1;
  v89 = (*(v80 + 205) | *(a2 + 205)) & 1;
  v90 = (*(v80 + 204) | *(a2 + 204)) & 1;
  if (*(a2 + 200) >= *(v80 + 200))
  {
    v91 = *(v80 + 200);
  }

  else
  {
    v91 = *(a2 + 200);
  }

  v92 = *(v86 + 184);
  *(v86 + 176) = v83;
  *(v86 + 184) = v84;

  v93 = *(v86 + 192);
  *(v86 + 192) = v87;

  *(v86 + 200) = v91;
  *(v86 + 204) = v90;
  *(v86 + 205) = v89;
  *(v86 + 206) = v88;
}

void sub_2256A3280(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebGPUL18isPhysicalHardwareEv_block_invoke()
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    if (v2)
    {
      v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      WebGPU::isPhysicalHardware(void)::result = [v0 BOOLForKey:@"WebKitAllowWebGPUOnVMs"];
    }

    else
    {
      WebGPU::isPhysicalHardware(void)::result = 1;
    }
  }
}

void WebGPU::baseCapabilities(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 supportsCounterSampling:0])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v2;
    v3 = [v2 counterSets];
    v4 = 0;
    v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v5)
    {
      v21 = 0;
      goto LABEL_17;
    }

    v21 = 0;
    v6 = *v23;
    v7 = *MEMORY[0x277CD69C0];
    v20 = *MEMORY[0x277CD69B0];
    v8 = v3;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 isEqualToString:v7];

        if (v15)
        {
          v10 = v21;
          v11 = v4;
          v21 = v13;
LABEL_6:
          v12 = v13;

          v4 = v11;
          goto LABEL_7;
        }

        v16 = [v13 name];
        v17 = [v16 isEqualToString:v20];

        v10 = v4;
        v11 = v13;
        if (v17)
        {
          goto LABEL_6;
        }

LABEL_7:
        v3 = v8;
      }

      v5 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v5)
      {
LABEL_17:

        v2 = v18;
        goto LABEL_18;
      }
    }
  }

  v4 = 0;
  v21 = 0;
LABEL_18:
  *a1 = [v2 argumentBuffersSupport];
  *(a1 + 8) = v21;
  *(a1 + 16) = v4;
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 30) = 0;
}

void WebGPU::baseFeatures(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  v45 = 19;
  v6 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, 1uLL, &v45);
  v7 = *(a1 + 12);
  v8 = *a1;
  *(*a1 + 4 * v7) = *v6;
  v9 = *(a1 + 8);
  v10 = (v7 + 1);
  *(a1 + 12) = v10;
  v45 = 17;
  if (v10 == v9)
  {
    v11 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v10 + 1, &v45);
    v12 = *(a1 + 12);
    LODWORD(v7) = v12 + 1;
    v8 = *a1;
    *(*a1 + 4 * v12) = *v11;
    v9 = *(a1 + 8);
    *(a1 + 12) = v7;
    v45 = 18;
    v13 = v7;
    if (v7 != v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    LODWORD(v7) = v7 + 2;
    *(v8 + 4 * v10) = 17;
    *(a1 + 12) = v7;
    v45 = 18;
    v13 = v7;
    if (v7 != v9)
    {
LABEL_3:
      *(v8 + 4 * v13) = 18;
      v14 = (v7 + 1);
      *(a1 + 12) = v14;
      v45 = 14;
      if (v14 == v9)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v22 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v13 + 1, &v45);
  v7 = *(a1 + 12);
  v8 = *a1;
  *(*a1 + 4 * v7) = *v22;
  v9 = *(a1 + 8);
  v14 = (v7 + 1);
  *(a1 + 12) = v14;
  v45 = 14;
  if (v14 == v9)
  {
LABEL_4:
    v15 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v14 + 1, &v45);
    v16 = *(a1 + 12);
    LODWORD(v7) = v16 + 1;
    v8 = *a1;
    *(*a1 + 4 * v16) = *v15;
    v9 = *(a1 + 8);
    *(a1 + 12) = v7;
    v45 = 1;
    v17 = v7;
    if (v7 != v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    v23 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v17 + 1, &v45);
    v7 = *(a1 + 12);
    v8 = *a1;
    *(*a1 + 4 * v7) = *v23;
    v24 = *(a1 + 8);
    v18 = (v7 + 1);
    *(a1 + 12) = v18;
    v45 = 2;
    if (v18 == v24)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  LODWORD(v7) = v7 + 2;
  *(v8 + 4 * v14) = 14;
  *(a1 + 12) = v7;
  v45 = 1;
  v17 = v7;
  if (v7 == v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  *(v8 + 4 * v17) = 1;
  v18 = (v7 + 1);
  *(a1 + 12) = v18;
  v45 = 2;
  if (v18 == v9)
  {
LABEL_6:
    v19 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v18 + 1, &v45);
    v20 = *(a1 + 12);
    LODWORD(v21) = v20 + 1;
    v8 = *a1;
    *(*a1 + 4 * v20) = *v19;
    goto LABEL_12;
  }

LABEL_11:
  LODWORD(v21) = v7 + 2;
  *(v8 + 4 * v18) = 2;
LABEL_12:
  *(a1 + 12) = v21;
  v25 = [v5 supportsBCTextureCompression];
  v26 = *(a1 + 8);
  if (!v25)
  {
    goto LABEL_19;
  }

  v45 = 4;
  if (v21 != v26)
  {
    *(v8 + 4 * v21) = 4;
    v28 = (v21 + 1);
    *(a1 + 12) = v28;
    v45 = 5;
    if (v28 != v26)
    {
      goto LABEL_15;
    }

LABEL_17:
    v29 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v28 + 1, &v45);
    v30 = *(a1 + 12);
    LODWORD(v21) = v30 + 1;
    v8 = *a1;
    *(*a1 + 4 * v30) = *v29;
    v26 = *(a1 + 8);
    goto LABEL_18;
  }

  v27 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v21 + 1, &v45);
  v21 = *(a1 + 12);
  v8 = *a1;
  *(*a1 + 4 * v21) = *v27;
  v26 = *(a1 + 8);
  v28 = (v21 + 1);
  *(a1 + 12) = v28;
  v45 = 5;
  if (v28 == v26)
  {
    goto LABEL_17;
  }

LABEL_15:
  LODWORD(v21) = v21 + 2;
  *(v8 + 4 * v28) = 5;
LABEL_18:
  *(a1 + 12) = v21;
LABEL_19:
  v45 = 9;
  if (v21 == v26)
  {
    v31 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v21 + 1, &v45);
    v21 = *(a1 + 12);
    v8 = *a1;
    *(*a1 + 4 * v21) = *v31;
    v26 = *(a1 + 8);
    v32 = (v21 + 1);
    *(a1 + 12) = v32;
    v45 = 11;
    if (v32 != v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v8 + 4 * v21) = 9;
    v32 = (v21 + 1);
    *(a1 + 12) = v32;
    v45 = 11;
    if (v32 != v26)
    {
LABEL_21:
      LODWORD(v33) = v21 + 2;
      *(v8 + 4 * v32) = 11;
      *(a1 + 12) = v21 + 2;
      v45 = 10;
      v34 = (v21 + 2);
      if (v21 + 2 == v26)
      {
        goto LABEL_22;
      }

LABEL_26:
      *(v8 + 4 * v34) = 10;
      v37 = (v33 + 1);
      *(a1 + 12) = v37;
      v45 = 12;
      if (v37 != v26)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  v39 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v32 + 1, &v45);
  v40 = *(a1 + 12);
  LODWORD(v33) = v40 + 1;
  v8 = *a1;
  *(*a1 + 4 * v40) = *v39;
  v26 = *(a1 + 8);
  *(a1 + 12) = v33;
  v45 = 10;
  v34 = v33;
  if (v33 != v26)
  {
    goto LABEL_26;
  }

LABEL_22:
  v35 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v34 + 1, &v45);
  v33 = *(a1 + 12);
  v8 = *a1;
  *(*a1 + 4 * v33) = *v35;
  v36 = *(a1 + 8);
  v37 = (v33 + 1);
  *(a1 + 12) = v37;
  v45 = 12;
  if (v37 != v36)
  {
LABEL_23:
    LODWORD(v38) = v33 + 2;
    *(v8 + 4 * v37) = 12;
    goto LABEL_28;
  }

LABEL_27:
  v41 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v37 + 1, &v45);
  v42 = *(a1 + 12);
  LODWORD(v38) = v42 + 1;
  v8 = *a1;
  *(*a1 + 4 * v42) = *v41;
LABEL_28:
  *(a1 + 12) = v38;
  if ([v5 supports32BitFloatFiltering])
  {
    v45 = 13;
    if (v38 == *(a1 + 8))
    {
      v43 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v38 + 1, &v45);
      v38 = *(a1 + 12);
      v8 = *a1;
      *(*a1 + 4 * v38) = *v43;
    }

    else
    {
      *(v8 + 4 * v38) = 13;
    }

    LODWORD(v38) = v38 + 1;
    *(a1 + 12) = v38;
  }

  if (*(a3 + 8))
  {
    v45 = 3;
    if (v38 == *(a1 + 8))
    {
      v44 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v38 + 1, &v45);
      v38 = *(a1 + 12);
      *(*a1 + 4 * v38) = *v44;
    }

    else
    {
      *(v8 + 4 * v38) = 3;
    }

    *(a1 + 12) = v38 + 1;
  }
}

void sub_2256A3AB0(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + 4 * v6 > a3)
    {
      v7 = *(a1 + 8);
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (!(v8 >> 30))
      {
        v9 = a3 - v5;
        if (v8 <= 0x10)
        {
          v10 = 16;
        }

        else
        {
          v10 = v8;
        }

        v11 = WTF::fastMalloc((4 * v10));
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, 4 * v6);
        if (v5)
        {
          if (*a1 == v5)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v5, v12);
        }

        return *a1 + v9;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x2256A3C64);
    }
  }

  v14 = *(a1 + 8);
  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= a2)
  {
    v15 = a2;
  }

  if (v15 >> 30)
  {
    goto LABEL_31;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 12);
  v18 = WTF::fastMalloc((4 * v16));
  *(a1 + 8) = v16;
  *a1 = v18;
  memcpy(v18, v5, 4 * v17);
  if (!v5)
  {
    return v3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v19);
  return v3;
}

uint64_t std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v61 = *v8;
        v62 = v8[1];
        v63 = *(a2 - 1);
        if (v62 < *v8)
        {
          if (v63 >= v62)
          {
            *v8 = v62;
            v8[1] = v61;
            v123 = *(a2 - 1);
            if (v123 >= v61)
            {
              return result;
            }

            v8[1] = v123;
          }

          else
          {
            *v8 = v63;
          }

          *(a2 - 1) = v61;
          return result;
        }

        if (v63 >= v62)
        {
          return result;
        }

        v8[1] = v63;
        *(a2 - 1) = v62;
        v115 = v8[1];
        goto LABEL_226;
      }

      if (v9 != 4)
      {
        if (v9 != 5)
        {
          goto LABEL_10;
        }

        v64 = v8 + 1;
        v65 = v8[1];
        v67 = v8 + 2;
        v66 = v8[2];
        v68 = *v8;
        if (v65 >= v68)
        {
          if (v66 >= v65)
          {
            v71 = *v8;
            LODWORD(v68) = v8[1];
            goto LABEL_217;
          }

          v69 = v8;
          v70 = v8 + 1;
          *v64 = v66;
          *v67 = v65;
          v71 = v66;
          result = v68;
          v72 = v65;
          if (v66 >= v68)
          {
            v71 = v68;
            LODWORD(v68) = v66;
            LODWORD(v66) = v65;
LABEL_217:
            v124 = v8[3];
            if (v124 >= v66)
            {
              LODWORD(v66) = v8[3];
            }

            else
            {
              v8[2] = v124;
              v8[3] = v66;
              if (v124 < v68)
              {
                *v64 = v124;
                *v67 = v68;
                if (v124 < v71)
                {
                  *v8 = v124;
                  v8[1] = v71;
                }
              }
            }

            v125 = *(a2 - 1);
            if (v125 >= v66)
            {
              return result;
            }

            v8[3] = v125;
            *(a2 - 1) = v66;
            v126 = v8[2];
            v115 = v8[3];
            if (v115 >= v126)
            {
              return result;
            }

            v8[2] = v115;
            v8[3] = v126;
            v127 = v8[1];
            if (v115 >= v127)
            {
              return result;
            }

            v8[1] = v115;
            v8[2] = v127;
LABEL_226:
            v128 = *v8;
            if (v115 < *v8)
            {
              *v8 = v115;
              v8[1] = v128;
            }

            return result;
          }
        }

        else if (v66 >= v65)
        {
          v69 = v8 + 1;
          v70 = v8 + 2;
          *v8 = v65;
          v8[1] = v68;
          v71 = v65;
          result = v66;
          v72 = v68;
          if (v66 >= v68)
          {
            v71 = v65;
            goto LABEL_217;
          }
        }

        else
        {
          v69 = v8;
          v70 = v8 + 2;
          v71 = v8[2];
          result = v8[1];
          v72 = *v8;
        }

        *v69 = v66;
        *v70 = v68;
        LODWORD(v68) = result;
        LODWORD(v66) = v72;
        goto LABEL_217;
      }

      v19 = v8 + 1;
      v75 = v8[1];
      v40 = v8 + 2;
      v12 = v8[2];
      v76 = *v8;
      if (v75 >= v76)
      {
        if (v12 >= v75)
        {
          goto LABEL_206;
        }

        *v19 = v12;
        *v40 = v75;
        v77 = v8;
        v78 = v8 + 1;
        result = v75;
        if (v12 >= v76)
        {
LABEL_195:
          v116 = *(a2 - 1);
          if (v116 >= v75)
          {
            return result;
          }

LABEL_207:
          *v40 = v116;
          *(a2 - 1) = v75;
          v120 = *v40;
          v121 = *v19;
          if (v120 < v121)
          {
            v7[1] = v120;
            v7[2] = v121;
            v122 = *v7;
            if (v120 < *v7)
            {
              *v7 = v120;
              v7[1] = v122;
            }
          }

          return result;
        }
      }

      else
      {
        v77 = v8;
        v78 = v8 + 2;
        result = *v8;
        if (v12 >= v75)
        {
          *v8 = v75;
          v8[1] = v76;
          v77 = v8 + 1;
          v78 = v8 + 2;
          result = v76;
          if (v12 >= v76)
          {
            goto LABEL_206;
          }
        }
      }

      *v77 = v12;
      *v78 = v76;
      LODWORD(v75) = result;
      goto LABEL_195;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v73 = *(a2 - 1);
      v74 = *v8;
      if (v73 < *v8)
      {
        *v8 = v73;
        *(a2 - 1) = v74;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v88 = (v9 - 2) >> 1;
        v89 = v88;
        do
        {
          if (v88 >= v89)
          {
            v90 = (2 * (v89 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v91 = &v8[v90];
            if (2 * (v89 & 0x3FFFFFFFFFFFFFFFLL) + 2 >= v9)
            {
              v92 = *v91;
              v94 = &v8[v89];
              v95 = *v94;
              if (*v91 >= *v94)
              {
                goto LABEL_166;
              }
            }

            else
            {
              v92 = v91[1];
              v93 = *v91 < v92;
              if (*v91 > v92)
              {
                v92 = *v91;
              }

              if (v93)
              {
                ++v91;
                v90 = 2 * (v89 & 0x3FFFFFFFFFFFFFFFLL) + 2;
              }

              v94 = &v8[v89];
              v95 = *v94;
              if (v92 >= *v94)
              {
LABEL_166:
                while (1)
                {
                  *v94 = v92;
                  v94 = v91;
                  if (v88 < v90)
                  {
                    break;
                  }

                  v96 = (2 * (v90 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                  v91 = &v8[v96];
                  v90 = 2 * v90 + 2;
                  if (v90 < v9)
                  {
                    v92 = *v91;
                    result = v91[1];
                    if (*v91 <= result)
                    {
                      v92 = v91[1];
                    }

                    if (*v91 >= result)
                    {
                      v90 = v96;
                    }

                    else
                    {
                      ++v91;
                    }

                    if (v92 < v95)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v92 = *v91;
                    v90 = v96;
                    if (*v91 < v95)
                    {
                      break;
                    }
                  }
                }

                *v94 = v95;
              }
            }
          }

          v93 = v89-- <= 0;
        }

        while (!v93);
        do
        {
          v97 = 0;
          v98 = *v8;
          v99 = (v9 - 2) >> 1;
          v100 = v8;
          do
          {
            while (1)
            {
              v107 = &v100[v97];
              v106 = v107 + 1;
              v108 = (2 * v97) | 1;
              v97 = 2 * v97 + 2;
              if (v97 < v9)
              {
                break;
              }

              v97 = v108;
              *v100 = *v106;
              v100 = v107 + 1;
              if (v108 > v99)
              {
                goto LABEL_181;
              }
            }

            v103 = v107[2];
            v102 = v107 + 2;
            v101 = v103;
            v104 = *(v102 - 1);
            v105 = v104 < v103;
            if (v104 > v103)
            {
              v101 = *(v102 - 1);
            }

            if (v105)
            {
              v106 = v102;
            }

            else
            {
              v97 = v108;
            }

            *v100 = v101;
            v100 = v106;
          }

          while (v97 <= v99);
LABEL_181:
          if (v106 == --a2)
          {
            *v106 = v98;
          }

          else
          {
            *v106 = *a2;
            *a2 = v98;
            v109 = (v106 - v8 + 4) >> 2;
            v93 = v109 < 2;
            v110 = v109 - 2;
            if (!v93)
            {
              v111 = v110 >> 1;
              v112 = &v8[v111];
              v113 = *v112;
              v114 = *v106;
              if (*v112 < *v106)
              {
                do
                {
                  *v106 = v113;
                  v106 = v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v8[v111];
                  v113 = *v112;
                }

                while (*v112 < v114);
                *v106 = v114;
              }
            }
          }

          v93 = v9-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *v8;
      v16 = *v11;
      if (*v8 >= *v11)
      {
        if (v12 < v15)
        {
          *v8 = v12;
          *(a2 - 1) = v15;
          v18 = *v11;
          if (*v8 < *v11)
          {
            *v11 = *v8;
            *v8 = v18;
            --a3;
            v19 = v18;
            if (a4)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v12 < v15)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v15;
        *v8 = v16;
        v26 = *(a2 - 1);
        if (v26 < v16)
        {
          *v8 = v26;
LABEL_37:
          *(a2 - 1) = v16;
        }
      }

      --a3;
      v19 = *v8;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v13 = *v10;
    v14 = *v8;
    if (*v10 >= *v8)
    {
      if (v12 < v13)
      {
        *v10 = v12;
        *(a2 - 1) = v13;
        v17 = *v8;
        if (*v10 < *v8)
        {
          *v8 = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      if (v12 >= v13)
      {
        *v8 = v13;
        *v10 = v14;
        v20 = *(a2 - 1);
        if (v20 >= v14)
        {
          goto LABEL_29;
        }

        *v10 = v20;
      }

      else
      {
        *v8 = v12;
      }

      *(a2 - 1) = v14;
    }

LABEL_29:
    v21 = v10 - 1;
    v22 = *(v10 - 1);
    v23 = v8[1];
    v24 = *(a2 - 2);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        *v21 = v24;
        *(a2 - 2) = v22;
        v25 = v8[1];
        if (*v21 < v25)
        {
          v8[1] = *v21;
          *v21 = v25;
        }
      }
    }

    else
    {
      if (v24 >= v22)
      {
        v8[1] = v22;
        *v21 = v23;
        v27 = *(a2 - 2);
        if (v27 >= v23)
        {
          goto LABEL_43;
        }

        *v21 = v27;
      }

      else
      {
        v8[1] = v24;
      }

      *(a2 - 2) = v23;
    }

LABEL_43:
    v30 = v10[1];
    v28 = v10 + 1;
    v29 = v30;
    v31 = v8[2];
    v32 = *(a2 - 3);
    if (v30 >= v31)
    {
      if (v32 < v29)
      {
        *v28 = v32;
        *(a2 - 3) = v29;
        v33 = v8[2];
        if (*v28 < v33)
        {
          v8[2] = *v28;
          *v28 = v33;
        }
      }
    }

    else
    {
      if (v32 >= v29)
      {
        v8[2] = v29;
        *v28 = v31;
        v34 = *(a2 - 3);
        if (v34 >= v31)
        {
          goto LABEL_52;
        }

        *v28 = v34;
      }

      else
      {
        v8[2] = v32;
      }

      *(a2 - 3) = v31;
    }

LABEL_52:
    v12 = *v11;
    v35 = *v21;
    v36 = *v28;
    if (*v11 < *v21)
    {
      if (v36 >= v12)
      {
        *v21 = v12;
        *v11 = v35;
        v21 = v11;
        v12 = v36;
        if (v36 >= v35)
        {
          v12 = v35;
          v37 = *v8;
          *v8 = v35;
          *v11 = v37;
          --a3;
          v19 = *v8;
          if (a4)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    if (v36 >= v12)
    {
      goto LABEL_60;
    }

    *v11 = v36;
    *v28 = v12;
    v28 = v11;
    v12 = v35;
    if (v36 >= v35)
    {
      v12 = v36;
      v52 = *v8;
      *v8 = v36;
      *v11 = v52;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v39 = 0;
      do
      {
        v40 = &v8[v39 + 1];
        if (v40 == a2)
        {
          goto LABEL_205;
        }

        v12 = *v40;
        ++v39;
      }

      while (*v40 < v19);
      v40 = &v8[v39];
      v41 = a2;
      if (v39 != 1)
      {
        while (v41 != v8)
        {
          v42 = *--v41;
          if (v42 < v19)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_205;
      }

      v41 = a2;
      do
      {
        if (v40 >= v41)
        {
          break;
        }

        v43 = *--v41;
      }

      while (v43 >= v19);
LABEL_72:
      if (v40 < v41)
      {
        v44 = *v41;
        v45 = &v8[v39];
        v46 = v41;
LABEL_74:
        *v45 = v44;
        *v46 = v12;
        v47 = (v45 + 1);
        while (v47 != a2)
        {
          v48 = *v47++;
          v12 = v48;
          if (v48 >= v19)
          {
            v45 = (v47 - 1);
            while (v46 != v8)
            {
              v49 = *--v46;
              v44 = v49;
              if (v49 < v19)
              {
                if (v45 < v46)
                {
                  goto LABEL_74;
                }

                v50 = v47 - 2;
                if (v47 - 2 != v8)
                {
                  goto LABEL_84;
                }

                goto LABEL_85;
              }
            }

            goto LABEL_205;
          }
        }

        goto LABEL_205;
      }

      v50 = v40 - 1;
      if (v40 - 1 != v8)
      {
LABEL_84:
        *v8 = *v50;
      }

LABEL_85:
      *v50 = v19;
      if (v40 < v41)
      {
LABEL_88:
        result = std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v7, v50, a3, a4 & 1);
        a4 = 0;
        v8 = v50 + 1;
        continue;
      }

      v51 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *>(v8, v50);
      v8 = v50 + 1;
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *>(v50 + 1, a2);
      if (!result)
      {
        if (v51)
        {
          continue;
        }

        goto LABEL_88;
      }

      a2 = v50;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

LABEL_59:
    *v21 = v36;
    *v28 = v35;
LABEL_60:
    v38 = *v8;
    *v8 = v12;
    *v11 = v38;
    --a3;
    v19 = *v8;
    if (a4)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v8 - 1) < v19)
    {
      goto LABEL_62;
    }

    if (v19 >= *(a2 - 1))
    {
      v54 = (v8 + 1);
      do
      {
        v8 = v54;
        if (v54 >= a2)
        {
          break;
        }

        ++v54;
      }

      while (v19 >= *v8);
    }

    else
    {
      v40 = v8 + 1;
      do
      {
        if (v40 == a2)
        {
          goto LABEL_205;
        }

        v53 = *v40++;
      }

      while (v19 >= v53);
      v8 = v40 - 1;
    }

    v40 = a2;
    if (v8 < a2)
    {
      v40 = a2;
      while (v40 != v7)
      {
        v55 = *--v40;
        if (v19 >= v55)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_205;
    }

LABEL_103:
    if (v8 < v40)
    {
      v56 = *v8;
      v12 = *v40;
      do
      {
        *v8 = v12;
        v57 = v8 + 1;
        *v40 = v56;
        do
        {
          if (v57 == a2)
          {
            goto LABEL_205;
          }

          v58 = *v57++;
          v56 = v58;
        }

        while (v19 >= v58);
        v8 = v57 - 1;
        do
        {
          if (v40 == v7)
          {
            goto LABEL_205;
          }

          v59 = *--v40;
          v12 = v59;
        }

        while (v19 < v59);
      }

      while (v8 < v40);
    }

    v60 = (v8 - 1);
    if (v8 - 1 != v7)
    {
      *v7 = *v60;
    }

    a4 = 0;
    *v60 = v19;
  }

  v19 = v8 + 1;
  v80 = v8 == a2 || v19 == a2;
  if ((a4 & 1) == 0)
  {
    if (v80)
    {
      return result;
    }

    v40 = 0;
    v117 = 4;
    while (1)
    {
      v12 = *(v40 + v8);
      v40 = v117;
      v118 = *v19;
      if (*v19 < v12)
      {
        break;
      }

LABEL_199:
      v117 = (v40 + 1);
      if (++v19 == a2)
      {
        return result;
      }
    }

    v119 = 0;
    while (1)
    {
      v19[v119] = v12;
      if (!&v40[v119])
      {
        break;
      }

      v12 = v19[v119 - 2];
      --v119;
      if (v118 >= v12)
      {
        v19[v119] = v118;
        goto LABEL_199;
      }
    }

LABEL_205:
    __break(1u);
LABEL_206:
    LODWORD(v75) = v12;
    v116 = *(a2 - 1);
    if (v116 >= v75)
    {
      return result;
    }

    goto LABEL_207;
  }

  if (!v80)
  {
    v81 = 4;
    v82 = v8;
    do
    {
      v84 = *v82;
      v82 = v19;
      v85 = *v19;
      if (v85 < v84)
      {
        v86 = v81;
        do
        {
          *(v8 + v86) = v84;
          v87 = v86 - 4;
          if (v86 == 4)
          {
            v83 = v8;
            goto LABEL_139;
          }

          v84 = *(v8 + v86 - 8);
          v86 -= 4;
        }

        while (v85 < v84);
        v83 = (v8 + v87);
LABEL_139:
        *v83 = v85;
      }

      v19 = v82 + 1;
      v81 += 4;
    }

    while (v82 + 1 != a2);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 12; ; i += 4)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 4;
      if (v40 == 4)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 8);
      v40 -= 4;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

void ___ZN6WebGPU8InstanceC2EU13block_pointerFvU13block_pointerFvvEEPKN3WTF13MachSendRightE_block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = a2;
  WebGPU::Instance::defaultScheduleWork(v5, &v6);
}

void WebGPU::Instance::defaultScheduleWork(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = (a1 + 72);
  atomic_compare_exchange_strong_explicit((a1 + 72), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x22AA683C0](a1 + 72);
    v5 = MEMORY[0x22AA68A80](*a2);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = MEMORY[0x22AA68A80](*a2);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v7)
    {
LABEL_3:
      if (v6 + 1 != v7)
      {
        goto LABEL_39;
      }

      LODWORD(v8) = *(a1 + 40);
      goto LABEL_11;
    }
  }

  v8 = *(a1 + 40);
  if (v6)
  {
    if (v6 != v8 - 1)
    {
      goto LABEL_39;
    }
  }

  else if (v8)
  {
    v6 = 0;
    goto LABEL_39;
  }

LABEL_11:
  v10 = v8;
  v11 = v8 + (v8 >> 2);
  if (v11 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    return;
  }

  v12 = *(a1 + 32);
  if (v11 <= 0xF)
  {
    v11 = 15;
  }

  v13 = v11 + 1;
  v14 = WTF::fastMalloc((8 * (v11 + 1)));
  v16 = v14;
  *(a1 + 40) = v13;
  *(a1 + 32) = v14;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = v18 - v17;
  if (v18 < v17)
  {
    if (v18 > v10)
    {
      goto LABEL_45;
    }

    if (v18)
    {
      v20 = 8 * v18;
      v21 = v12;
      do
      {
        v22 = *v21;
        *v21 = 0;
        *v16++ = v22;
        v23 = *v21++;

        v20 -= 8;
      }

      while (v20);
      v13 = *(a1 + 40);
      v17 = *(a1 + 16);
    }

    if (v10 < v17)
    {
      goto LABEL_45;
    }

    v24 = v13;
    if (v13 < v10 - v17)
    {
      goto LABEL_45;
    }

    v25 = v13 - (v10 - v17);
    if (v10 != v17)
    {
      v26 = 8 * v17;
      v27 = (v12 + v26);
      v28 = *(a1 + 32) + 8 * v24;
      v29 = v26 - 8 * v10;
      do
      {
        v30 = *v27;
        *v27 = 0;
        *(v28 + v29) = v30;
        v31 = *v27++;

        v29 += 8;
      }

      while (v29);
    }

    *(a1 + 16) = v25;
    goto LABEL_34;
  }

  v32 = v10 - v17;
  if (v10 < v17)
  {
    goto LABEL_45;
  }

  if (v19 != -1)
  {
    if (v32 >= v19)
    {
      if (!v19)
      {
        goto LABEL_34;
      }

LABEL_32:
      v33 = (v12 + 8 * v17);
      v34 = 8 * v19;
      v35 = (v14 + 8 * v17);
      do
      {
        v36 = *v33;
        *v33 = 0;
        *v35++ = v36;
        v37 = *v33++;

        v34 -= 8;
      }

      while (v34);
      goto LABEL_34;
    }

LABEL_45:
    __break(1u);
LABEL_46:

    WTF::Lock::unlockSlow(v4);
    return;
  }

  v19 = v10 - v17;
  if (v32)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (v12)
  {
    if (*(a1 + 32) == v12)
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    WTF::fastFree(v12, v15);
  }

  v6 = *(a1 + 24);
LABEL_39:
  if (v6 >= *(a1 + 40))
  {
    goto LABEL_45;
  }

  *(*(a1 + 32) + 8 * v6) = v5;
  v38 = *(a1 + 24);
  if (v38 == *(a1 + 40) - 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 + 1;
  }

  *(a1 + 24) = v39;
  v40 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 72), &v40, 0, memory_order_release, memory_order_relaxed);
  if (v40 != 1)
  {
    goto LABEL_46;
  }
}

void sub_2256A4E10(_Unwind_Exception *a1)
{
  v4 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 == 1)
  {
    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(a1);
}

void *WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>><WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = v2 + 24 * i;
        if (*v6 != -1)
        {
          v7 = *(v6 + 20);
          if (v7)
          {
            v8 = *(v6 + 8);
            v9 = 8 * v7;
            do
            {
              objc_destroyWeak(v8++);
              v9 -= 8;
            }

            while (v9);
          }

          v10 = *(v6 + 8);
          if (v10)
          {
            *(v6 + 8) = 0;
            *(v6 + 16) = 0;
            WTF::fastFree(v10, a2);
          }

          v11 = *v6;
          *v6 = 0;
          if (v11)
          {
            do
            {
              v12 = *v11;
              if ((*v11 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v11, a2);
                goto LABEL_5;
              }

              v13 = *v11;
              atomic_compare_exchange_strong_explicit(v11, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v13 != v12);
            if (v12 == 3)
            {
              WebGPU::Device::~Device(v11, a2);
              bmalloc::api::tzoneFree(v14, v15);
            }
          }
        }

LABEL_5:
        ;
      }
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void WTF::Deque<void({block_pointer} {__strong})(void),0ul>::~Deque(unint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 6);
  v6 = *a1;
  v7 = v3 - *a1;
  if (v3 < *a1)
  {
    if (v3 <= v5)
    {
      if (v3)
      {
        v8 = 8 * v3;
        v9 = a1[2];
        do
        {
          v10 = *v9++;

          v8 -= 8;
        }

        while (v8);
        v6 = *a1;
      }

      if (v6 <= v5)
      {
        if (v6 != v5)
        {
          v11 = 8 * v6;
          v12 = (v4 + v11);
          v13 = 8 * v5 - v11;
          do
          {
            v14 = *v12++;

            v13 -= 8;
          }

          while (v13);
        }

        goto LABEL_20;
      }
    }

LABEL_23:
    __break(1u);
    return;
  }

  v15 = v5 - v6;
  if (v5 < v6)
  {
    goto LABEL_23;
  }

  if (v7 == -1)
  {
    v7 = v5 - v6;
    if (!v15)
    {
      goto LABEL_20;
    }

LABEL_18:
    v16 = 8 * v7;
    v17 = (v4 + 8 * v6);
    do
    {
      v18 = *v17++;

      v16 -= 8;
    }

    while (v16);
    goto LABEL_20;
  }

  if (v15 < v7)
  {
    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_18;
  }

LABEL_20:
  v19 = a1[2];
  if (v19)
  {
    a1[2] = 0;
    *(a1 + 6) = 0;
    WTF::fastFree(v19, a2);
  }
}

void ___ZN6WebGPU8InstanceC2Ev_block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = a2;
  WebGPU::Instance::defaultScheduleWork(v5, &v6);
}

void WebGPU::Instance::~Instance(id *this)
{
  *this = &unk_2838D2E78;

  if (*(this + 60) == 1)
  {
    WTF::MachSendRight::~MachSendRight((this + 7));
  }

  v3 = this[6];
  if (v3)
  {
    v4 = *(v3 - 1);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = &v3[6 * i];
        if (*v6 != -1)
        {
          v7 = v6[5];
          if (v7)
          {
            v8 = *(v6 + 1);
            v9 = 8 * v7;
            do
            {
              objc_destroyWeak(v8++);
              v9 -= 8;
            }

            while (v9);
          }

          v10 = *(v6 + 1);
          if (v10)
          {
            *(v6 + 1) = 0;
            v6[4] = 0;
            WTF::fastFree(v10, v2);
          }

          v11 = *v6;
          *v6 = 0;
          if (v11)
          {
            do
            {
              v12 = *v11;
              if ((*v11 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v11, v2);
                goto LABEL_7;
              }

              v13 = *v11;
              atomic_compare_exchange_strong_explicit(v11, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v13 != v12);
            if (v12 == 3)
            {
              WebGPU::Device::~Device(v11, v2);
              bmalloc::api::tzoneFree(v14, v15);
            }
          }
        }

LABEL_7:
        ;
      }
    }

    WTF::fastFree((v3 - 4), v2);
  }

  v16 = this[3];
  v17 = this[4];
  v18 = *(this + 10);
  v19 = this[2];
  v20 = v16 - v19;
  if (v16 < v19)
  {
    if (v16 <= v18)
    {
      if (v16)
      {
        v21 = 8 * v16;
        v22 = this[4];
        do
        {
          v23 = *v22++;

          v21 -= 8;
        }

        while (v21);
        v19 = this[2];
      }

      if (v19 <= v18)
      {
        if (v19 != v18)
        {
          v24 = 8 * v19;
          v25 = &v17[v24];
          v26 = 8 * v18 - v24;
          do
          {
            v27 = *v25++;

            v26 -= 8;
          }

          while (v26);
        }

        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
    return;
  }

  v28 = v18 - v19;
  if (v18 < v19)
  {
    goto LABEL_42;
  }

  if (v20 == -1)
  {
    v20 = v18 - v19;
    if (!v28)
    {
      goto LABEL_39;
    }

LABEL_37:
    v29 = 8 * v20;
    v30 = &v17[8 * v19];
    do
    {
      v31 = *v30++;

      v29 -= 8;
    }

    while (v29);
    goto LABEL_39;
  }

  if (v28 < v20)
  {
    goto LABEL_42;
  }

  if (v20)
  {
    goto LABEL_37;
  }

LABEL_39:
  v32 = this[4];
  if (v32)
  {
    this[4] = 0;
    *(this + 10) = 0;
    WTF::fastFree(v32, v2);
  }
}

{
  WebGPU::Instance::~Instance(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebGPU::Instance::scheduleWork(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = *a2;
  *a2 = 0;
  v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v4 = MEMORY[0x277D85DC8];
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void *)#1}::__invoke;
  v4[3] = &WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::descriptor;
  v4[4] = v3;
  v6 = MEMORY[0x22AA68A80]();

  v5 = MEMORY[0x22AA68A80](v6);
  (*(v2 + 16))(v2, v5);
}

void sub_2256A5388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WGPURequestAdapterStatus,WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>> &&,WTF::String &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WebGPU::Adapter *WebGPU::Adapter::createInvalid(WebGPU::Adapter *this, WebGPU::Instance *a2)
{
  if (WebGPU::Adapter::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Adapter::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::Adapter::operatorNewSlow(0xF8);
  }

  v5 = NonCompact;
  result = WebGPU::Adapter::Adapter(NonCompact, a2);
  *this = v5;
  return result;
}

void WebGPU::Adapter::create(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = a2;
  if (WebGPU::Adapter::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Adapter::s_heapRef, v9);
  }

  else
  {
    NonCompact = WebGPU::Adapter::operatorNewSlow(0xF8);
  }

  v11 = NonCompact;
  WebGPU::Adapter::Adapter(NonCompact, v12, a3, a4, a5);
  *a1 = v11;
}

void sub_2256A5578(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  bmalloc::api::tzoneFree(v10, a2);

  _Unwind_Resume(a1);
}

void WebGPU::Instance::retainDevice(uint64_t a1, atomic_ullong *a2, void *a3)
{
  v5 = a3;
  v7 = 0;
  v104 = (a1 + 72);
  val = v5;
  atomic_compare_exchange_strong_explicit((a1 + 72), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v104);
  }

  v10 = *(a1 + 48);
  v9 = (a1 + 48);
  v8 = v10;
  if (v10)
  {
    v11 = *(v8 - 8);
    v12 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
    v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
    v15 = v11 & ((v14 >> 31) ^ v14);
    v16 = v8 + 24 * v15;
    v17 = *v16;
    if (*v16 != a2)
    {
      v18 = 1;
      do
      {
        if (!v17)
        {
          goto LABEL_12;
        }

        v15 = (v15 + v18) & v11;
        v16 = v8 + 24 * v15;
        v17 = *v16;
        ++v18;
      }

      while (*v16 != a2);
    }

    if (v16 == v8 + 24 * *(v8 - 4))
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_12:
  while (1)
  {
    v20 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v19 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v19, v20 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v20)
    {
      goto LABEL_16;
    }
  }

  v21 = 0;
  v22 = *a2;
  v23 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v21, 1u, memory_order_acquire, memory_order_acquire);
  if (v21)
  {
    MEMORY[0x22AA683C0](v22);
  }

  ++*(v22 + 8);
  atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 == 1)
  {
LABEL_16:
    v24 = *v9;
    if (*v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  WTF::Lock::unlockSlow(v22);
  v24 = *v9;
  if (!*v9)
  {
LABEL_17:
    WTF::HashTable<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::FastMalloc,WTF::DefaultHash,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::KeyValuePairTraits,WTF::HashTraits,WTF::CrashOnOverflow>::rehash(v9, 8u, 0);
    v24 = *v9;
  }

LABEL_18:
  v25 = *(v24 - 8);
  v26 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
  v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
  v29 = v25 & ((v28 >> 31) ^ v28);
  v16 = v24 + 24 * v29;
  v30 = *v16;
  if (!*v16)
  {
LABEL_26:
    *v16 = a2;
    v33 = *(v16 + 20);
    if (v33)
    {
      v34 = *(v16 + 8);
      v35 = 8 * v33;
      do
      {
        objc_destroyWeak(v34++);
        v35 -= 8;
      }

      while (v35);
    }

    v36 = *(v16 + 8);
    if (v36)
    {
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      WTF::fastFree(v36, v6);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 20) = 0;
    v37 = *v9;
    if (*v9)
    {
      v38 = *(v37 - 16);
      v39 = *(v37 - 12) + 1;
      *(v37 - 12) = v39;
      v40 = (v38 + v39);
      v41 = *(v37 - 4);
      if (v41 <= 0x400)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v39 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v40 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v41 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_33:
        if (3 * v41 <= 4 * v40)
        {
          if (!v41)
          {
            v42 = 8;
LABEL_39:
            v16 = WTF::HashTable<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::FastMalloc,WTF::DefaultHash,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::KeyValuePairTraits,WTF::HashTraits,WTF::CrashOnOverflow>::rehash(v9, v42, v16);
            goto LABEL_40;
          }

LABEL_38:
          v42 = v41 << (6 * v39 >= (2 * v41));
          goto LABEL_39;
        }

LABEL_40:
        a2 = 0;
        goto LABEL_41;
      }
    }

    if (v41 <= 2 * v40)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v31 = 0;
  v32 = 1;
  while (v30 != a2)
  {
    if (v30 == -1)
    {
      v31 = v16;
    }

    v29 = (v29 + v32) & v25;
    v16 = v24 + 24 * v29;
    v30 = *v16;
    ++v32;
    if (!*v16)
    {
      if (v31)
      {
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
        --*(*v9 - 16);
        v16 = v31;
      }

      goto LABEL_26;
    }
  }

LABEL_41:
  if (a2)
  {
    while (1)
    {
      v43 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v44 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v44, v43 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v44 == v43)
      {
        if (v43 == 3)
        {
          WebGPU::Device::~Device(a2, v6);
          bmalloc::api::tzoneFree(v45, v46);
        }

        goto LABEL_46;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a2, v6);
    v47 = *(v16 + 20);
    if (v47 == *(v16 + 16))
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_46:
  v47 = *(v16 + 20);
  if (v47 != *(v16 + 16))
  {
LABEL_63:
    v55 = (*(v16 + 8) + 8 * v47);
    goto LABEL_64;
  }

LABEL_47:
  v48 = v47 + (v47 >> 1);
  if (v48 <= v47 + 1)
  {
    v48 = v47 + 1;
  }

  if (v48 >> 29)
  {
    __break(0xC471u);
    goto LABEL_163;
  }

  v49 = *(v16 + 8);
  if (v48 <= 0x10)
  {
    v50 = 16;
  }

  else
  {
    v50 = v48;
  }

  v52 = WTF::fastMalloc((8 * v50));
  *(v16 + 16) = v50;
  *(v16 + 8) = v52;
  if (v47)
  {
    v53 = 8 * v47;
    v54 = v49;
    do
    {
      objc_moveWeak(v52, v54);
      objc_destroyWeak(v54);
      ++v52;
      ++v54;
      v53 -= 8;
    }

    while (v53);
    v52 = *(v16 + 8);
  }

  if (v49)
  {
    if (v52 == v49)
    {
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
    }

    WTF::fastFree(v49, v51);
    v52 = *(v16 + 8);
  }

  v55 = &v52[*(v16 + 20)];
LABEL_64:
  objc_initWeak(v55, val);
  ++*(v16 + 20);
  v57 = *v9;
  v106 = v9;
  if (!*v9)
  {
    v59 = 0;
    LODWORD(v58) = 0;
LABEL_74:
    v61 = v59;
    v59 = v57 + 24 * v58;
    if (v57)
    {
LABEL_72:
      v62 = *(v57 - 4);
      goto LABEL_79;
    }

LABEL_75:
    v63 = 0;
    if (v61)
    {
LABEL_80:
      v107 = v63;
      v108 = v59;
      while (1)
      {
        v64 = *(v61 + 8);
        v65 = *(v61 + 20);
        v66 = &v64[v65];
        if (v65)
        {
          v67 = 0;
          v68 = v64 - 1;
          v69 = &v64[v65];
          v70 = v69;
          do
          {
            WeakRetained = objc_loadWeakRetained(v64);

            if (!WeakRetained)
            {
              v71 = v64;
              if (v69 != (*(v61 + 8) + 8 * *(v61 + 20)))
              {
                if (v70 == v64)
                {
                  v71 = v69;
                }

                else
                {
                  if (v70 <= v69)
                  {
                    v75 = (v64 - v70);
                    v76 = (v69 + v68 - v70);
                    v77 = v64;
                    do
                    {
                      objc_moveWeak(v76, --v77);
                      objc_destroyWeak(v77);
                      --v76;
                    }

                    while (v77 != v70);
                  }

                  else
                  {
                    v73 = v69;
                    v74 = v70;
                    do
                    {
                      objc_moveWeak(v73, v74);
                      objc_destroyWeak(v74);
                      ++v73;
                      ++v74;
                    }

                    while (v74 != v64);
                    v75 = (v64 - v70);
                  }

                  v71 = &v75[v69];
                }
              }

              v70 = v64 + 1;
              objc_destroyWeak(v64);
              ++v67;
              v69 = v71;
            }

            ++v64;
            ++v68;
          }

          while (v64 < v66);
          v66 = v70;
          v63 = v107;
          v59 = v108;
          v64 = (*(v61 + 8) + 8 * *(v61 + 20));
          if (v70 == v64)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v67 = 0;
          v69 = &v64[v65];
          if (v66 == v64)
          {
            goto LABEL_105;
          }
        }

        if (v66 <= v69)
        {
          v78 = (v69 + v64 - v66 - 8);
          do
          {
            objc_moveWeak(v78, --v64);
            objc_destroyWeak(v64);
            --v78;
          }

          while (v64 != v66);
        }

        else
        {
          do
          {
            objc_moveWeak(v69, v66);
            objc_destroyWeak(v66);
            ++v69;
            ++v66;
          }

          while (v66 != v64);
        }

LABEL_105:
        *(v61 + 20) -= v67;
        do
        {
          v61 += 24;
        }

        while (v61 != v59 && (*v61 + 1) <= 1);
        if (v61 == v63)
        {
          v57 = *v106;
          if (!*v106)
          {
            goto LABEL_153;
          }

          goto LABEL_110;
        }
      }
    }

    goto LABEL_76;
  }

  v58 = *(v57 - 4);
  v59 = v57 + 24 * v58;
  if (!*(v57 - 12))
  {
    goto LABEL_74;
  }

  if (v58)
  {
    v60 = 24 * v58;
    v61 = *v9;
    while ((*v61 + 1) <= 1)
    {
      v61 += 24;
      v60 -= 24;
      if (!v60)
      {
        v61 = v59;
        break;
      }
    }

    if (v57)
    {
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  v62 = 0;
  v61 = *v9;
LABEL_79:
  v63 = v57 + 24 * v62;
  if (v61 != v63)
  {
    goto LABEL_80;
  }

LABEL_76:
  if (!v57)
  {
    goto LABEL_153;
  }

LABEL_110:
  v79 = *(v57 - 4);
  if (!v79)
  {
    goto LABEL_133;
  }

  v80 = 0;
  v81 = v106;
  do
  {
    --v79;
    v82 = v57 + 24 * v79;
    v83 = *v82;
    if ((*v82 + 1) >= 2 && !*(v82 + 20))
    {
      *v82 = -1;
      if (v83)
      {
        do
        {
          v84 = *v83;
          if ((*v83 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v83, v56);
            goto LABEL_122;
          }

          v85 = *v83;
          atomic_compare_exchange_strong_explicit(v83, &v85, v84 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v85 != v84);
        if (v84 == 3)
        {
          WebGPU::Device::~Device(v83, v56);
          bmalloc::api::tzoneFree(v86, v87);
        }

LABEL_122:
        v88 = *(v82 + 20);
        v89 = (v82 + 8);
        if (v88)
        {
          v90 = *v89;
          v91 = 8 * v88;
          do
          {
            objc_destroyWeak(v90++);
            v91 -= 8;
          }

          while (v91);
          v81 = v106;
        }

        v92 = *v89;
        if (!*v89)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v92 = *(v82 + 8);
        if (!v92)
        {
          goto LABEL_112;
        }
      }

      *(v82 + 8) = 0;
      *(v82 + 16) = 0;
      WTF::fastFree(v92, v56);
LABEL_112:
      ++v80;
    }
  }

  while (v79);
  v57 = *v81;
  if (v80)
  {
    v93 = *(v57 - 12) - v80;
    *(v57 - 16) += v80;
    *(v57 - 12) = v93;
    goto LABEL_133;
  }

  if (v57)
  {
LABEL_133:
    v94 = *(v57 - 12);
    v95 = *(v57 - 4);
    if (6 * v94 >= v95 || v95 < 9)
    {
      goto LABEL_153;
    }

    if (v94 <= 1)
    {
      v97 = 1;
      v98 = v106;
      goto LABEL_142;
    }

    v99 = __clz(v94 - 1);
    if (v99)
    {
      v97 = (1 << -v99);
      v98 = v106;
      if (v94 > 0x400)
      {
        if (v97 <= 2 * v94)
        {
LABEL_143:
          LODWORD(v97) = 2 * v97;
        }
      }

      else
      {
LABEL_142:
        if (3 * v97 <= 4 * v94)
        {
          goto LABEL_143;
        }
      }

      v100 = v94;
      v101 = v97;
      if (v97 > 0x400)
      {
        if (v101 * 0.416666667 <= v100)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v101 * 0.604166667 > v100)
        {
          goto LABEL_149;
        }

LABEL_148:
        LODWORD(v97) = 2 * v97;
      }

LABEL_149:
      if (v97 <= 8)
      {
        v102 = 8;
      }

      else
      {
        v102 = v97;
      }

      WTF::HashTable<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::FastMalloc,WTF::DefaultHash,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::KeyValuePairTraits,WTF::HashTraits,WTF::CrashOnOverflow>::rehash(v98, v102, 0);
      goto LABEL_153;
    }

LABEL_163:
    __break(1u);
  }

  else
  {
LABEL_153:
    v103 = 1;
    atomic_compare_exchange_strong_explicit(v104, &v103, 0, memory_order_release, memory_order_relaxed);
    if (v103 != 1)
    {
      WTF::Lock::unlockSlow(v104);
    }
  }
}

void sub_2256A5E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::Lock *a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v18 = 1;
  atomic_compare_exchange_strong_explicit(a10, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(a10);

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      objc_destroyWeak(v4++);
      v5 -= 8;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t wgpuInstanceReference(uint64_t result)
{
  while (1)
  {
    v1 = *(result + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(result + 8);
    atomic_compare_exchange_strong_explicit((result + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return result;
    }
  }

  v3 = 0;
  v4 = *(result + 8);
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x22AA683C0](v4);
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  else
  {
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  return WTF::Lock::unlockSlow(v4);
}

uint64_t *wgpuInstanceRelease(uint64_t *result, void *a2)
{
  do
  {
    v2 = result[1];
    if ((v2 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(result[1], a2);
    }

    v3 = result[1];
    atomic_compare_exchange_strong_explicit(result + 1, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t wgpuCreateInstance(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1 || *(v2 + 8) != 354139136)
  {
    v3 = WebGPU::Instance::s_heapRef;
    if (!WebGPU::Instance::s_heapRef)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v3 = WebGPU::Instance::s_heapRef;
  if (*v2)
  {
    if (!WebGPU::Instance::s_heapRef)
    {
LABEL_5:
      NonCompact = WebGPU::Instance::operatorNewSlow(v3);
LABEL_8:
      v5 = NonCompact;
      *NonCompact = &unk_2838D2E78;
      *(NonCompact + 8) = 3;
      *(NonCompact + 60) = 0;
      v6 = MEMORY[0x277D85DD0];
      *(NonCompact + 16) = 0u;
      *(NonCompact + 32) = 0u;
      *(NonCompact + 41) = 0u;
      v13 = v6;
      v14 = 3221225472;
      v15 = ___ZN6WebGPU8InstanceC2Ev_block_invoke;
      v16 = &__block_descriptor_40_e14_v16__0___v___8l;
      v17 = NonCompact;
      *(NonCompact + 64) = MEMORY[0x22AA68A80](&v13);
      *(v5 + 72) = 0;
      return v5;
    }

LABEL_7:
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(v3, a2);
    goto LABEL_8;
  }

  if (WebGPU::Instance::s_heapRef)
  {
    v8 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Instance::s_heapRef, a2);
  }

  else
  {
    v8 = WebGPU::Instance::operatorNewSlow(0);
  }

  v9 = v8;
  v10 = *(v2 + 24);
  v11 = *(v2 + 16);
  v12 = v11;
  *v9 = &unk_2838D2E78;
  *(v9 + 8) = 3;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  if (v10)
  {
    WTF::MachSendRight::MachSendRight();
    BYTE4(v13) = 1;
    *(v9 + 56) = 0;
    *(v9 + 60) = 0;
    WTF::MachSendRight::MachSendRight();
    *(v9 + 60) = 1;
    if ((v13 & 0x100000000) != 0)
    {
      WTF::MachSendRight::~MachSendRight(&v13);
    }

    v11 = v12;
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  *(v9 + 56) = 0;
  *(v9 + 60) = 0;
  if (!v11)
  {
LABEL_17:
    v11 = &v13;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = ___ZN6WebGPU8InstanceC2EU13block_pointerFvU13block_pointerFvvEEPKN3WTF13MachSendRightE_block_invoke;
    v16 = &__block_descriptor_40_e14_v16__0___v___8l;
    v17 = v9;
  }

LABEL_15:
  *(v9 + 64) = MEMORY[0x22AA68A80](v11);
  *(v9 + 72) = 256;

  return v9;
}

void sub_2256A62C4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  if (*(v12 + 60) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v12 + 56));
  }

  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>><WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::~HashMap((v12 + 48), a2);
  WTF::Deque<void({block_pointer} {__strong})(void),0ul>::~Deque(v14, v16);

  bmalloc::api::tzoneFree(v12, v17);
  _Unwind_Resume(a1);
}

uint64_t **WTF::Ref<WebGPU::Instance,WTF::RawPtrTraits<WebGPU::Instance>,WTF::DefaultRefDerefTraits<WebGPU::Instance>>::~Ref(uint64_t **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    do
    {
      v3 = v2[1];
      if ((v3 & 1) == 0)
      {
        v5 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v2[1], a2);
        return v5;
      }

      v4 = v2[1];
      atomic_compare_exchange_strong_explicit(v2 + 1, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 != 3)
    {
      return result;
    }

    v5 = result;
    (*(*v2 + 8))(v2);
    return v5;
  }

  return result;
}

uint64_t wgpuInstanceCreateSurface(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = *(a1 + 8);
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    WTF::Lock::unlockSlow(v7);
    goto LABEL_6;
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::PresentationContext::create(a2, a1, &v14);
  v10 = v14;
  v14 = 0;
  do
  {
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(*(a1 + 8), v9);
      return v10;
    }

    v12 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    (*(*a1 + 8))(a1);
  }

  return v10;
}

void wgpuInstanceProcessEvents(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = *(a1 + 8);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
  v6 = *(a1 + 8);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (!v5)
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_8;
    }

LABEL_51:
    WTF::Lock::unlockSlow(v6);
    goto LABEL_8;
  }

  MEMORY[0x22AA683C0](v6);
  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_51;
  }

  do
  {
LABEL_8:
    v8 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 72), &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x22AA683C0](a1 + 72);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v11 = *(a1 + 16);
    *(a1 + 16) = 0u;
    v30 = v11;
    v31 = v9;
    v32 = v10;
    v12 = 1;
    atomic_compare_exchange_strong_explicit((a1 + 72), &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      v14 = *(&v11 + 1);
      v13 = v11;
      if (v11 != *(&v11 + 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      WTF::Lock::unlockSlow((a1 + 72));
      v14 = *(&v30 + 1);
      v13 = v30;
      if (v30 != *(&v30 + 1))
      {
LABEL_15:
        v18 = v13;
        while (v18 < v32)
        {
          v15 = v31;
          (*(*(v31 + v18) + 16))();
          v18 += v32 + 1;
          do
          {
            v18 -= v32;
          }

          while (v18 >= v32);
          if (v14 == v18)
          {
            if (v13 <= v14)
            {
              v16 = v14;
              v17 = v32 - v13;
              if (v32 < v13)
              {
                break;
              }

              goto LABEL_30;
            }

            if (v14)
            {
              v19 = 8 * v14;
              v20 = v31;
              do
              {
                v21 = *v20++;

                v19 -= 8;
              }

              while (v19);
            }

            if (v13 <= v32)
            {
              if (v13 != v32)
              {
                v22 = 8 * v13;
                do
                {

                  v22 += 8;
                }

                while (8 * v32 != v22);
              }

              goto LABEL_37;
            }

            break;
          }
        }

LABEL_48:
        __break(1u);
        return;
      }
    }

    v15 = v31;
    v16 = v13;
    v17 = v32 - v13;
    if (v32 < v13)
    {
      goto LABEL_48;
    }

LABEL_30:
    v23 = v16 - v13;
    if (v23 == -1)
    {
      v23 = v17;
      if (!v17)
      {
        goto LABEL_37;
      }

LABEL_35:
      v24 = 8 * v23;
      v25 = 8 * v13;
      do
      {

        v25 += 8;
        v24 -= 8;
      }

      while (v24);
      goto LABEL_37;
    }

    if (v17 < v23)
    {
      goto LABEL_48;
    }

    if (v23)
    {
      goto LABEL_35;
    }

LABEL_37:
    if (v15)
    {
      WTF::fastFree(v15, a2);
    }
  }

  while (v13 != v14);
  while (1)
  {
    v26 = *(a1 + 8);
    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      if (v26 == 3)
      {
        v28 = *(*a1 + 8);

        v28(a1);
      }

      return;
    }
  }

  v29 = *(a1 + 8);

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v29, a2);
}

void sub_2256A6838(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, uint64_t *);
  WTF::Deque<void({block_pointer} {__strong})(void),0ul>::~Deque(va1, a2);
  WTF::Ref<WebGPU::Instance,WTF::RawPtrTraits<WebGPU::Instance>,WTF::DefaultRefDerefTraits<WebGPU::Instance>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

void wgpuInstanceRequestAdapter(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v8 = a1[1];
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = a1[1];
    atomic_compare_exchange_strong_explicit(a1 + 1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  v11 = a1[1];
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v11, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v11);
LABEL_6:
  v45 = a1;
  v13 = WTF::fastMalloc(0x18);
  *v13 = &unk_2838D2EB8;
  v13[1] = a3;
  v13[2] = a4;
  v44 = v13;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = MTLCreateSystemDefaultDevice();
  if (v15)
  {
    [v14 addObject:v15];
  }

  v16 = *(a2 + 16);
  v17 = v14;
  v19 = v17;
  v20 = v17;
  if (v16 >= 3)
  {

    v20 = 0;
  }

  if (*a2)
  {
    if (WebGPU::Adapter::s_heapRef)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

  if (*(a2 + 24))
  {
    if (WebGPU::Adapter::s_heapRef)
    {
LABEL_15:
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Adapter::s_heapRef, v18);
LABEL_16:
      v22 = NonCompact;
      WebGPU::Adapter::Adapter(NonCompact, a1);
      v54 = v22;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v53 = v47[0];
      v44 = 0;
      (*(*v13 + 16))(v13, 1, &v54, &v53);
      goto LABEL_17;
    }

LABEL_60:
    NonCompact = WebGPU::Adapter::operatorNewSlow(0xF8);
    goto LABEL_16;
  }

  if (!v20)
  {
    if (WebGPU::Adapter::s_heapRef)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

  if (![v20 count])
  {
    if (WebGPU::Adapter::s_heapRef)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

  v31 = [v20 objectAtIndexedSubscript:0];

  if (!v31)
  {
    if (WebGPU::Adapter::s_heapRef)
    {
LABEL_46:
      v37 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Adapter::s_heapRef, v18);
LABEL_47:
      v38 = v37;
      WebGPU::Adapter::Adapter(v37, a1);
      v54 = v38;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v53 = v47[0];
      v44 = 0;
      (*(*v13 + 16))(v13, 2, &v54, &v53);
LABEL_17:
      (*(*v13 + 8))(v13);
      v24 = v53;
      v53 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      v25 = v54;
      v54 = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          WebGPU::Adapter::~Adapter(v25);
          bmalloc::api::tzoneFree(v26, v27);
        }

        else
        {
          --*v25;
        }
      }

      goto LABEL_25;
    }

LABEL_61:
    v37 = WebGPU::Adapter::operatorNewSlow(0xF8);
    goto LABEL_47;
  }

  v32 = [v20 objectAtIndexedSubscript:0];
  WebGPU::hardwareCapabilities(v32, v47);
  if (v52)
  {
    v33 = [v20 objectAtIndexedSubscript:0];
    if ((v52 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    WebGPU::Adapter::create(&v54, v33, a1, *(a2 + 28) != 0, v47);
    v53 = 0;
    WTF::CompletionHandler<void ()(WGPURequestAdapterStatus,WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>> &&,WTF::String &&)>::operator()(&v44);
    v36 = v53;
    v53 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v35);
    }

    WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(&v54);
  }

  else
  {
    WebGPU::Adapter::createInvalid(&v53, a1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v46 = v54;
    WTF::CompletionHandler<void ()(WGPURequestAdapterStatus,WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>> &&,WTF::String &&)>::operator()(&v44);
    v40 = v46;
    v46 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v39);
    }

    WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(&v53);
  }

  if (v52 == 1)
  {

    v42 = v48;
    if (v48)
    {
      v48 = 0;
      v49 = 0;
      WTF::fastFree(v42, v41);
    }
  }

  v43 = v44;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

LABEL_25:
  v45 = 0;
  do
  {
    v29 = a1[1];
    if ((v29 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(a1[1], v28);
      return;
    }

    v30 = a1[1];
    atomic_compare_exchange_strong_explicit(a1 + 1, &v30, v29 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v30 != v29);
  if (v29 == 3)
  {
    (*(*a1 + 8))(a1);
  }
}

void sub_2256A6ED4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, WTF::StringImpl *a11, char a12)
{
  v18 = *(v16 - 80);
  *(v16 - 80) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref((v16 - 72));

  std::optional<WebGPU::HardwareCapabilities>::~optional(&a12);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  WTF::Ref<WebGPU::Instance,WTF::RawPtrTraits<WebGPU::Instance>,WTF::DefaultRefDerefTraits<WebGPU::Instance>>::~Ref(&a10, v19);
  _Unwind_Resume(a1);
}

void sub_2256A70A0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Instance,WTF::RawPtrTraits<WebGPU::Instance>,WTF::DefaultRefDerefTraits<WebGPU::Instance>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

BOOL wgpuBufferIsValid(uint64_t a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v8;
    if (*(v8 + 44) == 4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v14 = a1;
  MEMORY[0x22AA683C0](v5);
  a1 = v14;
  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(a1 + 44) == 4)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v7 = *(a1 + 8) != 0;
  do
  {
LABEL_11:
    v9 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, a2);
      return v7;
    }

    v10 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v9 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v7;
}

BOOL wgpuAdapterIsValid(uint64_t a1)
{
  v1 = (*a1)++;
  v2 = *(a1 + 8);
  if (v1)
  {
    *a1 = v1;
  }

  else
  {
    WebGPU::Adapter::~Adapter(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2 != 0;
}

BOOL wgpuBindGroupIsValid(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = v3 + 1;
  v4 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 8) = v3;
  }

  else
  {
    WebGPU::BindGroup::~BindGroup(a1, a2, a3);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v4 != 0;
}

uint64_t wgpuBindGroupLayoutIsValid(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  v3 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 8) = v2;
  }

  else
  {
    WebGPU::BindGroupLayout::~BindGroupLayout(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3;
}

BOOL wgpuCommandBufferIsValid(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v14 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v14;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v13;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = a1[1];
  do
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*a1, a2);
      return v7 != 0;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    WebGPU::CommandBuffer::~CommandBuffer(a1);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7 != 0;
}

BOOL wgpuCommandEncoderIsValid(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = v1 + 1;
  v2 = *(a1 + 24);
  if (v1)
  {
    *(a1 + 16) = v1;
  }

  else
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2 != 0;
}

BOOL wgpuComputePassEncoderIsValid(WebGPU::ComputePassEncoder *a1)
{
  v1 = (*a1)++;
  v2 = *(a1 + 1);
  if (v1)
  {
    *a1 = v1;
  }

  else
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2 != 0;
}

uint64_t wgpuComputePipelineIsValid(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  if (*(a1 + 16))
  {
    v3 = *(*(a1 + 56) + 128);
    if (v2)
    {
LABEL_3:
      *(a1 + 8) = v2;
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  WebGPU::ComputePipeline::~ComputePipeline(a1, a2);
  bmalloc::api::tzoneFree(v5, v6);
  return v3;
}

BOOL wgpuDeviceIsValid(atomic_ullong *a1, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v14 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v14;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v13;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = a1[1];
  do
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, a2);
      return v7 != 0;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    WebGPU::Device::~Device(a1, a2);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7 != 0;
}

uint64_t wgpuExternalTextureIsValid(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  if (*(a1 + 16))
  {
    v3 = 1;
    if (v2)
    {
LABEL_3:
      *(a1 + 8) = v2;
      return v3;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  WebGPU::ExternalTexture::~ExternalTexture(a1, a2);
  bmalloc::api::tzoneFree(v5, v6);
  return v3;
}

uint64_t wgpuPipelineLayoutIsValid(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  v3 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 8) = v2;
  }

  else
  {
    WebGPU::PipelineLayout::~PipelineLayout(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3;
}

uint64_t wgpuPresentationContextIsValid(_DWORD *a1)
{
  ++a1[2];
  result = (*(*a1 + 80))(a1);
  if (a1[2] == 1)
  {
    v3 = result;
    (*(*a1 + 8))(a1);
    return v3;
  }

  else
  {
    --a1[2];
  }

  return result;
}

void sub_2256A7748(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[2];
  _Unwind_Resume(exception_object);
}

BOOL wgpuQuerySetIsValid(uint64_t a1, void *a2)
{
  v2 = (*a1)++;
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 16))
  {
    v3 = 1;
    if (v2)
    {
LABEL_4:
      *a1 = v2;
      return v3;
    }
  }

  else
  {
    v3 = *(a1 + 24) != 0;
    if (v2)
    {
      goto LABEL_4;
    }
  }

  WebGPU::QuerySet::~QuerySet(a1, a2);
  bmalloc::api::tzoneFree(v5, v6);
  return v3;
}

BOOL wgpuQueueIsValid(uint64_t a1)
{
  atomic_fetch_add(a1, 1u);
  v1 = *(a1 + 8);
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    WebGPU::Queue::~Queue(a1);
    bmalloc::api::tzoneFree(v3, v4);
  }

  return v1 != 0;
}

BOOL wgpuRenderBundleEncoderIsValid(uint64_t a1)
{
  v1 = (*a1)++;
  v2 = *(a1 + 80);
  if (v1)
  {
    *a1 = v1;
  }

  else
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2 != 0;
}

BOOL wgpuRenderBundleIsValid(uint64_t a1)
{
  v1 = (*a1)++;
  if (*(a1 + 16))
  {
    v2 = 1;
    if (v1)
    {
LABEL_3:
      *a1 = v1;
      return v2;
    }
  }

  else
  {
    v2 = *(a1 + 24) != 0;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  WebGPU::RenderBundle::~RenderBundle(a1);
  bmalloc::api::tzoneFree(v4, v5);
  return v2;
}

BOOL wgpuRenderPassEncoderIsValid(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2 != 0;
}

uint64_t wgpuRenderPipelineIsValid(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  if (*(a1 + 16))
  {
    v3 = *(*(a1 + 136) + 128);
    if (v2)
    {
LABEL_3:
      *(a1 + 8) = v2;
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  WebGPU::RenderPipeline::~RenderPipeline(a1, a2);
  bmalloc::api::tzoneFree(v5, v6);
  return v3;
}

uint64_t wgpuSamplerIsValid(unsigned __int8 *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = (*a1)++;
  v4 = a1[16];
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    WebGPU::Sampler::~Sampler(a1, a2, a3);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v4;
}

BOOL wgpuShaderModuleIsValid(unsigned __int8 *a1, WTF::StringImpl *a2)
{
  v2 = (*a1)++;
  v3 = a1[40];
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    WebGPU::ShaderModule::~ShaderModule(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3 == 0;
}

BOOL wgpuTextureIsValid(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  if (*(a1 + 104))
  {
    v2 = 1;
    if (v1)
    {
LABEL_3:
      *(a1 + 8) = v1;
      return v2;
    }
  }

  else
  {
    v2 = *(a1 + 16) != 0;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  WebGPU::Texture::~Texture(a1);
  bmalloc::api::tzoneFree(v4, v5);
  return v2;
}

BOOL wgpuTextureViewIsValid(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  v3 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 8) = v2;
  }

  else
  {
    WebGPU::TextureView::~TextureView(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3 != 0;
}

uint64_t wgpuXRBindingIsValid(WebGPU::XRBinding *a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 2);
  *(a1 + 2) = v2 + 1;
  if (v2)
  {
    *(a1 + 2) = v2;
  }

  else
  {
    WebGPU::XRBinding::~XRBinding(a1, a2);
    WTF::fastFree(v4, v5);
  }

  return 1;
}

uint64_t wgpuXRSubImageIsValid(WebGPU::XRSubImage *a1, void *a2)
{
  v2 = *(a1 + 2);
  *(a1 + 2) = v2 + 1;
  if (v2)
  {
    *(a1 + 2) = v2;
  }

  else
  {
    WebGPU::XRSubImage::~XRSubImage(a1, a2);
    WTF::fastFree(v4, v5);
  }

  return 1;
}

BOOL wgpuXRProjectionLayerIsValid(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  v3 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 8) = v2;
  }

  else
  {
    WebGPU::XRProjectionLayer::~XRProjectionLayer(a1, a2);
    WTF::fastFree(v5, v6);
  }

  return v3 != 0;
}

uint64_t wgpuXRViewIsValid(WebGPU::XRView *a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 2);
  *(a1 + 2) = v2 + 1;
  if (v2)
  {
    *(a1 + 2) = v2;
  }

  else
  {
    WebGPU::XRView::~XRView(a1, a2);
    WTF::fastFree(v4, v5);
  }

  return 1;
}

uint64_t WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(atomic_ullong *result, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebGPU::Device::~Device(result, a2);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v6, a2);
}

id **WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>::~Ref(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundle::~RenderBundle(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

WebGPU::XRProjectionLayer **WTF::Ref<WebGPU::XRProjectionLayer,WTF::RawPtrTraits<WebGPU::XRProjectionLayer>,WTF::DefaultRefDerefTraits<WebGPU::XRProjectionLayer>>::~Ref(WebGPU::XRProjectionLayer **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::XRProjectionLayer::~XRProjectionLayer(v2, a2);
      WTF::fastFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::Vector<WTF::WeakObjCPtrArc<objc_object  {objcproto16MTLCommandBuffer}* {__strong}>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>,WTF::FastMalloc,WTF::DefaultHash,WTF::HashTraits<WTF::RefPtr<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>>,WTF::HashMap<WTF::FastMalloc>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::CrashOnOverflow>::KeyValuePairTraits,WTF::HashTraits,WTF::CrashOnOverflow>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v7 + 4);
  v7[2] = a2 - 1;
  v7[3] = a2;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    do
    {
      v12 = v4 + 24 * v9;
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v23 = *a1;
          if (*a1)
          {
            v24 = *(v23 - 8);
          }

          else
          {
            v24 = 0;
          }

          v25 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v26 = 9 * ((v25 + ~(v25 << 13)) ^ ((v25 + ~(v25 << 13)) >> 8));
          v27 = (v26 ^ (v26 >> 15)) + ~((v26 ^ (v26 >> 15)) << 27);
          v28 = v24 & ((v27 >> 31) ^ v27);
          v29 = 1;
          do
          {
            v30 = v23 + 24 * v28;
            v28 = (v28 + v29++) & v24;
          }

          while (*v30);
          v31 = *(v30 + 20);
          if (v31)
          {
            v32 = *(v30 + 8);
            v33 = 8 * v31;
            do
            {
              objc_destroyWeak(v32++);
              v33 -= 8;
            }

            while (v33);
          }

          v34 = *(v30 + 8);
          if (v34)
          {
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            WTF::fastFree(v34, v8);
          }

          v35 = *v30;
          *v30 = 0;
          if (v35)
          {
            do
            {
              v36 = *v35;
              if ((*v35 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v35, v8);
                goto LABEL_36;
              }

              v37 = *v35;
              atomic_compare_exchange_strong_explicit(v35, &v37, v36 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v37 != v36);
            if (v36 == 3)
            {
              WebGPU::Device::~Device(v35, v8);
              bmalloc::api::tzoneFree(v38, v39);
            }
          }

LABEL_36:
          v40 = *v12;
          *v12 = 0;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          *v30 = v40;
          v41 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v30 + 8) = v41;
          LODWORD(v41) = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v30 + 16) = v41;
          LODWORD(v41) = *(v12 + 20);
          *(v12 + 20) = 0;
          *(v30 + 20) = v41;
          v42 = *(v12 + 20);
          if (v42)
          {
            v43 = *(v12 + 8);
            v44 = 8 * v42;
            do
            {
              objc_destroyWeak(v43++);
              v44 -= 8;
            }

            while (v44);
          }

          v45 = *(v12 + 8);
          if (v45)
          {
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            WTF::fastFree(v45, v8);
          }

          v46 = *v12;
          *v12 = 0;
          if (v46)
          {
            do
            {
              v47 = *v46;
              if ((*v46 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v46, v8);
                goto LABEL_47;
              }

              v48 = *v46;
              atomic_compare_exchange_strong_explicit(v46, &v48, v47 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v48 != v47);
            if (v47 == 3)
            {
              WebGPU::Device::~Device(v46, v8);
              bmalloc::api::tzoneFree(v49, v50);
            }
          }

LABEL_47:
          if (v12 == a3)
          {
            v10 = v30;
          }
        }

        else
        {
          v14 = *(v12 + 20);
          if (v14)
          {
            v15 = *(v12 + 8);
            v16 = 8 * v14;
            do
            {
              objc_destroyWeak(v15++);
              v16 -= 8;
            }

            while (v16);
          }

          v17 = *(v12 + 8);
          if (v17)
          {
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            WTF::fastFree(v17, v8);
          }

          v18 = *v12;
          *v12 = 0;
          if (v18)
          {
            do
            {
              v19 = *v18;
              if ((*v18 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v18, v8);
                goto LABEL_7;
              }

              v20 = *v18;
              atomic_compare_exchange_strong_explicit(v18, &v20, v19 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v20 != v19);
            if (v19 == 3)
            {
              WebGPU::Device::~Device(v18, v8);
              bmalloc::api::tzoneFree(v21, v22);
            }
          }
        }
      }

LABEL_7:
      ++v9;
    }

    while (v9 != v11);
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    WTF::fastFree((v4 - 16), v8);
  }

  return v10;
}

_DWORD *WTF::Detail::CallableWrapper<wgpuInstanceRequestAdapter(WGPUInstanceImpl *,WGPURequestAdapterOptions const*,void (*)(WGPURequestAdapterStatus,WGPUAdapterImpl *,char const*,void *),void *)::$_0,void,WGPURequestAdapterStatus,WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>> &&,WTF::String &&>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    WTF::String::utf8();
    if (v13)
    {
      v6 = v13 + 16;
    }

    else
    {
      v6 = 0;
    }

    v4(a2, 0, v6, *(a1 + 16));
    result = v13;
    if (v13)
    {
      v9 = *v13 - 1;
      if (*v13 == 1)
      {
        return WTF::fastFree(v13, v7);
      }

LABEL_14:
      *result = v9;
    }
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    WTF::String::utf8();
    if (v13)
    {
      v11 = v13 + 16;
    }

    else
    {
      v11 = 0;
    }

    v4(0, v10, v11, *(a1 + 16));
    result = v13;
    if (v13)
    {
      v9 = *v13 - 1;
      if (*v13 == 1)
      {
        return WTF::fastFree(v13, v12);
      }

      goto LABEL_14;
    }
  }

  return result;
}

void sub_2256A81E8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebGPU::createLibrary(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const WTF::StringImpl **a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v10 = a5;
  v39 = 0;
  if (*a4)
  {
    if (*(*a4 + 1) && *(a2 + 40) == 0)
    {
      v12 = *(a2 + 64);

      if (a3)
      {
        if (v12)
        {
          v13 = WebGPU::ShaderModule::pipelineLayoutHint(a2, a4, v14);
          if (v13)
          {
            v17 = *(v13 + 2);
            *(v13 + 2) = v17 + 1;
            if (!v17)
            {
              WebGPU::PipelineLayout::~PipelineLayout(v13, v16);
              v13 = bmalloc::api::tzoneFree(v29, v30);
              v18 = *(a2 + 40);
              if (v18 == 255)
              {
                v19 = -1;
              }

              else
              {
                v19 = *(a2 + 40);
              }

              if (!v19)
              {
LABEL_16:
                if (!v18)
                {
                  v31 = *(a2 + 24);
                  if (v31)
                  {
                    LOBYTE(v36) = 0;
                    v38 = 0;
                    if (a3 && *(a3 + 32) == 1 && *(a3 + 28))
                    {
                      WebGPU::ShaderModule::convertPipelineLayout(a3, &v34);
                      if (v38 == 1)
                      {
                        v21 = v36;
                        if (HIDWORD(v37))
                        {
                          v22 = (v36 + 24 * HIDWORD(v37));
                          do
                          {
                            v23 = *(v21 + 5);
                            v24 = *(v21 + 1);
                            if (v23)
                            {
                              v25 = 120 * v23;
                              v26 = (v24 + 40);
                              do
                              {
                                v27 = *v26;
                                *v26 = 0;
                                if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v27, v20);
                                }

                                v26 += 15;
                                v25 -= 120;
                              }

                              while (v25);
                              v24 = *(v21 + 1);
                            }

                            if (v24)
                            {
                              *(v21 + 1) = 0;
                              *(v21 + 4) = 0;
                              WTF::fastFree(v24, v20);
                            }

                            v21 = (v21 + 24);
                          }

                          while (v21 != v22);
                          v21 = v36;
                        }

                        if (v21)
                        {
                          v36 = 0;
                          LODWORD(v37) = 0;
                          WTF::fastFree(v21, v20);
                        }

                        v36 = v34;
                        v37 = v35;
                        if (v38)
                        {
                          v28 = &v36;
                        }

                        else
                        {
                          v28 = 0;
                        }
                      }

                      else
                      {
                        v36 = v34;
                        v37 = v35;
                        v38 = 1;
                        v28 = &v36;
                      }
                    }

                    else
                    {
                      v28 = 0;
                    }

                    WGSL::prepare(v31, a4, v28, v15);
                  }

LABEL_52:
                  __break(0xC471u);
                  JUMPOUT(0x2256A9DF0);
                }

LABEL_51:
                mpark::throw_bad_variant_access(v13);
              }

LABEL_40:
              if (v19 == 1)
              {
                if (v18 == 1)
                {
                  goto LABEL_52;
                }
              }

              else if (v18 == 2)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            *(v13 + 2) = v17;
          }
        }
      }

      v18 = *(a2 + 40);
      if (v18 == 255)
      {
        v19 = -1;
      }

      else
      {
        v19 = *(a2 + 40);
      }

      if (!v19)
      {
        goto LABEL_16;
      }

      goto LABEL_40;
    }
  }

  *a6 = 0;
  a6[112] = 0;
}

void sub_2256AA0DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, WTF::StringImpl *a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, uint64_t a40, uint64_t a41, WTF::StringImpl *a42)
{
  WGSL::Reflection::EntryPointInformation::~EntryPointInformation((v42 + 8), a2);

  mpark::variant<WTF::String,WGSL::CompilationMessage>::~variant(&a38, v46);
  mpark::detail::destructor<mpark::detail::traits<WGSL::PrepareResult,WGSL::CompilationMessage>,(mpark::detail::Trait)1>::~destructor(&a42, v47);
  std::optional<WGSL::PipelineLayout>::~optional((v44 - 208), v48);
  WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v44 - 184), v49);

  _Unwind_Resume(a1);
}

void WebGPU::LibraryCreationResult::~LibraryCreationResult(WebGPU::LibraryCreationResult *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 13);
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          if (*(v5 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, (v5 + 8));
            v6 = *v5;
          }

          *(v5 + 24) = -1;
          *v5 = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  WGSL::Reflection::EntryPointInformation::~EntryPointInformation((this + 8), a2);
}

void WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::ConstantValue&>(uint64_t a1, uint64_t *a2, WTF::StringImpl *a3, uint64_t a4)
{
  v26 = a4;
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AA60CLL);
  }

  v7 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v7 = *a2;
    if (!*a2)
    {
      v8 = 0;
      v9 = *a3;
      v10 = *(*a3 + 16);
      if (v10 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v11 = WTF::StringImpl::hashSlowCase(v9);
      goto LABEL_9;
    }
  }

  v8 = *(v7 - 8);
  v9 = *a3;
  v10 = *(*a3 + 16);
  if (v10 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = v10 >> 8;
LABEL_9:
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v8;
    v15 = (v7 + 32 * v14);
    v16 = *v15;
    if (*v15 == -1)
    {
      v12 = (v7 + 32 * v14);
      goto LABEL_11;
    }

    if (!v16)
    {
      if (v12)
      {
        *v12 = 0u;
        *(v12 + 1) = 0u;
        --*(*a2 - 16);
        v15 = v12;
      }

      WTF::HashMapTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WGSL::ConstantValue&>(WTF::String const&,WGSL::ConstantValue&)::{lambda(void)#1}>(v15, a3, &v26);
      v19 = *a2;
      if (*a2)
      {
        v20 = *(v19 - 16);
        v21 = *(v19 - 12) + 1;
        *(v19 - 12) = v21;
        v22 = (v20 + v21);
        v23 = *(v19 - 4);
        if (v23 <= 0x400)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_21:
          if (3 * v23 > 4 * v22)
          {
LABEL_29:
            v24 = v19 + 32 * v23;
            v25 = 1;
            goto LABEL_32;
          }

          if (!v23)
          {
            v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v15);
            v19 = *a2;
            if (!*a2)
            {
LABEL_24:
              v23 = 0;
              goto LABEL_29;
            }

LABEL_28:
            v23 = *(v19 - 4);
            goto LABEL_29;
          }

LABEL_27:
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v15);
          v19 = *a2;
          if (!*a2)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }
      }

      if (v23 > 2 * v22)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (WTF::equal(v16, *a3, a3))
    {
      break;
    }

LABEL_11:
    v11 = i + v14;
  }

  v17 = *a2;
  if (*a2)
  {
    v18 = *(v17 - 4);
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
  v24 = v17 + 32 * v18;
LABEL_32:
  *a1 = v15;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
}

uint64_t *std::optional<WGSL::PipelineLayout>::~optional(uint64_t *a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 3);
    v4 = *a1;
    if (v3)
    {
      v5 = v4 + 24 * v3;
      do
      {
        v6 = *(v4 + 20);
        v7 = *(v4 + 8);
        if (v6)
        {
          v8 = 120 * v6;
          v9 = (v7 + 40);
          do
          {
            v10 = *v9;
            *v9 = 0;
            if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, a2);
            }

            v9 += 15;
            v8 -= 120;
          }

          while (v8);
          v7 = *(v4 + 8);
        }

        if (v7)
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          WTF::fastFree(v7, a2);
        }

        v4 += 24;
      }

      while (v4 != v5);
      v4 = *a1;
    }

    if (v4)
    {
      *a1 = 0;
      *(a1 + 2) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  return a1;
}

id WebGPU::createFunction(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v17, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v17 = &stru_2838D6D18;
  }

  [v7 setName:v17];
  v10 = v17;
  v17 = 0;

  v16 = 0;
  v11 = [v5 newFunctionWithDescriptor:v7 error:&v16];
  v12 = v16;
  v13 = v12;
  if (v12)
  {
    v15 = v12;
    WTFLogAlways();
  }

  [v11 setLabel:{v6, v15}];

  return v11;
}

void sub_2256AA838(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id WebGPU::errorValidatingBindGroup(uint64_t a1, WTF::StringImpl *a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    v37 = 0;
    goto LABEL_58;
  }

  v4 = a1;
  v5 = v3 + 2;
  ++v3[2];
  v6 = *(a1 + 60);
  if (v6)
  {
    v7 = a2;
    v46 = v3;
    v43 = v3 + 2;
    v8 = *(a1 + 48);
    v44 = v8 + 48 * v6;
    while (1)
    {
      v9 = *(v8 + 28);
      if (v9)
      {
        break;
      }

LABEL_4:
      v8 += 48;
      if (v8 == v44)
      {
        v37 = 0;
LABEL_56:
        v5 = v43;
        v3 = v46;
        v38 = *v43 - 1;
        if (*v43 == 1)
        {
          goto LABEL_57;
        }

LABEL_52:
        *v5 = v38;
        goto LABEL_58;
      }
    }

    v10 = *(v8 + 16);
    v11 = v10 + 40 * v9;
    while (1)
    {
      if (*(v10 + 16))
      {
        v12 = 0;
      }

      else
      {
        v12 = v10 + 8;
      }

      if (*(v10 + 16))
      {
        goto LABEL_7;
      }

      a2 = *(v10 + 4);
      v3 = v46;
      v13 = *(v46 + 6);
      if (!v13)
      {
        goto LABEL_51;
      }

      if (a2 == -2)
      {
LABEL_65:
        __break(0xC471u);
        JUMPOUT(0x2256AAC98);
      }

      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256AACB8);
      }

      v14 = *(v13 - 8);
      v15 = 9 * ((a2 + ~(a2 << 15)) ^ ((a2 + ~(a2 << 15)) >> 10));
      v16 = (v15 ^ (v15 >> 6)) + ~((v15 ^ (v15 >> 6)) << 11);
      v17 = v14 & (v16 ^ HIWORD(v16));
      v18 = (v13 + 136 * v17);
      v19 = *v18;
      if (*v18 != a2)
      {
        v20 = 1;
        while (v19 != -1)
        {
          v17 = (v17 + v20) & v14;
          v18 = (v13 + 136 * v17);
          v19 = *v18;
          ++v20;
          if (*v18 == a2)
          {
            goto LABEL_21;
          }
        }

        v18 = (v13 + 136 * *(v13 - 4));
      }

LABEL_21:
      if (v18 == (v13 + 136 * *(v13 - 4)))
      {
LABEL_51:
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer size is missing for binding at index %u bind group", *(v10 + 4)];
        v5 = v43;
        v38 = *v43 - 1;
        if (*v43 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_52;
      }

      if (*(v18 + 48))
      {
        v21 = 0;
        if (!v7)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v21 = *(v18 + 4);
        if (!v7)
        {
          goto LABEL_39;
        }
      }

      v22 = *v7;
      if (!*v7)
      {
        goto LABEL_39;
      }

      v23 = v18[2];
      if (v23 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256AACD8);
      }

      if (v23 == -1)
      {
        goto LABEL_65;
      }

      v24 = *(v22 - 8);
      v25 = 9 * ((v23 + ~(v23 << 15)) ^ ((v23 + ~(v23 << 15)) >> 10));
      v26 = (v25 ^ (v25 >> 6)) + ~((v25 ^ (v25 >> 6)) << 11);
      v27 = v24 & (v26 ^ HIWORD(v26));
      v28 = *(v22 + 16 * v27);
      if (v28 != v23)
      {
        break;
      }

LABEL_33:
      if (v27 == *(v22 - 4))
      {
        goto LABEL_39;
      }

      v30 = *(v22 + 16 * v27 + 8);
      if (v21 && v30 > v21)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer size from WGSL shader(%llu) is less than the binding buffer size(%llu)", v30, v21];
        goto LABEL_56;
      }

      if (v30 <= v21)
      {
        goto LABEL_39;
      }

LABEL_40:
      if (*v12)
      {
        v31 = v4;
        v32 = WebGPU::BindGroup::dynamicOffset(v4, a2, a3);
        v33 = *(v10 + 24);
        v34 = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"resourceOffset(%llu) + dynamicOffset(%u) overflows uint64_t", *(v10 + 24), v32];
          goto LABEL_56;
        }

        v35 = [*(*v12 + 8) length];
        v36 = v35 >= v34 && v35 - v34 >= v30;
        if (!v36 || (v4 = v31, v30 > *(v10 + 32)))
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer length(%llu) minus offset(%llu), (resourceOffset(%llu) + dynamicOffset(%u)), is less than required bufferSize(%llu)", v35, v34, *(v10 + 24), v32, v30];
          goto LABEL_56;
        }
      }

LABEL_7:
      v10 += 40;
      if (v10 == v11)
      {
        goto LABEL_4;
      }
    }

    v29 = 1;
    while (v28 != -1)
    {
      v27 = (v27 + v29) & v24;
      v28 = *(v22 + 16 * v27);
      ++v29;
      if (v28 == v23)
      {
        goto LABEL_33;
      }
    }

LABEL_39:
    v30 = v21;
    if (!v21)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

  v37 = 0;
  v38 = *v5 - 1;
  if (*v5 != 1)
  {
    goto LABEL_52;
  }

LABEL_57:
  v39 = v37;
  WebGPU::BindGroupLayout::~BindGroupLayout(v3, a2);
  bmalloc::api::tzoneFree(v40, v41);
  v37 = v39;
LABEL_58:

  return v37;
}

uint64_t WGSL::Reflection::EntryPointInformation::EntryPointInformation(uint64_t this, const WGSL::Reflection::EntryPointInformation *a2)
{
  v3 = this;
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 16) = 0;
  *(this + 8) = v5;
  *(this + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    this = WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 16, a2 + 2);
    *(v3 + 32) = 1;
  }

  *(v3 + 40) = 0;
  v6 = *(a2 + 5);
  if (!v6)
  {
    goto LABEL_61;
  }

  v7 = *(v6 - 12);
  if (!v7)
  {
    goto LABEL_61;
  }

  v8 = *(v6 - 12);
  v9 = *(v6 - 12);
  if (v7 == 1)
  {
    goto LABEL_12;
  }

  v10 = __clz(v7 - 1);
  if (v10)
  {
    v8 = (1 << -v10);
    v9 = 1 << -v10;
    if (v7 > 0x400)
    {
      if (v8 > 2 * v7)
      {
LABEL_14:
        v11 = v7;
        v12 = v9;
        if (v9 > 0x400)
        {
          if (v12 * 0.416666667 > v11)
          {
LABEL_19:
            if (v9 <= 8)
            {
              v13 = 8;
            }

            else
            {
              v13 = v9;
            }

            v14 = WTF::fastMalloc(((32 * v13) | 0x10));
            bzero(v14 + 4, 32 * v13);
            *(v3 + 40) = v14 + 4;
            v14[2] = v13 - 1;
            v14[3] = v13;
            *v14 = 0;
            v14[1] = v7;
            v16 = *(a2 + 5);
            if (v16)
            {
              v17 = *(v16 - 4);
              v18 = v16 + 32 * v17;
              if (*(v16 - 12))
              {
                if (!v17)
                {
                  v21 = 0;
                  v20 = *(a2 + 5);
LABEL_37:
                  v22 = v16 + 32 * v21;
                  if (v20 != v22)
                  {
                    while (1)
                    {
LABEL_40:
                      v23 = *(v3 + 40);
                      if (v23)
                      {
                        v24 = *(v23 - 8);
                        v25 = *v20;
                        v26 = *(*v20 + 16);
                        if (v26 >= 0x100)
                        {
                          goto LABEL_42;
                        }
                      }

                      else
                      {
                        v24 = 0;
                        v25 = *v20;
                        v26 = *(*v20 + 16);
                        if (v26 >= 0x100)
                        {
LABEL_42:
                          v27 = v26 >> 8;
                          goto LABEL_45;
                        }
                      }

                      v27 = WTF::StringImpl::hashSlowCase(v25);
LABEL_45:
                      v28 = 0;
                      do
                      {
                        v29 = v27 & v24;
                        v27 = ++v28 + v29;
                      }

                      while (*(v23 + 32 * v29));
                      v30 = *v20;
                      if (*v20)
                      {
                        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
                      }

                      v31 = *(v20 + 8);
                      if (v31)
                      {
                        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
                      }

                      v32 = v23 + 32 * v29;
                      v37 = *(v20 + 16);
                      v33 = *v32;
                      *v32 = v30;
                      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v33, v15);
                      }

                      v34 = *(v32 + 8);
                      *(v32 + 8) = v31;
                      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v34, v15);
                      }

                      *(v32 + 16) = v37;
                      do
                      {
                        v20 += 32;
                      }

                      while (v20 != v18 && (*v20 + 1) <= 1);
                      if (v20 == v22)
                      {
                        goto LABEL_61;
                      }
                    }
                  }

                  goto LABEL_61;
                }

                v19 = 32 * v17;
                v20 = *(a2 + 5);
                while ((*v20 + 1) <= 1)
                {
                  v20 += 32;
                  v19 -= 32;
                  if (!v19)
                  {
                    v20 = v18;
                    break;
                  }
                }

LABEL_29:
                v21 = *(v16 - 4);
                goto LABEL_37;
              }
            }

            else
            {
              v18 = 0;
              v17 = 0;
            }

            v20 = v18;
            v18 = v16 + 32 * v17;
            if (v16)
            {
              goto LABEL_29;
            }

            v22 = 0;
            if (v20)
            {
              goto LABEL_40;
            }

LABEL_61:
            v35 = *(a2 + 3);
            v36 = *(a2 + 5);
            *(v3 + 64) = *(a2 + 4);
            *(v3 + 80) = v36;
            *(v3 + 48) = v35;
            return v3;
          }
        }

        else if (v12 * 0.604166667 > v11)
        {
          goto LABEL_19;
        }

        v9 *= 2;
        goto LABEL_19;
      }

LABEL_13:
      v9 *= 2;
      goto LABEL_14;
    }

LABEL_12:
    if (3 * v8 > 4 * v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __break(1u);
  return this;
}

void sub_2256AB088(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  std::optional<WGSL::PipelineLayout>::~optional(v3, a2);
  v6 = v2[1];
  v2[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 3);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v3;
  if (v3)
  {
    if (v3 >= 0xAAAAAAB)
    {
LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x2256AB274);
    }

    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = v6;
      v9 = *a2;
      v10 = *a2 + 24 * v7;
      do
      {
        *v8 = *v9;
        v11 = *(v9 + 20);
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *(v8 + 20) = v11;
        if (v11)
        {
          if (v11 >= 0x2222223)
          {
            goto LABEL_15;
          }

          v12 = 120 * v11;
          v13 = WTF::fastMalloc((120 * v11));
          *(v8 + 16) = v12 / 0x78;
          *(v8 + 8) = v13;
          v14 = *(v9 + 20);
          if (v14)
          {
            v15 = *(v9 + 8);
            v16 = (v15 + 120 * v14);
            do
            {
              v17 = *v15;
              v18 = v15[1];
              *(v13 + 32) = *(v15 + 4);
              *v13 = v17;
              *(v13 + 16) = v18;
              v19 = *(v15 + 5);
              if (v19)
              {
                atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
              }

              *(v13 + 40) = v19;
              *(v13 + 48) = v15[3];
              v20 = v15[4];
              v21 = v15[5];
              v22 = v15[6];
              *(v13 + 109) = *(v15 + 109);
              *(v13 + 80) = v21;
              *(v13 + 96) = v22;
              *(v13 + 64) = v20;
              v13 += 120;
              v15 = (v15 + 120);
            }

            while (v15 != v16);
          }
        }

        v8 += 24;
        v9 += 24;
      }

      while (v9 != v10);
    }
  }

  return a1;
}

void sub_2256AB280(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(uint64_t *result, unsigned __int8 **a2)
{
  v2 = result;
  *result = 0;
  if (!*a2)
  {
    return v2;
  }

  v3 = *a2;
  v4 = *(*a2 - 3);
  if (!v4)
  {
    return v2;
  }

  v6 = *(v3 - 3);
  v7 = *(v3 - 3);
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v8 = __clz(v4 - 1);
  if (v8)
  {
    v6 = (1 << -v8);
    v7 = 1 << -v8;
    if (v4 > 0x400)
    {
      if (v6 > 2 * v4)
      {
LABEL_8:
        v9 = v4;
        v10 = v7;
        if (v7 > 0x400)
        {
          if (v10 * 0.416666667 > v9)
          {
            goto LABEL_13;
          }
        }

        else if (v10 * 0.604166667 > v9)
        {
LABEL_13:
          if (v7 <= 8)
          {
            v11 = 8;
          }

          else
          {
            v11 = v7;
          }

          v12 = WTF::fastMalloc(((32 * v11) | 0x10));
          bzero(v12 + 4, 32 * v11);
          *v2 = (v12 + 4);
          v12[2] = v11 - 1;
          v12[3] = v11;
          *v12 = 0;
          v12[1] = v4;
          v14 = *a2;
          if (*a2)
          {
            v15 = *(v14 - 1);
            v16 = &v14[32 * v15];
            if (*(v14 - 3))
            {
              if (!v15)
              {
                v19 = 0;
                v18 = v14;
LABEL_32:
                v20 = &v14[32 * v19];
                if (v18 != v20)
                {
                  while (1)
                  {
LABEL_35:
                    v21 = *v2;
                    if (*v2)
                    {
                      v22 = *(v21 - 8);
                      v23 = *v18;
                      v24 = *(*v18 + 16);
                      if (v24 < 0x100)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v22 = 0;
                      v23 = *v18;
                      v24 = *(*v18 + 16);
                      if (v24 < 0x100)
                      {
LABEL_39:
                        v25 = WTF::StringImpl::hashSlowCase(v23);
                        goto LABEL_40;
                      }
                    }

                    v25 = v24 >> 8;
LABEL_40:
                    v26 = 0;
                    do
                    {
                      v27 = v25 & v22;
                      v25 = ++v26 + v27;
                    }

                    while (*(v21 + 32 * v27));
                    v28 = *v18;
                    if (*v18)
                    {
                      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
                    }

                    v32 = v28;
                    LOBYTE(v33[0]) = 0;
                    v34 = -1;
                    v29 = v18[24];
                    if (v29 != 255)
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v36, v33, v18 + 8);
                      v34 = v18[24];
                      v28 = v32;
                    }

                    v30 = v21 + 32 * v27;
                    v31 = *v30;
                    *v30 = v28;
                    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v31, v13);
                    }

                    if (*(v30 + 24) != 255)
                    {
                      if (v34 == 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, (v30 + 8));
                        *(v30 + 24) = -1;
                      }

                      else
                      {
LABEL_53:
                        v35 = (v30 + 8);
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v34, &v35, (v30 + 8), v33);
                      }

                      if (v34 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
                      }

                      goto LABEL_56;
                    }

                    if (v34 != 255)
                    {
                      goto LABEL_53;
                    }

LABEL_56:
                    v34 = -1;
                    do
                    {
                      v18 += 32;
                    }

                    while (v18 != v16 && (*v18 + 1) <= 1);
                    if (v18 == v20)
                    {
                      return v2;
                    }
                  }
                }

                return v2;
              }

              v17 = 32 * v15;
              v18 = v14;
              while ((*v18 + 1) <= 1)
              {
                v18 += 32;
                v17 -= 32;
                if (!v17)
                {
                  v18 = v16;
                  break;
                }
              }

              if (v14)
              {
LABEL_24:
                v19 = *(v14 - 1);
                goto LABEL_32;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }

          v18 = v16;
          v16 = &v14[32 * v15];
          if (v14)
          {
            goto LABEL_24;
          }

LABEL_27:
          v20 = 0;
          if (v18)
          {
            goto LABEL_35;
          }

          return v2;
        }

        v7 *= 2;
        goto LABEL_13;
      }

LABEL_7:
      v7 *= 2;
      goto LABEL_8;
    }

LABEL_6:
    if (3 * v6 > 4 * v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_2256AB5DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&a14, (v16 + 8));
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(uint64_t a1, _BYTE **a2, unsigned int **a3, unsigned int **a4)
{
  v4 = *a2;
  v5 = (*a2)[16];
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (v5 != 255)
        {
          if (v5 == 1)
          {
            *a3 = *a4;
            return;
          }

          v33 = a4;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v42, *a2);
          a4 = v33;
        }

        *v4 = *a4;
        v7 = 1;
        goto LABEL_91;
      }

      if (v5 != 255)
      {
        if (!(*a2)[16])
        {
          *a3 = *a4;
          return;
        }

        v32 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v41, *a2);
        a4 = v32;
      }

      *v4 = *a4;
      *(v4 + 16) = 0;
      return;
    }

    if (a1 == 2)
    {
      if (v5 != 255)
      {
        if (v5 == 2)
        {
          *a3 = *a4;
          return;
        }

        v27 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v43, *a2);
        a4 = v27;
      }

      *v4 = *a4;
      v7 = 2;
      goto LABEL_91;
    }

    if (a1 == 3)
    {
      if (v5 == 255)
      {
LABEL_14:
        *v4 = *a4;
        v7 = 3;
        goto LABEL_91;
      }

      if (v5 != 3)
      {
        v6 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, *a2);
        a4 = v6;
        goto LABEL_14;
      }

LABEL_45:
      *a3 = *a4;
      return;
    }

    if (v5 != 255)
    {
      if (v5 == 4)
      {
        goto LABEL_45;
      }

      v31 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, *a2);
      a4 = v31;
    }

    *v4 = *a4;
    v7 = 4;
    goto LABEL_91;
  }

  if (a1 <= 7)
  {
    if (a1 == 5)
    {
      if (v5 != 255)
      {
        if (v5 == 5)
        {
          *a3 = *a4;
          return;
        }

        v28 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, *a2);
        a4 = v28;
      }

      *v4 = *a4;
      v7 = 5;
      goto LABEL_91;
    }

    if (a1 == 6)
    {
      if (v5 != 255)
      {
        if (v5 == 6)
        {
          *a3 = *a4;
          return;
        }

        v34 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v47, *a2);
        a4 = v34;
      }

      *v4 = *a4;
      v7 = 6;
      goto LABEL_91;
    }

    if (v5 != 255)
    {
      if (v5 == 7)
      {
        v17 = *a4;
        *a4 = 0;
        v9 = *a3;
        *a3 = v17;
        if (v9)
        {
          v18 = *v9;
          if (v18)
          {
            v19 = 24 * v18;
            v20 = v9 + 6;
            do
            {
              a2 = (v20 - 16);
              if (*v20 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, a2);
              }

              *v20 = -1;
              v20 += 24;
              v19 -= 24;
            }

            while (v19);
          }

LABEL_70:
          v26 = v9;
LABEL_93:
          WTF::fastFree(v26, a2);
          return;
        }

        return;
      }

      v37 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v49, *a2);
      a4 = v37;
    }

    v38 = *a4;
    *a4 = 0;
    *v4 = v38;
    v7 = 7;
LABEL_91:
    *(v4 + 16) = v7;
    return;
  }

  if (a1 == 8)
  {
    if (v5 != 255)
    {
      if (v5 == 8)
      {
        v13 = *a4;
        *a4 = 0;
        v9 = *a3;
        *a3 = v13;
        if (v9)
        {
          v14 = *v9;
          if (v14)
          {
            v15 = 24 * v14;
            v16 = v9 + 6;
            do
            {
              a2 = (v16 - 16);
              if (*v16 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, a2);
              }

              *v16 = -1;
              v16 += 24;
              v15 -= 24;
            }

            while (v15);
          }

          goto LABEL_70;
        }

        return;
      }

      v29 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v51, *a2);
      a4 = v29;
    }

    v30 = *a4;
    *a4 = 0;
    *v4 = v30;
    v7 = 8;
    goto LABEL_91;
  }

  if (a1 != 9)
  {
    if (v5 != 255)
    {
      if (v5 == 10)
      {
        v21 = *a4;
        *a4 = 0;
        v22 = *a3;
        *a3 = v21;
        if (v22)
        {
          v23 = *(v22 - 1);
          if (v23)
          {
            v24 = v22;
            do
            {
              v25 = *v24;
              if (*v24 != -1)
              {
                if (*(v24 + 24) != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v54, v24 + 8);
                  v25 = *v24;
                }

                *(v24 + 24) = -1;
                *v24 = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, a2);
                }
              }

              v24 += 8;
              --v23;
            }

            while (v23);
          }

          v26 = (v22 - 4);
          goto LABEL_93;
        }

        return;
      }

      v39 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, *a2);
      a4 = v39;
    }

    *v4 = 0;
    v40 = *a4;
    *a4 = 0;
    *v4 = v40;
    v7 = 10;
    goto LABEL_91;
  }

  if (v5 == 255)
  {
LABEL_86:
    *(v4 + 16) = -1;
    *v4 = *a4;
    v36 = a4[1];
    a4[1] = 0;
    *(v4 + 8) = v36;
    v7 = 9;
    goto LABEL_91;
  }

  if (v5 != 9)
  {
    v35 = a4;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v53, *a2);
    a4 = v35;
    goto LABEL_86;
  }

  *a3 = *a4;
  v8 = a4[1];
  a4[1] = 0;
  v9 = a3[1];
  a3[1] = v8;
  if (v9)
  {
    v10 = *v9;
    if (v10)
    {
      v11 = 24 * v10;
      v12 = v9 + 6;
      do
      {
        a2 = (v12 - 16);
        if (*v12 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v52, a2);
        }

        *v12 = -1;
        v12 += 24;
        v11 -= 24;
      }

      while (v11);
    }

    goto LABEL_70;
  }
}

uint64_t _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        *a3 = *a4;
      }

      else
      {
        *a3 = *a4;
      }
    }

    else if (result == 2)
    {
      *a3 = *a4;
    }

    else
    {
      *a3 = *a4;
    }
  }

  else
  {
    if (result <= 7)
    {
      if (result == 5)
      {
        *a3 = *a4;
        return result;
      }

      if (result == 6)
      {
        *a3 = *a4;
        return result;
      }

      v17 = *a4;
      if (*a4)
      {
        v18 = *v17;
        v19 = 24 * v18;
        result = WTF::fastMalloc((24 * v18 + 8));
        v14 = result;
        *result = v18;
        if (v18)
        {
          v20 = (result + 24);
          v21 = v17 + 6;
          do
          {
            *(v20 - 16) = 0;
            *v20 = -1;
            result = *v21;
            if (result != 255)
            {
              result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(result, v22, v20 - 16, v21 - 16);
              *v20 = *v21;
            }

            v20 += 24;
            v21 += 24;
            v19 -= 24;
          }

          while (v19);
        }

LABEL_35:
        *a3 = v14;
        return result;
      }

LABEL_39:
      *a3 = 0;
      return result;
    }

    if (result == 8)
    {
      v11 = *a4;
      if (*a4)
      {
        v12 = *v11;
        v13 = 24 * v12;
        result = WTF::fastMalloc((24 * v12 + 8));
        v14 = result;
        *result = v12;
        if (v12)
        {
          v15 = (result + 24);
          v16 = v11 + 6;
          do
          {
            *(v15 - 16) = 0;
            *v15 = -1;
            result = *v16;
            if (result != 255)
            {
              result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(result, v23, v15 - 16, v16 - 16);
              *v15 = *v16;
            }

            v15 += 24;
            v16 += 24;
            v13 -= 24;
          }

          while (v13);
        }

        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (result == 9)
    {
      *a3 = *a4;
      v5 = a4[1];
      if (v5)
      {
        v6 = *v5;
        v7 = 24 * v6;
        result = WTF::fastMalloc((24 * v6 + 8));
        v8 = result;
        *result = v6;
        if (v6)
        {
          v9 = (result + 24);
          v10 = v5 + 6;
          do
          {
            *(v9 - 16) = 0;
            *v9 = -1;
            result = *v10;
            if (result != 255)
            {
              result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(result, v24, v9 - 16, v10 - 16);
              *v9 = *v10;
            }

            v9 += 24;
            v10 += 24;
            v7 -= 24;
          }

          while (v7);
        }

        a3[1] = v8;
      }

      else
      {
        a3[1] = 0;
      }
    }

    else
    {

      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(a3, a4);
    }
  }

  return result;
}

void sub_2256ABEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  if (*v16 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&a12, v16 - 16);
  }

  *v16 = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>::~KeyValuePair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 8));
  }

  *(a1 + 24) = -1;
  v3 = *a1;
  *a1 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

__n128 std::optional<WebGPU::LibraryCreationResult>::optional[abi:sn200100]<WebGPU::LibraryCreationResult,0>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *a1 = v2;
  v3 = *(a2 + 2);
  *(a2 + 2) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = v3;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v4 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v4;
    LODWORD(v4) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 32) = v4;
    LODWORD(v4) = *(a2 + 9);
    *(a2 + 9) = 0;
    *(a1 + 36) = v4;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  v5 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 48) = v5;
  result = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = result;
  *(a1 + 104) = 0;
  v8 = *(a2 + 13);
  *(a2 + 13) = 0;
  *(a1 + 104) = v8;
  *(a1 + 112) = 1;
  return result;
}

void WGSL::PipelineLayout::~PipelineLayout(WGSL::PipelineLayout *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  v4 = *this;
  if (v3)
  {
    v5 = v4 + 24 * v3;
    do
    {
      v6 = *(v4 + 20);
      v7 = *(v4 + 8);
      if (v6)
      {
        v8 = 120 * v6;
        v9 = (v7 + 40);
        do
        {
          v10 = *v9;
          *v9 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, a2);
          }

          v9 += 15;
          v8 -= 120;
        }

        while (v8);
        v7 = *(v4 + 8);
      }

      if (v7)
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        WTF::fastFree(v7, a2);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v4 = *this;
  }

  if (v4)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v4, a2);
  }
}

uint64_t mpark::variant<WTF::String,WGSL::CompilationMessage>::~variant(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 24) != 255)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = result;
        WTF::StringImpl::destroy(v2, a2);
        result = v3;
      }
    }
  }

  *(result + 24) = -1;
  return result;
}

WTF::StringImpl **mpark::detail::destructor<mpark::detail::traits<WGSL::PrepareResult,WGSL::CompilationMessage>,(mpark::detail::Trait)1>::~destructor(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  if (*(result + 40) != 255)
  {
    if (*(result + 40))
    {
      v8 = *result;
      *result = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v9 = result;
        WTF::StringImpl::destroy(v8, a2);
        result = v9;
      }
    }

    else
    {
      v2 = result;
      WGSL::CompilationScope::~CompilationScope((result + 1));
      result = v2;
      v4 = *v2;
      if (*v2)
      {
        v5 = *(v4 - 1);
        if (v5)
        {
          v6 = (v4 + 8);
          do
          {
            if (*(v6 - 1) != -1)
            {
              WGSL::Reflection::EntryPointInformation::~EntryPointInformation(v6, v3);
              v7 = *(v6 - 1);
              *(v6 - 1) = 0;
              if (v7)
              {
                if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v7, v3);
                }
              }
            }

            v6 = (v6 + 104);
            --v5;
          }

          while (v5);
        }

        WTF::fastFree((v4 - 16), v3);
        result = v2;
      }
    }
  }

  *(result + 40) = -1;
  return result;
}

void *WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, WTF::StringImpl *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = *result;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          if (*(v5 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, (v5 + 8));
            v6 = *v5;
          }

          *(v5 + 24) = -1;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

WebGPU::PipelineLayout *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::PipelineLayout>::deref(WebGPU::PipelineLayout *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc(((32 * a2) | 0x10));
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 32 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v5 + 32 * v12;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
            v18 = *(v15 + 4);
            if (v18 >= 0x100)
            {
              goto LABEL_20;
            }

LABEL_22:
            v19 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v17 = 0;
            v18 = *(v15 + 4);
            if (v18 < 0x100)
            {
              goto LABEL_22;
            }

LABEL_20:
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 32 * v21));
          v22 = v16 + 32 * v21;
          if (*(v22 + 24) == 255)
          {
            *v22 = 0;
          }

          else
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v33, (v22 + 8));
            v23 = *v22;
            *(v22 + 24) = -1;
            *v22 = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v9);
            }
          }

          v24 = *v14;
          *v14 = 0;
          *v22 = v24;
          *(v22 + 8) = 0;
          *(v22 + 24) = -1;
          v25 = *(v14 + 24);
          if (v25 != 255)
          {
            v9 = (v14 + 8);
            if (*(v14 + 24) <= 4u)
            {
              if (*(v14 + 24) <= 1u)
              {
                if (*(v14 + 24))
                {
                  *(v22 + 8) = *v9;
                  *(v22 + 24) = 1;
                  if (*(v14 + 24) != 255)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  *(v22 + 8) = *v9;
                  *(v22 + 24) = 0;
                  if (*(v14 + 24) != 255)
                  {
                    goto LABEL_62;
                  }
                }
              }

              else if (v25 == 2)
              {
                *(v22 + 8) = *v9;
                *(v22 + 24) = 2;
                if (*(v14 + 24) != 255)
                {
                  goto LABEL_62;
                }
              }

              else if (v25 == 3)
              {
                *(v22 + 8) = *v9;
                *(v22 + 24) = 3;
                if (*(v14 + 24) != 255)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                *(v22 + 8) = *v9;
                *(v22 + 24) = 4;
                if (*(v14 + 24) != 255)
                {
                  goto LABEL_62;
                }
              }
            }

            else if (*(v14 + 24) > 7u)
            {
              if (v25 == 8)
              {
                v27 = *v9;
                *v9 = 0;
                *(v22 + 8) = v27;
                *(v22 + 24) = 8;
                if (*(v14 + 24) != 255)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                if (v25 != 9)
                {
                  *(v22 + 8) = 0;
                  v29 = *v9;
                  *v9 = 0;
                  *(v22 + 8) = v29;
                  *(v22 + 24) = 10;
                  if (*(v14 + 24) == 255)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_62;
                }

                *(v22 + 8) = *(v14 + 8);
                v26 = *(v14 + 16);
                *(v14 + 16) = 0;
                *(v22 + 16) = v26;
                *(v22 + 24) = *(v14 + 24);
                if (*(v14 + 24) != 255)
                {
LABEL_62:
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v9);
                }
              }
            }

            else if (v25 == 5)
            {
              *(v22 + 8) = *v9;
              *(v22 + 24) = 5;
              if (*(v14 + 24) != 255)
              {
                goto LABEL_62;
              }
            }

            else
            {
              if (v25 == 6)
              {
                *(v22 + 8) = *v9;
                *(v22 + 24) = 6;
                if (*(v14 + 24) == 255)
                {
                  goto LABEL_63;
                }

                goto LABEL_62;
              }

              v28 = *v9;
              *v9 = 0;
              *(v22 + 8) = v28;
              *(v22 + 24) = 7;
              if (*(v14 + 24) != 255)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_63:
          *(v14 + 24) = -1;
          v30 = *v14;
          *v14 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v9);
          }

          if (v14 == a3)
          {
            v13 = v22;
          }

          goto LABEL_10;
        }

        if (*(v14 + 24) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, (v14 + 8));
          v15 = *v14;
        }

        *(v14 + 24) = -1;
        *v14 = 0;
        if (v15)
        {
          if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v9);
          }
        }
      }

LABEL_10:
      if (++v12 == v6)
      {
        goto LABEL_67;
      }
    }
  }

  v13 = 0;
  result = 0;
  if (v5)
  {
LABEL_67:
    WTF::fastFree((v5 - 16), v9);
    return v13;
  }

  return result;
}

void WTF::HashMapTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WGSL::ConstantValue&>(WTF::String const&,WGSL::ConstantValue&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *a3;
  LOBYTE(v10[0]) = 0;
  v8 = 255;
  v11 = -1;
  v9 = *(v7 + 16);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v13, v10, v7);
    v8 = *(v7 + 16);
    v11 = *(v7 + 16);
  }

  if (*(a1 + 24) == 255)
  {
    if (v8 == 255)
    {
      goto LABEL_13;
    }
  }

  else if (v8 == 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, (a1 + 8));
    *(a1 + 24) = -1;
    goto LABEL_13;
  }

  v12 = (a1 + 8);
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v8, &v12, (a1 + 8), v10);
LABEL_13:
  if (v11 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v10);
  }
}

void sub_2256AC840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, unsigned __int8 a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v16 - 17, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, int *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 2) = -1;
      *v16 = 0;
      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFE;
  v13 = v9 + 10;
  v14 = v12;
  do
  {
    *(v13 - 6) = -1;
    *(v13 - 2) = -1;
    *(v13 - 2) = 0;
    *v13 = 0;
    v13 += 4;
    v14 -= 2;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      v20 = *v19;
      if (*v19 != -2)
      {
        if (v20 == -1)
        {
          v21 = *(v19 + 1);
          if (v21)
          {
            WTF::fastFree((v21 - 16), v10);
          }
        }

        else
        {
          v22 = *a1;
          if (*a1)
          {
            v23 = *(v22 - 8);
          }

          else
          {
            v23 = 0;
          }

          v24 = 0;
          v25 = 9 * ((v20 + ~(v20 << 15)) ^ ((v20 + ~(v20 << 15)) >> 10));
          v26 = ((v25 ^ (v25 >> 6)) + ~((v25 ^ (v25 >> 6)) << 11)) ^ (((v25 ^ (v25 >> 6)) + ~((v25 ^ (v25 >> 6)) << 11)) >> 16);
          do
          {
            v27 = v26 & v23;
            v26 = ++v24 + v27;
          }

          while (*(v22 + 16 * v27) != -1);
          v28 = v22 + 16 * v27;
          v29 = *(v28 + 8);
          if (v29)
          {
            WTF::fastFree((v29 - 16), v10);
            v20 = *v19;
          }

          *v28 = v20;
          *(v28 + 8) = 0;
          v30 = *(v19 + 1);
          *(v19 + 1) = 0;
          *(v28 + 8) = v30;
          v31 = *(v19 + 1);
          if (v31)
          {
            WTF::fastFree((v31 - 16), v10);
          }

          if (v19 == a3)
          {
            v18 = v28;
          }
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

_OWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 2) = -1;
      *v16 = 0;
      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFE;
  v13 = v9 + 10;
  v14 = v12;
  do
  {
    *(v13 - 6) = -1;
    *(v13 - 2) = -1;
    *(v13 - 2) = 0;
    *v13 = 0;
    v13 += 4;
    v14 -= 2;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      if (*v19 <= 0xFFFFFFFD)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = 0;
        v23 = 9 * ((*v19 + ~(*v19 << 15)) ^ ((*v19 + ~(*v19 << 15)) >> 10));
        v24 = ((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) ^ (((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) >> 16);
        do
        {
          v25 = v24 & v21;
          v24 = ++v22 + v25;
        }

        while (*(v20 + 16 * v25) != -1);
        v26 = (v20 + 16 * v25);
        *v26 = *v19;
        if (v19 == a3)
        {
          v18 = v26;
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

_DWORD *WTF::RefCounted<WebGPU::BindGroupLayout>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebGPU::BindGroupLayout::~BindGroupLayout((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebGPU::Device::createPipelineLayout(uint64_t a1@<X0>, void *a2@<X1>, NSString *a3@<X2>, WebGPU::PipelineLayout *a4@<X8>)
{
  v4 = a1;
  if (*a2 || !*(a1 + 8))
  {
    if (WebGPU::PipelineLayout::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::PipelineLayout::operatorNewSlow(0x88);
    }

    v7 = NonCompact;
    WebGPU::PipelineLayout::PipelineLayout(NonCompact, v4);
    *a4 = v7;
    return;
  }

  LOBYTE(v143) = 0;
  v145 = 0;
  v9 = a2[2];
  if (!v9)
  {
    goto LABEL_112;
  }

  v10 = *(a1 + 96);
  if (v9 > v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many bind groups(%zu), limit(%u)", a2[2], v10];
    if ((a3 & 1) == 0)
    {
      WebGPU::Device::generateAValidationError(v4, v11);
    }

    if (WebGPU::PipelineLayout::s_heapRef)
    {
      v13 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, v12);
LABEL_13:
      v14 = v13;
      WebGPU::PipelineLayout::PipelineLayout(v13, v4);
      goto LABEL_202;
    }

    goto LABEL_215;
  }

  v15 = a2[3];
  v16 = 8 * v9;
  v17 = v15;
  do
  {
    if (!*v17)
    {
      if (WebGPU::PipelineLayout::s_heapRef)
      {
        v59 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, a2);
      }

      else
      {
        v59 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
      }

      v14 = v59;
      WebGPU::PipelineLayout::PipelineLayout(v59, v4);
      goto LABEL_202;
    }

    ++v17;
    v16 -= 8;
  }

  while (v16);
  if (v9 >> 29)
  {
    __break(0xC471u);
LABEL_224:
    JUMPOUT(0x2256AD8A8);
  }

  v18 = WTF::fastMalloc((8 * v9));
  v20 = v18;
  v21 = 0;
  DWORD2(v146) = v9;
  *&v146 = v18;
  do
  {
    v22 = v15[v21];
    ++*(v22 + 8);
    *(v18 + 8 * v21++) = v22;
  }

  while (v9 != v21);
  HIDWORD(v146) = v21;
  if (!v21)
  {
LABEL_101:
    std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(&v143, &v146);
    LODWORD(v21) = HIDWORD(v146);
    v63 = 1;
    v20 = v146;
    goto LABEL_102;
  }

  v23 = 0;
  LODWORD(v24) = 0;
  LODWORD(v25) = 0;
  LODWORD(v26) = 0;
  LODWORD(v27) = 0;
  LODWORD(v28) = 0;
  while (1)
  {
    v29 = *(v20 + v23);
    if (*(v29 + 104) != v4)
    {
LABEL_80:
      if ((a3 & 1) == 0)
      {
        WebGPU::Device::generateAValidationError(v4, &cfstr_DeviceMismatch_0.isa);
      }

      if (!WebGPU::PipelineLayout::s_heapRef)
      {
        goto LABEL_219;
      }

      goto LABEL_91;
    }

    if ((*(v29 + 72) & 1) == 0)
    {
LABEL_84:
      if ((a3 & 1) == 0)
      {
        WebGPU::Device::generateAValidationError(v4, &cfstr_BindGroupLayou.isa);
      }

      if (!WebGPU::PipelineLayout::s_heapRef)
      {
        goto LABEL_219;
      }

LABEL_91:
      v61 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, v19);
      goto LABEL_92;
    }

    v24 = (*(v29 + 124) + v24);
    v25 = (*(v29 + 136) + v25);
    v28 = (*(v29 + 148) + v28);
    v27 = (*(v29 + 160) + v27);
    v26 = (*(v29 + 172) + v26);
    v19 = *(v4 + 128);
    v30 = *(v4 + 132);
    v32 = *(v4 + 116);
    v31 = *(v4 + 120);
    v33 = *(v4 + 124);
    v34 = v24 > v30 || v25 > v33;
    v35 = v34 || v28 > v31;
    v36 = v35 || v27 > v32;
    if (v36 || v26 > v19)
    {
      break;
    }

    v23 += 8;
    if (8 * v21 == v23)
    {
      v38 = 0;
      LODWORD(v24) = 0;
      LODWORD(v25) = 0;
      LODWORD(v26) = 0;
      LODWORD(v27) = 0;
      LODWORD(v28) = 0;
      do
      {
        v39 = *(v20 + v38);
        if (*(v39 + 104) != v4)
        {
          goto LABEL_80;
        }

        if (*(v39 + 72) != 1)
        {
          goto LABEL_84;
        }

        v24 = (*(v39 + 128) + v24);
        v25 = (*(v39 + 140) + v25);
        v28 = (*(v39 + 152) + v28);
        v27 = (*(v39 + 164) + v27);
        v26 = (*(v39 + 176) + v26);
        if (v24 > v30 || v25 > v33 || v28 > v31 || v27 > v32 || v26 > v19)
        {
          goto LABEL_88;
        }

        v38 += 8;
      }

      while (8 * v21 != v38);
      v44 = 0;
      LODWORD(v24) = 0;
      LODWORD(v25) = 0;
      LODWORD(v26) = 0;
      LODWORD(v27) = 0;
      LODWORD(v28) = 0;
      do
      {
        v45 = *(v20 + v44);
        if (*(v45 + 104) != v4)
        {
          goto LABEL_80;
        }

        if (*(v45 + 72) != 1)
        {
          goto LABEL_84;
        }

        v24 = (*(v45 + 132) + v24);
        v25 = (*(v45 + 144) + v25);
        v28 = (*(v45 + 156) + v28);
        v27 = (*(v45 + 168) + v27);
        v26 = (*(v45 + 180) + v26);
        if (v24 > v30 || v25 > v33 || v28 > v31 || v27 > v32 || v26 > v19)
        {
          goto LABEL_88;
        }

        v44 += 8;
      }

      while (8 * v21 != v44);
      v50 = (v9 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v50)
      {
        v51 = v50 + 1;
        v52 = (v50 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v53 = (v20 + 8 * v52);
        v54 = 0;
        v55 = (v20 + 8);
        v56 = v52;
        v57 = 0;
        do
        {
          v57 = vadd_s32((*(v55 - 1))[26], v57);
          v54 = vadd_s32((*v55)[26], v54);
          v55 += 2;
          v56 -= 2;
        }

        while (v56);
        v58 = vadd_s32(v54, v57);
        if (v51 == v52)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v58 = 0;
        v53 = v20;
      }

      do
      {
        v64 = *v53++;
        v58 = vadd_s32(v64[26], v58);
      }

      while (v53 != (v20 + 8 * v21));
LABEL_96:
      v65 = *(v4 + 108);
      if (v58.i32[0] <= v65)
      {
        v68 = *(v4 + 112);
        if (v58.i32[1] <= v68)
        {
          goto LABEL_101;
        }

        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many dynamic storage buffers: used(%u), limit(%u)", v58.u32[1], v68];
        WebGPU::reportErrorInCreatePipelineLayout(v66, a3, v4, v69);
      }

      else
      {
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many dynamic uniform buffers: used(%u), limit(%u)", v58.u32[0], v65];
        WebGPU::reportErrorInCreatePipelineLayout(v66, a3, v4, v67);
      }

      WebGPU::PipelineLayout::createInvalid(a4, v4);
      v63 = 0;
      goto LABEL_102;
    }
  }

LABEL_88:
  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource usage limits exceeded: uniformBufferCount(%u) > deviceLimits.maxUniformBuffersPerShaderStage(%u) || storageBufferCount(%u) > deviceLimits.maxStorageBuffersPerShaderStage(%u) || samplerCount(%u) > deviceLimits.maxSamplersPerShaderStage(%u) || textureCount(%u) > deviceLimits.maxSampledTexturesPerShaderStage(%u) || storageTextureCount(%u) > deviceLimits.maxStorageTexturesPerShaderStage(%u)", v24, v30, v25, v33, v28, v31, v27, v32, v26, v19];
  if ((a3 & 1) == 0)
  {
    WebGPU::Device::generateAValidationError(v4, v60);
  }

  if (WebGPU::PipelineLayout::s_heapRef)
  {
    goto LABEL_91;
  }

LABEL_219:
  v61 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
LABEL_92:
  v62 = v61;
  WebGPU::PipelineLayout::PipelineLayout(v61, v4);
  v63 = 0;
  *a4 = v62;
LABEL_102:
  if (v21)
  {
    v70 = 8 * v21;
    v71 = v20;
    do
    {
      v74 = *v71;
      *v71 = 0;
      if (v74)
      {
        if (*(v74 + 2) == 1)
        {
          WebGPU::BindGroupLayout::~BindGroupLayout(v74, a2);
          bmalloc::api::tzoneFree(v72, v73);
        }

        else
        {
          --*(v74 + 2);
        }
      }

      v71 = (v71 + 8);
      v70 -= 8;
    }

    while (v70);
  }

  if (v20)
  {
    WTF::fastFree(v20, a2);
  }

  if ((v63 & 1) == 0)
  {
    goto LABEL_203;
  }

LABEL_112:
  v75 = *(v4 + 512);
  if (v75 == -1)
  {
    WebGPU::Device::loseTheDevice(v4, 0);
    if (WebGPU::PipelineLayout::s_heapRef)
    {
      v13 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, v82);
      goto LABEL_13;
    }

LABEL_215:
    v13 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
    goto LABEL_13;
  }

  v76 = v75 + 1;
  *(v4 + 512) = v75 + 1;
  if (WebGPU::PipelineLayout::s_heapRef)
  {
    v77 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, a2);
  }

  else
  {
    v77 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
  }

  v14 = v77;
  *v77 = 0;
  *(v77 + 8) = 1;
  *(v77 + 16) = 0;
  v137 = (v77 + 16);
  *(v77 + 32) = 0;
  if (v145 == 1)
  {
    *(v77 + 16) = v143;
    v78 = v144;
    v143 = 0;
    v144 = 0;
    *(v77 + 24) = v78;
    *(v77 + 32) = 1;
  }

  *(v77 + 40) = 0u;
  v79 = (v77 + 40);
  *(v77 + 56) = 0u;
  v133 = (v77 + 56);
  *(v77 + 72) = 0u;
  v134 = (v77 + 72);
  v138 = (v77 + 40);
  while (1)
  {
    v80 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v81 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v81, v80 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v81 == v80)
    {
      goto LABEL_127;
    }
  }

  v83 = 0;
  v84 = *v4;
  v85 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v83, 1u, memory_order_acquire, memory_order_acquire);
  if (v83)
  {
    MEMORY[0x22AA683C0](v84);
  }

  ++*(v84 + 8);
  atomic_compare_exchange_strong_explicit(v84, &v85, 0, memory_order_release, memory_order_relaxed);
  v86 = v85 == 1;
  v79 = v138;
  if (!v86)
  {
    WTF::Lock::unlockSlow(v84);
  }

LABEL_127:
  *(v14 + 104) = 0;
  *(v14 + 88) = v4;
  *(v14 + 96) = v76;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 1;
  *(v14 + 129) = a3;
  v141 = v14 + 104;
  if ((*(v14 + 32) & 1) == 0)
  {
    goto LABEL_202;
  }

  if (!a3)
  {
    goto LABEL_145;
  }

  v87 = *(v14 + 28);
  if (!v87)
  {
    goto LABEL_145;
  }

  v88 = *(v14 + 16);
  v4 = 8 * v87;
  while (2)
  {
    while (2)
    {
      v89 = *v88;
      v90 = *v14;
      if (*v14 || (v90 = WTF::fastCompactMalloc(0x10), *v90 = 1, *(v90 + 8) = v14, v91 = *v14, *v14 = v90, !v91))
      {
LABEL_135:
        atomic_fetch_add(v90, 1u);
        goto LABEL_136;
      }

      if (atomic_fetch_add(v91, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v91);
        WTF::fastFree(v91, a2);
        v90 = *v14;
        if (!*v14)
        {
          goto LABEL_136;
        }

        goto LABEL_135;
      }

      v90 = *v14;
      if (*v14)
      {
        goto LABEL_135;
      }

LABEL_136:
      v92 = *(v89 + 112);
      *(v89 + 112) = v90;
      if (!v92 || atomic_fetch_add(v92, 0xFFFFFFFF) != 1)
      {
        ++v88;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_144;
        }

        continue;
      }

      break;
    }

    atomic_store(1u, v92);
    WTF::fastFree(v92, a2);
    ++v88;
    v4 -= 8;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_144:
  v79 = v138;
  if ((*(v14 + 32) & 1) == 0)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

LABEL_145:
  v136 = *(v14 + 28);
  if (!v136)
  {
    goto LABEL_202;
  }

  v132 = a4;
  v140 = 0;
  v139 = 0;
  v93 = 0;
  v94 = 0;
  v135 = v14;
  while (2)
  {
    if (v93 >= *(v14 + 28))
    {
      __break(0xC471u);
      JUMPOUT(0x2256AD8B0);
    }

    v95 = *v137;
    v96 = *(*v137 + 8 * v93);
    v97 = v96[10];
    v98 = v96[11];
    v99 = v96[12];
    v148[0] = v93;
    if (v97)
    {
      v147 = v97 >> 2;
      WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v79 + 3, v148, &v147);
      v147 = HIDWORD(v140) >> 2;
      WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v79, v148, &v147);
    }

    v148[0] = v93;
    if (v98)
    {
      v147 = v98 >> 2;
      WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v134, v148, &v147);
      v147 = v140 >> 2;
      WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v79 + 1, v148, &v147);
    }

    v148[0] = v93;
    if (v99)
    {
      v147 = v99 >> 2;
      WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v79 + 5, v148, &v147);
      v147 = v139 >> 2;
      WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(&v146, v133, v148, &v147);
    }

    v100 = 0;
    HIDWORD(v140) += v97;
    LODWORD(v140) = v140 + v98;
    v139 += v99;
    v101 = 9 * ((~(v93 << 15) + v93) ^ ((~(v93 << 15) + v93) >> 10));
    v142 = ((v101 ^ (v101 >> 6)) + ~((v101 ^ (v101 >> 6)) << 11)) ^ (((v101 ^ (v101 >> 6)) + ~((v101 ^ (v101 >> 6)) << 11)) >> 16);
    while (2)
    {
      v4 = dword_225881E08[v100];
      WebGPU::BindGroupLayout::sortedEntries(*(v95 + 8 * v93), &v146);
      a4 = (a4 & 0xFFFFFF00);
      v102 = v146;
      if (HIDWORD(v146))
      {
        v103 = 0;
        v104 = 0;
        v105 = 8 * HIDWORD(v146);
        v106 = 1;
        v107 = v146;
        do
        {
          v108 = *v107;
          if (((*(*v107 + 100) & 1) != 0 || (*(v108 + 108) & 1) != 0 || *(v108 + 116) == 1) && (*(v108 + 4) & v4) != 0)
          {
            v109 = *(v108 + 120);
            if (v103)
            {
              v106 &= v109 == a4 + 1;
            }

            else
            {
              v104 = v109;
              v94 = v109 >> 8;
            }

            v103 = 1;
            a4 = v109;
          }

          ++v107;
          v105 -= 8;
        }

        while (v105);
        v110 = v106 & v103;
        if (v146)
        {
LABEL_170:
          *&v146 = 0;
          DWORD2(v146) = 0;
          WTF::fastFree(v102, a2);
        }
      }

      else
      {
        v104 = 0;
        v103 = 0;
        v110 = 0;
        if (v146)
        {
          goto LABEL_170;
        }
      }

      if (v110)
      {
        v111 = 0;
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            v111 = 2;
          }

          else if (v4 == 0x7FFFFFFF)
          {
            goto LABEL_214;
          }
        }

        else if (v4 == 2)
        {
          v111 = 1;
        }

        else if (!v4)
        {
          goto LABEL_214;
        }

        if ((v103 & 1) == 0)
        {
          goto LABEL_214;
        }

        if (v93 == 4294967294)
        {
          __break(0xC471u);
          goto LABEL_224;
        }

        v112 = (v141 + 8 * v111);
        v113 = *v112;
        if (!*v112)
        {
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<unsigned int,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<unsigned int,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v112, 8u);
          v113 = *v112;
        }

        v114 = v104 | (v94 << 8);
        v115 = a4 - v114 + 1;
        v116 = *(v113 - 8);
        v117 = v116 & v142;
        v118 = (v113 + 12 * (v116 & v142));
        v119 = *v118;
        if (*v118 != -1)
        {
          v120 = 0;
          v121 = 1;
          do
          {
            if (v119 == v93)
            {
              v118[1] = v114;
              v118[2] = v115;
              goto LABEL_157;
            }

            if (v119 == -2)
            {
              v120 = v118;
            }

            v117 = (v117 + v121) & v116;
            v118 = (v113 + 12 * v117);
            v119 = *v118;
            ++v121;
          }

          while (*v118 != -1);
          if (v120)
          {
            *v120 = -1;
            *(v120 + 1) = 0;
            v113 = *v112;
            --*(*v112 - 16);
            v118 = v120;
          }
        }

        *v118 = v93;
        v118[1] = v114;
        v118[2] = v115;
        v122 = *(v113 - 16);
        v123 = *(v113 - 12) + 1;
        *(v113 - 12) = v123;
        v124 = (v122 + v123);
        v125 = *(v113 - 4);
        if (v125 > 0x400)
        {
          if (v125 <= 2 * v124)
          {
            goto LABEL_199;
          }
        }

        else if (3 * v125 <= 4 * v124)
        {
          if (!v125)
          {
            v126 = 8;
            goto LABEL_200;
          }

LABEL_199:
          v126 = v125 << (6 * v123 >= (2 * v125));
LABEL_200:
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<unsigned int,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<unsigned int,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v112, v126);
        }
      }

LABEL_157:
      if (++v100 != 3)
      {
        continue;
      }

      break;
    }

    ++v93;
    v14 = v135;
    v79 = v138;
    if (v93 != v136)
    {
      continue;
    }

    break;
  }

  a4 = v132;
LABEL_202:
  *a4 = v14;
LABEL_203:
  if (v145 == 1)
  {
    v127 = v143;
    if (HIDWORD(v144))
    {
      v128 = 8 * HIDWORD(v144);
      do
      {
        v129 = *v127;
        *v127 = 0;
        if (v129)
        {
          if (*(v129 + 2) == 1)
          {
            WebGPU::BindGroupLayout::~BindGroupLayout(v129, a2);
            bmalloc::api::tzoneFree(v130, v131);
          }

          else
          {
            --*(v129 + 2);
          }
        }

        v127 = (v127 + 8);
        v128 -= 8;
      }

      while (v128);
      v127 = v143;
    }

    if (v127)
    {
      v143 = 0;
      LODWORD(v144) = 0;
      WTF::fastFree(v127, a2);
    }
  }
}

void sub_2256AD8BC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25)
{
  v28 = a25[5];
  if (v28)
  {
    WTF::fastFree((v28 - 16), a2);
    v29 = *a21;
    if (!*a21)
    {
LABEL_3:
      v30 = a25[3];
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v29 = *a21;
    if (!*a21)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree((v29 - 16), a2);
  v30 = a25[3];
  if (!v30)
  {
LABEL_4:
    v31 = *a20;
    if (!*a20)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  WTF::fastFree((v30 - 16), a2);
  v31 = *a20;
  if (!*a20)
  {
LABEL_5:
    v32 = a25[1];
    if (!v32)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  WTF::fastFree((v31 - 16), a2);
  v32 = a25[1];
  if (!v32)
  {
LABEL_6:
    v33 = *a25;
    if (!*a25)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  WTF::fastFree((v32 - 16), a2);
  v33 = *a25;
  if (!*a25)
  {
LABEL_8:
    std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a24, a2);
    WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v25, v34);
    bmalloc::api::tzoneFree(WeakPtr, v36);
    std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v26 - 152, v37);
    _Unwind_Resume(a1);
  }

LABEL_7:
  WTF::fastFree((v33 - 16), a2);
  goto LABEL_8;
}

void WebGPU::PipelineLayout::createInvalid(WebGPU::PipelineLayout *this, WebGPU::Device *a2)
{
  if (WebGPU::PipelineLayout::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::PipelineLayout::operatorNewSlow(0x88);
  }

  v5 = NonCompact;
  WebGPU::PipelineLayout::PipelineLayout(NonCompact, a2);
  *this = v5;
}

void WebGPU::reportErrorInCreatePipelineLayout(WebGPU *this, NSString *a2, WebGPU::Device *a3, WebGPU::Device *a4)
{
  v5 = a2;
  v6 = this;
  if ((v5 & 1) == 0)
  {
    WebGPU::Device::generateAValidationError(a3, v6);
  }
}