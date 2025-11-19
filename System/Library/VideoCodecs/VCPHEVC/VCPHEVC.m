uint64_t sub_2773BEBF8(uint64_t result, void *a2, int a3, int16x8_t *a4, unsigned int a5)
{
  v5 = *a4;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = vnegq_s16(vdupq_n_s16(a5));
  if ((a3 & 0x10000) != 0)
  {
    a3 -= 16;
    v16 = *v6;
    v15 = v6 + 1;
    v17 = *v15;
    v6 = v15 + 1;
    v18 = vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v16.i8), v5.i16[0]), vmovl_u8(*v17.i8), *v5.i8, 1);
    v19 = vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v16), v5.i16[0]), vmovl_high_u8(v17), *v5.i8, 1);
    v21 = *v8;
    v20 = v8 + 1;
    v22 = *v20;
    v8 = v20 + 1;
    v23 = vmlaq_lane_s16(vmlaq_lane_s16(v18, vmovl_u8(*v21.i8), *v5.i8, 2), vmovl_u8(*v22.i8), *v5.i8, 3);
    v24 = vmlaq_lane_s16(vmlaq_lane_s16(v19, vmovl_high_u8(v21), *v5.i8, 2), vmovl_high_u8(v22), *v5.i8, 3);
    v26 = *v10;
    v25 = v10 + 1;
    v27 = *v25;
    v10 = v25 + 1;
    v28 = vmlaq_laneq_s16(vmlaq_laneq_s16(v23, vmovl_u8(*v26.i8), v5, 4), vmovl_u8(*v27.i8), v5, 5);
    v29 = vmlaq_laneq_s16(vmlaq_laneq_s16(v24, vmovl_high_u8(v26), v5, 4), vmovl_high_u8(v27), v5, 5);
    v31 = *v12;
    v30 = v12 + 1;
    v32 = *v30;
    v12 = v30 + 1;
    *result = vqmovun_s16(vrshlq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(v28, vmovl_u8(*v31.i8), v5, 6), vmovl_u8(*v32.i8), v5, 7), v14));
    *(result + 8) = vqmovun_s16(vrshlq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(v29, vmovl_high_u8(v31), v5, 6), vmovl_high_u8(v32), v5, 7), v14));
    result += 16;
  }

  do
  {
    v33 = __OFSUB__(a3, 32);
    a3 -= 32;
    v34 = *v6;
    v35 = *(v6 + 1);
    v6 += 2;
    v36 = vmulq_n_s16(vmovl_u8(*v34.i8), v5.i16[0]);
    v37 = vmulq_n_s16(vmovl_high_u8(v34), v5.i16[0]);
    v38 = vmulq_n_s16(vmovl_u8(*v35.i8), v5.i16[0]);
    v39 = vmulq_n_s16(vmovl_high_u8(v35), v5.i16[0]);
    v40 = *v7;
    v41 = v7[1];
    v7 += 2;
    v42 = vmlaq_lane_s16(v36, vmovl_u8(*v40.i8), *v5.i8, 1);
    v43 = vmlaq_lane_s16(v37, vmovl_high_u8(v40), *v5.i8, 1);
    v44 = vmlaq_lane_s16(v38, vmovl_u8(*v41.i8), *v5.i8, 1);
    v45 = vmlaq_lane_s16(v39, vmovl_high_u8(v41), *v5.i8, 1);
    v46 = *v8;
    v47 = *(v8 + 1);
    v8 += 2;
    v48 = vmlaq_lane_s16(v42, vmovl_u8(*v46.i8), *v5.i8, 2);
    v49 = vmlaq_lane_s16(v43, vmovl_high_u8(v46), *v5.i8, 2);
    v50 = vmlaq_lane_s16(v44, vmovl_u8(*v47.i8), *v5.i8, 2);
    v51 = vmlaq_lane_s16(v45, vmovl_high_u8(v47), *v5.i8, 2);
    v52 = *v9;
    v53 = v9[1];
    v9 += 2;
    v54 = vmlaq_lane_s16(v48, vmovl_u8(*v52.i8), *v5.i8, 3);
    v55 = vmlaq_lane_s16(v49, vmovl_high_u8(v52), *v5.i8, 3);
    v56 = vmlaq_lane_s16(v50, vmovl_u8(*v53.i8), *v5.i8, 3);
    v57 = vmlaq_lane_s16(v51, vmovl_high_u8(v53), *v5.i8, 3);
    v58 = *v10;
    v59 = *(v10 + 1);
    v10 += 2;
    v60 = vmlaq_laneq_s16(v54, vmovl_u8(*v58.i8), v5, 4);
    v61 = vmlaq_laneq_s16(v55, vmovl_high_u8(v58), v5, 4);
    v62 = vmlaq_laneq_s16(v56, vmovl_u8(*v59.i8), v5, 4);
    v63 = vmlaq_laneq_s16(v57, vmovl_high_u8(v59), v5, 4);
    v64 = *v11;
    v65 = v11[1];
    v11 += 2;
    v66 = vmlaq_laneq_s16(v60, vmovl_u8(*v64.i8), v5, 5);
    v67 = vmlaq_laneq_s16(v61, vmovl_high_u8(v64), v5, 5);
    v68 = vmlaq_laneq_s16(v62, vmovl_u8(*v65.i8), v5, 5);
    v69 = vmlaq_laneq_s16(v63, vmovl_high_u8(v65), v5, 5);
    v70 = *v12;
    v71 = *(v12 + 1);
    v12 += 2;
    v72 = vmovl_u8(*v70.i8);
    v73 = vmovl_high_u8(v70);
    v74 = vmlaq_laneq_s16(v68, vmovl_u8(*v71.i8), v5, 6);
    v75 = vmlaq_laneq_s16(v69, vmovl_high_u8(v71), v5, 6);
    v76 = *v13;
    v77 = v13[1];
    v13 += 2;
    *result = vqmovun_high_s16(vqmovun_s16(vrshlq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(v66, v72, v5, 6), vmovl_u8(*v76.i8), v5, 7), v14)), vrshlq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(v67, v73, v5, 6), vmovl_high_u8(v76), v5, 7), v14));
    *(result + 16) = vqmovun_high_s16(vqmovun_s16(vrshlq_s16(vmlaq_laneq_s16(v74, vmovl_u8(*v77.i8), v5, 7), v14)), vrshlq_s16(vmlaq_laneq_s16(v75, vmovl_high_u8(v77), v5, 7), v14));
    result += 32;
  }

  while (!((a3 < 0) ^ v33 | (a3 == 0)));
  return result;
}

int8x8_t *sub_2773BEE2C(int8x8_t *result, uint64_t a2, int a3, uint64_t a4, unsigned __int16 *a5, _BYTE *a6, unsigned int a7)
{
  v7 = vnegq_s16(vdupq_n_s16(a7));
  v9 = *a5;
  v8 = a5 + 1;
  v10 = (a2 - 3 + v9);
  do
  {
    v11 = __OFSUB__(a3, 8);
    a3 -= 8;
    v14 = *v8;
    v12 = v8 + 1;
    v13 = v14;
    v16 = *v12++;
    v15 = v16;
    v18 = *v12++;
    v17 = v18;
    v19 = *v12++;
    v21 = *v10;
    v20 = (v10 + v13);
    v23 = *v20;
    v22 = (v20 + v15);
    v25 = *v22;
    v24 = (v22 + v17);
    v27 = *v24;
    v26 = (v24 + v19);
    LOBYTE(v19) = *a6;
    v28 = a6 + 1;
    LOBYTE(v13) = v19;
    LOBYTE(v19) = *v28++;
    LOBYTE(v15) = v19;
    LOBYTE(v19) = *v28++;
    LOBYTE(v17) = v19;
    LOBYTE(v19) = *v28++;
    v29 = vmulq_s16(vmovl_u8(v21), *(a4 + v13));
    v30 = vmulq_s16(vmovl_u8(v23), *(a4 + v15));
    v31 = vmulq_s16(vmovl_u8(v25), *(a4 + v17));
    v32 = vmulq_s16(vmovl_u8(v27), *(a4 + v19));
    v34 = *v12++;
    v33 = v34;
    v36 = *v12++;
    v35 = v36;
    v38 = *v12++;
    v37 = v38;
    v39 = *v12;
    v8 = v12 + 1;
    v41 = *v26;
    v40 = (v26 + v33);
    v43 = *v40;
    v42 = (v40 + v35);
    v45 = *v42;
    v44 = (v42 + v37);
    v46 = *v44;
    v10 = (v44 + v39);
    LOBYTE(v39) = *v28++;
    LOBYTE(v33) = v39;
    LOBYTE(v39) = *v28++;
    LOBYTE(v35) = v39;
    LOBYTE(v39) = *v28++;
    LOBYTE(v37) = v39;
    LOBYTE(v39) = *v28;
    a6 = v28 + 1;
    *result++ = vqmovun_s16(vrshlq_s16(vpaddq_s16(vpaddq_s16(vpaddq_s16(v29, v30), vpaddq_s16(v31, v32)), vpaddq_s16(vpaddq_s16(vmulq_s16(vmovl_u8(v41), *(a4 + v33)), vmulq_s16(vmovl_u8(v43), *(a4 + v35))), vpaddq_s16(vmulq_s16(vmovl_u8(v45), *(a4 + v37)), vmulq_s16(vmovl_u8(v46), *(a4 + v39))))), v7));
  }

  while (!((a3 < 0) ^ v11 | (a3 == 0)));
  return result;
}

int8x8_t *sub_2773BEF60(int8x8_t *result, uint64_t a2, int a3, uint64_t a4, unsigned __int16 *a5, _BYTE *a6, unsigned int a7)
{
  v7 = vnegq_s16(vdupq_n_s16(a7));
  v9 = *a5;
  v8 = a5 + 1;
  v10 = (a2 - 6 + v9);
  do
  {
    v11 = __OFSUB__(a3, 8);
    a3 -= 8;
    v14 = *v8;
    v12 = v8 + 1;
    v13 = v14;
    v16 = *v12++;
    v15 = v16;
    v18 = *v12++;
    v17 = v18;
    v20 = *v12;
    v8 = v12 + 1;
    v19 = v20;
    v25 = vld2_s8(v10);
    v21 = &v10[v13];
    v26 = vld2_s8(v21);
    v22 = &v21[v15];
    v27 = vld2_s8(v22);
    v23 = &v22[v17];
    v28 = vld2_s8(v23);
    v10 = &v23[v19];
    LOBYTE(v20) = *a6;
    v24 = a6 + 1;
    LOBYTE(v13) = v20;
    LOBYTE(v20) = *v24++;
    LOBYTE(v15) = v20;
    LOBYTE(v20) = *v24++;
    LOBYTE(v17) = v20;
    LOBYTE(v20) = *v24;
    a6 = v24 + 1;
    *result++ = vqmovun_s16(vrshlq_s16(vpaddq_s16(vpaddq_s16(vpaddq_s16(vmulq_s16(vmovl_u8(v25.val[0]), *(a4 + v13)), vmulq_s16(vmovl_u8(v25.val[1]), *(a4 + v13))), vpaddq_s16(vmulq_s16(vmovl_u8(v26.val[0]), *(a4 + v15)), vmulq_s16(vmovl_u8(v26.val[1]), *(a4 + v15)))), vpaddq_s16(vpaddq_s16(vmulq_s16(vmovl_u8(v27.val[0]), *(a4 + v17)), vmulq_s16(vmovl_u8(v27.val[1]), *(a4 + v17))), vpaddq_s16(vmulq_s16(vmovl_u8(v28.val[0]), *(a4 + v20)), vmulq_s16(vmovl_u8(v28.val[1]), *(a4 + v20))))), v7));
  }

  while (!((a3 < 0) ^ v11 | (a3 == 0)));
  return result;
}

uint64_t HEVCVideoDecoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    if (dword_280B9A880 >= 3)
    {
      v5 = *MEMORY[0x277D85DF8];
      v6 = "FigDerivedObjectCreate failed";
      v7 = "FigDerivedObjectCreate failed";
      v8 = 29;
LABEL_4:
      fwrite(v7, v8, 1uLL, v5);
      syslog(27, v6);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 1044) = -1;
    *(DerivedStorage + 1048) = -1;
    atomic_store(1u, (DerivedStorage + 1060));
    v10 = operator new(0x40uLL, MEMORY[0x277D826F0]);
    v11 = v10;
    if (v10)
    {
      v10[12] = 0;
      *(v10 + 7) = sub_2774CD3C0;
      *v10 = sub_2774A85B8;
      *(v10 + 2) = sub_2774A8570;
      *(v10 + 4) = sub_2774A852C;
      *(v10 + 5) = sub_2774A8400;
      *(v10 + 1) = sub_2774CCA54;
      *(v10 + 3) = sub_2774CC9B0;
    }

    *(DerivedStorage + 1080) = v10;
    v12 = operator new(0x40uLL, MEMORY[0x277D826F0]);
    v13 = v12;
    if (v12)
    {
      *v12 = 850045863;
      *(v12 + 8) = 0u;
      *(v12 + 24) = 0u;
      *(v12 + 40) = 0u;
      *(v12 + 7) = 0;
    }

    *(DerivedStorage + 1088) = v12;
    v14 = operator new(0x40uLL, MEMORY[0x277D826F0]);
    if (!v14)
    {
      *(DerivedStorage + 24) = 0;
      atomic_store(0, (DerivedStorage + 1096));
      v4 = 4294954392;
      goto LABEL_20;
    }

    *v14 = 0u;
    *(v14 + 1) = 0u;
    v14[21] = 1;
    *(v14 + 22) = 0;
    *(v14 + 25) = 0;
    v14[29] = 3;
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(DerivedStorage + 24) = v14;
    v4 = 4294954392;
    atomic_store(0, (DerivedStorage + 1096));
    if (v11 && v13)
    {
      atomic_load((DerivedStorage + 1064));
      v15 = operator new(0xA20uLL, MEMORY[0x277D826F0]);
      if (v15)
      {
        v16 = v15;
        *v15 = 0u;
        *(v15 + 1) = 0u;
        *(v15 + 34) = -1;
        *(v15 + 19) = -1;
        v15[40] = 0;
        *(v15 + 16) = 0;
        *(v15 + 12) = -1;
        v15[52] = -1;
        v15[100] = 0;
        *(v15 + 21) = 0;
        *(v15 + 22) = 0;
        v17 = (v15 + 248);
        *(v15 + 28) = 0;
        *(v15 + 29) = 0;
        sub_2774404A0((v15 + 248));
        *(v16 + 31) = &unk_288662B70;
        v16[348] = 0;
        sub_277441D2C(v17, 0xAF63E54C8601FBD7, "h", v16 + 305, 0);
        sub_277441D2C(v17, 0xA9918CC5FA26ABAuLL, "help", v16 + 305, 0);
        sub_277441E9C(v17, 0, 0, v16 + 36);
        sub_277441E9C(v17, 0xAF63E24C8601F6BELL, "o", v16 + 37);
        sub_277441D2C(v17, 0x81988191775D1F3uLL, "md5", v16 + 304, 0);
        sub_277441D2C(v17, 0x35CA209DCAF9161DuLL, "verbose", v16 + 306, 0);
        sub_2774416C0(v17, 0x23E5906728B4E66FuLL, "frames", v16 + 82, 0);
        sub_277441D2C(v17, 0x1E5485EF2E9F9384uLL, "time", v16 + 332, 0);
        sub_2774416C0(v17, 0x84C51CA356506FC0, "trials", v16 + 84, 1);
        sub_277441D2C(v17, 0x832846984DBFE0D9, "time-frames", v16 + 340, 0);
        sub_2774416C0(v17, 0x71F304EA62C01CBDuLL, "window", v16 + 86, 1);
        sub_277441D2C(v17, 0x1D394CB372451B96uLL, "coding-order", v16 + 357, 0);
        sub_277441D2C(v17, 0xDEE7D1A9CEA3053FLL, "deblock-per-ctb", v16 + 358, 0);
        sub_277441D2C(v17, 0x5DAB01B8216B7BDDuLL, "scalar", v16 + 348, 0);
        sub_27743FBF4();
        sub_2774416C0(v17, 0xC0AB56BF45863635, "max-threads", v16 + 78, dword_280B9A8A4);
        sub_2774416C0(v17, 0x1CEC94C4396EBFBuLL, "max-mpt-threads", v16 + 79, 3);
        sub_2774416C0(v17, 0x90EC632032E98B72, "wpp-threads", v16 + 80, 0);
        sub_2774416C0(v17, 0xDC868918FEB4BC88, "fps", v16 + 88, 0);
        sub_277441D2C(v17, 0x54EB290A497D21C7uLL, "leaks", v16 + 360, 0);
        sub_277441D2C(v17, 0xBA3720DECF81698ALL, "u16-yuv", v16 + 359, 0);
        sub_2774416C0(v17, 0xC757C18968E4439DLL, "debug_facetime", v16 + 91, 0);
        sub_277440584(v17, 0xFE31B357AB72A0FuLL, "threading", v16 + 77, qword_27A7168D8, 0x3C0D17BAD169557BLL);
        sub_277440584(v17, 0xF5B6EA8C35AC1E89, "priority", v16 + 81, qword_27A716980, 0xC76A095E1FFA22B6);
        sub_2774406FC(v17, 0xE061A2646338FACFLL, "HEVCDecoderOptions", sub_277440E48, 0, 0);
        bzero(v16 + 368, 0x648uLL);
        sub_2773FE630((v16 + 1976));
        *(v16 + 598) = 1;
        *(v16 + 2424) = 0u;
        *(v16 + 2440) = 0u;
        *(v16 + 2456) = 0u;
        *(v16 + 309) = 850045863;
        *(v16 + 298) = 0;
        *(v16 + 13) = 0u;
        *(v16 + 184) = 0u;
        *(v16 + 150) = 0u;
        *(v16 + 155) = 0u;
        *(v16 + 156) = 0u;
        *(v16 + 157) = 0u;
        *(v16 + 158) = 0u;
        *(v16 + 159) = 0u;
        *(v16 + 160) = 0u;
        *(v16 + 2569) = 0u;
        v16[240] = 0;
        *(v16 + 50) = 65793;
        *&v22.tm_sec = &unk_288662858;
        *&v22.tm_hour = v16;
        *&v22.tm_wday = &v22;
        sub_2773FE2BC(&v22, v16 + 247);
        sub_2773FE520(&v22);
        *(DerivedStorage + 32) = v16;
        operator new();
      }

      *(DerivedStorage + 32) = 0;
      v18 = (DerivedStorage + 32);
      if (dword_280B9A880 >= 3)
      {
        fwrite("Decoder creation failed\n", 0x18uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Decoder creation failed\n");
        if (*v18)
        {
          v19 = sub_27743C0D0(*v18);
          MEMORY[0x277CAD370](v19, 0x10F2C4084AC0B2ELL);
        }

        v20 = dword_280B9A880;
        *v18 = 0;
        if (v20 >= 3)
        {
          v5 = *MEMORY[0x277D85DF8];
          v6 = "Error creating LRP decoder\n";
          v7 = "Error creating LRP decoder\n";
          v8 = 27;
          goto LABEL_4;
        }
      }
    }
  }

LABEL_20:
  *a3 = 0;
  return v4;
}

void sub_2773BFBFC(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    (*(*STACK[0x228] + 8))(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2773BFC8C(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, __CVBuffer *a6, uint64_t a7, char a8, _DWORD *a9)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v15 = *(DerivedStorage + 1088);
  std::mutex::lock(v15);
  v16 = atomic_load((DerivedStorage + 1096));
  if (v16)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Session was invalidated", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Session was invalidated");
    }

    v17 = 4294954393;
  }

  else
  {
    if (CVPixelBufferGetWidth(a6) >= a7 && CVPixelBufferGetHeight(a6) >= a7 >> 32)
    {
      v18 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040089D864DuLL);
      v18[3] = a2;
      v18[4] = CVPixelBufferRetain(a6);
      v18[5] = a7;
      sub_2773BFE64(DerivedStorage, v18, a3, a8, a9, &v20);
    }

    else
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Offset is outside the buffer we got\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Offset is outside the buffer we got\n");
      }

      v18 = 0;
    }

    if ((v20 & 1) == 0)
    {
      sub_2773C0238(v18);
      VTTileDecoderSessionEmitDecodedTile();
    }

    v17 = 0;
  }

  std::mutex::unlock(v15);
  return v17;
}

uint64_t sub_2773BFE64(uint64_t a1, uint64_t a2, CMSampleBufferRef sbuf, char a4, _DWORD *a5, _BYTE *a6)
{
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (DataBuffer)
  {
    totalLengthOut = 0;
    lengthAtOffsetOut = 0;
    v35[8] = 0;
    *v35 = a4 & 1;
    *(a2 + 8) = a4 & 1;
    if (*(a1 + 32))
    {
      v13 = DataBuffer;
      DataPointer = CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &v35[1]);
      if (DataPointer)
      {
        return DataPointer;
      }

      v17 = CMGetAttachment(sbuf, *MEMORY[0x277CC0718], 0);
      if (v17)
      {
        v18 = v17;
        v19 = CFGetTypeID(v17);
        if (v19 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v18))
          {
            *(*(a1 + 32) + 203) = 1;
          }
        }
      }

      FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
      if (!CMFormatDescriptionEqual(*(a1 + 16), FormatDescription))
      {
        if (*(a1 + 8))
        {
          if (dword_280B9A880 >= 3)
          {
            fwrite("Format description changes not supported in tile sessions", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Format description changes not supported in tile sessions");
          }

          return 4294954386;
        }

        v34 = sub_2773C0288(a1, FormatDescription);
        if (v34)
        {
          v15 = v34;
          if (dword_280B9A880 < 3)
          {
            return v15;
          }

          v30 = *MEMORY[0x277D85DF8];
          v31 = "Invalid/unsupported format\n";
          v32 = "Invalid/unsupported format\n";
          v33 = 27;
          goto LABEL_45;
        }
      }

      v21 = atomic_load((a1 + 1060));
      v22 = atomic_load((a1 + 1068));
      if (v22)
      {
        atomic_store(0, (a1 + 1060));
        v23 = "background";
      }

      else
      {
        v24 = "medium";
        if (v21 == 2)
        {
          v24 = "high";
        }

        if (v21)
        {
          v23 = v24;
        }

        else
        {
          v23 = "low";
        }
      }

      v25 = *(a1 + 1072);
      if (!v25 || strcmp(v25, v23))
      {
        *(a1 + 1072) = v23;
        v26 = *(a1 + 32);
        v38 = 0;
        sub_27744140C(v26 + 248, 0xF5B6EA8C35AC1E89, "priority", v23, 0xFFFFFFFFLL, &v38);
      }

      if (lengthAtOffsetOut >= totalLengthOut)
      {
        CFRetain(v13);
        *(a2 + 16) = v13;
      }

      else
      {
        DataPointer = CMBlockBufferCreateContiguous(0, v13, 0, 0, 0, totalLengthOut, 2u, (a2 + 16));
        if (DataPointer)
        {
          return DataPointer;
        }

        DataPointer = CMBlockBufferGetDataPointer(*(a2 + 16), 0, &lengthAtOffsetOut, &totalLengthOut, &v35[1]);
        if (DataPointer)
        {
          return DataPointer;
        }

        if (lengthAtOffsetOut < totalLengthOut)
        {
          return 4294954392;
        }
      }

      *a6 = 1;
      v27 = *(a1 + 1044);
      v28 = *(a1 + 32);
      if (v27 != -1)
      {
        *(v28 + 48) = v27;
        *(v28 + 56) = *(a1 + 1048);
      }

      v29 = sub_27743C968(v28, *&v35[1], totalLengthOut, a2, *(a2 + 32), *(a2 + 40), v35);
      if (v29)
      {
        v15 = v29;
        if (dword_280B9A880 < 3)
        {
          return v15;
        }

        v30 = *MEMORY[0x277D85DF8];
        v31 = "Error decoding picture\n";
        v32 = "Error decoding picture\n";
        v33 = 23;
LABEL_45:
        fwrite(v32, v33, 1uLL, v30);
        syslog(27, v31);
        return v15;
      }

      v15 = 0;
      if (v35[0] == 1)
      {
        *a5 = 1;
      }
    }

    else
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("No decoder, session was invalidated?\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "No decoder, session was invalidated?\n");
      }

      return 4294954393;
    }
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("No data buffer in sample buffer!\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No data buffer in sample buffer!\n");
    }

    return 4294954394;
  }

  return v15;
}

void sub_2773C0238(uint64_t a1)
{
  if (a1)
  {
    CVPixelBufferRelease(*(a1 + 32));
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t sub_2773C0288(uint64_t a1, CMFormatDescriptionRef desc)
{
  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x277CC03B0]);
  if (!Extension)
  {
    return 4294954387;
  }

  v4 = Extension;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v4))
  {
    return 4294954387;
  }

  if (!*(a1 + 32))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("No decoder, session was invalidated?\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No decoder, session was invalidated?\n");
    }

    return 4294954393;
  }

  FigFormatDescriptionRelease();
  *(a1 + 16) = FigFormatDescriptionRetain();
  Value = CFDictionaryGetValue(v4, @"hvcC");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v4, @"ftvH");
    if (!Value)
    {
      return 4294954387;
    }
  }

  ValueAtIndex = Value;
  v8 = CFArrayGetTypeID();
  if (v8 == CFGetTypeID(ValueAtIndex) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) == 0 || (v9 = CFDataGetTypeID(), v9 != CFGetTypeID(ValueAtIndex)) || CFDataGetLength(ValueAtIndex) > 3000)
  {
    v10 = 4294954387;
    goto LABEL_11;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  Length = CFDataGetLength(ValueAtIndex);
  v17 = 0;
  if (Length == -4)
  {
    if (v51 != v50)
    {
      v51 = v50 + Length + 4;
    }
  }

  else
  {
    sub_2773C07DC(&v50, Length + 4);
    v17 = v50;
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  v19 = CFDataGetLength(ValueAtIndex);
  memcpy(v17, BytePtr, v19);
  __p[0] = 0;
  __p[1] = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v20 = v50;
  v21 = CFDataGetLength(ValueAtIndex);
  v10 = sub_2773FB67C(__p, v20, v21);
  if (!v10)
  {
    v10 = sub_2773FBD6C(*(a1 + 24), __p);
    if (!v10)
    {
      if (*(*(a1 + 24) + 30))
      {
        v23 = 0;
        v24 = HIDWORD(v48);
        v25 = v46;
        v26 = v47;
        while (1)
        {
          v27 = v24 + 1;
          HIDWORD(v48) = v27 & 7;
          v28 = (v25 + (v27 >> 3));
          v46 = v28;
          if (v28 >= v26)
          {
            v29 = 0;
            v49 = 1;
            v28 = v26;
          }

          else
          {
            v29 = bswap32(*v28);
          }

          v30 = v29 << (v27 & 7);
          v31 = (v27 & 7) + 1;
          LODWORD(v48) = v30;
          HIDWORD(v48) = v31 & 7;
          v32 = (v28 + (v31 >> 3));
          v46 = v32;
          if (v32 >= v26)
          {
            v33 = 0;
            v49 = 1;
            v32 = v26;
          }

          else
          {
            v33 = bswap32(*v32);
          }

          LODWORD(v48) = v33 << (v31 & 7);
          if ((v30 & 0x80000000) != 0 && dword_280B9A880 >= 3)
          {
            fwrite("Invalid value for reserved bit\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Invalid value for reserved bit\n");
          }

          v34 = (v31 & 7) + 6;
          v24 = v34 & 7;
          HIDWORD(v48) = v24;
          v35 = (v32 + (v34 >> 3));
          v46 = v35;
          if (v35 >= v26)
          {
            v36 = 0;
            v49 = 1;
            v35 = v26;
          }

          else
          {
            v36 = bswap32(*v35);
          }

          v37 = v36 << v24;
          LODWORD(v48) = v36 << v24;
          HIDWORD(v48) = v24;
          v25 = (v35 + 2);
          v46 = v25;
          if (v25 >= v26)
          {
            v38 = 0;
            v49 = 1;
            v46 = v26;
            v25 = v26;
          }

          else
          {
            v38 = bswap32(*v25);
          }

          v39 = v38 << v24;
          LODWORD(v48) = v39;
          if (v37 >= 0x10000)
          {
            break;
          }

LABEL_63:
          v10 = 0;
          if (++v23 >= *(*(a1 + 24) + 30))
          {
            goto LABEL_25;
          }
        }

        v40 = HIWORD(v37);
        while (1)
        {
          HIDWORD(v48) = v24;
          v41 = (v25 + 2);
          v46 = (v25 + 2);
          if (v25 + 2 >= v26)
          {
            v42 = 0;
            v49 = 1;
            v41 = v26;
          }

          else
          {
            v42 = bswap32(*v41);
          }

          LODWORD(v48) = v42 << v24;
          v43 = HIWORD(v39);
          if (v26 - v41 < v43)
          {
            break;
          }

          if (*(a1 + 32))
          {
            sub_2773EC398(v53);
            v10 = sub_2773EBFA4(v53, v41, v43);
            if (v10)
            {
              goto LABEL_25;
            }

            v10 = sub_27743C774(*(a1 + 32), v53);
            if (v10)
            {
              goto LABEL_25;
            }
          }

          HIDWORD(v48) = v24;
          v25 = (v41 + v43);
          v46 = (v41 + v43);
          if (v41 + v43 >= v26)
          {
            v39 = 0;
            v49 = 1;
            v46 = v26;
            v25 = v26;
          }

          else
          {
            v39 = bswap32(*v25);
          }

          LODWORD(v48) = v39;
          if (!--v40)
          {
            goto LABEL_63;
          }
        }

        v10 = 4294954387;
      }

      else
      {
        v10 = 0;
      }
    }
  }

LABEL_25:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v50)
  {
    operator delete(v50);
  }

  if (v10)
  {
LABEL_11:
    if (dword_280B9A880 >= 3)
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = "ProcessHvcC failed\n";
      v13 = "ProcessHvcC failed\n";
      v14 = 19;
LABEL_13:
      fwrite(v13, v14, 1uLL, v11);
      syslog(27, v12);
      return v10;
    }

    return v10;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(a1 + 16));
  *__p = *a1;
  v45 = Dimensions;
  v10 = sub_27743F4E4(*(a1 + 32), __p);
  if (v10 && dword_280B9A880 >= 3)
  {
    v11 = *MEMORY[0x277D85DF8];
    v12 = "RegisterSession() failed\n";
    v13 = "RegisterSession() failed\n";
    v14 = 25;
    goto LABEL_13;
  }

  return v10;
}

