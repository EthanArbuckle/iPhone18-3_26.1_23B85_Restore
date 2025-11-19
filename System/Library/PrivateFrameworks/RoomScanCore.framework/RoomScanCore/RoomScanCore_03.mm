void sub_2621F4C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _Unwind_Exception *exception_object, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, unsigned int a55)
{
  sub_2621CD534(&a55);

  _Unwind_Resume(a1);
}

uint64_t sub_2621F5A14()
{
  v0 = @"fp_earlyout_windowDoorDetect";
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v1, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"fp_earlyout_windowDoorDetect");

  return v5;
}

void sub_2621F5E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2621F5F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    v66 = v3;
    v5 = v3;
    if (v4)
    {
      v84 = 4992;
      v85 = 0;
      kdebug_trace();
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v8 = objc_msgSend_depthBuffer(v5, v6, v7);
      Width = CVPixelBufferGetWidth(v8);
      v12 = objc_msgSend_depthBuffer(v5, v10, v11);
      Height = CVPixelBufferGetHeight(v12);
      if (Height * Width)
      {
        sub_2622ABC20(&v81, Height * Width);
        v79 = objc_msgSend_depthBuffer(v5, v14, v15);
        CVPixelBufferLockBaseAddress(v79, 1uLL);
        v16 = CVPixelBufferGetWidth(v79);
        v80 = CVPixelBufferGetHeight(v79);
        BaseAddress = CVPixelBufferGetBaseAddress(v79);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v79);
        v67 = v5;
        v71 = Height;
        if (Height)
        {
          v69 = BytesPerRow;
          v21 = 0;
          v23 = v82;
          v22 = v83;
          v24 = v81;
          do
          {
            v74 = v21;
            if (Width)
            {
              v25 = 0;
              v26 = v21;
              do
              {
                v27 = v25;
                v28 = 0;
                if ((v27 & 0x80000000) == 0 && v16 > v27 && (v26 & 0x80000000) == 0 && v80 > v26)
                {
                  v28 = *&BaseAddress[4 * v27 + v69 * v26];
                }

                if (v23 >= v22)
                {
                  v29 = v23 - v24;
                  v30 = (v23 - v24) >> 2;
                  v31 = v30 + 1;
                  if ((v30 + 1) >> 62)
                  {
                    v81 = v24;
                    sub_2621CBEB0();
                  }

                  if ((v22 - v24) >> 1 > v31)
                  {
                    v31 = (v22 - v24) >> 1;
                  }

                  if (v22 - v24 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v31;
                  }

                  if (v32)
                  {
                    sub_2621C7F54(v32);
                  }

                  v33 = (4 * v30);
                  v22 = 0;
                  *v33 = v28;
                  v23 = (v33 + 1);
                  memcpy(0, v24, v29);
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  v24 = 0;
                }

                else
                {
                  *v23 = v28;
                  v23 += 4;
                }

                ++v25;
              }

              while (Width != v25);
            }

            v21 = v74 + 1;
          }

          while (v74 + 1 != v71);
          v82 = v23;
          v83 = v22;
          v81 = v24;
          v5 = v67;
        }

        v34 = objc_msgSend_semanticLabelBuffer(v5, v19, v20);
        v35 = CVPixelBufferGetWidth(v34);
        v38 = objc_msgSend_semanticLabelBuffer(v5, v36, v37);
        v72 = CVPixelBufferGetHeight(v38);
        pixelBuffer = objc_msgSend_semanticLabelBuffer(v5, v39, v40);
        CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        v77 = CVPixelBufferGetWidth(pixelBuffer);
        v78 = CVPixelBufferGetHeight(pixelBuffer);
        v41 = CVPixelBufferGetBaseAddress(pixelBuffer);
        v44 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v45 = v72 * v35;
        if (v72 * v35)
        {
          if (!(v45 >> 62))
          {
            sub_2621C7F54(v45);
          }

          sub_2621CBEB0();
        }

        if (v72)
        {
          v46 = 0;
          do
          {
            v75 = v46;
            if (v35)
            {
              v47 = v46;
              v48 = 0;
              if ((v48 & 0x80000000) == 0 && v77 > v48 && (v47 & 0x80000000) == 0 && v78 > v47)
              {
                v49 = v41[v44 * v47 + v48];
              }

              sub_2621C7F54(1uLL);
            }

            ++v46;
          }

          while (v75 + 1 != v72);
        }

        v50 = objc_msgSend_camera(v67, v42, v43);
        objc_msgSend_imageResolution(v50, v51, v52);

        v55 = objc_msgSend_camera(v67, v53, v54);
        objc_msgSend_intrinsics(v55, v56, v57);
        v58.i32[3] = 0;
        v59.i32[3] = 0;
        v68 = v58;
        v70 = v59;
        v60.i32[3] = 0;
        v73 = v60;

        v87.columns[0] = v68;
        v87.columns[1] = v70;
        v87.columns[2] = v73;
        v87.columns[3] = xmmword_2623A7810;
        __invert_f4(v87);
        v65 = objc_msgSend_camera(v67, v61, v62);
        objc_msgSend_pose(v65, v63, v64);
        v5 = v67;

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        CVPixelBufferUnlockBaseAddress(v79, 1uLL);
        if (v81)
        {
          operator delete(v81);
        }
      }

      sub_2621CD534(&v84);
    }

    v3 = v66;
  }
}

void sub_2621F6908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CVPixelBufferRef a35, uint64_t a36, uint64_t a37, uint64_t a38, CVPixelBufferRef a39)
{
  v43 = *(v41 - 160);
  if (v43)
  {
    *(v41 - 152) = v43;
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v40)
  {
    operator delete(v40);
  }

  sub_26233D718(&a35);
  if (v39)
  {
    operator delete(v39);
  }

  sub_26233D74C(&a39);
  v44 = *(v41 - 224);
  if (v44)
  {
    operator delete(v44);
  }

  sub_2621CD534((v41 - 200));

  _Unwind_Resume(a1);
}

id **sub_2621F6A6C(id **a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = objc_msgSend_render(a1, v6, v7);
    v10 = sub_2621CD3A4(a1[8]);
    a1 = sub_26229D500(v9, v5, v8, v10);
  }

  return a1;
}

id *sub_2621F6B40(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(RSAsset);
    p_isa = &v2->super.isa;
    if (v2)
    {
      v2->_isCaptured = 1;
    }

    v6 = objc_msgSend_render(a1, v3, v4);
    v7 = sub_26229D698(v6);
    v10 = objc_msgSend_copy(v7, v8, v9);
    if (p_isa)
    {
      objc_storeStrong(p_isa + 2, v10);
    }

    v13 = objc_msgSend_copy(*(a1 + 168), v11, v12);
    if (p_isa)
    {
      objc_storeStrong(p_isa + 5, v13);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = *(v16 + 8);
      v20 = objc_msgSend_copy(v17, v18, v19);
    }

    else
    {
      v17 = 0;
      v20 = objc_msgSend_copy(0, v14, v15);
    }

    v21 = v20;
    if (p_isa)
    {
      objc_storeStrong(p_isa + 3, v20);
    }
  }

  else
  {
    p_isa = 0;
  }

  return p_isa;
}