void sub_2773C07A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773C07DC(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2773C0914();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2773C092C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2773C0988(exception, a1);
  __cxa_throw(exception, &unk_288662E90, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2773C0988(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2773C09BC(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 1088);
  std::mutex::lock(v6);
  v7 = atomic_load((DerivedStorage + 1096));
  if (v7)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Session was invalidated", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Session was invalidated");
    }

    v8 = 4294954393;
  }

  else
  {
    *(DerivedStorage + 8) = a2;
    v8 = sub_2773C0288(DerivedStorage, a3);
    if (v8)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Invalid/unsupported format\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Invalid/unsupported format\n");
      }
    }

    else
    {
      v9 = *(DerivedStorage + 32);
      *(v9 + 192) = *(*(DerivedStorage + 24) + 29) + 1;
      sub_27743C674(v9, sub_2773C0B00, DerivedStorage);
      v8 = 0;
    }
  }

  std::mutex::unlock(v6);
  return v8;
}

void sub_2773C0B00(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (!a3)
  {
    v7 = *a4;
    if (*a4)
    {
      if (v7[45] == 1)
      {
        v8 = (*(*v7 + 24))(*a4);
        if (v8 == *(a2 + 32))
        {
          sub_2773F4314(v7);
        }

        if (v8)
        {
          v9 = *(a2 + 32);
          if (v9)
          {
            if (v8 != v9)
            {
              PixelFormatType = CVPixelBufferGetPixelFormatType(v8);
              v11 = CVPixelBufferGetPixelFormatType(*(a2 + 32));
              v29 = PixelFormatType;
              if (PixelFormatType != v11 && dword_280B9A880 >= 3)
              {
                fprintf(*MEMORY[0x277D85DF8], "Pixel format mismatch for tile - got %x, expected %x\n", v11, PixelFormatType);
                syslog(27, "Pixel format mismatch for tile - got %x, expected %x\n", v11, PixelFormatType);
              }

              v12 = *(*a4 + 520);
              v13 = *(*a4 + 524);
              v14 = CVPixelBufferGetWidth(*(a2 + 32)) - *(a2 + 40);
              Height = CVPixelBufferGetHeight(*(a2 + 32));
              v16 = *(a2 + 44);
              extraRowsOnBottom = 0;
              extraColumnsOnRight = 0;
              CVPixelBufferGetExtendedPixels(*(a2 + 32), 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
              v17 = v14 + extraColumnsOnRight;
              v18 = v13;
              v19 = v12;
              if (v17 >= v12 && Height - v16 + extraRowsOnBottom >= v18)
              {
                if (v29 == v11)
                {
                  sub_2774A74A0(*(a1 + 1080), v8, *(a2 + 32), *(a2 + 40));
                }
              }

              else if (dword_280B9A880 >= 3)
              {
                v20 = *MEMORY[0x277D85DF8];
                v21 = *(a2 + 40);
                v22 = *(a2 + 44);
                Width = CVPixelBufferGetWidth(*(a2 + 32));
                v24 = CVPixelBufferGetHeight(*(a2 + 32));
                fprintf(v20, "OOB destination for %zux%zu tile - offset %dx%d into %zux%zu with %zu/%zu edge\n", v19, v18, v21, v22, Width, v24, extraColumnsOnRight, extraRowsOnBottom);
                v25 = *(a2 + 40);
                v26 = *(a2 + 44);
                v27 = CVPixelBufferGetWidth(*(a2 + 32));
                v28 = CVPixelBufferGetHeight(*(a2 + 32));
                syslog(27, "OOB destination for %zux%zu tile - offset %dx%d into %zux%zu with %zu/%zu edge\n", v19, v18, v25, v26, v27, v28, extraColumnsOnRight, extraRowsOnBottom);
              }
            }
          }
        }
      }

      else
      {
        *(a2 + 8) |= 2u;
      }
    }
  }

  VTTileDecoderSessionEmitDecodedTile();
  sub_2773C0238(a2);
}

uint64_t sub_2773C0D98(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1088);
  std::mutex::lock(v4);
  v5 = atomic_load((DerivedStorage + 1096));
  if (v5)
  {
    goto LABEL_31;
  }

  v6 = *(DerivedStorage + 16);
  if (!v6)
  {
    goto LABEL_31;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(v6);
  if (Dimensions != CMVideoFormatDescriptionGetDimensions(a2))
  {
    goto LABEL_31;
  }

  Extension = CMFormatDescriptionGetExtension(a2, *MEMORY[0x277CC03B0]);
  if (Extension && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(Extension)))
  {
    Value = CFDictionaryGetValue(Extension, @"hvcC");
    if (!Value)
    {
      Value = CFDictionaryGetValue(Extension, @"ftvH");
    }
  }

  else
  {
    Value = 0;
  }

  memset(v27, 0, 24);
  memset(&v27[4], 0, 24);
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (sub_2773FB67C(v27, BytePtr, Length))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    *v23 = 0x1000000;
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    *&v23[7] = 0;
    v24 = 3;
    *__p = 0u;
    v26 = 0u;
    v17 = sub_2773FBD6C(v21, v27);
    v16 = v17 == 0;
    if (v17)
    {
      v13 = 0;
    }

    else
    {
      v13 = v23[3];
    }

    if (v17)
    {
      v14 = 0;
    }

    else
    {
      v14 = v23[4];
    }

    if (v17)
    {
      v15 = 0;
    }

    else
    {
      v15 = v23[5];
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v27[0])
  {
    operator delete(v27[0]);
  }

  if (!v16)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("CanAcceptFormatDescription: Error parsing new FormatDescription\n", 0x40uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CanAcceptFormatDescription: Error parsing new FormatDescription\n");
    }

    goto LABEL_31;
  }

  v18 = *(DerivedStorage + 24);
  if (v13 != v18[21] || v14 != v18[22] || v15 != v18[23])
  {
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  v19 = 1;
LABEL_32:
  std::mutex::unlock(v4);
  return v19;
}

void sub_2773C0FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::mutex::unlock(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_2773C0FF8(uint64_t a1, void *a2)
{
  MEMORY[0x277CACF40](&unk_280B9A888, sub_2773C1064);
  if (!qword_280B9A8D8)
  {
    return 4294954392;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = CFRetain(qword_280B9A8D8);
  result = 0;
  *a2 = v3;
  return result;
}

void sub_2773C1064()
{
  keys[11] = *MEMORY[0x277D85DE8];
  memset(&keys[8], 0, 24);
  memset(&values[8], 0, 24);
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x277CE26F8];
    keys[0] = *MEMORY[0x277CE2708];
    keys[1] = v3;
    values[0] = v1;
    values[1] = v1;
    v4 = *MEMORY[0x277CE2718];
    keys[2] = @"NegotiationDetails";
    keys[3] = v4;
    values[2] = v1;
    values[3] = v1;
    v5 = *MEMORY[0x277CE26B8];
    keys[4] = *MEMORY[0x277CE2638];
    keys[5] = v5;
    values[4] = v1;
    values[5] = v1;
    v6 = *MEMORY[0x277CE2660];
    keys[6] = *MEMORY[0x277CE2700];
    keys[7] = v6;
    values[6] = v1;
    values[7] = v1;
    qword_280B9A8D8 = CFDictionaryCreate(v0, keys, values, 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!qword_280B9A8D8 && dword_280B9A880 >= 3)
    {
      fwrite("CFDictionaryCreate failed", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CFDictionaryCreate failed");
    }

    CFRelease(v2);
  }

  else if (dword_280B9A880 >= 3)
  {
    fwrite("CFDictionaryCreate failed", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "CFDictionaryCreate failed");
  }
}

uint64_t sub_2773C1234(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, _DWORD *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v10 = *(DerivedStorage + 1088);
  std::mutex::lock(v10);
  v11 = atomic_load((DerivedStorage + 1096));
  if (v11)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Session was invalidated", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Session was invalidated");
    }

    v12 = 4294954393;
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040089D864DuLL);
    *v13 = a2;
    sub_2773BFE64(DerivedStorage, v13, a3, a4, a5, &v15);
    if ((v15 & 1) == 0)
    {
      sub_2773C0238(v13);
      VTDecoderSessionEmitDecodedFrame();
    }

    v12 = 0;
  }

  std::mutex::unlock(v10);
  return v12;
}

uint64_t sub_2773C1388(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 1088);
  std::mutex::lock(v6);
  v7 = atomic_load((DerivedStorage + 1096));
  if (v7)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Session was invalidated", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Session was invalidated");
    }

    v8 = 4294954393;
  }

  else
  {
    *DerivedStorage = a2;
    v8 = sub_2773C0288(DerivedStorage, a3);
    if (v8)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Invalid/unsupported format\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Invalid/unsupported format\n");
      }
    }

    else
    {
      v9 = *(DerivedStorage + 32);
      *(v9 + 192) = *(*(DerivedStorage + 24) + 29) + 1;
      sub_27743C674(v9, sub_2773C14CC, DerivedStorage);
      v8 = 0;
    }
  }

  std::mutex::unlock(v6);
  return v8;
}

void sub_2773C14CC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  cf = 0;
  if (!a3)
  {
    v6 = *a4;
    if (*a4)
    {
      if (*(v6 + 45))
      {
        v7 = (*(*v6 + 24))(*a4);
        if (v7)
        {
          if (*(v6 + 1173) == 1)
          {
            v8 = *(v6 + 1184);
            if ((v8 & 1) == 0)
            {
              v9 = *(v6 + 1176);
              if (v9)
              {
                CVPixelBufferUnlockBaseAddress(v9, v8);
                v10 = *(v6 + 1184);
                *(v6 + 1184) = v10 | 1;
                CVPixelBufferLockBaseAddress(*(v6 + 1176), v10 | 1);
              }
            }
          }

          else
          {
            PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
            if (PixelBufferPool)
            {
              if (!CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &cf))
              {
                sub_2774A74A0(*(a1 + 1080), v7, cf, 0);
                CVBufferPropagateAttachments(v7, cf);
                *(a2 + 8) |= 4u;
              }
            }

            else if (dword_280B9A880 >= 3)
            {
              fwrite("Unable to get CVPixelBufferPool from VideoToolbox\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
              syslog(27, "Unable to get CVPixelBufferPool from VideoToolbox\n");
            }
          }
        }
      }

      else
      {
        *(a2 + 8) |= 2u;
      }
    }
  }

  VTDecoderSessionEmitDecodedFrame();
  sub_2773C0238(a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_2773C1684(uint64_t a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    if (dword_280B9A880 >= 3)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "No decoder, session was invalidated?\n";
      v10 = "No decoder, session was invalidated?\n";
      v11 = 37;
      goto LABEL_7;
    }

    return 4294954393;
  }

  v6 = DerivedStorage;
  v7 = atomic_load((DerivedStorage + 1096));
  if (v7)
  {
    if (dword_280B9A880 >= 3)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "Session was invalidated";
      v10 = "Session was invalidated";
      v11 = 23;
LABEL_7:
      fwrite(v10, v11, 1uLL, v8);
      syslog(27, v9);
      return 4294954393;
    }

    return 4294954393;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2708]))
  {
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26F8]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr = 0;
        v14 = CFGetTypeID(a3);
        v15 = CFNumberGetTypeID();
        v16 = 0;
        if (v14 == v15)
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          v16 = valuePtr;
        }

        result = 0;
        v17 = (v6 + 1064);
LABEL_18:
        atomic_store(v16, v17);
        return result;
      }
    }

    return 0;
  }

  if (CFEqual(a2, @"NegotiationDetails"))
  {
    v18 = *(v6 + 1088);
    std::mutex::lock(v18);
    *(v6 + 40) = 0;
    v19 = (v6 + 40);
    if (a3)
    {
      v20 = CFStringGetTypeID();
      if (v20 == CFGetTypeID(a3))
      {
        CFStringGetCString(a3, v19, 1001, 0);
      }
    }

    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2718]))
  {
    v18 = *(v6 + 1088);
    std::mutex::lock(v18);
    if (a3)
    {
      v21 = CFNumberGetTypeID();
      if (v21 == CFGetTypeID(a3))
      {
        sub_2773C1B38(a3, (v6 + 1044));
      }

      goto LABEL_33;
    }

    if (dword_280B9A880 >= 3)
    {
      fwrite("Invalid value of VideoResolutionAdaptationType", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Invalid value of VideoResolutionAdaptationType");
    }

LABEL_57:
    std::mutex::unlock(v18);
    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2638]))
  {
    v18 = *(v6 + 1088);
    std::mutex::lock(v18);
    if (!a3)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Invalid value of ActiveVideoResolution", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Invalid value of ActiveVideoResolution");
      }

      goto LABEL_57;
    }

    v22 = CFDictionaryGetTypeID();
    if (v22 == CFGetTypeID(a3))
    {
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CE2770]);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, (v6 + 1048));
        v24 = CFDictionaryGetValue(a3, *MEMORY[0x277CE2768]);
        if (v24)
        {
          CFNumberGetValue(v24, kCFNumberIntType, (v6 + 1052));
          goto LABEL_33;
        }

        if (dword_280B9A880 < 3)
        {
          goto LABEL_57;
        }

        v29 = *MEMORY[0x277D85DF8];
        v30 = "Invalid value of kVTDecompressionResolutionKey_Height";
        v31 = "Invalid value of kVTDecompressionResolutionKey_Height";
        v32 = 53;
      }

      else
      {
        if (dword_280B9A880 < 3)
        {
          goto LABEL_57;
        }

        v29 = *MEMORY[0x277D85DF8];
        v30 = "Invalid value of kVTDecompressionResolutionKey_Width";
        v31 = "Invalid value of kVTDecompressionResolutionKey_Width";
        v32 = 52;
      }

      fwrite(v31, v32, 1uLL, v29);
      syslog(27, v30);
      goto LABEL_57;
    }

LABEL_33:
    std::mutex::unlock(v18);
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    if (a3)
    {
      v25 = CFBooleanGetTypeID();
      if (v25 == CFGetTypeID(a3))
      {
        v26 = sub_2773C1BA4(a3);
        result = 0;
        if (v26)
        {
          v16 = 2;
        }

        else
        {
          v16 = 0;
        }

        v17 = (v6 + 1060);
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2700]))
  {
    if (a3)
    {
      v27 = CFBooleanGetTypeID();
      if (v27 == CFGetTypeID(a3))
      {
        v28 = sub_2773C1BA4(a3);
        result = 0;
        atomic_store(v28, (v6 + 1068));
        return result;
      }
    }

    return 0;
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("unrecognised property key", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "unrecognised property key");
  }

  return 4294954396;
}

CFTypeID sub_2773C1B38(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {

    return CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
  }

  return result;
}

uint64_t sub_2773C1BF0(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    if (dword_280B9A880 >= 3)
    {
      v10 = *MEMORY[0x277D85DF8];
      v11 = "No decoder, session was invalidated?\n";
      v12 = "No decoder, session was invalidated?\n";
      v13 = 37;
      goto LABEL_7;
    }

    return 4294954393;
  }

  v8 = DerivedStorage;
  v9 = atomic_load((DerivedStorage + 1096));
  if (v9)
  {
    if (dword_280B9A880 >= 3)
    {
      v10 = *MEMORY[0x277D85DF8];
      v11 = "Session was invalidated";
      v12 = "Session was invalidated";
      v13 = 23;
LABEL_7:
      fwrite(v12, v13, 1uLL, v10);
      syslog(27, v11);
      return 4294954393;
    }

    return 4294954393;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26F8]))
  {
    v15 = atomic_load((v8 + 1064));
    valuePtr = v15;
    v16 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
    result = 0;
LABEL_22:
    *a4 = v16;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    result = 0;
    if (atomic_load((v8 + 1060)))
    {
      v18 = MEMORY[0x277CBED28];
    }

    else
    {
      v18 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2700]))
  {
    result = 0;
    v19 = atomic_load((v8 + 1068));
    if (v19)
    {
      v18 = MEMORY[0x277CBED28];
    }

    else
    {
      v18 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2660]))
  {
    result = 0;
    v18 = MEMORY[0x277CBED28];
LABEL_21:
    v16 = *v18;
    goto LABEL_22;
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("unrecognised property key", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "unrecognised property key");
  }

  return 4294954396;
}

__CFString *sub_2773C1DF0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<LRPVideoDecoder %p>", a1);
  return Mutable;
}

std::mutex *sub_2773C1E48()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sub_2773C1E9C();
  result = *(DerivedStorage + 1088);
  if (result)
  {
    std::mutex::~mutex(result);
    result = MEMORY[0x277CAD370]();
  }

  *(DerivedStorage + 1088) = 0;
  return result;
}

uint64_t sub_2773C1E9C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = atomic_load((DerivedStorage + 1096));
  if ((v1 & 1) == 0)
  {
    v2 = DerivedStorage;
    atomic_store(1u, (DerivedStorage + 1096));
    v3 = *(DerivedStorage + 1088);
    std::mutex::lock(v3);
    v4 = v2[4];
    if (v4)
    {
      v5 = sub_27743C0D0(v4);
      MEMORY[0x277CAD370](v5, 0x10F2C4084AC0B2ELL);
    }

    v2[4] = 0;
    v6 = v2[135];
    if (v6)
    {
      MEMORY[0x277CAD370](v6, 0x1080C409C3078A8);
    }

    v2[135] = 0;
    v7 = v2[3];
    if (v7)
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        *(v7 + 40) = v8;
        operator delete(v8);
      }

      MEMORY[0x277CAD370](v7, 0x1010C4086E593A5);
    }

    v2[3] = 0;
    *v2 = 0;
    FigFormatDescriptionRelease();
    v2[2] = 0;
    std::mutex::unlock(v3);
  }

  return 0;
}

void VCPHEVCRegisterDecoder()
{
  if (atomic_load_explicit(&qword_280B9A8F0, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_280B9A8F0, &v3, sub_2773C1FF4);
  }
}

void sub_2773C1FF4()
{
  keys[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  keys[0] = *MEMORY[0x277CE2B70];
  values = *MEMORY[0x277CBED10];
  v1 = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  VTRegisterVideoDecoderWithInfo();
  if (v1)
  {
    CFRelease(v1);
  }
}

char *sub_2773C20C0(uint64_t a1, int a2)
{
  *(a1 + 12) = 257;
  v3 = a1 + 12;
  *(a1 + 8) = 0;
  *(a1 + 144) = 0;
  v4 = a1 + 144;
  *(a1 + 40) = 0x403E000000000000;
  v5 = a1 + 40;
  *(a1 + 48) = 0x7FFFFFFF;
  v6 = a1 + 48;
  *(a1 + 1440) = 0;
  *(a1 + 1196) = 3;
  *(a1 + 1220) = -1;
  *(a1 + 1296) = a2;
  *(a1 + 32) = -1082130432;
  v7 = a1 + 32;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0;
  *(a1 + 1344) = 0;
  v8 = MEMORY[0x277CC08F0];
  v9 = *MEMORY[0x277CC08F0];
  *(a1 + 1352) = *MEMORY[0x277CC08F0];
  v10 = *(v8 + 16);
  *(a1 + 1368) = v10;
  *(a1 + 1392) = v10;
  *(a1 + 1376) = v9;
  result = operator new(0x2B10uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    *(a1 + 1288) = 0;
    return result;
  }

  v12 = result;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 34) = -1;
  *(result + 19) = -1;
  result[40] = 0;
  *(result + 16) = 0;
  *(result + 12) = -1;
  result[52] = -1;
  result[100] = 0;
  *(result + 21) = 0;
  *(result + 22) = 0;
  *(result + 24) = 0;
  *(result + 25) = 0;
  *(result + 26) = 0;
  *(result + 34) = 0;
  result[288] = 0;
  *(result + 37) = 0;
  *(result + 38) = 0;
  *(result + 42) = 0;
  *(result + 43) = 0;
  v13 = (result + 360);
  *(result + 44) = 0;
  sub_2774404A0((result + 360));
  *(v12 + 45) = &unk_288662B50;
  *(v12 + 1017) = 0;
  *(v12 + 150) = 0;
  v12[952] = 0;
  *(v12 + 232) = 1000;
  v12[869] = 7;
  *(v12 + 7876) = 0u;
  *(v12 + 7892) = 0u;
  *(v12 + 7908) = 0u;
  *(v12 + 7924) = 0u;
  *(v12 + 7940) = 0u;
  *(v12 + 7956) = 0u;
  *(v12 + 7972) = 0u;
  *(v12 + 7988) = 0u;
  *(v12 + 8004) = 0u;
  *(v12 + 8020) = 0u;
  *(v12 + 8036) = 0u;
  *(v12 + 8052) = 0u;
  *(v12 + 8068) = 0u;
  *(v12 + 8084) = 0u;
  *(v12 + 8100) = 0u;
  *(v12 + 8116) = 0u;
  bzero(v12 + 956, 0x1B00uLL);
  *(v12 + 202) = 0;
  *(v12 + 100) = 0;
  *(v12 + 49) = 0u;
  *(v12 + 102) = 0;
  *(v12 + 828) = 0;
  *(v12 + 209) = 0;
  sub_277441D2C(v13, 0xAF63E54C8601FBD7, "h", v12 + 427, 0);
  sub_277441D2C(v13, 0xA9918CC5FA26ABAuLL, "help", v12 + 427, 0);
  sub_277441E9C(v13, 0, 0, v12 + 50);
  sub_277441E9C(v13, 0xAF63E24C8601F6BELL, "o", v12 + 51);
  sub_277441E9C(v13, 0xAF63EF4C86020CD5, "r", v12 + 52);
  sub_277441E9C(v13, 0x75909A2E7B7A5950uLL, "negotiationdetails", v12 + 85);
  sub_277441D2C(v13, 0x81988191775D1F3uLL, "md5", v12 + 424, 0);
  sub_277441D2C(v13, 0x7E8D690E31D04174uLL, "psnr", v12 + 425, 0);
  sub_277441D2C(v13, 0x4B67B014335F38D7uLL, "quiet", v12 + 426, 0);
  sub_277441D2C(v13, 0x35CA209DCAF9161DuLL, "verbose", v12 + 428, 0);
  sub_277441D2C(v13, 0x6C8B4995CC5E527EuLL, "ionly", v12 + 429, 0);
  sub_277441D2C(v13, 0x72868D48B2D5EBA3uLL, "lossless", v12 + 430, 0);
  sub_277441D2C(v13, 0xB03C2E5AF042E3A5, "probskip", v12 + 445, 1);
  sub_277441D2C(v13, 0x8435706FD97519EDLL, "framereenc", v12 + 446, 0);
  sub_277441D2C(v13, 0xDA7CA283D396F91BLL, "framedrop", v12 + 447, 0);
  sub_277441D2C(v13, 0xDFF2FE5D542EA31BLL, "preprocess", v12 + 448, 0);
  sub_277441D2C(v13, 0x602305DAC098B022uLL, "cabac_estimation_enable_", v12 + 449, 0);
  sub_277441D2C(v13, 0x3A01566E736A4E8uLL, "dpmd", v12 + 450, 0);
  sub_277441D2C(v13, 0x2B1EBF5605FA6228uLL, "dpmd-enable", v12 + 451, 0);
  sub_277441D2C(v13, 0x651738E42F5A27F0uLL, "band-qp", v12 + 452, 0);
  sub_277441B0C(v13, 0x272E34E2BFB32E6CuLL, "hdr-type", v12 + 481, -1);
  sub_277441D2C(v13, 0xB5C61104404590D6, "hdr-pq-deblock", v12 + 482, 0);
  sub_277441D2C(v13, 0x240E0E991FD2AE9BuLL, "hdr-pq-banding", v12 + 483, 0);
  sub_277441D2C(v13, 0xA8EDB06A6EA3063ELL, "hdr-pq-qpm", v12 + 484, 0);
  sub_277441D2C(v13, 0xE7A385CA7BF9D2E1, "hdr-pq-chroma-qpm", v12 + 485, 0);
  sub_277441D2C(v13, 0xEBAEEC9A08259398, "adaptive-hdr-chroma-qpm", v12 + 486, 0);
  sub_277441D2C(v13, 0xB71C8689F9C18CECLL, "hdr-hlg-qpm", v12 + 487, 0);
  sub_2774418E8(v13, 0x818677D402EF7CE6, "roundingcontrol", v12 + 227, 0);
  sub_277441D2C(v13, 0x74FC82D498616DDCuLL, "recoverdroppedframe", v12 + 575, 0);
  sub_277441D2C(v13, 0xBDE6380775DA187BLL, "frameack", v12 + 585, 0);
  sub_277441B0C(v13, 0x8914E07B53BA1E3uLL, "db", v12 + 561, 1);
  sub_277441B0C(v13, 0xAF63EE4C86020B22, "s", v12 + 480, 1);
  sub_277441B0C(v13, 0x8B74307B55C5E6FuLL, "iq", v12 + 488, 26);
  sub_277441B0C(v13, 0x8D55707B5757DFAuLL, "pq", v12 + 489, 29);
  sub_277441B0C(v13, 0xDDFB231C5BDB75EuLL, "cb-qp-offset", v12 + 490, 0);
  sub_277441B0C(v13, 0x4D722CB707F47EEuLL, "cr-qp-offset", v12 + 491, 0);
  sub_277441B0C(v13, 0x70A12C1952D5628BuLL, "qpm", v12 + 492, 0);
  sub_277441B0C(v13, 0x3740EA07C0973081uLL, "qpmp", v12 + 493, 0);
  sub_277441D2C(v13, 0xA5ED87530AAE8BE1, "qpm-flat-area", v12 + 495, 1);
  sub_277441B0C(v13, 0x3740DD07C0971A6AuLL, "qpme", v12 + 494, 0);
  sub_277441B0C(v13, 0xF8B0C066E05FB132, "dqpd", v12 + 496, 0);
  sub_277441B0C(v13, 0x53F78B1FC36A960FuLL, "rdoq", v12 + 497, 0);
  sub_2774416C0(v13, 0x2C6F698EE31B44D2uLL, "rdoq-prequant-dz-intra", v12 + 125, 256);
  sub_2774416C0(v13, 0x2C2E868EE2E3DF24uLL, "rdoq-prequant-dz-inter", v12 + 126, 256);
  sub_277441D2C(v13, 0x822379195CCD6478, "sbh", v12 + 508, 1);
  sub_2774416C0(v13, 0xAF63DB4C8601EAD9, "f", v12 + 128, 0x7FFFFFFF);
  sub_27743FBF4();
  sub_2774416C0(v13, 0xC0AB56BF45863635, "max-threads", v12 + 130, dword_280B9A8A4);
  sub_2774416C0(v13, 0x90EC632032E98B72, "wpp-threads", v12 + 131, 0);
  sub_277441D2C(v13, 0x8931489410D7395BLL, "global-threadpool", v12 + 560, 0);
  sub_277441FA4(v13, 0x72351913690D14uLL, "bps", v12 + 137);
  sub_277441B0C(v13, 0x8DC5507B57B9942uLL, "rc", v12 + 552, 0);
  sub_277441D2C(v13, 0x5DAB01B8216B7BDDuLL, "scalar", v12 + 568, 0);
  sub_277441D2C(v13, 0x1E5485EF2E9F9384uLL, "time", v12 + 569, 0);
  sub_277441D2C(v13, 0x832846984DBFE0D9, "time-frames", v12 + 570, 0);
  sub_277441D2C(v13, 0x54EB290A497D21C7uLL, "leaks", v12 + 571, 0);
  sub_277441D2C(v13, 0x5ED5212C9D566C9DuLL, "use-cra", v12 + 536, 0);
  sub_277441B0C(v13, 0x822DA0195CD5FB42, "sao", v12 + 572, 2);
  sub_277441B0C(v13, 0x9823E18BF99D7A9uLL, "saoq", v12 + 573, 0);
  sub_277441B0C(v13, 0x9BFA121F99ACE953, "adaptcu", v12 + 444, 0);
  sub_277441B0C(v13, 0x8D26507B5735FEDuLL, "qc", v12 + 562, 0);
  sub_277441B0C(v13, 0x8A25007B54A187CuLL, "cf", v12 + 563, 3);
  sub_277441D2C(v13, 0x8A24D07B54A1363uLL, "cc", v12 + 564, 1);
  sub_277441D2C(v13, 0x50939CEF4A983267uLL, "tssd", v12 + 565, 0);
  sub_277441D2C(v13, 0xCDE5ECAD70CF6CD5, "lomd", v12 + 908, 0);
  sub_277441D2C(v13, 0xDC9E8F18FEC9589BLL, "fii", v12 + 898, 0);
  sub_277441B0C(v13, 0x8AD3B07B553FC52uLL, "lm", v12 + 566, 1);
  sub_277441B0C(v13, 0x570AB51944740F8AuLL, "trm", v12 + 567, 1);
  sub_2774416C0(v13, 0x615A99E879F1FBEDuLL, "maxsatd", v12 + 144, 32);
  sub_277441D2C(v13, 0x56E9FE341621E09uLL, "adaptive-lambda", v12 + 580, 1);
  sub_277441D2C(v13, 0x5334C45223677F91uLL, "no-ic-half", v12 + 581, 1);
  sub_277441D2C(v13, 0x5F76FE45FB19FE48uLL, "qpel-bilinear", v12 + 582, 0);
  sub_2774416C0(v13, 0x8984D07B541BEDEuLL, "fs", v12 + 129, 0);
  sub_277441B0C(v13, 0x41B440525D697FF7uLL, "mdmode", v12 + 856, 4);
  sub_277441D2C(v13, 0xC25B30BDF01A30D5, "mtree-skip-rect", v12 + 888, 0);
  sub_277441D2C(v13, 0xB8E3D9290E474EB5, "check-split-first", v12 + 860, 0);
  sub_277441D2C(v13, 0x8A2F64AA860B099FLL, "mtree-cu-test-order", v12 + 890, 0);
  sub_277441B0C(v13, 0xD21B034DBFE04CECLL, "skip-bias", v12 + 889, 1);
  sub_277441D2C(v13, 0x43F116253D1EA9CEuLL, "mtree-skip-cu-split", v12 + 891, 0);
  sub_277441D2C(v13, 0x840C1656727A0FCFLL, "mtree-skip-cu-full", v12 + 892, 0);
  sub_277441D2C(v13, 0xC4BF903204850796, "fast-merge", v12 + 901, 1);
  sub_277441D2C(v13, 0x1E2005B3F5BEB950uLL, "satd-merge", v12 + 902, 0);
  sub_2774416C0(v13, 0x799736CC586FE042uLL, "num-merge-candidate", v12 + 226, 5);
  sub_277441B0C(v13, 0xF43418886590D867, "imode", v12 + 857, 0);
  sub_277441B0C(v13, 0x2B80F1192BB9FFE5uLL, "iet", v12 + 858, 0);
  sub_277441B0C(v13, 0xD65DFC1F8E66C132, "ichroma", v12 + 859, 0);
  sub_277441B0C(v13, 0xF8430C8B4F06F401, "amvp-et", v12 + 887, 0);
  sub_277441B0C(v13, 0xB85BFD9F3C15B21BLL, "nimode", v12 + 861, 2);
  sub_2774416C0(v13, 0xAA68CD72D6497127, "max-intra-cu-size", v12 + 216, 6);
  sub_277441B0C(v13, 0x81EED073FE32EFC5, "max-inter-cu-size", v12 + 868, 6);
  sub_277441B0C(v13, 0x6273AF826AE6052uLL, "check-combine-cu", v12 + 910, 0);
  sub_277441D2C(v13, 0x7A5CA636C472D4BAuLL, "less-recon", v12 + 911, 0);
  sub_277441B0C(v13, 0x5A76D5720CA84BE6uLL, "thrde", v12 + 862, 0);
  sub_277441D2C(v13, 0x42362CEF434B870CuLL, "tmvp", v12 + 583, 0);
  sub_277441D2C(v13, 0xC4D0FEC7CD579487, "reencode-anti-pop", v12 + 584, 0);
  sub_277441B0C(v13, 0x9532CFA66877DD95, "num_mvp", v12 + 586, 0);
  sub_277441D2C(v13, 0xE31989A769C63238, "sub8x8pu", v12 + 587, 1);
  sub_277441D2C(v13, 0xAF2A5491CAA7C0A4, "me-topleft", v12 + 592, 1);
  sub_277441D2C(v13, 0x2B9CFF192BD29267uLL, "imv", v12 + 593, 1);
  sub_277441D2C(v13, 0x7EF6AFD0BC2C3AFBuLL, "turde", v12 + 588, 0);
  sub_277441B0C(v13, 0xAF38EF220F97347CLL, "fasttu", v12 + 589, 0);
  sub_277441D2C(v13, 0xAEC568C75E5A789BLL, "bipred", v12 + 594, 0);
  sub_277441B0C(v13, 0xEDFFBC8BA94277D2, "biiter", v12 + 595, 1);
  sub_277441B0C(v13, 0x4A6099A424EFF8D8uLL, "bisearch", v12 + 596, 4);
  sub_277441B0C(v13, 0xD92EDD40EE009C75, "fastbipred", v12 + 597, 0);
  sub_277441D2C(v13, 0xDC91E78F7946A89BLL, "lowdelay-b", v12 + 599, 0);
  sub_2774416C0(v13, 0x32468D84F55FB2A7uLL, "number-gop", v12 + 151, 1);
  sub_2774416C0(v13, 0x9163BFEE0B8BBC39, "dec-reorder", v12 + 161, 0);
  sub_277441D2C(v13, 0x6FB4ED4D665CFB53uLL, "ref-l0-m", v12 + 648, 0);
  sub_277441D2C(v13, 0x672CC44D6190BB64uLL, "ref-l1-m", v12 + 649, 0);
  sub_277441D2C(v13, 0xF177F127AFD546AFLL, "fastprecomp", v12 + 590, 0);
  sub_277441D2C(v13, 0xA8CCC6E13F002CB5, "fast-TA", v12 + 591, 0);
  sub_277441E9C(v13, 0xC149B762C3CBBEEFLL, "ave_bin_path", v12 + 83);
  sub_277441E9C(v13, 0xC8CF39AD19D4144ELL, "ave_log_path", v12 + 84);
  sub_277441B0C(v13, 0xC31497E238864B46, "fw_stats_usage", v12 + 697, 0);
  sub_2774416C0(v13, 0x4CF9EDAEEADD3E2DuLL, "start_frame", v12 + 133, 0);
  sub_277441E9C(v13, 0x58682CE1B84A76E1uLL, "fw_stats_path_prefix", v12 + 88);
  sub_277441D2C(v13, 0xE71AB9033F0EDA46, "ispdrivenwp", v12 + 712, 0);
  sub_277441D2C(v13, 0x25CA010D7C67FE5uLL, "en-analyze-wp", v12 + 713, 0);
  sub_2774416C0(v13, 0x10F5B9695738A8B9uLL, "forcedqualitylevel", v12 + 172, -1);
  sub_2774416C0(v13, 0x362F2028C00751E9uLL, "forcedqp", v12 + 173, -1);
  sub_277441D2C(v13, 0x694C40428BDBDE55uLL, "vradeblocktuning", v12 + 696, 0);
  sub_277441E9C(v13, 0x8860D9D1EF04328uLL, "isp_meta_file", v12 + 90);
  sub_277441E9C(v13, 0x6F04801F48EBD537uLL, "face_meta_file", v12 + 91);
  sub_277441D2C(v13, 0xF0F0537A8BB752CELL, "facedrivenqpm", v12 + 714, 0);
  sub_277441D2C(v13, 0xDF7FDAC19F2075E3, "hardware_scaling", v12 + 736, 0);
  sub_277441D2C(v13, 0xBE27DAD503ACC303, "ref_selection", v12 + 870, 0);
  sub_277441D2C(v13, 0x8AE8B64DF29B63BELL, "extended-frame-stats", v12 + 737, 0);
  sub_277441E9C(v13, 0xFE98FF5FC68FF9F7, "logfile", v12 + 93);
  sub_277441D2C(v13, 0xBC874B605A9708BuLL, "fixed-fps", v12 + 871, 0);
  sub_277441D2C(v13, 0xD6C905BD7D301F5FLL, "fast-sao", v12 + 574, 0);
  sub_2774416C0(v13, 0xC757C18968E4439DLL, "debug_facetime", v12 + 189, 0);
  sub_277441D2C(v13, 0xE7F531AB6DDD32A0, "use_bias", v12 + 840, 0);
  v68 = 0x32B8DD2503E0688BLL;
  v69 = "predbias";
  *(v12 + 106) = 0x3FE8000000000000;
  for (i = *(v12 + 47); i; i = *i)
  {
    v15 = i[4];
    if (v15 <= 0x32B8DD2503E0688BLL)
    {
      if (v15 == 0x32B8DD2503E0688BLL)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", "predbias");
          syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", "predbias");
        }

        goto LABEL_9;
      }

      ++i;
    }
  }

  v16 = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (v16)
  {
    v16[2] = 0;
    *v16 = &unk_288662CA0;
    *(v16 + 2) = v12 + 848;
    sub_2774407C4((v12 + 368), 0x32B8DD2503E0688BuLL)[6] = v16;
  }

LABEL_9:
  sub_277441D2C(v13, 0xFC7DFD8BC570D29ELL, "noise-level-control", v12 + 912, 0);
  sub_277441D2C(v13, 0xD751E917FCC287DDLL, "intra-motion-analysis", v12 + 936, 0);
  sub_277441D2C(v13, 0x2C51CE3D8BCD05CuLL, "mv-analysis-anti-pop", v12 + 937, 0);
  sub_277441D2C(v13, 0xA1EDFCC9C98DE037, "noise-level-estimate", v12 + 913, 0);
  sub_277441B0C(v13, 0x992C8E2B020CE065, "noise-early-terminate", v12 + 914, 0);
  sub_2774422D8(v13, 0xA5B5C24B1EE618C9, "noise-et-strength", v12 + 229, 1.0);
  sub_2774416C0(v13, 0x567920750E39752DuLL, "freq-deadzone-level", v12 + 230, 0);
  sub_277441D2C(v13, 0x70CF4EDD9A7A5A6FuLL, "ml-tree-cu-split", v12 + 752, 0);
  sub_277441D2C(v13, 0x4BCAD57DADE2AAD5uLL, "use-ernie-motion-mask-qpm", v12 + 753, 0);
  sub_277441D2C(v13, 0x9FA17F231CA2208DLL, "legacy-pixfmt", v12 + 872, 0);
  sub_2774418E8(v13, 0xD2169DA14FFB5F9ALL, "ifdist", v12 + 437, 0);
  sub_2774416C0(v13, 0x5C8E300840CF1DCCuLL, "idr-interval", v12 + 219, 0);
  sub_2774422D8(v13, 0x25B0C33846144F91uLL, "idr-duration", v12 + 220, 0.0);
  sub_277441D2C(v13, 0x907E5BC0BE3F5F7FLL, "scene-idr", v12 + 884, 0);
  sub_2774418E8(v13, 0xEADA4767E797268BLL, "vui-chroma-loc", v12 + 381, 0);
  sub_277441D2C(v13, 0x3BEB44829B7A4FABuLL, "vui-full-range", v12 + 760, 0);
  sub_2774418E8(v13, 0x9FFE593DC10E7CC4, "vui-primaries", v12 + 382, 2);
  sub_2774418E8(v13, 0x2660BA38B42FDFB5uLL, "vui-transfer", v12 + 383, 2);
  sub_2774418E8(v13, 0xE961BACE8A163BCBLL, "vui-matrix-coeff", v12 + 384, 2);
  sub_2774416C0(v13, 0xA4FAC089B047A575, "schedule-policy", v12 + 233, 0);
  sub_2774406FC(v13, 0x4179B3C137C3CEB0uLL, "vui-sar", sub_277485B54, 0, 0);
  sub_2774416C0(v13, 0x818A639346385C5uLL, "required-sps-id", v12 + 235, 0);
  sub_2774416C0(v13, 0xEC4CA737CBED8456, "required-pps-id", v12 + 236, 0);
  sub_2774416C0(v13, 0x4BD00B7E61081A2BuLL, "alpha-layer-id", v12 + 237, 0);
  sub_277440584(v13, 0xD1603A6EC53E98DFLL, "chroma", v12 + 164, qword_27A7169F8, 0x2BD23A1809BB3649);
  sub_277440584(v13, 0xFE31B357AB72A0FuLL, "threading", v12 + 136, qword_27A7168D8, 0x3C0D17BAD169557BLL);
  sub_277440584(v13, 0xF5B6EA8C35AC1E89, "priority", v12 + 139, qword_27A716980, 0xC76A095E1FFA22B6);
  sub_277440584(v13, 0xB2883551E8F20F05, "me-mode", v12 + 108, qword_27A716A70, 0x9783E8FBF7E0C136);
  sub_277440584(v13, 0x73F6047B706C4F0EuLL, "subpel-mode", v12 + 109, qword_27A716AE8, 0x8948DE7DE7DC4ALL);
  sub_277440584(v13, 0xF481A443D70D26E9, "bipred-mode", v12 + 110, qword_27A716B60, 0xDC9178070790BA59);
  sub_277441FA4(v13, 0x8ADD349E618BA10ELL, "profile", v12 + 115);
  v68 = 0xE8DDC90A9D7C709DLL;
  v69 = "level";
  *(v12 + 232) = 0;
  v17 = *(v12 + 47);
  if (!v17)
  {
LABEL_14:
    v19 = operator new(0x18uLL, MEMORY[0x277D826F0]);
    if (v19)
    {
      v19[2] = 0;
      *v19 = &unk_288662BB0;
      *(v19 + 2) = v12 + 464;
      sub_2774407C4((v12 + 368), 0xE8DDC90A9D7C709DLL)[6] = v19;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v18 = v17[4];
    if (v18 <= 0xE8DDC90A9D7C709DLL)
    {
      break;
    }

LABEL_13:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  if (v18 != 0xE8DDC90A9D7C709DLL)
  {
    ++v17;
    goto LABEL_13;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Hash of option '%s' collides with previous a option! Change its name!\n", "level");
    syslog(27, "Hash of option '%s' collides with previous a option! Change its name!\n", "level");
  }

LABEL_16:
  sub_2774406FC(v13, 0xAF63D94C8601E773, "d", sub_277485A5C, 0, 0);
  sub_2774406FC(v13, 0x8984E07B541C091uLL, "fr", sub_277485944, "30", 0);
  sub_2774406FC(v13, 0x89E9C01960F4C582, "ref", sub_277485850, "1:0:1:1", 0);
  sub_2774406FC(v13, 0x8A24307B54A0265uLL, "cu", sub_277485B54, "3:6", 0);
  sub_2774406FC(v13, 0x8C84307B56AD1A2uLL, "tu", sub_277485B54, "2:5", 0);
  sub_2774406FC(v13, 0x571BB01944827A3EuLL, "tuh", sub_277485B54, "2:2", 0);
  sub_2774406FC(v13, 0x8C49EF6ED9F28EA0, "bit-depth", sub_277485634, "8", 0);
  sub_2774406FC(v13, 0x81C3B0CF315BC925, "input-bit-depth", sub_277485634, 0, 0);
  sub_2774406FC(v13, 0xDD66DE355FAABFA7, "HEVCEncoderOptions", sub_277440E48, 0, 0);
  sub_2774406FC(v13, 0xA72E681EA6EA2FFDLL, "gop-size", sub_2774854A8, 0, 0);
  sub_2774406FC(v13, 0x50F6C19BB163CD98uLL, "ref-struct", sub_2774848C0, 0, 0);
  sub_2774406FC(v13, 0x3DC4253E192FDEDuLL, "max-cll", sub_277485B54, 0, 0);
  sub_2774406FC(v13, 0x90898E7CB0F4FE00, "master-display", sub_27748481C, 0, 0);
  sub_2774406FC(v13, 0x6FFBA4D618E54C5DuLL, "ambient-viewing", sub_2774847A0, 0, 0);
  sub_2774406FC(v13, 0x92F39F846EC10A99, "scaling-list", sub_277484654, 0, 0);
  sub_2774406FC(v13, 0x6BABB84D374647CAuLL, "scaling-list-file", sub_27748421C, 0, 0);
  sub_2774406FC(v13, 0xAF63E84C860200F0, "u", sub_2774839DC, 0, 1);
  *(v12 + 1226) = 0;
  *(v12 + 612) = 0u;
  bzero(v12 + 8152, 0x660uLL);
  *(v12 + 1231) = 850045863;
  *(v12 + 616) = 0u;
  *(v12 + 617) = 0u;
  *(v12 + 618) = 0u;
  *(v12 + 1238) = 0;
  *(v12 + 1240) = 0;
  *(v12 + 9928) = 0u;
  sub_2773FE630((v12 + 9968));
  *(v12 + 649) = 0u;
  *(v12 + 10408) = 0u;
  *(v12 + 10760) = 0u;
  *(v12 + 10776) = 0u;
  *(v12 + 10792) = 0u;
  *(v12 + 1351) = 850045863;
  *(v12 + 676) = 0u;
  *(v12 + 677) = 0u;
  *(v12 + 678) = 0u;
  *(v12 + 679) = 0u;
  *(v12 + 680) = 0u;
  *(v12 + 681) = 0u;
  *(v12 + 1364) = 0;
  v12[11012] = 1;
  v12[11012] = CC_MD5_Init((v12 + 10920)) != 0;
  *(v12 + 2454) = 0;
  *(v12 + 1223) = 0;
  *(v12 + 1300) = 0;
  *(v12 + 23) = 0;
  *(v12 + 2036) = 0;
  *(v12 + 32) = 0;
  *(v12 + 33) = 0;
  *(v12 + 1228) = 0;
  *(v12 + 1230) = 0;
  *(v12 + 1229) = 0;
  v20 = *MEMORY[0x277D85E08];
  *(v12 + 30) = 0;
  *(v12 + 31) = v20;
  v12[224] = 1;
  *(v12 + 1239) = 0;
  *(v12 + 9948) = 0;
  *(v12 + 82) = 0;
  *(v12 + 9961) = 0;
  sub_2773EC398(&v68);
  *(a1 + 1288) = v12;
  if ((atomic_load_explicit(&qword_280A71198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71198))
  {
    qword_280A71190 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &unk_27750D8C0);
    __cxa_guard_release(&qword_280A71198);
  }

  if ((atomic_load_explicit(&qword_280A711A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A711A8))
  {
    qword_280A711A0 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat32Type, &unk_27750D8C4);
    __cxa_guard_release(&qword_280A711A8);
  }

  result = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v21 = result;
    *result = 0u;
    *(result + 1) = 0u;
    *(result + 8) = 1065353216;
    *(a1 + 1448) = result;
    TypeID = CFStringGetTypeID();
    v68 = *MEMORY[0x277CE25D8];
    v69 = TypeID;
    v70 = a1;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v23 = CFBooleanGetTypeID();
    v68 = *MEMORY[0x277CE2508];
    v69 = v23;
    v70 = v3;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v24 = CFBooleanGetTypeID();
    v68 = *MEMORY[0x277CE2500];
    v69 = v24;
    v70 = v3 + 1;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v25 = CFBooleanGetTypeID();
    v68 = @"DroppablePFramesOnly";
    v69 = v25;
    v70 = a1 + 14;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v26 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25A0];
    v69 = v26;
    v70 = a1 + 16;
    v71 = 3;
    v72 = qword_280A71190;
    sub_2773C4E20(v21, &v68);
    v27 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25A8];
    v69 = v27;
    v70 = a1 + 20;
    v71 = 5;
    v72 = qword_280A711A0;
    sub_2773C4E20(v21, &v68);
    v28 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25B8];
    v69 = v28;
    v70 = a1 + 24;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v29 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE2518];
    v69 = v29;
    v70 = a1 + 28;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v30 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25E0];
    v69 = v30;
    v70 = v7;
    v71 = 5;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v31 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE2548];
    v69 = v31;
    v70 = v5;
    v71 = 13;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v32 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25F8];
    v69 = v32;
    v70 = v6;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v33 = CFDictionaryGetTypeID();
    v68 = *MEMORY[0x277CE25C0];
    v69 = v33;
    v70 = a1 + 56;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v34 = CFStringGetTypeID();
    v68 = *MEMORY[0x277CE2528];
    v69 = v34;
    v70 = a1 + 72;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v35 = CFStringGetTypeID();
    v68 = *MEMORY[0x277CE2600];
    v69 = v35;
    v70 = a1 + 80;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v36 = CFStringGetTypeID();
    v68 = *MEMORY[0x277CE2610];
    v69 = v36;
    v70 = a1 + 88;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v37 = CFDataGetTypeID();
    v68 = *MEMORY[0x277CE2530];
    v69 = v37;
    v70 = a1 + 96;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v38 = CFDataGetTypeID();
    v68 = *MEMORY[0x277CE2590];
    v69 = v38;
    v70 = a1 + 104;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v39 = CFDataGetTypeID();
    v68 = *MEMORY[0x277CE2570];
    v69 = v39;
    v70 = a1 + 136;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v40 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE2608];
    v69 = v40;
    v70 = v4;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v41 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE2550];
    v69 = v41;
    v70 = v3 + 136;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v42 = CFNumberGetTypeID();
    v68 = @"RequiredHEVCSequenceParameterSetID";
    v69 = v42;
    v70 = a1 + 160;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v43 = CFNumberGetTypeID();
    v68 = @"RequiredHEVCPictureParameterSetID";
    v69 = v43;
    v70 = a1 + 164;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v44 = CFNumberGetTypeID();
    v68 = @"RequiredHEVCVideoParameterSetAlphaLayerID";
    v69 = v44;
    v70 = a1 + 168;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v45 = CFBooleanGetTypeID();
    v68 = @"EncodesAlpha";
    v69 = v45;
    v70 = a1 + 172;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v46 = CFBooleanGetTypeID();
    v68 = @"RequireDeterministicDependencyAndReordering";
    v69 = v46;
    v70 = a1 + 173;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v47 = CFNumberGetTypeID();
    v68 = @"InitialQPI";
    v69 = v47;
    v70 = a1 + 152;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v48 = CFNumberGetTypeID();
    v68 = @"InitialQP";
    v69 = v48;
    v70 = a1 + 152;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v49 = CFDataGetTypeID();
    v68 = @"QuantizationScalingLists";
    v69 = v49;
    v70 = a1 + 120;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v50 = CFNumberGetTypeID();
    v68 = *MEMORY[0x277CE25E8];
    v69 = v50;
    v70 = a1 + 128;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v51 = CFNumberGetTypeID();
    v68 = @"ThermalLevel";
    v69 = v51;
    v70 = a1 + 176;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v52 = CFStringGetTypeID();
    v68 = @"NegotiationDetails";
    v69 = v52;
    v70 = a1 + 184;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v53 = CFBooleanGetTypeID();
    v68 = @"UsingCellular";
    v69 = v53;
    v70 = a1 + 1193;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v54 = CFBooleanGetTypeID();
    v68 = @"PrivateKey001";
    v69 = v54;
    v70 = a1 + 1194;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v55 = CFNumberGetTypeID();
    v68 = @"PrivateKey002";
    v69 = v55;
    v70 = v3 + 1184;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v56 = CFNumberGetTypeID();
    v68 = @"PrivateKey000";
    v69 = v56;
    v70 = a1 + 1204;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v57 = CFStringGetTypeID();
    v68 = @"PrivateKey004";
    v69 = v57;
    v70 = a1 + 1208;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v58 = CFBooleanGetTypeID();
    v68 = @"PrivateKey005";
    v69 = v58;
    v70 = a1 + 1216;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v59 = CFNumberGetTypeID();
    v68 = @"PrivateKey003";
    v69 = v59;
    v70 = v3 + 1208;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v60 = CFStringGetTypeID();
    v68 = @"PrivateKey024";
    v69 = v60;
    v70 = a1 + 1224;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v61 = CFStringGetTypeID();
    v68 = @"PrivateKey023";
    v69 = v61;
    v70 = a1 + 1232;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v62 = CFBooleanGetTypeID();
    v68 = @"PrivateKey034";
    v69 = v62;
    v70 = a1 + 1240;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v63 = CFNumberGetTypeID();
    v68 = @"PrivateKey035";
    v69 = v63;
    v70 = a1 + 1244;
    v71 = 3;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v64 = CFStringGetTypeID();
    v68 = @"PrivateKey041";
    v69 = v64;
    v70 = a1 + 1248;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v65 = CFBooleanGetTypeID();
    v68 = @"PrivateKey044";
    v69 = v65;
    v70 = v3 + 1428;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v66 = CFBooleanGetTypeID();
    v68 = @"PrivateKey045";
    v69 = v66;
    v70 = v3 + 1429;
    v71 = 16;
    v72 = 0;
    sub_2773C4E20(v21, &v68);
    v67 = CFStringGetTypeID();
    v68 = @"PrivateKey046";
    v69 = v67;
    v70 = a1 + 1256;
    v71 = 16;
    v72 = 0;
    return sub_2773C4E20(v21, &v68);
  }

  else
  {
    *(a1 + 1448) = 0;
  }

  return result;
}

uint64_t sub_2773C4E20(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = CFEqual(v11[2], *a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2773C5248()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_288662E60, MEMORY[0x277D82620]);
}

void sub_2773C527C(uint64_t a1)
{
  if (*(a1 + 1312))
  {
    return;
  }

  *(a1 + 1312) = 1;
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 1208);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 1208) = 0;
  }

  v9 = *(a1 + 1224);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 1224) = 0;
  }

  v10 = *(a1 + 1232);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 1232) = 0;
  }

  v11 = *(a1 + 1248);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 1248) = 0;
  }

  v12 = *(a1 + 1256);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 1256) = 0;
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 96) = 0;
  }

  v14 = *(a1 + 104);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 104) = 0;
  }

  v15 = *(a1 + 112);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 112) = 0;
  }

  v16 = *(a1 + 120);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 120) = 0;
  }

  v17 = *(a1 + 136);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 136) = 0;
  }

  *(a1 + 1264) = 0;
  FigFormatDescriptionRelease();
  *(a1 + 1280) = 0;
  v18 = *(a1 + 1288);
  if (v18)
  {
    sub_277468F14(*(a1 + 1288));
    v19 = *(v18 + 9912);
    if (v19)
    {
      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(v18 + 9912));
      *(v18 + 9912) = 0;
    }

    v20 = *(v18 + 9824);
    if (v20)
    {
      dispatch_release(v20);
      *(v18 + 9824) = 0;
    }

    v21 = *(v18 + 9832);
    if (v21)
    {
      dispatch_release(v21);
      *(v18 + 9832) = 0;
    }

    v22 = *(v18 + 9784);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *(v18 + 10400);
    if (!v23)
    {
      goto LABEL_71;
    }

    v24 = v23[226];
    for (i = v23[225]; v24 != i; v23[226] = v24)
    {
      v26 = *(v24 - 1);
      if (v26)
      {
        std::condition_variable::~condition_variable((v26 + 104));
        std::mutex::~mutex((v26 + 40));
        v27 = *(v26 + 8);
        if (v27)
        {
          *(v26 + 16) = v27;
          operator delete(v27);
        }

        MEMORY[0x277CAD370](v26, 0x1020C40567BECFALL);
        v24 = v23[226];
        i = v23[225];
      }

      v24 -= 8;
    }

    if (i)
    {
      v23[226] = i;
      operator delete(i);
    }

    v28 = v23[220];
    v23[220] = 0;
    if (v28)
    {
      MEMORY[0x277CAD370](v28, 0x1000C409380FD32);
    }

    v29 = v23[57];
    v30 = v23[58];
    v23[61] = 0;
    v31 = v30 - v29;
    if (v31 >= 3)
    {
      do
      {
        operator delete(*v29);
        v30 = v23[58];
        v29 = (v23[57] + 8);
        v23[57] = v29;
        v31 = v30 - v29;
      }

      while (v31 > 2);
    }

    if (v31 == 1)
    {
      v32 = 170;
    }

    else
    {
      if (v31 != 2)
      {
        goto LABEL_62;
      }

      v32 = 341;
    }

    v23[60] = v32;
LABEL_62:
    if (v29 != v30)
    {
      do
      {
        v33 = *v29++;
        operator delete(v33);
      }

      while (v29 != v30);
      v35 = v23[57];
      v34 = v23[58];
      if (v34 != v35)
      {
        v23[58] = v34 + ((v35 - v34 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v36 = v23[56];
    if (v36)
    {
      operator delete(v36);
    }

    v37 = v23[2];
    if (v37)
    {
      sub_2773CC26C(v37);
    }

    MEMORY[0x277CAD370](v23, 0x10E0C40107E3BE5);
    *(v18 + 10400) = 0;
LABEL_71:
    v38 = *(v18 + 184);
    if (v38)
    {
      fclose(v38);
    }

    v39 = *(v18 + 248);
    if (v39)
    {
      v40 = MEMORY[0x277D85E08];
      if (v39 != *MEMORY[0x277D85E08])
      {
        fclose(v39);
        *(v18 + 248) = *v40;
      }
    }

    v41 = *(v18 + 240);
    if (v41 && fclose(v41) && dword_280B9A880 >= 3)
    {
      fwrite("Unable to close file\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Unable to close file\n");
    }

    v42 = *(v18 + 264);
    if (v42 && fclose(v42) && dword_280B9A880 >= 3)
    {
      fwrite("Unable to close file\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Unable to close file\n");
    }

    v43 = *(v18 + 256);
    if (v43 && fclose(v43) && dword_280B9A880 >= 3)
    {
      fwrite("Unable to close file\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Unable to close file\n");
    }

    sub_277468490(v18 + 10872);
    std::mutex::~mutex((v18 + 10808));
    v44 = *(v18 + 10784);
    if (v44)
    {
      *(v18 + 10792) = v44;
      operator delete(v44);
    }

    v45 = *(v18 + 10760);
    if (v45)
    {
      *(v18 + 10768) = v45;
      operator delete(v45);
    }

    v46 = *(v18 + 10416);
    if (v46)
    {
      sub_2773CC26C(v46);
    }

    v47 = *(v18 + 10392);
    if (v47)
    {
      sub_2773CC26C(v47);
    }

    for (j = 0; j != -272; j -= 16)
    {
      v49 = *(v18 + j + 10264);
      if (v49)
      {
        sub_2773CC26C(v49);
      }
    }

    sub_2773FE520(v18 + 9968);
    v71 = (v18 + 9920);
    sub_277468644(&v71);
    std::mutex::~mutex((v18 + 9848));
    v71 = (v18 + 9792);
    sub_277468644(&v71);
    v50 = *(v18 + 9776);
    if (v50)
    {
      sub_2773CC26C(v50);
    }

    v51 = *(v18 + 9760);
    if (v51)
    {
      sub_2773CC26C(v51);
    }

    v52 = *(v18 + 9744);
    if (v52)
    {
      sub_2773CC26C(v52);
    }

    v53 = *(v18 + 9728);
    if (v53)
    {
      sub_2773CC26C(v53);
    }

    v54 = *(v18 + 9712);
    if (v54)
    {
      sub_2773CC26C(v54);
    }

    v55 = *(v18 + 9696);
    if (v55)
    {
      sub_2773CC26C(v55);
    }

    for (k = 0; k != -1024; k -= 16)
    {
      v57 = *(v18 + k + 9680);
      if (v57)
      {
        sub_2773CC26C(v57);
      }
    }

    for (m = 0; m != -256; m -= 16)
    {
      v59 = *(v18 + m + 8656);
      if (v59)
      {
        sub_2773CC26C(v59);
      }
    }

    for (n = 0; n != -256; n -= 16)
    {
      v61 = *(v18 + n + 8400);
      if (v61)
      {
        sub_2773CC26C(v61);
      }
    }

    *(v18 + 360) = &unk_288662B50;
    v62 = *(v18 + 8136);
    *(v18 + 8136) = 0;
    if (v62)
    {
      sub_277468854(v62);
    }

    sub_27743FD90((v18 + 360));
    v71 = (v18 + 336);
    sub_27746872C(&v71);
    v63 = *(v18 + 304);
    if (v63)
    {
      sub_2773CC26C(v63);
    }

    v64 = *(v18 + 192);
    if (v64)
    {
      *(v18 + 200) = v64;
      operator delete(v64);
    }

    v65 = *(v18 + 176);
    if (v65)
    {
      sub_2773CC26C(v65);
    }

    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    MEMORY[0x277CAD370](v18, 0x10F2C4042379925);
  }

  v66 = *(a1 + 1320);
  if (v66)
  {
    CFRelease(v66);
    *(a1 + 1320) = 0;
  }

  v67 = *(a1 + 1448);
  if (v67)
  {
    v68 = *(v67 + 16);
    if (v68)
    {
      do
      {
        v69 = *v68;
        operator delete(v68);
        v68 = v69;
      }

      while (v69);
    }

    v70 = *v67;
    *v67 = 0;
    if (v70)
    {
      operator delete(v70);
    }

    JUMPOUT(0x277CAD370);
  }
}

uint64_t sub_2773C5940(uint64_t a1, CFStringRef theString, const void *a3)
{
  v20 = theString;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = sub_2773C5B90(*(a1 + 1448), &v20);
  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = v6[3];
  v8 = sub_2773C5B90(*(a1 + 1448), &v20);
  if (!v8)
  {
    goto LABEL_33;
  }

  if (!a3 || (v9 = v8[4], CFGetTypeID(a3) != v7))
  {
LABEL_13:
    if (dword_280B9A880 < 3)
    {
      return 4294954394;
    }

    v16 = "(key '%s'): bad\n";
    fprintf(*MEMORY[0x277D85DF8], "(key '%s'): bad\n");
LABEL_15:
    syslog(27, v16, CStringPtr);
    return 4294954394;
  }

  if (v7 == CFNumberGetTypeID())
  {
    v10 = sub_2773C5B90(*(a1 + 1448), &v20);
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10[5];
    v12 = CFGetTypeID(a3);
    if (v12 == CFNumberGetTypeID() && CFNumberGetValue(a3, v11, v9))
    {
      v13 = sub_2773C5B90(*(a1 + 1448), &v20);
      if (v13)
      {
        v14 = v13[6];
        if (!v14 || CFNumberCompare(a3, v14, 0) != kCFCompareLessThan)
        {
          return 0;
        }

        if (dword_280B9A880 < 3)
        {
          return 4294954394;
        }

        v16 = "bad (key '%s') (out of range)\n";
        fprintf(*MEMORY[0x277D85DF8], "bad (key '%s') (out of range)\n");
        goto LABEL_15;
      }

LABEL_33:
      sub_2773C5C8C();
    }

    goto LABEL_13;
  }

  if (v7 == CFBooleanGetTypeID())
  {
    v17 = CFGetTypeID(a3);
    v18 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(a3) != 0;
    result = 0;
    *v9 = v18;
  }

  else if (v7 == CFStringGetTypeID() || v7 == CFDataGetTypeID())
  {
    if (*v9)
    {
      CFRelease(*v9);
    }

    v19 = CFRetain(a3);
    result = 0;
    *v9 = v19;
  }

  else
  {
    if (dword_280B9A880 >= 2)
    {
      fwrite("unsupported CFTypeID for SetCommonProperty()\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(26, "unsupported CFTypeID for SetCommonProperty()\n");
    }

    return 4294954385;
  }

  return result;
}

uint64_t **sub_2773C5B90(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (CFEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_2773C5C8C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2773C5CE0(exception);
  __cxa_throw(exception, &unk_288662E78, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2773C5CE0(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "unordered_map::at: key not found");
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_2773C5D1C(uint64_t a1, const void *a2, void *a3)
{
  v14 = a2;
  v5 = sub_2773C5B90(*(a1 + 1448), &v14);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = v5[3];
  v7 = sub_2773C5B90(*(a1 + 1448), &v14);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7[4];
  *a3 = 0;
  if (v6 == CFNumberGetTypeID())
  {
    v9 = sub_2773C5B90(*(a1 + 1448), &v14);
    if (v9)
    {
      v10 = CFNumberCreate(0, v9[5], v8);
LABEL_15:
      v13 = v10;
      result = 0;
      *a3 = v13;
      return result;
    }

LABEL_20:
    sub_2773C5C8C();
  }

  if (v6 == CFBooleanGetTypeID())
  {
    v11 = MEMORY[0x277CBED28];
    if (!*v8)
    {
      v11 = MEMORY[0x277CBED10];
    }

    result = *v11;
LABEL_14:
    v10 = CFRetain(result);
    goto LABEL_15;
  }

  if (v6 == CFStringGetTypeID() || v6 == CFDataGetTypeID() || v6 == CFDictionaryGetTypeID())
  {
    result = *v8;
    if (!*v8)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (dword_280B9A880 >= 2)
  {
    fwrite("unsupported CFTypeID for CopyCommonProperty()", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(26, "unsupported CFTypeID for CopyCommonProperty()");
  }

  return 4294954385;
}

uint64_t HEVCVideoEncoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_280B9A880 >= 7)
  {
    fwrite("\n\n========================\n\nrunning through HEVCVideoEncoder_CreateInstance()\n\n========================\n\n", 0x69uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(31, "\n\n========================\n\nrunning through HEVCVideoEncoder_CreateInstance()\n\n========================\n\n");
  }

  VTVideoEncoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (dword_280B9A880 >= 3)
  {
    fwrite("FigDerivedObjectCreate failed", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "FigDerivedObjectCreate failed");
  }

  *a3 = 0;
  return v4;
}

uint64_t sub_2773C5F7C()
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sub_277468F14(*(DerivedStorage + 1288));
  return 0;
}

uint64_t sub_2773C5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0uLL;
  v10 = operator new(0x320uLL, MEMORY[0x277D826F0]);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  bzero(v10 + 88, 0x2C8uLL);
  *(v11 + 96) = 0x186A0000280A0;
  *(v11 + 120) = 0x403E000000000000;
  *(v11 + 460) = 0;
  *(v11 + 452) = 0;
  *(v11 + 468) = 0;
  *(v11 + 356) = 1;
  *(v11 + 436) = 0;
  *(v11 + 444) = 0;
  *(v11 + 428) = 0;
  *(v11 + 660) = -1;
  *(v11 + 500) = 0u;
  *(v11 + 516) = 0u;
  *(v11 + 532) = 0u;
  *(v11 + 548) = 0u;
  *(v11 + 564) = 0u;
  *(v11 + 580) = 0u;
  *(v11 + 596) = 0u;
  *(v11 + 612) = 0u;
  *(v11 + 628) = 0u;
  *(v11 + 644) = 0u;
  *(v11 + 664) = 0u;
  *(v11 + 680) = 0u;
  *(v11 + 284) = -1;
  if (!a3)
  {
    goto LABEL_12;
  }

  *(v11 + 8) = a2;
  if ((*(DerivedStorage + 1313) & 1) == 0 && sub_2773C6258(DerivedStorage))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Init failed\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Init failed\n");
    }

    goto LABEL_12;
  }

  if (sub_27747077C(*(DerivedStorage + 1288)))
  {
LABEL_12:
    VTEncoderSessionEmitEncodedTile();
    if (v11)
    {
      sub_27743F764((v11 + 88));
      MEMORY[0x277CAD370](v11, 0x1070C40040150F9);
    }

    goto LABEL_14;
  }

  if (sub_2773CB058(DerivedStorage, &v15, v11, a6))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Setup failed\n", 0xDuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Setup failed\n");
    }

    goto LABEL_12;
  }

  v13 = *(DerivedStorage + 1288);
  v14 = v15;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_27747086C(v13, &v14, v11, v11 + 88);
  if (*(&v14 + 1))
  {
    sub_2773CC26C(*(&v14 + 1));
  }

LABEL_14:
  if (*(&v15 + 1))
  {
    sub_2773CC26C(*(&v15 + 1));
  }

  return 0;
}