void sub_2621F6C88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2621FA6FC(a1, a2, a3, a4);
  v436 = a1;
  v6 = *(a1 + 8);
  v7 = &qword_2623A8000;
  v437 = (a1 + 8);
  v8 = *(a1 + 16);
  v9 = &qword_2623A8000;
  if (v8 == v6)
  {
    goto LABEL_131;
  }

  v10 = 0;
  do
  {
    v11 = v6 + 112 * v10;
    v12 = *(v11 + 32);
    v429 = *(v12 + 8);
    v426 = *(v12 + 40);
    v13 = v429 - v426;
    if (v429 - v426 < 0)
    {
      v13 = v426 - v429;
    }

    if ((v13 * 0.03) <= 0.1 || *(v11 + 56) >= 0.3)
    {
      goto LABEL_130;
    }

    if (v10)
    {
      v14 = vcvt_f32_s32(vzip1_s32(*(*(v11 - 80) + 8), *(*(v11 - 80) + 40)));
      if (fabsf(vsub_f32(v14, vdup_lane_s32(v14, 1)).f32[0]) >= 0.01 && *(v11 - 56) > 0.5)
      {
        __p = &unk_2874EEA20;
        v469[0] = 0;
        v469[4] = 0;
        v469[8] = 0;
        v469[12] = 0;
        v469[16] = 0;
        v469[20] = 0;
        v471 = 0;
        v472 = 0;
        v470 = 0;
        v473 = 0.0;
        v474 = 0u;
        v475 = 0u;
        v476 = 0u;
        v478 = &unk_2874EF0B8;
        memset(v479, 0, sizeof(v479));
        v480 = 0u;
        memset(v481, 0, 48);
        v482 = 0;
        v483 = 0;
        v484 = 257;
        sub_2623249D4(&__p, *(v11 - 80), *(v11 + 32) + 32, &v478);
        v16 = *(v11 + 32);
        v17 = v470[1];
        v18 = v17.i32[0];
        v19 = v470[5];
        v20 = vcvt_f32_s32(vzip2_s32(v19, v17));
        v21 = v19.i32[0];
        if (vabds_f32(v20.f32[0], v20.f32[1]) >= 0.000001)
        {
          v22 = (((*(v16 + 12) - v20.f32[1]) * (v21 - v18)) / (v20.f32[0] - v20.f32[1])) + v18;
        }

        else
        {
          v22 = (v18 + v21) * 0.5;
        }

        v23 = *(v16 + 8);
        v478 = &unk_2874EF0B8;
        if (v483)
        {
          v424 = v23;
          sub_2621D1B78(v483);
          LODWORD(v23) = v424;
        }

        v24 = vabds_f32(v22, v23);
        sub_262206C54(&__p);
        if (v24 < 3.0)
        {
          goto LABEL_130;
        }

        v6 = *(v436 + 8);
        v8 = *(v436 + 16);
      }
    }

    if (v10 < (-1 - 1227133513 * ((v8 - v6) >> 4)))
    {
      v25 = v6 + 112 * v10;
      v26 = vcvt_f32_s32(vzip1_s32(*(*(v25 + 144) + 8), *(*(v25 + 144) + 40)));
      if (fabsf(vsub_f32(v26, vdup_lane_s32(v26, 1)).f32[0]) >= 0.01 && *(v25 + 168) > 0.5)
      {
        __p = &unk_2874EEA20;
        v469[0] = 0;
        v469[4] = 0;
        v469[8] = 0;
        v469[12] = 0;
        v469[16] = 0;
        v469[20] = 0;
        v471 = 0;
        v472 = 0;
        v470 = 0;
        v473 = 0.0;
        v474 = 0u;
        v475 = 0u;
        v476 = 0u;
        v478 = &unk_2874EF0B8;
        memset(v479, 0, sizeof(v479));
        v480 = 0u;
        memset(v481, 0, 48);
        v482 = 0;
        v483 = 0;
        v484 = 257;
        sub_2623249D4(&__p, *(v11 + 32), *(v25 + 144) + 32, &v478);
        v28 = *(v11 + 32);
        v29 = v470[1];
        v30 = v29.i32[0];
        v31 = v470[5];
        v32 = vcvt_f32_s32(vzip2_s32(v31, v29));
        v33 = v31.i32[0];
        if (vabds_f32(v32.f32[0], v32.f32[1]) >= 0.000001)
        {
          v34 = (((*(v28 + 44) - v32.f32[1]) * (v33 - v30)) / (v32.f32[0] - v32.f32[1])) + v30;
        }

        else
        {
          v34 = (v30 + v33) * 0.5;
        }

        v35 = *(v28 + 40);
        v478 = &unk_2874EF0B8;
        if (v483)
        {
          v425 = v35;
          sub_2621D1B78(v483);
          LODWORD(v35) = v425;
        }

        v36 = vabds_f32(v34, v35);
        sub_262206C54(&__p);
        if (v36 < 3.0)
        {
          goto LABEL_130;
        }
      }
    }

    v478 = &unk_2874EEA20;
    LOBYTE(v479[0]) = 0;
    BYTE4(v479[0]) = 0;
    BYTE8(v479[0]) = 0;
    BYTE12(v479[0]) = 0;
    LOBYTE(v479[1]) = 0;
    BYTE4(v479[1]) = 0;
    v480 = 0uLL;
    *(&v479[1] + 1) = 0;
    LODWORD(v481[0]) = 0;
    memset(&v481[1], 0, 48);
    v37 = *(a4 + 8);
    if (v37 < 1)
    {
      v43 = 0.0;
    }

    else
    {
      v38 = 0;
      v39 = -3.4028e38;
      do
      {
        p_p = &off_2874EEA00;
        *&v459[8] = 0;
        *&v459[12] = -1;
        v40 = *(*(v11 + 32) + 8);
        LODWORD(v40) = v38;
        *v459 = v40;
        v448 = &off_2874EEA00;
        *&v449[8] = 0;
        *&v449[12] = -1;
        v41 = *(*(v11 + 32) + 40);
        LODWORD(v41) = v38;
        *v449 = v41;
        __p = &unk_2874EEA20;
        v469[0] = 0;
        v469[4] = 0;
        v469[8] = 0;
        v469[12] = 0;
        v469[16] = 0;
        v469[20] = 0;
        v471 = 0;
        v472 = 0;
        v470 = 0;
        v473 = 0.0;
        v474 = 0u;
        v475 = 0u;
        v476 = 0u;
        sub_2623249D4(&__p, &p_p, &v448, a4);
        v42 = v473;
        if (v473 >= v39)
        {
          v479[0] = *v469;
          *(v479 + 13) = *&v469[13];
          sub_26220676C(&v479[1] + 1, v470, v471, (v471 - v470) >> 5);
          *v481 = v473;
          sub_2621CA9DC(&v481[1], v474, *(&v474 + 1), (*(&v474 + 1) - v474) >> 2);
          sub_2622069E0(&v481[4], *(&v475 + 1), v476, (v476 - *(&v475 + 1)) >> 4);
          v39 = v42;
        }

        sub_262206C54(&__p);
        ++v38;
      }

      while (v37 != v38);
      v43 = *v481;
      v9 = &qword_2623A8000;
    }

    if ((v43 - *(v11 + 56)) > 0.1)
    {
      v44 = *(*(&v479[1] + 1) + 40);
      *(*(v11 + 32) + 8) = *(*(&v479[1] + 1) + 8);
      *(*(v11 + 32) + 40) = v44;
      v7 = &qword_2623A8000;
      if (*(a4 + 137))
      {
        goto LABEL_129;
      }

      goto LABEL_39;
    }

    v45 = *(v11 + 32);
    if ((*(v11 + 40) - v45) < 0x21)
    {
      goto LABEL_115;
    }

    v47 = *(v436 + 8);
    v46 = *(v436 + 16);
    if (v47 == v46)
    {
      goto LABEL_115;
    }

    v421 = v10;
    v48 = 0;
    v49 = *(v45 + 12);
    v50 = *(v45 + 44);
    v423 = v49;
    do
    {
      v51 = *(v47 + 32);
      v52 = *(v47 + 40);
      v53 = *(v11 + 32);
      if (v52 - v51 == *(v11 + 40) - v53)
      {
        v54 = *(v47 + 64);
        v55 = *(v47 + 72);
        v56 = *(v11 + 64);
        if (v55 - v54 == *(v11 + 72) - v56 && vabds_f32(*(v47 + 56), *(v11 + 56)) <= 0.000001)
        {
          if (v52 == v51)
          {
LABEL_71:
            if (v55 == v54)
            {
              goto LABEL_86;
            }

            v74 = v55 - v54;
            if (v74 <= 1)
            {
              v74 = 1;
            }

            while (vabds_f32(*v54, *v56) <= 0.000001)
            {
              ++v56;
              ++v54;
              if (!--v74)
              {
                goto LABEL_86;
              }
            }
          }

          else
          {
            v70 = (v52 - v51) >> 5;
            if (v70 <= 1)
            {
              v70 = 1;
            }

            v71 = (v53 + 24);
            v72 = (v51 + 24);
            while (*(v72 - 1) == *(v71 - 1))
            {
              if (*v72 != *v71)
              {
                break;
              }

              if (vabds_f32(*(v72 - 2), *(v71 - 2)) > 0.000001)
              {
                break;
              }

              v73 = vceq_s32(*(v72 - 4), *(v71 - 4));
              if ((v73.i32[0] & v73.i32[1] & 1) == 0)
              {
                break;
              }

              v71 += 8;
              v72 += 8;
              if (!--v70)
              {
                goto LABEL_71;
              }
            }
          }
        }
      }

      if (*(v47 + 56) > 0.3)
      {
        v57 = v50;
        v58 = *(v51 + 3);
        v59 = *(v51 + 11);
        *v469 = 0;
        __p = 0;
        *&v469[8] = 0;
        v60 = v49 - v58;
        if (v49 - v58 < 0)
        {
          v60 = v58 - v49;
        }

        LODWORD(p_p) = v60;
        sub_2621C7CD0(&__p, &p_p);
        v61 = v49 - v59;
        if (v49 - v59 < 0)
        {
          v61 = v59 - v49;
        }

        LODWORD(p_p) = v61;
        sub_2621C7CD0(&__p, &p_p);
        v62 = v57 - v58;
        if (v57 - v58 < 0)
        {
          v62 = v58 - v57;
        }

        LODWORD(p_p) = v62;
        sub_2621C7CD0(&__p, &p_p);
        v63 = v57 - v59;
        if (v57 - v59 < 0)
        {
          v63 = v59 - v57;
        }

        LODWORD(p_p) = v63;
        sub_2621C7CD0(&__p, &p_p);
        if (__p == *v469)
        {
          v65 = __p;
        }

        else
        {
          v64 = __p + 4;
          v65 = __p;
          if (__p + 4 != *v469)
          {
            v66 = *__p;
            v65 = __p;
            v67 = __p + 4;
            do
            {
              v69 = *v67;
              v67 += 4;
              v68 = v69;
              if (v69 < v66)
              {
                v66 = v68;
                v65 = v64;
              }

              v64 = v67;
            }

            while (v67 != *v469);
          }
        }

        v75 = v65 - __p;
        if ((((v65 - __p) >> 2) & 0x80000000) == 0)
        {
          v76 = ((v65 - __p) >> 2) & 1;
        }

        else
        {
          v76 = -(((v65 - __p) >> 2) & 1);
        }

        v77 = *(*(v47 + 32) + 32 * v76 + 8);
        v78 = v48;
        v79 = v48 >> 3;
        if (((v48 >> 3) + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        if (v48 >> 3 != -1)
        {
          sub_2621CBEC8((v48 >> 3) + 1);
        }

        HIDWORD(v77) = *(__p + (v75 << 30 >> 30));
        *(8 * v79) = v77;
        v48 = 8 * v79 + 8;
        memcpy(0, 0, v78);
        v49 = v423;
        v50 = v57;
        if (__p)
        {
          operator delete(__p);
        }
      }

LABEL_86:
      v47 += 112;
    }

    while (v47 != v46);
    if (!v48)
    {
      v10 = v421;
LABEL_115:
      v100 = v429;
      if (v426 < v429)
      {
        v100 = v426;
      }

      *(*(v11 + 32) + 8) = v100;
      *(*(v11 + 32) + 40) = v100;
      v7 = &qword_2623A8000;
      v9 = &qword_2623A8000;
      if (*(a4 + 137))
      {
        goto LABEL_129;
      }

LABEL_39:
      sub_262324ACC(v11, a4);
      goto LABEL_129;
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    for (i = 0; i != v48; ++i)
    {
      if (HIDWORD(*i) <= 2)
      {
        v85 = v82 - v80;
        v86 = v85 + 1;
        if ((v85 + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        if (-v80 >> 2 > v86)
        {
          v86 = -v80 >> 2;
        }

        if (-v80 >= 0x7FFFFFFFFFFFFFF8)
        {
          v87 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v86;
        }

        if (v87)
        {
          sub_2621CBEC8(v87);
        }

        v88 = (8 * v85);
        v89 = v81 - v80;
        v90 = (v88 - (v81 - v80));
        *v88 = *i;
        v84 = v88 + 1;
        memcpy(v90, v80, v89);
        if (v80)
        {
          operator delete(v80);
        }

        v80 = v90;
        v82 = v84;
      }

      else
      {
        v84 = v81;
      }

      v81 = v84;
    }

    if (v82 == v80)
    {
      v101 = 0;
      v102 = 8;
      v7 = &qword_2623A8000;
      v9 = &qword_2623A8000;
      if (v48 != 8)
      {
        v101 = 0;
        do
        {
          if (*(v102 + 4) < *(v101 + 4))
          {
            v101 = v102;
          }

          v102 += 8;
        }

        while (v102 != v48);
      }

      v103 = *v101;
      *(*(v11 + 32) + 8) = *v101;
      *(*(v11 + 32) + 40) = v103;
      if ((*(a4 + 137) & 1) == 0)
      {
LABEL_125:
        sub_262324ACC(v11, a4);
      }
    }

    else
    {
      v91 = v80 + 1;
      v92 = v80;
      v7 = &qword_2623A8000;
      v9 = &qword_2623A8000;
      if (&v80[1] != v82)
      {
        v93 = *v80;
        v92 = v80;
        v94 = v80 + 1;
        do
        {
          v95 = *v94++;
          v96 = v95;
          v97 = vcgt_s32(v93, v95).u8[0];
          if (v97)
          {
            v98 = -1;
          }

          else
          {
            v98 = 0;
          }

          v93 = vbsl_s8(vdup_n_s32(v98), v96, v93);
          if (v97)
          {
            v92 = v91;
          }

          v91 = v94;
        }

        while (v94 != v82);
      }

      v99 = *v92;
      *(*(v11 + 32) + 8) = *v92;
      *(*(v11 + 32) + 40) = v99.i32[0];
      if ((*(a4 + 137) & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    if (v80)
    {
      operator delete(v80);
    }

    v10 = v421;
LABEL_129:
    sub_262206C54(&v478);
LABEL_130:
    ++v10;
    v6 = *(v436 + 8);
    v8 = *(v436 + 16);
  }

  while (0x6DB6DB6DB6DB6DB7 * ((v8 - v6) >> 4) > v10);
LABEL_131:
  v104 = v8 - v6;
  if (v8 == v6)
  {
    goto LABEL_152;
  }

  v105 = 0;
  v106 = 0x6DB6DB6DB6DB6DB7 * (v104 >> 4);
  v107 = v106 - 1;
  if (v106 <= 1)
  {
    v108 = 1;
  }

  else
  {
    v108 = v106;
  }

  v109 = v6 + 112 * v107;
  v110 = (v6 + 32);
  while (2)
  {
    v111 = (*v110)[1];
    v112 = (*v110)[5];
    v113 = vsub_s32(v111, v112);
    v114 = v113.i32[0];
    if (v113.i32[0] < 0)
    {
      v114 = -v113.i32[0];
    }

    if ((v114 * *(v7 + 200)) <= *(v9 + 204))
    {
      goto LABEL_151;
    }

    v115 = v113.u32[1];
    if (v113.i32[1] < 0)
    {
      v115 = -v113.i32[1];
    }

    if (v106 < 2 || v115 > 0xA)
    {
LABEL_151:
      ++v105;
      v110 += 14;
      if (v108 == v105)
      {
        goto LABEL_152;
      }

      continue;
    }

    break;
  }

  if (v105)
  {
    goto LABEL_150;
  }

  v116 = *(v6 + 144);
  v117 = *(v116 + 8);
  v118 = v117 - *(v116 + 40);
  if (v118 < 0)
  {
    v118 = *(v116 + 40) - *(v116 + 8);
  }

  if (v118 > 3)
  {
LABEL_150:
    if (v107 == v105)
    {
      v119 = *(v109 - 80);
      v120 = *(v119 + 40);
      v121 = *(v119 + 8) - v120;
      if (v121 < 0)
      {
        v121 = v120 - *(v119 + 8);
      }

      if (v121 <= 3)
      {
        v478 = &off_2874EEA00;
        DWORD2(v479[0]) = 0;
        *(v479 + 12) = -1;
        HIDWORD(v120) = v112.i32[1];
        *&v479[0] = v120;
        sub_2623249D4(v109 - 112, v119, &v478, a4);
        *v469 = 0;
        __p = 0;
        *&v469[8] = 0;
        v215 = *(v436 + 8);
        v214 = *(v436 + 16);
        v216 = v214 - 112;
        if (v214 - 112 != v215)
        {
          do
          {
            sub_262206F74(&__p, v215);
            v215 += 112;
          }

          while (v215 != v216);
          v215 = *(v436 + 8);
          v214 = *(v436 + 16);
        }

        if (v214 != v215)
        {
          v217 = v214 - 112;
          v218 = (v214 - 112);
          v219 = (v214 - 112);
          do
          {
            v220 = *v219;
            v219 -= 14;
            (*v220)(v218);
            v217 -= 112;
            v147 = v218 == v215;
            v218 = v219;
          }

          while (!v147);
        }

        *(v436 + 16) = v215;
        v221 = __p;
        v222 = *v469;
        while (v221 != v222)
        {
          sub_262206F74(v437, v221);
          v221 += 112;
        }

        goto LABEL_291;
      }
    }

    goto LABEL_151;
  }

  v478 = &off_2874EEA00;
  DWORD2(v479[0]) = 0;
  *(v479 + 12) = -1;
  HIDWORD(v117) = v111.i32[1];
  *&v479[0] = v117;
  sub_2623249D4(v6 + 112, &v478, v116 + 32, a4);
  *v469 = 0;
  __p = 0;
  *&v469[8] = 0;
  v223 = *(v436 + 8);
  v224 = *(v436 + 16);
  v225 = (v223 + 14);
  if (v223 + 14 != v224)
  {
    do
    {
      sub_262206F74(&__p, v225);
      v225 += 112;
    }

    while (v225 != v224);
    v223 = *(v436 + 8);
    v224 = *(v436 + 16);
  }

  if (v224 != v223)
  {
    v226 = v224 - 14;
    v227 = v226;
    v228 = v226;
    do
    {
      v229 = *v228;
      v228 -= 14;
      (*v229)(v227);
      v226 -= 14;
      v147 = v227 == v223;
      v227 = v228;
    }

    while (!v147);
  }

  *(v436 + 16) = v223;
  v230 = __p;
  v231 = *v469;
  while (v230 != v231)
  {
    sub_262206F74(v437, v230);
    v230 += 112;
  }

LABEL_291:
  p_p = &__p;
  sub_2621FF4B4(&p_p);
LABEL_152:
  v123 = *(v436 + 8);
  for (j = *(v436 + 16); v123 != j; v123 += 112)
  {
    v124 = *(v123 + 32);
    v125 = v124[1];
    v126 = v125.i32[0];
    v127 = v124[5];
    v128 = v127.i32[0];
    v129 = v125.i32[0] - v127.i32[0];
    if (v125.i32[0] - v127.i32[0] < 0)
    {
      v129 = v127.i32[0] - v125.i32[0];
    }

    v130 = vsub_s32(v125, v127);
    v131 = v129 * 0.03;
    v132 = v130.u32[1];
    if (v130.i32[1] < 0)
    {
      v132 = -v130.i32[1];
    }

    if ((v131 / fmaxf(v132 * 0.03, 1.0)) <= 0.1)
    {
      v133 = *(a4 + 8);
      v478 = &unk_2874EEA20;
      if (v128 >= v126)
      {
        v134 = v126;
      }

      else
      {
        v134 = v128;
      }

      LOBYTE(v479[0]) = 0;
      if (v134 <= 2)
      {
        v134 = 2;
      }

      BYTE4(v479[0]) = 0;
      if (v126 <= v128)
      {
        v126 = v128;
      }

      v135 = v126 + 2;
      BYTE8(v479[0]) = 0;
      BYTE12(v479[0]) = 0;
      if (v133 - 1 >= v135)
      {
        v136 = v135;
      }

      else
      {
        v136 = v133 - 1;
      }

      LOBYTE(v479[1]) = 0;
      BYTE4(v479[1]) = 0;
      v480 = 0uLL;
      *(&v479[1] + 1) = 0;
      LODWORD(v481[0]) = 0;
      memset(&v481[1], 0, 48);
      v137 = v134 - 3;
      v138 = -3.4028e38;
      do
      {
        p_p = &off_2874EEA00;
        *&v459[8] = 0;
        *&v459[12] = -1;
        v139 = *(v123 + 32);
        v140 = *(v139 + 8);
        LODWORD(v140) = v137 + 1;
        *v459 = v140;
        v448 = &off_2874EEA00;
        *&v449[8] = 0;
        *&v449[12] = -1;
        v141 = *(v139 + 40);
        LODWORD(v141) = v137 + 1;
        *v449 = v141;
        __p = &unk_2874EEA20;
        v469[0] = 0;
        v469[4] = 0;
        v469[8] = 0;
        v469[12] = 0;
        v469[16] = 0;
        v469[20] = 0;
        v471 = 0;
        v472 = 0;
        v470 = 0;
        v473 = 0.0;
        v474 = 0u;
        v475 = 0u;
        v476 = 0u;
        sub_2623249D4(&__p, &p_p, &v448, a4);
        v142 = v473;
        if (v473 >= v138)
        {
          v479[0] = *v469;
          *(v479 + 13) = *&v469[13];
          sub_26220676C(&v479[1] + 1, v470, v471, (v471 - v470) >> 5);
          *v481 = v473;
          sub_2621CA9DC(&v481[1], v474, *(&v474 + 1), (*(&v474 + 1) - v474) >> 2);
          sub_2622069E0(&v481[4], *(&v475 + 1), v476, (v476 - *(&v475 + 1)) >> 4);
          v138 = v142;
        }

        sub_262206C54(&__p);
        ++v137;
      }

      while (v137 < v136);
      v143 = *(*(&v479[1] + 1) + 40);
      *(*(v123 + 32) + 8) = *(*(&v479[1] + 1) + 8);
      *(*(v123 + 32) + 40) = v143;
      if ((*(a4 + 137) & 1) == 0)
      {
        sub_262324ACC(v123, a4);
      }

      sub_262206C54(&v478);
    }
  }

LABEL_176:
  v145 = *(v436 + 8);
  v144 = *(v436 + 16);
  v146 = 0x6DB6DB6DB6DB6DB7 * ((v144 - v145) >> 4);
  v147 = v146 < 3 || v144 == v145;
  if (!v147)
  {
    v148 = 0;
    do
    {
      v149 = v145 + 112 * v148;
      v150 = *(*(v149 + 32) + 8) - *(*(v149 + 32) + 40);
      if (v150 >= 0)
      {
        v151 = *(*(v149 + 32) + 8) - *(*(v149 + 32) + 40);
      }

      else
      {
        v151 = *(*(v149 + 32) + 40) - *(*(v149 + 32) + 8);
      }

      v152 = v148 + 1;
      if ((v151 * 0.03) >= 0.1 && *(v149 + 56) >= 0.3)
      {
        v153 = v146;
        while (1)
        {
          --v153;
          v145 = *v437;
          if (v153 <= v152)
          {
            break;
          }

          v154 = v145 + 112 * v153;
          v155 = *(*(v154 + 32) + 8) - *(*(v154 + 32) + 40);
          if (v155 >= 0)
          {
            v156 = *(*(v154 + 32) + 8) - *(*(v154 + 32) + 40);
          }

          else
          {
            v156 = *(*(v154 + 32) + 40) - *(*(v154 + 32) + 8);
          }

          v157 = 7;
          if ((v156 * 0.03) >= 0.1)
          {
            v158 = v155 * v150;
            if (*(v154 + 56) >= 0.3 && v158 >= 1)
            {
              v478 = &unk_2874EEA20;
              LOBYTE(v479[0]) = 0;
              BYTE4(v479[0]) = 0;
              BYTE8(v479[0]) = 0;
              BYTE12(v479[0]) = 0;
              LOBYTE(v479[1]) = 0;
              BYTE4(v479[1]) = 0;
              v480 = 0uLL;
              *(&v479[1] + 1) = 0;
              LODWORD(v481[0]) = 0;
              memset(&v481[1], 0, 48);
              sub_2623249D4(&v478, *(v149 + 32), *(v154 + 32) + 32, a4);
              if (*v481 >= 0.3)
              {
                v160 = *(*(&v479[1] + 1) + 8);
                v161 = v160.i32[0];
                v162 = *(*(&v479[1] + 1) + 40);
                v163 = vcvt_f32_s32(vzip2_s32(v162, v160));
                v164 = v162.i32[0];
                if (vabds_f32(v163.f32[0], v163.f32[1]) >= 0.000001)
                {
                  v163.f32[0] = v163.f32[0] - v163.f32[1];
                  v167 = v164 - v161;
                  v165 = (((*(*(v149 + 32) + 44) - v163.f32[1]) * (v164 - v161)) / v163.f32[0]) + v161;
                  v166 = (((*(*(v154 + 32) + 12) - v163.f32[1]) * v167) / v163.f32[0]) + v161;
                }

                else
                {
                  v165 = (v161 + v164) * 0.5;
                  v166 = v165;
                }

                v168 = *(v149 + 32);
                v169 = *(v168 + 48) <= 0.1 ? 5.0 : 3.0;
                if (vabds_f32(v165, *(v168 + 40)) <= v169 && vabds_f32(v166, *(*(v154 + 32) + 8)) <= 5.0)
                {
                  v170 = *v437 + 112 * v148;
                  v171 = v479[0];
                  *(v170 + 21) = *(v479 + 13);
                  *(v170 + 8) = v171;
                  if (v170 == &v478)
                  {
                    *(v170 + 56) = v481[0];
                  }

                  else
                  {
                    sub_26220676C((v170 + 32), *(&v479[1] + 1), v480, (v480 - *(&v479[1] + 1)) >> 5);
                    *(v170 + 56) = v481[0];
                    sub_2621CA9DC((v170 + 64), v481[1], v481[2], (v481[2] - v481[1]) >> 2);
                    sub_2622069E0((v170 + 88), v481[4], v481[5], (v481[5] - v481[4]) >> 4);
                  }

                  *v469 = 0;
                  __p = 0;
                  *&v469[8] = 0;
                  v172 = *v437;
                  v173 = 112 * v148 + 112 + *v437;
                  do
                  {
                    sub_262206F74(&__p, v172);
                    v172 += 112;
                  }

                  while (v172 != v173);
                  v174 = *(v436 + 16);
                  for (k = *(v436 + 8) + 112 * v153 + 112; k != v174; k += 112)
                  {
                    sub_262206F74(&__p, k);
                  }

                  sub_26232528C(v436, &__p);
                  p_p = &__p;
                  sub_2621FF4B4(&p_p);
                  v157 = 1;
                }
              }

              sub_262206C54(&v478);
            }
          }

          if (v157 != 7)
          {
            goto LABEL_176;
          }
        }

        v144 = *(v436 + 16);
      }

      v146 = 0x6DB6DB6DB6DB6DB7 * ((v144 - v145) >> 4);
      ++v148;
    }

    while (v146 > v152);
  }

  if (v146 >= 3)
  {
    v176 = *(v145 + 32);
    if (*(v176 + 16) >= 0.1)
    {
      v177 = *(v144 - 80);
      if (*(v177 + 48) >= 0.1)
      {
        v178 = *(v176 + 8);
        v179 = *(v177 + 40);
        v180 = vsub_s32(v178, v179).u32[0];
        if (v180 < 0)
        {
          v180 = -v180;
        }

        v181 = v180;
        if ((v180 * 0.03) >= 0.1 && v178.i32[1] != v179.i32[1])
        {
          v232 = v178.i32[1] - v179.i32[1];
          if (v178.i32[1] - v179.i32[1] < 0)
          {
            v232 = v179.i32[1] - v178.i32[1];
          }

          if ((v181 / v232) >= 0.2)
          {
            v478 = &unk_2874EEA20;
            LOBYTE(v479[0]) = 0;
            BYTE4(v479[0]) = 0;
            BYTE8(v479[0]) = 0;
            BYTE12(v479[0]) = 0;
            LOBYTE(v479[1]) = 0;
            BYTE4(v479[1]) = 0;
            *(&v479[1] + 1) = 0;
            v480 = 0uLL;
            LODWORD(v481[0]) = 0;
            memset(&v481[1], 0, 48);
            sub_2623249D4(&v478, v176, v177 + 32, a4);
            if (*v481 >= 0.3)
            {
              *v469 = 0;
              __p = 0;
              *&v469[8] = 0;
              sub_262206F74(&__p, &v478);
              sub_26232528C(v436, &__p);
              p_p = &__p;
              sub_2621FF4B4(&p_p);
            }

            sub_262206C54(&v478);
            v145 = *(v436 + 8);
            v144 = *(v436 + 16);
            v146 = 0x6DB6DB6DB6DB6DB7 * ((v144 - v145) >> 4);
          }
        }
      }
    }

    if (v146 >= 3 && v146 - 1 >= 2)
    {
      v183 = *(v145 + 144);
      v184 = v183[1];
      v185 = 2 - v146;
      v186 = (v145 + 256);
      v187 = 1;
      v188 = vdup_n_s32(0x3CF5C28Fu);
      while (1)
      {
        v189 = v183;
        v190 = v184;
        v191 = *(v186 - 28);
        v192 = v191[5];
        v193 = *&v191[1] - v192.i32[0];
        if (v193 < 0)
        {
          v193 = v192.i32[0] - *&v191[1];
        }

        v194 = v193 * 0.03;
        v183 = *v186;
        v184 = (*v186)[1];
        if (v194 < 0.1)
        {
          v195 = v189[5];
          v196 = vabd_s32(vzip1_s32(v190, v184), vzip1_s32(v195, v183[5]));
          v197 = vmul_f32(vcvt_f32_u32(v196), v188);
          if (v197.f32[0] >= 0.1 && v197.f32[1] < 0.1 && (*(v186 - 22) < 0.5 || *v189[2].i32 <= 0.1 || *v189[6].i32 <= 0.1))
          {
            v198 = vsub_s32(v192, v190).u32[0];
            if (v198 < 0)
            {
              v198 = -v198;
            }

            if (v198 <= 2)
            {
              v199 = vsub_s32(v195, v184).u32[0];
              if (v199 < 0)
              {
                v199 = -v199;
              }

              if (v199 <= 2)
              {
                v200 = vsub_s32(v190, v195).i32[1];
                if (v200 < 0)
                {
                  v200 = -v200;
                }

                if (v196.i32[0] < 0xBu || v200 <= 0xA)
                {
                  break;
                }
              }
            }
          }
        }

        ++v187;
        v186 += 14;
        if (v185 + v187 == 1)
        {
          goto LABEL_254;
        }
      }

      v478 = &unk_2874EEA20;
      LOBYTE(v479[0]) = 0;
      BYTE4(v479[0]) = 0;
      BYTE8(v479[0]) = 0;
      BYTE12(v479[0]) = 0;
      LOBYTE(v479[1]) = 0;
      BYTE4(v479[1]) = 0;
      *(&v479[1] + 1) = 0;
      v480 = 0uLL;
      LODWORD(v481[0]) = 0;
      memset(&v481[1], 0, 48);
      p_p = &off_2874EEA00;
      *&v459[8] = 0;
      *&v459[12] = -1;
      v407 = v191[5];
      v408 = *(v186 - 14);
      v407.i32[1] = HIDWORD(*(v408 + 40));
      *v459 = v407;
      sub_2623249D4(&v478, v408, &p_p, a4);
      __p = &unk_2874EEA20;
      v469[0] = 0;
      v469[4] = 0;
      v469[8] = 0;
      v469[12] = 0;
      v469[16] = 0;
      v469[20] = 0;
      v472 = 0;
      v470 = 0;
      v471 = 0;
      v473 = 0.0;
      v474 = 0u;
      v475 = 0u;
      v476 = 0u;
      v448 = &off_2874EEA00;
      *&v449[8] = 0;
      *&v449[12] = -1;
      v409 = (*v186)[1];
      v410 = *(v186 - 14);
      v409.i32[1] = HIDWORD(*(v410 + 8));
      *v449 = v409;
      sub_2623249D4(&__p, &v448, v410 + 32, a4);
      if (*v481 <= v473)
      {
        sub_2623249D4((v186 - 4), v470, &(*v186)[4], a4);
        v444 = 0;
        v445 = 0;
        v446[0] = 0;
        v416 = *v437;
        v417 = 112 * v187;
        v418 = v417 + *v437;
        do
        {
          sub_262206F74(&v444, v416);
          v416 += 112;
        }

        while (v416 != v418);
        v419 = *(v436 + 16);
        for (m = v417 + *(v436 + 8) + 112; m != v419; m += 112)
        {
          sub_262206F74(&v444, m);
        }
      }

      else
      {
        sub_2623249D4((v186 - 32), *(v186 - 28), *(&v479[1] + 1) + 32, a4);
        v444 = 0;
        v445 = 0;
        v446[0] = 0;
        v411 = *v437;
        v412 = 112 * v187;
        v413 = v412 + *v437;
        do
        {
          sub_262206F74(&v444, v411);
          v411 += 112;
        }

        while (v411 != v413);
        v414 = *(v436 + 16);
        for (n = v412 + *(v436 + 8) + 112; n != v414; n += 112)
        {
          sub_262206F74(&v444, n);
        }
      }

      sub_26232528C(v436, &v444);
      v440 = &v444;
      sub_2621FF4B4(&v440);
      sub_262206C54(&__p);
      sub_262206C54(&v478);
      v145 = *(v436 + 8);
      v144 = *(v436 + 16);
    }
  }

LABEL_254:
  if (v144 - v145 == 224)
  {
    v202 = *(v145 + 32);
    v203 = v202[1];
    v430 = v202[5];
    v204 = vsub_s32(v203, v430).u32[0];
    if (v204 < 0)
    {
      v204 = -v204;
    }

    if ((v204 * 0.03) < 0.1)
    {
      v205 = *(v145 + 144);
      v206 = v205[1];
      v207 = v205[5];
      v208 = vsub_s32(v206, v207).u32[0];
      if (v208 < 0)
      {
        v208 = -v208;
      }

      if ((v208 * 0.03) < 0.1)
      {
        v209 = vsub_s32(v430, v206).u32[0];
        if (v209 < 0)
        {
          v209 = -v209;
        }

        if (v209 <= 0xA)
        {
          v210 = vabd_s32(vzip2_s32(v203, v206), vzip2_s32(v430, v207));
          if (vcgt_u32(v210, vdup_lane_s32(v210, 1)).u8[0])
          {
            __p = &unk_2874EEA20;
            v469[0] = 0;
            v469[4] = 0;
            v469[8] = 0;
            v469[12] = 0;
            v469[16] = 0;
            v469[20] = 0;
            v472 = 0;
            v470 = 0;
            v471 = 0;
            v473 = 0.0;
            v474 = 0u;
            v475 = 0u;
            v476 = 0u;
            p_p = &off_2874EEA00;
            *&v459[8] = 0;
            *&v459[12] = -1;
            *v459 = __PAIR64__(v206.u32[1], v430.u32[0]);
            v448 = &off_2874EEA00;
            *&v449[8] = 0;
            *&v449[12] = -1;
            *v449 = __PAIR64__(v207.u32[1], v430.u32[0]);
            memset(v479, 0, sizeof(v479));
            v480 = 0u;
            memset(v481, 0, 48);
            v483 = 0;
            v478 = &unk_2874EF0B8;
            v482 = 0;
            v484 = 257;
            sub_2623249D4(&__p, &p_p, &v448, &v478);
            v478 = &unk_2874EF0B8;
            if (v483)
            {
              sub_2621D1B78(v483);
            }

            sub_2621FD3E8(&__p, a5);
            v211 = *(&v475 + 1);
            if (v476 == *(&v475 + 1))
            {
              v213 = 0.0;
            }

            else
            {
              v212 = 0;
              do
              {
                v212 += *(v211 + 8);
                v211 += 16;
              }

              while (v211 != v476);
              v213 = v212;
            }

            if ((v213 / ((v476 - *(&v475 + 1)) >> 4)) > 0.5)
            {
              v444 = &off_2874EEA00;
              LODWORD(v446[0]) = 0;
              *(v446 + 4) = -1;
              LODWORD(v236) = v430.i32[0];
              HIDWORD(v236) = HIDWORD(*(*(v145 + 144) + 40));
              v445 = v236;
              v478 = &unk_2874EEA20;
              LOBYTE(v479[0]) = 0;
              BYTE4(v479[0]) = 0;
              BYTE8(v479[0]) = 0;
              BYTE12(v479[0]) = 0;
              LOBYTE(v479[1]) = 0;
              BYTE4(v479[1]) = 0;
              *(&v479[1] + 1) = 0;
              v480 = 0uLL;
              LODWORD(v481[0]) = 0;
              memset(&v481[1], 0, 48);
              sub_2623249D4(&v478, *(v145 + 32), &v444, a4);
              v440 = 0;
              v441 = 0;
              v442[0] = 0;
              sub_262206F74(&v440, &v478);
              sub_26232528C(v436, &v440);
              goto LABEL_310;
            }
          }

          else
          {
            __p = &unk_2874EEA20;
            v469[0] = 0;
            v469[4] = 0;
            v469[8] = 0;
            v469[12] = 0;
            v469[16] = 0;
            v469[20] = 0;
            v472 = 0;
            v470 = 0;
            v471 = 0;
            v473 = 0.0;
            v474 = 0u;
            v475 = 0u;
            v476 = 0u;
            p_p = &off_2874EEA00;
            *&v459[8] = 0;
            *&v459[12] = -1;
            *v459 = __PAIR64__(v203.u32[1], v206.u32[0]);
            v448 = &off_2874EEA00;
            *&v449[8] = 0;
            *&v449[12] = -1;
            v427 = v206.i32[0];
            *v449 = __PAIR64__(v430.u32[1], v206.u32[0]);
            memset(v479, 0, sizeof(v479));
            v480 = 0u;
            memset(v481, 0, 48);
            v483 = 0;
            v478 = &unk_2874EF0B8;
            v482 = 0;
            v484 = 257;
            sub_2623249D4(&__p, &p_p, &v448, &v478);
            v478 = &unk_2874EF0B8;
            if (v483)
            {
              sub_2621D1B78(v483);
            }

            sub_2621FD3E8(&__p, a5);
            v233 = *(&v475 + 1);
            if (v476 == *(&v475 + 1))
            {
              v235 = 0.0;
            }

            else
            {
              v234 = 0;
              do
              {
                v234 += *(v233 + 8);
                v233 += 16;
              }

              while (v233 != v476);
              v235 = v234;
            }

            if ((v235 / ((v476 - *(&v475 + 1)) >> 4)) > 0.5)
            {
              v444 = &off_2874EEA00;
              LODWORD(v446[0]) = 0;
              *(v446 + 4) = -1;
              LODWORD(v237) = v427;
              HIDWORD(v237) = HIDWORD(*(*(v145 + 32) + 8));
              v445 = v237;
              v478 = &unk_2874EEA20;
              LOBYTE(v479[0]) = 0;
              BYTE4(v479[0]) = 0;
              BYTE8(v479[0]) = 0;
              BYTE12(v479[0]) = 0;
              LOBYTE(v479[1]) = 0;
              BYTE4(v479[1]) = 0;
              *(&v479[1] + 1) = 0;
              v480 = 0uLL;
              LODWORD(v481[0]) = 0;
              memset(&v481[1], 0, 48);
              sub_2623249D4(&v478, &v444, *(v145 + 144) + 32, a4);
              v440 = 0;
              v441 = 0;
              v442[0] = 0;
              sub_262206F74(&v440, &v478);
              sub_26232528C(v436, &v440);
LABEL_310:
              v439 = &v440;
              sub_2621FF4B4(&v439);
              sub_262206C54(&v478);
            }
          }

          sub_262206C54(&__p);
        }
      }
    }
  }

  v239 = *(v436 + 8);
  v238 = *(v436 + 16);
  if (v238 == v239)
  {
    v252 = *(a5 + 224);
    v253 = (*(a5 + 232) - v252) >> 6;
    if (v253 >= 2)
    {
      v254 = v252 + ((v253 - 2) << 6);
      v432 = *(v254 + 16);
      v255 = sub_26233D780(a5, *(v254 + 32));
      v256 = sub_26233D780(a5, *&v432) >> 32;
      if (HIDWORD(v255) != 0xFFFFFFFF && v256 != 0xFFFFFFFF)
      {
        v258 = *(a5 + 112);
        v259 = *(a5 + 712) / *(a5 + 108);
        v260 = -v259;
        if (v259 >= 0.0)
        {
          v260 = *(a5 + 712) / *(a5 + 108);
        }

        v261 = v260;
        v262 = v260 - v260;
        if (v262 < 0.5)
        {
          v263 = v261;
        }

        else
        {
          v263 = v261 + 1;
        }

        v264 = (v261 & 1) + v261;
        if (v262 != 0.5)
        {
          v264 = v263;
        }

        if (v259 < 0.0)
        {
          v264 = -v264;
        }

        v265 = v258 + ~v264;
        if (v265 >= v258)
        {
          v266 = 0;
        }

        else
        {
          v266 = v265 & ~(v265 >> 31);
        }

        __p = &off_2874EEA00;
        *&v469[8] = 0;
        *&v469[12] = -1;
        *v469 = __PAIR64__(HIDWORD(v255), v266);
        p_p = &off_2874EEA00;
        *&v459[8] = 0;
        *&v459[12] = -1;
        *v459 = __PAIR64__(v256, v266);
        v478 = &unk_2874EEA20;
        LOBYTE(v479[0]) = 0;
        BYTE4(v479[0]) = 0;
        BYTE8(v479[0]) = 0;
        BYTE12(v479[0]) = 0;
        LOBYTE(v479[1]) = 0;
        BYTE4(v479[1]) = 0;
        *(&v479[1] + 1) = 0;
        v480 = 0uLL;
        LODWORD(v481[0]) = 0;
        memset(&v481[1], 0, 48);
        sub_2623249D4(&v478, &__p, &p_p, a4);
        v448 = 0;
        *v449 = 0;
        *&v449[8] = 0;
        sub_262206F74(&v448, &v478);
        sub_26232528C(v436, &v448);
        v444 = &v448;
        sub_2621FF4B4(&v444);
        sub_262206C54(&v478);
      }
    }
  }

  else
  {
    v240 = *(v239 + 32);
    __p = &off_2874EEA00;
    v241 = *(v240 + 24);
    *v469 = *(v240 + 8);
    *&v469[16] = v241;
    v242 = *(v238 - 80);
    p_p = &off_2874EEA00;
    *v459 = *(v242 + 40);
    *&v459[16] = *(v242 + 56);
    v243 = *(a5 + 224);
    v244 = (*(a5 + 232) - v243) >> 6;
    if (v244 >= 4)
    {
      v431 = *v243[8 * (v244 - 4) + 4].f32;
      v245 = sub_26233D780(a5, v243[2]) >> 32;
      v246 = sub_26233D780(a5, *&v431) >> 32;
      if (v245 != 0xFFFFFFFF && v246 != 0xFFFFFFFF)
      {
        LODWORD(v248) = *v469;
        if (*&v469[4] > v245)
        {
          v448 = &off_2874EEA00;
          *&v449[12] = -1;
          HIDWORD(v248) = v245;
          *v449 = v248;
          v249 = *&v469[8];
          if ((*&v469[4] - v245) > 2)
          {
            v249 = 0.0;
          }

          *&v449[8] = v249;
          v478 = &unk_2874EEA20;
          LOBYTE(v479[0]) = 0;
          BYTE4(v479[0]) = 0;
          BYTE8(v479[0]) = 0;
          BYTE12(v479[0]) = 0;
          LOBYTE(v479[1]) = 0;
          BYTE4(v479[1]) = 0;
          *(&v479[1] + 1) = 0;
          v480 = 0uLL;
          LODWORD(v481[0]) = 0;
          memset(&v481[1], 0, 48);
          sub_2623249D4(&v478, &v448, &__p, a4);
          v444 = 0;
          v445 = 0;
          v446[0] = 0;
          sub_262206F74(&v444, &v478);
          v251 = *(v436 + 8);
          v250 = *(v436 + 16);
          while (v251 != v250)
          {
            sub_262206F74(&v444, v251);
            v251 += 112;
          }

          sub_26232528C(v436, &v444);
          v440 = &v444;
          sub_2621FF4B4(&v440);
          sub_262206C54(&v478);
        }

        LODWORD(v267) = *v459;
        if (v246 > *&v459[4])
        {
          v448 = &off_2874EEA00;
          *&v449[12] = -1;
          HIDWORD(v267) = v246;
          *v449 = v267;
          v268 = *&v459[8];
          if ((v246 - *&v459[4]) > 2)
          {
            v268 = 0.0;
          }

          *&v449[8] = v268;
          v478 = &unk_2874EEA20;
          LOBYTE(v479[0]) = 0;
          BYTE4(v479[0]) = 0;
          BYTE8(v479[0]) = 0;
          BYTE12(v479[0]) = 0;
          LOBYTE(v479[1]) = 0;
          BYTE4(v479[1]) = 0;
          *(&v479[1] + 1) = 0;
          v480 = 0uLL;
          LODWORD(v481[0]) = 0;
          memset(&v481[1], 0, 48);
          sub_2623249D4(&v478, &p_p, &v448, a4);
          v444 = 0;
          v445 = 0;
          v446[0] = 0;
          v270 = *(v436 + 8);
          v269 = *(v436 + 16);
          while (v270 != v269)
          {
            sub_262206F74(&v444, v270);
            v270 += 112;
          }

          sub_262206F74(&v444, &v478);
          sub_26232528C(v436, &v444);
          v440 = &v444;
          sub_2621FF4B4(&v440);
          sub_262206C54(&v478);
        }

        if (*&v469[4] < v245)
        {
          LODWORD(v444) = 0;
          LODWORD(v440) = 0;
          if (sub_2622071D4(*(v436 + 8), *(v436 + 16), v245, &v444, &v440))
          {
            v448 = 0;
            *v449 = 0;
            *&v449[8] = 0;
            v271 = *(v436 + 8);
            v272 = *(v436 + 16);
            v273 = &v271[14 * v444];
            if (v273 != v272)
            {
              do
              {
                sub_262206F74(&v448, v273);
                v273 += 112;
              }

              while (v273 != v272);
              v271 = *(v436 + 8);
              v272 = *(v436 + 16);
            }

            if (v272 != v271)
            {
              v274 = v272 - 14;
              v275 = v274;
              v276 = v274;
              do
              {
                v277 = *v276;
                v276 -= 14;
                (*v277)(v275);
                v274 -= 14;
                v147 = v275 == v271;
                v275 = v276;
              }

              while (!v147);
            }

            *(v436 + 16) = v271;
            v279 = v448;
            v278 = *v449;
            while (v279 != v278)
            {
              sub_262206F74(v437, v279);
              v279 += 112;
            }

            v478 = &off_2874EEA00;
            DWORD2(v479[0]) = 0;
            *(v479 + 12) = -1;
            *&v479[0] = __PAIR64__(v245, v440);
            v280 = *v437;
            v281 = *(*v437 + 32);
            v282 = *(v281 + 12) - v245;
            if (v282 < 0)
            {
              v282 = v245 - *(v281 + 12);
            }

            v283 = 0;
            if (v282 <= 2)
            {
              v283 = *(v281 + 16);
            }

            DWORD2(v479[0]) = v283;
            sub_2623249D4(v280, &v478, v281 + 32, a4);
            v478 = &v448;
            sub_2621FF4B4(&v478);
          }
        }

        if (*&v459[4] > v246)
        {
          LODWORD(v444) = 0;
          LODWORD(v440) = 0;
          if (sub_2622071D4(*(v436 + 8), *(v436 + 16), v246, &v444, &v440))
          {
            v448 = 0;
            *v449 = 0;
            *&v449[8] = 0;
            v284 = *v437;
            v285 = *v437 + 112 * v444 + 112;
            if (v285 != *v437)
            {
              do
              {
                sub_262206F74(&v448, v284);
                v284 += 112;
              }

              while (v284 != v285);
              v284 = *v437;
            }

            v286 = *(v436 + 16);
            if (v286 != v284)
            {
              v287 = v286 - 112;
              v288 = (v286 - 112);
              v289 = (v286 - 112);
              do
              {
                v290 = *v289;
                v289 -= 14;
                (*v290)(v288);
                v287 -= 112;
                v147 = v288 == v284;
                v288 = v289;
              }

              while (!v147);
            }

            *(v436 + 16) = v284;
            v292 = v448;
            v291 = *v449;
            if (v448 != *v449)
            {
              do
              {
                sub_262206F74(v437, v292);
                v292 += 112;
              }

              while (v292 != v291);
              v284 = *(v436 + 16);
            }

            v478 = &off_2874EEA00;
            *(v479 + 12) = -1;
            *&v479[0] = __PAIR64__(v246, v440);
            v293 = *(v284 - 80);
            v294 = *(v293 + 44) - v246;
            if (v294 < 0)
            {
              v294 = v246 - *(v293 + 44);
            }

            v295 = 0;
            if (v294 <= 2)
            {
              v295 = *(v293 + 48);
            }

            DWORD2(v479[0]) = v295;
            sub_2623249D4(v284 - 112, v293, &v478, a4);
            v478 = &v448;
            sub_2621FF4B4(&v478);
          }
        }

        sub_262325754(v436);
      }
    }
  }

  v296 = a4;
  while (1)
  {
    v297 = *(v436 + 8);
    v298 = *(v436 + 16);
    v299 = 0x6DB6DB6DB6DB6DB7 * ((v298 - v297) >> 4);
    if (v299 < 2)
    {
      break;
    }

    v300 = 0;
    v301 = (v299 - 1);
    v302 = v297 + 144;
    while (1)
    {
      v303 = v300 + 1;
      v304 = *(v302 - 112);
      v305 = *(v304 + 8);
      if (vabds_f32(v305, *(v304 + 40)) < 0.01)
      {
        v306 = *(*v302 + 8);
        v307 = v305 - v306;
        if (v307 < 0)
        {
          v307 = -v307;
        }

        if (vabds_f32(v306, *(*v302 + 40)) < 0.01 && (v307 * 0.03) < 0.1)
        {
          break;
        }
      }

      v302 += 112;
      ++v300;
      if (v301 == v303)
      {
        goto LABEL_419;
      }
    }

    v308 = v297 + 112 * v300;
    v309 = v300 + 1;
    v310 = *(*(v308 + 32) + 8);
    v311 = v297 + 112 * v303;
    v313 = *(v311 + 32);
    v312 = v311 + 32;
    v314 = *(v313 + 8);
    if (v314 >= v310)
    {
      v315 = *(*(v308 + 32) + 8);
    }

    else
    {
      v315 = v314;
    }

    if (v310 > v314)
    {
      v314 = *(*(v308 + 32) + 8);
    }

    v448 = 0;
    *v449 = 0;
    *&v449[8] = 0;
    LODWORD(v478) = v315;
    v316 = v314 - v315 + 1;
    v317 = v315 + 1;
    do
    {
      sub_2621C7CD0(&v448, &v478);
      LODWORD(v478) = v317++;
      --v316;
    }

    while (v316);
    v318 = *(v308 + 32);
    v319 = v448;
    v320 = *v449;
    if (v448 == *v449)
    {
      v328 = -1;
    }

    else
    {
      v433 = v309;
      v321 = *(v318 + 12);
      v322 = *(*v312 + 44);
      v323 = *(a4 + 8);
      v324 = -1.0;
      v325 = -3.4028e38;
      v326 = v448;
      do
      {
        v327 = *v326;
        if ((*v326 & 0x80000000) == 0 && v327 < v323)
        {
          __p = &off_2874EEA00;
          *&v469[8] = 0;
          *&v469[12] = -1;
          *v469 = __PAIR64__(v321, v327);
          p_p = &off_2874EEA00;
          *&v459[8] = 0;
          *&v459[12] = -1;
          *v459 = __PAIR64__(v322, v327);
          v478 = &unk_2874EEA20;
          LOBYTE(v479[0]) = 0;
          BYTE4(v479[0]) = 0;
          BYTE8(v479[0]) = 0;
          BYTE12(v479[0]) = 0;
          LOBYTE(v479[1]) = 0;
          BYTE4(v479[1]) = 0;
          v480 = 0uLL;
          *(&v479[1] + 1) = 0;
          LODWORD(v481[0]) = 0;
          memset(&v481[1], 0, 48);
          sub_2623249D4(&v478, &__p, &p_p, a4);
          if (*v481 >= v325)
          {
            v324 = *(*(&v479[1] + 1) + 8);
            v325 = *v481;
          }

          sub_262206C54(&v478);
        }

        v326 = (v326 + 4);
      }

      while (v326 != v320);
      v328 = v324;
      v318 = *(v308 + 32);
      v309 = v433;
    }

    DWORD2(v479[0]) = 0;
    *(v479 + 12) = -1;
    v329 = *(v318 + 8);
    LODWORD(v329) = v328;
    v478 = &off_2874EEA00;
    *&v479[0] = v329;
    __p = &off_2874EEA00;
    *&v469[8] = 0;
    *&v469[12] = -1;
    v330 = *(*v312 + 40);
    LODWORD(v330) = v328;
    *v469 = v330;
    sub_2623249D4(v308, &v478, &__p, a4);
    v331 = *(v436 + 8) + 112 * v309;
    v332 = sub_262206CCC(v331 + 112, *(v436 + 16), v331);
    v333 = *(v436 + 16);
    if (v333 != v332)
    {
      v334 = v333 - 112;
      v335 = (v333 - 112);
      v336 = (v333 - 112);
      do
      {
        v337 = *v336;
        v336 -= 14;
        (*v337)(v335);
        v334 -= 112;
        v147 = v335 == v332;
        v335 = v336;
      }

      while (!v147);
      v319 = v448;
    }

    *(v436 + 16) = v332;
    sub_262325754(v436);
    if (v319)
    {
      operator delete(v319);
    }
  }

LABEL_419:
  v338 = &unk_2874EEA20;
  v339 = 0uLL;
LABEL_420:
  v478 = v338;
  LOBYTE(v479[0]) = 0;
  BYTE4(v479[0]) = 0;
  BYTE8(v479[0]) = 0;
  BYTE12(v479[0]) = 0;
  LOBYTE(v479[1]) = 0;
  BYTE4(v479[1]) = 0;
  v480 = 0uLL;
  *(&v479[1] + 1) = 0;
  LODWORD(v481[0]) = 0;
  *&v481[1] = v339;
  *&v481[3] = v339;
  *&v481[5] = v339;
  v340 = -1227133513 * ((v298 - v297) >> 4);
  if (v340 > 1)
  {
    v422 = v338;
    v341 = 0;
    v342 = 0;
    v343 = (v340 - 1);
    v344 = 1;
    do
    {
      v345 = *v437;
      v346 = v342 + 1;
      v347 = *v437 + v341;
      v348 = *(v347 + 32);
      v349 = *(v348 + 40);
      v350 = *(v347 + 144);
      v351 = *(v350 + 8);
      v352 = v349 - v351;
      if (v349 - v351 < 0)
      {
        v352 = v351 - v349;
      }

      if (v352 <= 2)
      {
        v353 = *(v348 + 8);
        v354 = v353 - v349;
        if (v353 - v349 < 0)
        {
          v354 = v349 - v353;
        }

        if (v354 >= 3)
        {
          v355 = *(v350 + 40);
          v356 = v351 - v355;
          if (v351 - v355 < 0)
          {
            v356 = v355 - v351;
          }

          if (v356 >= 3)
          {
            v357 = v353 < v349 && v349 < v355;
            if (v357 || (v353 > v349 ? (v358 = v349 <= v355) : (v358 = 1), !v358))
            {
              v434 = v353;
              v428 = v355;
              __p = &unk_2874EEA20;
              v469[0] = 0;
              v469[4] = 0;
              v469[8] = 0;
              v469[12] = 0;
              v469[16] = 0;
              v469[20] = 0;
              v471 = 0;
              v472 = 0;
              v470 = 0;
              v473 = 0.0;
              v474 = v339;
              v475 = v339;
              v476 = v339;
              sub_2623249D4(&__p, *(v347 + 32), *(v347 + 144) + 32, v296);
              v359 = *(v347 + 32);
              v360 = v359[1];
              v361 = v360.i32[0];
              v362 = v359[5];
              v363 = vcvt_f32_s32(vzip2_s32(v362, v360));
              v364 = v362.i32[0];
              if (vabds_f32(v363.f32[0], v363.f32[1]) >= 0.000001)
              {
                v365 = (((*(*(v347 + 144) + 44) - v363.f32[1]) * (v364 - v361)) / (v363.f32[0] - v363.f32[1])) + v361;
              }

              else
              {
                v365 = (v361 + v364) * 0.5;
              }

              v366 = v365;
              p_p = &unk_2874EEA20;
              v459[0] = 0;
              v459[4] = 0;
              v459[8] = 0;
              v459[12] = 0;
              v459[16] = 0;
              v459[20] = 0;
              v461 = 0;
              v462 = 0;
              v460 = 0;
              v463 = 0.0;
              v464 = 0u;
              v465 = 0u;
              v466 = 0u;
              v444 = &off_2874EEA00;
              LODWORD(v446[0]) = 0;
              *(v446 + 4) = -1;
              v367 = *(*(v347 + 144) + 40);
              LODWORD(v367) = v366;
              v445 = v367;
              sub_2623249D4(&p_p, *(v347 + 32), &v444, v296);
              v368 = *(v347 + 144);
              v369 = v368[1];
              v370 = v369.i32[0];
              v371 = v368[5];
              v372 = vcvt_f32_s32(vzip2_s32(v371, v369));
              v373 = v371.i32[0];
              if (vabds_f32(v372.f32[0], v372.f32[1]) >= 0.000001)
              {
                v374 = (((*(*(v347 + 32) + 12) - v372.f32[1]) * (v373 - v370)) / (v372.f32[0] - v372.f32[1])) + v370;
              }

              else
              {
                v374 = (v370 + v373) * 0.5;
              }

              v375 = v374;
              v448 = &unk_2874EEA20;
              v449[0] = 0;
              v449[4] = 0;
              v449[8] = 0;
              v449[12] = 0;
              v449[16] = 0;
              v449[20] = 0;
              v451 = 0;
              v452 = 0;
              v450 = 0;
              v453 = 0.0;
              v454 = 0u;
              v455 = 0u;
              v456 = 0u;
              v440 = &off_2874EEA00;
              LODWORD(v442[0]) = 0;
              *(v442 + 4) = -1;
              v376 = *(*(v347 + 32) + 8);
              LODWORD(v376) = v375;
              v441 = v376;
              sub_2623249D4(&v448, &v440, *(v347 + 144) + 32, v296);
              if (v473 >= v463)
              {
                v479[0] = *v469;
                *(v479 + 13) = *&v469[13];
                sub_26220676C(&v479[1] + 1, v470, v471, (v471 - v470) >> 5);
                *v481 = v473;
                sub_2621CA9DC(&v481[1], v474, *(&v474 + 1), (*(&v474 + 1) - v474) >> 2);
                v378 = &v476;
                v377 = &v475 + 1;
              }

              else
              {
                v479[0] = *v459;
                *(v479 + 13) = *&v459[13];
                sub_26220676C(&v479[1] + 1, v460, v461, (v461 - v460) >> 5);
                *v481 = v463;
                sub_2621CA9DC(&v481[1], v464, *(&v464 + 1), (*(&v464 + 1) - v464) >> 2);
                v378 = &v466;
                v377 = &v465 + 1;
              }

              sub_2622069E0(&v481[4], *v377, *v378, (*v378 - *v377) >> 4);
              v379 = *v481;
              if (v453 >= *v481)
              {
                v479[0] = *v449;
                *(v479 + 13) = *&v449[13];
                sub_26220676C(&v479[1] + 1, v450, v451, (v451 - v450) >> 5);
                *v481 = v453;
                sub_2621CA9DC(&v481[1], v454, *(&v454 + 1), (*(&v454 + 1) - v454) >> 2);
                sub_2622069E0(&v481[4], *(&v455 + 1), v456, (v456 - *(&v455 + 1)) >> 4);
                v379 = *v481;
              }

              v380 = *(v345 + v341 + 168);
              if (v380 >= *(v345 + v341 + 56))
              {
                v380 = *(v345 + v341 + 56);
              }

              v296 = a4;
              if (v379 >= 0.3 || (v379 - v380) >= -0.1)
              {
                v381 = *(*(&v479[1] + 1) + 8);
                v382 = v381.i32[0];
                v383 = *(*(&v479[1] + 1) + 40);
                v384 = v381.i32[0];
                v385 = vcvt_f32_s32(vzip2_s32(v383, v381));
                v386 = v383.i32[0];
                if (vabds_f32(v385.f32[0], v385.f32[1]) >= 0.000001)
                {
                  v389 = v385.f32[0] - v385.f32[1];
                  v390 = *(v347 + 32);
                  v391 = v386 - v382;
                  v385.f32[0] = (((*(v390 + 12) - v385.f32[1]) * (v386 - v382)) / (v385.f32[0] - v385.f32[1])) + v382;
                  v387 = (((*(v390 + 44) - v385.f32[1]) * (v386 - v382)) / v389) + v382;
                  v388 = (((*(*(v347 + 144) + 44) - v385.f32[1]) * v391) / v389) + v382;
                }

                else
                {
                  v387 = (v382 + v386) * 0.5;
                  v385.f32[0] = v387;
                  v388 = v387;
                }

                if ((vabds_f32(v385.f32[0], v434) <= 3.0 || *(*(v347 + 32) + 16) <= 0.1) && (vabds_f32(v387, v349) <= 3.0 || *(*(v347 + 32) + 48) <= 0.1) && (vabds_f32(v387, v351) <= 3.0 || *(*(v347 + 144) + 16) <= 0.1) && (vabds_f32(v388, v428) <= 3.0 || *(*(v347 + 144) + 48) <= 0.1) && (v384 & 0x80000000) == 0 && (*(*(&v479[1] + 1) + 40) & 0x80000000) == 0)
                {
                  v392 = *(a4 + 8);
                  if (v392 > v384 && v392 > v383.u32[0])
                  {
                    sub_262206C54(&v448);
                    sub_262206C54(&p_p);
                    sub_262206C54(&__p);
                    v393 = *v437 + 112 * v342;
                    v394 = v479[0];
                    *(v393 + 21) = *(v479 + 13);
                    *(v393 + 8) = v394;
                    if (v393 == &v478)
                    {
                      *(v393 + 56) = v481[0];
                    }

                    else
                    {
                      sub_26220676C((v393 + 32), *(&v479[1] + 1), v480, (v480 - *(&v479[1] + 1)) >> 5);
                      *(v393 + 56) = v481[0];
                      sub_2621CA9DC((v393 + 64), v481[1], v481[2], (v481[2] - v481[1]) >> 2);
                      sub_2622069E0((v393 + 88), v481[4], v481[5], (v481[5] - v481[4]) >> 4);
                    }

                    v395 = *(v436 + 8) + 112 * v346;
                    v396 = sub_262206CCC(v395 + 112, *(v436 + 16), v395);
                    v397 = *(v436 + 16);
                    if (v397 != v396)
                    {
                      v398 = v397 - 112;
                      v399 = (v397 - 112);
                      v400 = (v397 - 112);
                      do
                      {
                        v401 = *v400;
                        v400 -= 14;
                        (*v401)(v399);
                        v398 -= 112;
                        v147 = v399 == v396;
                        v399 = v400;
                      }

                      while (!v147);
                    }

                    *(v436 + 16) = v396;
                    sub_262325754(v436);
                    sub_262206C54(&v478);
                    if (!v344)
                    {
                      goto LABEL_482;
                    }

                    v297 = *(v436 + 8);
                    v298 = *(v436 + 16);
                    v338 = v422;
                    v339 = 0uLL;
                    goto LABEL_420;
                  }
                }
              }

              sub_262206C54(&v448);
              sub_262206C54(&p_p);
              sub_262206C54(&__p);
              v339 = 0uLL;
            }
          }
        }
      }

      v344 = v346 < v343;
      v341 += 112;
      ++v342;
    }

    while (v343 != v346);
  }

  sub_262206C54(&v478);
LABEL_482:
  v403 = *(v436 + 8);
  v402 = *(v436 + 16);
  if (v403 != v402)
  {
    do
    {
      sub_2621FD3E8(v403, a5);
      v403 += 112;
    }

    while (v403 != v402);
    v403 = *(v436 + 8);
    v402 = *(v436 + 16);
  }

  for (; v403 != v402; v403 += 112)
  {
    LODWORD(v439) = 2;
    __p = 0x1500000000;
    *v469 = 1;
    sub_2621FF644(&v478, a5 + 720, &__p);
    p_p = 0xD00000008;
    *v459 = 1;
    sub_2621FF644(&__p, a5 + 720, &p_p);
    LODWORD(v444) = 0;
    sub_2621FF6F0(&v448, &v478, &v444);
    sub_262200630(&p_p, &v448);
    v448 = &unk_2874EE7C8;
    if (v457)
    {
      sub_2621D1B78(v457);
    }

    LODWORD(v440) = 0;
    sub_2621FF6F0(&v444, &__p, &v440);
    sub_262200630(&v448, &v444);
    v444 = &unk_2874EE7C8;
    if (v447)
    {
      sub_2621D1B78(v447);
    }

    sub_262200884(&v440, a5 + 872, &v439);
    sub_262200630(&v444, &v440);
    v440 = &unk_2874EE7C8;
    if (v443)
    {
      sub_2621D1B78(v443);
    }

    v404 = sub_262200B58(v403, &p_p);
    *(v403 + 8) = v404;
    *(v403 + 12) = BYTE4(v404);
    v405 = sub_262200B58(v403, &v448);
    *(v403 + 16) = v405;
    *(v403 + 20) = BYTE4(v405);
    v406 = sub_262200B58(v403, &v444);
    *(v403 + 24) = v406;
    *(v403 + 28) = BYTE4(v406);
    v444 = &unk_2874EE7C8;
    if (v447)
    {
      sub_2621D1B78(v447);
    }

    v448 = &unk_2874EE7C8;
    if (v457)
    {
      sub_2621D1B78(v457);
    }

    p_p = &unk_2874EE7C8;
    if (v467)
    {
      sub_2621D1B78(v467);
    }

    __p = &unk_2874EEDA0;
    if (v477)
    {
      sub_2621D1B78(v477);
    }

    v478 = &unk_2874EEDA0;
    if (v483)
    {
      sub_2621D1B78(v483);
    }
  }
}

void sub_2621FA2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  a26 = &a45;
  sub_2621FF4B4(&a26);
  sub_262206C54(&STACK[0x2E8]);
  sub_262206C54(&STACK[0x380]);
  *a22 = &unk_2874EEB30;
  STACK[0x250] = a23;
  sub_2621FF4B4(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_2621FA6FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v325 = *MEMORY[0x277D85DE8];
  v285 = 0uLL;
  v286 = 0;
  v4 = a3[1];
  v272 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_27;
  }

  v268 = a1;
  v5 = 0;
  v6 = a3[2];
  v7 = v6 - 1;
  v271 = a3[18];
  v8 = *(a2 + 32);
  v9 = v8 - 1;
  v10 = v6;
  v273 = a3[1] & 0x7FFFFFFFLL;
  v274 = v6;
  v11 = 4 * v6;
  v270 = 1 - v8;
  v275 = 1 - v8;
  do
  {
    if (v274 >= 1)
    {
      v12 = 0;
      v13 = v9 + v5;
      if (v9 + v5 >= v272)
      {
        v13 = v272;
      }

      v14 = v13;
      v15 = v270;
      do
      {
        v16 = *(v271 + 4 * (v5 * v274) + 4 * v12);
        if (v16 >= 0.1)
        {
          if (((v5 - v9) & ~((v5 - v9) >> 31)) <= v14)
          {
            v18 = v15 & ~(v15 >> 31);
            v19 = v18 - 1;
            v20 = v271 + v11 * (v275 & ~(v275 >> 31)) + 4 * v18;
            if (v9 + v12 >= v7)
            {
              v21 = v7;
            }

            else
            {
              v21 = v9 + v12;
            }

            v17 = -3.4028e38;
            v22 = v275 & ~(v275 >> 31);
            do
            {
              v23 = v20;
              v24 = v19;
              if (((v12 - v9) & ~((v12 - v9) >> 31)) <= v21)
              {
                do
                {
                  v25 = *v23++;
                  v26 = v25;
                  if (v25 > v17)
                  {
                    v17 = v26;
                  }

                  ++v24;
                }

                while (v24 < v21);
              }

              v20 += v11;
              v68 = v22++ < v14;
            }

            while (v68);
          }

          else
          {
            v17 = -3.4028e38;
          }

          if (vabds_f32(v16, v17) <= 1.0e-10)
          {
            __p = &off_2874EEA00;
            *(v315 + 12) = -1;
            *(v315 + 2) = v16;
            *&v315[0] = __PAIR64__(v12, v5);
            sub_26220883C(&v285, &__p);
          }
        }

        ++v12;
        ++v15;
      }

      while (v12 != v10);
    }

    ++v5;
    ++v275;
  }

  while (v5 != v273);
  a1 = v268;
  if (*(&v285 + 1) == v285)
  {
LABEL_27:
    *a1 = &unk_2874EEB30;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v290 = 0;
    v291 = 0;
    v292 = 0;
    v27 = *(a2 + 16);
    v277 = *(a2 + 20);
    v322[0] = 1;
    sub_262229664(&v302, v322);
    memset(v315, 0, sizeof(v315));
    v316 = 0u;
    memset(v317, 0, 48);
    v319 = 0;
    __p = &unk_2874EF0B8;
    v318 = 0;
    v320 = 257;
    v28 = *(a4 + 120);
    v29 = *(a4 + 128);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = v319;
      v318 = v28;
      v319 = v29;
      if (v30)
      {
        sub_2621D1B78(v30);
      }
    }

    else
    {
      v318 = *(a4 + 120);
      v319 = 0;
    }

    v31 = 0;
    v32 = *(a4 + 104);
    *&v317[48] = v32;
    v33 = *(a4 + 8 + 8 * *&v303[0]);
    *&v315[0] = *(a4 + 8 + 8 * v302);
    *(&v315[0] + 1) = v33;
    v34 = *(a4 + 56 + 8 * *&v303[0]);
    *v317 = *(a4 + 56 + 8 * v302);
    *&v317[8] = v34;
    HIBYTE(v320) = 0;
    v35 = 1;
    while (1)
    {
      v36 = *(v315 + v31 + 8);
      if (v36 != 1)
      {
        break;
      }

LABEL_33:
      v31 -= 8;
      if (v31 == -16)
      {
        v37 = 1;
        goto LABEL_36;
      }
    }

    if (*&v317[v31 + 8] == v35)
    {
      v35 *= v36;
      goto LABEL_33;
    }

    v37 = 0;
LABEL_36:
    LOBYTE(v320) = v37;
    v321 = *v318 + 4 * *(&v32 + 1);
    sub_26222F7C4(&v298, &__p);
    __p = &unk_2874EF0B8;
    if (v319)
    {
      sub_2621D1B78(v319);
    }

    v295 = 0;
    v296 = 0;
    v297 = 0;
    v294 = 0;
    v282 = *v299;
    if (*v299 < 1)
    {
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = MEMORY[0x277D82670];
      do
      {
        sub_262208568(v322, &v298, &v294);
        sub_262229F7C(&__p, v322);
        if (HIBYTE(v320) == 1)
        {
          sub_2621D552C(v40, "runtime_err in ", 15);
          sub_2621D552C(v40, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v40, " ", 1);
          v41 = MEMORY[0x266727260](v40, 963);
          sub_2621D552C(v41, " ", 1);
          sub_2621D552C(v41, "ascontiguous", 12);
          std::ios_base::getloc((v41 + *(*v41 - 24)));
          v42 = std::locale::use_facet(&v313, MEMORY[0x277D82680]);
          (v42->__vftable[2].~facet_0)(v42, 10);
          std::locale::~locale(&v313);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D6874("err", "empty tensor");
          std::ios_base::getloc((v40 + *(*v40 - 24)));
          v43 = std::locale::use_facet(&v313, MEMORY[0x277D82680]);
          (v43->__vftable[2].~facet_0)(v43, 10);
          std::locale::~locale(&v313);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v320 == 1)
        {
          sub_262229F7C(&v302, &__p);
        }

        else
        {
          sub_2622CBAA4(&v302, &__p);
        }

        *v317 = v305;
        *&v317[16] = v306;
        *&v317[32] = v307;
        *&v317[48] = v308;
        v315[0] = v303[0];
        v315[1] = v303[1];
        v316 = v304;
        v45 = v309;
        v44 = v310;
        if (v310)
        {
          atomic_fetch_add_explicit(&v310->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = v319;
        v318 = v45;
        v319 = v44;
        if (v46)
        {
          sub_2621D1B78(v46);
        }

        v321 = v312;
        v320 = v311;
        v302 = &unk_2874EF6A8;
        if (v310)
        {
          sub_2621D1B78(v310);
        }

        if (*&v317[48])
        {
          v47 = 0;
          v48 = -3.4028e38;
          v49 = *&v317[48];
          do
          {
            if (*(v321 + 4 * v47) > v48)
            {
              v48 = *(v321 + 4 * v47);
              v49 = v47;
            }

            ++v47;
          }

          while (*&v317[48] != v47);
        }

        else
        {
          v49 = 0;
        }

        __p = &unk_2874EF6A8;
        if (v319)
        {
          sub_2621D1B78(v319);
        }

        v293 = v49;
        v50 = sub_2622CB6CC(v322, &v293);
        LODWORD(v51) = -1.0;
        if (*v50 > v27)
        {
          sub_2621C7CD0(&v295, &v294);
          *&v51 = v49;
        }

        *(&v51 + 1) = v38;
        v52 = v39;
        v53 = v39 >> 3;
        if (((v39 >> 3) + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        if (v39 >> 3 != -1)
        {
          sub_2621CBEC8((v39 >> 3) + 1);
        }

        *(8 * v53) = v51;
        v39 = 8 * v53 + 8;
        memcpy(0, 0, v52);
        v322[0] = &unk_2874EF6A8;
        if (v324)
        {
          sub_2621D1B78(v324);
        }

        v38 = v294 + 1;
        v294 = v38;
      }

      while (v38 < v282);
      v55 = v295;
      v54 = v296;
    }

    if ((v54 - v55) >= 5)
    {
      v56 = *v55;
      v57 = *(v54 - 1);
      if (v57 + 1 < v282)
      {
        v58 = v57 + 1;
      }

      else
      {
        v58 = v282;
      }

      if (v58 > v56)
      {
        v59 = v58 - v56;
        v60 = (8 * v56);
        do
        {
          sub_2621CBA84(&v290, v60++);
          --v59;
        }

        while (v59);
      }

      v61 = (v291 - v290) >> 3;
      if (v61 >= 3)
      {
        v62 = (v61 - 1) - 1;
        v63 = v290 + 1;
        do
        {
          v64 = v63[-1];
          if (v64.f32[0] >= 0.0)
          {
            v65 = v63[1];
            if (v65.f32[0] >= 0.0)
            {
              v66 = *v63;
              v67 = fabsf(vsub_f32(*v63, v65).f32[0]);
              v68 = v277 < fabsf(vsub_f32(*v63, v64).f32[0]) && v277 < v67;
              if (v68)
              {
                v66.i32[0] = -1.0;
                *v63 = v66;
              }
            }
          }

          ++v63;
          --v62;
        }

        while (v62);
      }
    }

    if (v55)
    {
      operator delete(v55);
    }

    v298 = &unk_2874EF0B8;
    if (v301)
    {
      sub_2621D1B78(v301);
    }

    v69 = v290;
    v70 = v291;
    if ((v291 - v290) > 0x10)
    {
      v302 = 0;
      v303[0] = 0uLL;
      v298 = *v290;
      *v299 = *(v291 - 1);
      sub_2622CBB0C(a2 + 8, &v302, &v298, &v290);
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v135 = v302;
      v134 = *&v303[0];
      if (v302 != *&v303[0])
      {
        v136 = v290;
        do
        {
          v137 = *(v135 + 1);
          v138 = (*(v135 + 3) + 1.0);
          v315[0] = 0uLL;
          __p = 0;
          LODWORD(v322[0]) = v137;
          if (v137 >= v138)
          {
            v141 = 0;
            v140 = 0;
          }

          else
          {
            do
            {
              if (v136 != v70)
              {
                v139 = v136;
                while (vabds_f32(COERCE_FLOAT(HIDWORD(*v139)), v137) >= 0.0000001 || fabsf(COERCE_FLOAT(*v139) + 1.0) <= 0.0000001)
                {
                  if (++v139 == v70)
                  {
                    goto LABEL_202;
                  }
                }

                sub_2621C7CD0(&__p, v322);
              }

LABEL_202:
              LODWORD(v322[0]) = ++v137;
            }

            while (v137 != v138);
            v140 = *&v315[0];
            v141 = __p;
          }

          if ((*(a2 + 24) * ((v140 - v141) >> 2)) >= *(a2 + 28))
          {
            sub_2621DE070(&v287, v135);
          }

          if (v141)
          {
            operator delete(v141);
          }

          v135 += 2;
        }

        while (v135 != v134);
        v135 = v302;
      }

      if (v135)
      {
        *&v303[0] = v135;
        operator delete(v135);
      }

      v69 = v290;
      if (v290)
      {
LABEL_94:
        operator delete(v69);
      }
    }

    else
    {
      v287 = 0;
      v288 = 0;
      v289 = 0;
      if (v290)
      {
        goto LABEL_94;
      }
    }

    v322[1] = 0;
    v322[0] = 0;
    v323 = 0;
    v72 = v287;
    v71 = v288;
    if (v287 != v288)
    {
      v73 = v287;
      do
      {
        v302 = &off_2874EEA00;
        DWORD2(v303[0]) = 0;
        *(v303 + 12) = -1;
        *&v303[0] = vcvt_s32_f32(*v73);
        v298 = &off_2874EEA00;
        *&v299[8] = 0;
        *&v299[12] = -1;
        *v299 = vcvt_s32_f32(v73[1]);
        __p = &unk_2874EEA20;
        LOBYTE(v315[0]) = 0;
        BYTE4(v315[0]) = 0;
        BYTE8(v315[0]) = 0;
        BYTE12(v315[0]) = 0;
        LOBYTE(v315[1]) = 0;
        BYTE4(v315[1]) = 0;
        v316 = 0uLL;
        *(&v315[1] + 1) = 0;
        *v317 = 0;
        memset(&v317[8], 0, 48);
        sub_2623249D4(&__p, &v302, &v298, a4);
        v74 = *(*(&v315[1] + 1) + 8) - *(*(&v315[1] + 1) + 40);
        if (v74 < 0)
        {
          v74 = *(*(&v315[1] + 1) + 40) - *(*(&v315[1] + 1) + 8);
        }

        if (v74 >= 0xB && *v317 > 0.3)
        {
          sub_262206F74(v322, &__p);
        }

        sub_262206C54(&__p);
        v73 += 2;
      }

      while (v73 != v71);
      v278 = v322[1];
      if (v322[0] != v322[1])
      {
        v75 = v322[0];
        do
        {
          v280 = v75;
          v77 = v75[4];
          v76 = v75[5];
          v283 = v76;
          while (v77 != v76)
          {
            if (v285 != *(&v285 + 1))
            {
              v78 = vsub_f32(vcvt_f32_s32(v77[1]), vcvt_f32_s32(*(v285 + 8)));
              sub_2621C7F54(1uLL);
            }

            sub_26220883C(&v285, v77);
            v77 += 4;
            v76 = v283;
          }

          v75 = v280 + 14;
        }

        while (v280 + 14 != v278);
        v72 = v287;
      }
    }

    __p = v322;
    sub_2621FF4B4(&__p);
    if (v72)
    {
      operator delete(v72);
    }

    v79 = *(&v285 + 1);
    v80 = v285;
    if (*(&v285 + 1) != v285)
    {
      v81 = 0;
      v298 = 0;
      *v299 = 0;
      *&v299[8] = 0;
      do
      {
        v82 = v80 + 32 * v81;
        if (v79 != v80)
        {
          for (i = 0; i < (v79 - v80) >> 5; ++i)
          {
            if (v81 != i)
            {
              v84 = v80 + 32 * i;
              v85 = *(v84 + 8) - *(v82 + 8);
              if (v85 < 0)
              {
                v85 = *(v82 + 8) - *(v84 + 8);
              }

              if (v85 <= 2)
              {
                __p = &unk_2874EEA20;
                LOBYTE(v315[0]) = 0;
                BYTE4(v315[0]) = 0;
                BYTE8(v315[0]) = 0;
                BYTE12(v315[0]) = 0;
                LOBYTE(v315[1]) = 0;
                BYTE4(v315[1]) = 0;
                v316 = 0uLL;
                *(&v315[1] + 1) = 0;
                *v317 = 0;
                memset(&v317[8], 0, 48);
                sub_2623249D4(&__p, v82, v84, a4);
                v86 = *&v317[8];
                if (*&v317[16] != *&v317[8])
                {
                  v87 = 0;
                  do
                  {
                    v88 = *v86++;
                    if (v88 > 0.1)
                    {
                      ++v87;
                    }
                  }

                  while (v86 != *&v317[16]);
                  if ((v87 / ((*&v317[16] - *&v317[8]) >> 2)) > 0.8)
                  {
                    sub_262206C54(&__p);
                    goto LABEL_181;
                  }
                }

                sub_262206C54(&__p);
                v79 = *(&v285 + 1);
                v80 = v285;
              }
            }
          }
        }

        v89 = *(v82 + 8);
        v90 = v89;
        if ((v89 & 0x80000000) == 0 && v89 < *(a4 + 8))
        {
          v91 = HIDWORD(*(v82 + 8));
          v92 = *(a4 + 16);
          v93 = *(a4 + 144);
          v94 = SHIDWORD(v89);
          if (HIDWORD(v89) + 1 > v92)
          {
            v95 = HIDWORD(v89) + 1;
          }

          else
          {
            v95 = *(a4 + 16);
          }

          v96 = v95 - 1;
          v97 = v93 + 4 * v89 * v92 + 4;
          while (1)
          {
            v98 = v94 + 1;
            if (v94 + 1 >= v92)
            {
              break;
            }

            v99 = *(v97 + 4 * v94++);
            if (v99 < 0.3)
            {
              v96 = v98 - 1;
              v95 = v98;
              break;
            }
          }

          if (v96 - 2 <= SHIDWORD(v89))
          {
            v100 = HIDWORD(*(v82 + 8));
          }

          else
          {
            v100 = v96 - 2;
          }

          if ((v100 & 0x80000000) == 0 && v96 < v92 && v96 >= -1 && v100 < v92)
          {
            LODWORD(v302) = v90;
            sub_262208568(&__p, a4, &v302);
            v101 = v95 - v100;
            if (v91 == v95)
            {
              v102 = -1;
            }

            else
            {
              v103 = 0;
              if (v101 <= 1)
              {
                v105 = 1;
              }

              else
              {
                v105 = v101;
              }

              v102 = -1;
              v106 = -3.4028e38;
              do
              {
                v104 = v321 + 4 * v100;
                if (*(v104 + 4 * v103) > v106)
                {
                  v106 = *(v104 + 4 * v103);
                  v102 = v103;
                }

                ++v103;
              }

              while (v105 != v103);
            }

            if (v102 + v100 - v91 > 9)
            {
              v302 = &off_2874EEA00;
              DWORD2(v303[0]) = 0;
              *(v303 + 12) = -1;
              v107 = *(v82 + 8);
              HIDWORD(v107) = v102 + v100;
              *&v303[0] = v107;
              sub_26220883C(&v298, &v302);
            }

            v108 = HIDWORD(*(v82 + 8));
            v109 = v108 & (v108 >> 63);
            v110 = v108;
            while (1)
            {
              v111 = v110;
              v68 = v110-- < 1;
              if (v68)
              {
                break;
              }

              if (*(v93 + 4 * (*(v82 + 8) * v92) - 4 + 4 * v111) < 0.3)
              {
                if (v108 >= v111 + 2)
                {
                  v112 = v111 + 2;
                }

                else
                {
                  v112 = HIDWORD(*(v82 + 8));
                }

                LODWORD(v109) = v111;
LABEL_168:
                if (v109 < v92 && v112 >= -1 && v112 < v92)
                {
                  v113 = v112 - v109;
                  v114 = __CFADD__(v113, 1);
                  v115 = (v113 + 1);
                  if (v114)
                  {
                    v118 = -1;
                  }

                  else
                  {
                    v116 = 0;
                    v118 = -1;
                    v119 = -3.4028e38;
                    do
                    {
                      v117 = v321 + 4 * v109;
                      if (*(v117 + 4 * v116) > v119)
                      {
                        v119 = *(v117 + 4 * v116);
                        v118 = v116;
                      }

                      ++v116;
                    }

                    while (v115 != v116);
                  }

                  v120 = v118 + v109;
                  if (v108 - v120 > 9)
                  {
                    v302 = &off_2874EEA00;
                    DWORD2(v303[0]) = 0;
                    *(v303 + 12) = -1;
                    v121 = *(v82 + 8);
                    HIDWORD(v121) = v120;
                    *&v303[0] = v121;
                    sub_26220883C(&v298, &v302);
                  }
                }

                goto LABEL_179;
              }
            }

            v112 = v109 + 2;
            if (v108 < v109 + 2)
            {
              v112 = HIDWORD(*(v82 + 8));
            }

            if ((v108 & 0x80000000) == 0)
            {
              goto LABEL_168;
            }

LABEL_179:
            __p = &unk_2874EF6A8;
            if (v319)
            {
              sub_2621D1B78(v319);
            }
          }
        }

LABEL_181:
        ++v81;
        v79 = *(&v285 + 1);
        v80 = v285;
      }

      while (v81 < (*(&v285 + 1) - v285) >> 5);
      v123 = v298;
      v122 = *v299;
      while (v123 != v122)
      {
        sub_26220883C(&v285, v123);
        v123 += 32;
      }

      __p = &v298;
      sub_262206D98(&__p);
      v124 = v285;
      v125 = *(&v285 + 1);
      v126 = v285;
      v127 = *(&v285 + 1) - v285;
      if (*(&v285 + 1) != v285)
      {
        v128 = v127 >> 5;
        if (v127 >> 5 < 1)
        {
          v133 = 0;
          v130 = 0;
        }

        else
        {
          v129 = MEMORY[0x277D826F0];
          v130 = v127 >> 5;
          while (1)
          {
            v131 = operator new(32 * v130, v129);
            if (v131)
            {
              break;
            }

            v132 = v130 >> 1;
            v68 = v130 > 1;
            v130 >>= 1;
            if (!v68)
            {
              v133 = 0;
              v130 = v132;
              goto LABEL_217;
            }
          }

          v133 = v131;
        }

LABEL_217:
        sub_2622076E0(v126, v125, v128, v133, v130, v124);
        if (v133)
        {
          operator delete(v133);
        }

        v295 = 0;
        v296 = 0;
        v297 = 0;
        v142 = *(&v285 + 1);
        v143 = v285;
        if (*(&v285 + 1) != v285)
        {
          v144 = 0;
          v145 = 1;
          v146 = 32;
          do
          {
            v147 = v144 + 1;
            v148 = (v142 - v143) >> 5;
            if (v148 > v144 + 1)
            {
              v149 = v146;
              v150 = v145;
              do
              {
                __p = &unk_2874EEA20;
                LOBYTE(v315[0]) = 0;
                BYTE4(v315[0]) = 0;
                BYTE8(v315[0]) = 0;
                BYTE12(v315[0]) = 0;
                LOBYTE(v315[1]) = 0;
                BYTE4(v315[1]) = 0;
                v316 = 0uLL;
                *(&v315[1] + 1) = 0;
                *v317 = 0;
                memset(&v317[8], 0, 48);
                sub_2623249D4(&__p, v143 + 32 * v144, v143 + v149, a4);
                sub_262206F74(&v295, &__p);
                sub_262206C54(&__p);
                ++v150;
                v142 = *(&v285 + 1);
                v143 = v285;
                v148 = (*(&v285 + 1) - v285) >> 5;
                v149 += 32;
              }

              while (v148 > v150);
            }

            ++v145;
            v146 += 32;
            ++v144;
          }

          while (v148 > v147);
        }

        memset(v303, 0, sizeof(v303));
        v304 = 0u;
        v302 = &unk_2874EE2D0;
        *&v305 = 0;
        v307 = 0uLL;
        *(&v306 + 1) = 0;
        DWORD2(v305) = 1065353216;
        LODWORD(v306) = 2;
        while (v143 != v142)
        {
          sub_26220883C(v303, v143);
          v143 += 32;
        }

        v151 = v295;
        v152 = v296;
        if (v295 != v296)
        {
LABEL_229:
          sub_2623250A8(&v298, *(*(v151 + 32) + 8), *(*(v151 + 32) + 40));
          v153 = sub_2621D1580(&v298);
          v154 = v153;
          v155 = v304;
          if (!v304)
          {
            goto LABEL_245;
          }

          v156 = vcnt_s8(*&v304);
          v156.i16[0] = vaddlv_u8(v156);
          v157 = v156.u32[0];
          if (v156.u32[0] > 1uLL)
          {
            v158 = v153;
            if (v153 >= v304)
            {
              v158 = v153 % v304;
            }
          }

          else
          {
            v158 = (v304 - 1) & v153;
          }

          v159 = *(*(&v303[1] + 1) + 8 * v158);
          if (!v159 || (v160 = *v159) == 0)
          {
LABEL_245:
            operator new();
          }

          while (1)
          {
            v161 = v160[1];
            if (v161 == v154)
            {
              if (sub_2621D19D0(v160 + 2, &v298))
              {
                v162 = *(v151 + 8);
                *(v160 + 61) = *(v151 + 21);
                *(v160 + 3) = v162;
                if (v160 + 5 == v151)
                {
                  *(v160 + 24) = *(v151 + 56);
                }

                else
                {
                  sub_26220676C(v160 + 9, *(v151 + 32), *(v151 + 40), (*(v151 + 40) - *(v151 + 32)) >> 5);
                  *(v160 + 24) = *(v151 + 56);
                  sub_2621CA9DC(v160 + 13, *(v151 + 64), *(v151 + 72), (*(v151 + 72) - *(v151 + 64)) >> 2);
                  sub_2622069E0(v160 + 16, *(v151 + 88), *(v151 + 96), (*(v151 + 96) - *(v151 + 88)) >> 4);
                }

                if ((v299[15] & 0x80000000) != 0)
                {
                  operator delete(v298);
                }

                v151 += 112;
                if (v151 == v152)
                {
                  break;
                }

                goto LABEL_229;
              }
            }

            else
            {
              if (v157 > 1)
              {
                if (v161 >= v155)
                {
                  v161 %= v155;
                }
              }

              else
              {
                v161 &= v155 - 1;
              }

              if (v161 != v158)
              {
                goto LABEL_245;
              }
            }

            v160 = *v160;
            if (!v160)
            {
              goto LABEL_245;
            }
          }
        }

        v163 = v306;
        v298 = 0;
        *v299 = 0;
        *&v299[8] = 0;
        v164 = *(&v303[0] + 1);
        v165 = *&v303[0];
        if (*&v303[0] == *(&v303[0] + 1))
        {
          LODWORD(v186) = 0;
        }

        else
        {
          v166 = 0;
          do
          {
            v167 = v298;
            v168 = *v299;
            if (*v299 == v298)
            {
              v171 = 0xAAAAAAAAAAAAAAABLL * ((*v299 - v298) >> 3);
LABEL_268:
              v165[5] = v166;
              v165[6] = v171;
              v322[1] = 0;
              v322[0] = 0;
              v323 = 0;
              sub_26220883C(v322, v165);
              v177 = *v299;
              if (*v299 >= *&v299[8])
              {
                v179 = 0xAAAAAAAAAAAAAAABLL * ((*v299 - v298) >> 3);
                v180 = v179 + 1;
                if (v179 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((*&v299[8] - v298) >> 3) > v180)
                {
                  v180 = 0x5555555555555556 * ((*&v299[8] - v298) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*&v299[8] - v298) >> 3) >= 0x555555555555555)
                {
                  v181 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v181 = v180;
                }

                *(&v315[1] + 1) = &v298;
                if (v181)
                {
                  if (v181 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v182 = (8 * ((*v299 - v298) >> 3));
                __p = 0;
                *&v315[0] = v182;
                *(&v315[0] + 1) = v182;
                *&v315[1] = 0;
                v182[1] = 0;
                v182[2] = 0;
                *v182 = 0;
                sub_2622074C0(24 * v179, v322[0], v322[1], (v322[1] - v322[0]) >> 5);
                v178 = *(&v315[0] + 1) + 24;
                v183 = (*&v315[0] - (*v299 - v298));
                memcpy(v183, v298, *v299 - v298);
                v184 = v298;
                v185 = *&v299[8];
                v298 = v183;
                *v299 = v178;
                *&v299[8] = *&v315[1];
                *(&v315[0] + 1) = v184;
                *&v315[1] = v185;
                *&v315[0] = v184;
                __p = v184;
                sub_262325C54(&__p);
              }

              else
              {
                **v299 = 0;
                *(v177 + 8) = 0;
                *(v177 + 16) = 0;
                sub_2622074C0(v177, v322[0], v322[1], (v322[1] - v322[0]) >> 5);
                v178 = v177 + 24;
              }

              ++v166;
              *v299 = v178;
              __p = v322;
              sub_262206D98(&__p);
            }

            else
            {
              v169 = 0;
              v170 = 0;
              do
              {
                v171 = 0xAAAAAAAAAAAAAAABLL * ((v168 - v167) >> 3);
                while (1)
                {
                  if (v170)
                  {
                    goto LABEL_281;
                  }

                  v172 = &v167[3 * v169];
                  v173 = *v172;
                  v174 = v172[1];
                  if (*v172 != v174)
                  {
                    break;
                  }

LABEL_263:
                  v170 = 0;
                  if (v171 <= ++v169)
                  {
                    goto LABEL_268;
                  }
                }

                while (1)
                {
                  v175 = v165[3];
                  v176 = *(v173 + 12) - v175;
                  if (v176 < 0)
                  {
                    v176 = v175 - *(v173 + 12);
                  }

                  if (v176 <= v163)
                  {
                    break;
                  }

                  v173 += 32;
                  if (v173 == v174)
                  {
                    goto LABEL_263;
                  }
                }

                v165[5] = v166;
                v165[6] = v169;
                sub_26220883C(v172, v165);
                ++v166;
                v167 = v298;
                v168 = *v299;
                ++v169;
                v170 = 1;
              }

              while (0xAAAAAAAAAAAAAAABLL * ((*v299 - v298) >> 3) > v169);
            }

LABEL_281:
            v165 += 8;
          }

          while (v165 != v164);
          v186 = 0xAAAAAAAAAAAAAAABLL * ((*v299 - v298) >> 3);
        }

        v187 = *(&v306 + 1);
        v188 = v307;
        while (v188 != v187)
        {
          v188 -= 24;
          __p = v188;
          sub_262207B54(&__p);
        }

        *&v307 = v187;
        if (v186 >= 1)
        {
          v189 = 0;
          do
          {
            v322[1] = 0;
            v322[0] = 0;
            v323 = 0;
            if ((v186 & 0x7FFFFFFF) != 0)
            {
              *(&v315[1] + 1) = v322;
              sub_262325A40(v186 & 0x7FFFFFFF);
            }

            v190 = v307;
            if (v307 >= *(&v307 + 1))
            {
              v192 = 0xAAAAAAAAAAAAAAABLL * ((v307 - *(&v306 + 1)) >> 3);
              v193 = v192 + 1;
              if (v192 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_2621CBEB0();
              }

              if (0x5555555555555556 * ((*(&v307 + 1) - *(&v306 + 1)) >> 3) > v193)
              {
                v193 = 0x5555555555555556 * ((*(&v307 + 1) - *(&v306 + 1)) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v307 + 1) - *(&v306 + 1)) >> 3) >= 0x555555555555555)
              {
                v194 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v194 = v193;
              }

              *(&v315[1] + 1) = &v306 + 8;
              if (v194)
              {
                if (v194 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_2621C6A34();
              }

              v195 = (8 * ((v307 - *(&v306 + 1)) >> 3));
              __p = 0;
              *&v315[0] = v195;
              *(&v315[0] + 1) = v195;
              *&v315[1] = 0;
              v195[1] = 0;
              v195[2] = 0;
              *v195 = 0;
              sub_2623257D8(24 * v192, v322[0], v322[1], 0xCCCCCCCCCCCCCCCDLL * ((v322[1] - v322[0]) >> 3));
              v191 = *(&v315[0] + 1) + 24;
              v196 = (*&v315[0] - (v307 - *(&v306 + 1)));
              memcpy(v196, *(&v306 + 1), v307 - *(&v306 + 1));
              v197 = *(&v306 + 1);
              v198 = *(&v307 + 1);
              *(&v306 + 1) = v196;
              *&v307 = v191;
              *(&v307 + 1) = *&v315[1];
              *(&v315[0] + 1) = v197;
              *&v315[1] = v198;
              *&v315[0] = v197;
              __p = v197;
              sub_26232595C(&__p);
            }

            else
            {
              *v307 = 0;
              *(v190 + 8) = 0;
              *(v190 + 16) = 0;
              sub_2623257D8(v190, v322[0], v322[1], 0xCCCCCCCCCCCCCCCDLL * ((v322[1] - v322[0]) >> 3));
              v191 = v190 + 24;
            }

            *&v307 = v191;
            __p = v322;
            sub_262207B54(&__p);
            ++v189;
          }

          while (v189 != v186);
        }

        v279 = *(&v303[0] + 1);
        v199 = *&v303[0];
        if (*&v303[0] != *(&v303[0] + 1))
        {
LABEL_305:
          v200 = *(&v303[0] + 1);
          for (j = *&v303[0]; ; j += 32)
          {
            if (j == v200)
            {
              v199 += 32;
              if (v199 == v279)
              {
                break;
              }

              goto LABEL_305;
            }

            if (*(v199 + 24) >= *(j + 24))
            {
              continue;
            }

            sub_2623250A8(v322, *(v199 + 8), *(j + 8));
            v202 = sub_2621D1580(v322);
            v203 = v202;
            v204 = v304;
            if (!v304)
            {
              goto LABEL_324;
            }

            v205 = vcnt_s8(*&v304);
            v205.i16[0] = vaddlv_u8(v205);
            v206 = v205.u32[0];
            if (v205.u32[0] > 1uLL)
            {
              v207 = v202;
              if (v202 >= v304)
              {
                v207 = v202 % v304;
              }
            }

            else
            {
              v207 = (v304 - 1) & v202;
            }

            v208 = *(*(&v303[1] + 1) + 8 * v207);
            if (!v208 || (v209 = *v208) == 0)
            {
LABEL_324:
              operator new();
            }

            while (1)
            {
              v210 = v209[1];
              if (v210 == v203)
              {
                break;
              }

              if (v206 > 1)
              {
                if (v210 >= v204)
                {
                  v210 %= v204;
                }
              }

              else
              {
                v210 &= v204 - 1;
              }

              if (v210 != v207)
              {
                goto LABEL_324;
              }

LABEL_323:
              v209 = *v209;
              if (!v209)
              {
                goto LABEL_324;
              }
            }

            if (!sub_2621D19D0(v209 + 2, v322))
            {
              goto LABEL_323;
            }

            if (SHIBYTE(v323) < 0)
            {
              operator delete(v322[0]);
            }

            __p = &unk_2874EEB30;
            memset(v315, 0, 28);
            v322[1] = 0;
            v322[0] = 0;
            v323 = 0;
            sub_262206F74(v322, (v209 + 5));
            sub_26232528C(&__p, v322);
            v211 = *(*(&v306 + 1) + 24 * *(v199 + 24)) + 40 * *(j + 24);
            if (*(v211 + 16) == *(v211 + 8) || *(v211 + 32) < *(&v315[1] + 2))
            {
              if (v211 != &__p)
              {
                sub_262325354((v211 + 8), *&v315[0], *(&v315[0] + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v315[0] + 1) - *&v315[0]) >> 4));
              }

              *(v211 + 32) = DWORD2(v315[1]);
            }

            v290 = v322;
            sub_2621FF4B4(&v290);
            __p = &unk_2874EEB30;
            v322[0] = v315;
            sub_2621FF4B4(v322);
          }
        }

        __p = &v298;
        sub_2623251F8(&__p);
        v213 = *(&v303[0] + 1);
        v212 = *&v303[0];
        if (*(&v303[0] + 1) == *&v303[0])
        {
          v241 = 0;
          v240 = 0;
          v239 = v268;
          *v268 = &unk_2874EEB30;
          *(v268 + 8) = 0;
          *(v268 + 16) = 0;
          *(v268 + 24) = 0;
          *(v268 + 32) = 0;
        }

        else
        {
          v214 = *(*&v303[0] + 24);
          v215 = *(*(&v303[0] + 1) - 8);
          do
          {
            v217 = *(&v303[0] + 1);
            for (k = *&v303[0]; k != v217; k += 32)
            {
              v218 = *(v212 + 24) == v214 && *(k + 24) == v215;
              if (v218)
              {
                sub_262325CB4(&v302, v212, k);
              }
            }

            v212 += 32;
          }

          while (v212 != v213);
          v298 = 0;
          *v299 = 0;
          *&v299[8] = 0;
          v281 = *(&v303[0] + 1);
          v219 = *&v303[0];
          if (*&v303[0] == *(&v303[0] + 1))
          {
            goto LABEL_377;
          }

          v220 = 0;
          do
          {
            v222 = *(&v303[0] + 1);
            for (m = *&v303[0]; m != v222; m += 32)
            {
              if (*(v219 + 24) == v214 && *(m + 24) == v215)
              {
                v223 = *(*(&v306 + 1) + 24 * v214) + 40 * v215;
                if (v220 >= *&v299[8])
                {
                  v224 = 0xCCCCCCCCCCCCCCCDLL * ((v220 - v298) >> 3);
                  v225 = v224 + 1;
                  if (v224 + 1 > 0x666666666666666)
                  {
                    sub_2621CBEB0();
                  }

                  if (0x999999999999999ALL * ((*&v299[8] - v298) >> 3) > v225)
                  {
                    v225 = 0x999999999999999ALL * ((*&v299[8] - v298) >> 3);
                  }

                  if (0xCCCCCCCCCCCCCCCDLL * ((*&v299[8] - v298) >> 3) >= 0x333333333333333)
                  {
                    v226 = 0x666666666666666;
                  }

                  else
                  {
                    v226 = v225;
                  }

                  *(&v315[1] + 1) = &v298;
                  if (v226)
                  {
                    sub_262325A40(v226);
                  }

                  v227 = 40 * v224;
                  __p = 0;
                  *&v315[0] = v227;
                  *(&v315[0] + 1) = v227;
                  *&v315[1] = 0;
                  *v227 = &unk_2874EEB30;
                  *(v227 + 8) = 0;
                  *(v227 + 16) = 0;
                  *(v227 + 24) = 0;
                  sub_2623259BC(v227 + 8, *(v223 + 8), *(v223 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(v223 + 16) - *(v223 + 8)) >> 4));
                  *(v227 + 32) = *(v223 + 32);
                  *(&v315[0] + 1) += 40;
                  v228 = v298 + *&v315[0] - *v299;
                  sub_262325A98(v298, *v299, v228);
                  v229 = v298;
                  v230 = *&v299[8];
                  v298 = v228;
                  v284 = *(&v315[0] + 1);
                  *v299 = *(v315 + 8);
                  *(&v315[0] + 1) = v229;
                  *&v315[1] = v230;
                  *&v315[0] = v229;
                  __p = v229;
                  sub_262325BE8(&__p);
                  v220 = v284;
                }

                else
                {
                  *v220 = &unk_2874EEB30;
                  *(v220 + 8) = 0;
                  *(v220 + 16) = 0;
                  *(v220 + 24) = 0;
                  sub_2623259BC(v220 + 8, *(v223 + 8), *(v223 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(v223 + 16) - *(v223 + 8)) >> 4));
                  *(v220 + 32) = *(v223 + 32);
                  v220 += 40;
                }

                *v299 = v220;
              }
            }

            v219 += 32;
          }

          while (v219 != v281);
          if (v220 == v298)
          {
LABEL_377:
            v239 = v268;
            *v268 = &unk_2874EEB30;
            *(v268 + 8) = 0;
            *(v268 + 16) = 0;
            *(v268 + 24) = 0;
            *(v268 + 32) = 0;
          }

          else
          {
            v231 = 0;
            if (0xCCCCCCCCCCCCCCCDLL * ((v220 - v298) >> 3) <= 1)
            {
              v232 = 1;
            }

            else
            {
              v232 = 0xCCCCCCCCCCCCCCCDLL * ((v220 - v298) >> 3);
            }

            v233 = (v298 + 4);
            v234 = -1;
            v235 = -3.4028e38;
            do
            {
              v236 = *v233;
              v233 += 10;
              v237 = v236;
              if (v236 >= v235)
              {
                v235 = v237;
                v234 = v231;
              }

              ++v231;
            }

            while (v232 != v231);
            v238 = &v298[5 * v234];
            v239 = v268;
            *v268 = &unk_2874EEB30;
            *(v268 + 8) = 0;
            *(v268 + 16) = 0;
            *(v268 + 24) = 0;
            sub_2623259BC(v268 + 8, *(v238 + 8), *(v238 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(v238 + 16) - *(v238 + 8)) >> 4));
            *(v268 + 32) = *(v238 + 32);
          }

          __p = &v298;
          sub_262207B54(&__p);
          v241 = *(v239 + 8);
          v240 = *(v239 + 16);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v240 - v241) >> 4)) >= 2)
        {
          v242 = 0;
          v243 = 1;
          do
          {
            v244 = *(v241 + v242 + 32);
            v245 = *(v241 + v242 + 144);
            if (*(v244 + 52) != *(v245 + 20) || *(v244 + 56) != *(v245 + 24) || vabds_f32(*(v244 + 48), *(v245 + 16)) > 0.000001 || (v246 = vceq_s32(*(v244 + 40), *(v245 + 8)), (v246.i32[0] & v246.i32[1] & 1) == 0))
            {
              v247 = *(v244 + 40);
              v248 = *(v244 + 48);
              v249 = *(v245 + 16);
              if (v248 >= 0.1 || (v250 = *(v245 + 12), v249 < 0.1))
              {
                v250 = HIDWORD(*(v244 + 40));
                if (v248 < 0.1 || v249 >= 0.1)
                {
                  v250 = (*(v245 + 12) + HIDWORD(v247)) / 2;
                }
              }

              HIDWORD(v247) = v250;
              *(v244 + 40) = v247;
              *(v245 + 12) = v250;
              v241 = *(v239 + 8);
              v240 = *(v239 + 16);
            }

            ++v243;
            v242 += 112;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((v240 - v241) >> 4) > v243);
        }

LABEL_393:
        if ((0x6DB6DB6DB6DB6DB7 * ((v240 - v241) >> 4)) < 2)
        {
LABEL_420:
          sub_262207A34(&v302);
          __p = &v295;
          sub_2621FF4B4(&__p);
          goto LABEL_421;
        }

        v251 = 0;
        v252 = 0;
        v253 = 0;
        v254 = 0xFFFFFFFFLL;
        while (1)
        {
          v255 = v241 + v251;
          v256 = *(v241 + v251 + 32);
          if (*(v256 + 48) <= 0.001)
          {
            v257 = *(v255 + 144);
            if (*(v257 + 16) <= 0.001)
            {
              v258 = *(v256 + 40);
              if (v258 == *(v257 + 8) && *(v256 + 16) > 0.001 && *(v257 + 48) > 0.001 && (vabds_f32(*(v256 + 8), v258) >= 0.01 || vabds_f32(v258, *(v257 + 40)) >= 0.01))
              {
                __p = &unk_2874EEA20;
                LOBYTE(v315[0]) = 0;
                BYTE4(v315[0]) = 0;
                BYTE8(v315[0]) = 0;
                BYTE12(v315[0]) = 0;
                LOBYTE(v315[1]) = 0;
                BYTE4(v315[1]) = 0;
                v316 = 0uLL;
                *(&v315[1] + 1) = 0;
                *v317 = 0;
                memset(&v317[8], 0, 48);
                sub_2623249D4(&__p, *(v255 + 32), *(v255 + 144) + 32, a4);
                v298 = &unk_2874EEB30;
                memset(v299, 0, sizeof(v299));
                v300 = 0.0;
                v322[1] = 0;
                v322[0] = 0;
                v323 = 0;
                sub_262206F74(v322, v255);
                sub_262206F74(v322, v255 + 112);
                sub_26232528C(&v298, v322);
                if (*v317 <= 0.3 || (v300 - *v317) >= 0.1)
                {
                  v259 = 1;
                }

                else
                {
                  v259 = 0;
                  v254 = v252;
                  v253 = 1;
                }

                v290 = v322;
                sub_2621FF4B4(&v290);
                v298 = &unk_2874EEB30;
                v322[0] = v299;
                sub_2621FF4B4(v322);
                sub_262206C54(&__p);
                if (!v259)
                {
                  v239 = v268;
                  if ((v253 & 1) == 0)
                  {
                    goto LABEL_420;
                  }

LABEL_410:
                  v241 = *(v239 + 8);
                  v240 = *(v239 + 16);
                  if ((v254 & 0x80000000) == 0 && v254 < (-1 - 1227133513 * ((v240 - v241) >> 4)))
                  {
                    __p = &unk_2874EF0B8;
                    memset(v315, 0, sizeof(v315));
                    v316 = 0u;
                    memset(v317, 0, 48);
                    v318 = 0;
                    v319 = 0;
                    v320 = 257;
                    sub_2623249D4(v241 + 112 * v254, *(v241 + 112 * v254 + 32), *(v241 + 112 * v254 + 144) + 32, &__p);
                    v260 = v239;
                    v261 = sub_262206CCC(*(v239 + 8) + 112 * v254 + 224, *(v239 + 16), *(v239 + 8) + 112 * v254 + 112);
                    v262 = *(v260 + 16);
                    if (v262 != v261)
                    {
                      v263 = v262 - 112;
                      v264 = (v262 - 112);
                      v265 = (v262 - 112);
                      do
                      {
                        v266 = *v265;
                        v265 -= 14;
                        (*v266)(v264);
                        v263 -= 112;
                        v218 = v264 == v261;
                        v264 = v265;
                      }

                      while (!v218);
                    }

                    *(v268 + 16) = v261;
                    v239 = v268;
                    sub_262325754(v268);
                    __p = &unk_2874EF0B8;
                    if (v319)
                    {
                      sub_2621D1B78(v319);
                    }

                    v241 = *(v268 + 8);
                    v240 = *(v268 + 16);
                  }

                  goto LABEL_393;
                }

                v239 = v268;
                v241 = *(v268 + 8);
                v240 = *(v268 + 16);
              }
            }
          }

          ++v252;
          v251 += 112;
          if (0x6DB6DB6DB6DB6DB7 * ((v240 - v241) >> 4) - 1 <= v252)
          {
            if ((v253 & 1) == 0)
            {
              goto LABEL_420;
            }

            goto LABEL_410;
          }
        }
      }
    }

    *v268 = &unk_2874EEB30;
    *(v268 + 8) = 0;
    *(v268 + 16) = 0;
    *(v268 + 24) = 0;
    *(v268 + 32) = 0;
  }

LABEL_421:
  __p = &v285;
  sub_262206D98(&__p);
  v267 = *MEMORY[0x277D85DE8];
}

void sub_2621FCF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p)
{
  STACK[0x2B0] = &a37;
  sub_262207B54(&STACK[0x2B0]);
  sub_262207A34(&__p);
  __p = &a34;
  sub_2621FF4B4(&__p);
  a34 = &a23;
  sub_262206D98(&a34);
  _Unwind_Resume(a1);
}