void sub_2773C6220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2773CC26C(a10);
  }

  if (a12)
  {
    sub_2773CC26C(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2773C6258(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v360 = *MEMORY[0x277D85DE8];
  v5 = *(v1 + 8);
  if (!*(v1 + 1272))
  {
    if (v5 != 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(v1 + 12) = 0;
    *(v1 + 16) = 1;
    *(v1 + 144) = 40;
    goto LABEL_8;
  }

  v6 = *(v1 + 12) != 1 || v5 == 3;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = *(v1 + 1376);
  v8 = *(v1 + 1384);
  v9 = 0x280B9A000uLL;
  v10 = *(v1 + 144);
  if (v10)
  {
    if (v10 != 41)
    {
      goto LABEL_31;
    }

    *(v1 + 144) = 0;
  }

  if (*(v1 + 12) == 1)
  {
    if (*(v1 + 13))
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    *(v1 + 1196) = v11;
    v12 = __clz(__rbit32(v11));
  }

  else
  {
    *(v1 + 16) = 1;
    *(v1 + 13) = 0;
    v12 = __clz(__rbit32(*(v1 + 1196))) & 0x1F;
  }

  *(v1 + 1200) = v12;
  if (*(v1 + 1220) == -1)
  {
    IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(*(v1 + 72));
    v14 = CVTransferFunctionGetIntegerCodePointForString(*(v4 + 80));
    v15 = CVYCbCrMatrixGetIntegerCodePointForString(*(v4 + 88));
    if (IntegerCodePointForString == 9 && v14 == 16 && v15 == 9)
    {
      v16 = 2;
      if (dword_280B9A880 <= 5)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (IntegerCodePointForString == 9 && v14 == 18 && v15 == 9)
    {
      v16 = 3;
      if (dword_280B9A880 < 6)
      {
LABEL_30:
        *(v4 + 1220) = v16;
        goto LABEL_31;
      }

LABEL_29:
      fprintf(*MEMORY[0x277D85DF8], "Changing hdr_type from %d to %d\n", *(v4 + 1220), v16);
      syslog(30, "Changing hdr_type from %d to %d\n", *(v4 + 1220), v16);
      goto LABEL_30;
    }
  }

LABEL_31:
  if (*(v4 + 1272) || *(v4 + 144) == 40)
  {
    if (*(v4 + 156))
    {
      *(v4 + 1328) = 2;
      v17 = *(v4 + 152);
LABEL_49:
      sub_27746CF78(*(v4 + 1288), 0x8B74307B55C5E6FuLL, "iq", v17);
      v23 = *(v4 + 1288);
      v24 = sub_2773CC2D8();
      sub_27746CF78(v23, 0x8D55707B5757DFAuLL, "pq", v24 + v17);
      goto LABEL_50;
    }

    v18 = *(v4 + 32);
    goto LABEL_36;
  }

  v47 = *(v4 + 28);
  if (v47 < 1)
  {
    v18 = *(v4 + 32);
    if (v18 >= 0.0)
    {
LABEL_36:
      *(v4 + 1328) = 1;
      LOBYTE(v19) = *(v4 + 172);
LABEL_37:
      if ((v19 & 1) != 0 && v18 < 0.0)
      {
        v17 = 30;
      }

      else
      {
        if (v18 < 0.0)
        {
          v18 = 0.75;
        }

        if (v18 < 1.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 1.0;
        }

        v231 = v18 > 0.0;
        v21 = 0.0;
        if (v231)
        {
          v21 = v20;
        }

        v17 = a3210[(v21 * 100.0 + 0.5)];
        if (!((v21 != 1.0) | v19 & 1))
        {
          v22 = *(v4 + 1288);
          buffer[0] = 0;
          sub_27744140C(v22 + 360, 0x72868D48B2D5EBA3uLL, "lossless", "true", 0xFFFFFFFFLL, buffer);
        }
      }

      goto LABEL_49;
    }

    v19 = *(v4 + 172);
    *(v4 + 1328) = v19;
    if (v19)
    {
      goto LABEL_37;
    }

    if (!v47)
    {
      if (7 * *(v4 + 1300) * *(v4 + 1304) >= 800000000)
      {
        v47 = 800000000;
      }

      else
      {
        v47 = 7 * *(v4 + 1300) * *(v4 + 1304);
      }

      *(v4 + 28) = v47;
    }
  }

  else
  {
    *(v4 + 1328) = 0;
  }

  sub_27746CF78(*(v4 + 1288), 0x72351913690D14uLL, "bps", v47);
LABEL_50:
  v25 = *(v4 + 1208);
  if (v25)
  {
    CFStringGetCString(v25, buffer, 32, 0x8000100u);
    v26 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v26 + 360, 0xAAB8A388324B35B9, "loglevel", buffer, 0xFFFFFFFFLL, &__p);
  }

  if (dword_280B9A880 >= 7)
  {
    v27 = MEMORY[0x277D85E08];
    fwrite("\n========================\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85E08]);
    if (dword_280B9A880 >= 6)
    {
      fwrite("\n=== VTCompressionProperties.h === \n", 0x24uLL, 1uLL, *v27);
      if (dword_280B9A880 >= 6)
      {
        v28 = *v27;
        CStringPtr = CFStringGetCStringPtr(*v4, 0x8000100u);
        fprintf(v28, "profileLevelArg             = %s\n", CStringPtr);
        if (dword_280B9A880 >= 6)
        {
          fprintf(*v27, "profile                     = %u\n", *(v4 + 8));
          if (dword_280B9A880 >= 6)
          {
            fprintf(*v27, "allowTemporal               = %d\n", *(v4 + 12));
            if (dword_280B9A880 >= 6)
            {
              fprintf(*v27, "allowB                      = %d\n", *(v4 + 13));
              if (dword_280B9A880 >= 6)
              {
                fprintf(*v27, "droppablePOnly              = %d\n", *(v4 + 14));
                if (dword_280B9A880 >= 6)
                {
                  fprintf(*v27, "maxKeyFrameInterval         = %u\n", *(v4 + 16));
                  if (dword_280B9A880 >= 6)
                  {
                    fprintf(*v27, "maxKeyFrameIntervalDuration = %f\n", *(v4 + 20));
                    if (dword_280B9A880 >= 6)
                    {
                      fprintf(*v27, "numberOfThreads             = %d\n", *(v4 + 24));
                      if (dword_280B9A880 >= 6)
                      {
                        fprintf(*v27, "targetBitsPerSec            = %d\n", *(v4 + 28));
                        if (dword_280B9A880 >= 6)
                        {
                          fprintf(*v27, "expectedFrameRate           = %f\n", *(v4 + 40));
                          if (dword_280B9A880 >= 6)
                          {
                            fprintf(*v27, "numberOfFramesToEncode      = %d\n", *(v4 + 48));
                            if (dword_280B9A880 >= 6)
                            {
                              fprintf(*v27, "sar_width                   = %u\n", *(v4 + 64));
                              if (dword_280B9A880 >= 6)
                              {
                                fprintf(*v27, "sar_height                  = %u\n", *(v4 + 68));
                                if (dword_280B9A880 >= 6)
                                {
                                  v30 = *v27;
                                  v31 = CFStringGetCStringPtr(*(v4 + 72), 0x8000100u);
                                  fprintf(v30, "colorPrimaries              = %s\n", v31);
                                  if (dword_280B9A880 >= 6)
                                  {
                                    v32 = *v27;
                                    v33 = CFStringGetCStringPtr(*(v4 + 80), 0x8000100u);
                                    fprintf(v32, "transferCharacteristics     = %s\n", v33);
                                    if (dword_280B9A880 >= 6)
                                    {
                                      v34 = *v27;
                                      v35 = CFStringGetCStringPtr(*(v4 + 88), 0x8000100u);
                                      fprintf(v34, "matrixCoefficients          = %s\n", v35);
                                      if (dword_280B9A880 >= 6)
                                      {
                                        fwrite("\n=== VTCompressionPropertiesPrivate.h === \n", 0x2BuLL, 1uLL, *v27);
                                        if (dword_280B9A880 >= 6)
                                        {
                                          fprintf(*v27, "usage                       = %d\n", *(v4 + 144));
                                          if (dword_280B9A880 >= 6)
                                          {
                                            fprintf(*v27, "priority                    = %u\n", *(v4 + 148));
                                            if (dword_280B9A880 >= 6)
                                            {
                                              fwrite("\n=== VideoProcessing.h === \n", 0x1CuLL, 1uLL, *v27);
                                              if (dword_280B9A880 >= 6)
                                              {
                                                fprintf(*v27, "thermalLevel                = %d\n", *(v4 + 176));
                                                if (dword_280B9A880 >= 6)
                                                {
                                                  fprintf(*v27, "fUsingCellular              = %d\n", *(v4 + 1193));
                                                  if (dword_280B9A880 >= 6)
                                                  {
                                                    fwrite("\n=== LRPVideoToolboxPrivateKeys.h === \n", 0x27uLL, 1uLL, *v27);
                                                    if (dword_280B9A880 >= 6)
                                                    {
                                                      fprintf(*v27, "sceneChangeIdrInsertion     = %d\n", *(v4 + 1194));
                                                      if (dword_280B9A880 >= 6)
                                                      {
                                                        fprintf(*v27, "gopSize                     = %d\n", *(v4 + 1196));
                                                        if (dword_280B9A880 >= 6)
                                                        {
                                                          fprintf(*v27, "maxReorder                  = %d\n", *(v4 + 1204));
                                                          if (dword_280B9A880 >= 6)
                                                          {
                                                            v36 = *v27;
                                                            v37 = CFStringGetCStringPtr(*(v4 + 1208), 0x8000100u);
                                                            fprintf(v36, "logLevel                    = %s\n", v37);
                                                            if (dword_280B9A880 >= 6)
                                                            {
                                                              fprintf(*v27, "md5                         = %d\n", *(v4 + 1216));
                                                              if (dword_280B9A880 >= 6)
                                                              {
                                                                fprintf(*v27, "hdr_type                    = %d\n", *(v4 + 1220));
                                                                if (dword_280B9A880 >= 6)
                                                                {
                                                                  v38 = *v27;
                                                                  v39 = CFStringGetCStringPtr(*(v4 + 1224), 0x8000100u);
                                                                  fprintf(v38, "hdr10MaxCLL                 = %s\n", v39);
                                                                  if (dword_280B9A880 >= 6)
                                                                  {
                                                                    v40 = *v27;
                                                                    v41 = CFStringGetCStringPtr(*(v4 + 1232), 0x8000100u);
                                                                    fprintf(v40, "hdr10MasterDisplay          = %s\n", v41);
                                                                    if (dword_280B9A880 >= 6)
                                                                    {
                                                                      fprintf(*v27, "noiseLevelControl           = %d\n", *(v4 + 1240));
                                                                      if (dword_280B9A880 >= 6)
                                                                      {
                                                                        fprintf(*v27, "schedulePolicy              = %d\n", *(v4 + 1244));
                                                                        if (dword_280B9A880 >= 6)
                                                                        {
                                                                          fwrite("\n=== others === \n", 0x11uLL, 1uLL, *v27);
                                                                          if (dword_280B9A880 >= 6)
                                                                          {
                                                                            fprintf(*v27, "codecType                   = %u\n", *(v4 + 1296));
                                                                            if (dword_280B9A880 >= 6)
                                                                            {
                                                                              fprintf(*v27, "dimensions                  = %dx%d\n", *(v4 + 1300), *(v4 + 1304));
                                                                              if (dword_280B9A880 >= 6)
                                                                              {
                                                                                v42 = *v27;
                                                                                v43 = CFStringGetCStringPtr(*(v4 + 1248), 0x8000100u);
                                                                                fprintf(v42, "version_string              = %s\n", v43);
                                                                                if (dword_280B9A880 >= 6)
                                                                                {
                                                                                  fwrite("\n========================\n", 0x1AuLL, 1uLL, *v27);
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!*(v4 + 8))
  {
    goto LABEL_121;
  }

  v44 = *(v4 + 1288);
  snprintf(buffer, 0x10uLL, "%u", *(v4 + 8));
  LOBYTE(__p) = 0;
  sub_27744140C(v44 + 360, 0x8ADD349E618BA10ELL, "profile", buffer, 0xFFFFFFFFLL, &__p);
  v45 = *(v4 + 8);
  v46 = 8;
  if (v45 > 1891)
  {
    if (v45 > 2915)
    {
      if (v45 == 3044)
      {
        goto LABEL_122;
      }

      if (v45 != 2916)
      {
        goto LABEL_119;
      }
    }

    else if (v45 != 1892)
    {
      if (v45 == 2020)
      {
        goto LABEL_122;
      }

      goto LABEL_119;
    }

LABEL_111:
    v46 = 10;
    goto LABEL_122;
  }

  if (v45 > 1)
  {
    if (v45 != 2)
    {
      if (v45 == 3)
      {
        goto LABEL_122;
      }

      goto LABEL_119;
    }

    goto LABEL_111;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      goto LABEL_122;
    }

LABEL_119:
    if (dword_280B9A880 >= 4)
    {
      fprintf(*MEMORY[0x277D85DF8], "Specified profile %d, but we don't know the allowed bitdepth\n", *(v4 + 8));
      syslog(28, "Specified profile %d, but we don't know the allowed bitdepth\n", *(v4 + 8));
    }
  }

LABEL_121:
  PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
  v46 = sub_2773F50D8(PixelFormatType);
LABEL_122:
  sub_27746CF78(*(v4 + 1288), 0x8C49EF6ED9F28EA0, "bit-depth", v46);
  sub_27746CF78(*(v4 + 1288), 0xAF63E84C860200F0, "u", *(v4 + 144));
  snprintf(buffer, 0x40uLL, "%dx%d", *(v4 + 1300), *(v4 + 1304));
  v49 = *(v4 + 1288);
  LOBYTE(__p) = 0;
  sub_27744140C(v49 + 360, 0xAF63D94C8601E773, "d", buffer, 0xFFFFFFFFLL, &__p);
  v50 = *(v4 + 144);
  if (v50 == 33)
  {
    v51 = 4;
  }

  else
  {
    if ((v50 - 34) >= 4)
    {
      v52 = 2;
      if (v50 < 0 || (!*(v4 + 12) ? (v52 = 0) : (v52 = 2), *(v4 + 1196) < 2))
      {
        v51 = v52;
      }

      else
      {
        v51 = *(v4 + 1200) + 1;
      }

      goto LABEL_127;
    }

    v51 = 5;
  }

  v52 = 2;
LABEL_127:
  snprintf(buffer, 0x80uLL, "%d:%d:%d:%d", v51, 0, v52, v52);
  v53 = *(v4 + 1288);
  LOBYTE(__p) = 0;
  sub_27744140C(v53 + 360, 0x89E9C01960F4C582, "ref", buffer, 0xFFFFFFFFLL, &__p);
  sub_27746D014(*(v4 + 1288), 0x8984E07B541C091uLL, "fr", *(v4 + 40));
  v54 = CVPixelBufferGetPixelFormatType(v3);
  v55 = *(v4 + 1224);
  if (v55)
  {
    CFStringGetCString(v55, buffer, 50, 0x8000100u);
    v56 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v56 + 360, 0x3DC4253E192FDEDuLL, "max-cll", buffer, 0xFFFFFFFFLL, &__p);
  }

  v57 = *(v4 + 1232);
  if (v57)
  {
    CFStringGetCString(v57, buffer, 200, 0x8000100u);
    v58 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v58 + 360, 0x90898E7CB0F4FE00, "master-display", buffer, 0xFFFFFFFFLL, &__p);
  }

  v59 = *(v4 + 96);
  if (v59)
  {
    memset(buffer, 0, sizeof(buffer));
    v342 = 0;
    v344.__locale_ = 0;
    v345 = 0;
    v346 = 0;
    BytePtr = CFDataGetBytePtr(v59);
    if (CFDataGetLength(*(v4 + 96)) == 4 && !sub_2773FB67C(buffer, BytePtr, 4))
    {
      v61 = (v344.__locale_ + ((SHIDWORD(v346) + 16) >> 3));
      if (v61 >= v345)
      {
        v62 = 0;
        v61 = v345;
      }

      else
      {
        v62 = bswap32(*v61);
      }

      v63 = WORD1(v346);
      v64 = v62 << (BYTE4(v346) & 7);
      v346 = __PAIR64__(HIDWORD(v346), v64) & 0x7FFFFFFFFLL;
      if (v61 + 2 >= v345)
      {
        v347 = 1;
        v344.__locale_ = v345;
      }

      snprintf(&__p, 0x32uLL, "%u:%u", v63, HIWORD(v64));
      v65 = *(v4 + 1288);
      LOBYTE(v351[0]) = 0;
      sub_27744140C(v65 + 360, 0x3DC4253E192FDEDuLL, "max-cll", &__p, 0xFFFFFFFFLL, v351);
    }

    if (*buffer)
    {
      operator delete(*buffer);
    }
  }

  v66 = *(v4 + 104);
  if (v66)
  {
    v354 = 0;
    __p = 0;
    v355 = 0;
    v356 = 0;
    v358 = 0;
    v357 = 0;
    v67 = CFDataGetBytePtr(v66);
    if (CFDataGetLength(*(v4 + 104)) == 24 && !sub_2773FB67C(&__p, v67, 24))
    {
      v68 = 0;
      HIWORD(v69) = WORD1(v358);
      v70 = HIDWORD(v358);
      v71 = v357;
      v72 = v356;
      v73 = BYTE4(v358) & 7;
      do
      {
        HIDWORD(v358) = v73;
        v74 = (v72 + ((v70 + 16) >> 3));
        v356 = v74;
        if (v74 >= v71)
        {
          v75 = 0;
          v359 = 1;
          v74 = v71;
        }

        else
        {
          v75 = bswap32(*v74);
        }

        *(v351 + v68 * 2) = HIWORD(v69);
        v76 = v75 << v73;
        v358 = __PAIR64__(v73, v76);
        v72 = (v74 + 2);
        v356 = v72;
        if (v72 >= v71)
        {
          v77 = 0;
          v359 = 1;
          v356 = v71;
          v72 = v71;
        }

        else
        {
          v77 = bswap32(*v72);
        }

        v69 = v77 << v73;
        LODWORD(v358) = v69;
        v339[v68++] = HIWORD(v76);
        v70 = v73;
      }

      while (v68 != 3);
      HIDWORD(v358) = v73;
      v78 = (v72 + 2);
      v356 = (v72 + 2);
      if (v72 + 2 >= v71)
      {
        v79 = 0;
        v359 = 1;
        v78 = v71;
      }

      else
      {
        v79 = bswap32(*v78);
      }

      v80 = v79 << v73;
      v358 = __PAIR64__(v73, v80);
      v81 = (v78 + 2);
      v356 = v81;
      if (v81 >= v71)
      {
        v82 = 0;
        v359 = 1;
        v81 = v71;
      }

      else
      {
        v82 = bswap32(*v81);
      }

      v83 = v82 << v73;
      v358 = __PAIR64__(v73, v83);
      v84 = (v81 + 2);
      v356 = (v81 + 2);
      if (v81 + 2 >= v71)
      {
        v85 = 0;
        v359 = 1;
        v84 = v71;
      }

      else
      {
        v85 = bswap32(*v84);
      }

      v86 = v85 << v73;
      v358 = __PAIR64__(v73, v86);
      v87 = (v84 + 2);
      v356 = (v84 + 2);
      if (v84 + 2 >= v71)
      {
        v88 = 0;
        v359 = 1;
        v87 = v71;
      }

      else
      {
        v88 = bswap32(*v87);
      }

      v89 = v83 & 0xFFFF0000;
      v90 = v88 << v73;
      v358 = __PAIR64__(v73, v90);
      v91 = (v87 + 2);
      v356 = v91;
      if (v91 >= v71)
      {
        v92 = 0;
        v91 = v71;
      }

      else
      {
        v92 = bswap32(*v91);
      }

      v93 = HIWORD(v69);
      v94 = HIWORD(v80);
      v95 = v90 & 0xFFFF0000;
      v96 = v92 << v73;
      v358 = __PAIR64__(v73, v96);
      if (v91 + 2 >= v71)
      {
        v359 = 1;
        v356 = v71;
      }

      snprintf(buffer, 0xC8uLL, "%hu:%hu:%hu:%hu:%hu:%hu:%hu:%hu:%u:%u", LOWORD(v351[0]), v339[0], WORD1(v351[0]), v339[1], WORD2(v351[0]), v339[2], v93, v94, v89 | HIWORD(v86), v95 | HIWORD(v96));
      v97 = *(v4 + 1288);
      v340 = 0;
      sub_27744140C(v97 + 360, 0x90898E7CB0F4FE00, "master-display", buffer, 0xFFFFFFFFLL, &v340);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  if (*(v4 + 112))
  {
    v354 = 0;
    __p = 0;
    v355 = 0;
    v356 = 0;
    v358 = 0;
    v357 = 0;
    sub_2773CC400(buffer);
    v98 = CFDataGetBytePtr(*(v4 + 112));
    if (CFDataGetLength(*(v4 + 112)) == 8 && !sub_2773FB67C(&__p, v98, 8))
    {
      v99 = v358;
      v100 = BYTE4(v358) & 7;
      v101 = (v356 + ((SHIDWORD(v358) + 32) >> 3));
      if (v101 >= v357)
      {
        v102 = 0;
        v359 = 1;
        v101 = v357;
      }

      else
      {
        v102 = bswap32(*v101);
      }

      v103 = (v101 + 2);
      if (v103 >= v357)
      {
        v104 = 0;
        v359 = 1;
        v103 = v357;
      }

      else
      {
        v104 = bswap32(*v103);
      }

      v105 = v104 << v100;
      LODWORD(v358) = v104 << v100;
      HIDWORD(v358) = BYTE4(v358) & 7;
      v106 = (v103 + 2);
      v356 = v106;
      if (v106 >= v357)
      {
        v107 = 0;
        v359 = 1;
        v356 = v357;
      }

      else
      {
        v107 = bswap32(*v106);
      }

      LODWORD(v358) = v107 << v100;
      v108 = MEMORY[0x277CAD200](&v342, v99);
      v109 = sub_2773CC728(v108);
      v110 = MEMORY[0x277CAD210](v109, v102 << v100 >> 16);
      v111 = sub_2773CC728(v110);
      MEMORY[0x277CAD210](v111, HIWORD(v105));
      v112 = *(v4 + 1288);
      std::stringbuf::str();
      v113 = v352 >= 0 ? v351 : v351[0];
      LOBYTE(v339[0]) = 0;
      sub_27744140C(v112 + 360, 0x6FFBA4D618E54C5DuLL, "ambient-viewing", v113, 0xFFFFFFFFLL, v339);
      if (v352 < 0)
      {
        operator delete(v351[0]);
      }
    }

    *buffer = *MEMORY[0x277D82818];
    v114 = *(MEMORY[0x277D82818] + 72);
    *&buffer[*(*buffer - 24)] = *(MEMORY[0x277D82818] + 64);
    v342 = v114;
    v343 = MEMORY[0x277D82878] + 16;
    if (v349 < 0)
    {
      operator delete(v348);
    }

    v343 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v344);
    std::iostream::~basic_iostream();
    MEMORY[0x277CAD300](&v350);
    if (__p)
    {
      operator delete(__p);
    }
  }

  v115 = *(v4 + 1220);
  if (v115 == -1)
  {
    goto LABEL_212;
  }

  sub_27746CF78(*(v4 + 1288), 0x272E34E2BFB32E6CuLL, "hdr-type", v115);
  v116 = *(v4 + 1220);
  if (v116 < 3)
  {
    v117 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v117 + 360, 0xB5C61104404590D6, "hdr-pq-deblock", "true", 0xFFFFFFFFLL, buffer);
    v118 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v118 + 360, 0x240E0E991FD2AE9BuLL, "hdr-pq-banding", "true", 0xFFFFFFFFLL, buffer);
    v119 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v119 + 360, 0xA8EDB06A6EA3063ELL, "hdr-pq-qpm", "true", 0xFFFFFFFFLL, buffer);
    v120 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v120 + 360, 0xE7A385CA7BF9D2E1, "hdr-pq-chroma-qpm", "true", 0xFFFFFFFFLL, buffer);
    v121 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v121 + 360, 0xEBAEEC9A08259398, "adaptive-hdr-chroma-qpm", "true", 0xFFFFFFFFLL, buffer);
    goto LABEL_208;
  }

  if (v116 == 3)
  {
    v122 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v122 + 360, 0xB71C8689F9C18CECLL, "hdr-hlg-qpm", "true", 0xFFFFFFFFLL, buffer);
    goto LABEL_208;
  }

  if (dword_280B9A880 < 4)
  {
LABEL_212:
    v125 = *(v4 + 1288);
    Attachment = CVBufferGetAttachment(v3, *MEMORY[0x277CC4B88], 0);
    v127 = CVBufferGetAttachment(v3, *MEMORY[0x277CC4B80], 0);
    if (Attachment)
    {
      v128 = Attachment;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      if (v127 && !CFEqual(v128, v127) && dword_280B9A880 >= 4)
      {
        fwrite("Chroma siting for bottom field differs from top\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(28, "Chroma siting for bottom field differs from top\n");
      }

      if (!CFEqual(v128, *MEMORY[0x277CC4BB0]))
      {
        if (CFEqual(v128, *MEMORY[0x277CC4BA0]))
        {
          v129 = 1;
          goto LABEL_222;
        }

        if (CFEqual(v128, *MEMORY[0x277CC4BC0]))
        {
          v129 = 2;
          goto LABEL_222;
        }

        if (CFEqual(v128, *MEMORY[0x277CC4BB8]))
        {
          v129 = 3;
          goto LABEL_222;
        }

        if (CFEqual(v128, *MEMORY[0x277CC4B98]))
        {
          v129 = 4;
          goto LABEL_222;
        }

        if (CFEqual(v128, *MEMORY[0x277CC4B90]))
        {
          v129 = 5;
          goto LABEL_222;
        }
      }
    }

    v129 = 0;
LABEL_222:
    sub_27746CF78(v125, 0xEADA4767E797268BLL, "vui-chroma-loc", v129);
    v130 = *(v4 + 1288);
    v131 = CVColorPrimariesGetIntegerCodePointForString(*(v4 + 72));
    sub_27746CF78(v130, 0x9FFE593DC10E7CC4, "vui-primaries", v131);
    v132 = *(v4 + 1288);
    v133 = CVTransferFunctionGetIntegerCodePointForString(*(v4 + 80));
    sub_27746CF78(v132, 0x2660BA38B42FDFB5uLL, "vui-transfer", v133);
    v134 = *(v4 + 1288);
    v135 = CVYCbCrMatrixGetIntegerCodePointForString(*(v4 + 88));
    sub_27746CF78(v134, 0xE961BACE8A163BCBLL, "vui-matrix-coeff", v135);
    goto LABEL_223;
  }

  fprintf(*MEMORY[0x277D85DF8], "None of the hdr tuning parameters is enabled for hdr_type=%d.\n", *(v4 + 1220));
  syslog(28, "None of the hdr tuning parameters is enabled for hdr_type=%d.\n", *(v4 + 1220));
LABEL_208:
  v123 = *(v4 + 1220);
  if (v123 > 2)
  {
    goto LABEL_212;
  }

  v124 = *(v4 + 1288);
  if (v123 == 2)
  {
    sub_27746CF78(v124, 0xEADA4767E797268BLL, "vui-chroma-loc", 2);
    sub_27746CF78(*(v4 + 1288), 0x9FFE593DC10E7CC4, "vui-primaries", 9);
    sub_27746CF78(*(v4 + 1288), 0x2660BA38B42FDFB5uLL, "vui-transfer", 16);
    sub_27746CF78(*(v4 + 1288), 0xE961BACE8A163BCBLL, "vui-matrix-coeff", 9);
  }

  else
  {
    sub_27746CF78(v124, 0xEADA4767E797268BLL, "vui-chroma-loc", 0);
    snprintf(buffer, 0x28uLL, "%d/%lld", v8, v7);
    v152 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v152 + 360, 0x8984E07B541C091uLL, "fr", buffer, 0xFFFFFFFFLL, &__p);
  }

LABEL_223:
  if (v54 <= 1278226735)
  {
    if (v54 != 875704422)
    {
      v136 = 12344;
      goto LABEL_231;
    }

LABEL_230:
    v137 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v137 + 360, 0x3BEB44829B7A4FABuLL, "vui-full-range", "true", 0xFFFFFFFFLL, buffer);
    v136 = 12592;
LABEL_231:
    if (v54 != (v136 | 0x4C300000))
    {
      goto LABEL_234;
    }

    goto LABEL_232;
  }

  switch(v54)
  {
    case 1278226736:
LABEL_232:
      v138 = *(v4 + 1288);
      buffer[0] = 0;
      sub_27744140C(v138 + 360, 0x3BEB44829B7A4FABuLL, "vui-full-range", "true", 0xFFFFFFFFLL, buffer);
      v139 = *(v4 + 1288);
      buffer[0] = 0;
      sub_27744140C(v139 + 360, 0xD1603A6EC53E98DFLL, "chroma", "mono", 0xFFFFFFFFLL, buffer);
      break;
    case 1496395842:
      v140 = *(v4 + 1288);
      buffer[0] = 0;
      sub_27744140C(v140 + 360, 0x9FA17F231CA2208DLL, "legacy-pixfmt", "true", 0xFFFFFFFFLL, buffer);
      break;
    case 2019963440:
      goto LABEL_230;
  }

LABEL_234:
  if (*(v4 + 1220) <= 1u)
  {
    v141 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v141 + 360, 0x3BEB44829B7A4FABuLL, "vui-full-range", "false", 0xFFFFFFFFLL, buffer);
  }

  snprintf(buffer, 0x40uLL, "%d:%d", *(v4 + 64), *(v4 + 68));
  v142 = *(v4 + 1288);
  LOBYTE(__p) = 0;
  sub_27744140C(v142 + 360, 0x4179B3C137C3CEB0uLL, "vui-sar", buffer, 0xFFFFFFFFLL, &__p);
  if (*(v4 + 14) == 1)
  {
    *(v4 + 1196) = 1;
    v143 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v143 + 360, 0x32468D84F55FB2A7uLL, "number-gop", "1", 0xFFFFFFFFLL, buffer);
    sub_27746CF78(*(v4 + 1288), 0xA72E681EA6EA2FFDLL, "gop-size", *(v4 + 1196));
    v144 = sub_2773CC2D8();
    snprintf(buffer, 0x80uLL, "1 P 1 %d 1 1 1 -1 1 0", v144);
    v145 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v145 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", buffer, 0xFFFFFFFFLL, &__p);
  }

  else if (*(v4 + 13) == 1 && *(v4 + 1196) >= 2)
  {
    v146 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v146 + 360, 0x32468D84F55FB2A7uLL, "number-gop", "1", 0xFFFFFFFFLL, buffer);
    sub_27746CF78(*(v4 + 1288), 0xA72E681EA6EA2FFDLL, "gop-size", *(v4 + 1196));
    snprintf(buffer, 0x80uLL, "0 L %d 3 0 2 2 %d %d 1 1 0", *(v4 + 1196), -*(v4 + 1196), -2 * *(v4 + 1196));
    v147 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v147 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", buffer, 0xFFFFFFFFLL, &__p);
    v148 = *(v4 + 1196);
    if (*(v4 + 144))
    {
      if (v148 >= 2)
      {
        v149 = 1;
        v150 = -1;
        do
        {
          snprintf(buffer, 0x80uLL, "%d R %d 4 1 2 2 %d %d 1 1 0", v149, v149, v150, v148 + v150);
          v151 = *(v4 + 1288);
          LOBYTE(__p) = 0;
          sub_27744140C(v151 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", buffer, 0xFFFFFFFFLL, &__p);
          ++v149;
          v148 = *(v4 + 1196);
          --v150;
        }

        while (v149 < v148);
      }
    }

    else
    {
      if (v148 == 2)
      {
        v153 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v153 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "1 R 1 4 1 2 2 -1 1 1 1 0", 0xFFFFFFFFLL, &__p);
        v148 = *(v4 + 1196);
      }

      if (v148 == 4)
      {
        v154 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v154 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "1 R 2 3 1 2 2 -2 2 1 1 0", 0xFFFFFFFFLL, &__p);
        v155 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v155 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "2 R 1 4 2 3 2 -1 1 3 1 1 0 0", 0xFFFFFFFFLL, &__p);
        v156 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v156 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "3 R 3 4 2 3 2 -1 1 -3 1 1 0 0", 0xFFFFFFFFLL, &__p);
        v148 = *(v4 + 1196);
      }

      if (v148 == 8)
      {
        v157 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v157 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "1 R 4 2 1 2 2 -4 4 1 1 0", 0xFFFFFFFFLL, &__p);
        v158 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v158 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "2 R 2 3 2 3 2 -2 2 6 1 1 0 0", 0xFFFFFFFFLL, &__p);
        v159 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v159 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "3 R 1 4 3 4 2 -1 1 3 7 1 1 0 0 0", 0xFFFFFFFFLL, &__p);
        v160 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v160 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "4 R 3 4 3 4 2 -3 -1 1 5 0 1 1 0 0", 0xFFFFFFFFLL, &__p);
        v161 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v161 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "5 R 6 3 2 3 2 -6 -2 2 0 1 1 0", 0xFFFFFFFFLL, &__p);
        v162 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v162 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "6 R 5 4 3 4 2 -5 -1 1 3 0 1 1 0 0", 0xFFFFFFFFLL, &__p);
        v163 = *(v4 + 1288);
        LOBYTE(__p) = 0;
        sub_27744140C(v163 + 360, 0x50F6C19BB163CD98uLL, "ref-struct", "7 R 7 4 3 3 2 -7 -1 1 0 1 1 0", 0xFFFFFFFFLL, &__p);
      }
    }
  }

  v164 = *(v4 + 24);
  if (!v164)
  {
    if ((*(v4 + 144) - 33) > 4)
    {
      sub_27743FBF4();
      v164 = dword_280B9A8A8;
    }

    else
    {
      if (*(v4 + 1300) / 256 <= 1)
      {
        v164 = 1;
      }

      else
      {
        v164 = *(v4 + 1300) / 256;
      }

      *(v4 + 24) = v164;
      sub_27743FBF4();
      if (dword_280B9A8A4 < v164)
      {
        v164 = dword_280B9A8A4;
      }
    }

    *(v4 + 24) = v164;
  }

  sub_27743FBF4();
  if (dword_280B9A8A8 >= v164)
  {
    v165 = v164;
  }

  else
  {
    v165 = dword_280B9A8A8;
  }

  *(v4 + 24) = v165;
  sub_27746CF78(*(v4 + 1288), 0xC0AB56BF45863635, "max-threads", v165);
  v166 = *(v4 + 144);
  if (v166 == 40 || !v166 && *(v4 + 1440) == 1)
  {
    v167 = "auto";
  }

  else
  {
    v167 = "wavefront";
  }

  v168 = *(v4 + 1288);
  buffer[0] = 0;
  sub_27744140C(v168 + 360, 0xFE31B357AB72A0FuLL, "threading", v167, 0xFFFFFFFFLL, buffer);
  v169 = *(v4 + 148);
  v170 = "low";
  if (v169 > 29)
  {
    if (v169 == 31)
    {
      goto LABEL_281;
    }

    if (v169 == 30)
    {
      v170 = "high";
      goto LABEL_281;
    }
  }

  else
  {
    if (v169 == 8)
    {
      goto LABEL_281;
    }

    if (v169 == 25)
    {
      v170 = "background";
      goto LABEL_281;
    }
  }

  v170 = "medium";
LABEL_281:
  v171 = *(v4 + 1288);
  buffer[0] = 0;
  sub_27744140C(v171 + 360, 0xF5B6EA8C35AC1E89, "priority", v170, 0xFFFFFFFFLL, buffer);
  sub_27746CF78(*(v4 + 1288), 0x907E5BC0BE3F5F7FLL, "scene-idr", *(v4 + 1194));
  if (dword_280B9A880 >= 7)
  {
    v172 = *MEMORY[0x277D85DF8];
    v173 = *(v4 + 144);
    v174 = sub_277440168(&unk_27A7167D0, v173);
    fprintf(v172, "glob->usage = %d (%s)\n", v173, v174);
    LODWORD(v172) = *(v4 + 144);
    v175 = sub_277440168(&unk_27A7167D0, v172);
    syslog(31, "glob->usage = %d (%s)\n", v172, v175);
  }

  v176 = *(v4 + 144);
  if ((v176 - 33) <= 4)
  {
    v177 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v177 + 360, 0xBE27DAD503ACC303, "ref_selection", "true", 0xFFFFFFFFLL, buffer);
    v178 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v178 + 360, 0x9163BFEE0B8BBC39, "dec-reorder", "4", 0xFFFFFFFFLL, buffer);
    v179 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v179 + 360, 0x8931489410D7395BLL, "global-threadpool", "true", 0xFFFFFFFFLL, buffer);
    v176 = *(v4 + 144);
  }

  if (!v176)
  {
    sub_27746CF78(*(v4 + 1288), 0x9163BFEE0B8BBC39, "dec-reorder", *(v4 + 1200));
    if (dword_280B9A880 > 6 || *(v4 + 1216) == 1)
    {
      v180 = *(v4 + 1288);
      buffer[0] = 0;
      sub_27744140C(v180 + 360, 0x7E8D690E31D04174uLL, "psnr", "true", 0xFFFFFFFFLL, buffer);
      if (dword_280B9A880 >= 7)
      {
        v181 = *(v4 + 1288);
        buffer[0] = 0;
        sub_27744140C(v181 + 360, 0x1E5485EF2E9F9384uLL, "time", "true", 0xFFFFFFFFLL, buffer);
      }
    }

    sub_27746CF78(*(v4 + 1288), 0xAF63DB4C8601EAD9, "f", *(v4 + 48));
  }

  if (*(v4 + 1216) == 1)
  {
    v182 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v182 + 360, 0x81988191775D1F3uLL, "md5", "1", 0xFFFFFFFFLL, buffer);
  }

  v183 = *(v4 + 16);
  if (v183)
  {
    sub_27746CF78(*(v4 + 1288), 0x5C8E300840CF1DCCuLL, "idr-interval", v183);
  }

  v184 = *(v4 + 20);
  if (v184 != 0.0)
  {
    sub_27746D014(*(v4 + 1288), 0x25B0C33846144F91uLL, "idr-duration", v184);
  }

  if (*(v4 + 1240) == 1)
  {
    v185 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v185 + 360, 0xFC7DFD8BC570D29ELL, "noise-level-control", "true", 0xFFFFFFFFLL, buffer);
    v186 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v186 + 360, 0x1E2005B3F5BEB950uLL, "satd-merge", "false", 0xFFFFFFFFLL, buffer);
    v187 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v187 + 360, 0xC4BF903204850796, "fast-merge", "false", 0xFFFFFFFFLL, buffer);
    v188 = *(v4 + 1288);
    buffer[0] = 0;
    sub_27744140C(v188 + 360, 0x799736CC586FE042uLL, "num-merge-candidate", "3", 0xFFFFFFFFLL, buffer);
  }

  v189 = *(v4 + 120);
  if (v189)
  {
    if (CFDataGetLength(*(v4 + 120)) > 999)
    {
      LOBYTE(__p) = 0;
      v193 = CFDataGetBytePtr(v189);
      v336 = v4;
      v194 = 0;
      v195 = 0;
      v196 = byte_27753D120;
      while (2)
      {
        v197 = 0;
        if (!v195)
        {
          v196 = byte_27753D0F8;
        }

        v338 = v196;
        if (v195)
        {
          v198 = 64;
        }

        else
        {
          v198 = 16;
        }

        if (v195 == 3)
        {
          v199 = 3;
        }

        else
        {
          v199 = 1;
        }

        v337 = v199;
        do
        {
          v200 = v197 - 3;
          if (v197 < 3)
          {
            v200 = v197;
          }

          snprintf(&__p, 0x100uLL, "%s%dX%d_%s", off_27A7166A8[v197 > 2], 4 << v195, 4 << v195, off_27A7166B8[v200]);
          if (v195 >= 2)
          {
            v201 = v194 + snprintf(&buffer[v194], 0x4000 - v194, "%s_DC =\n", &__p);
            if (v201 >= 0x4000 || (v194 = v201 + snprintf(&buffer[v201], 0x4000 - v201, "%d\n", *v193), v194 >= 0x4000))
            {
LABEL_333:
              if (dword_280B9A880 <= 2)
              {
                goto LABEL_337;
              }

LABEL_336:
              fwrite("Buffer is too small\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
              syslog(27, "Buffer is too small\n");
              goto LABEL_337;
            }

            ++v193;
          }

          v202 = v194 + snprintf(&buffer[v194], 0x4000 - v194, "%s =\n", &__p);
          v203 = v338;
          v204 = v198;
          if (v202 >> 14)
          {
            goto LABEL_333;
          }

          do
          {
            v206 = *v193++;
            v205 = v206;
            v207 = *v203++;
            *(v351 + v207) = v205;
            --v204;
          }

          while (v204);
          for (i = 0; i != v198; ++i)
          {
            v202 += snprintf(&buffer[v202], 0x4000 - v202, "%d, ", *(v351 + i));
          }

          if (v202 >= 0x4000 || (v194 = v202 + snprintf(&buffer[v202], 0x4000 - v202, "\n\n"), v194 >= 0x4000))
          {
            if (dword_280B9A880 <= 2)
            {
              goto LABEL_337;
            }

            goto LABEL_336;
          }

          v197 += v337;
        }

        while (v197 < 6);
        ++v195;
        v196 = byte_27753D120;
        if (v195 != 4)
        {
          continue;
        }

        break;
      }

LABEL_337:
      v9 = 0x280B9A000uLL;
      v4 = v336;
    }

    else if (dword_280B9A880 >= 3)
    {
      fwrite("kVTCompressionPropertyKey_QuantizationScalingLists too small\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "kVTCompressionPropertyKey_QuantizationScalingLists too small\n");
    }

    v209 = *(v4 + 1288);
    LOBYTE(__p) = 0;
    sub_27744140C(v209 + 360, 0x92F39F846EC10A99, "scaling-list", buffer, 0xFFFFFFFFLL, &__p);
  }

  else
  {
    v190 = *(v4 + 128);
    if (v190)
    {
      v191 = *(v4 + 1288);
      if (v190 == 1)
      {
        v192 = "default";
      }

      else
      {
        v192 = "flat";
      }

      buffer[0] = 0;
      sub_27744140C(v191 + 360, 0x92F39F846EC10A99, "scaling-list", v192, 0xFFFFFFFFLL, buffer);
    }
  }

  sub_27746CF78(*(v4 + 1288), 0xA4FAC089B047A575, "schedule-policy", *(v4 + 1244));
  sub_27746CF78(*(v4 + 1288), 0x818A639346385C5uLL, "required-sps-id", *(v4 + 160));
  sub_27746CF78(*(v4 + 1288), 0xEC4CA737CBED8456, "required-pps-id", *(v4 + 164));
  sub_27746CF78(*(v4 + 1288), 0x4BD00B7E61081A2BuLL, "alpha-layer-id", *(v4 + 168));
  if (*(v4 + 1441) == 1)
  {
    sub_27746CF78(*(v4 + 1288), 0x5ED5212C9D566C9DuLL, "use-cra", 1);
    sub_27746CF78(*(v4 + 1288), 0xC4D0FEC7CD579487, "reencode-anti-pop", 0);
  }

  v210 = *(v4 + 1288);
  *(v210 + 11016) = 0;
  sub_27744264C(v210 + 360);
  v211 = *(v210 + 520);
  if (v211 <= 1)
  {
    v211 = 1;
  }

  *(v210 + 520) = v211;
  v212 = *(v210 + 544);
  if ((v212 & 4) != 0 && 2 << *(v210 + 538) >= *(v210 + 466))
  {
    v212 &= ~4u;
    *(v210 + 544) = v212;
  }

  v213 = *(v210 + 524);
  if (!v213)
  {
    v213 = v211;
    if (v212 != 4)
    {
      v214 = *(v210 + 538);
      v215 = *(v210 + 466) / (5 << v214);
      v213 = *(v210 + 468) / (2 << v214);
      if (v213 >= v215)
      {
        v213 = v215;
      }
    }
  }

  if (v213 < v211)
  {
    v211 = v213;
  }

  if (v213 <= 1)
  {
    v211 = 1;
  }

  *(v210 + 524) = v211;
  v216 = *(v210 + 429);
  if (v216 == 1)
  {
    if (*(v210 + 856) >= 1)
    {
      *(v210 + 576) = 8;
    }

    if ((*(v210 + 430) & 1) == 0)
    {
      goto LABEL_364;
    }

    goto LABEL_360;
  }

  if (*(v210 + 430) == 1)
  {
LABEL_360:
    *(v210 + 492) = 0;
    *(v210 + 561) = 0;
    *(v210 + 572) = 0;
    *(v210 + 508) = 0;
    if ((v216 & 1) == 0 && dword_280B9A880 >= 4)
    {
      fwrite("Lossless inter coding is broken, disabling inter frames\n", 0x38uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(28, "Lossless inter coding is broken, disabling inter frames\n");
    }

    *(v210 + 429) = 1;
LABEL_364:
    if (*(v210 + 584) == 1)
    {
      *(v210 + 584) = 0;
      if (dword_280B9A880 >= 4)
      {
        fwrite("Reencode for IDR anti popping doesn't work for I only. Force disabled\n", 0x46uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(28, "Reencode for IDR anti popping doesn't work for I only. Force disabled\n");
      }
    }
  }

  if (!*(v210 + 656))
  {
    if ((*(v210 + 429) & 1) == 0 && dword_280B9A880 >= 4)
    {
      fwrite("Monochrome inter coding is broken, disabling inter frames\n", 0x3AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(28, "Monochrome inter coding is broken, disabling inter frames\n");
    }

    *(v210 + 429) = 1;
  }

  if (*(v210 + 8136))
  {
    if (*(v210 + 497) && dword_280B9A880 >= 4)
    {
      fwrite("RDOQ not implemented for scaling lists, disabling RDOQ\n", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(28, "RDOQ not implemented for scaling lists, disabling RDOQ\n");
    }

    *(v210 + 497) = 0;
  }

  v217 = *(v210 + 544);
  if ((v217 & 2) != 0)
  {
    if ((*(v210 + 446) & 1) != 0 || (*(v210 + 447) & 1) != 0 || (*(v210 + 585) & 1) != 0 || *(v210 + 529) || (v293 = *(v210 + 456)) != 0 && v293 != 40)
    {
      if (dword_280B9A880 >= 4)
      {
        fwrite("MPT isn't supported/tested with another enabled options; disabling MPT\n", 0x47uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(28, "MPT isn't supported/tested with another enabled options; disabling MPT\n");
        v217 = *(v210 + 544);
      }

      *(v210 + 544) = v217 & 0xFFFFFFFD;
    }

    else if (*(v210 + 572))
    {
      if ((*(v210 + 429) & 1) == 0)
      {
        *(v210 + 572) = 0;
        if (dword_280B9A880 >= 4)
        {
          fwrite("mpt does not support sao for now. Force disabled\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(28, "mpt does not support sao for now. Force disabled\n");
        }
      }
    }
  }

  if (!*(v210 + 652) || !*(v210 + 653))
  {
    *(v210 + 652) = *(v210 + 650);
  }

  v218 = *(v210 + 656);
  if (v218 >= 2)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unsupported chroma format idc %d\n", *(v210 + 656));
      syslog(27, "Unsupported chroma format idc %d\n", *(v210 + 656));
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (!v218)
  {
    *(v210 + 908) = 1;
  }

  if (*(v210 + 952))
  {
    *(v210 + 594) = 1;
  }

  else
  {
    *(v210 + 7868) = 0x100000000;
    *(v210 + 608) = 1;
    *(v210 + 640) = 1;
    *(v210 + 956) = 0;
    if (*(v210 + 594))
    {
      v219 = 76;
    }

    else
    {
      v219 = 80;
    }

    *(v210 + 957) = v219;
    *(v210 + 960) = *(v210 + 489) - *(v210 + 488);
    *(v210 + 958) = 256;
    v220 = *(v210 + 528);
    *(v210 + 961) = v220;
    *(v210 + 962) = *(v210 + 530);
    *(v210 + 1044) = 0;
    if (v220)
    {
      v221 = (v210 + 964);
      v222 = (v210 + 1028);
      v223 = -1;
      do
      {
        *v221++ = v223;
        *v222++ = 1;
        --v223;
        --v220;
      }

      while (v220);
    }
  }

  v224 = *(v210 + 604);
  if ((*(v210 + 429) & 1) != 0 || v224 < 1)
  {
    goto LABEL_418;
  }

  v225 = 0;
  v226 = 0;
  do
  {
    v227 = *(v210 + 608 + 4 * v225);
    if (v227 < 1)
    {
      goto LABEL_417;
    }

    v228 = 0;
    v229 = v226 + v227;
    v230 = (v210 + 962 + 108 * v226);
    do
    {
      if (*(v230 - 3))
      {
        v231 = v227 < *(v230 - 3);
      }

      else
      {
        v231 = 1;
      }

      if (v231)
      {
        if (dword_280B9A880 >= 3)
        {
          v284 = *MEMORY[0x277D85DF8];
          v285 = "(gop_list_[frm_num].poc > 0) && (gop_list_[frm_num].poc <= gop_size_[gop_id]) failed!\n";
          v286 = "(gop_list_[frm_num].poc > 0) && (gop_list_[frm_num].poc <= gop_size_[gop_id]) failed!\n";
          v287 = 86;
          goto LABEL_472;
        }

        goto LABEL_670;
      }

      v232 = *(v230 - 5) - 76;
      v231 = v232 > 6;
      v233 = (1 << v232) & 0x51;
      if (v231 || v233 == 0)
      {
        if (dword_280B9A880 >= 3)
        {
          v284 = *MEMORY[0x277D85DF8];
          v285 = "(gop_list_[frm_num].frame_type == 'P') || (gop_list_[frm_num].frame_type == 'R') || (gop_list_[frm_num].frame_type == 'L') failed!\n";
          v286 = "(gop_list_[frm_num].frame_type == 'P') || (gop_list_[frm_num].frame_type == 'R') || (gop_list_[frm_num].frame_type == 'L') failed!\n";
          v287 = 131;
LABEL_472:
          fwrite(v286, v287, 1uLL, v284);
          syslog(27, v285);
LABEL_473:
          LOWORD(v289) = -12902;
          goto LABEL_474;
        }

        goto LABEL_670;
      }

      if (*v230 > *(v230 - 1))
      {
        if (dword_280B9A880 >= 3)
        {
          v284 = *MEMORY[0x277D85DF8];
          v285 = "gop_list_[frm_num].number_ref_active <= gop_list_[frm_num].number_ref_all failed!\n";
          v286 = "gop_list_[frm_num].number_ref_active <= gop_list_[frm_num].number_ref_all failed!\n";
          v287 = 82;
          goto LABEL_472;
        }

        goto LABEL_670;
      }

      ++v228;
      v230 += 108;
    }

    while (v227 != v228);
    v226 = v229;
LABEL_417:
    ++v225;
  }

  while (v225 != v224);
LABEL_418:
  *(v210 + 7868) = 0;
  if (v224 >= 1)
  {
    v235 = 0;
    v236 = 0;
    v237 = 0;
    v238 = v210 + 608;
    v239 = v210 + 956;
    v240 = v210 + 7876;
    while (1)
    {
      *buffer = 0;
      v241 = *(v238 + 4 * v236);
      if (v241 >= 1)
      {
        break;
      }

      v244 = v235;
LABEL_459:
      v237 += v241;
      *(v240 + 4 * v236++) = v244 - v235;
      v235 = v244;
      if (v236 >= v224)
      {
        goto LABEL_467;
      }
    }

    v242 = 0;
    v243 = 0;
    v244 = v235;
    v245 = 1;
    while (2)
    {
      v246 = v242 / v241 * v241;
      v247 = v242 - v246 + v237;
      v248 = v239 + 108 * v247;
      v249 = v246 + *(v248 + 3);
      v250 = *(v248 + 5);
      if (*(v248 + 5))
      {
        v251 = 0;
        v252 = 4 * v245;
        while (2)
        {
          v253 = *(v248 + 8 + 4 * v251) + v249;
          if (v253 >= 0)
          {
            v254 = 0;
            while (v253 != *&buffer[v254])
            {
              v254 += 4;
              if (v252 == v254)
              {
                if (*(v9 + 2176) >= 3)
                {
                  fprintf(*MEMORY[0x277D85DF8], "Reference %d not avail for frame %d of gop %d\n", v253, v249, v236);
                  syslog(27, "Reference %d not avail for frame %d of gop %d\n", v253, v249, v236);
                }

                goto LABEL_473;
              }
            }

            if (++v251 != v250)
            {
              continue;
            }

            goto LABEL_430;
          }

          break;
        }

        v260 = 0;
        v261 = 0;
        v262 = *(v210 + 7872) + v244;
        v263 = v239 + 108 * v262;
        *(v263 + 3) = v249;
        *(v263 + 1) = *(v248 + 1);
        *(v263 + 4) = *(v248 + 4);
        v264 = (v263 + 8);
        v265 = (v263 + 72);
        v266 = v210 + 108 * v247;
        do
        {
          v267 = *(v266 + 4 * v260 + 964);
          if (v267 > ~v249)
          {
            v264[v261] = v267;
            v265[v261++] = *(v266 + v260 + 1028);
            LODWORD(v250) = *(v248 + 5);
          }

          ++v260;
        }

        while (v260 < v250);
        v268 = *(v210 + 7868);
        *(v263 + 5) = v261;
        *(v263 + 6) = *(v248 + 6);
        if (v268)
        {
          v269 = 0;
          v270 = v239 + 108 * v262;
          v271 = *(v270 - 105);
          v272 = *(v270 - 103);
          *(v263 + 88) = 1;
          *(v263 + 90) = v272 + 1;
          *(v263 + 89) = v271 - *(v263 + 3);
          v273 = v263 + 91;
          v274 = v270 - 100;
          do
          {
            v275 = v271;
            if (v269 != v272)
            {
              v275 = *(v274 + 4 * v269) + v271;
            }

            if (v261)
            {
              v276 = v4;
              v277 = v9;
              v278 = 0;
              v279 = v264;
              v280 = v261;
              v281 = v265;
              do
              {
                v282 = *v279++;
                if (v275 == v282 + v249)
                {
                  if (*v281)
                  {
                    v278 = 1;
                  }

                  else
                  {
                    v278 = 2;
                  }
                }

                ++v281;
                --v280;
              }

              while (v280);
              v9 = v277;
              v4 = v276;
            }

            else
            {
              v278 = 0;
            }

            *(v273 + v269) = v278;
            v6 = v269++ == v272;
          }

          while (!v6);
          v283 = *(v210 + 7868);
        }

        else
        {
          v283 = 0;
          *(v263 + 88) = 0;
          *(v263 + 90) = 0;
        }

        v244 = (v283 + 1);
        *(v210 + 7868) = v244;
        v247 = *(v210 + 7872) + v283;
        LODWORD(v250) = *(v239 + 108 * v247 + 5);
      }

      else
      {
LABEL_430:
        ++v243;
      }

      v255 = v250;
      if (v250)
      {
        v256 = (v210 + 964 + 108 * v247);
        v257 = buffer;
        v258 = v255;
        do
        {
          v259 = *v256++;
          *v257 = v259 + v249;
          v257 += 4;
          --v258;
        }

        while (v258);
      }

      *&buffer[4 * v255] = v249;
      v245 = v255 + 1;
      ++v242;
      v241 = *(v238 + 4 * v236);
      if (v243 >= v241)
      {
        LODWORD(v224) = *(v210 + 604);
        v240 = v210 + 7876;
        goto LABEL_459;
      }

      continue;
    }
  }

LABEL_467:
  v288 = *(v210 + 898) == 1 && *(v210 + 429) != 1 || (*(v210 + 887) & 6) != 0;
  *(v210 + 897) = v288;
  v290 = *(v210 + 481);
  *(v210 + 482) = v290 < 3;
  if (v290 >= 3)
  {
    v292 = 0;
    *(v210 + 483) = 0;
  }

  else
  {
    v291 = *(v210 + 494);
    *(v210 + 483) = *(v210 + 494) == 0;
    if (v291)
    {
      v292 = 0;
    }

    else
    {
      v292 = *(v210 + 493) == 0;
    }
  }

  *(v210 + 484) = v292;
  if ((v290 | 2) == 2)
  {
    v294 = 0;
    *(v210 + 485) |= *(v210 + 492) > 0;
  }

  else
  {
    v294 = 0;
    if (v290 == 3 && (*(v210 + 487) & 1) != 0)
    {
      if (*(v210 + 494))
      {
        v294 = 0;
      }

      else
      {
        v294 = *(v210 + 493) == 0;
      }
    }
  }

  *(v210 + 487) = v294;
  if (*(v210 + 756))
  {
    *(v210 + 737) = 1;
  }

  v295 = (*(v210 + 912) & 1) != 0 || *(v210 + 914) != 0;
  *(v210 + 913) |= v295;
  if (*(v210 + 910) && *(v210 + 868) >= *(v210 + 538) && (*(v210 + 892) & 1) == 0)
  {
    if (*(v9 + 2176) >= 7)
    {
      fwrite("Turn off CU combine since full mode is always checked\n", 0x36uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(31, "Turn off CU combine since full mode is always checked\n");
    }

    *(v210 + 910) = 0;
  }

  if (*(v210 + 911) == 1 && *(v210 + 856) != 4)
  {
    if (*(v9 + 2176) >= 7)
    {
      fwrite("Turn off auto recon skip, it's only supported in full RD\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(31, "Turn off auto recon skip, it's only supported in full RD\n");
    }

    *(v210 + 911) = 0;
  }

  v296 = -6 * *(v210 + 650) + 48;
  v297 = *(v210 + 488);
  if (v296 > v297)
  {
    v297 = -6 * *(v210 + 650) + 48;
  }

  if (v297 >= 51)
  {
    LOBYTE(v297) = 51;
  }

  *(v210 + 488) = v297;
  if (v296 <= *(v210 + 489))
  {
    v296 = *(v210 + 489);
  }

  if (v296 >= 51)
  {
    LOBYTE(v296) = 51;
  }

  *(v210 + 489) = v296;
  if (*(v210 + 552) && !*(v210 + 548))
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("bps_ > 0 failed!\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "bps_ > 0 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 464))
  {
    v298 = 0;
    v299 = 1;
    v300 = word_27750EA84;
LABEL_520:
    v301 = 0;
    while (v300[v301] != *(v210 + 464))
    {
      if (++v301 == 3)
      {
        v299 = v298 < 5;
        v300 += 3;
        if (++v298 != 6)
        {
          goto LABEL_520;
        }

        goto LABEL_542;
      }
    }

    if (v299)
    {
      goto LABEL_526;
    }

LABEL_542:
    if (*(v9 + 2176) >= 3)
    {
      fwrite("ProfileTierLevel::IsLevelIdcValid(level_) failed!\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "ProfileTierLevel::IsLevelIdcValid(level_) failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

LABEL_526:
  if (*(v210 + 466) < 1 || *(v210 + 468) <= 0)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("width_ > 0 && height_ > 0 failed!\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "width_ > 0 && height_ > 0 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 472) <= 0.0)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("expected_fps_ > 0 failed!\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "expected_fps_ > 0 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 512) <= 0)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("number_frames_ > 0 failed!\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "number_frames_ > 0 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if ((*(v210 + 516) & 0x80000000) != 0)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("frame_skip_interval_ >= 0 failed!\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "frame_skip_interval_ >= 0 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v302 = *(v210 + 537);
  if ((v302 - 3) >= 4)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "log2_min_cu_size_ of %lld is out of range (%lld, %lld)\n", v302, 3, 6);
      syslog(27, "log2_min_cu_size_ of %lld is out of range (%lld, %lld)\n", *(v210 + 537), 3, 6);
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v303 = *(v210 + 538);
  if ((v303 - 4) >= 3)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "log2_max_cu_size_ of %lld is out of range (%lld, %lld)\n", v303, 4, 6);
      syslog(27, "log2_max_cu_size_ of %lld is out of range (%lld, %lld)\n", *(v210 + 538), 4, 6);
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (v303 < v302)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("log2_max_cu_size_ >= log2_min_cu_size_ failed!\n", 0x2FuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "log2_max_cu_size_ >= log2_min_cu_size_ failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v304 = *(v210 + 539);
  if ((v304 - 2) >= 4)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "log2_min_tu_size_ of %lld is out of range (%lld, %lld)\n", v304, 2, 5);
      syslog(27, "log2_min_tu_size_ of %lld is out of range (%lld, %lld)\n", *(v210 + 539), 2, 5);
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v305 = *(v210 + 540);
  if ((v305 - 2) >= 4)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "log2_max_tu_size_ of %lld is out of range (%lld, %lld)\n", v305, 2, 5);
      syslog(27, "log2_max_tu_size_ of %lld is out of range (%lld, %lld)\n", *(v210 + 540), 2, 5);
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (v305 < v304)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("log2_max_tu_size_ >= log2_min_tu_size_ failed!\n", 0x2FuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "log2_max_tu_size_ >= log2_min_tu_size_ failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v306 = *(v210 + 541);
  v307 = v303 - v304;
  if (v307 < v306)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "max_hierarchy_tu_intra_ of %lld is out of range (%lld, %lld)\n", v306, 0, v307);
      syslog(27, "max_hierarchy_tu_intra_ of %lld is out of range (%lld, %lld)\n", *(v210 + 541), 0, *(v210 + 538) - *(v210 + 539));
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v308 = *(v210 + 542);
  if (v307 < v308)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "max_hierarchy_tu_inter_ of %lld is out of range (%lld, %lld)\n", v308, 0, v307);
      syslog(27, "max_hierarchy_tu_inter_ of %lld is out of range (%lld, %lld)\n", *(v210 + 542), 0, *(v210 + 538) - *(v210 + 539));
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (v303 < v305)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("log2_max_cu_size_ >= log2_max_tu_size_ failed!\n", 0x2FuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "log2_max_cu_size_ >= log2_max_tu_size_ failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  HIDWORD(v310) = *(v210 + 576) - 4;
  LODWORD(v310) = HIDWORD(v310);
  v309 = v310 >> 2;
  if (v309 > 7 || ((1 << v309) & 0x8B) == 0)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("max_satd_luma_size_ == 4 || max_satd_luma_size_ == 8 || max_satd_luma_size_ == 16 || max_satd_luma_size_ == 32 failed!\n", 0x77uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "max_satd_luma_size_ == 4 || max_satd_luma_size_ == 8 || max_satd_luma_size_ == 16 || max_satd_luma_size_ == 32 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 857) >= 2u)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("fast_intra_ == 0 || fast_intra_ == 1 failed!\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "fast_intra_ == 0 || fast_intra_ == 1 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v311 = *(v210 + 858);
  if (v311 >= 4)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("intra_early_termination_ >= kNoIntraET && intra_early_termination_ <= kIntraETALLLimited failed!\n", 0x61uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "intra_early_termination_ >= kNoIntraET && intra_early_termination_ <= kIntraETALLLimited failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (v311 > 1 == ((*(v210 + 889) & 8) == 0))
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("((intra_early_termination_ >= kIntraETAll) && (skip_mode_bias_ & kBypassIntraWhenSkip)) || ((intra_early_termination_ < kIntraETAll) && !(skip_mode_bias_ & kBypassIntraWhenSkip)) failed!\n", 0xBBuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "((intra_early_termination_ >= kIntraETAll) && (skip_mode_bias_ & kBypassIntraWhenSkip)) || ((intra_early_termination_ < kIntraETAll) && !(skip_mode_bias_ & kBypassIntraWhenSkip)) failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 861) >= 5)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("num_intra_rd_candidate_ <= 4 failed!\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "num_intra_rd_candidate_ <= 4 failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 859) >= 3u)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("fast_intra_chroma_ >= kNoFastIntraChroma && fast_intra_chroma_ <= kFastIntraChromaLimited failed!\n", 0x62uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "fast_intra_chroma_ >= kNoFastIntraChroma && fast_intra_chroma_ <= kFastIntraChromaLimited failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (*(v210 + 572) >= 4u)
  {
    if (*(v9 + 2176) >= 3)
    {
      fwrite("sao_ >= kSaoOff && sao_ <= kSaoChromaOnly failed!\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "sao_ >= kSaoOff && sao_ <= kSaoChromaOnly failed!\n");
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  v312 = *(v210 + 492);
  if (v312 >= 6)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "qpm_ of %lld is out of range (%lld, %lld)\n", v312, 0, 5);
      syslog(27, "qpm_ of %lld is out of range (%lld, %lld)\n", *(v210 + 492), 0, 5);
      goto LABEL_473;
    }

    goto LABEL_670;
  }

  if (!*(v210 + 492))
  {
LABEL_593:
    if (*(v210 + 585) == 1 && *(v210 + 529) + *(v210 + 528) >= 5)
    {
      if (*(v9 + 2176) >= 3)
      {
        fwrite("number_short_term_ref_in_dpb_+number_long_term_ref_in_dpb_+2 <= kMaxDpbSizeFrameAck failed!\n", 0x5CuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "number_short_term_ref_in_dpb_+number_long_term_ref_in_dpb_+2 <= kMaxDpbSizeFrameAck failed!\n");
        goto LABEL_473;
      }

      goto LABEL_670;
    }

    v317 = *(v210 + 444);
    if (v317 >= 4)
    {
      if (*(v9 + 2176) >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "adaptive_cudepth_ of %lld is out of range (%lld, %lld)\n", v317, 0, 3);
        syslog(27, "adaptive_cudepth_ of %lld is out of range (%lld, %lld)\n", *(v210 + 444), 0, 3);
        goto LABEL_473;
      }

      goto LABEL_670;
    }

    if (!*(v210 + 492) && (*(v210 + 714) & 1) != 0)
    {
      if (*(v9 + 2176) >= 3)
      {
        fwrite("qpm_ > 0 failed!\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "qpm_ > 0 failed!\n");
        goto LABEL_473;
      }

      goto LABEL_670;
    }

    if (*(v210 + 898) != 1 || (*(v210 + 429) & 1) != 0 || (*(v210 + 897) & 1) != 0)
    {
      if (*(v210 + 887) & 6) == 0 || (*(v210 + 897))
      {
        if (*(v210 + 712) == 1 && *(v210 + 713) == 1)
        {
          if (*(v9 + 2176) >= 3)
          {
            fwrite("!(isp_driven_wp_ && en_analyze_wp_) failed!\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "!(isp_driven_wp_ && en_analyze_wp_) failed!\n");
            goto LABEL_473;
          }

          goto LABEL_670;
        }

        if (*(v210 + 450) < *(v210 + 451))
        {
          if (*(v9 + 2176) >= 3)
          {
            fwrite("dpmd_on_ >= dpmd_enable_ failed!\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "dpmd_on_ >= dpmd_enable_ failed!\n");
            goto LABEL_473;
          }

          goto LABEL_670;
        }

        if (v312 == 5 && *(v210 + 856) <= 1)
        {
          if (*(v9 + 2176) >= 3)
          {
            fwrite("qpm 5 mode does not work with mdmode smaller than 2.", 0x34uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "qpm 5 mode does not work with mdmode smaller than 2.");
            goto LABEL_473;
          }

          goto LABEL_670;
        }

        if (!*(v210 + 456) && *(v210 + 584) == 1 && *(v210 + 536) == 1)
        {
          if (*(v9 + 2176) >= 3)
          {
            fwrite("!(reencode_idr_anti_popping_ && use_cra_for_force_idr_) failed!\n", 0x40uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "!(reencode_idr_anti_popping_ && use_cra_for_force_idr_) failed!\n");
            goto LABEL_473;
          }

          goto LABEL_670;
        }

        if (*(v9 + 2176) >= 7)
        {
          v318 = *(v210 + 368);
          if (v318 != (v210 + 376))
          {
            v319 = *MEMORY[0x277D85DF8];
            do
            {
              (**v318[6])(v318[6], v319, v318[4], v318[5]);
              v320 = v318[1];
              if (v320)
              {
                do
                {
                  v321 = v320;
                  v320 = *v320;
                }

                while (v320);
              }

              else
              {
                do
                {
                  v321 = v318[2];
                  v6 = *v321 == v318;
                  v318 = v321;
                }

                while (!v6);
              }

              v318 = v321;
            }

            while (v321 != (v210 + 376));
          }
        }

        v322 = sub_2774BCBDC(v210, *(v210 + 680));
        if (!v322)
        {
          if (*(v210 + 34) == 255 || *(v210 + 447))
          {
            sub_2773EB894();
          }

          goto LABEL_473;
        }

        LOWORD(v289) = v322;
        if (v322)
        {
LABEL_474:
          if (*(v9 + 2176) >= 3)
          {
            fwrite("Encoder initialization failed\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Encoder initialization failed\n");
          }

          return v289;
        }

        *(*(v4 + 1288) + 8144) = 4;
        *buffer = 0;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v324 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v289 = 52632;
        if (!v324 || !Mutable)
        {
          goto LABEL_688;
        }

        v325 = sub_277470E90(*(v4 + 1288), buffer);
        if (v325)
        {
          v289 = v325;
          if (*(v9 + 2176) >= 3)
          {
            v326 = *MEMORY[0x277D85DF8];
            v327 = "hvcC creation failed\n";
            v328 = "hvcC creation failed\n";
            v329 = 21;
LABEL_687:
            fwrite(v328, v329, 1uLL, v326);
            syslog(27, v327);
            goto LABEL_688;
          }

          goto LABEL_688;
        }

        v331 = *buffer;
        if (*(v4 + 1296) == 1718908520)
        {
          CFDictionaryAddValue(v324, @"ftvH", *buffer);
        }

        CFDictionaryAddValue(v324, @"hvcC", v331);
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC0310], @"HEVC");
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC03B0], v324);
        v332 = *(v4 + 72);
        if (v332)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4C00], v332);
        }

        v333 = *(v4 + 80);
        if (v333)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4CC0], v333);
        }

        v334 = *(v4 + 88);
        if (v334)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D10], v334);
        }

        if (*(v4 + 1264))
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          if (!*(v4 + 1272))
          {
            v289 = 52626;
LABEL_685:
            if (*(v9 + 2176) >= 3)
            {
              v326 = *MEMORY[0x277D85DF8];
              v327 = "VTEncoderSessionCreateVideoFormatDescription failed";
              v328 = "VTEncoderSessionCreateVideoFormatDescription failed";
              v329 = 51;
              goto LABEL_687;
            }

LABEL_688:
            if (*buffer)
            {
              CFRelease(*buffer);
            }

            if (v324)
            {
              CFRelease(v324);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v289)
            {
              if (*(v9 + 2176) >= 3)
              {
                fwrite("CreateAndSetHeaders failed\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
                syslog(27, "CreateAndSetHeaders failed\n");
              }
            }

            else
            {
              *(v4 + 1313) = 1;
            }

            return v289;
          }

          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        v289 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          goto LABEL_688;
        }

        goto LABEL_685;
      }

      if (*(v9 + 2176) < 3)
      {
        goto LABEL_670;
      }
    }

    else if (*(v9 + 2176) < 3)
    {
      goto LABEL_670;
    }

    fwrite("update_enc_md_info_ failed!\n", 0x1CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "update_enc_md_info_ failed!\n");
    goto LABEL_473;
  }

  v313 = *(v210 + 496);
  v314 = v303 - v302;
  if (v313 < 0 || v314 < v313)
  {
    if (*(v9 + 2176) >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "dqp_depth_ of %lld is out of range (%lld, %lld)\n", v313, 0, v314);
      syslog(27, "dqp_depth_ of %lld is out of range (%lld, %lld)\n", *(v210 + 496), 0, *(v210 + 538) - *(v210 + 537));
      goto LABEL_473;
    }
  }

  else
  {
    v315 = *(v210 + 493);
    if (v315 >= 5)
    {
      if (*(v9 + 2176) >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "qpm_param_ of %lld is out of range (%lld, %lld)\n", v315, 0, 4);
        syslog(27, "qpm_param_ of %lld is out of range (%lld, %lld)\n", *(v210 + 493), 0, 4);
        goto LABEL_473;
      }
    }

    else
    {
      v316 = *(v210 + 494);
      if (v316 < 4)
      {
        goto LABEL_593;
      }

      if (*(v9 + 2176) >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "qpm_eq_ of %lld is out of range (%lld, %lld)\n", v316, 0, 3);
        syslog(27, "qpm_eq_ of %lld is out of range (%lld, %lld)\n", *(v210 + 494), 0, 3);
        goto LABEL_473;
      }
    }
  }

LABEL_670:
  LOWORD(v289) = -12902;
  return v289;
}

void sub_2773CAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2773CB058(uint64_t a1, uint64_t *a2, uint64_t a3, CFDictionaryRef theDict)
{
  v175 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1312))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Session was invalidated\n", 0x18uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Session was invalidated\n");
    }

    return 4294954393;
  }

  v169 = (a3 + 476);
  *(a3 + 712) = *(a1 + 176);
  *(a3 + 88) = *(a1 + 144);
  v8 = *(a1 + 28);
  if (v8 >= 1)
  {
    *(a3 + 92) = v8;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PrivateKey010");
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v10, kCFNumberSInt32Type, (a1 + 1308));
      }
    }
  }

  *(a3 + 144) = 0;
  *(a3 + 312) = 0;
  *(a3 + 332) = 0;
  *(a3 + 352) = 0;
  *(a3 + 360) = 0;
  *(a3 + 436) = 0;
  *(a3 + 444) = 0;
  *(a3 + 428) = 0;
  *v169 = -1;
  *(a3 + 484) = -1;
  *(a3 + 696) = 0;
  *(a3 + 136) = 0;
  *(a3 + 148) = 0;
  *(a3 + 284) = -1;
  *(a3 + 186) = 0;
  *(a3 + 288) = 0;
  *(a3 + 188) = 0;
  v12 = *(a3 + 208);
  if (v12)
  {
    CFRelease(v12);
    *(a3 + 208) = 0;
  }

  *(a3 + 200) = 0;
  v13 = *(a3 + 272);
  if (v13)
  {
    CFRelease(v13);
    *(a3 + 272) = 0;
  }

  *(a3 + 256) = 0;
  v14 = *(a3 + 176);
  if (v14)
  {
    CFRelease(v14);
    *(a3 + 176) = 0;
  }

  *(a3 + 168) = 0;
  if (theDict)
  {
    v15 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27C0]);
    v16 = MEMORY[0x277CBED28];
    if (v15)
    {
      v167 = CFEqual(v15, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      v167 = 0;
    }

    v18 = CFDictionaryGetValue(theDict, @"PrivateKey006");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberSInt32Type, (a3 + 140));
        *(a3 + 136) = 1;
      }
    }

    v21 = CFDictionaryGetValue(theDict, @"PrivateKey014");
    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v22, kCFNumberSInt32Type, (a3 + 144));
    }

    else
    {
      *(a3 + 144) = 0;
    }

    v24 = CFDictionaryGetValue(theDict, @"PrivateKey025");
    if (v24 && (v25 = v24, v26 = CFGetTypeID(v24), v26 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v25, kCFNumberSInt32Type, (a3 + 284));
    }

    else
    {
      *(a3 + 284) = -1;
    }

    v27 = CFDictionaryGetValue(theDict, @"PrivateKey043");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v28, kCFNumberSInt32Type, (a3 + 288));
      }
    }

    v30 = CFDictionaryGetValue(theDict, @"PrivateKey009");
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v31, kCFNumberSInt32Type, (a3 + 152));
        *(a3 + 148) = 1;
      }
    }

    v33 = CFDictionaryGetValue(theDict, @"PrivateKey015");
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v34, kCFNumberSInt32Type, (a3 + 160));
        *(a3 + 156) = 1;
      }
    }

    v36 = CFDictionaryGetValue(theDict, @"PrivateKey016");
    if (v36)
    {
      v37 = CFEqual(v36, *v16);
      *(a3 + 164) = v37 != 0;
      if (!v37)
      {
        goto LABEL_53;
      }
    }

    else if ((*(a3 + 164) & 1) == 0)
    {
      goto LABEL_53;
    }

    v38 = CFDictionaryGetValue(theDict, @"PrivateKey017");
    if (v38)
    {
      v39 = CFDictionaryGetValue(v38, @"PrivateKey018");
      *(a3 + 176) = v39;
      if (v39)
      {
        CFRetain(v39);
        *(a3 + 168) = CFDataGetBytePtr(*(a3 + 176));
      }

      else if (dword_280B9A880 >= 3)
      {
        fwrite("Delta QP data missing!\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Delta QP data missing!\n");
      }
    }

LABEL_53:
    v40 = CFDictionaryGetValue(theDict, @"PrivateKey007");
    if (v40)
    {
      *(a3 + 184) = 1;
      *(a3 + 185) = CFEqual(v40, *v16) != 0;
    }

    v41 = CFDictionaryGetValue(theDict, @"PrivateKey008");
    if (v41)
    {
      *(a3 + 186) = CFEqual(v41, *v16) != 0;
    }

    v42 = CFDictionaryGetValue(theDict, @"PrivateKey040");
    if (v42)
    {
      *(a3 + 187) = CFEqual(v42, *v16) != 0;
    }

    v43 = CFDictionaryGetValue(theDict, @"PrivateKey036");
    if (v43)
    {
      v44 = v43;
      LODWORD(valuePtr) = -1;
      v45 = CFDictionaryGetValue(v43, @"PrivateKey037");
      if (v45 && (v46 = v45, v47 = CFGetTypeID(v45), v47 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v46, kCFNumberSInt32Type, &valuePtr);
        v48 = valuePtr;
      }

      else
      {
        v48 = -1;
      }

      *(a3 + 192) = v48;
      LODWORD(valuePtr) = -1;
      v49 = CFDictionaryGetValue(v44, @"PrivateKey038");
      v50 = v49;
      if (v49 && (v51 = CFGetTypeID(v49), v51 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v50, kCFNumberSInt32Type, &valuePtr);
        v52 = valuePtr;
        *(a3 + 196) = valuePtr;
        if (*(a3 + 192) >= 1 && v52 >= 1)
        {
          v53 = CFDictionaryGetValue(v44, @"PrivateKey039");
          *(a3 + 208) = v53;
          if (v53)
          {
            CFRetain(v53);
            *(a3 + 200) = CFDataGetBytePtr(*(a3 + 208));
            *(a3 + 188) = 1;
          }

          else if (dword_280B9A880 >= 3)
          {
            fwrite("Motion mask data missing!\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Motion mask data missing!\n");
          }
        }
      }

      else
      {
        *(a3 + 196) = -1;
      }
    }

    v54 = CFDictionaryGetValue(theDict, @"PrivateKey019");
    v55 = v54;
    if (!v54)
    {
      goto LABEL_81;
    }

    LODWORD(valuePtr) = -1;
    v56 = CFDictionaryGetValue(v54, @"PrivateKey020");
    v57 = v56;
    if (v56 && (v58 = CFGetTypeID(v56), v58 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v57, kCFNumberSInt32Type, &valuePtr);
      v59 = valuePtr;
      *(a3 + 264) = valuePtr;
      if (v59 == 16)
      {
        LODWORD(valuePtr) = 0;
        v60 = CFDictionaryGetValue(v55, @"PrivateKey021");
        v61 = v60;
        if (v60 && (v62 = CFGetTypeID(v60), v62 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v61, kCFNumberSInt32Type, &valuePtr);
          v63 = valuePtr;
        }

        else
        {
          v63 = 0;
        }

        *(a3 + 280) = v63;
        v166 = CFDictionaryGetValue(v55, @"PrivateKey022");
        *(a3 + 272) = v166;
        if (v166)
        {
          CFRetain(v166);
          *(a3 + 256) = CFDataGetBytePtr(*(a3 + 272));
        }

        else if (dword_280B9A880 >= 3)
        {
          fwrite("MCM dQP map data missing!\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "MCM dQP map data missing!\n");
        }

LABEL_81:
        if (*(a3 + 88) == 1)
        {
          *(a3 + 352) = 2;
          v170 = 2;
          v65 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27B0]);
          if (v65)
          {
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(v65))
            {
              BytePtr = CFDataGetBytePtr(v65);
              v68 = CFDataGetLength(v65) >> 1;
              if (v68 >= 8)
              {
                LODWORD(v68) = 8;
              }

              memcpy((a3 + 296), BytePtr, 2 * v68);
              *(a3 + 354) = 1;
            }
          }

          v69 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27B8]);
          if (v69)
          {
            v70 = CFDataGetTypeID();
            if (v70 == CFGetTypeID(v69))
            {
              v71 = CFDataGetBytePtr(v69);
              v72 = CFDataGetLength(v69) >> 1;
              if (v72 >= 8)
              {
                LODWORD(v72) = 8;
              }

              memcpy((a3 + 316), v71, 2 * v72);
            }
          }

          v73 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27A8]);
          if (v73)
          {
            v74 = CFDataGetTypeID();
            if (v74 == CFGetTypeID(v73))
            {
              v75 = CFDataGetBytePtr(v73);
              v76 = CFDataGetLength(v73) >> 1;
              if (v76 >= 8)
              {
                LODWORD(v76) = 8;
              }

              memcpy((a3 + 336), v75, 2 * v76);
            }
          }

          v77 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27C8]);
          if (v77)
          {
            v78 = CFNumberGetTypeID();
            if (v78 == CFGetTypeID(v77))
            {
              CFNumberGetValue(v77, kCFNumberSInt32Type, &v170);
              *(a3 + 352) = v170;
            }
          }

          v79 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE2790]);
          if (v79)
          {
            v80 = CFArrayGetTypeID();
            if (v80 == CFGetTypeID(v79))
            {
              Count = CFArrayGetCount(v79);
              v82 = Count >= 0x10 ? 16 : Count;
              *(a3 + 360) = v82;
              if (Count)
              {
                v83 = 0;
                v84 = (a3 + 364);
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v79, v83);
                  CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v84);
                  ++v83;
                  v84 += 4;
                }

                while (v83 < *(a3 + 360));
              }
            }
          }

          *(a3 + 472) = 0;
          v86 = CFDictionaryGetValue(theDict, @"queuelength");
          if (v86)
          {
            *(a3 + 472) = 1;
            CFNumberGetValue(v86, kCFNumberSInt32Type, v169);
          }

          v87 = CFDictionaryGetValue(theDict, @"avgOutgoingRate");
          v88 = v87;
          if (v87)
          {
            v89 = CFGetTypeID(v87);
            if (v89 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v88, kCFNumberSInt32Type, (a3 + 480));
            }
          }

          v90 = CFDictionaryGetValue(theDict, @"instantOutgoingRate");
          v91 = v90;
          if (v90)
          {
            v92 = CFGetTypeID(v90);
            if (v92 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v91, kCFNumberSInt32Type, (a3 + 484));
            }
          }

          v93 = CFDictionaryGetValue(theDict, @"Use2GNetwork");
          v94 = v93;
          if (v93)
          {
            v95 = CFGetTypeID(v93);
            if (v95 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v94, kCFNumberSInt32Type, (a3 + 488));
            }
          }

          v96 = CFDictionaryGetValue(theDict, @"RemoteDisplayWidth");
          v97 = v96;
          if (v96)
          {
            v98 = CFGetTypeID(v96);
            if (v98 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v97, kCFNumberSInt32Type, (a3 + 492));
            }
          }

          v99 = CFDictionaryGetValue(theDict, @"RemoteDisplayHeight");
          v100 = v99;
          if (v99)
          {
            v101 = CFGetTypeID(v99);
            if (v101 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v100, kCFNumberSInt32Type, (a3 + 496));
            }
          }

          v102 = CFDictionaryGetValue(theDict, @"CameraFacingType");
          v103 = v102;
          if (v102)
          {
            v104 = CFGetTypeID(v102);
            if (v104 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v103, kCFNumberSInt32Type, (a3 + 696));
            }
          }

          v105 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27E8]);
          v106 = v105;
          if (v105)
          {
            v107 = CFDictionaryGetValue(v105, *MEMORY[0x277CC4BF8]);
            v108 = v107;
            if (v107)
            {
              v109 = CFGetTypeID(v107);
              if (v109 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v108, kCFNumberSInt32Type, (a3 + 456));
              }
            }

            v110 = CFDictionaryGetValue(v106, *MEMORY[0x277CC4BD8]);
            v111 = v110;
            if (v110)
            {
              v112 = CFGetTypeID(v110);
              if (v112 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v111, kCFNumberSInt32Type, (a3 + 460));
              }
            }

            v113 = CFDictionaryGetValue(v106, *MEMORY[0x277CC4BE0]);
            v114 = v113;
            if (v113)
            {
              v115 = CFGetTypeID(v113);
              if (v115 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v114, kCFNumberSInt32Type, (a3 + 464));
              }
            }

            v116 = CFDictionaryGetValue(v106, *MEMORY[0x277CC4BF0]);
            v117 = v116;
            if (v116)
            {
              v118 = CFGetTypeID(v116);
              if (v118 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v117, kCFNumberSInt32Type, (a3 + 468));
              }
            }
          }

          else
          {
            *(a3 + 456) = 0;
            *(a3 + 464) = 0;
          }

          v119 = CFDictionaryGetValue(theDict, @"PadFrameToMinimumSize");
          v120 = v119;
          if (v119)
          {
            v121 = CFGetTypeID(v119);
            if (v121 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v120, kCFNumberSInt32Type, (a3 + 452));
            }
          }

          v122 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27E0]);
          v123 = v122;
          if (v122)
          {
            v124 = CFGetTypeID(v122);
            if (v124 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v123, kCFNumberSInt32Type, (a3 + 428));
            }
          }

          v125 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27D0]);
          v126 = v125;
          if (v125)
          {
            v127 = CFGetTypeID(v125);
            if (v127 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v126, kCFNumberDoubleType, (a3 + 432));
            }
          }

          v128 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE2798]);
          v129 = v128;
          if (v128)
          {
            v130 = CFGetTypeID(v128);
            if (v130 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v129, kCFNumberSInt32Type, (a3 + 440));
            }
          }

          v131 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27A0]);
          v132 = v131;
          if (v131)
          {
            v133 = CFGetTypeID(v131);
            if (v133 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v132, kCFNumberSInt32Type, (a3 + 444));
            }
          }

          v134 = CFDictionaryGetValue(theDict, *MEMORY[0x277CE27D8]);
          v135 = v134;
          if (v134)
          {
            v136 = CFGetTypeID(v134);
            if (v136 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v135, kCFNumberSInt32Type, (a3 + 448));
            }
          }

          LODWORD(valuePtr) = 1;
          v137 = CFDictionaryGetValue(theDict, @"AutoExposureState");
          v138 = v137;
          if (v137 && (v139 = CFGetTypeID(v137), v139 == CFNumberGetTypeID()))
          {
            CFNumberGetValue(v138, kCFNumberSInt32Type, &valuePtr);
            v140 = valuePtr;
          }

          else
          {
            v140 = 1;
          }

          *(a3 + 356) = v140;
        }

        v17 = v167;
        goto LABEL_166;
      }

      v64 = (a3 + 264);
    }

    else
    {
      v64 = (a3 + 264);
      v59 = -1;
      *(a3 + 264) = -1;
    }

    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "MCM map with granularity %d not supported\n", v59);
      syslog(27, "MCM map with granularity %d not supported\n", *v64);
    }

    goto LABEL_81;
  }

  v17 = 0;
  if (*(a3 + 88) == 1)
  {
    *(a3 + 352) = 2;
  }