void sub_2621FD3E8(uint64_t a1, uint64_t a2)
{
  v242 = *MEMORY[0x277D85DE8];
  v216 = 2;
  v224[0].__locale_ = 0x1000000005;
  LODWORD(v224[1].__locale_) = 1;
  sub_2621FF644(&v212, a2 + 720, v224);
  LODWORD(v224[0].__locale_) = 0;
  sub_2621FF6F0(&v209, &v212, v224);
  sub_262200884(v224, a2 + 872, &v216);
  sub_262200630(v207, v224);
  v224[0].__locale_ = &unk_2874EE7C8;
  if (v232)
  {
    sub_2621D1B78(v232);
  }

  sub_2621D1AA0(&v203, a2 + 256);
  sub_2621D1AA0(v201, a2 + 408);
  sub_2621D1AA0(v199, a2 + 560);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 12);
  v195 = v4;
  if (v4 <= *(v3 + 44))
  {
    v15 = *(a1 + 32);
    do
    {
      v194[0] = &unk_2874EF020;
      memset(&v194[1], 0, 7);
      v16 = v15[1];
      v17 = v16.i32[0];
      v18 = v15[5];
      v19 = vcvt_f32_s32(vzip2_s32(v18, v16));
      *v18.i32 = v18.i32[0];
      _NF = vabds_f32(v19.f32[0], v19.f32[1]) < 0.000001;
      v21 = (((v4 - v19.f32[1]) * (*v18.i32 - v17)) / (v19.f32[0] - v19.f32[1])) + v17;
      v22 = (v17 + *v18.i32) * 0.5;
      if (_NF)
      {
        v21 = v22;
      }

      v23 = -v21;
      if (v21 >= 0.0)
      {
        v23 = v21;
      }

      v24 = v23;
      v25 = v23 - v23;
      if (v25 < 0.5)
      {
        v26 = v24;
      }

      else
      {
        v26 = v24 + 1;
      }

      v27 = (v24 & 1) + v24;
      if (v25 != 0.5)
      {
        v27 = v26;
      }

      if (v21 >= 0.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = -v27;
      }

      v173 = v28;
      v175 = v28 - 2;
      if (v28 <= 2)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28 - 2;
      }

      v30 = v210;
      v31 = v28 + 2;
      if (v31 >= v210 - 1)
      {
        v32 = v210 - 1;
      }

      else
      {
        v32 = v31;
      }

      if (v195 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v195;
      }

      v34 = v32 + 1;
      if (v29 <= v32 && v32 < v213[2])
      {
        v36 = v195 + 1 < v214 - 1 ? v195 + 1 : v214 - 1;
        v37 = v36 + 1;
        if (v33 <= v37)
        {
          LODWORD(v170) = v33 - 1;
          HIDWORD(v170) = v37;
          v38 = &v225;
          for (i = 2; i != 8; i += 2)
          {
            v40 = *&v213[i - 2];
            *(v38 - 2) = 0;
            *(v38 - 1) = v40;
            *v38 = 1;
            v38 = (v38 + 24);
          }

          v169 = v29;
          sub_262202A58(v213, v224, 1u, v29, v34, 1);
          sub_262202A58(v213, v224, 2u, v170, SHIDWORD(v170), 1);
          sub_26220202C(&v178, &v212, v224);
          if (v185)
          {
            v41 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
            v42 = sub_2621D552C(v41, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
            v43 = sub_2621D552C(v42, " ", 1);
            v44 = MEMORY[0x266727260](v43, 963);
            sub_2621D552C(v44, " ", 1);
            sub_2621D552C(v44, "ascontiguous", 12);
            std::ios_base::getloc((v44 + *(*v44 - 24)));
            v45 = std::locale::use_facet(v224, MEMORY[0x277D82680]);
            (v45->__vftable[2].~facet_0)(v45, 10);
            std::locale::~locale(v224);
            std::ostream::put();
            std::ostream::flush();
            sub_2621D6874("err", "empty tensor");
            std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
            v46 = std::locale::use_facet(v224, MEMORY[0x277D82680]);
            (v46->__vftable[2].~facet_0)(v46, 10);
            std::locale::~locale(v224);
            std::ostream::put();
            std::ostream::flush();
          }

          if (v184 == 1)
          {
            sub_262206318(&v187, &v178);
          }

          else
          {
            sub_26220469C(&v187, &v179);
            if (v188 == v179 && v189[0] == v180)
            {
              if (v184 == 1)
              {
                v226 = 0uLL;
                v225 = 0uLL;
                *&v224[0].__locale_ = 0uLL;
                v47 = v190;
                v48 = v193;
                if (v192)
                {
                  if (v190)
                  {
                    v49 = v186;
                    do
                    {
                      v50 = *v49++;
                      *v48++ = v50;
                      --v47;
                    }

                    while (v47);
                  }
                }

                else if (v190)
                {
                  v155 = 0;
                  v156 = v186;
                  do
                  {
                    v157 = 0;
                    v158 = 0;
                    do
                    {
                      v158 += *(&v189[2] + v157 * 8 + 8) * v224[v157].__locale_;
                      ++v157;
                    }

                    while (v157 != 3);
                    v159 = 0;
                    v48[v158] = v156[v155];
                    do
                    {
                      v160 = *(&v225 + v159) + 1;
                      *(&v225 + v159) = v160;
                      if (v160 != *(v189 + v159 + 8))
                      {
                        break;
                      }

                      *(&v225 + v159) = 0;
                      v159 -= 8;
                    }

                    while (v159 != -24);
                    ++v155;
                  }

                  while (v155 != v47);
                }
              }

              else
              {
                v226 = 0uLL;
                v225 = 0uLL;
                *&v224[0].__locale_ = 0uLL;
                v147 = v190;
                v148 = v193;
                if (v192)
                {
                  if (v190)
                  {
                    v149 = 0;
                    v150 = v186;
                    do
                    {
                      v151 = 0;
                      v152 = 0;
                      do
                      {
                        v152 += *&v181[v151 * 8] * v224[v151].__locale_;
                        ++v151;
                      }

                      while (v151 != 3);
                      v153 = 0;
                      v148[v149] = v150[v152];
                      do
                      {
                        v154 = *(&v225 + v153) + 1;
                        *(&v225 + v153) = v154;
                        if (v154 != *(v189 + v153 + 8))
                        {
                          break;
                        }

                        *(&v225 + v153) = 0;
                        v153 -= 8;
                      }

                      while (v153 != -24);
                      ++v149;
                    }

                    while (v149 != v147);
                  }
                }

                else if (v190)
                {
                  v161 = 0;
                  v162 = v186;
                  do
                  {
                    v163 = 0;
                    v164 = 0;
                    do
                    {
                      v164 += *(&v189[2] + v163 * 8 + 8) * v224[v163].__locale_;
                      ++v163;
                    }

                    while (v163 != 3);
                    v165 = 0;
                    v166 = 0;
                    do
                    {
                      v166 += *&v181[v165 * 8] * v224[v165].__locale_;
                      ++v165;
                    }

                    while (v165 != 3);
                    v167 = 0;
                    v148[v164] = v162[v166];
                    do
                    {
                      v168 = *(&v225 + v167) + 1;
                      *(&v225 + v167) = v168;
                      if (v168 != *(v189 + v167 + 8))
                      {
                        break;
                      }

                      *(&v225 + v167) = 0;
                      v167 -= 8;
                    }

                    while (v167 != -24);
                    ++v161;
                  }

                  while (v161 != v147);
                }
              }
            }

            else
            {
              if (v184 == 1)
              {
                v238 = 0uLL;
                v237 = 0uLL;
                v236 = 0uLL;
                v235 = 0uLL;
                v234 = 0uLL;
                v233 = 0uLL;
                v232 = 0uLL;
                v231 = 0uLL;
                v230 = 0uLL;
                v229 = 0uLL;
                v228 = 0uLL;
                v227 = 0uLL;
                v226 = 0uLL;
                v225 = 0uLL;
                *&v224[0].__locale_ = 0uLL;
                v219 = 0uLL;
                memset(v218, 0, sizeof(v218));
                sub_2622063F0(v224, &v188, &v179, v218);
                if (*&v218[0] != v188 || *(v218 + 8) != v189[0])
                {
                  v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                  v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                  v53 = sub_2621D552C(v52, " ", 1);
                  v54 = MEMORY[0x266727260](v53, 190);
                  sub_2621D552C(v54, " ", 1);
                  sub_2621D552C(v54, "broadcast_assign_continue", 25);
                  std::ios_base::getloc((v54 + *(*v54 - 24)));
                  v55 = std::locale::use_facet(v239, MEMORY[0x277D82680]);
                  (v55->__vftable[2].~facet_0)(v55, 10);
                  std::locale::~locale(v239);
                  std::ostream::put();
                  std::ostream::flush();
                  sub_2621D58EC("err", "broadcast assign issue");
                  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
                  v56 = std::locale::use_facet(v239, MEMORY[0x277D82680]);
                  (v56->__vftable[2].~facet_0)(v56, 10);
                  std::locale::~locale(v239);
                  std::ostream::put();
                  std::ostream::flush();
                }

                v240 = 0u;
                v241 = 0u;
                *&v239[0].__locale_ = 0u;
                v223 = 0u;
                v222 = 0u;
                *&v221[0].__locale_ = 0u;
                v57 = v190;
                v58 = v193;
                if (v192)
                {
                  if (v190)
                  {
                    v59 = 0;
                    v60 = v186;
                    do
                    {
                      v176.__locale_ = 0;
                      sub_2622066E4(v224, v239, &v176, v221);
                      v58[v59] = v60[v176.__locale_];
                      for (j = 2; j != -1; --j)
                      {
                        v62 = (v239[j].__locale_ + 1);
                        v239[j].__locale_ = v62;
                        if (v62 != *(v218 + j * 8))
                        {
                          break;
                        }

                        v239[j].__locale_ = 0;
                      }

                      ++v59;
                    }

                    while (v59 != v57);
                  }
                }

                else if (v190)
                {
                  v78 = 0;
                  v79 = v186;
                  do
                  {
                    v176.__locale_ = 0;
                    sub_2622066E4(v224, v239, &v176, v221);
                    v80 = 0;
                    v81 = 0;
                    do
                    {
                      v81 += *(&v189[2] + v80 * 8 + 8) * v239[v80].__locale_;
                      ++v80;
                    }

                    while (v80 != 3);
                    v58[v81] = v79[v176.__locale_];
                    for (k = 2; k != -1; --k)
                    {
                      v83 = (v239[k].__locale_ + 1);
                      v239[k].__locale_ = v83;
                      if (v83 != *(v218 + k * 8))
                      {
                        break;
                      }

                      v239[k].__locale_ = 0;
                    }

                    ++v78;
                  }

                  while (v78 != v57);
                }
              }

              else
              {
                v238 = 0uLL;
                v237 = 0uLL;
                v236 = 0uLL;
                v235 = 0uLL;
                v234 = 0uLL;
                v233 = 0uLL;
                v232 = 0uLL;
                v231 = 0uLL;
                v230 = 0uLL;
                v229 = 0uLL;
                v228 = 0uLL;
                v227 = 0uLL;
                v226 = 0uLL;
                v225 = 0uLL;
                *&v224[0].__locale_ = 0uLL;
                v219 = 0uLL;
                memset(v218, 0, sizeof(v218));
                sub_2622063F0(v224, &v188, &v179, v218);
                if (*&v218[0] != v188 || *(v218 + 8) != v189[0])
                {
                  v63 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                  v64 = sub_2621D552C(v63, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                  v65 = sub_2621D552C(v64, " ", 1);
                  v66 = MEMORY[0x266727260](v65, 239);
                  sub_2621D552C(v66, " ", 1);
                  sub_2621D552C(v66, "broadcast_assign_stride", 23);
                  std::ios_base::getloc((v66 + *(*v66 - 24)));
                  v67 = std::locale::use_facet(v239, MEMORY[0x277D82680]);
                  (v67->__vftable[2].~facet_0)(v67, 10);
                  std::locale::~locale(v239);
                  std::ostream::put();
                  std::ostream::flush();
                  sub_2621D58EC("err", "broadcast assign issue");
                  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
                  v68 = std::locale::use_facet(v239, MEMORY[0x277D82680]);
                  (v68->__vftable[2].~facet_0)(v68, 10);
                  std::locale::~locale(v239);
                  std::ostream::put();
                  std::ostream::flush();
                }

                v240 = 0u;
                v241 = 0u;
                *&v239[0].__locale_ = 0u;
                v223 = 0u;
                v222 = 0u;
                *&v221[0].__locale_ = 0u;
                v69 = v190;
                v70 = v193;
                if (v192)
                {
                  if (v190)
                  {
                    v71 = 0;
                    v72 = v184;
                    v73 = v186;
                    do
                    {
                      v176.__locale_ = 0;
                      sub_2622066E4(v224, v239, &v176, v221);
                      if (v72)
                      {
                        locale = v176.__locale_;
                      }

                      else
                      {
                        v75 = 0;
                        locale = 0;
                        do
                        {
                          locale = (locale + *&v181[v75 * 8] * v221[v75].__locale_);
                          ++v75;
                        }

                        while (v75 != 3);
                      }

                      v70[v71] = v73[locale];
                      for (m = 2; m != -1; --m)
                      {
                        v77 = (v239[m].__locale_ + 1);
                        v239[m].__locale_ = v77;
                        if (v77 != *(v218 + m * 8))
                        {
                          break;
                        }

                        v239[m].__locale_ = 0;
                      }

                      ++v71;
                    }

                    while (v71 != v69);
                  }
                }

                else if (v190)
                {
                  v84 = 0;
                  v85 = v184;
                  v86 = v186;
                  do
                  {
                    v176.__locale_ = 0;
                    sub_2622066E4(v224, v239, &v176, v221);
                    v87 = 0;
                    v88 = 0;
                    do
                    {
                      v88 += *(&v189[2] + v87 * 8 + 8) * v239[v87].__locale_;
                      ++v87;
                    }

                    while (v87 != 3);
                    if (v85)
                    {
                      v89 = v176.__locale_;
                    }

                    else
                    {
                      v90 = 0;
                      v89 = 0;
                      do
                      {
                        v89 = (v89 + *&v181[v90 * 8] * v221[v90].__locale_);
                        ++v90;
                      }

                      while (v90 != 3);
                    }

                    v70[v88] = v86[v89];
                    for (n = 2; n != -1; --n)
                    {
                      v92 = (v239[n].__locale_ + 1);
                      v239[n].__locale_ = v92;
                      if (v92 != *(v218 + n * 8))
                      {
                        break;
                      }

                      v239[n].__locale_ = 0;
                    }

                    ++v84;
                  }

                  while (v84 != v69);
                }
              }

              sub_2621C57C8(v224);
            }
          }

          v178 = &unk_2874EEDA0;
          if (v183)
          {
            sub_2621D1B78(v183);
          }

          LODWORD(v224[0].__locale_) = 2;
          sub_2621FF6F0(&v178, &v187, v224);
          LODWORD(v217.__locale_) = 0;
          if (v179)
          {
            v93 = 0;
            v94 = 0;
            do
            {
              v221[1].__locale_ = 0;
              v221[0].__locale_ = 0;
              *&v222 = 0;
              sub_262206284(&v179, v239, v221, &v217);
              sub_262201C88(v224, &v178, v239);
              v95 = v221[0].__locale_;
              if ((v221[1].__locale_ - v221[0].__locale_) != 8)
              {
                v96 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                v97 = sub_2621D552C(v96, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                v98 = sub_2621D552C(v97, " ", 1);
                v99 = MEMORY[0x266727260](v98, 1098);
                sub_2621D552C(v99, " ", 1);
                sub_2621D552C(v99, "slice", 5);
                std::ios_base::getloc((v99 + *(*v99 - 24)));
                v100 = std::locale::use_facet(&v176, MEMORY[0x277D82680]);
                (v100->__vftable[2].~facet_0)(v100, 10);
                std::locale::~locale(&v176);
                std::ostream::put();
                std::ostream::flush();
                LODWORD(v176.__locale_) = 0;
                sub_262201E08("err", &v176);
                std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
                v101 = std::locale::use_facet(&v176, MEMORY[0x277D82680]);
                (v101->__vftable[2].~facet_0)(v101, 10);
                std::locale::~locale(&v176);
                std::ostream::put();
                std::ostream::flush();
              }

              sub_262201E68(v218, v224, *v95);
              v224[0].__locale_ = &unk_2874EE7C8;
              if (v232)
              {
                sub_2621D1B78(v232);
              }

              operator delete(v95);
              sub_262201300(v218);
              __asm { FCVT            D0, H0 }

              if (_D0 > 0.000001)
              {
                ++v94;
              }

              *&v218[0] = &unk_2874EE788;
              if (v220)
              {
                sub_2621D1B78(v220);
              }

              LODWORD(v217.__locale_) = ++v93;
            }

            while (v179 > v93);
            v106 = v94 > 2;
          }

          else
          {
            v106 = 0;
          }

          LODWORD(v239[0].__locale_) = v169;
          HIDWORD(v239[0].__locale_) = v32 + 1;
          LODWORD(v239[1].__locale_) = 1;
          v221[0].__locale_ = v170;
          LODWORD(v221[1].__locale_) = 1;
          sub_2622047F4(v218, v207, v239, v221);
          sub_262200630(v224, v218);
          *&v218[0] = &unk_2874EE7C8;
          if (v220)
          {
            sub_2621D1B78(v220);
          }

          sub_26220488C(v224);
          v108 = v107 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5)) || v106;
          LOBYTE(v194[1]) = v108;
          v224[0].__locale_ = &unk_2874EE7C8;
          if (v232)
          {
            sub_2621D1B78(v232);
          }

          v178 = &unk_2874EE7C8;
          if (v183)
          {
            sub_2621D1B78(v183);
          }

          v187 = &unk_2874EEDA0;
          if (v191)
          {
            sub_2621D1B78(v191);
          }

          v30 = v210;
          v29 = v169;
          v34 = v32 + 1;
        }
      }

      if (v173 >= 3 && v175 <= v30)
      {
        v172 = v34;
        v174 = v32;
        v110 = v29;
        LODWORD(v224[0].__locale_) = 0;
        HIDWORD(v224[0].__locale_) = v175;
        LODWORD(v224[1].__locale_) = 1;
        sub_2622049D4(&v187, &v209, v224, &v195);
        sub_262201300(&v187);
        __asm { FCVT            D0, H0 }

        BYTE1(v194[1]) = _D0 > 0.000001;
        LODWORD(v176.__locale_) = 0;
        HIDWORD(v176.__locale_) = v175;
        v177 = 1;
        v221[1].__locale_ = 0;
        v221[0].__locale_ = 0;
        *&v222 = 0;
        v239[0].__locale_ = 0;
        v239[1].__locale_ = v204;
        v240 = xmmword_2623A7680;
        *&v241 = v205;
        *(&v241 + 1) = 1;
        sub_2622061F8(&v204, v239, v221, &v176, &v195);
        sub_2621D7EF4(v224, &v203, v239);
        v113 = v221[0].__locale_;
        if ((v221[1].__locale_ - v221[0].__locale_) != 8)
        {
          v114 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v115 = sub_2621D552C(v114, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          v116 = sub_2621D552C(v115, " ", 1);
          v117 = MEMORY[0x266727260](v116, 1098);
          sub_2621D552C(v117, " ", 1);
          sub_2621D552C(v117, "slice", 5);
          std::ios_base::getloc((v117 + *(*v117 - 24)));
          v118 = std::locale::use_facet(&v217, MEMORY[0x277D82680]);
          (v118->__vftable[2].~facet_0)(v118, 10);
          std::locale::~locale(&v217);
          std::ostream::put();
          std::ostream::flush();
          LODWORD(v217.__locale_) = 0;
          sub_262201E08("err", &v217);
          std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
          v119 = std::locale::use_facet(&v217, MEMORY[0x277D82680]);
          (v119->__vftable[2].~facet_0)(v119, 10);
          std::locale::~locale(&v217);
          std::ostream::put();
          std::ostream::flush();
        }

        sub_2621D5FF4(v218, v224, *v113);
        v224[0].__locale_ = &unk_2874EEB10;
        if (v232)
        {
          sub_2621D1B78(v232);
        }

        operator delete(v113);
        sub_262204CCC(&v178, v218);
        *&v218[0] = &unk_2874EE910;
        if (v220)
        {
          sub_2621D1B78(v220);
        }

        v120 = v182;
        if (v182)
        {
          v121 = 0;
          v122 = v186;
          do
          {
            v123 = *v122++;
            if (v123 > 0)
            {
              ++v121;
            }

            --v120;
          }

          while (v120);
          v120 = v121 > 4;
        }

        BYTE3(v194[1]) = v120;
        v178 = &unk_2874EE910;
        if (v183)
        {
          sub_2621D1B78(v183);
        }

        v187 = &unk_2874EE788;
        if (v191)
        {
          sub_2621D1B78(v191);
        }

        v30 = v210;
        v29 = v110;
        v34 = v172;
        v32 = v174;
      }

      else
      {
        BYTE1(v194[1]) = 0;
        BYTE3(v194[1]) = 0;
      }

      v124 = 1;
      if (v29 <= v32 && v32 < v30)
      {
        v187 = __PAIR64__(v34, v29);
        LODWORD(v188) = 1;
        sub_2622049D4(v224, &v209, &v187, &v195);
        sub_262201300(v224);
        __asm { FCVT            D0, H0 }

        v124 = _D0 <= 0.000001;
        v224[0].__locale_ = &unk_2874EE788;
        if (v232)
        {
          sub_2621D1B78(v232);
        }
      }

      BYTE2(v194[1]) = v124 & (BYTE1(v194[1]) ^ 1);
      v239[0].__locale_ = 0;
      v239[1].__locale_ = 0;
      *&v240 = 0;
      *&v218[0] = 0;
      *(&v218[0] + 1) = v204;
      v218[1] = xmmword_2623A7680;
      *&v219 = v205;
      *(&v219 + 1) = 1;
      sub_2621D7514(&v204, v218, 0, v32, v204, 1);
      v224[0].__locale_ = 1;
      sub_2621C9004(v239, v224);
      v127 = v195;
      v4 = v195 + 1;
      sub_2621D7514(&v204, v218, 1u, v195, v195 + 1, 1);
      sub_2621D7EF4(v224, &v203, v218);
      v128 = v239[0].__locale_;
      if ((v239[1].__locale_ - v239[0].__locale_) != 8)
      {
        v129 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v130 = sub_2621D552C(v129, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        v131 = sub_2621D552C(v130, " ", 1);
        v132 = MEMORY[0x266727260](v131, 1098);
        sub_2621D552C(v132, " ", 1);
        sub_2621D552C(v132, "slice", 5);
        std::ios_base::getloc((v132 + *(*v132 - 24)));
        v133 = std::locale::use_facet(v221, MEMORY[0x277D82680]);
        (v133->__vftable[2].~facet_0)(v133, 10);
        std::locale::~locale(v221);
        std::ostream::put();
        std::ostream::flush();
        LODWORD(v221[0].__locale_) = 0;
        sub_262201E08("err", v221);
        std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
        v134 = std::locale::use_facet(v221, MEMORY[0x277D82680]);
        (v134->__vftable[2].~facet_0)(v134, 10);
        std::locale::~locale(v221);
        std::ostream::put();
        std::ostream::flush();
      }

      sub_2621D5FF4(&v178, v224, *v128);
      v224[0].__locale_ = &unk_2874EEB10;
      if (v232)
      {
        sub_2621D1B78(v232);
      }

      operator delete(v128);
      sub_262204CCC(&v187, &v178);
      v178 = &unk_2874EE910;
      if (v183)
      {
        sub_2621D1B78(v183);
      }

      v135 = v190;
      if (v190)
      {
        v136 = 0;
        v137 = v193;
        do
        {
          v138 = *v137++;
          if (v138 > 0)
          {
            ++v136;
          }

          --v135;
        }

        while (v135);
        v135 = v136 > 4;
      }

      BYTE4(v194[1]) = v135;
      sub_262204F20(&v178, v201, &v195);
      sub_262204CCC(v224, &v178);
      v178 = &unk_2874EE910;
      if (v183)
      {
        sub_2621D1B78(v183);
      }

      v139 = *(&v230 + 1);
      if (*(&v230 + 1))
      {
        v140 = 0;
        v141 = v233;
        do
        {
          v142 = *v141++;
          if (v142 > 0)
          {
            ++v140;
          }

          --v139;
        }

        while (v139);
        v139 = v140 != 0;
      }

      BYTE5(v194[1]) = v139;
      sub_262204F20(v218, v199, &v195);
      sub_262204CCC(&v178, v218);
      *&v218[0] = &unk_2874EE910;
      if (v220)
      {
        sub_2621D1B78(v220);
      }

      v143 = v182;
      if (v182)
      {
        v144 = 0;
        v145 = v186;
        do
        {
          v146 = *v145++;
          if (v146 > 0)
          {
            ++v144;
          }

          --v143;
        }

        while (v143);
        v143 = v144 != 0;
      }

      BYTE6(v194[1]) = v143;
      sub_2622051F4(&v196, v194);
      v178 = &unk_2874EE910;
      if (v183)
      {
        sub_2621D1B78(v183);
      }

      v224[0].__locale_ = &unk_2874EE910;
      if (v232)
      {
        sub_2621D1B78(v232);
      }

      v187 = &unk_2874EE910;
      if (v191)
      {
        sub_2621D1B78(v191);
      }

      v195 = v4;
      v15 = *(a1 + 32);
    }

    while (v127 < v15[5].i32[1]);
  }

  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v5 != v6)
  {
    v7 = v5 - 2;
    v8 = v5 - 2;
    v9 = v5 - 2;
    do
    {
      v10 = *v9;
      v9 -= 2;
      (*v10)(v8);
      v7 -= 2;
      _ZF = v8 == v6;
      v8 = v9;
    }

    while (!_ZF);
  }

  *(a1 + 96) = v6;
  v12 = v196;
  v13 = v197;
  while (v12 != v13)
  {
    sub_2622051F4((a1 + 88), v12);
    v12 += 2;
  }

  v224[0].__locale_ = &v196;
  sub_26220532C(v224);
  v199[0] = &unk_2874EEB10;
  if (v200)
  {
    sub_2621D1B78(v200);
  }

  v201[0] = &unk_2874EEB10;
  if (v202)
  {
    sub_2621D1B78(v202);
  }

  v203 = &unk_2874EEB10;
  if (v206)
  {
    sub_2621D1B78(v206);
  }

  v207[0] = &unk_2874EE7C8;
  if (v208)
  {
    sub_2621D1B78(v208);
  }

  v209 = &unk_2874EE7C8;
  if (v211)
  {
    sub_2621D1B78(v211);
  }

  v212 = &unk_2874EEDA0;
  if (v215)
  {
    sub_2621D1B78(v215);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2621FEF6C(_Unwind_Exception *a1)
{
  STACK[0x640] = &unk_2874EE7C8;
  if (STACK[0x6C0])
  {
    sub_2621D1B78(STACK[0x6C0]);
  }

  STACK[0x430] = &unk_2874EE7C8;
  if (STACK[0x4B0])
  {
    sub_2621D1B78(STACK[0x4B0]);
  }

  STACK[0x4C8] = &unk_2874EEDA0;
  if (STACK[0x548])
  {
    sub_2621D1B78(STACK[0x548]);
  }

  _Unwind_Resume(a1);
}

void sub_2621FF4B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 112;
      v7 = v4 - 112;
      v8 = v4 - 112;
      do
      {
        v9 = *v8;
        v8 -= 112;
        (*v9)(v7);
        v6 -= 112;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621FF574(uint64_t a1)
{
  *a1 = &unk_2874EEB30;
  v1 = (a1 + 8);
  sub_2621FF4B4(&v1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2621FF5EC(uint64_t a1)
{
  *a1 = &unk_2874EEB30;
  v3 = (a1 + 8);
  sub_2621FF4B4(&v3);
  return a1;
}

void sub_2621FF644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[7] = *MEMORY[0x277D85DE8];
  v5 = v10;
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(a2 + i);
    *(v5 - 2) = 0;
    *(v5 - 1) = v7;
    *v5 = 1;
    v5 += 3;
  }

  sub_262202A58(a2 + 8, v9, 0, *a3, *(a3 + 4), *(a3 + 8));
  sub_26220202C(a1, a2, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2621FF6F0(uint64_t a1, uint64_t a2, int *a3)
{
  v207[7] = *MEMORY[0x277D85DE8];
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v4 = *a3;
  if ((v4 & 0x80000000) != 0)
  {
    __b[0].__locale_ = (v4 + 3);
  }

  else
  {
    __b[0].__locale_ = *a3;
  }

  sub_2621C9004(&v202, __b);
  v5 = v202;
  v6 = MEMORY[0x277D82670];
  if (v203 != v202)
  {
    v7 = 0;
    v8 = (v203 - v202) >> 3;
    v9 = MEMORY[0x277D82680];
    do
    {
      if (v5[v7] >= 3uLL)
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v10 = MEMORY[0x266727260](v6, 28);
        sub_2621D552C(v10, " ", 1);
        sub_2621D552C(v10, "format_reduce_axes", 18);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(__b, v9);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v12 = std::locale::use_facet(__b, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < v8);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v13 = v202;
  v14 = v203;
  v185 = (v203 - v202) >> 3;
  v182 = v203 - v202;
  if (v203 - v202 != 8)
  {
    v15 = 0;
    v16 = MEMORY[0x277D82680];
    do
    {
      if (v13[v15] == v13[v15 + 1])
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v17 = MEMORY[0x266727260](v6, 33);
        sub_2621D552C(v17, " ", 1);
        sub_2621D552C(v17, "format_reduce_axes", 18);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(__b, v16);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v19 = std::locale::use_facet(__b, v16);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v15;
    }

    while (v15 < v185 - 1);
  }

  v20 = 0;
  v21 = a2 + 8;
  memset(v201, 0, sizeof(v201));
  v22 = v185;
  if (v185 <= 1)
  {
    v22 = 1;
  }

  v23 = v22 - 1;
  do
  {
    if (v14 != v13)
    {
      if (*v13 == v20)
      {
LABEL_19:
        __b[0].__locale_ = 1;
        sub_2621C9004(v201, __b);
        goto LABEL_25;
      }

      v24 = 0;
      while (v23 != v24)
      {
        v25 = v13[++v24];
        if (v25 == v20)
        {
          if (v24 < v185)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    sub_2621C9004(v201, (v21 + 8 * v20));
LABEL_25:
    ++v20;
  }

  while (v20 != 3);
  sub_2622042C8(__b, v201);
  v26 = 0;
  memset(v199, 0, 48);
  do
  {
    v199[v26] = 1;
    if (v26 <= 1)
    {
      v27 = v26;
      v28 = 1;
      do
      {
        v28 *= __b[++v27].__locale_;
      }

      while (v27 != 2);
      v199[v26] = v28;
    }

    ++v26;
  }

  while (v26 != 3);
  sub_26220469C(v186, __b);
  v29 = *(v13 + v182 - 8);
  v184 = v29;
  if (v29 != 2)
  {
    goto LABEL_38;
  }

  if (v185 == 1 || (v30 = *(v13 + v182 - 16), v13[v185 - 1] - v30 != 1))
  {
    v196 = 0;
    v197 = 0;
    v198 = 0;
    v193 = 0;
    v194 = 0;
    v29 = 2;
    v195 = 0;
  }

  else
  {
    v31 = &v13[v185 - 3];
    v32 = v185 - 2;
    do
    {
      v29 = v30;
      if (!v32)
      {
        break;
      }

      v30 = *v31;
      v33 = v31[1];
      --v31;
      --v32;
    }

    while (v33 - v30 == 1);
LABEL_38:
    v196 = 0;
    v197 = 0;
    v198 = 0;
    v193 = 0;
    v194 = 0;
    v195 = 0;
    if (!v29)
    {
      v34 = 0;
      v35 = 1;
      v36 = 1;
      v183 = 1;
LABEL_52:
      v42 = 8 * v35 + 8;
      v43 = 1;
      do
      {
        v43 *= *(a2 + v42);
        v42 += 8;
      }

      while (v42 != 32);
      goto LABEL_56;
    }
  }

  v37 = 0;
  v36 = 1;
  while (2)
  {
    v38 = (v21 + 8 * v37);
    v39 = *v38;
    sub_2621C9004(&v196, v38);
    if (v14 != v13)
    {
      if (*v13 == v37)
      {
LABEL_44:
        v207[0] = 0;
        sub_2621C9004(&v193, v207);
        goto LABEL_50;
      }

      v40 = 0;
      while (v23 != v40)
      {
        v41 = v13[++v40];
        if (v41 == v37)
        {
          if (v40 < v185)
          {
            goto LABEL_44;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v193, &v199[v37]);
LABEL_50:
    v36 *= v39;
    if (++v37 != v29)
    {
      continue;
    }

    break;
  }

  v183 = 0;
  v34 = v29;
  v35 = v29 + 1;
  if ((v29 + 1) <= 2)
  {
    goto LABEL_52;
  }

  v43 = 1;
LABEL_56:
  v44 = *(v21 + 8 * v34);
  if (v184 == 2)
  {
    v45 = *(v21 + 8 * v34);
  }

  else
  {
    v45 = 1;
  }

  v46 = v188;
  if (v184 == 2)
  {
    v47 = v36;
  }

  else
  {
    v47 = v44;
  }

  if (v184 == 2)
  {
    v48 = 1;
  }

  else
  {
    v48 = v36;
  }

  v179 = v48;
  memset(v207, 0, 48);
  v205 = 0u;
  memset(v206, 0, sizeof(v206));
  v49 = v183;
  if (v183)
  {
    __p = 0;
    sub_2621C9004(&v196, &__p);
    v50 = 0;
    __p = 0;
    v191 = 0;
    v192 = 0;
    goto LABEL_79;
  }

  v178 = v45;
  v51 = 0;
  __p = 0;
  v191 = 0;
  v192 = 0;
  v189 = 0;
  if (v34 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v34;
  }

  while (2)
  {
    if (v14 == v13)
    {
LABEL_76:
      sub_2621C9004(&__p, &v189);
    }

    else if (*v13 != v51)
    {
      v53 = 0;
      while (v23 != v53)
      {
        v54 = v13[++v53];
        if (v54 == v51)
        {
          if (v53 < v185)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }
      }

      goto LABEL_76;
    }

LABEL_77:
    v189 = ++v51;
    if (v51 != v52)
    {
      continue;
    }

    break;
  }

  v45 = v178;
  v50 = v34 - 1;
  v49 = v183;
LABEL_79:
  v55 = v43 * v45;
  v56 = *(a2 + 136);
  if (v184 == 2)
  {
    if (*(a2 + 136))
    {
      if (v47)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = *(a2 + 144);
        v61 = v196;
        v62 = (v60 + 2);
        if (v55 <= 1)
        {
          v63 = 1;
        }

        else
        {
          v63 = v43 * v45;
        }

        v64 = v193;
        v65 = 2 * v63;
        v66 = 1;
        v67 = v46;
        while (1)
        {
          v68 = *(v60 + 2 * v58);
          if (v55 >= 2)
          {
            break;
          }

          ++v58;
          if (!v66)
          {
            goto LABEL_94;
          }

LABEL_96:
          *v67 = v68;
          v73 = v50;
          do
          {
            v74 = v207[v73] + 1;
            v207[v73] = v74;
            if (v74 != v61[v73])
            {
              break;
            }

            v207[v73] = 0;
            v75 = v73-- <= 0;
          }

          while (!v75);
          if (v49)
          {
            v66 = 0;
            v76 = 0;
          }

          else
          {
            v76 = 0;
            v77 = v207;
            v78 = v64;
            v79 = v34;
            do
            {
              v81 = *v77++;
              v80 = v81;
              v82 = *v78++;
              v76 += v82 * v80;
              --v79;
            }

            while (v79);
            v66 = v76 > v59;
            if (v76 > v59)
            {
              v59 = v76;
            }
          }

          v67 = &v46[v76];
          ++v57;
          v62 = (v62 + v65);
          if (v57 == v47)
          {
            goto LABEL_218;
          }
        }

        v69 = v55 - 1;
        v70 = v62;
        do
        {
          v71 = *v70++;
          v72 = v71;
          if (v68 < v71)
          {
            v68 = v72;
          }

          --v69;
        }

        while (v69);
        v58 += v55;
        if (v66)
        {
          goto LABEL_96;
        }

LABEL_94:
        if (*v67 >= v68)
        {
          v68 = *v67;
        }

        goto LABEL_96;
      }
    }

    else if (v47)
    {
      v111 = 0;
      v112 = 0;
      v113 = a2 + 56;
      v114 = *(a2 + 144);
      v115 = v196;
      v116 = a2 + 24;
      v117 = v193;
      v118 = 1;
      v119 = v46;
      do
      {
        v120 = 0;
        v121 = 0;
        do
        {
          v121 += *(v113 + v120) * *&v206[v120 - 16];
          v120 += 8;
        }

        while (v120 != 24);
        v122 = 0;
        v123 = *(v114 + 2 * v121);
        do
        {
          v124 = *&v206[v122] + 1;
          *&v206[v122] = v124;
          if (v124 != *(v116 + v122))
          {
            break;
          }

          *&v206[v122] = 0;
          v122 -= 8;
        }

        while (v122 != -24);
        if (v55 >= 2)
        {
          for (i = 1; i != v55; ++i)
          {
            v126 = 0;
            v127 = 0;
            do
            {
              v127 += *(v113 + v126) * *&v206[v126 - 16];
              v126 += 8;
            }

            while (v126 != 24);
            v128 = 0;
            if (v123 < *(v114 + 2 * v127))
            {
              v123 = *(v114 + 2 * v127);
            }

            do
            {
              v129 = *&v206[v128] + 1;
              *&v206[v128] = v129;
              if (v129 != *(v116 + v128))
              {
                break;
              }

              *&v206[v128] = 0;
              v128 -= 8;
            }

            while (v128 != -24);
          }
        }

        if (!v118 && *v119 >= v123)
        {
          v123 = *v119;
        }

        *v119 = v123;
        v130 = v50;
        do
        {
          v131 = v207[v130] + 1;
          v207[v130] = v131;
          if (v131 != v115[v130])
          {
            break;
          }

          v207[v130] = 0;
          v75 = v130-- <= 0;
        }

        while (!v75);
        if (v49)
        {
          v118 = 0;
          v132 = 0;
        }

        else
        {
          v132 = 0;
          v133 = v207;
          v134 = v117;
          v135 = v34;
          do
          {
            v137 = *v133++;
            v136 = v137;
            v138 = *v134++;
            v132 += v138 * v136;
            --v135;
          }

          while (v135);
          v118 = v132 > v112;
          if (v132 > v112)
          {
            v112 = v132;
          }
        }

        v119 = &v46[v132];
        ++v111;
      }

      while (v111 != v47);
    }
  }

  else if (*(a2 + 136))
  {
    if (v179)
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = v196;
      v87 = 1;
      v88 = v193;
      v89 = v46;
      do
      {
        if (v87)
        {
          if (v55)
          {
            v90 = *(a2 + 144);
            v91 = v89;
            v92 = v43 * v45;
            do
            {
              *v91++ = *(v90 + 2 * v84++);
              --v92;
            }

            while (v92);
          }
        }

        else if (v55)
        {
          v93 = *(a2 + 144);
          v94 = v89;
          v95 = v43 * v45;
          do
          {
            v96 = *(v93 + 2 * v84);
            if (*v94 >= v96)
            {
              v96 = *v94;
            }

            *v94++ = v96;
            ++v84;
            --v95;
          }

          while (v95);
        }

        if (v47 >= 2)
        {
          for (j = 1; j != v47; ++j)
          {
            if (v55)
            {
              v98 = *(a2 + 144);
              v99 = v89;
              v100 = v43 * v45;
              do
              {
                v101 = *(v98 + 2 * v84);
                if (*v99 >= v101)
                {
                  v101 = *v99;
                }

                *v99++ = v101;
                ++v84;
                --v100;
              }

              while (v100);
            }
          }
        }

        v102 = v50;
        do
        {
          v103 = v207[v102] + 1;
          v207[v102] = v103;
          if (v103 != v86[v102])
          {
            break;
          }

          v207[v102] = 0;
          v75 = v102-- <= 0;
        }

        while (!v75);
        if (v49)
        {
          v87 = 0;
          v104 = 0;
        }

        else
        {
          v104 = 0;
          v105 = v207;
          v106 = v88;
          v107 = v34;
          do
          {
            v109 = *v105++;
            v108 = v109;
            v110 = *v106++;
            v104 += v110 * v108;
            --v107;
          }

          while (v107);
          v87 = v104 > v85;
          if (v104 > v85)
          {
            v85 = v104;
          }
        }

        v89 = &v46[v104];
        ++v83;
      }

      while (v83 != v179);
    }
  }

  else if (v179)
  {
    v139 = 0;
    v140 = 0;
    v141 = a2 + 56;
    v142 = v196;
    v143 = v193;
    v144 = a2 + 24;
    v145 = 1;
    v146 = v46;
    do
    {
      if (v145)
      {
        if (v55)
        {
          v147 = 0;
          v148 = *(a2 + 144);
          do
          {
            v149 = 0;
            v150 = 0;
            do
            {
              v150 += *(v141 + v149) * *&v206[v149 - 16];
              v149 += 8;
            }

            while (v149 != 24);
            v151 = 0;
            v146[v147] = *(v148 + 2 * v150);
            do
            {
              v152 = *&v206[v151] + 1;
              *&v206[v151] = v152;
              if (v152 != *(v144 + v151))
              {
                break;
              }

              *&v206[v151] = 0;
              v151 -= 8;
            }

            while (v151 != -24);
            ++v147;
          }

          while (v147 != v55);
        }
      }

      else if (v55)
      {
        v153 = 0;
        v154 = *(a2 + 144);
        do
        {
          v155 = 0;
          v156 = 0;
          do
          {
            v156 += *(v141 + v155) * *&v206[v155 - 16];
            v155 += 8;
          }

          while (v155 != 24);
          v157 = 0;
          v158 = *(v154 + 2 * v156);
          if (v146[v153] >= v158)
          {
            v158 = v146[v153];
          }

          v146[v153] = v158;
          do
          {
            v159 = *&v206[v157] + 1;
            *&v206[v157] = v159;
            if (v159 != *(v144 + v157))
            {
              break;
            }

            *&v206[v157] = 0;
            v157 -= 8;
          }

          while (v157 != -24);
          ++v153;
        }

        while (v153 != v55);
      }

      v160 = v50;
      if (v47 >= 2)
      {
        for (k = 1; k != v47; ++k)
        {
          if (v55)
          {
            v162 = 0;
            v163 = *(a2 + 144);
            do
            {
              v164 = 0;
              v165 = 0;
              do
              {
                v165 += *(v141 + v164) * *&v206[v164 - 16];
                v164 += 8;
              }

              while (v164 != 24);
              v166 = 0;
              v167 = *(v163 + 2 * v165);
              if (v146[v162] >= v167)
              {
                v167 = v146[v162];
              }

              v146[v162] = v167;
              do
              {
                v168 = *&v206[v166] + 1;
                *&v206[v166] = v168;
                if (v168 != *(v144 + v166))
                {
                  break;
                }

                *&v206[v166] = 0;
                v166 -= 8;
              }

              while (v166 != -24);
              ++v162;
            }

            while (v162 != v55);
          }
        }

        v160 = v50;
      }

      do
      {
        v169 = v207[v160] + 1;
        v207[v160] = v169;
        if (v169 != v142[v160])
        {
          break;
        }

        v207[v160] = 0;
        v75 = v160-- <= 0;
      }

      while (!v75);
      if (v49)
      {
        v145 = 0;
        v170 = 0;
      }

      else
      {
        v170 = 0;
        v171 = v207;
        v172 = v143;
        v173 = v34;
        do
        {
          v175 = *v171++;
          v174 = v175;
          v176 = *v172++;
          v170 += v176 * v174;
          --v173;
        }

        while (v173);
        v145 = v170 > v140;
        if (v170 > v140)
        {
          v140 = v170;
        }
      }

      v146 = &v46[v170];
      ++v139;
    }

    while (v139 != v179);
  }

LABEL_218:
  if (__p)
  {
    operator delete(__p);
  }

  if (v193)
  {
    operator delete(v193);
  }

  if (v196)
  {
    operator delete(v196);
  }

  if (v201[0])
  {
    operator delete(v201[0]);
  }

  if (v202)
  {
    operator delete(v202);
  }

  sub_2622021A8(a1, v186, *a3);
  v186[0] = &unk_2874EEDA0;
  if (v187)
  {
    sub_2621D1B78(v187);
  }

  v177 = *MEMORY[0x277D85DE8];
}

void sub_262200534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::locale a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a34)
  {
    sub_2621D1B78(a34);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (v60)
  {
    operator delete(v60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262200630(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 963);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "ascontiguous", 12);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a2 + 136) == 1)
  {

    return sub_2622034F0(a1, a2);
  }

  else
  {
    v14 = sub_2622035C8(a1, (a2 + 8));
    return sub_2622036C4(v14, a2);
  }
}

void sub_26220083C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  *v10 = &unk_2874EE7C8;
  v12 = v10[16];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_262200884(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_262201F94(a2 + 8, v19, &v15, a3);
  sub_26220202C(v13, a2, v19);
  v5 = v15;
  if (v16 - v15 != 8)
  {
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v7, " ", 1);
    v8 = MEMORY[0x277D82670];
    v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v9, " ", 1);
    sub_2621D552C(v9, "slice", 5);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v18.__locale_) = 0;
    sub_262201E08("err", &v18);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_2622021A8(a1, v13, *v5);
  v13[0] = &unk_2874EEDA0;
  if (v14)
  {
    sub_2621D1B78(v14);
  }

  operator delete(v5);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_262200AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262200B58(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v71 = *MEMORY[0x277D85DE8];
  v59 = 0uLL;
  v60 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 12);
  if (v6 > *(v5 + 44))
  {
    goto LABEL_73;
  }

  v8 = MEMORY[0x277D82670];
  do
  {
    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6;
    }

    v58 = -1;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = v9 - 1;
      if (v6 + 1 < (*(a2 + 16) - 1))
      {
        v13 = v6 + 1;
      }

      else
      {
        v13 = *(a2 + 16) - 1;
      }

      while (1)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v67[0] = 0;
        v67[1] = v10;
        v68 = xmmword_2623A7680;
        v69 = *(a2 + 16);
        v70 = 1;
        v61[0] = 0;
        sub_2621C9004(&v63, v61);
        v14 = v11 + 1;
        sub_2621D7514(a2 + 8, v67, 0, v11, v11 + 1, 1);
        sub_2621D7514(a2 + 8, v67, 1u, v12, v13 + 1, 1);
        sub_262201C88(v61, a2, v67);
        v15 = v63;
        if (v64 - v63 != 8)
        {
          sub_2621D552C(v8, "runtime_err in ", 15);
          sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v8, " ", 1);
          v16 = MEMORY[0x266727260](v8, 1098);
          sub_2621D552C(v16, " ", 1);
          sub_2621D552C(v16, "slice", 5);
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v17 = std::locale::use_facet(&v66, MEMORY[0x277D82680]);
          (v17->__vftable[2].~facet_0)(v17, 10);
          std::locale::~locale(&v66);
          std::ostream::put();
          std::ostream::flush();
          LODWORD(v66.__locale_) = 0;
          sub_262201E08("err", &v66);
          std::ios_base::getloc((v8 + *(*v8 - 24)));
          v18 = std::locale::use_facet(&v66, MEMORY[0x277D82680]);
          (v18->__vftable[2].~facet_0)(v18, 10);
          std::locale::~locale(&v66);
          std::ostream::put();
          std::ostream::flush();
        }

        sub_262201E68(v56, v61, *v15);
        v61[0] = &unk_2874EE7C8;
        if (v62)
        {
          sub_2621D1B78(v62);
        }

        operator delete(v15);
        sub_262201300(v56);
        v56[0] = &unk_2874EE788;
        if (v57)
        {
          sub_2621D1B78(v57);
        }

        __asm { FCMP            H8, #0 }

        if (!(_NF ^ _VF | _ZF))
        {
          break;
        }

        v10 = *(a2 + 8);
        ++v11;
        if (v10 <= v14)
        {
          goto LABEL_19;
        }
      }

      v58 = v11;
    }

LABEL_19:
    sub_2621C7CD0(&v59, &v58);
    v24 = v6++ < *(*(a1 + 32) + 44);
  }

  while (v24);
  v25 = *(&v59 + 1);
  v26 = v59;
  if (*(&v59 + 1) == v59)
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    if (!v59)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  LODWORD(v30) = 3227415;
  do
  {
    v31 = *v26;
    if (v27 == v29)
    {
LABEL_26:
      v33 = (v29 - v27) >> 3;
      v34 = v33 + 1;
      if ((v33 + 1) >> 61)
      {
        sub_2621CBEB0();
      }

      if (-v27 >> 2 > v34)
      {
        v34 = -v27 >> 2;
      }

      if (-v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v34;
      }

      if (v35)
      {
        if (!(v35 >> 61))
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v36 = (8 * v33);
      v37 = v31 | 0x100000000;
      v38 = v36 - (v28 - v27);
      *v36 = v37;
      v29 = (v36 + 1);
      memcpy(v38, v27, v28 - v27);
      if (v27)
      {
        operator delete(v27);
      }

      v27 = v38;
      v28 = v29;
    }

    else
    {
      v32 = v27;
      while (*v32 != v31)
      {
        v32 += 8;
        if (v32 == v29)
        {
          goto LABEL_26;
        }
      }

      ++*(v32 + 1);
    }

    ++v26;
  }

  while (v26 != v25);
  if ((v29 - v27) >> 3 < 129)
  {
    v41 = 0;
LABEL_48:
    sub_262201384(v27, v29, (v29 - v27) >> 3, 0, v41);
  }

  else
  {
    v39 = MEMORY[0x277D826F0];
    v30 = (v29 - v27) >> 3;
    while (1)
    {
      v40 = operator new(8 * v30, v39);
      if (v40)
      {
        break;
      }

      v41 = v30 >> 1;
      v24 = v30 > 1;
      v30 >>= 1;
      if (!v24)
      {
        goto LABEL_48;
      }
    }

    v42 = v40;
    sub_262201384(v27, v29, (v29 - v27) >> 3, v40, v30);
    operator delete(v42);
  }

  v43 = (v28 - v27) >> 3;
  if (!v43)
  {
    goto LABEL_69;
  }

  if (v43 == 1)
  {
    v44 = *v27;
    if (*v27 == -1)
    {
      LOBYTE(v44) = 0;
      v45 = 0;
LABEL_70:
      operator delete(v27);
      goto LABEL_71;
    }
  }

  else
  {
    v44 = *v27;
    if (*v27 == -1)
    {
      v44 = *(v27 + 2);
    }
  }

  if (v59 == *(&v59 + 1))
  {
    v52 = 0.0;
  }

  else
  {
    v46 = 0;
    v47 = v59;
    do
    {
      v49 = *v47++;
      v48 = v49;
      v50 = v49 - v44;
      if ((v49 - v44) < 0)
      {
        v50 = -v50;
      }

      if (v50 >= 6)
      {
        v51 = v46;
      }

      else
      {
        v51 = v46 + 1;
      }

      if (v48 != -1)
      {
        v46 = v51;
      }
    }

    while (v47 != *(&v59 + 1));
    v52 = v46;
  }

  if ((v52 / ((*(&v59 + 1) - v59) >> 2)) < 0.5)
  {
LABEL_69:
    v45 = 0;
    LOBYTE(v44) = 0;
    if (!v27)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  LODWORD(v30) = v44 >> 8;
  v45 = 1;
  if (v27)
  {
    goto LABEL_70;
  }

LABEL_71:
  v2 = (v30 & 0xFFFFFF) << 8;
  v3 = v44;
  v4 = v45 << 32;
  v26 = v59;
  if (v59)
  {
LABEL_72:
    operator delete(v26);
  }

LABEL_73:
  v53 = *MEMORY[0x277D85DE8];
  return v3 | v4 | v2;
}

void sub_2622011B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (v52)
  {
    operator delete(v52);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262201248(void *a1)
{
  *a1 = &unk_2874EEDA0;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622012B4(void *a1)
{
  *a1 = &unk_2874EEDA0;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_262201300(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 136) == 1)
  {
    v2 = *(result + 144);
    v3 = *v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        v7 = v6;
        if (v3 < v6)
        {
          v3 = v7;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = *(result + 144);
    v9 = *v8;
    if (v1 >= 2)
    {
      v10 = *(result + 56);
      v11 = v1 - 1;
      v12 = 1;
      do
      {
        if (v9 < v8[v10 * v12])
        {
          v9 = v8[v10 * v12];
        }

        if (v12 + 1 == v1)
        {
          v12 = 0;
        }

        else
        {
          ++v12;
        }

        --v11;
      }

      while (v11);
    }
  }

  return result;
}

char *sub_262201384(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      if (*(a2 - 1) > *(result + 1))
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v20 = a4;
      v21 = a3 >> 1;
      v22 = &result[8 * (a3 >> 1)];
      v23 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_262201594(result, v22, v23, a4);
        v24 = &v20[v21];
        result = sub_262201594(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
        v25 = &v20[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *(v26 + 1) > *(v20 + 1);
          if (*(v26 + 1) <= *(v20 + 1))
          {
            v28 = v20;
          }

          else
          {
            v28 = v26;
          }

          v20 += *(v26 + 1) <= *(v20 + 1);
          v26 += v27;
          *v6 = *v28;
          v6 += 8;
          if (v20 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v20 != v24)
        {
          v29 = *v20++;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        sub_262201384(result, v22, v23, a4, a5);
        sub_262201384(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

        return sub_26220175C(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
      }
    }

    else if (result != a2)
    {
      v9 = result + 8;
      if (result + 8 != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *(v11 + 3);
          v13 = *(v11 + 1);
          v11 = v9;
          if (v12 > v13)
          {
            v14 = *v9;
            v15 = HIDWORD(*v11);
            v16 = v10;
            while (1)
            {
              *&result[v16 + 8] = *&result[v16];
              if (!v16)
              {
                break;
              }

              v17 = *&result[v16 - 4];
              v16 -= 8;
              if (v17 >= v15)
              {
                v18 = &result[v16 + 8];
                goto LABEL_16;
              }
            }

            v18 = result;
LABEL_16:
            *v18 = v14;
          }

          v9 = v11 + 8;
          v10 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_262201594(uint64_t result, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 4);
      v9 = *(result + 4);
      v10 = v8 <= v9;
      if (v8 <= v9)
      {
        v11 = result;
      }

      else
      {
        v11 = (a2 - 8);
      }

      *a4 = *v11;
      v4 = a4 + 1;
      if (v10)
      {
        v6 = a2 - 8;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v19 = result + 8 * (a3 >> 1);
      sub_262201384(result, v19, a3 >> 1, a4, a3 >> 1);
      result = sub_262201384(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v20 = v6 + 8 * (a3 >> 1);
      while (v20 != a2)
      {
        v21 = *(v20 + 4) <= *(v6 + 4);
        if (*(v20 + 4) <= *(v6 + 4))
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v20 += 8 * (*(v20 + 4) > *(v6 + 4));
        v6 += 8 * v21;
        *v4++ = *v22;
        if (v6 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20;
            v20 += 8;
            *v4++ = v24;
          }

          return result;
        }
      }

      while (v6 != v19)
      {
        v23 = *v6;
        v6 += 8;
        *v4++ = v23;
      }
    }

    else if (result != a2)
    {
      v12 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v6;
          v16 = v14;
          v6 = v12;
          v17 = ++v14;
          if (*(v15 + 12) > *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (*(v15 + 12) <= *(a4 + v18 - 4))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v6 + 8;
          *v17 = *v6;
          v13 += 8;
        }

        while (v6 + 8 != a2);
      }
    }
  }

  return result;
}

char *sub_26220175C(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*(a2 + 1) <= *(v11 + 1))
      {
        v11 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          v71 = *v11;
          *v11 = *a2;
          *a2 = v71;
          return result;
        }

        v20 = a4 / 2;
        v14 = &v11[8 * (a4 / 2)];
        v13 = a2;
        if (a2 != a3)
        {
          v21 = (a3 - a2) >> 3;
          v13 = a2;
          do
          {
            v22 = v21 >> 1;
            v23 = &v13[8 * (v21 >> 1)];
            v24 = *(v23 + 1);
            v25 = v23 + 8;
            v21 += ~(v21 >> 1);
            if (v24 > *(v14 + 1))
            {
              v13 = v25;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
        }

        v12 = (v13 - a2) >> 3;
      }

      else
      {
        v12 = v8 / 2;
        v13 = &a2[8 * (v8 / 2)];
        v14 = a2;
        if (a2 != v11)
        {
          v15 = (a2 - v11) >> 3;
          v14 = v11;
          do
          {
            v16 = v15 >> 1;
            v17 = &v14[8 * (v15 >> 1)];
            v18 = *(v17 + 1);
            v19 = v17 + 8;
            v15 += ~(v15 >> 1);
            if (*(v13 + 1) > v18)
            {
              v15 = v16;
            }

            else
            {
              v14 = v19;
            }
          }

          while (v15);
        }

        v20 = (v14 - v11) >> 3;
      }

      v26 = v13;
      v27 = a2 - v14;
      if (a2 != v14)
      {
        v26 = v14;
        v28 = v13 - a2;
        if (v13 != a2)
        {
          if (v14 + 8 == a2)
          {
            v72 = *v14;
            v74 = v20;
            v76 = a6;
            v29 = a3;
            v30 = v12;
            memmove(v14, a2, v13 - a2);
            v12 = v30;
            v20 = v74;
            a6 = v76;
            a3 = v29;
            v26 = &v14[v28];
            *&v14[v28] = v72;
          }

          else if (a2 + 8 == v13)
          {
            v31 = *(v13 - 1);
            v26 = v14 + 8;
            if (v13 - 8 != v14)
            {
              v75 = v20;
              v77 = a6;
              v32 = a3;
              v33 = v12;
              v73 = *(v13 - 1);
              memmove(v14 + 8, v14, v13 - 8 - v14);
              v31 = v73;
              v20 = v75;
              v12 = v33;
              a3 = v32;
              a6 = v77;
            }

            *v14 = v31;
          }

          else
          {
            v34 = v27 >> 3;
            if (v27 >> 3 == v28 >> 3)
            {
              v35 = v14 + 8;
              v36 = a2 + 8;
              do
              {
                v37 = *(v35 - 1);
                *(v35 - 1) = *(v36 - 1);
                *(v36 - 1) = v37;
                if (v35 == a2)
                {
                  break;
                }

                v35 += 8;
                v38 = v36 == v13;
                v36 += 8;
              }

              while (!v38);
              v26 = a2;
            }

            else
            {
              v39 = v28 >> 3;
              v40 = v27 >> 3;
              do
              {
                v41 = v40;
                v40 = v39;
                v39 = v41 % v39;
              }

              while (v39);
              v42 = &v14[8 * v40];
              do
              {
                v44 = *(v42 - 1);
                v42 -= 8;
                v43 = v44;
                v45 = &v42[v27];
                v46 = v42;
                do
                {
                  v47 = v45;
                  *v46 = *v45;
                  v48 = &v45[8 * v34];
                  v49 = __OFSUB__(v34, (v13 - v45) >> 3);
                  v50 = v34 - ((v13 - v45) >> 3);
                  v62 = (v50 < 0) ^ v49;
                  v45 = &v14[8 * v50];
                  if (v62)
                  {
                    v45 = v48;
                  }

                  v46 = v47;
                }

                while (v45 != v42);
                *v47 = v43;
              }

              while (v42 != v14);
              v26 = &v14[v28];
            }
          }
        }
      }

      a4 -= v20;
      v8 -= v12;
      if (v20 + v12 >= a4 + v8)
      {
        v54 = v20;
        v55 = a4;
        v56 = v12;
        v52 = a6;
        result = sub_26220175C(v26, v13, a3, v55, v8);
        v13 = v14;
        v8 = v56;
        a4 = v54;
        a3 = v26;
      }

      else
      {
        v51 = v11;
        v52 = a6;
        v53 = a3;
        result = sub_26220175C(v51, v14, v26, v20, v12);
        a3 = v53;
        v11 = v26;
      }

      a2 = v13;
      a6 = v52;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v66 = a6;
        v67 = v11;
        do
        {
          v68 = *v67;
          v67 += 8;
          *v66 = v68;
          v66 += 8;
        }

        while (v67 != a2);
        while (a2 != a3)
        {
          v69 = *(a2 + 1) <= *(a6 + 1);
          if (*(a2 + 1) <= *(a6 + 1))
          {
            v70 = a6;
          }

          else
          {
            v70 = a2;
          }

          a2 += 8 * (*(a2 + 1) > *(a6 + 1));
          a6 += 8 * v69;
          *v11 = *v70;
          v11 += 8;
          if (a6 == v66)
          {
            return result;
          }
        }

        return memmove(v11, a6, v66 - a6);
      }
    }

    else if (a2 != a3)
    {
      v57 = a6;
      v58 = a2;
      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v58 != a3);
      while (a2 != v11)
      {
        v60 = *(v57 - 1);
        v61 = *(a2 - 1);
        v62 = v60 <= v61;
        if (v60 <= v61)
        {
          v63 = v57;
        }

        else
        {
          v63 = a2;
        }

        if (v62)
        {
          v57 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v63 - 1);
        a3 -= 8;
        if (v57 == a6)
        {
          return result;
        }
      }

      if (v57 != a6)
      {
        v64 = -8;
        do
        {
          v65 = *(v57 - 1);
          v57 -= 8;
          *&a3[v64] = v65;
          v64 -= 8;
        }

        while (v57 != a6);
      }
    }
  }

  return result;
}

void sub_262201BD0(void *a1)
{
  *a1 = &unk_2874EE788;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262201C3C(void *a1)
{
  *a1 = &unk_2874EE788;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_262201C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = &unk_2874EE7C8;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = 1;
  v7 = *(a1 + 112);
  do
  {
    v8 = (a3 + 24 * v4);
    v9 = *v8;
    v10 = (v8[1] - *v8);
    v11 = v8[2];
    *(a1 + 8 + 8 * v4) = vcvtps_u32_f32(v10 / v11);
    *(a1 + 56 + 8 * v4) *= v11;
    LOBYTE(v11) = v6;
    v7 += *(a2 + 56 + 8 * v4) * v9;
    v4 = 1;
    v6 = 0;
  }

  while ((v11 & 1) != 0);
  *(a1 + 104) = *(a1 + 16) * *(a1 + 8);
  *(a1 + 112) = v7;
  v12 = *(a2 + 120);
  v13 = *(a2 + 128);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v14 = *(a1 + 128);
    *(a1 + 120) = v12;
    *(a1 + 128) = v13;
    if (v14)
    {
      sub_2621D1B78(v14);
      v12 = *v5;
    }
  }

  else
  {
    *(a1 + 120) = v12;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v12 + 2 * *(a1 + 112);
  *(a1 + 137) = 0;
  v15 = (a1 + 64);
  v16 = -2;
  v17 = 1;
  while (1)
  {
    v18 = *(v15 - 6);
    if (v18 != 1)
    {
      break;
    }

LABEL_11:
    --v15;
    if (__CFADD__(v16++, 1))
    {
      v20 = 1;
      goto LABEL_15;
    }
  }

  if (*v15 == v17)
  {
    v17 *= v18;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_15:
  *(a1 + 136) = v20;
}

uint64_t sub_262201E08(const char *a1, unsigned int *a2)
{
  v4 = strlen(a1);
  v5 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v5, " ", 1);
  v6 = *a2;

  return sub_2621D5CA8(v6);
}

void sub_262201E68(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_2874EE788;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_2621D6120(&v13, a2 + 8, a3);
  v7 = v13;
  *(a1 + 8) = *(v6 + 8 * v13);
  *(a1 + 56) = *(a2 + 8 * v7 + 56);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 128);
  *(a1 + 120) = v8;
  *(a1 + 128) = v9;
  if (v10)
  {
    sub_2621D1B78(v10);
    v8 = *v5;
  }

  *(a1 + 144) = *v8 + 2 * *(a1 + 112);
  *(a1 + 137) = 0;
  v12 = *(a1 + 8) == 1 || *(a1 + 56) == 1;
  *(a1 + 136) = v12;
}

void sub_262201F78(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262201F94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = 0;
  v8 = (a2 + 16);
  do
  {
    *(v8 - 2) = 0;
    *(v8 - 1) = *(a1 + v7);
    *v8 = 1;
    v7 += 8;
    v8 += 3;
  }

  while (v7 != 24);
  v12 = 0;
  sub_2621C9004(a3, &v12);
  v9 = *a4;
  v10 = *a4 + 1;

  return sub_262202A58(a1, a2, 0, v9, v10, 1);
}

void sub_26220202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = &unk_2874EEDA0;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = (a1 + 56);
  v7 = (a3 + 16);
  *(a1 + 40) = *(a2 + 40);
  do
  {
    v8 = *(v7 - 2);
    v9 = (*(v7 - 1) - v8);
    v10 = *v7;
    v7 += 3;
    *(v6 - 6) = vcvtps_u32_f32(v9 / v10);
    *v6++ *= v10;
    *(a1 + 112) += *(a2 + 56 + 8 * v4++) * v8;
  }

  while (v4 != 3);
  *(a1 + 104) = *(a1 + 16) * *(a1 + 8) * *(a1 + 24);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v13 = *(a1 + 128);
    *(a1 + 120) = v11;
    *(a1 + 128) = v12;
    if (v13)
    {
      sub_2621D1B78(v13);
      v11 = *v5;
    }
  }

  else
  {
    *(a1 + 120) = v11;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v11 + 2 * *(a1 + 112);
  *(a1 + 137) = 0;
  v14 = (a1 + 72);
  v15 = -3;
  v16 = 1;
  while (1)
  {
    v17 = *(v14 - 6);
    if (v17 != 1)
    {
      break;
    }

LABEL_11:
    --v14;
    if (__CFADD__(v15++, 1))
    {
      v19 = 1;
      goto LABEL_15;
    }
  }

  if (*v14 == v16)
  {
    v16 *= v17;
    goto LABEL_11;
  }

  v19 = 0;
LABEL_15:
  *(a1 + 136) = v19;
}

void sub_2622021A8(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2874EE7C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_262202308(&v20, a2 + 8, a3);
  v7 = v21;
  v8 = *(a2 + 56 + 8 * v20);
  v9 = *(v6 + 8 * v21);
  *(a1 + 8) = *(v6 + 8 * v20);
  *(a1 + 16) = v9;
  v10 = *(a2 + 56 + 8 * v7);
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 104) = *(a2 + 104);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v12;
  if (v13)
  {
    sub_2621D1B78(v13);
    v11 = *v5;
  }

  *(a1 + 144) = *v11 + 2 * *(a1 + 112);
  *(a1 + 137) = 0;
  v14 = (a1 + 64);
  v15 = -2;
  v16 = 1;
  while (1)
  {
    v17 = *(v14 - 6);
    if (v17 != 1)
    {
      break;
    }

LABEL_9:
    --v14;
    if (__CFADD__(v15++, 1))
    {
      v19 = 1;
      goto LABEL_13;
    }
  }

  if (*v14 == v16)
  {
    v16 *= v17;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_13:
  *(a1 + 136) = v19;
}

void sub_2622022EC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_262202308(uint64_t a1, uint64_t a2, int a3)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v5 = a3 + 3;
  if (a3 >= 0)
  {
    v5 = a3;
  }

  v6 = v5;
  if (v5 >= 3)
  {
    v7 = MEMORY[0x277D82670];
    v8 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v9 = sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
    v10 = sub_2621D552C(v9, " ", 1);
    v11 = MEMORY[0x266727260](v10, 66);
    v12 = sub_2621D552C(v11, " ", 1);
    v13 = sub_2621D552C(v12, "init", 4);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "which_dim<dim");
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v15 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
    if ((v6 & 0x80000000) != 0)
    {
      v16 = MEMORY[0x277D82670];
      v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
      v19 = sub_2621D552C(v18, " ", 1);
      v20 = MEMORY[0x266727260](v19, 67);
      v21 = sub_2621D552C(v20, " ", 1);
      v22 = sub_2621D552C(v21, "init", 4);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6874("err", "which_dim>=0");
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  if (*(a2 + 8 * v6) != 1)
  {
    v25 = MEMORY[0x277D82670];
    v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v27 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
    v28 = sub_2621D552C(v27, " ", 1);
    v29 = MEMORY[0x266727260](v28, 68);
    v30 = sub_2621D552C(v29, " ", 1);
    v31 = sub_2621D552C(v30, "init", 4);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6980("err", "shape[which_dim]==1");
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v33 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
  }

  v57.__locale_ = v6;
  sub_2621C9004(&v54, &v57);
  v34 = v54;
  if (v55 != v54)
  {
    v35 = 0;
    v36 = 0;
    v37 = v55 - v54;
    v38 = v37 - 1;
    if (v37 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v55 - v54;
    }

    v40 = v54 + 1;
    do
    {
      v41 = v35 + 1;
      if (v35 + 1 < v37)
      {
        v42 = v54[v35];
        v43 = v40;
        v44 = v38;
        do
        {
          v45 = *v43++;
          v36 |= v42 == v45;
          --v44;
        }

        while (v44);
      }

      --v38;
      ++v40;
      v35 = v41;
    }

    while (v41 != v39);
    if (v36)
    {
      v46 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v47 = sub_2621D552C(v46, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/squeeze_helper.hpp", 117);
      sub_2621D552C(v47, " ", 1);
      v48 = MEMORY[0x277D82670];
      v49 = MEMORY[0x266727260](MEMORY[0x277D82670], 79);
      sub_2621D552C(v49, " ", 1);
      sub_2621D552C(v49, "init", 4);
      std::ios_base::getloc((v49 + *(*v49 - 24)));
      v50 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
      (v50->__vftable[2].~facet_0)(v50, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6A8C("err", "duplicate dim idx");
      std::ios_base::getloc((v48 + *(*v48 - 24)));
      v51 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
      (v51->__vftable[2].~facet_0)(v51, 10);
      std::locale::~locale(&v57);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v52 = 0;
  v53 = 0;
  do
  {
    if (v52 != *v34)
    {
      *(a1 + 8 * v53++) = v52;
    }

    ++v52;
  }

  while (v52 != 3);
  operator delete(v34);
}

uint64_t sub_262202A58(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v8 = a4;
  v70 = a6;
  v11 = (result + 8 * a3);
  v12 = *v11;
  if ((a4 & 0x80000000) != 0 && (v8 = v12 + a4, (v12 + a4) < 0) || v12 < v8)
  {
    v13 = MEMORY[0x277D82670];
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v16 = sub_2621D552C(v15, " ", 1);
    v17 = MEMORY[0x266727260](v16, 264);
    v18 = sub_2621D552C(v17, " ", 1);
    v19 = sub_2621D552C(v18, "compute_range_inner", 19);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5854("err", "view shape should large equal 0 and less ", v11);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v21 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (a5)
  {
    if (a5 < 0)
    {
      a5 += *v11;
    }
  }

  else
  {
    v22 = MEMORY[0x277D82670];
    v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v25 = sub_2621D552C(v24, " ", 1);
    v26 = MEMORY[0x266727260](v25, 265);
    v27 = sub_2621D552C(v26, " ", 1);
    v28 = sub_2621D552C(v27, "compute_range_inner", 19);
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D58EC("err", "end should not be zero");
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v30 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
    a5 = 0;
  }

  if (a6 <= 0)
  {
    v31 = MEMORY[0x277D82670];
    v32 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v33 = sub_2621D552C(v32, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v34 = sub_2621D552C(v33, " ", 1);
    v35 = MEMORY[0x266727260](v34, 272);
    v36 = sub_2621D552C(v35, " ", 1);
    v37 = sub_2621D552C(v36, "compute_range_inner", 19);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "at least step > 0", &v70);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v39 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v40 = a5 - v8;
  if (a5 <= v8)
  {
    v41 = MEMORY[0x277D82670];
    v42 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v43 = sub_2621D552C(v42, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v44 = sub_2621D552C(v43, " ", 1);
    v45 = MEMORY[0x266727260](v44, 273);
    v46 = sub_2621D552C(v45, " ", 1);
    v47 = sub_2621D552C(v46, "compute_range_inner", 19);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5A90("err", "end >start");
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v49 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v49->__vftable[2].~facet_0)(v49, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  if (*v11 < a5)
  {
    v50 = MEMORY[0x277D82670];
    v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v53 = sub_2621D552C(v52, " ", 1);
    v54 = MEMORY[0x266727260](v53, 274);
    v55 = sub_2621D552C(v54, " ", 1);
    v56 = sub_2621D552C(v55, "compute_range_inner", 19);
    std::ios_base::getloc((v56 + *(*v56 - 24)));
    v57 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v57->__vftable[2].~facet_0)(v57, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "out ouf range");
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v58 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v58->__vftable[2].~facet_0)(v58, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v69 = v40 / a6;
  if (v40 / a6 <= 0)
  {
    v59 = MEMORY[0x277D82670];
    v60 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v61 = sub_2621D552C(v60, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/range_helper.hpp", 115);
    v62 = sub_2621D552C(v61, " ", 1);
    v63 = MEMORY[0x266727260](v62, 276);
    v64 = sub_2621D552C(v63, " ", 1);
    v65 = sub_2621D552C(v64, "compute_range_inner", 19);
    std::ios_base::getloc((v65 + *(*v65 - 24)));
    v66 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v66->__vftable[2].~facet_0)(v66, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D59F8("err", "length > 0", &v69);
    std::ios_base::getloc((v59 + *(*v59 - 24)));
    v67 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v67->__vftable[2].~facet_0)(v67, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v68 = (a2 + 24 * a3);
  *v68 = v8;
  v68[1] = a5;
  v68[2] = a6;
  return result;
}

void sub_262203438(void *a1)
{
  *a1 = &unk_2874EE7C8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622034A4(void *a1)
{
  *a1 = &unk_2874EE7C8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_2622034F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE7C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_2622035C8(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EE7C8;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(result + 8) = *a2;
  *(result + 40) = v2;
  *(result + 24) = v3;
  v5 = *(result + 8);
  v4 = *(result + 16);
  *(result + 56) = v4;
  *(result + 64) = 1;
  v6 = v5 * v4;
  *(result + 104) = v6;
  *(result + 112) = 0;
  if (v6)
  {
    sub_262204144();
  }

  *(result + 137) = 1;
  return result;
}

void sub_2622036AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622036C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v165 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = (a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v5 + v4);
    v9 = *(v6 + v4);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v4 = 1;
  }

  while (v8 == v9);
  v10 = *(a2 + 136);
  if (v8 == v9)
  {
    if (*(a2 + 136))
    {
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      v11 = *(result + 104);
      v12 = *(result + 144);
      if (*(result + 136))
      {
        if (v11)
        {
          v13 = *(a2 + 144);
          do
          {
            v14 = *v13++;
            *v12++ = v14;
            --v11;
          }

          while (v11);
        }
      }

      else if (v11)
      {
        v83 = 0;
        v84 = *(result + 56);
        v85 = *(result + 64);
        v86 = *(a2 + 144);
        do
        {
          v87 = 0;
          v12[v85 * *(&v150 + 1) + v84 * v150] = *(v86 + 2 * v83);
          do
          {
            v88 = *(&v150 + v87 + 8) + 1;
            *(&v150 + v87 + 8) = v88;
            result = *(v3 + 16 + v87);
            if (v88 != result)
            {
              break;
            }

            *(&v150 + v87 + 8) = 0;
            v87 -= 8;
          }

          while (v87 != -16);
          ++v83;
        }

        while (v83 != v11);
      }
    }

    else
    {
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      v43 = *(result + 104);
      v44 = *(result + 144);
      if (*(result + 136))
      {
        if (v43)
        {
          v45 = 0;
          v46 = *(a2 + 56);
          v47 = *(a2 + 64);
          v48 = *(a2 + 144);
          do
          {
            v49 = 0;
            *(v44 + 2 * v45) = *(v48 + 2 * v47 * *(&v150 + 1) + 2 * v46 * v150);
            do
            {
              v50 = *(&v150 + v49 + 8) + 1;
              *(&v150 + v49 + 8) = v50;
              result = *(v3 + 16 + v49);
              if (v50 != result)
              {
                break;
              }

              *(&v150 + v49 + 8) = 0;
              v49 -= 8;
            }

            while (v49 != -16);
            ++v45;
          }

          while (v45 != v43);
        }
      }

      else if (v43)
      {
        v89 = 0;
        v90 = *(result + 56);
        v91 = *(result + 64);
        v92 = *(a2 + 56);
        v93 = *(a2 + 64);
        v94 = *(a2 + 144);
        do
        {
          result = 0;
          *(v44 + 2 * v91 * *(&v150 + 1) + 2 * v90 * v150) = *(v94 + 2 * v93 * *(&v150 + 1) + 2 * v92 * v150);
          do
          {
            v95 = *(&v150 + result + 8) + 1;
            *(&v150 + result + 8) = v95;
            if (v95 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v150 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v89;
        }

        while (v89 != v43);
      }
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v163 = 0uLL;
      v164 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      v142 = 0uLL;
      v143 = 0uLL;
      v141 = 0uLL;
      sub_2621D96E4(&v150, v5, v6, &v141);
      v15 = 0;
      v16 = &v141;
      v17 = 1;
      do
      {
        v18 = *v16;
        v19 = *(v5 + v15);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v17 = 0;
        v16 = &v141 + 1;
        v15 = 1;
      }

      while (v18 == v19);
      if (v18 != v19)
      {
        v20 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v21 = sub_2621D552C(v20, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v21, " ", 1);
        v22 = MEMORY[0x277D82670];
        v23 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v23, " ", 1);
        sub_2621D552C(v23, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v25 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v26 = *(v3 + 104);
      v27 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v26)
        {
          v28 = 0;
          v30 = *(&v151 + 1);
          v29 = v152;
          v31 = (v152 - *(&v151 + 1)) >> 3;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = *(a2 + 144);
          do
          {
            v144 = *&v147[0].__locale_;
            if (v29 != v30)
            {
              v33 = v30;
              v34 = v31;
              do
              {
                v35 = *v33++;
                *(&v144 + v35) = 0;
                --v34;
              }

              while (v34);
            }

            v36 = 0;
            v37 = 0;
            v38 = &v144;
            v39 = 1;
            do
            {
              v40 = v39;
              v37 += *(&v162 + v36) * *v38;
              v38 = (&v144 + 8);
              v36 = 1;
              v39 = 0;
            }

            while ((v40 & 1) != 0);
            *(v27 + 2 * v28) = *(v32 + 2 * v37);
            for (i = 1; i != -1; --i)
            {
              v42 = (v147[i].__locale_ + 1);
              v147[i].__locale_ = v42;
              if (v42 != *(&v141 + i * 8))
              {
                break;
              }

              v147[i].__locale_ = 0;
            }

            ++v28;
          }

          while (v28 != v26);
        }
      }

      else if (v26)
      {
        v96 = 0;
        v98 = *(&v151 + 1);
        v97 = v152;
        v99 = (v152 - *(&v151 + 1)) >> 3;
        if (v99 <= 1)
        {
          v99 = 1;
        }

        v100 = *(v3 + 56);
        v101 = *(v3 + 64);
        v102 = *(a2 + 144);
        do
        {
          locale = v147[0].__locale_;
          v104 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v97 != v98)
          {
            v105 = v98;
            v106 = v99;
            do
            {
              v107 = *v105++;
              *(&v144 + v107) = 0;
              --v106;
            }

            while (v106);
          }

          v108 = 0;
          v109 = 0;
          v110 = &v144;
          v111 = 1;
          do
          {
            v112 = v111;
            v109 += *(&v162 + v108) * *v110;
            v110 = (&v144 + 8);
            v108 = 1;
            v111 = 0;
          }

          while ((v112 & 1) != 0);
          *(v27 + 2 * v104 * v101 + 2 * locale * v100) = *(v102 + 2 * v109);
          for (j = 1; j != -1; --j)
          {
            v114 = (v147[j].__locale_ + 1);
            v147[j].__locale_ = v114;
            if (v114 != *(&v141 + j * 8))
            {
              break;
            }

            v147[j].__locale_ = 0;
          }

          ++v96;
        }

        while (v96 != v26);
      }
    }

    else
    {
      v163 = 0uLL;
      v164 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      v142 = 0uLL;
      v143 = 0uLL;
      v141 = 0uLL;
      sub_2621D96E4(&v150, v5, v6, &v141);
      v51 = 0;
      v52 = &v141;
      v53 = 1;
      do
      {
        v54 = *v52;
        v55 = *(v5 + v51);
        if ((v53 & 1) == 0)
        {
          break;
        }

        v53 = 0;
        v52 = &v141 + 1;
        v51 = 1;
      }

      while (v54 == v55);
      if (v54 != v55)
      {
        v56 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v57 = sub_2621D552C(v56, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v57, " ", 1);
        v58 = MEMORY[0x277D82670];
        v59 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v59, " ", 1);
        sub_2621D552C(v59, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v60 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v61 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v62 = *(v3 + 104);
      v63 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v62)
        {
          v64 = 0;
          v66 = *(&v151 + 1);
          v65 = v152;
          v67 = (v152 - *(&v151 + 1)) >> 3;
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = *(a2 + 136);
          v69 = *(a2 + 56);
          v70 = *(a2 + 64);
          v71 = *(a2 + 144);
          do
          {
            v144 = *&v147[0].__locale_;
            if (v65 != v66)
            {
              v72 = v66;
              v73 = v67;
              do
              {
                v74 = *v72++;
                *(&v144 + v74) = 0;
                --v73;
              }

              while (v73);
            }

            v75 = 0;
            v76 = 0;
            v77 = &v144;
            v78 = 1;
            do
            {
              v79 = v78;
              v76 += *(&v162 + v75) * *v77;
              v77 = (&v144 + 8);
              v75 = 1;
              v78 = 0;
            }

            while ((v79 & 1) != 0);
            v80 = (v71 + 2 * v76);
            if (!v68)
            {
              v80 = (v71 + 2 * *(&v144 + 1) * v70 + 2 * v144 * v69);
            }

            *(v63 + 2 * v64) = *v80;
            for (k = 1; k != -1; --k)
            {
              v82 = (v147[k].__locale_ + 1);
              v147[k].__locale_ = v82;
              if (v82 != *(&v141 + k * 8))
              {
                break;
              }

              v147[k].__locale_ = 0;
            }

            ++v64;
          }

          while (v64 != v62);
        }
      }

      else if (v62)
      {
        v115 = 0;
        v117 = *(&v151 + 1);
        v116 = v152;
        v118 = (v152 - *(&v151 + 1)) >> 3;
        if (v118 <= 1)
        {
          v118 = 1;
        }

        v119 = *(v3 + 56);
        v120 = *(v3 + 64);
        v121 = *(a2 + 136);
        v122 = *(a2 + 56);
        v123 = *(a2 + 64);
        v124 = *(a2 + 144);
        do
        {
          v125 = v147[0].__locale_;
          v126 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v116 != v117)
          {
            v127 = v117;
            v128 = v118;
            do
            {
              v129 = *v127++;
              *(&v144 + v129) = 0;
              --v128;
            }

            while (v128);
          }

          v130 = 0;
          v131 = 0;
          v132 = &v144;
          v133 = 1;
          do
          {
            v134 = v133;
            v131 += *(&v162 + v130) * *v132;
            v132 = (&v144 + 8);
            v130 = 1;
            v133 = 0;
          }

          while ((v134 & 1) != 0);
          v135 = v125 * v119;
          v136 = v126 * v120;
          v137 = (v124 + 2 * v131);
          if (!v121)
          {
            v137 = (v124 + 2 * *(&v144 + 1) * v123 + 2 * v144 * v122);
          }

          *(v63 + 2 * v136 + 2 * v135) = *v137;
          for (m = 1; m != -1; --m)
          {
            v139 = (v147[m].__locale_ + 1);
            v147[m].__locale_ = v139;
            if (v139 != *(&v141 + m * 8))
            {
              break;
            }

            v147[m].__locale_ = 0;
          }

          ++v115;
        }

        while (v115 != v62);
      }
    }

    result = sub_2621C57C8(&v150);
  }

  v140 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262204110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

void sub_2622041E8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262204204(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C80BDFB0063);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_262204254(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EEDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

_OWORD *sub_2622042C8(_OWORD *__b, char **a2)
{
  __b[1] = 0u;
  __b[2] = 0u;
  *__b = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 89);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "Shape", 5);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D72FC("err", "size of input shape vector is 0");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
  }

  v15 = v5 - v4;
  if ((v5 - v4) >= 0x20)
  {
    v16 = MEMORY[0x277D82670];
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v19 = sub_2621D552C(v18, " ", 1);
    v20 = MEMORY[0x266727260](v19, 90);
    v21 = sub_2621D552C(v20, " ", 1);
    v22 = sub_2621D552C(v21, "Shape", 5);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D7408("err", "size of input shape vector > current dim");
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v24 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
    v15 = v5 - *a2;
  }

  v25 = v15 >> 3;
  if (v15 == 24)
  {
    v26 = 0;
  }

  else
  {
    if (v25 != 2 && v25 != 3)
    {
      v26 = 3 - v25;
    }

    else
    {
      v26 = 1;
    }

    memset_pattern16(__b, &unk_2623A7E50, 8 * v26);
  }

  if (v5 != v4)
  {
    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = __b + v26;
    do
    {
      v29 = *v4;
      v4 += 8;
      *v28++ = v29;
      --v27;
    }

    while (v27);
  }

  return __b;
}

uint64_t sub_26220469C(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EEDA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  sub_262204784(a1 + 8, a2);
  if (*(a1 + 104))
  {
    sub_262204144();
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_26220476C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262204784(uint64_t result, __int128 *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = a2[2];
  *(result + 16) = a2[1];
  *(result + 32) = v4;
  *result = v3;
  v5 = result + 48;
  do
  {
    *(v5 + 8 * v2) = 1;
    if (v2 <= 1)
    {
      v6 = v2;
      v7 = 1;
      do
      {
        v7 *= *(result + 8 + 8 * v6);
        *(v5 + 8 * v2) = v7;
        ++v6;
      }

      while (v6 != 2);
    }

    ++v2;
  }

  while (v2 != 3);
  *(result + 96) = *(result + 8) * *result * *(result + 16);
  *(result + 104) = 0;
  return result;
}

void sub_2622047F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 8);
  v8[0] = 0;
  v8[1] = v6;
  v9 = xmmword_2623A7680;
  v10 = *(a2 + 16);
  v11 = 1;
  sub_2621D9BD4(a2 + 8, v8, a3, a4);
  sub_262201C88(a1, a2, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26220488C(uint64_t result)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(result + 16) * *(result + 8);
  memset(v21, 0, sizeof(v21));
  if (*(result + 136) == 1)
  {
    v2 = *(result + 144);
    v3 = *v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        v7 = v6;
        if (v3 < v6)
        {
          v3 = v7;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = *(result + 56);
    v9 = *(result + 64);
    v10 = *(result + 144);
    v11 = *v10;
    v12 = 1;
    v13 = (result + 16);
    do
    {
      v14 = *(v21 + v12) + 1;
      *(v21 + v12) = v14;
      v15 = *v13--;
      if (v14 != v15)
      {
        break;
      }

      *(v21 + v12--) = 0;
    }

    while (v12 != -1);
    if (v1 >= 2)
    {
      for (i = 1; i != v1; ++i)
      {
        v17 = 0;
        v18 = &v10[v9 * *(&v21[0] + 1)];
        if (v11 < v18[v8 * *&v21[0]])
        {
          v11 = v18[v8 * *&v21[0]];
        }

        do
        {
          v19 = *(v21 + v17 + 8) + 1;
          *(v21 + v17 + 8) = v19;
          if (v19 != *(result + 16 + v17))
          {
            break;
          }

          *(v21 + v17 + 8) = 0;
          v17 -= 8;
        }

        while (v17 != -16);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}