LABEL_166:
  *(a3 + 128) |= v17;
  *(a3 + 132) = 0;
  if (*(a1 + 1328) != 2)
  {
    goto LABEL_187;
  }

  v141 = *(a1 + 1300);
  v142 = *(a1 + 1304);
  v143 = *(a1 + 152);
  v145 = v141 + 63;
  v144 = v141 < -63;
  v146 = v141 + 126;
  if (v144)
  {
    v147 = v146;
  }

  else
  {
    v147 = v145;
  }

  v148 = v142 + 63;
  v144 = v142 < -63;
  v149 = v142 + 126;
  if (v144)
  {
    v150 = v149;
  }

  else
  {
    v150 = v148;
  }

  v151 = *(a3 + 248);
  if (v151)
  {
    CFRelease(v151);
  }

  v152 = *(a3 + 240);
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  if (v152 == a3 + 216)
  {
    (*(*v152 + 32))(v152);
  }

  else if (v152)
  {
    (*(*v152 + 40))(v152);
  }

  v153 = CFDictionaryGetValue(theDict, @"HEVCQPMap");
  *(a3 + 248) = v153;
  if (v153)
  {
    v154 = v147 >> 6;
    v155 = 88 * ((v150 >> 6) * v154);
    CFRetain(v153);
    v156 = CFDataGetBytePtr(*(a3 + 248));
    Length = CFDataGetLength(*(a3 + 248));
    if (Length >= v155)
    {
      valuePtr = &unk_288662810;
      v172 = v156;
      v173 = v154;
      p_valuePtr = &valuePtr;
      sub_27743F7C4(&valuePtr, (a3 + 216));
      sub_27743F6E4(&valuePtr);
      goto LABEL_187;
    }

    if (dword_280B9A880 >= 3)
    {
      v158 = Length;
      fprintf(*MEMORY[0x277D85DF8], "External QP map is %zd, expected %zd!\n", Length, v155);
      syslog(27, "External QP map is %zd, expected %zd!\n", v158, v155);
    }
  }

  valuePtr = &unk_2886627C8;
  LODWORD(v172) = v143;
  p_valuePtr = &valuePtr;
  sub_27743F7C4(&valuePtr, (a3 + 216));
  sub_27743F6E4(&valuePtr);
  v159 = *(a3 + 248);
  if (v159)
  {
    CFRelease(v159);
  }

  *(a3 + 248) = 0;
LABEL_187:
  if (*(a1 + 1204))
  {
    if ((*(a3 + 148) & 1) == 0)
    {
      if (dword_280B9A880 >= 4)
      {
        fwrite("Specified MaxReording but didn't set InputFrameNum, assuming no reorder\n", 0x48uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(28, "Specified MaxReording but didn't set InputFrameNum, assuming no reorder\n");
      }

      *(a3 + 148) = 1;
      *(a3 + 152) = *(a1 + 1308);
    }
  }

  else if ((*(a3 + 148) & 1) == 0)
  {
    v164 = 0;
    v161 = *(a1 + 1308);
    goto LABEL_202;
  }

  v160 = *(a3 + 152);
  v161 = *(a1 + 1308);
  v162 = *(a1 + 1196);
  if (v160 - v161 >= v162)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Reordering for GOP size of %d, but specified a maximum of %d\n", v160 - v161 + 1, v162);
      syslog(27, "Reordering for GOP size of %d, but specified a maximum of %d\n", *(a3 + 152) - *(a1 + 1308) + 1, *(a1 + 1196));
    }

    return 4294954394;
  }

  v163 = *(a1 + 1204);
  if (v161 - v160 > v163)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Number of reordered pictures %d exceeds given maximum of %d\n", v161 - v160, v163);
      syslog(27, "Number of reordered pictures %d exceeds given maximum of %d\n", *(a1 + 1308) - *(a3 + 152), *(a1 + 1204));
    }

    return 4294954394;
  }

  v164 = 1;
LABEL_202:
  v165 = *a2;
  *(v165 + 8) = v161;
  *(v165 + 16) = *(v169 + 300);
  *(v165 + 32) = *(a3 + 792);
  result = 0;
  if ((v164 & 1) == 0)
  {
    *(a1 + 1308) = v161 + 1;
  }

  return result;
}

void sub_2773CC26C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_2773CC2D8()
{
  v0 = 2;
  valuePtr = 2;
  CFPreferencesAppSynchronize(@"com.apple.videoprocessing");
  v1 = *MEMORY[0x277CBF040];
  v2 = *MEMORY[0x277CBF010];
  v3 = CFPreferencesCopyKeyList(@"com.apple.videoprocessing", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1 && (v11.length = CFArrayGetCount(v4), v11.location = 0, CFArrayContainsValue(v4, v11, @"PFrameQpOffset")) && (v5 = CFPreferencesCopyValue(@"PFrameQpOffset", @"com.apple.videoprocessing", v1, v2)) != 0)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFNumberGetTypeID())
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        }
      }

      CFRelease(v4);
      CFRelease(v6);
      return valuePtr;
    }

    else
    {
      CFRelease(v4);
    }
  }

  return v0;
}

uint64_t sub_2773CC400(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x277CAD2B0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_2773CCBD4(v5);
  return a1;
}

void sub_2773CC6E4(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x277CAD300](v1);
  _Unwind_Resume(a1);
}

void *sub_2773CC728(void *a1)
{
  MEMORY[0x277CAD1C0](v16, a1);
  if (v16[0] == 1)
  {
    v2 = a1 + *(*a1 - 24);
    v3 = *(v2 + 5);
    v4 = *(v2 + 2);
    v5 = *(v2 + 36);
    if (v5 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v6 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v5 = (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&__b);
      *(v2 + 36) = v5;
    }

    if ((v4 & 0xB0) == 0x20)
    {
      v7 = "";
    }

    else
    {
      v7 = ":";
    }

    if (!v3)
    {
      goto LABEL_27;
    }

    v8 = *(v2 + 3);
    v9 = v8 <= 1;
    v10 = v8 - 1;
    v11 = v9 ? 0 : v10;
    if (v7 - ":" >= 1 && (*(*v3 + 96))(v3, ":", v7 - ":") != v7 - ":")
    {
      goto LABEL_27;
    }

    if (v11 >= 1)
    {
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2773CCBBC();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v18 = v11;
      memset(&__b, v5, v11);
      *(&__b.__locale_ + v11) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v13 = (*(*v3 + 96))(v3, p_b, v11);
      if (v18 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v13 != v11)
      {
        goto LABEL_27;
      }
    }

    v14 = ":" - v7 + 1;
    if (v14 < 1 || (*(*v3 + 96))(v3, v7, ":" - v7 + 1) == v14)
    {
      *(v2 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277CAD1D0](v16);
  return a1;
}

void sub_2773CC9D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x277CAD1D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2773CC9A8);
}

uint64_t sub_2773CCA54(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_2773CCBD4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_2773CCCDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5)
{
  v6 = a4;
  v8 = HIDWORD(a4);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1272) = a2;
  *(DerivedStorage + 1300) = v6;
  *(DerivedStorage + 1304) = v8;
  *(DerivedStorage + 12) = 0;
  if (a5)
  {
    *(DerivedStorage + 1320) = CFRetain(a5);
  }

  v10 = sub_2773F7380(*(DerivedStorage + 8));
  if (v10)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Error setting tile requirements\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Error setting tile requirements\n");
    }
  }

  else
  {
    v11 = *(DerivedStorage + 1288);
    *(v11 + 10448) = sub_2773CCDB8;
    *(v11 + 10456) = DerivedStorage;
  }

  return v10;
}

uint64_t sub_2773CCDB8(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t dataLength, _BYTE *a6, uint64_t a7)
{
  cf = 0;
  if (!a3 && a4 && dataLength)
  {
    v13 = *(a1 + 1288);
    if (*(v13 + 424) == 1)
    {
      *(v13 + 11012) &= CC_MD5_Update((v13 + 10920), a4, dataLength);
    }

    sub_2773CCED8(a1, a4, dataLength, 0, a7, a6, a2, &cf);
  }

  VTEncoderSessionEmitEncodedTile();
  if (cf)
  {
    CFRelease(cf);
  }

  sub_27743F764((a2 + 88));
  return MEMORY[0x277CAD370](a2, 0x1070C40040150F9);
}

uint64_t sub_2773CCED8(uint64_t a1, const void *a2, size_t dataLength, const CMSampleTimingInfo *a4, uint64_t a5, _BYTE *a6, uint64_t a7, CMSampleBufferRef *a8)
{
  v62 = *MEMORY[0x277D85DE8];
  dataPointerOut = 0;
  dataBuffer = 0;
  sampleSizeArray = dataLength;
  if (dataLength >> 31 || !*a5)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("No data / frame encoded!\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No data / frame encoded!\n");
    }

    v19 = 4294954392;
    goto LABEL_12;
  }

  v13 = dataLength;
  v16 = *(a1 + 136);
  if (v16)
  {
    dataLength += CFDataGetLength(v16);
    sampleSizeArray = dataLength;
  }

  v17 = *MEMORY[0x277CBECE8];
  DataPointer = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, dataLength, *(a1 + 1320), 0, 0, dataLength, 1u, &dataBuffer);
  if (!DataPointer)
  {
    DataPointer = CMSampleBufferCreate(v17, dataBuffer, 1u, 0, 0, *(a1 + 1280), 1, a4 != 0, a4, 1, &sampleSizeArray, a8);
    if (!DataPointer)
    {
      DataPointer = CMBlockBufferGetDataPointer(dataBuffer, 0, 0, 0, &dataPointerOut);
      if (!DataPointer)
      {
        memcpy(dataPointerOut, a2, v13);
        v21 = *(a1 + 136);
        if (v21)
        {
          v22 = dataPointerOut;
          BytePtr = CFDataGetBytePtr(v21);
          Length = CFDataGetLength(*(a1 + 136));
          memcpy(&v22[v13], BytePtr, Length);
        }

        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(*a8, 1u);
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        v27 = ValueAtIndex;
        if ((*(a1 + 144) - 33) <= 4)
        {
          sub_2773CD510(ValueAtIndex, a5, a6, *(a1 + 1308));
          if (*a6)
          {
            v28 = *a5;
            goto LABEL_34;
          }

          v29 = CFStringGetLength(*(a1 + 1248));
          if (v29 >= 0x29)
          {
            if (dword_280B9A880 >= 4)
            {
              fprintf(*MEMORY[0x277D85DF8], "VersionString(%d) is longer than max length(%d), truncating..", v29, 40);
              syslog(28, "VersionString(%d) is longer than max length(%d), truncating..", v29, 40);
            }

            v29 = 40;
          }

          CStringPtr = CFStringGetCStringPtr(*(a1 + 1248), 0x8000100u);
          memcpy(__dst, CStringPtr, v29);
          v55 = 61;
          v31 = sub_2774ED8E0(__dst, v29, v60, &v55);
          if (v31)
          {
            v19 = v31;
            if (dword_280B9A880 >= 3)
            {
              fwrite("Error creating SEI user data unregistered\n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
              syslog(27, "Error creating SEI user data unregistered\n");
            }

            goto LABEL_12;
          }

          v32 = off_280B9A8B0(bytes);
          v33 = CFDataCreate(v17, bytes, v32);
          if (!v33)
          {
            return 4294954385;
          }

          v34 = v33;
          CFDictionaryAddValue(v27, @"PrivateKey041", v33);
          CFRelease(v34);
        }

        v28 = *a5;
        if (!*a6)
        {
          v36 = 0;
          v35 = 0;
LABEL_36:
          if (*(v28 + 36) == 1)
          {
            *bytes = *(v28 + 8);
            v37 = CFNumberCreate(0, kCFNumberSInt32Type, bytes);
            if (v37)
            {
              v38 = v37;
              CFDictionaryAddValue(v27, *MEMORY[0x277CE2A60], v37);
              CFRelease(v38);
            }

            v28 = *a5;
          }

          v39 = MEMORY[0x277CBED28];
          if ((v36 & *(v28 + 41)) == 1)
          {
            CFDictionarySetValue(v27, *MEMORY[0x277CE2A58], *MEMORY[0x277CBED28]);
          }

          else if (!v36)
          {
LABEL_56:
            v47 = *MEMORY[0x277CBED10];
            v48 = *v39;
            if (v36)
            {
              v49 = *v39;
            }

            else
            {
              v49 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v27, *MEMORY[0x277CC06A0], v49);
            if (!*(*a5 + 40))
            {
              CFDictionarySetValue(v27, *MEMORY[0x277CC0690], v47);
            }

            CFDictionarySetValue(v27, *MEMORY[0x277CC0640], v49);
            if (v35)
            {
              v50 = v48;
            }

            else
            {
              v50 = v47;
            }

            CFDictionarySetValue(v27, *MEMORY[0x277CC0658], v50);
            if (*(*a5 + 504) >= 1 && *(*a5 + 508) >= 1)
            {
              *bytes = *(*a5 + 504);
              v51 = CFNumberCreate(0, kCFNumberSInt32Type, bytes);
              if (v51)
              {
                v52 = v51;
                CFDictionaryAddValue(v27, @"VRAWidth", v51);
                CFRelease(v52);
              }

              *bytes = *(*a5 + 508);
              v53 = CFNumberCreate(0, kCFNumberSInt32Type, bytes);
              if (v53)
              {
                v54 = v53;
                CFDictionaryAddValue(v27, @"VRAHeight", v53);
                CFRelease(v54);
              }
            }

            v19 = 0;
            goto LABEL_12;
          }

          v40 = *(a7 + 432);
          if (v40 >= 1.0 && *(a7 + 92) >= 77000)
          {
            if (v40 >= 10.0)
            {
              v41 = 3;
            }

            else
            {
              v41 = 2;
            }

            if (v40 < 5.0)
            {
              v42 = 1;
            }

            else
            {
              v42 = v41;
            }

            *bytes = 0;
            v43 = CFNumberCreate(0, kCFNumberSInt32Type, bytes);
            if (v43)
            {
              v44 = v43;
              CFDictionaryAddValue(v27, *MEMORY[0x277CE2A40], v43);
              CFRelease(v44);
            }

            *bytes = v42;
            v45 = CFNumberCreate(0, kCFNumberSInt32Type, bytes);
            if (v45)
            {
              v46 = v45;
              CFDictionaryAddValue(v27, *MEMORY[0x277CE2A50], v45);
              CFRelease(v46);
            }

            CFDictionarySetValue(v27, *MEMORY[0x277CE2A48], *v39);
          }

          goto LABEL_56;
        }

LABEL_34:
        v35 = (*(v28 + 40) != 0) & *(a1 + 13);
        v36 = 1;
        goto LABEL_36;
      }
    }
  }

  v19 = DataPointer;
LABEL_12:
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (v19)
  {
    if (*a8)
    {
      CFRelease(*a8);
    }

    *a8 = 0;
  }

  return v19;
}

void sub_2773CD510(__CFDictionary *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *a2;
  v9 = 131;
  if (*(*a2 + 432))
  {
    v9 = 127;
  }

  v10 = v8[v9];
  v11 = 130;
  if (*(*a2 + 432))
  {
    v11 = 126;
  }

  v12 = v8[v11];
  v13 = v8[292];
  v14 = (*(*v8 + 24))(v8);
  v15 = CFDataCreate(0, (*a2 + 664), 24);
  v16 = v15;
  if (!v14)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_18;
  }

  if (!v15)
  {
    return;
  }

  v31 = (100 * v13 + v12 * v10 / 2) / (v12 * v10);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  if (v17)
  {
    v18 = v17;
    CFDictionaryAddValue(a1, @"PrivateKey026", v17);
    CFRelease(v18);
    valuePtr = *(*a2 + 1164);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(a1, @"PrivateKey028", v19);
      CFRelease(v20);
      CFDictionaryAddValue(a1, @"PrivateKey027", v14);
      v33 = *(a3 + 1);
      v21 = CFNumberCreate(0, kCFNumberSInt8Type, &v33);
      if (v21)
      {
        v22 = v21;
        CFDictionaryAddValue(a1, @"PrivateKey029", v21);
        CFRelease(v22);
        v34 = a4;
        v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v34);
        if (v23)
        {
          v24 = v23;
          CFDictionaryAddValue(a1, @"PrivateKey010", v23);
          CFRelease(v24);
          CFDictionaryAddValue(a1, @"PrivateKey042", v16);
          v25 = *(a3 + 16);
          if (!v25)
          {
            goto LABEL_14;
          }

          v26 = CFDataCreate(0, v25, 208);
          if (v26)
          {
            v27 = v26;
            CFDictionaryAddValue(a1, @"PrivateKey031", v26);
            CFRelease(v27);
LABEL_14:
            v28 = *(a3 + 8);
            if (v28)
            {
              v29 = CFDataCreate(0, v28, 22);
              if (v29)
              {
                v30 = v29;
                CFDictionaryAddValue(a1, @"PrivateKey030", v29);
                CFRelease(v30);
              }
            }
          }
        }
      }
    }
  }

LABEL_18:
  CFRelease(v16);
}

uint64_t sub_2773CD788(uint64_t a1, void *a2)
{
  v5 = &v6;
  v6 = a1;
  if (atomic_load_explicit(qword_280A711B8, memory_order_acquire) != -1)
  {
    v8 = &v5;
    v7 = &v8;
    std::__call_once(qword_280A711B8, &v7, sub_2773CD86C);
  }

  if (qword_280A711B0)
  {
    if (a2)
    {
      v3 = CFRetain(qword_280A711B0);
      result = 0;
      *a2 = v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("CFDictionaryCreate failed\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CFDictionaryCreate failed\n", v5);
    }

    return 4294954392;
  }

  return result;
}

void sub_2773CD86C()
{
  keys[1] = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x277CBECE8];
  v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("CFDictionaryCreate failed", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CFDictionaryCreate failed");
    }

    goto LABEL_24;
  }

  v3 = v2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("CFArrayCreate (CreateProfileLevelDict) failed!", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CFArrayCreate (CreateProfileLevelDict) failed!");
    }

    goto LABEL_23;
  }

  v5 = Mutable;
  v6 = MEMORY[0x277CE2990];
  v7 = 0x10u;
  do
  {
    CFArrayAppendValue(v5, *v6);
    v6 = *(&unk_27A716640 + v7);
    v7 += 16;
  }

  while (v7 != 96);
  v8 = *MEMORY[0x277CE29E8];
  values = v5;
  keys[0] = v8;
  v9 = CFDictionaryCreate(v1, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = dword_280B9A880 <= 2;
  }

  if (!v10)
  {
    fwrite("CFDictionaryCreate (CreateProfileLevelDict) failed!", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "CFDictionaryCreate (CreateProfileLevelDict) failed!");
    CFRelease(v5);
LABEL_23:
    CFRelease(v3);
LABEL_24:
    Copy = 0;
    goto LABEL_25;
  }

  v11 = v9;
  CFRelease(v5);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v12)
  {
    v13 = *(*(DerivedStorage + 1448) + 16);
    if (v13)
    {
      v14 = *MEMORY[0x277CE25D8];
      do
      {
        if (CFEqual(v13[2], v14))
        {
          v15 = v11;
        }

        else
        {
          v15 = v3;
        }

        CFDictionaryAddValue(v12, v13[2], v15);
        v13 = *v13;
      }

      while (v13);
    }

    Copy = CFDictionaryCreateCopy(v1, v12);
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("CFDictionaryCreate failed", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "CFDictionaryCreate failed");
    }

    Copy = 0;
  }

  CFRelease(v3);
  CFRelease(v11);
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_25:
  qword_280A711B0 = Copy;
}

uint64_t sub_2773CDB70()
{
  v65 = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sub_277468F14(*(DerivedStorage + 1288));
  if (*(DerivedStorage + 1216) == 1)
  {
    v1 = *(DerivedStorage + 1256);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 1256) = 0;
    }

    v2 = *(DerivedStorage + 1288);
    if (*(v2 + 424) == 1 && *(v2 + 248))
    {
      v3 = CC_MD5_Final(md, (v2 + 10920));
      v4 = *(v2 + 11012);
      v5 = v3 & v4;
      *(v2 + 11012) = v3 & v4;
      if ((v3 & v4) != 0)
      {
        sub_2773CC400(v58);
        v6 = v59;
        *(&v59 + *(v59 - 24) + 8) = *(&v59 + *(v59 - 24) + 8) & 0xFFFFFFB5 | 8;
        v7 = &v59 + *(v6 - 24);
        if (*(v7 + 36) == -1)
        {
          std::ios_base::getloc((&v59 + *(v6 - 24)));
          v8 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
          (v8->__vftable[2].~facet_0)(v8, 32);
          std::locale::~locale(&v56);
        }

        v9 = 0;
        *(v7 + 36) = 48;
        do
        {
          *(&v61[1].__locale_ + *(v59 - 24)) = 2;
          MEMORY[0x277CAD1F0](&v59, md[v9++]);
        }

        while (v9 != 16);
        std::stringbuf::str();
        if (dword_280B9A880 >= 6)
        {
          locale = &v56;
          if (v57 < 0)
          {
            locale = v56.__locale_;
          }

          fprintf(*(v2 + 248), "Stream MD5: %s\n", locale);
        }

        if (v57 >= 0)
        {
          v11 = &v56;
        }

        else
        {
          v11 = v56.__locale_;
        }

        *(DerivedStorage + 1256) = CFStringCreateWithCString(0, v11, 0x8000100u);
        if (v57 < 0)
        {
          operator delete(v56.__locale_);
        }

        v58[0] = *MEMORY[0x277D82818];
        v12 = *(MEMORY[0x277D82818] + 72);
        *(v58 + *(v58[0] - 24)) = *(MEMORY[0x277D82818] + 64);
        v59 = v12;
        v60 = MEMORY[0x277D82878] + 16;
        if (v62 < 0)
        {
          operator delete(v61[7].__locale_);
        }

        v60 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v61);
        std::iostream::~basic_iostream();
        MEMORY[0x277CAD300](&v63);
      }

      if (v5)
      {
        v13 = 1;
      }

      else
      {
        v13 = dword_280B9A880 < 3;
      }

      if (!v13)
      {
        fwrite("Error printing bitstream MD5\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Error printing bitstream MD5\n");
      }
    }

    v14 = *(DerivedStorage + 1288);
    v15 = *(v14 + 10464);
    v16 = *(v14 + 10468) + v15;
    v17 = *(v14 + 447) == 1 ? *(v14 + 472) : *(v14 + 10544) / v16;
    if (dword_280B9A880 >= 6)
    {
      v18 = *(v14 + 650);
      v19 = *(v14 + 466);
      v20 = *(v14 + 468);
      v21 = *(v14 + 10600);
      v22 = *(v14 + 10608);
      v23 = *(v14 + 10616);
      v24 = *(v14 + 248);
      fwrite("-----------------------------------------------------------------------------------------------------------\n", 0x6CuLL, 1uLL, v24);
      if (dword_280B9A880 >= 6)
      {
        fprintf(v24, "Total bits written: %llu, VPS/SPS/PPS bits: %u, NALU stream bits: %llu\n", 8 * (*(v14 + 10656) + *(v14 + 10664)), 8 * *(v14 + 10664), 8 * *(v14 + 10656));
        if (dword_280B9A880 >= 6)
        {
          LODWORD(v25) = *(v14 + 10464);
          fprintf(v24, "Avg {   PSNR[i]   }: Y = %6.2f, Cb = %6.2f, Cr = %6.2f\n", *(v14 + 10624) / v25, *(v14 + 10632) / v25, *(v14 + 10640) / v25);
          if (dword_280B9A880 >= 6)
          {
            v26 = (~(-1 << v18) * ~(-1 << v18)) * (v20 * v19) * v15;
            v27 = *(v14 + 10600);
            v28 = 999.0;
            v29 = 999.0;
            if (v27 > 0.0)
            {
              v29 = log10(v26 / v27) * 10.0;
            }

            v30 = v21 + v22;
            v31 = *(v14 + 10608);
            v32 = 999.0;
            if (v31 > 0.0)
            {
              v32 = log10(v26 * 0.25 / v31) * 10.0;
            }

            v33 = v30 + v23;
            v34 = *(v14 + 10616);
            v35 = 999.0;
            if (v34 > 0.0)
            {
              v35 = log10(v26 * 0.25 / v34) * 10.0;
            }

            if (v33 > 0.0)
            {
              v28 = log10(v26 * 1.5 / v33) * 10.0;
            }

            fprintf(v24, "PSNR{ Avg{MSE[i]} }: Y = %6.2f, Cb = %6.2f, Cr = %6.2f, Total = %6.2f\n", v29, v32, v35, v28);
            if (dword_280B9A880 >= 6)
            {
              fprintf(v24, "NALU stream bitrate (including SPS/PPS): %6.2f kbps @ %.2f fps\n", v17 * (8 * (*(v14 + 10656) + *(v14 + 10664))) / (v16 * 1000.0), v17 * *(v14 + 10464) / v16);
              if (dword_280B9A880 >= 6)
              {
                fwrite("-----------------------------------------------------------------------------------------------------------\n", 0x6CuLL, 1uLL, v24);
                if (dword_280B9A880 >= 6)
                {
                  fprintf(v24, "Frame(s) encoded/dropped/reencoded %u/%u/%u\n", *(v14 + 10464), *(v14 + 10468), *(v14 + 10480));
                  if (dword_280B9A880 >= 6)
                  {
                    fprintf(v24, "Frame(s) dropped: before encoding/after encoding/after reencoding %u/%u/%u\n", *(v14 + 10476), *(v14 + 10472), *(v14 + 10484));
                    if (dword_280B9A880 >= 6)
                    {
                      LODWORD(v36) = *(v14 + 10464);
                      fprintf(v24, "Resolution: min/avg/max %ux%u/%ux%u/%ux%u\n", *(v14 + 10512), *(v14 + 10516), (*(v14 + 10496) / v36), (*(v14 + 10504) / v36), *(v14 + 10520), *(v14 + 10524));
                      if (dword_280B9A880 >= 6)
                      {
                        LODWORD(v37) = *(v14 + 10464);
                        fprintf(v24, "Frame rate: min/avg/max %.2f/%.2f/%.2f\n", *(v14 + 10552), *(v14 + 10544) / v37, *(v14 + 10560));
                        if (dword_280B9A880 >= 6)
                        {
                          LODWORD(v38) = *(v14 + 10464);
                          fprintf(v24, "Frame QP: min/avg/max %.2f/%.2f/%.2f\n", *(v14 + 10536), *(v14 + 10528) / v38, *(v14 + 10540));
                          if (dword_280B9A880 >= 6)
                          {
                            LODWORD(v39) = *(v14 + 10464);
                            fprintf(v24, "Transmission buffer delay: min/avg/max %.2f/%.2f/%.2f ms\n", *(v14 + 10576), *(v14 + 10568) / v39, *(v14 + 10580));
                            if (dword_280B9A880 >= 6)
                            {
                              v40 = *(v14 + 10464);
                              v41 = -1.0;
                              v42 = -1.0;
                              if (v40 >= 0xB)
                              {
                                v41 = *(v14 + 10584) / (v40 - 10);
                                v42 = *(v14 + 10596);
                              }

                              fprintf(v24, "After first ten frames: avg/max %.2f/%.2f ms\n", v41, v42);
                              if (dword_280B9A880 >= 6)
                              {
                                LODWORD(v43) = *(v14 + 10488);
                                v44 = *(v14 + 10492);
                                v45 = 1.0 / v43;
                                if (v44 == -1)
                                {
                                  v44 = *(v14 + 10464);
                                }

                                fprintf(v24, "VRA stability score: %.2f, min number of frames stayed at one resolution: %d\n", v45, v44);
                                v47 = dword_280B9A880;
                                v48 = *(v14 + 456);
                                if (!v48 && dword_280B9A880 >= 7)
                                {
                                  fwrite("Avg frame bytes by type:\n", 0x19uLL, 1uLL, v24);
                                  v49 = 0;
                                  v50 = v14 + 10720;
                                  v51 = dword_280B9A880;
                                  do
                                  {
                                    if (v51 >= 6)
                                    {
                                      v52 = *(v50 + 4 * v49);
                                      if (v52)
                                      {
                                        v53 = *(v50 + 8 * v49 - 48) / v52;
                                      }

                                      else
                                      {
                                        v53 = 0;
                                      }

                                      fprintf(v24, "    %llu", v53);
                                      v51 = dword_280B9A880;
                                    }

                                    ++v49;
                                  }

                                  while (v49 != 6);
                                  if (v51 <= 5)
                                  {
                                    return 0;
                                  }

                                  fputc(10, v24);
                                  v47 = dword_280B9A880;
                                  v48 = *(v14 + 456);
                                }

                                if (!v48 && v47 > 6)
                                {
                                  v54 = *(v14 + 10400);
                                  if (!v54)
                                  {
LABEL_73:
                                    fwrite("-----------------------------------------------------------------------------------------------------------\n", 0x6CuLL, 1uLL, v24);
                                    return 0;
                                  }

                                  LODWORD(v46) = *(v54 + 1712);
                                  fprintf(v24, "bps (encoded, target, error): (%.0f, %.0f, %.3f)\n", v17 * (8 * (*(v14 + 10656) + *(v14 + 10664))) / v16, v46, (v17 * (8 * (*(v14 + 10656) + *(v14 + 10664))) / v16 - v46) / v46);
                                  v47 = dword_280B9A880;
                                }

                                if (v47 >= 6)
                                {
                                  goto LABEL_73;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_2773CE4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2773CCA54(&a15);
  MEMORY[0x277CAD300](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2773CE550(uint64_t a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = 0uLL;
  v9 = operator new(0x320uLL, MEMORY[0x277D826F0]);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_83;
  }

  bzero(v9 + 88, 0x2C8uLL);
  *(v10 + 96) = 0x186A0000280A0;
  *(v10 + 120) = 0x403E000000000000;
  *(v10 + 460) = 0;
  *(v10 + 452) = 0;
  *(v10 + 468) = 0;
  *(v10 + 356) = 1;
  *(v10 + 436) = 0;
  *(v10 + 444) = 0;
  *(v10 + 428) = 0;
  *(v10 + 660) = -1;
  *(v10 + 500) = 0u;
  *(v10 + 516) = 0u;
  *(v10 + 532) = 0u;
  *(v10 + 548) = 0u;
  *(v10 + 564) = 0u;
  *(v10 + 580) = 0u;
  *(v10 + 596) = 0u;
  *(v10 + 612) = 0u;
  *(v10 + 628) = 0u;
  *(v10 + 644) = 0u;
  *(v10 + 664) = 0u;
  *(v10 + 680) = 0u;
  *(v10 + 284) = -1;
  if (!a3)
  {
    goto LABEL_83;
  }

  *v10 = a2;
  *(v10 + 648) = 0;
  *(v10 + 656) = 0xFFFFFFFF00000000;
  *(v10 + 500) = 0uLL;
  *(v10 + 516) = 0uLL;
  *(v10 + 532) = 0uLL;
  *(v10 + 548) = 0uLL;
  *(v10 + 564) = 0uLL;
  *(v10 + 580) = 0uLL;
  *(v10 + 596) = 0uLL;
  *(v10 + 612) = 0uLL;
  *(v10 + 628) = 0uLL;
  *(v10 + 672) = 0;
  *(v10 + 688) = 0;
  *(v10 + 680) = 0;
  *(v10 + 664) = 0x3FF0000000000000;
  Attachment = CVBufferGetAttachment(a3, @"FrameIndex", 0);
  value.value = Attachment;
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberIntType, (v10 + 660));
  }

  Attachments = CVBufferGetAttachments(a3, kCVAttachmentMode_ShouldPropagate);
  v13 = Attachments;
  if (Attachments)
  {
    v14 = *MEMORY[0x277CF3F70];
    if (CFDictionaryContainsKey(Attachments, *MEMORY[0x277CF3F70]))
    {
      v13 = CFDictionaryGetValue(v13, v14);
      v15 = CFDictionaryGetValue(v13, *MEMORY[0x277CF6920]);
      v16 = v15;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v16);
          v19 = Count >= 5 ? 5 : Count;
          *(v10 + 640) = v19;
          if (Count)
          {
            v20 = 0;
            v21 = *MEMORY[0x277CF6928];
            v48 = *MEMORY[0x277CF6940];
            key = *MEMORY[0x277CF6938];
            v52 = *MEMORY[0x277CF6930];
            v22 = (v10 + 504);
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v16, v20);
              v24 = ValueAtIndex;
              if (ValueAtIndex)
              {
                v25 = CFGetTypeID(ValueAtIndex);
                if (v25 == CFDictionaryGetTypeID())
                {
                  if (CFDictionaryGetValueIfPresent(v24, v21, &value))
                  {
                    CFNumberGetValue(value.value, kCFNumberSInt32Type, &v22[-1].u64[1] + 4);
                  }

                  if (!v20)
                  {
                    if (CFDictionaryGetValueIfPresent(v24, key, &value))
                    {
                      CFNumberGetValue(value.value, kCFNumberSInt32Type, (v10 + 520));
                    }

                    if (CFDictionaryGetValueIfPresent(v24, v48, &value))
                    {
                      CFNumberGetValue(value.value, kCFNumberSInt32Type, (v10 + 524));
                    }
                  }

                  if (CFDictionaryGetValueIfPresent(v24, v52, &value) && CGRectMakeWithDictionaryRepresentation(value.value, &rect))
                  {
                    *v22 = vcvt_hight_f32_f64(vcvt_f32_f64(rect.origin), rect.size);
                  }
                }
              }

              ++v20;
              v22 = (v22 + 28);
            }

            while (v20 < *(v10 + 640));
          }
        }
      }
    }
  }

  number.value = 0;
  *(v10 + 720) = 0u;
  valuePtr = 0;
  *(v10 + 744) = 0;
  *(v10 + 752) = 0;
  *(v10 + 736) = 0;
  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF4C58], &number))
  {
    CFNumberGetValue(number.value, kCFNumberDoubleType, (v10 + 720));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF4970], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 728));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF5360], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 732));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF4900], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, &valuePtr);
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF49D8], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 744));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF49B0], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 748));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF4978], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 752));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF5340], &number))
  {
    CFNumberGetValue(number.value, kCFNumberIntType, (v10 + 736));
  }

  if (CFDictionaryGetValueIfPresent(v13, *MEMORY[0x277CF4FF0], &number))
  {
    CFNumberGetValue(number.value, kCFNumberDoubleType, (v10 + 760));
  }

  *(v10 + 40) = *a4;
  v26 = *(a4 + 16);
  *(v10 + 56) = v26;
  *(v10 + 16) = *a5;
  v27 = *(a5 + 16);
  *(v10 + 32) = v27;
  v28 = *a4;
  v29 = *(a4 + 8);
  v30 = *(a4 + 12);
  v53 = *a5;
  v31 = *(a5 + 8);
  v32 = *(a5 + 12);
  v33 = *(DerivedStorage + 1308);
  *(v10 + 776) = *a4;
  *(v10 + 792) = v29;
  keya = v31;
  if ((v32 & 0x1D) == 1 && (*&rect.origin.x = v53, *&rect.origin.y = __PAIR64__(v32, v31), rect.size.width = v27, value = **&MEMORY[0x277CC08F0], v34 = CMTimeCompare(&rect, &value), v31 = keya, v34 >= 1))
  {
    *&rect.origin.x = v53;
    *&rect.origin.y = __PAIR64__(v32, keya);
    rect.size.width = v27;
    Seconds = CMTimeGetSeconds(&rect);
  }

  else
  {
    if (v33 < 1 || (v30 & 0x1D) != 1 || (rect.origin.x = v28, *&rect.origin.y = __PAIR64__(v30, v29), rect.size.width = v26, value = **&MEMORY[0x277CC08F0], v36 = CMTimeCompare(&rect, &value), v31 = keya, v36 < 1))
    {
      v37 = 1.0 / *(v10 + 120);
      goto LABEL_56;
    }

    *&value.value = v28;
    value.timescale = v29;
    value.flags = v30;
    *&value.epoch = v26;
    number = *(DerivedStorage + 1352);
    CMTimeSubtract(&rect, &value, &number);
    Seconds = CMTimeGetSeconds(&rect);
  }

  v37 = Seconds;
  v31 = keya;
LABEL_56:
  v38 = 0;
  v39 = 0;
  *(DerivedStorage + 1400 + 8 * (v33 % 5)) = v37;
  v40 = 0.0;
  v41 = v33;
  do
  {
    if (v33 + v38 >= 0)
    {
      ++v39;
      v40 = v40 + *(DerivedStorage + 1400 + 8 * (v38 + v33 - 5 * (v41 / 5)));
    }

    --v38;
    --v41;
  }

  while (v38 != -5);
  if (v40 <= 0.0)
  {
    v42 = *(v10 + 120);
  }

  else
  {
    v42 = v39 / v40;
    *(v10 + 120) = v42;
  }

  *(DerivedStorage + 1352) = v28;
  *(DerivedStorage + 1360) = v29;
  *(DerivedStorage + 1364) = v30;
  *(DerivedStorage + 1368) = v26;
  *(DerivedStorage + 1376) = v53;
  *(DerivedStorage + 1384) = v31;
  *(DerivedStorage + 1388) = v32;
  *(DerivedStorage + 1392) = v27;
  if (*(DerivedStorage + 1344) != v42)
  {
    if (dword_280B9A880 >= 6)
    {
      fprintf(*MEMORY[0x277D85DF8], "Update framerate %.2f -> %.2f\n", *(DerivedStorage + 1344), v42);
      syslog(30, "Update framerate %.2f -> %.2f\n", *(DerivedStorage + 1344), *(v10 + 120));
      v42 = *(v10 + 120);
      v31 = keya;
    }

    *(DerivedStorage + 1344) = v42;
  }

  if ((v30 & 0x1D) == 1)
  {
    *(v10 + 776) = v28;
    *(v10 + 792) = v29;
    if ((v32 & 0x1D) == 1)
    {
      if (v29 == v31)
      {
        v43 = v53;
LABEL_77:
        *(v10 + 784) = v43;
        goto LABEL_78;
      }

      v45 = v29 / v31 * v53;
    }

    else
    {
      v45 = v37 * v29;
    }

    v43 = (v45 + 0.5);
    goto LABEL_77;
  }

  if (v42 > 0.0)
  {
    v44 = (3000.0 / v42 * v33);
    *(v10 + 776) = v44;
    *(v10 + 784) = (3000.0 / v42 * (v33 + 1)) - v44;
    *(v10 + 792) = (v42 * (3000.0 / v42 + 0.5) + 0.5);
  }

LABEL_78:
  if ((*(DerivedStorage + 1313) & 1) == 0 && sub_2773C6258(DerivedStorage))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Init failed\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Init failed\n");
    }

    goto LABEL_83;
  }

  if (sub_27747077C(*(DerivedStorage + 1288)))
  {
LABEL_83:
    VTEncoderSessionEmitEncodedFrame();
    if (v10)
    {
      sub_27743F764((v10 + 88));
      MEMORY[0x277CAD370](v10, 0x1070C40040150F9);
    }

    goto LABEL_85;
  }

  if (sub_2773CB058(DerivedStorage, &v57, v10, a6))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Setup failed\n", 0xDuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Setup failed\n");
    }

    goto LABEL_83;
  }

  rect.origin = *a4;
  rect.size.width = *(a4 + 16);
  VTEncoderSessionEnqueuePresentationTimeStamp();
  v47 = *(DerivedStorage + 1288);
  v56 = v57;
  if (*(&v57 + 1))
  {
    atomic_fetch_add_explicit((*(&v57 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_27747086C(v47, &v56, v10, v10 + 88);
  if (*(&v56 + 1))
  {
    sub_2773CC26C(*(&v56 + 1));
  }

LABEL_85:
  if (*(&v57 + 1))
  {
    sub_2773CC26C(*(&v57 + 1));
  }

  return 0;
}

void sub_2773CEF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19)
  {
    sub_2773CC26C(a19);
  }

  if (a21)
  {
    sub_2773CC26C(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2773CEF44(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1264) = a2;
  *(DerivedStorage + 1300) = v5;
  *(DerivedStorage + 1304) = v7;
  if (a4)
  {
    *(DerivedStorage + 1320) = CFRetain(a4);
  }

  v9 = sub_2773F6B94(v5, v7, *(DerivedStorage + 8));
  if (v9)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Error setting buffer attributes\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Error setting buffer attributes\n");
    }
  }

  else
  {
    v10 = *(DerivedStorage + 1288);
    *(v10 + 10448) = sub_2773CF024;
    *(v10 + 10456) = DerivedStorage;
  }

  return v9;
}

uint64_t sub_2773CF024(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5, _BYTE *a6, uint64_t a7)
{
  cf = 0;
  VTEncoderSessionDequeueDecodeTimeStamp();
  if (!a3 && a4 && a5)
  {
    v14 = *(a1 + 1288);
    if (*(v14 + 424) == 1)
    {
      *(v14 + 11012) &= CC_MD5_Update((v14 + 10920), a4, a5);
    }

    sub_2773CCED8(a1, a4, a5, (a2 + 16), a7, a6, a2, &cf);
  }

  VTEncoderSessionEmitEncodedFrame();
  if (cf)
  {
    CFRelease(cf);
  }

  sub_27743F764((a2 + 88));
  return MEMORY[0x277CAD370](a2, 0x1070C40040150F9);
}

uint64_t sub_2773CF15C(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = a2;
  v6 = *(DerivedStorage + 1208);
  if (v6)
  {
    if (CFEqual(v6, @"debug") && dword_280B9A880 >= 4)
    {
      v8 = *MEMORY[0x277D85DF8];
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      fprintf(v8, "SetProperty: %s\n", CStringPtr);
      v10 = CFStringGetCStringPtr(a2, 0x8000100u);
      syslog(28, "SetProperty: %s\n", v10);
    }
  }

  if (!sub_2773C5B90(*(DerivedStorage + 1448), &v53))
  {
    if (dword_280B9A880 >= 3)
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = "unrecognised property key";
      v13 = "unrecognised property key";
      v14 = 25;
      goto LABEL_29;
    }

    return 4294954396;
  }

  if (*(DerivedStorage + 1272))
  {
    if ((CFEqual(a2, *MEMORY[0x277CE2500]) || CFEqual(a2, *MEMORY[0x277CE2508])) && !CFEqual(a3, *MEMORY[0x277CBED10]))
    {
      if (dword_280B9A880 >= 3)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = "Setting FrameReordering or TemporalCompression for tiles isn't supported\n";
        v13 = "Setting FrameReordering or TemporalCompression for tiles isn't supported\n";
        v14 = 73;
        goto LABEL_29;
      }

      return 4294954396;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2518]))
    {
      if (dword_280B9A880 >= 3)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = "Bitrate control for tile sessions isn't supported\n";
        v13 = "Bitrate control for tile sessions isn't supported\n";
        v14 = 50;
LABEL_29:
        fwrite(v13, v14, 1uLL, v11);
        syslog(27, v12);
        return 4294954396;
      }

      return 4294954396;
    }
  }

  if (CFEqual(a2, @"InitialQP") || CFEqual(a2, @"InitialQPI"))
  {
    *(DerivedStorage + 156) = 1;
  }

  if (CFEqual(a2, *MEMORY[0x277CE25D8]))
  {
    if (!a3)
    {
      v30 = 0;
LABEL_56:
      *(DerivedStorage + 8) = v30;
      if (*DerivedStorage)
      {
        CFRelease(*DerivedStorage);
      }

      *DerivedStorage = 0;
      if (a3)
      {
        *DerivedStorage = CFRetain(a3);
      }

      if (*(DerivedStorage + 1272))
      {
        v39 = sub_2773F7380(*(DerivedStorage + 8));
      }

      else
      {
        v39 = sub_2773F6B94(*(DerivedStorage + 1300), *(DerivedStorage + 1304), *(DerivedStorage + 8));
      }

      v20 = v39;
      if (v39 && dword_280B9A880 >= 3)
      {
        fwrite("Error updating pixel format requirements for requested profile\n", 0x3FuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Error updating pixel format requirements for requested profile\n");
      }

      return v20;
    }

    v15 = CFGetTypeID(a3);
    if (v15 == CFStringGetTypeID())
    {
      v16 = MEMORY[0x277CE2990];
      v17 = &unk_27A716640;
      v18 = 5;
      while (!CFEqual(a3, *v16))
      {
        v19 = v17[2];
        v17 += 2;
        v16 = v19;
        if (!--v18)
        {
          goto LABEL_62;
        }
      }

      v30 = *(v17 + 2);
      if (v30)
      {
        goto LABEL_56;
      }

LABEL_62:
      if (dword_280B9A880 >= 3)
      {
        v40 = *MEMORY[0x277D85DF8];
        v41 = CFStringGetCStringPtr(a3, 0x8000100u);
        fprintf(v40, "Unsupported profile %s\n", v41);
        CFStringGetCStringPtr(a3, 0x8000100u);
        syslog(27, "Unsupported profile %s\n");
      }

      return 4294954394;
    }

    if (dword_280B9A880 < 3)
    {
      return 4294954394;
    }

    v31 = *MEMORY[0x277D85DF8];
    v32 = "Profile argument not a string\n";
    v33 = "Profile argument not a string\n";
    v34 = 30;
LABEL_46:
    fwrite(v33, v34, 1uLL, v31);
    syslog(27, v32, v52);
    return 4294954394;
  }

  v22 = *MEMORY[0x277CE25C0];
  if (CFEqual(a2, *MEMORY[0x277CE25C0]))
  {
    if ((atomic_load_explicit(&qword_280A71178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71178))
    {
      qword_280A71170 = v22;
      __cxa_guard_release(&qword_280A71178);
    }

    v23 = sub_2773C5B90(*(DerivedStorage + 1448), &qword_280A71170);
    if (v23)
    {
      v24 = v23[4];
      v25 = sub_2773C5B90(*(DerivedStorage + 1448), &qword_280A71170);
      if (v25)
      {
        v26 = v25[3];
        if (v26 != CFDictionaryGetTypeID())
        {
          v20 = 4294954385;
          goto LABEL_100;
        }

        if (!a3)
        {
          v29 = *v24;
          if (*v24)
          {
            CFRelease(v29);
            v29 = 0;
          }

LABEL_78:
          *v24 = v29;
          v20 = *(DerivedStorage + 56);
          if (!v20)
          {
LABEL_103:
            *(DerivedStorage + 64) = 0x100000001;
            return v20;
          }

          Value = CFDictionaryGetValue(*(DerivedStorage + 56), *MEMORY[0x277CC4CA8]);
          v43 = CFDictionaryGetValue(v20, *MEMORY[0x277CC4CB8]);
          if (Value)
          {
            v44 = v43;
            TypeID = CFNumberGetTypeID();
            if (TypeID == CFGetTypeID(Value))
            {
              if (v44)
              {
                v46 = CFNumberGetTypeID();
                if (v46 == CFGetTypeID(v44))
                {
                  valuePtr = 0;
                  v47 = CFGetTypeID(Value);
                  if (v47 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
                  }

                  v48 = CFGetTypeID(v44);
                  if (v48 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v44, kCFNumberIntType, &valuePtr);
                    if (SHIDWORD(valuePtr) >= 1)
                    {
                      v49 = valuePtr;
                      if (valuePtr >= 1)
                      {
                        v50 = HIDWORD(valuePtr);
                        v51 = valuePtr;
                        do
                        {
                          if (v50 <= v51)
                          {
                            v51 %= v50;
                          }

                          else
                          {
                            v50 %= v51;
                          }
                        }

                        while (v50 && v51);
                        v20 = 0;
                        if (!v50)
                        {
                          v50 = v51;
                        }

                        *(DerivedStorage + 64) = SHIDWORD(valuePtr) / v50;
                        *(DerivedStorage + 68) = v49 / v50;
                        return v20;
                      }
                    }
                  }
                }
              }
            }
          }

          if (dword_280B9A880 >= 3)
          {
            fwrite("Bad PASP\n", 9uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Bad PASP\n");
          }

          v20 = 4294954394;
LABEL_100:
          if (*v24)
          {
            CFRelease(*v24);
          }

          *v24 = 0;
          goto LABEL_103;
        }

        v27 = sub_2773C5B90(*(DerivedStorage + 1448), &qword_280A71170);
        if (v27)
        {
          v28 = v27[3];
          if (v28 != CFGetTypeID(a3))
          {
            if (dword_280B9A880 < 3)
            {
              return 4294954394;
            }

            v31 = *MEMORY[0x277D85DF8];
            v32 = "(PASP): bad\n";
            v33 = "(PASP): bad\n";
            v34 = 12;
            goto LABEL_46;
          }

          if (*v24)
          {
            CFRelease(*v24);
          }

          v29 = CFRetain(a3);
          goto LABEL_78;
        }
      }
    }

LABEL_106:
    sub_2773C5C8C();
  }

  if (CFEqual(a2, @"NegotiationDetails"))
  {
    v35 = sub_2773C5B90(*(DerivedStorage + 1448), &off_27A7166A0);
    if (!v35)
    {
      goto LABEL_106;
    }

    v36 = v35[4];
    v37 = sub_2773C5B90(*(DerivedStorage + 1448), &off_27A7166A0);
    if (!v37)
    {
      goto LABEL_106;
    }

    v38 = v37[3];
    if (v38 == CFStringGetTypeID())
    {
      v20 = sub_2773C5940(DerivedStorage, @"NegotiationDetails", a3);
      if (v20)
      {
LABEL_73:
        if (v36)
        {
          CFRelease(v36);
        }

        bzero((DerivedStorage + 192), 0x3E9uLL);
        return v20;
      }

      if (CFStringGetCString(v36, (DerivedStorage + 192), 1001, 0))
      {
        return 0;
      }
    }

    v20 = 4294954385;
    goto LABEL_73;
  }

  return sub_2773C5940(DerivedStorage, a2, a3);
}

uint64_t sub_2773CF894(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = a2;
  v7 = *(DerivedStorage + 1208);
  if (v7)
  {
    if (CFEqual(v7, @"debug") && dword_280B9A880 >= 4)
    {
      v9 = *MEMORY[0x277D85DF8];
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      fprintf(v9, "CopyProperty: %s\n", CStringPtr);
      v11 = CFStringGetCStringPtr(a2, 0x8000100u);
      syslog(28, "CopyProperty: %s\n", v11);
    }
  }

  if (sub_2773C5B90(*(DerivedStorage + 1448), &v16))
  {
    v12 = *MEMORY[0x277CE25C0];
    if (CFEqual(a2, *MEMORY[0x277CE25C0]))
    {
      if ((atomic_load_explicit(&qword_280A71188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71188))
      {
        qword_280A71180 = v12;
        __cxa_guard_release(&qword_280A71188);
      }

      *a4 = 0;
      if (*(DerivedStorage + 64) == 1 && *(DerivedStorage + 68) == 1)
      {
        return 0;
      }

      v14 = qword_280A71180;
      v15 = DerivedStorage;
    }

    else
    {
      v15 = DerivedStorage;
      v14 = a2;
    }

    return sub_2773C5D1C(v15, v14, a4);
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("unrecognised property key", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "unrecognised property key");
    }

    return 4294954396;
  }
}

__CFString *sub_2773CFA64(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<LRPVideoEncoder %p>", a1);
  return Mutable;
}

void sub_2773CFABC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*(DerivedStorage + 1312))
    {
      v1 = CMBaseObjectGetDerivedStorage();
      if (v1)
      {

        sub_2773C527C(v1);
      }
    }
  }
}

uint64_t sub_2773CFB14()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    sub_2773C527C(DerivedStorage);
  }

  return 0;
}

uint64_t sub_2773CFB3C(uint64_t a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer)
{
  v18[2] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v7 = CVPixelBufferGetPixelFormatType(a2);
  v8 = v7;
  if (v7 != 1278226736 && v7 != 2016686640 && v7 != 2019963440)
  {
    CVBufferGetAttachment(a2, @"VPImageBufferLSBAligned", 0);
    return 4294954394;
  }

  Attachment = CVBufferGetAttachment(a2, @"VPImageBufferLSBAligned", 0);
  if (PixelFormatType != 875704422 && PixelFormatType != 1278226488 && PixelFormatType != 875704438)
  {
    return 4294954394;
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  Width = CVPixelBufferGetWidth(a2);
  v11 = CVPixelBufferGetWidth(pixelBuffer);
  if (v11 < Width)
  {
    Width = v11;
  }

  Height = CVPixelBufferGetHeight(a2);
  v13 = CVPixelBufferGetHeight(pixelBuffer);
  if (v13 < Height)
  {
    Height = v13;
  }

  v18[0] = CVPixelBufferGetBytesPerRowOfPlane(a2, 0) >> 1;
  v18[1] = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL) >> 1;
  v17[0] = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v17[1] = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v16[0] = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v16[1] = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v15[0] = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v15[1] = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (v8 == 1278226736 || PixelFormatType == 1278226488)
  {
    sub_2773CFDD0(Width, Height, Attachment != 0, v18, v17, v16, v15, a1);
  }

  else
  {
    (*(a1 + 8))(Width, Height, Attachment != 0, v18, v17, v16, v15, a1);
  }

  *a1 &= 0xFFFu;
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return 0;
}

size_t sub_2773CFDD0(size_t __len, unint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, size_t *a7, int *a8)
{
  v10 = __len;
  v11 = *a8;
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 6;
  }

  v13 = a2 >> 1;
  if (a5[1])
  {
    if (a2 >= 2)
    {
      v14 = 0;
      v15 = v11 + a2 * __len;
      v16 = *a8;
      do
      {
        v17 = v15 & 0xFFF;
        if (v10)
        {
          v18 = 0;
          v19 = *a7;
          do
          {
            v20 = *(*a5 + 2 * v18) >> v12;
            if (v20 <= 0x43)
            {
              v21 = &unk_27753B35B;
            }

            else
            {
              v21 = &unk_27753A354;
            }

            v22 = (v20 + v21[v16]) >> 2;
            if (v22 >= 0xFF)
            {
              v23 = -1;
            }

            else
            {
              v23 = v22;
            }

            if (v22 <= 0)
            {
              v24 = 0;
            }

            else
            {
              v24 = v23;
            }

            *(v19 + v18) = v24;
            v25 = *(a5[1] + 2 * v18) >> v12;
            if (*(*a7 + v18) < 0x12u)
            {
              goto LABEL_22;
            }

            v26 = 512 - v25;
            if (v25 - 512 >= 0)
            {
              v26 = v25 - 512;
            }

            v27 = &unk_27753A354;
            if (v26 <= 3)
            {
LABEL_22:
              v27 = &unk_27753B35B;
            }

            v16 = (v16 + 1) & 0xFFF;
            v28 = (v25 + v27[v17]) >> 2;
            if (v28 >= 0xFF)
            {
              v29 = -1;
            }

            else
            {
              v29 = v28;
            }

            if (v28 <= 0)
            {
              v30 = 0;
            }

            else
            {
              v30 = v29;
            }

            *(a7[1] + v18) = v30;
            v19 = *a7;
            *a8 += (*(a7[1] + v18) & 1) + (*(*a7 + v18) & 1);
            ++v18;
            v17 = (v17 + 1) & 0xFFF;
          }

          while (v10 != v18);
        }

        v31 = *a4;
        *a5 += 2 * *a4;
        v32 = *a6;
        v33 = *a7 + *a6;
        *a7 = v33;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v35 = *(*a5 + 2 * i) >> v12;
            if (v35 <= 0x43)
            {
              v36 = &unk_27753B35B;
            }

            else
            {
              v36 = &unk_27753A354;
            }

            v37 = (v35 + v36[v16]) >> 2;
            v16 = (v16 + 1) & 0xFFF;
            if (v37 >= 0xFF)
            {
              v38 = -1;
            }

            else
            {
              v38 = v37;
            }

            if (v37 <= 0)
            {
              v39 = 0;
            }

            else
            {
              v39 = v38;
            }

            *(v33 + i) = v39;
            v33 = *a7;
            *a8 += *(*a7 + i) & 1;
          }

          v31 = *a4;
          v32 = *a6;
        }

        v40 = dword_277536338[(v11 + v14) & 0xFFF];
        v41 = v40 + v16;
        v15 = v40 + v17;
        v42 = *a5 + 2 * v31;
        v43 = a5[1] + 2 * a4[1];
        v16 = v41 & 0xFFF;
        ++v14;
        *a5 = v42;
        a5[1] = v43;
        __len = *a7 + v32;
        v44 = a7[1] + a6[1];
        *a7 = __len;
        a7[1] = v44;
      }

      while (v14 != v13);
    }
  }

  else if (a2 >= 2)
  {
    v45 = 0;
    v46 = *a8;
    do
    {
      if (v10)
      {
        v47 = 0;
        v48 = *a7;
        do
        {
          v49 = *(*a5 + 2 * v47) >> v12;
          if (v49 <= 0x43)
          {
            v50 = &unk_27753B35B;
          }

          else
          {
            v50 = &unk_27753A354;
          }

          v51 = (v49 + v50[v46]) >> 2;
          v46 = (v46 + 1) & 0xFFF;
          if (v51 >= 0xFF)
          {
            v52 = -1;
          }

          else
          {
            v52 = v51;
          }

          if (v51 <= 0)
          {
            v53 = 0;
          }

          else
          {
            v53 = v52;
          }

          *(v48 + v47) = v53;
          v48 = *a7;
          *a8 += *(*a7 + v47++) & 1;
        }

        while (v10 != v47);
      }

      v54 = *a4;
      *a5 += 2 * *a4;
      v55 = *a6;
      v56 = *a7 + *a6;
      *a7 = v56;
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          v58 = *(*a5 + 2 * j) >> v12;
          if (v58 <= 0x43)
          {
            v59 = &unk_27753B35B;
          }

          else
          {
            v59 = &unk_27753A354;
          }

          v60 = (v58 + v59[v46]) >> 2;
          v46 = (v46 + 1) & 0xFFF;
          if (v60 >= 0xFF)
          {
            v61 = -1;
          }

          else
          {
            v61 = v60;
          }

          if (v60 <= 0)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61;
          }

          *(v56 + j) = v62;
          v56 = *a7;
          *a8 += *(*a7 + j) & 1;
        }

        v54 = *a4;
        v55 = *a6;
      }

      v46 = (dword_277536338[(v11 + v45++) & 0xFFF] + v46) & 0xFFF;
      *a5 += 2 * v54;
      *a7 += v55;
    }

    while (v45 != v13);
    __len = a7[1];
    if (__len)
    {
      do
      {
        memset(__len, 128, v10);
        __len = a7[1] + a6[1];
        a7[1] = __len;
        --v13;
      }

      while (v13);
    }
  }

  return __len;
}

uint64_t sub_2773D019C(char *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = &a1[a5];
  }

  else
  {
    v10 = (a2 + 2);
    bzero(a1, v10);
    a1[v10] = 1;
    v9 = &a1[v10 + 1];
  }

  *v9 = *a3;
  v11 = (a3 + 2);
  v12 = (v9 + 2);
  v9[1] = a3[1];
  v13 = a4 - 2;
  if ((a4 - 2) < 0x10)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v14 = *v11;
    *v12 = *v11;
    if (!vaddvq_s32(vceqzq_s8(v14)))
    {
      ++v12;
      ++v11;
      v13 -= 16;
      goto LABEL_21;
    }

    v15 = 0;
      ;
    }

    v12 = (v12 + v15);
    v17 = v13 - v15;
    if (!v17)
    {
      break;
    }

    v18 = &v11->u8[v15];
    v19 = 1;
    while (v19 != 2)
    {
      v19 = 2;
LABEL_14:
      v21 = *v18;
      v12->i8[0] = v21;
      v12 = (v12 + 1);
      if (v21)
      {
        v11 = (v18 + 1);
        goto LABEL_20;
      }

      ++v18;
      if (!--v17)
      {
        goto LABEL_32;
      }
    }

    v20 = *v18;
    if (v20 < 4)
    {
      v12->i8[0] = 3;
      v12 = (v12 + 1);
      v19 = 1;
      goto LABEL_14;
    }

    v11 = (v18 + 1);
    v12->i8[0] = v20;
    v12 = (v12 + 1);
LABEL_20:
    v13 = v17 - 1;
LABEL_21:
    if (v13 <= 0xF)
    {
LABEL_22:
      if (v13)
      {
        v22 = 0;
        do
        {
          v23 = v11->u8[0];
          if (v22 == 2)
          {
            if (v23 > 3)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
              v12->i8[0] = 3;
              v12 = (v12 + 1);
              v23 = v11->u8[0];
            }
          }

          if (v23)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v11 = (v11 + 1);
          v12->i8[0] = v23;
          v12 = (v12 + 1);
          --v13;
        }

        while (v13);
      }

      break;
    }
  }

LABEL_32:
  if (a5)
  {
    v24 = v12 - (a1 + a5);
    switch(a5)
    {
      case 4:
        *a1 = bswap32(v24);
        break;
      case 2:
        *a1 = bswap32(v24) >> 16;
        break;
      case 1:
        *a1 = v24;
        break;
    }
  }

  return v12 - a1;
}