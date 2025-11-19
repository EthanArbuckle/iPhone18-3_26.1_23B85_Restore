void sub_1000025C4(id a1)
{
  qword_10003C6E8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

BOOL _NTKImageWriteToFile(CGImage *a1, NSString *a2)
{
  v3 = [NSURL fileURLWithPath:a2];
  v4 = [UTTypePNG identifier];
  v5 = CGImageDestinationCreateWithURL(v3, v4, 1uLL, 0);

  if (!v5)
  {
    return 0;
  }

  CGImageDestinationAddImage(v5, a1, 0);
  v6 = CGImageDestinationFinalize(v5);
  CFRelease(v5);
  return v6;
}

uint64_t _NTKRawWriteToFile(const void **a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = CGDataProviderCreateWithData(0, *a1, 4 * a2 * a3, 0);
  v9 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v10 = CGImageCreate(a2, a3, 8uLL, 0x20uLL, 4 * a2, v9, 0, v8, 0, 0, kCGRenderingIntentDefault);
  _NTKImageWriteToFile(v10, v7);
  CGImageRelease(v10);
  CGDataProviderRelease(v8);
  CGColorSpaceRelease(v9);

  return 1;
}

float sub_100003AB4(int a1, float32x4_t a2)
{
  a2.f32[0] = a1;
  a2.f32[1] = BYTE1(a1);
  a2.f32[2] = BYTE2(a1);
  v2 = vdivq_f32(a2, vdupq_n_s32(0x437F0000u));
  if (v2.f32[0] >= v2.f32[1])
  {
    v3 = v2.f32[0];
  }

  else
  {
    v3 = v2.f32[1];
  }

  if (v2.f32[0] >= v2.f32[1])
  {
    v4 = v2.f32[1];
  }

  else
  {
    v4 = v2.f32[0];
  }

  if (v3 >= v2.f32[2])
  {
    v5 = v3;
  }

  else
  {
    v5 = v2.f32[2];
  }

  if (v4 >= v2.f32[2])
  {
    v6 = v2.f32[2];
  }

  else
  {
    v6 = v4;
  }

  result = 0.0;
  if (v5 > v6)
  {
    v8 = v5 - v6;
    v9 = ((v2.f32[0] - v2.f32[1]) / (v5 - v6)) + 4.0;
    if (v2.f32[1] == v5)
    {
      v9 = ((v2.f32[2] - v2.f32[0]) / v8) + 2.0;
    }

    v10 = (v2.f32[1] - v2.f32[2]) / v8;
    v11 = 0.0;
    if (v2.f32[1] < v2.f32[2])
    {
      v11 = 6.0;
    }

    v12 = v11 + v10;
    if (v2.f32[0] != v5)
    {
      v12 = v9;
    }

    return v12 / 6.0;
  }

  return result;
}

float sub_100003B8C(float a1, float a2, float a3)
{
  v3 = a3;
  v4 = a3;
  if (a2 >= 0.00001)
  {
    v6 = (a3 + a2) - (a3 * a2);
    v7 = a3 * (a2 + 1.0);
    if (a3 < 0.5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = -(v8 - (a3 * 2.0));
    v4 = sub_100007F68(v9, v8, a1 + 0.33333);
    v3 = sub_100007F68(v9, v8, a1);
    a3 = sub_100007F68(v9, v8, a1 + -0.33333);
  }

  v10 = 0.0;
  if (v3 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v10 = -1.0;
    v11 = v3;
  }

  if (v3 >= a3)
  {
    a3 = v3;
  }

  if (v4 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v10 = -0.33333 - v10;
    v12 = v4;
  }

  if (v4 >= a3)
  {
    a3 = v4;
  }

  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return fabsf(v10 + ((v12 - v11) / (((a3 - v13) * 6.0) + 0.00001)));
}

void NTKKaleidoscopeAnalyzeInterestingness(void *a1, float *a2, int a3, int a4, int a5)
{
  v8 = a1;
  v60 = a2;
  bzero(a2, 4 * a4 * a3);
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / a3;
  if (v9 / a3 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 / a3;
  }

  if (v12 >= 16)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v74 = v13;
  v14 = v10 / a4;
  v67 = v10 / a4;
  if (v10 / a4 <= 1)
  {
    v14 = 1;
  }

  if (v14 >= 16)
  {
    v15 = 16;
  }

  else
  {
    v15 = v14;
  }

  v73 = v15;
  v58 = v8;
  v16 = (v73 * a4);
  v72 = v74 * a3;
  if ([v58 width] != v74 * a3 || (v17 = v58, objc_msgSend(v58, "height") != v16))
  {
    v17 = [v58 scaleToWidth:v72 height:v16];
  }

  v18 = [v17 contents];
  v57 = v17;
  v68 = v11;
  v19 = malloc_type_malloc(16 * v74 * v73, 0x1000040451B5BE8uLL);
  if (a4 - a5 > a5)
  {
    v69 = a3 - a5;
    v20 = vsub_s32(&_mh_execute_header, vdup_n_s32(v74));
    v21 = ((v73 - 2) * (v74 - 2));
    if (v12 >= 0x10)
    {
      v22 = 16;
    }

    else
    {
      v22 = v12;
    }

    v59 = a3;
    v64 = a5 * v74 + a5 * v74 * a3 * v73;
    v61 = a3 * v73 * v74;
    __asm { FMOV            V0.4S, #1.0 }

    v75 = HIDWORD(_Q0);
    v63 = a5;
    v66 = v22;
    v65 = vdupq_n_s32(0x3C23D70Au);
    do
    {
      if (v69 > a5)
      {
        v28 = a5;
        v29 = v64;
        do
        {
          v70 = v28;
          v30 = 0;
          v31 = 0;
          v71 = v29;
          do
          {
            v32 = v31;
            v33 = v73;
            v34 = v29;
            do
            {
              v35 = v18[v34];
              _CLKUIRGB2LAB();
              *&v37 = v36;
              *(&v37 + 1) = __PAIR64__(v75, v38);
              v31 = v32 + 1;
              v19[v32] = v37;
              ++v34;
              ++v32;
              --v33;
            }

            while (v33);
            ++v30;
            v29 += v72;
          }

          while (v30 != v74);
          v76 = ~v74;
          v77 = v20;
          v78 = 0x1FFFFFFFFLL;
          v39 = 0.0;
          v40 = 0.0;
          v79 = v74 - 1;
          v80 = v74;
          v41 = 0.0;
          v42 = 0.0;
          v81 = v74 + 1;
          if (v67 >= 3)
          {
            v43 = 1;
            v44 = v66;
            do
            {
              if (v68 >= 3)
              {
                v45 = 1;
                v46 = v44;
                do
                {
                  v47 = 0;
                  v48 = &v19[++v46];
                  v49 = 0;
                  v50 = 0;
                  v51 = 0;
                  do
                  {
                    v52 = qword_100027F50[v47];
                    v53 = vmulq_f32(v48[*(&v76 + v47)], v65);
                    v51 = vmla_n_f32(v51, v52, v53.f32[0]);
                    v50 = vmla_lane_f32(v50, v52, *v53.f32, 1);
                    v49 = vmla_laneq_f32(v49, v52, v53, 2);
                    ++v47;
                  }

                  while (v47 != 8);
                  v42 = v42 + sqrtf(vaddv_f32(vmul_f32(v51, v51)));
                  v41 = v41 + sqrtf(vaddv_f32(vmul_f32(v50, v50)));
                  v40 = v40 + sqrtf(vaddv_f32(vmul_f32(v49, v49)));
                  v39 = v39 + (0.01 * COERCE_FLOAT(*v48));
                  ++v45;
                }

                while (v45 != v74 - 1);
              }

              v44 += v66;
            }

            while (v43++ != v73 - 2);
          }

          v54 = v39 / v21;
          v55 = (v39 / v21) <= 0.9;
          v56 = 1.0;
          if (v55)
          {
            if (v54 < 0.25)
            {
              v56 = v54 * 4.0;
            }
          }

          else
          {
            v56 = (1.0 - v54) * 10.0;
          }

          v60[v63 * v59 + v70] = (((v56 * 0.2) + (sqrtf(v42 / v21) * 0.2)) + (sqrtf(v41 / v21) * 0.3)) + (sqrtf(v40 / v21) * 0.3);
          v28 = v70 + 1;
          v29 = v71 + v74;
        }

        while (v69 != v70 + 1);
      }

      v64 += v61;
      ++v63;
    }

    while (a4 - a5 != v63);
  }

  free(v19);
}

id NTKGeneratePathFromInterestingness()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v6 = v0;
  v7 = v2 * v1;
  v400 = v1;
  v370 = v2;
  if (v7 < 1)
  {
    v410 = 0;
    v8 = 0;
  }

  else
  {
    v410 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v1 = v400;
    v2 = v370;
  }

  v9 = v2 - v5;
  if (v2 - v5 > v5)
  {
    v15 = v1 - v5;
    v16 = v5;
    v17 = 4 * v1;
    v18 = (v6 + (v17 + 4) * v5);
    v12 = 0;
    v13 = 1.0;
    v19 = v5;
    v14 = 0.0;
    do
    {
      v20 = v18;
      v21 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v22 = *v20++;
          v23 = v22;
          if (v13 >= v22)
          {
            v13 = v23;
          }

          if (v12.f32[0] < v23)
          {
            v12.f32[0] = v23;
          }

          v14 = v14 + v23;
          --v21;
        }

        while (v21);
      }

      ++v19;
      v18 = (v18 + v17);
    }

    while (v19 != v9);
    v419 = 0;
    v418 = 0;
    v420 = 0;
    v11 = v12.f32[0] - v13;
    v24 = 4 * v1;
    v25 = (v6 + (v24 + 4) * v5);
    do
    {
      v26 = v25;
      v27 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v28 = *v26++;
          v29 = ((((v28 - v13) / v11) * 9.0) + 0.5);
          ++*(&v418 + v29);
          --v27;
        }

        while (v27);
      }

      ++v16;
      v25 = (v25 + v24);
    }

    while (v16 != v9);
    v10 = HIWORD(v420);
    v2 = v370;
  }

  else
  {
    v10 = 0;
    v419 = 0;
    v418 = 0;
    v11 = -1.0;
    v12 = 0;
    v13 = 1.0;
    v14 = 0.0;
    v420 = 0;
  }

  v30 = (v2 - 2 * v5) * (v1 - 2 * v5);
  v31 = v14 / v30;
  LODWORD(v32) = (((v31 - v13) / v11) * 9.0);
  if (v32 <= 7)
  {
    if (v32 <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v32;
    }

    for (i = 8; i > v32; --i)
    {
      v10 += *(&v418 + i);
    }
  }

  v34 = (v13 + v12.f32[0]) * 0.5;
  if (v31 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  v36 = v1 - v5;
  if (v9 > v5)
  {
    v37 = 0;
    v38 = v5;
    v39 = 4 * v1;
    v40 = (v6 + (v39 + 4) * v5);
    do
    {
      v41 = v40;
      v42 = v1 - 2 * v5;
      if (v36 > v5)
      {
        do
        {
          v43 = *v41++;
          if (v43 > v35)
          {
            ++v37;
          }

          --v42;
        }

        while (v42);
      }

      ++v38;
      v40 = (v40 + v39);
    }

    while (v38 != v9);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v44) = v30 - 3;
  if (v10 >= v44)
  {
    v10 = v44;
  }

  if (v37 < v44)
  {
    LODWORD(v44) = v37;
  }

  if (v10 <= 3)
  {
    v10 = 3;
  }

  if (v44 <= 3)
  {
    v44 = 3;
  }

  else
  {
    v44 = v44;
  }

  v394 = (v44 + (v10 - 1) + 1) >> 1;
  if (v9 > v5)
  {
    v46 = v5;
    v47 = 4 * v1;
    v48 = (v6 + (v47 + 4) * v5);
    v45 = -1;
    v12.i32[0] = -1.0;
    do
    {
      if (v36 > v5)
      {
        v49 = v48;
        v50 = v5;
        v51 = v1 - 2 * v5;
        do
        {
          v52 = *v49++;
          v3.f32[0] = v52;
          v45 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, v12), 0), __PAIR64__(v46, v50), v45);
          if (v52 > v12.f32[0])
          {
            v12.f32[0] = v3.f32[0];
          }

          ++v50;
          --v51;
        }

        while (v51);
      }

      ++v46;
      v48 = (v48 + v47);
    }

    while (v46 != v9);
  }

  else
  {
    v45 = -1;
  }

  v406 = v45;
  v379 = v1;
  v53 = v45.i32[0] + v45.i32[1] * v1;
  v398 = v1 - v5;
  v399 = v9;
  bzero(v410, v7);
  v55 = v398;
  v54 = v399;
  v56 = 0;
  v410[v53] = 1;
  LODWORD(v57) = -1.0;
  v58 = -1;
  v59 = -1;
  do
  {
    v60 = vadd_s32(qword_100027F90[v56], v406);
    v61 = v60.i32[0] >= v5 && v60.i32[1] < v399;
    if (v61 && v60.i32[1] >= v5 && v60.i32[0] < v398)
    {
      v64 = v60.i32[0] + v60.i32[1] * v400;
      if (*(v6 + 4 * v64) > *&v57)
      {
        LODWORD(v57) = *(v6 + 4 * v64);
        v59 = v56;
        v58 = v60.i32[0] + v60.i32[1] * v400;
      }
    }

    ++v56;
  }

  while (v56 != 8);
  v372 = v8;
  v65 = 0;
  v66 = v59 + 7;
  v67 = 1;
  v68 = -1.0;
  v69 = -1;
  v70 = v400;
  do
  {
    v71 = vadd_s32(qword_100027F90[(v66 + v65) & 7], v406);
    v72 = v67;
    if (v71.i32[0] >= v5 && v71.i32[1] < v399 && v71.i32[1] >= v5 && v71.i32[0] < v398)
    {
      v76 = v71.i32[0] + v71.i32[1] * v400;
      if (*(v6 + 4 * v76) > v68)
      {
        v68 = *(v6 + 4 * v76);
        v69 = v71.i32[0] + v71.i32[1] * v400;
      }
    }

    v67 = 0;
    v65 = 2;
  }

  while ((v72 & 1) != 0);
  v391 = v7;
  v382 = v7;
  size = v6;
  v77 = 0;
  v78 = 0;
  ptr = 0;
  v79 = 0;
  v410[v58] = 1;
  v410[v69] = 1;
  v418 = __PAIR64__(v58, v53);
  LODWORD(v419) = v69;
  do
  {
    v80 = 0;
    v81 = *(&v418 + v79);
    v82 = v81 / v70;
    v83 = v81 % v70;
    do
    {
      v84 = *&qword_100027F90[v80] + v83;
      v85 = HIDWORD(*&qword_100027F90[v80]) + v82;
      if (v84 >= v5 && v85 >= v5 && v84 < v55 && v85 < v54)
      {
        v89 = v84 + v85 * v70;
        if (!v410[v89])
        {
          v90 = v89;
          if (*(size + 4 * v89) <= v35)
          {
            v92 = 3;
          }

          else
          {
            if (v78 >= v77)
            {
              v77 = 2 * v77 + 2;
              v91 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
              v54 = v399;
              v70 = v400;
              v55 = v398;
            }

            else
            {
              v91 = ptr;
            }

            ptr = v91;
            v91[v78++] = v90;
            v92 = 2;
          }

          v410[v90] = v92;
        }
      }

      ++v80;
    }

    while (v80 != 8);
    ++v79;
  }

  while (v79 != 3);
  v93 = v5;
  v94 = v54;
  v95 = v55;
  v96 = v379;
  v97 = 3;
  v98 = v372;
  v407 = v5;
  v396 = v54;
  while (1)
  {
    __src = v394 - v97;
    if (v394 - v97 < 1)
    {
      v100 = size;
    }

    else
    {
      v99 = 0;
      v100 = size;
      do
      {
        if (v78 < 1)
        {
          break;
        }

        v101 = *ptr;
        v102 = 0;
        if (v78 != 1)
        {
          v103 = *(size + 4 * *ptr);
          for (j = 1; j != v78; ++j)
          {
            v105 = ptr[j];
            if (*(size + 4 * v105) > v103)
            {
              v103 = *(size + 4 * v105);
              v101 = ptr[j];
              v102 = j;
            }
          }
        }

        if (v78 - 1 != v102)
        {
          memmove(&ptr[v102], &ptr[v102 + 1], 2 * (v78 + ~v102));
          v55 = v398;
          v54 = v399;
          v70 = v400;
          v102 = v78 - 1;
        }

        v106 = 0;
        v410[v101] = 1;
        v107 = v101 / v70;
        v108 = v101 % v70;
        v78 = v102;
        do
        {
          v109 = *&qword_100027F90[v106] + v108;
          v110 = HIDWORD(*&qword_100027F90[v106]) + v107;
          if (v109 >= v5 && v110 >= v5 && v109 < v55 && v110 < v54)
          {
            v114 = v109 + v110 * v70;
            if (!v410[v114])
            {
              v115 = v114;
              if (*(size + 4 * v114) <= v35)
              {
                v117 = 3;
              }

              else
              {
                if (v78 >= v77)
                {
                  v77 = 2 * v77 + 2;
                  v116 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
                  v54 = v399;
                  v70 = v400;
                  v55 = v398;
                }

                else
                {
                  v116 = ptr;
                }

                ptr = v116;
                v116[v78++] = v115;
                v117 = 2;
              }

              v410[v115] = v117;
            }
          }

          ++v106;
        }

        while (v106 != 8);
        ++v99;
        v98 = v372;
        v100 = size;
        v96 = v379;
        v93 = v5;
        v94 = v396;
      }

      while (v99 != __src);
    }

    v97 = 0;
    if (v54 > v5)
    {
      v118 = &v410[v5 + v379 * v5];
      v119 = v93;
      do
      {
        v120 = v118;
        v121 = v379 - 2 * v5;
        if (v55 > v5)
        {
          do
          {
            v122 = *v120++;
            if (v122 == 1)
            {
              ++v97;
            }

            --v121;
          }

          while (v121);
        }

        ++v119;
        v118 += v96;
      }

      while (v119 != v94);
    }

    if (v54 <= v5 || v97 >= v394)
    {
      break;
    }

    v123 = -1.0;
    v124 = -1;
    v125 = v93;
    v126 = 0xFFFFFFFFLL;
    do
    {
      if (v55 > v5)
      {
        v127 = v125 * v96;
        v128 = v93;
        v129 = v126;
        v130 = v123;
        do
        {
          v126 = v128 + v127;
          if (v410[v128 + v127] == 3 && (v123 = *(v100 + 4 * v126), v123 > v130))
          {
            v131 = 0;
            while (1)
            {
              v132 = *&qword_100027F90[v131] + v128;
              v133 = HIDWORD(*&qword_100027F90[v131]) + v125;
              v134 = v132 >= v55 || v132 < v5;
              v135 = v134 || v133 < v5;
              if (!v135 && v133 < v54)
              {
                v137 = v132 + v133 * v70;
                if (!v410[v137] && *(v100 + 4 * v137) > v35)
                {
                  break;
                }
              }

              if (++v131 == 8)
              {
                goto LABEL_171;
              }
            }

            v124 = v137;
          }

          else
          {
LABEL_171:
            v123 = v130;
            v126 = v129;
          }

          ++v128;
          v129 = v126;
          v130 = v123;
        }

        while (v128 != v95);
      }

      ++v125;
    }

    while (v125 != v94);
    if (v123 <= 0.0)
    {
      break;
    }

    v410[v126] = 1;
    if (v78 >= v77)
    {
      v77 = 2 * v77 + 2;
      v138 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
      v54 = v399;
      v70 = v400;
      v55 = v398;
    }

    else
    {
      v138 = ptr;
    }

    ptr = v138;
    v138[v78++] = v124;
    v410[v124] = 2;
  }

  v139 = v391;
  if (v382 >= 1)
  {
    v140 = v410;
    v141 = v98;
    do
    {
      v142 = *v140++;
      *v141++ = v142 == 1;
      --v139;
    }

    while (v139);
  }

  if (v54 > v5)
  {
    v143 = v93;
    do
    {
      if (v55 > v5)
      {
        v144 = v93;
        do
        {
          if (v98[v143 * v96 + v144])
          {
            v145 = 0;
            v146 = 0;
            v147 = -1;
            do
            {
              v148 = *&qword_100027F90[v145] + v144;
              v149 = HIDWORD(*&qword_100027F90[v145]) + v143;
              if (v148 < v55 && v148 >= v5 && v149 >= v5 && v149 < v54)
              {
                v153 = v98[v148 + v149 * v70];
                if (v153)
                {
                  v147 = v145;
                }

                v146 += v153;
              }

              ++v145;
            }

            while (v145 != 8);
            if (v146 == 1)
            {
              v154 = 0;
              v155 = v147 + 7;
              v156 = 1;
              v157 = -1;
              v158 = -1.0;
              do
              {
                v159 = v156;
                v160 = HIDWORD(*&qword_100027F90[(v155 + v154) & 7]);
                v161 = *&qword_100027F90[(v155 + v154) & 7] + v144;
                v162 = v160 + v143;
                if (v161 < v55 && v161 >= v5 && v162 >= v5 && v162 < v54)
                {
                  v166 = v161 + v162 * v70;
                  if (*(v100 + 4 * v166) > v158)
                  {
                    v157 = v166;
                    v158 = *(v100 + 4 * v166);
                  }
                }

                v156 = 0;
                v154 = 2;
              }

              while ((v159 & 1) != 0);
              v98[v157] = 1;
            }
          }

          ++v144;
        }

        while (v144 != v95);
      }

      ++v143;
    }

    while (v143 != v94);
  }

  if (v70 <= v370)
  {
    v167 = v370;
  }

  else
  {
    v167 = v70;
  }

  if (v167 < 1)
  {
LABEL_237:
    *&v57 = -1;
    *(&v57 + 1) = -1;
  }

  else
  {
    v168 = 0;
    v169 = v5;
    while (1)
    {
      v170 = v168 + v5;
      if (v94 - v168 > v168 + v5)
      {
        break;
      }

LABEL_236:
      ++v168;
      ++v169;
      if (v168 == v167)
      {
        goto LABEL_237;
      }
    }

    v171 = &v98[(v96 + 1) * v169];
    v172 = v70 - v170;
    v173 = v169;
    while (v170 >= v172)
    {
LABEL_235:
      ++v173;
      v171 += v96;
      if (v173 >= v94 - v168)
      {
        goto LABEL_236;
      }
    }

    v174 = v171;
    v175 = v169;
    while (1)
    {
      v176 = *v174++;
      if (v176)
      {
        break;
      }

      if (++v175 >= v172)
      {
        goto LABEL_235;
      }
    }

    *&v57 = __PAIR64__(v173, v175);
  }

  v177 = 0;
  v178 = v57;
  if ((v57 & 0x80000000) != 0)
  {
    v180 = 0;
  }

  else
  {
    v179 = DWORD1(v57);
    v180 = 0;
    if ((DWORD1(v57) & 0x80000000) == 0)
    {
      *__srca = v57;
      bzero(v410, v382);
      for (k = 0; k != 8; ++k)
      {
        v182 = vadd_s32(qword_100027F90[k], __srca[0]);
        if (v182.i32[0] < v5 || v182.i32[1] < v5 || v182.i32[0] >= v398 || v182.i32[1] >= v399)
        {
          v187 = v372;
          goto LABEL_259;
        }
      }

      k = 0;
      v187 = v372;
      while (1)
      {
        v186 = vadd_s32(qword_100027F90[k], __srca[0]);
        if (!v372[v186.i32[0] + v186.i32[1] * v400])
        {
          break;
        }

        if (++k == 8)
        {
          LODWORD(k) = -1;
          break;
        }
      }

LABEL_259:
      v188 = 0;
      v189.i64[1] = -1;
      v189.i64[0] = __PAIR64__(v370, v400);
      while (1)
      {
        v190 = vadd_s32(qword_100027F90[(k + v188) & 7], __srca[0]);
        *v191.i8 = v190;
        v191.u64[1] = v190;
        v192.i32[0] = vmovn_s32(vcgtq_s32(v189, v191)).u32[0];
        v192.i32[1] = vmovn_s32(vcgtq_s32(v191, v189)).i32[1];
        if ((vminv_u16(v192) & 1) != 0 && v187[v190.i32[0] + v190.i32[1] * v400])
        {
          break;
        }

        if (++v188 == 8)
        {
          goto LABEL_265;
        }
      }

      LODWORD(k) = (k + v188) & 7;
LABEL_265:
      v193 = v178 + v179 * v400;
      v410[v193] |= 1 << k;
      v194 = malloc_type_realloc(0, 4uLL, 0x1000040BDFB0063uLL);
      *v194 = v193;
      *(&v195 + 1) = __srca[1];
      *&v196 = vadd_s32(qword_100027F90[k], __srca[0]);
      v197 = 2;
      v198 = 1;
      v200 = v399;
      v199 = v400;
      v201 = v370;
      v202 = v398;
LABEL_266:
      while (1)
      {
        v203 = 5;
        while (1)
        {
          v204 = (k + v203) & 7;
          *&v195 = vadd_s32(qword_100027F90[v204], *&v196);
          if (v195 < v199 && (v195 & 0x80000000) == 0 && (DWORD1(v195) & 0x80000000) == 0 && SDWORD1(v195) < v201 && v187[v195 + DWORD1(v195) * v199])
          {
            break;
          }

          if (++v203 == 13)
          {
            goto LABEL_266;
          }
        }

        v205 = v196 + DWORD1(v196) * v199;
        LODWORD(k) = 1 << v204;
        if (((1 << v204) & v410[v205]) != 0)
        {
          break;
        }

        if (v198 >= v197)
        {
          *__srcd = v195;
          v197 = (2 * v197 + 2);
          v206 = malloc_type_realloc(v194, 2 * v197, 0x1000040BDFB0063uLL);
          v200 = v399;
          v199 = v400;
          v201 = v370;
          v202 = v398;
          v195 = *__srcd;
        }

        else
        {
          v206 = v194;
        }

        v194 = v206;
        v206[v198] = v205;
        v410[v205] |= k;
        ++v198;
        LOBYTE(k) = v204;
        *&v196 = v195;
      }

      v376 = v199 - 1;
      v378 = v201 - 1;
      if (v200 > v5)
      {
        v375 = 0;
        v377 = 0;
        v207 = 0;
        v210 = v5 + v5 * v379;
        v211 = &v410[v210];
        v212 = &v187[v210];
        v208 = size;
        v209 = v198;
        do
        {
          if (v202 > v5)
          {
            v213 = v212;
            v214 = v211;
            v215 = v379 - 2 * v5;
            v216 = v5;
            do
            {
              v217 = *v213++;
              if (v217 == 1)
              {
                v218 = *v214;
                v220 = v375;
                v219 = v376;
                if (v376 >= v216)
                {
                  v221 = v216;
                }

                else
                {
                  v221 = v376;
                }

                if (v375 <= v216)
                {
                  v222 = v216;
                }

                else
                {
                  v222 = v375;
                }

                if (v378 >= v407)
                {
                  v223 = v407;
                }

                else
                {
                  v223 = v378;
                }

                v224 = v377;
                if (v377 <= v407)
                {
                  v225 = v407;
                }

                else
                {
                  v225 = v377;
                }

                if (*v214)
                {
                  v226 = 0;
                }

                else
                {
                  v226 = -2;
                }

                if (!*v214)
                {
                  ++v207;
                  v224 = v225;
                  v220 = v222;
                }

                v375 = v220;
                if (*v214)
                {
                  v227 = v378;
                }

                else
                {
                  v227 = v223;
                }

                v378 = v227;
                if (!*v214)
                {
                  v219 = v221;
                }

                v376 = v219;
                v377 = v224;
              }

              else
              {
                v226 = -1;
              }

              *v214++ = v226;
              ++v216;
              --v215;
            }

            while (v215);
          }

          v211 += v379;
          v212 += v379;
          ++v407;
        }

        while (v407 != v396);
      }

      else
      {
        v207 = 0;
        v377 = 0;
        v375 = 0;
        v208 = size;
        v209 = v198;
      }

      v228 = v375 - v376;
      if (v375 - v376 >= v377 - v378)
      {
        v228 = v377 - v378;
      }

      v369 = v228;
      if (v228 > 1 && v207 >= 1)
      {
        v371 = 0;
        v229 = 1;
        v230 = v197;
        while (1)
        {
          v231 = v377 - ((v229 - 1) >> 1);
          if ((v378 + ((v229 - 1) >> 1)) <= v231)
          {
            break;
          }

LABEL_429:
          if (++v229 < v369)
          {
            ++v371;
            if (v207 > 0)
            {
              continue;
            }
          }

          goto LABEL_431;
        }

        v232 = (v229 - 1) >> 1;
        v374 = v232 + v376;
        v233 = v375 - v232;
        v234 = v233;
        v373 = v231;
        v235 = v378 + (v371 >> 1);
        v393 = v229;
        v380 = v233;
LABEL_318:
        if (v374 > v234)
        {
          goto LABEL_428;
        }

        v389 = v235 * v379;
        v236 = (v376 + (v371 >> 1));
        v397 = v235;
LABEL_320:
        if (v410[v236 + v389] != 254)
        {
          goto LABEL_427;
        }

        v386 = v236 + v389;
        v237 = 0;
        v415 = 8;
        v413 = 0;
        do
        {
          v238 = *&qword_100027F90[v237] + v236 + (HIDWORD(*&qword_100027F90[v237]) + v235) * v199;
          *(v414 + v237) = v238;
          if (v229 > v410[v238])
          {
            v239 = v413++;
            *(&v411 + v239) = v238;
          }

          ++v237;
        }

        while (v237 != 8);
        v388 = v413;
        __srcb = v236;
        if (v413 != 1)
        {
          goto LABEL_391;
        }

        v408 = v411;
        if (v209 < 1)
        {
          v241 = 0;
          v245 = -1;
          v243 = v382;
        }

        else
        {
          v240 = v209;
          v241 = 1;
          v242 = v194;
          v243 = v382;
          while (1)
          {
            v244 = *v242++;
            if (v411 == v244)
            {
              break;
            }

            ++v241;
            if (!--v240)
            {
              v241 = 0;
              v245 = -1;
              goto LABEL_333;
            }
          }

          v245 = v194[v241 % v209];
        }

LABEL_333:
        if (v243 > 4096)
        {
          LODWORD(v208) = 0;
          goto LABEL_390;
        }

        v423 = v243;
        v381 = v207;
        if (v243)
        {
          v246 = &v418;
          do
          {
            *v246 = -NAN;
            v246[1].i32[0] = 0x7FFFFFFF;
            v246[1].i8[4] = 0;
            v246 += 2;
          }

          while (v246 != (&v418 + 2 * v382));
          v247 = *(&v419 + 16 * v408 + 4) | 1;
        }

        else
        {
          v247 = -1;
        }

        v248.i32[0] = v408 % v199;
        v248.i32[1] = v408 / v199;
        v249.i32[0] = v245 % v199;
        v249.i32[1] = v245 / v199;
        v390 = v249;
        v250 = vsub_s32(v248, v249);
        v251 = vmul_s32(v250, v250);
        v252 = (&v418 + 2 * v408);
        v252[1].i32[0] = vadd_s32(v251, vdup_lane_s32(v251, 1)).u32[0];
        ++v252;
        v252[-1].i32[1] = 0;
        v385 = v252;
        v252->i8[4] = v247;
        v253 = 1;
        v417 = 1;
        LODWORD(v416[0]) = v408;
        v254 = v241;
        v392 = v245;
        v383 = -v241;
        v395 = v245;
        while (1)
        {
          v255 = v416[0];
          if (v253 < 2)
          {
            v256 = 0;
          }

          else
          {
            v256 = 0;
            v257 = *(&v418 + 4 * SLODWORD(v416[0]) + 2);
            for (m = 1; m != v253; ++m)
            {
              if (*(&v418 + 4 * *(v416 + m) + 2) < v257)
              {
                v257 = *(&v418 + 4 * *(v416 + m) + 2);
                v256 = m;
              }
            }

            v255 = *(v416 + v256);
          }

          if (v255 != v245)
          {
            break;
          }

          if (v245 < 1)
          {
            goto LABEL_388;
          }

          v259 = -1;
          LODWORD(v208) = -2;
          v260 = v245;
          do
          {
            v261 = (&v418 + 2 * v260);
            v261[1].i32[0] = v259;
            v259 = v260;
            LODWORD(v208) = v208 + 1;
            v260 = v261->i32[0];
          }

          while (v261->i32[0] > 0);
          if ((v208 + 1) >= 3)
          {
            v280 = v385->i32[0];
            if (v385->i32[0] != v245)
            {
              v281 = v209;
              v282 = v383 + v209;
              do
              {
                if (v281 >= v230)
                {
                  v283 = (2 * v230 + 2);
                  v194 = malloc_type_realloc(v194, 2 * v283, 0x1000040BDFB0063uLL);
                  v200 = v399;
                  v199 = v400;
                  v235 = v397;
                  v202 = v398;
                  v230 = v283;
                  v236 = __srcb;
                  v245 = v395;
                }

                if (v254 != v281)
                {
                  v284 = v230;
                  memmove(&v194[v254 + 1], &v194[v254], 2 * v282);
                  v245 = v395;
                  v235 = v397;
                  v199 = v400;
                  v236 = __srcb;
                  v230 = v284;
                  v202 = v398;
                  v200 = v399;
                }

                v194[v254] = v280;
                v410[v280] = v393;
                v280 = *(&v418 + 4 * v280 + 2);
                ++v282;
                ++v281;
              }

              while (v280 != v245);
              v209 = v281;
              v234 = v380;
            }
          }

          else
          {
            LODWORD(v208) = 0;
          }

LABEL_386:
          if (v255 == v245)
          {
            goto LABEL_389;
          }

          v253 = v417;
          if (v417 < 1)
          {
LABEL_388:
            LODWORD(v208) = 0;
LABEL_389:
            v207 = v381;
LABEL_390:
            v229 = v393;
            v207 -= v208;
            v208 = size;
LABEL_391:
            if (v388 >= 2)
            {
              v422 = 0;
              if (v209 >= 1)
              {
                v285 = 0;
                do
                {
                  v286 = 0;
                  v287 = 0;
                  v288 = 0;
                  v289 = v285;
                  v290 = v194[v285++];
                  if (v285 == v209)
                  {
                    v291 = 0;
                  }

                  else
                  {
                    v291 = v289 + 1;
                  }

                  v292 = v194[v291];
                  do
                  {
                    v293 = *(v414 + v286);
                    v288 |= v293 == v290;
                    v287 |= v293 == v292;
                    v286 += 4;
                  }

                  while (v286 != 32);
                  if (v288 & v287)
                  {
                    *&v196 = __PAIR64__(v290, v289);
                    DWORD2(v196) = v292;
                    v294 = v422++;
                    *(&v418 + v294) = v196;
                  }
                }

                while (v285 != v209);
                if (v422 > 0)
                {
                  if (v422 == 1)
                  {
                    v295 = 0;
                  }

                  else
                  {
                    v296 = 0;
                    if (SHIDWORD(v418) / v199 == v419 / v199 || SHIDWORD(v418) % v199 == v419 % v199)
                    {
                      v298 = 0.0;
                    }

                    else
                    {
                      v298 = -1.0;
                    }

                    v299 = v298 + (*(v208 + 4 * SHIDWORD(v418)) + *(v208 + 4 * v419));
                    v300 = &v421;
                    for (n = 1; n != v422; ++n)
                    {
                      v302 = *(v300 - 1);
                      v303 = *v300;
                      if (v302 / v199 == v303 / v199 || v302 % v199 == v303 % v199)
                      {
                        v305 = 0.0;
                      }

                      else
                      {
                        v305 = -1.0;
                      }

                      if ((v305 + (*(v208 + 4 * v302) + *(v208 + 4 * v303))) < v299)
                      {
                        v296 = n;
                        v299 = v305 + (*(v208 + 4 * v302) + *(v208 + 4 * v303));
                      }

                      v300 += 2;
                    }

                    v295 = v296;
                  }

                  v306 = *(&v418 + 4 * v295);
                  if (v209 >= v230)
                  {
                    v307 = (2 * v230 + 2);
                    v308 = malloc_type_realloc(v194, 2 * v307, 0x1000040BDFB0063uLL);
                    v230 = v307;
                    v194 = v308;
                    v200 = v399;
                    v199 = v400;
                    v235 = v397;
                    v202 = v398;
                    v236 = __srcb;
                  }

                  v309 = v386;
                  v310 = v306 + 1;
                  v311 = v306 + 1;
                  v312 = v209 - v310;
                  if (v312)
                  {
                    v313 = v230;
                    memmove(&v194[v311 + 1], &v194[v311], 2 * v312);
                    v309 = v386;
                    v199 = v400;
                    v236 = __srcb;
                    v235 = v397;
                    v202 = v398;
                    v230 = v313;
                    v234 = v380;
                    v200 = v399;
                  }

                  ++v209;
                  v194[v311] = v309;
                  v229 = v393;
                  v410[v309] = v393;
                  --v207;
                }
              }
            }

LABEL_427:
            v61 = v236++ < v234;
            if (!v61)
            {
LABEL_428:
              v61 = v235++ < v373;
              if (!v61)
              {
                goto LABEL_429;
              }

              goto LABEL_318;
            }

            goto LABEL_320;
          }
        }

        if (v253 - 1 != v256)
        {
          v262 = v230;
          memmove(v416 + 4 * v256, v416 + 4 * v256 + 4, 4 * (v253 + ~v256));
          v245 = v395;
          v235 = v397;
          v199 = v400;
          v236 = __srcb;
          v230 = v262;
          v202 = v398;
          v200 = v399;
          v256 = v417 - 1;
        }

        v263 = 0;
        v265 = (&v418 + 2 * v255);
        v417 = v256;
        v265[1].i8[4] = v265[1].i8[4] & 0xFC | 2;
        while (1)
        {
          v266 = qword_100027F90[v263];
          v264.i32[1] = v255 / v199;
          v264.i32[0] = v255 % v199;
          v267 = vadd_s32(v266, v264);
          v268 = v267.i32[0] >= v5 && v267.i32[1] < v200;
          v269 = !v268 || v267.i32[1] < v5;
          if (!v269 && v267.i32[0] < v202)
          {
            v271 = v267.i32[0] + v267.i32[1] * v199;
            if (v255 != v408)
            {
              v272 = v392;
              if (v271 == v245)
              {
                goto LABEL_373;
              }
            }

            if (v410[v271] == 254)
            {
              break;
            }
          }

LABEL_367:
          if (++v263 == 8)
          {
            goto LABEL_386;
          }
        }

        v272 = v271;
LABEL_373:
        v273 = (&v418 + 2 * v272);
        v274 = v273[1].i8[4];
        if ((v274 & 2) == 0)
        {
          if ((v273[1].i8[4] & 1) == 0)
          {
            v275 = v417++;
            *(v416 + v275) = v271;
            v273[1].i8[4] = v274 | 1;
          }

          v276 = vmul_s32(v266, v266);
          v277 = vadd_s32(v276, vdup_lane_s32(v276, 1)).u32[0] + v265->i32[1];
          if (v277 < v273->i32[1])
          {
            v273->i32[0] = v255;
            v273->i32[1] = v277;
            v278 = vsub_s32(v267, v390);
            v279 = vmul_s32(v278, v278);
            v273[1].i32[0] = vadd_s32(v279, vdup_lane_s32(v279, 1)).u32[0];
          }
        }

        goto LABEL_367;
      }

LABEL_431:
      if (v209 < 1)
      {
        v317 = 0;
        __srcc = 0;
        v318 = 0;
        v418 = 0;
        LODWORD(v419) = v209;
        HIDWORD(v419) = v209;
        v177 = v194;
      }

      else
      {
        v314 = 0;
        v315 = -1;
        v316 = -1.0;
        v177 = v194;
        do
        {
          if (*(v208 + 4 * v194[v314]) > v316)
          {
            v315 = v314;
            v316 = *(v208 + 4 * v194[v314]);
          }

          ++v314;
        }

        while (v209 != v314);
        __srcc = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        HIDWORD(v419) = v209;
        v317 = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        v418 = v317;
        v318 = malloc_type_malloc(v209, 0x100004077774924uLL);
        for (ii = 0; ii != v209; v318[ii++] = v320 == v328)
        {
          v320 = 0;
          v321 = v194[(v315 + ii) % v209];
          v322 = v321 / v400;
          v323 = v321 % v400;
          *&v324 = ((v321 % v400) + 0.5) / v400;
          *(&v324 + 1) = ((v321 / v400) + 0.5) / v370;
          __srcc[ii] = v324;
          v325 = v194[(v209 - 1 + v315 + ii) % v209];
          while (1)
          {
            v326.i32[1] = v325 / v400;
            v326.i32[0] = v325 % v400;
            v327 = vadd_s32(qword_100027F90[v320], v326);
            if (v327.i32[0] + v327.i32[1] * v400 == v321)
            {
              break;
            }

            if (++v320 == 8)
            {
              LODWORD(v320) = -1;
              break;
            }
          }

          v328 = 0;
          while (1)
          {
            v329 = vadd_s32(qword_100027F90[v328], __PAIR64__(v322, v323));
            if (v329.i32[0] + v329.i32[1] * v400 == v194[(v315 + ii + 1) % v209])
            {
              break;
            }

            if (++v328 == 8)
            {
              LODWORD(v328) = -1;
              break;
            }
          }
        }

        memcpy(v317, __srcc, 8 * v209);
        v330 = 0;
        LODWORD(v419) = v209;
        v331 = v209 + 2;
        v332 = 2;
        v333 = vdup_n_s32(0x3F2AAAABu);
        v334 = v209;
        do
        {
          v335 = v330 + 1;
          if ((v318[v330] & 1) == 0)
          {
            v336 = v335 == v209 ? 0 : v330 + 1;
            if (v318[v336] == 1)
            {
              if (v209 < 3)
              {
LABEL_456:
                v339 = -1;
              }

              else
              {
                v337 = v332;
                v338 = v209 - 2;
                v339 = v331;
                while (v318[v337 % v209] == 1)
                {
                  ++v339;
                  ++v337;
                  if (!--v338)
                  {
                    goto LABEL_456;
                  }
                }
              }

              v340 = v330 + v209;
              v341 = v339 - (v330 + v209);
              if (v341 >= 2)
              {
                v342 = 0;
                v343 = __srcc[(v340 - 1) % v209];
                v344 = __srcc[(v339 + 1) % v209];
                v345 = __srcc[v340 % v209];
                v346 = __srcc[v339 % v209];
                v347 = vmul_f32(vadd_f32(v345, v346), 0x3F0000003F000000);
                v348 = vmla_f32(v343, v333, vsub_f32(v345, v343));
                v349 = vmla_f32(v344, v333, vsub_f32(v346, v344));
                v350 = vsub_f32(v345, v348);
                v351 = vsub_f32(v347, v345);
                v352 = vsub_f32(v346, v349);
                v353 = vsub_f32(v347, v346);
                v354 = v341 / 2;
                v355 = v354;
                v356 = v334;
                do
                {
                  v357 = v342 / v355;
                  v358 = 1.0 - sqrtf(1.0 - v357);
                  v359 = sqrtf(v357);
                  v317[v356 % v209] = vmla_n_f32(vmla_n_f32(v348, v350, v359), v351, v358);
                  v317[v339 % v209] = vmla_n_f32(vmla_n_f32(v349, v352, v359), v353, v358);
                  ++v342;
                  --v339;
                  ++v356;
                  --v354;
                }

                while (v354);
              }
            }
          }

          ++v331;
          ++v332;
          ++v334;
          v330 = v335;
        }

        while (v335 != v209);
      }

      sub_100007FE8(&v418, v416);
      sub_100007FE8(v416, v414);
      sub_100007FE8(v414, &v411);
      v360 = v412;
      v361 = objc_alloc_init(NSMutableArray);
      v362 = v411;
      if (v360 >= 1)
      {
        v363 = 0;
        v364 = 8 * v360;
        do
        {
          v409 = HIDWORD(*&v362[v363]);
          v365 = [NSNumber numberWithFloat:?];
          [v361 addObject:v365];

          HIDWORD(v366) = v409;
          LODWORD(v366) = v409;
          v367 = [NSNumber numberWithFloat:v366];
          [v361 addObject:v367];

          v363 += 8;
        }

        while (v364 != v363);
      }

      free(v362);
      free(v414[0]);
      free(v416[0]);
      free(v318);
      free(v317);
      free(__srcc);
      v180 = v361;
    }
  }

  free(ptr);
  free(v177);
  free(v372);
  free(v410);

  return v180;
}

void sub_100005DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  free(v59);
  free(a43);
  free(a27);
  free(v58);
  free(a15);
  free(a47);
  _Unwind_Resume(a1);
}

void NTKKaleidoscopeAnalyzeDominance()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __b = v7;
  v8 = v0;
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / v6;
  if (v9 / v6 <= 1)
  {
    v11 = 1;
  }

  if (v11 >= 16)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 / v4;
  if (v10 / v4 <= 1)
  {
    v13 = 1;
  }

  if (v13 >= 16)
  {
    v13 = 16;
  }

  v116 = v13;
  v104 = v8;
  v14 = v12 * v6;
  v15 = (v116 * v4);
  if ([v104 width] != v12 * v6 || (v16 = v104, objc_msgSend(v104, "height") != v15))
  {
    v16 = [v104 scaleToWidth:(v12 * v6) height:v15];
  }

  v17 = [v16 contents];
  v103 = v6;
  v120 = 256;
  if (v4 * v6 >= 1)
  {
    memset_pattern16(__b, &unk_100027F40, 16 * (v4 * v6));
  }

  v109 = v4 - v2;
  if ((v4 - v2) > v2)
  {
    v113 = v6 - v2;
    v111 = v2 * v12 + v2 * v12 * v6 * v116;
    v107 = v6 * v116 * v12;
    v105 = v2;
    v110 = v2;
    v112 = v12;
    v108 = v2;
    do
    {
      if (v113 > v2)
      {
        v18 = v105;
        v19 = v111;
        do
        {
          v115 = v18;
          v20 = 0;
          LODWORD(v18) = 0;
          v114 = v19;
          do
          {
            v18 = v18;
            v21 = v18 + 1;
            v22 = v12;
            v23 = v19;
            do
            {
              v24 = v21;
              v119[v18++] = v17[v23++];
              ++v21;
              --v22;
            }

            while (v22);
            ++v20;
            v19 += v14;
          }

          while (v20 != v116);
          v124 = 512;
          bzero(v123, 0x2000uLL);
          if (v18 - 1 >= 0)
          {
            v25 = v24;
            v26 = v119;
            do
            {
              v27 = *v26++;
              v28.i64[0] = 0x3F0000003F000000;
              v28.i64[1] = 0x3F0000003F000000;
              v29 = vmlaq_f32(v28, xmmword_100027F10, v27);
              *v29.f32 = vshl_u32(vcvt_s32_f32(*v29.f32), 0x300000006);
              v123[v29.i32[1] | v29.f32[2] | v29.i32[0]] = vaddq_f32(v27, v123[v29.i32[1] | v29.f32[2] | v29.i32[0]]);
              --v25;
            }

            while (v25);
          }

          v30 = 0;
          v122 = 9;
          while (1)
          {
            v31 = 0;
            v32 = 1.0;
            v33 = -1;
            v34 = (v123 | 0xC);
            do
            {
              v35 = *v34;
              v34 += 4;
              v36 = v35;
              if (v32 <= v36)
              {
                v32 = v36;
                v33 = v31;
              }

              ++v31;
            }

            while (v31 != 512);
            if ((v33 & 0x80000000) != 0)
            {
              break;
            }

            v37 = (v33 >> 3) & 7;
            v38 = v33 & 7;
            if (((v33 >> 6) & 6) != 0)
            {
              v39 = (v33 >> 6) & 7;
            }

            else
            {
              v39 = 1;
            }

            v40 = v39 - 1;
            if (((v33 >> 3) & 6) != 0)
            {
              v41 = (v33 >> 3) & 7;
            }

            else
            {
              v41 = 1;
            }

            if ((v33 & 6) != 0)
            {
              v42 = v33 & 7;
            }

            else
            {
              v42 = 1;
            }

            if (((v33 >> 6) & 7) >= 6)
            {
              v43 = 6;
            }

            else
            {
              v43 = (v33 >> 6) & 7;
            }

            v44 = v43 + 1;
            v45 = 0uLL;
            if (v40 <= v44)
            {
              v46 = v41 - 1;
              v47 = v42 - 1;
              if (v38 >= 6)
              {
                v48 = 6;
              }

              else
              {
                v48 = v38;
              }

              if (v37 >= 6)
              {
                v37 = 6;
              }

              v49 = v37 + 1;
              v50 = v48 - v42 + 3;
              do
              {
                if (v46 <= v49)
                {
                  v51 = v46;
                  do
                  {
                    if (v47 <= v48 + 1)
                    {
                      v52 = v50;
                      v53 = v47;
                      do
                      {
                        v54 = &v123[(v40 << 6) | (8 * v51) | v53];
                        v45 = vaddq_f32(v45, *v54);
                        v54->i64[0] = 0;
                        v54->i64[1] = 0;
                        ++v53;
                        --v52;
                      }

                      while (v52);
                    }

                    _ZF = v51++ == v49;
                  }

                  while (!_ZF);
                }

                _ZF = v40++ == v44;
              }

              while (!_ZF);
            }

            v121[v30++] = v45;
            if (v30 == 9)
            {
              v56 = 9;
              goto LABEL_64;
            }
          }

          if (!v30)
          {
            goto LABEL_77;
          }

          v56 = v30;
LABEL_64:
          v57 = v121;
          v58 = v56;
          do
          {
            v117 = *v57;
            v118 = vdivq_f32(*v57, vdupq_laneq_s32(*v57, 3));
            _CLKUIRGB2LAB();
            _S1 = _V0.S[1];
            __asm { FMLA            S2, S1, V0.S[1] }

            v65.i32[1] = sqrtf(_S2);
            _D0 = vmulq_f32(v65, xmmword_100027F20).u64[0];
            _S1 = 1077936127;
            v68 = (*&_D0 * 3.0) + 0.1;
            if (*&_D0 >= 0.3)
            {
              v68 = 1.0;
            }

            __asm { FMLA            S4, S1, V0.S[1] }

            if (*(&_D0 + 1) >= 0.3)
            {
              v70 = 1.0;
            }

            else
            {
              v70 = _S4;
            }

            v71 = v118;
            v71.i32[3] = vmuls_lane_f32(v70 * (v70 * (v68 * v68)), v117, 3);
            *v57++ = v71;
            --v58;
          }

          while (v58);
          v12 = v112;
          if (v56 >= 2)
          {
            v72 = 0;
            for (i = 1; i != v56; ++i)
            {
              v74 = v72;
              do
              {
                v75 = v121[v74];
                v76 = v121[v74 + 1];
                if ((vmovn_s32(vcgtq_f32(v76, v75)).i8[6] & 1) == 0)
                {
                  break;
                }

                v121[v74 + 1] = v75;
                v121[v74] = v76;
                v77 = v74-- + 1;
              }

              while (v77 > 1);
              ++v72;
            }
          }

LABEL_77:
          _CLKUIRGB2LAB();
          _CLKUILAB2RGB();
          HIDWORD(v78) = 1.0;
          *&__b[16 * v110 * v6 + 16 * v115] = v78;
          v18 = v115 + 1;
          v19 = v114 + v12;
        }

        while (v113 != v115 + 1);
      }

      v111 += v107;
      ++v110;
      v2 = v108;
    }

    while (v109 != v110);
  }

  v79 = v2 - 2;
  if (v2 >= 2)
  {
    v80 = v2;
    v81 = (v4 - v2) * v6;
    v82 = 16 * v81 + 16 * v2;
    v83 = v6 * v79;
    v84 = &__b[16 * v81 - 16 + 16 * v6 + 16 * v2];
    v85 = 16 * v6;
    v86 = v85 - 16;
    v87 = &__b[v82 - 16];
    v88 = &__b[16 * (v2 - 2) * v6 - 16 + 16 * v2];
    v89 = &__b[16 * v83 + 16 * v2];
    v90 = &__b[16 * v83];
    v91 = v85 ^ 0xFFFFFFFFFFFFFFF0;
    v92 = &__b[16 * (v2 - 1) * v6 - 16 + 16 * v2];
    v93 = v79 - 1;
    v94 = v89 - 16;
    v95 = v6 - v2;
    do
    {
      v96 = v80 - 1;
      if (v80 - 1 <= v103 - v80)
      {
        v98 = 0;
        v97 = v80 - 2;
        do
        {
          *(v88 + 16 * v98) = *(v92 + 16 * v98);
          *(v84 + 16 * v98) = *(v87 + 16 * v98);
          ++v98;
        }

        while (v80 + v98 - 2 < v103 - v80);
      }

      else
      {
        v97 = v80 - 2;
      }

      if (v97 <= v4 - v96)
      {
        v99 = &v90[16 * v95];
        v100 = v94;
        v101 = v93;
        do
        {
          *(v100 - 1) = *v100;
          *(v99 + 1) = *v99;
          ++v101;
          v100 = (v100 + v85);
          v99 += v85;
        }

        while (v101 < v4 - v96);
      }

      v84 += v86;
      v87 += v86;
      v88 += v91;
      v92 += v91;
      --v93;
      v94 += v91;
      v90 -= 16 * v103;
      ++v95;
    }

    while (v80-- > 2);
  }
}

id NTKPlusImage()
{
  v0 = +[CLKRenderingContext sharedRenderingContext];
  v1 = [v0 device];
  sub_1000066FC(v1, v1);

  v2 = qword_10003C6F8;

  return v2;
}

uint64_t sub_1000066FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_10003C704);
  if (qword_10003C708)
  {
    v3 = qword_10003C708 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_10003C710))
  {
    v5 = byte_10003C700;
  }

  else
  {
    qword_10003C708 = v2;
    qword_10003C710 = [v2 version];
    sub_1000067B4(qword_10003C710, v2);
    v5 = 1;
    byte_10003C700 = 1;
  }

  os_unfair_lock_unlock(&stru_10003C704);

  return v5;
}

void sub_1000067B4(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [CLKDeviceMetrics metricsWithDevice:"metricsWithDevice:identitySizeClass:" identitySizeClass:?];
  [v2 setRoundingBehavior:4];
  [v2 scaledValue:55.0];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  v4 = +[UIColor whiteColor];
  v5 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v6];
  v8 = qword_10003C6F8;
  qword_10003C6F8 = v7;
}

void sub_1000068C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_100007190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  free(v19);
  free(a17);
  free(a18);
  free(v18);
  _Unwind_Resume(a1);
}

id NTKBlurImage(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && a2 > 0.0)
  {
    v5 = [[CIImage alloc] initWithImage:v3];
    if (v5)
    {
      v6 = [CIFilter filterWithName:@"CIAffineClamp"];
      [v6 setDefaults];
      [v6 setValue:v5 forKey:kCIInputImageKey];
      v7 = [CIFilter filterWithName:@"CIGaussianBlur"];
      v8 = [NSNumber numberWithDouble:a2];
      [v7 setValue:v8 forKey:kCIInputRadiusKey];

      v9 = [v6 outputImage];
      [v7 setValue:v9 forKey:kCIInputImageKey];

      v10 = [v7 outputImage];
      if (v10)
      {
        v11 = +[CIContext context];
        [v5 extent];
        v12 = [v11 createCGImage:v10 fromRect:?];
        if (v12)
        {
          v13 = [UIImage alloc];
          [v4 scale];
          v15 = [v13 initWithCGImage:v12 scale:objc_msgSend(v4 orientation:{"imageOrientation"), v14}];
          CGImageRelease(v12);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void sub_1000074F4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

id NTKCropImage(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    [v9 size];
    v12 = v11;
    v14 = v13;
    [v10 scale];
    v16 = v15;
    if ((v12 * v15))
    {
      v17 = (v14 * v15) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v21 = v10;
    }

    else
    {
      v18 = [v10 imageOrientation];
      v19 = [v10 CGImage];
      v24.size.height = a5 * v16;
      v24.size.width = a4 * v16;
      v24.origin.y = a3 * v16;
      v24.origin.x = a2 * v16;
      v20 = CGImageCreateWithImageInRect(v19, v24);
      v21 = [UIImage imageWithCGImage:v20 scale:v18 orientation:v16];
      CGImageRelease(v20);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_100007688(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id NTKDefaultMonochromeColorMatrix()
{
  if (qword_10003C718 != -1)
  {
    sub_100024554();
  }

  v1 = qword_10003C720;

  return v1;
}

void sub_100007700(id a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 1056964608;
  v6 = 0;
  v5 = 0;
  v7 = 1056964608;
  v8 = 0;
  v9 = 0;
  v10 = 1056964608;
  v11 = 0;
  v12 = 0;
  v13 = 1065353216;
  v1 = [NSValue valueWithBytes:v3 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v2 = qword_10003C720;
  qword_10003C720 = v1;
}

BOOL NTKIsDefaultMonochromeColorMatrix(void *a1)
{
  v1 = a1;
  v2 = NTKDefaultMonochromeColorMatrix();

  return v2 == v1;
}

id NTKGenerateMonochromeColorMatrixFromImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_18;
  }

  [v1 scale];
  v4 = v3;
  [v2 size];
  v6 = (v4 * v5);
  v8 = (v4 * v7);
  if (!v6 || v8 == 0)
  {
    goto LABEL_18;
  }

  v10 = malloc_type_calloc(1uLL, (4 * v6 * v8), 0x100004052888210uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(v10, v6, v8, 8uLL, (4 * v6), DeviceRGB, 1u);
  v13 = [v2 CGImage];
  v42.size.width = v6;
  v42.size.height = v8;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  CGContextDrawImage(v12, v42, v13);
  bzero(v40, 0x400uLL);
  v16 = v6 * v8;
  if (v6 * v8)
  {
    v17 = v10;
    do
    {
      LOBYTE(v14) = *v17;
      LOBYTE(v15) = v17[1];
      *&v18 = LODWORD(v15) * 0.7152;
      v19 = *&v18 + (LODWORD(v14) * 0.2126);
      LOBYTE(v18) = v17[2];
      v15 = v18;
      v14 = v19 + (v15 * 0.0722);
      ++v40[v14];
      v17 += 4;
    }

    while (v17 < &v10[4 * v16]);
  }

  v20 = 0;
  v21 = 0;
  v22 = v16 / 0x3E8;
  while (1)
  {
    v21 += v40[v20];
    if (v21 > v22)
    {
      break;
    }

    if (++v20 == 256)
    {
      LODWORD(v20) = 0;
      break;
    }
  }

  v23 = 0;
  v24 = 255;
  while (1)
  {
    v23 += v40[v24];
    if (v23 > v22)
    {
      break;
    }

    if (--v24 == -1)
    {
      v24 = 255;
      break;
    }
  }

  CGContextRelease(v12);
  free(v10);
  CGColorSpaceRelease(DeviceRGB);
  if (v24 - v20 > 9)
  {
    v28.f32[0] = -v20 / 255.0;
    v32 = 0;
    v28.i32[1] = 1046066128;
    v28.i64[1] = 0x3D93DD983F371759;
    v29 = vmulq_n_f32(v28, 255.0 / (v24 - v20));
    v30 = vextq_s8(v29, v29, 4uLL).u64[0];
    v31 = v29.i32[3];
    v33 = v29;
    v34 = 0;
    v35 = v29;
    v36 = 0;
    v37 = v29.i32[0];
    v38 = xmmword_100027F30;
    v39 = 0;
    v25 = [NSValue valueWithBytes:&v30 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  }

  else
  {
LABEL_18:
    v25 = NTKDefaultMonochromeColorMatrix();
  }

  v26 = v25;

  return v26;
}

id NTKInterpolateColorMatrixToIdentity(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0uLL;
  memset(v30, 0, sizeof(v30));
  if (v3)
  {
    [v3 CAColorMatrixValue];
    v6 = *v30;
    v5 = *(v30 + 4);
    v7 = *(&v30[1] + 2);
    v8 = *(&v30[1] + 1);
    v9 = *(&v30[1] + 12);
    v11 = *(&v30[2] + 3);
    v10 = *&v30[3];
    v12 = *(&v30[3] + 4);
    v13 = *(&v30[4] + 2);
    v14 = *(&v30[4] + 1);
    v15 = *(&v30[4] + 3);
  }

  else
  {
    v15 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    v9 = 0uLL;
    v12 = 0uLL;
  }

  v16 = a2;
  v19 = v6 + ((1.0 - v6) * v16);
  v20 = vmulq_n_f32(v5, 1.0 - v16);
  v21 = (1.0 - v16) * v8;
  v22 = v7 + ((1.0 - v7) * v16);
  v23 = vmulq_n_f32(v9, 1.0 - v16);
  v24 = (1.0 - v16) * v11;
  v25 = v10 + ((1.0 - v10) * v16);
  v26 = vmulq_n_f32(v12, 1.0 - v16);
  v27 = (1.0 - v16) * v14;
  v28 = v13 + ((1.0 - v13) * v16);
  v29 = (1.0 - v16) * v15;
  v17 = [NSValue valueWithBytes:&v19 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];

  return v17;
}

id NTKInterpolateBetweenImages(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = v6;
  if (!v5)
  {
    goto LABEL_12;
  }

  v8 = v5;
  if (!v6)
  {
    goto LABEL_12;
  }

  [v5 size];
  v10 = v9;
  v12 = v11;
  [v5 scale];
  v14 = v13;
  v15 = (v10 * v13);
  v16 = (v12 * v13);
  v17 = !v15 || v16 == 0;
  v8 = v7;
  if (v17)
  {
    goto LABEL_12;
  }

  [v7 size];
  v19 = v18;
  v21 = v20;
  [v7 scale];
  v23 = (v19 * v22);
  v24 = (v21 * v22);
  v25 = !v23 || v24 == 0;
  v8 = v7;
  if (v25)
  {
LABEL_12:
    v26 = v8;
  }

  else
  {
    if (v15 <= v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v15;
    }

    if (v16 <= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v16;
    }

    space = CGColorSpaceCreateDeviceRGB();
    v43 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    c = CGBitmapContextCreate(v43, v28, v29, 8uLL, (4 * v28), space, 1u);
    v30 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    v31 = CGBitmapContextCreate(v30, v28, v29, 8uLL, (4 * v28), space, 1u);
    v32 = [v5 CGImage];
    v47.size.height = v16;
    v47.size.width = v15;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    CGContextDrawImage(c, v47, v32);
    v33 = [v7 CGImage];
    v48.size.height = v24;
    v48.size.width = v23;
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    CGContextDrawImage(v31, v48, v33);
    if (v28 * v29)
    {
      *v34.i32 = a3;
      *v35.i32 = 1.0 - *v34.i32;
      v38 = vdupq_lane_s32(v35, 0);
      v39 = v43;
      v40 = v30;
      do
      {
        v36.i32[0] = *v39;
        v41 = *v40++;
        v37.i32[0] = v41;
        v37 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v37.f32))), *v34.i32), v38, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v36))));
        v36 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v37)), v34);
        *v39++ = v36.i32[0];
      }

      while (v39 < &v43[4 * (v28 * v29)]);
    }

    Image = CGBitmapContextCreateImage(c);
    CGContextRelease(c);
    CGContextRelease(v31);
    v26 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", Image, [v5 imageOrientation], v14);
    CGImageRelease(Image);
    free(v43);
    free(v30);
    CGColorSpaceRelease(space);
  }

  return v26;
}

float sub_100007F68(float a1, float a2, float a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.16667)
  {
    v3 = (a2 - a1) * 6.0;
    return a1 + (v3 * a3);
  }

  if (a3 >= 0.5)
  {
    if (a3 < 0.66667)
    {
      v3 = (a2 - a1) * (0.66667 - a3);
      a3 = 6.0;
      return a1 + (v3 * a3);
    }

    return a1;
  }

  return a2;
}

float32x2_t *sub_100007FE8@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1].u32[0];
  v4 = (2 * v3);
  *(a2 + 8) = v4;
  *(a2 + 12) = v4;
  if (v3 <= 0)
  {
    *a2 = 0;
  }

  else
  {
    v5 = result;
    result = malloc_type_malloc(8 * (2 * v3), 0x100004000313F17uLL);
    v6 = 0;
    *a2 = result;
    v7 = result + 1;
    do
    {
      v8 = *(*v5 + 8 * v6);
      if (--v3)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 0;
      }

      ++v6;
      v10 = vmul_f32(vadd_f32(v8, *(*v5 + 8 * v9)), 0x3F0000003F000000);
      v7[-1] = v8;
      *v7 = v10;
      v7 += 2;
    }

    while (v3);
    v11 = 0;
    v12 = v4 - 1;
    __asm { FMOV            V1.2S, #0.25 }

    do
    {
      result[v11] = vmul_f32(vadd_f32(vmla_f32(result[(v11 + 1) % v4], 0x4000000040000000, result[v11]), result[v12 % v4]), _D1);
      v11 += 2;
      v12 += 2;
    }

    while (v11 < v4);
  }

  return result;
}

id _NTKKaleidoscopeLoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&unk_10003C730 + 8 * a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008184;
  v6[3] = &unk_100035060;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = qword_10003C728[a1];

  return v4;
}

void sub_100008184(uint64_t a1)
{
  v2 = [NSString stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"NTKKaleidoscopeLoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.NanoTimeKit.Kaleidoscope", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = qword_10003C728[v5];
  qword_10003C728[v5] = v4;
}

void sub_100008CA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000245D0();
    }

    objc_end_catch();
    JUMPOUT(0x100008C4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009460(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100009480(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void *sub_10000A304@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000A344(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

size_t sub_10000A3A8(size_t a1, int64_t a2, char a3)
{
  result = sub_10000A3E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A3C8(char *a1, int64_t a2, char a3)
{
  result = sub_10000A5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000A3E8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000AB70(&qword_10003B938, &qword_100028250);
  v10 = *(type metadata accessor for KaleidoscopePosterData() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for KaleidoscopePosterData() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000A5C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003B940, &qword_100028258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_10000A6CC()
{
  v0 = type metadata accessor for KaleidoscopePosterData();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  if (qword_10003B8D8 != -1)
  {
LABEL_18:
    result = swift_once();
  }

  v10 = qword_10003D1C8;
  v9 = qword_10003D1D0;
  v11 = qword_10003D1D0 - qword_10003D1C8;
  if (__OFSUB__(qword_10003D1D0, qword_10003D1C8))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
LABEL_16:

      return _swiftEmptyArrayStorage;
    }

    goto LABEL_12;
  }

  v22 = v1;
  v25 = _swiftEmptyArrayStorage;
  result = sub_10000A3A8(0, v11 & ~(v11 >> 63), 0);
  if (v9 < v10 || v11 < 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v12 = v25;
  v24 = sub_100024938();
  v23 = *(*(v24 - 8) + 56);
  v1 = v22;
  do
  {
    v23(v8, 1, 1, v24);
    *&v8[*(v0 + 20)] = 0;
    *&v8[*(v0 + 24)] = v10;
    v25 = v12;
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      sub_10000A3A8(v13 > 1, v14 + 1, 1);
      v1 = v22;
      v12 = v25;
    }

    v12[2] = v14 + 1;
    sub_10000AA4C(v8, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14);
    if (v9 == v10)
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v10;
  }

  while (v9 != v10);
  v15 = v12[2];
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_12:
  v25 = _swiftEmptyArrayStorage;
  sub_100024F98();
  v16 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v17 = *(v1 + 72);
  do
  {
    sub_10000AAB0(v16, v5);
    sub_10000C5F4();
    sub_10000CDE4();
    sub_100024CE8();

    v18 = objc_allocWithZone(PREditingLook);
    v19 = sub_100024C68();

    v20 = sub_100024C68();

    [v18 initWithIdentifier:v19 displayName:v20];

    sub_10000AB14(v5);
    sub_100024F78();
    v21 = v25[2];
    sub_100024FA8();
    sub_100024FB8();
    sub_100024F88();
    v16 += v17;
    --v15;
  }

  while (v15);

  return v25;
}

uint64_t sub_10000AA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AB14(uint64_t a1)
{
  v2 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000ABCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ABEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10000AC28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000AC90()
{
  if (qword_10003B900 != -1)
  {
    result = swift_once();
  }

  qword_10003D1C0 = *(qword_10003D1F8 + 16);
  return result;
}

uint64_t sub_10000ACE8()
{
  if (qword_10003B8D0 != -1)
  {
    result = swift_once();
  }

  if (qword_10003D1C0 < 0)
  {
    __break(1u);
  }

  else
  {
    qword_10003D1C8 = 0;
    unk_10003D1D0 = qword_10003D1C0;
  }

  return result;
}

uint64_t sub_10000AD9C()
{
  result = sub_10000C130(&off_100035188);
  qword_10003D1F8 = &off_100035138;
  return result;
}

unint64_t sub_10000ADE8(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = result;
  swift_once();
  result = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v1 = *(qword_10003D1F8 + 8 * result + 32);
  if ((v1 - 9) > 0xFFFFFFFFFFFFFFF7)
  {
    return 0x7265776F6C46;
  }

  if ((v1 - 13) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x63696870617247;
  }

  if ((v1 - 17) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x726F7272694DLL;
  }

  if ((v1 - 24) > 0xFFFFFFFFFFFFFFF8)
  {
    return 0x7365766157;
  }

  if ((v1 - 28) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x6365737265746E49;
  }

  if ((v1 - 34) >= 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x736C6577654ALL;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_10000AF48(unint64_t a1)
{
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v1 = a1;
  swift_once();
  a1 = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = *(qword_10003D1F8 + 8 * a1 + 32);
  if (v1 - 9 > 0xFFFFFFFFFFFFFFF7)
  {
    v2 = &off_100035188;
    v3 = 8;
    goto LABEL_24;
  }

  if (v1 - 13 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8E0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v1 - 17 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8E8 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1E0;
    goto LABEL_23;
  }

  if (v1 - 24 >= 0xFFFFFFFFFFFFFFF9)
  {
    if (qword_10003B8F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1E8;
    goto LABEL_23;
  }

  if (v1 - 28 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8F8 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1F0;
    goto LABEL_23;
  }

  if (v1 - 34 < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  v2 = &off_100035138;
  v3 = 6;
LABEL_24:
  while (1)
  {
    v5 = 0;
    v6 = v2 + 4;
    while (v6[v5] != v1)
    {
      if (v3 == ++v5)
      {
        return 0;
      }
    }

    result = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_13:
    v4 = &qword_10003D1D8;
LABEL_23:
    v2 = *v4;
    v3 = *(*v4 + 16);
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

id sub_10000B164(unint64_t a1)
{
  if (qword_10003B908 != -1)
  {
    swift_once();
  }

  v2 = &unk_10003D000;
  v3 = qword_10003D200;
  sub_10000B8CC(a1);
  v4 = sub_100024C68();

  v5 = sub_100024C68();
  v6 = [v3 pathForResource:v4 ofType:v5];

  v7 = &off_10003B000;
  if (v6)
  {
    v8 = sub_100024C78();
    v10 = v9;
    if (qword_10003B920 != -1)
    {
      swift_once();
    }

    v11 = sub_100024B98();
    sub_10000C2CC(v11, qword_10003D298);

    v12 = sub_100024B78();
    v13 = sub_100024E18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50 = v15;
      *v14 = 136315138;
      v16 = sub_100010554(v8, v10, &v50);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "pathfinderPath: %s", v14, 0xCu);
      sub_10000C36C(v15);
      v7 = &off_10003B000;
    }

    else
    {
    }

    v21 = [objc_opt_self() pathfinderFromFile:v6];
    v22 = sub_100024B78();
    v23 = sub_100024E18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "pathfinder: %@", v24, 0xCu);
      sub_10000C304(v25);
    }

    v2 = &unk_10003D000;
    if (v21)
    {
      v27 = v21;
      sub_10000B9F8(a1);
      [v27 adjustRotationStart:?];

      v28 = qword_10003B900;
      v29 = v27;
      if (v28 == -1)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_once();
        if ((a1 & 0x8000000000000000) == 0)
        {
LABEL_19:
          if (*(qword_10003D1F8 + 16) > a1)
          {
            LODWORD(v30) = 0.5;
            if ((*(qword_10003D1F8 + 8 * a1 + 32) - 17) < 0xFFFFFFFFFFFFFFFCLL)
            {
              *&v30 = 1.0;
            }

            [v29 adjustSampleRadius:v30];

            if (v7[292] == -1)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
LABEL_23:
          sub_10000C2CC(v11, qword_10003D298);
          v31 = sub_100024B78();
          v32 = sub_100024E18();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "pathfinder is not nil", v33, 2u);
          }

          return v21;
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    if (qword_10003B920 != -1)
    {
      swift_once();
    }

    v17 = sub_100024B98();
    sub_10000C2CC(v17, qword_10003D298);
    v18 = sub_100024B78();
    v19 = sub_100024E18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "could not load pathfinderPath", v20, 2u);
    }
  }

  sub_10000B8CC(a1);
  v34 = v2[64];
  v35 = sub_100024C68();

  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34 withConfiguration:0];

  v37 = v7[292];
  if (v36)
  {
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_100024B98();
    sub_10000C2CC(v38, qword_10003D298);
    v39 = v36;
    v40 = sub_100024B78();
    v41 = sub_100024E18();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v36;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "pathfinder is nil; making one with image: %@", v42, 0xCu);
      sub_10000C304(v43);
    }

    v21 = [objc_opt_self() pathfinderWithImage:v39];
  }

  else
  {
    if (v37 != -1)
    {
      swift_once();
    }

    v45 = sub_100024B98();
    sub_10000C2CC(v45, qword_10003D298);
    v46 = sub_100024B78();
    v47 = sub_100024E18();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "pathfinder image is nil", v48, 2u);
    }

    return 0;
  }

  return v21;
}

uint64_t sub_10000B8CC(unint64_t a1)
{
  sub_100024F28(20);

  sub_10000AB70(&qword_10003B958, &qword_100028398);
  result = swift_allocObject();
  v3 = result;
  *(result + 16) = xmmword_1000282A0;
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v4 = *(qword_10003D1F8 + 8 * a1 + 32);
    v3[7] = &type metadata for Int;
    v3[8] = &protocol witness table for Int;
    v3[4] = v4;
    v5._countAndFlagsBits = sub_100024C98();
    sub_100024D08(v5);

    return 0xD000000000000012;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10000B9F8(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  swift_once();
  result = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1 = *(qword_10003D1F8 + 8 * result + 32) - 9;
  if (v1 <= 0x12)
  {
    v2 = dword_1000283B4[v1];
  }

  return result;
}

uint64_t sub_10000BAA4(unint64_t a1, uint64_t a2)
{
  v8 = sub_10000B8CC(a1);
  v9._countAndFlagsBits = a2;
  v9._object = 0xE200000000000000;
  sub_100024D08(v9);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5._countAndFlagsBits = 0x646170697ELL;
  }

  else
  {
    v5._countAndFlagsBits = 0x656E6F6870697ELL;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v5._object = v6;
  sub_100024D08(v5);

  return v8;
}

unint64_t sub_10000BB94(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = a3;
  swift_once();
  result = v8;
  a3 = v9;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if ((*(qword_10003D1F8 + 8 * result + 32) - 34) < 0xFFFFFFFFFFFFFFFALL)
  {
    return sub_10000BAA4(result, a3);
  }

  v10 = sub_10000B8CC(result);
  v11._countAndFlagsBits = a2;
  v11._object = 0xE700000000000000;
  sub_100024D08(v11);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6._countAndFlagsBits = 0x646170697ELL;
  }

  else
  {
    v6._countAndFlagsBits = 0x656E6F6870697ELL;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v6._object = v7;
  sub_100024D08(v6);

  return v10;
}

unint64_t sub_10000BCE0(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  swift_once();
  result = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1 = *(qword_10003D1F8 + 8 * result + 32) - 1;
  if (v1 <= 0x20)
  {
    v2 = dword_100028400[v1];
  }

  return result;
}

void sub_10000BD7C(unint64_t a1)
{
  sub_100024F28(60);
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100029390;
  sub_100024D08(v3);
  v4._countAndFlagsBits = sub_1000250C8();
  sub_100024D08(v4);

  v5._countAndFlagsBits = 0x203A656C6966202CLL;
  v5._object = 0xE800000000000000;
  sub_100024D08(v5);
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v2 = *(qword_10003D1F8 + 8 * a1 + 32);
    v6._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v6);

    v7._object = 0x80000001000293B0;
    v7._countAndFlagsBits = 0xD000000000000012;
    sub_100024D08(v7);
    v8._countAndFlagsBits = sub_10000B8CC(a1);
    sub_100024D08(v8);

    v9._countAndFlagsBits = 93;
    v9._object = 0xE100000000000000;
    sub_100024D08(v9);
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Int sub_10000BF14()
{
  v1 = *v0;
  sub_100025118();
  sub_100025128(v1);
  return sub_100025138();
}

Swift::Int sub_10000BF88()
{
  v1 = *v0;
  sub_100025118();
  sub_100025128(v1);
  return sub_100025138();
}

unint64_t sub_10000BFD8()
{
  result = qword_10003B950;
  if (!qword_10003B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B950);
  }

  return result;
}

char *sub_10000C02C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003B960, &unk_1000283A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000C130(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000C02C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000C21C(uint64_t a1)
{
  if (a1 > 30)
  {
    if (a1 == 31)
    {
      return 6579538;
    }

    if (a1 != 32)
    {
      if (a1 == 33)
      {
        return 2036429383;
      }

      return 0;
    }

    return 0x656C70727550;
  }

  else
  {
    if (a1 == 28)
    {
      return 1702194242;
    }

    if (a1 != 29)
    {
      if (a1 == 30)
      {
        return 0x65676E61724FLL;
      }

      return 0;
    }

    return 0x6E65657247;
  }
}

uint64_t sub_10000C2CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C304(uint64_t a1)
{
  v2 = sub_10000AB70(&qword_10003B968, &unk_100028CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C36C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000C3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for KaleidoscopePosterData()
{
  result = qword_10003B9D0;
  if (!qword_10003B9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C520()
{
  sub_10000C59C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000C59C()
{
  if (!qword_10003B9E0)
  {
    sub_100024938();
    v0 = sub_100024E98();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B9E0);
    }
  }
}

void sub_10000C5F4()
{
  v1 = *(*(sub_100024CB8() - 8) + 64);
  __chkstk_darwin();
  v2 = *(sub_1000248C8() - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = sub_100024908();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1000248F8();
  sub_10000AB70(&qword_10003BA28, &qword_1000285E8);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000282A0;
  sub_1000248B8();
  sub_10000E30C(&qword_10003BA30, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_10000AB70(&qword_10003BA38, &qword_1000285F0);
  sub_10000DCA8();
  sub_100024EA8();
  sub_1000248D8();
  v9 = type metadata accessor for KaleidoscopePosterData();
  sub_10000E30C(&qword_10003C2D0, type metadata accessor for KaleidoscopePosterData);
  v11 = sub_1000248E8();
  v13 = v12;
  sub_100024CA8();
  sub_100024C88();
  v15 = v14;
  sub_10000DD54(v11, v13);
  if (!v15)
  {
    v10 = *(v0 + *(v9 + 24));
    sub_10000ADE8(v10);
    v17._countAndFlagsBits = 45;
    v17._object = 0xE100000000000000;
    sub_100024D08(v17);
    v18._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v18);

    v19._countAndFlagsBits = 45;
    v19._object = 0xE100000000000000;
    sub_100024D08(v19);
    if (qword_10003B900 == -1)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_once();
      if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v10 < *(qword_10003D1F8 + 16))
        {
          v16 = *(qword_10003D1F8 + 8 * v10 + 32);
          v20._countAndFlagsBits = sub_1000250C8();
          sub_100024D08(v20);

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }
}

uint64_t sub_10000C994(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0x8000000100029370;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000100029370;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746E6169726176;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 1684632949;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E6169726176;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000250D8();
  }

  return v11 & 1;
}

Swift::Int sub_10000CA80()
{
  v1 = *v0;
  sub_100025118();
  sub_100024CF8();

  return sub_100025138();
}

uint64_t sub_10000CB20()
{
  *v0;
  *v0;
  sub_100024CF8();
}

Swift::Int sub_10000CBAC()
{
  v1 = *v0;
  sub_100025118();
  sub_100024CF8();

  return sub_100025138();
}

uint64_t sub_10000CC48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E5CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000CC78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000100029370;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E6169726176;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10000CCD4()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6169726176;
  }
}

uint64_t sub_10000CD2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000E5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000CD6C(uint64_t a1)
{
  v2 = sub_10000E178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CDA8(uint64_t a1)
{
  v2 = sub_10000E178();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000CDE4()
{
  sub_100024F28(29);

  v1 = *(v0 + *(type metadata accessor for KaleidoscopePosterData() + 24));
  sub_10000ADE8(v1);
  v2 = sub_100024CD8();
  v4 = v3;

  v10._countAndFlagsBits = v2;
  v10._object = v4;
  sub_100024D08(v10);

  v11._countAndFlagsBits = 95;
  v11._object = 0xE100000000000000;
  sub_100024D08(v11);
  if (qword_10003B900 == -1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_once();
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v1 >= *(qword_10003D1F8 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(qword_10003D1F8 + 8 * v1 + 32);
  if ((v5 - 34) > 0xFFFFFFFFFFFFFFF9)
  {
    sub_10000C21C(v5);
  }

  else
  {
    v6 = sub_10000AF48(v1);
    sub_10000E6A4(v6);
  }

  v7 = sub_100024CD8();
  v9 = v8;

  v12._countAndFlagsBits = v7;
  v12._object = v9;
  sub_100024D08(v12);
}

id sub_10000CF50(uint64_t a1, unint64_t a2)
{
  if (qword_10003B920 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D298);

  v5 = sub_100024B78();
  v6 = sub_100024DE8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100010554(a1, a2, v38);
    _os_log_impl(&_mh_execute_header, v5, v6, "provideAtlasBacking for: %s", v7, 0xCu);
    sub_10000C36C(v8);
  }

  if (qword_10003B908 != -1)
  {
    swift_once();
  }

  v9 = qword_10003D200;
  v10 = sub_100024C68();
  v11 = sub_100024C68();
  v12 = [v9 pathForResource:v10 ofType:v11];

  if (v12)
  {
    v13 = sub_100024C78();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100024B78();
  v17 = sub_100024DE8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = swift_slowAlloc();
    v38[1] = v15;
    v39 = v20;
    *v18 = 136315138;
    v38[0] = v13;

    sub_10000AB70(&qword_10003BA80, &qword_100028610);
    v21 = sub_100024CC8();
    v23 = sub_100010554(v21, v22, &v39);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "artPath: %s", v18, 0xCu);
    sub_10000C36C(v20);
    a1 = v19;
  }

  if (v15)
  {

    v24 = sub_100024B78();
    v25 = sub_100024DE8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_100010554(a1, a2, v38);
      *(v26 + 12) = 2080;

      v27 = sub_100010554(v13, v15, v38);

      *(v26 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v24, v25, "using artwork %s at %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v28 = sub_100024C68();

    v29 = &selRef_atlasBackingWithArt_uuid_;
  }

  else
  {
    v30 = sub_100024B78();
    v31 = sub_100024DE8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "no artPathname!", v32, 2u);
    }

    v33 = qword_10003D200;
    v34 = sub_100024C68();
    v28 = [objc_opt_self() imageNamed:v34 inBundle:v33 withConfiguration:0];

    v29 = &selRef_atlasBackingWithImage_uuid_;
  }

  v35 = sub_100024C68();
  v36 = [objc_opt_self() *v29];

  return v36;
}

uint64_t sub_10000D4B0(void *a1)
{
  v3 = v1;
  v5 = sub_10000AB70(&qword_10003BA60, &qword_100028600);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000E134(a1, a1[3]);
  sub_10000E178();
  sub_100025158();
  v11 = type metadata accessor for KaleidoscopePosterData();
  v12 = *(v3 + *(v11 + 24));
  v15[15] = 0;
  sub_1000250B8();
  if (!v2)
  {
    v15[14] = 1;
    sub_100024938();
    sub_10000E30C(&qword_10003BA68, &type metadata accessor for UUID);
    sub_1000250A8();
    v13 = *(v3 + *(v11 + 20));
    v15[13] = 2;
    sub_1000250B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000D698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = (*(*(sub_10000AB70(&qword_10003B970, qword_100028490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = &v21 - v5;
  v26 = sub_10000AB70(&qword_10003BA48, &qword_1000285F8);
  v24 = *(v26 - 8);
  v6 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = type metadata accessor for KaleidoscopePosterData();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024938();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a1[4];
  sub_10000E134(a1, a1[3]);
  sub_10000E178();
  sub_100025148();
  if (v2)
  {
    sub_10000C36C(a1);
    return sub_10000E2AC(v12, &qword_10003B970, qword_100028490);
  }

  else
  {
    v22 = a1;
    v16 = v24;
    v15 = v25;
    v29 = 0;
    *&v12[*(v9 + 24)] = sub_100025098();
    v28 = 1;
    sub_10000E30C(&qword_10003BA58, &type metadata accessor for UUID);
    sub_100025088();
    sub_10000E1CC(v15, v12);
    v27 = 2;
    v17 = v26;
    v18 = sub_100025098();
    v19 = *(v9 + 20);
    (*(v16 + 8))(v8, v17);
    *&v12[v19] = v18;
    sub_10000AAB0(v12, v23);
    sub_10000C36C(v22);
    return sub_10000AB14(v12);
  }
}

uint64_t sub_10000DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100024938();
  result = (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v6 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 0;
  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_10000DA84()
{
  sub_10000CDE4();
  v0 = sub_100024CE8();

  return v0;
}

uint64_t sub_10000DAE0(uint64_t a1)
{
  sub_10000C5F4();
  v8 = v3;
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_100024D08(v9);
  v4 = *(v1 + *(a1 + 24));
  if (qword_10003B8D8 != -1)
  {
    swift_once();
  }

  v5 = qword_10003D1C8;
  if (qword_10003D1C8 <= v4)
  {
    v5 = v4;
  }

  if (qword_10003D1D0 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = qword_10003D1D0;
  }

  v10._countAndFlagsBits = sub_10000B8CC(v6);
  sub_100024D08(v10);

  return v8;
}

unint64_t sub_10000DCA8()
{
  result = qword_10003BA40;
  if (!qword_10003BA40)
  {
    sub_10000DD0C(&qword_10003BA38, &qword_1000285F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA40);
  }

  return result;
}

uint64_t sub_10000DD0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DD54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_10000DDA8(void *a1, uint64_t a2)
{
  v3 = [a1 traitCollection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userInterfaceStyle];
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    return a2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_10000DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_10000AB70(&qword_10003B970, qword_100028490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = (*(*(sub_10000AB70(&qword_10003BA70, &qword_100028608) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin();
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_10000E23C(a1, &v22 - v14);
  sub_10000E23C(a2, &v15[v16]);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_10000E23C(v15, v11);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v15[v16], v4);
      sub_10000E30C(&qword_10003BA78, &type metadata accessor for UUID);
      v18 = sub_100024C58();
      v19 = *(v5 + 8);
      v19(v8, v4);
      v19(v11, v4);
      sub_10000E2AC(v15, &qword_10003B970, qword_100028490);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_10000E2AC(v15, &qword_10003BA70, &qword_100028608);
    return 0;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10000E2AC(v15, &qword_10003B970, qword_100028490);
LABEL_8:
  v20 = type metadata accessor for KaleidoscopePosterData();
  if (*(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20)))
  {
    return *(a1 + *(v20 + 24)) == *(a2 + *(v20 + 24));
  }

  return 0;
}

void *sub_10000E134(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000E178()
{
  result = qword_10003BA50;
  if (!qword_10003BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA50);
  }

  return result;
}

uint64_t sub_10000E1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000AB70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E30C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KaleidoscopePosterData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KaleidoscopePosterData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E4C8()
{
  result = qword_10003BA88;
  if (!qword_10003BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA88);
  }

  return result;
}

unint64_t sub_10000E520()
{
  result = qword_10003BA90;
  if (!qword_10003BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA90);
  }

  return result;
}

unint64_t sub_10000E578()
{
  result = qword_10003BA98;
  if (!qword_10003BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA98);
  }

  return result;
}

uint64_t sub_10000E5CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100035368;
  v6._object = a2;
  v4 = sub_100025078(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

id sub_10000E64C()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10003D200 = result;
  return result;
}

void sub_10000E6A4(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v3 = &off_1000351E8 + 3 * v2;
    v4 = v3[4];
    if (a1 >= v4)
    {
      break;
    }

LABEL_2:
    if (++v2 == 13)
    {
      sub_10000AB70(&qword_10003BB38, "8_");
      swift_arrayDestroy();
      return;
    }
  }

  v6 = v3[5];
  v5 = v3[6];

  while (1)
  {
    v7 = __OFSUB__(a1, v4);
    a1 -= v4;
    if (v7)
    {
      break;
    }

    v8._countAndFlagsBits = v6;
    v8._object = v5;
    sub_100024D08(v8);
    if (a1 < v4)
    {

      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_10000E784(double a1)
{
  v2 = *(v1 + 96);
  if (v2 != a1)
  {
    v3 = 16;
    if (v2 >= a1)
    {
      v3 = 32;
    }

    v4 = 24;
    if (v2 >= a1)
    {
      v4 = 40;
    }

    v5 = vabdd_f64(v2, a1);
    v6 = v5 * *(v1 + v3) + *(v1 + 88);
    *(v1 + 80) = fmod(*(v1 + 80) + v5 * *(v1 + v4), 1.0);
    *(v1 + 88) = fmod(v6, 1.0);
    *(v1 + 96) = a1;
  }
}

void sub_10000E808(double a1)
{
  v2 = *(v1 + 104);
  if (v2 != a1)
  {
    v3 = 64;
    if (v2 < a1)
    {
      v3 = 48;
    }

    v4 = 72;
    if (v2 < a1)
    {
      v4 = 56;
    }

    v5 = vabdd_f64(v2, a1);
    v6 = v5 * *(v1 + v3);
    *(v1 + 80) = fmod(*(v1 + 80) + v5 * *(v1 + v4), 1.0);
    *(v1 + 88) = fmod(v6 + *(v1 + 88), 1.0);
    *(v1 + 104) = a1;
  }
}

double sub_10000E8DC()
{
  type metadata accessor for AnimationDriver();
  v0 = swift_allocObject();
  result = 1.0;
  *(v0 + 48) = 0xBFA53F7CED916873;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0x3FA53F7CED916873;
  *(v0 + 72) = 0;
  *(v0 + 16) = xmmword_1000287B0;
  *(v0 + 32) = xmmword_1000287B0;
  *(v0 + 80) = xmmword_1000287C0;
  *(v0 + 96) = xmmword_1000287A0;
  return result;
}

id sub_10000E948()
{
  if (qword_10003B920 != -1)
  {
    swift_once();
  }

  v1 = sub_100024B98();
  sub_10000C2CC(v1, qword_10003D298);
  v2 = v0;
  v3 = sub_100024B78();
  v4 = sub_100024E18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused])
    {
      v7 = 0x676E6973756170;
    }

    else
    {
      v7 = 0x6E69737561706E75;
    }

    if (v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused])
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_100010554(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s the quad view", v5, 0xCu);
    sub_10000C36C(v6);
  }

  result = *&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (result)
  {
    v11 = v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused];

    return [result setPaused:v11];
  }

  return result;
}

id sub_10000EB7C()
{
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v2 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (v2)
  {
    [v2 removeAllQuads];
  }

  [*&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable] removeAllObjects];
  v3 = [objc_opt_self() sharedInstance];
  [v3 purgeAllUnused];

  v4 = *&v0[v1];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v0[v1];
  }

  else
  {
    v5 = 0;
  }

  *&v0[v1] = 0;

  v7.receiver = v0;
  v7.super_class = type metadata accessor for KaleidoscopeContentView();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopeContentView()
{
  result = qword_10003BE18;
  if (!qword_10003BE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000ED8C()
{
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  [v0 setBackgroundColor:v2];

  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100024C68();
  v12 = [objc_opt_self() quadViewWithFrame:v11 identifier:{v4, v6, v8, v10}];

  v13 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v14 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = v12;
  v23 = v12;

  if (v23)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_100024C68();
      v18 = MGGetBoolAnswer();

      LODWORD(v19) = 1024416809;
      if (!v18)
      {
        *&v19 = 1.0;
      }

      [v16 setMaxAPL:v19];
      v20 = v23;
      [v16 setOpaque:1];
      v21 = [v1 blackColor];
      [v16 setBackgroundColor:v21];

      [v0 addSubview:v16];
      sub_10000F310();
      v22 = *&v0[v13];
      if (v22)
      {
        [v22 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
      }

      [v16 setPreferredFramesPerSecond:0];
      v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
      sub_10000E948();
    }
  }
}

void sub_10000F004()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for KaleidoscopeContentView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v2 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
    sub_10000F310();
    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      [v5 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }
}

uint64_t sub_10000F0FC()
{
  result = type metadata accessor for KaleidoscopePosterData();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10000F1F4(uint64_t a1)
{
  v3 = *(*(type metadata accessor for KaleidoscopePosterData() - 8) + 64);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v1 + v6, v5);
  v7 = sub_10000DE10(a1, v5);
  result = sub_10000AB14(v5);
  if (!v7)
  {
    sub_10000AAB0(a1, v5);
    swift_beginAccess();
    sub_100011544(v5, v1 + v6);
    v9 = swift_endAccess();
    sub_10000F310(v9);
    result = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (result)
    {
      return [result renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  return result;
}

uint64_t sub_10000F310()
{
  v1 = type metadata accessor for KaleidoscopePosterData();
  v2 = *(*(v1 - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v20 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v9)
  {
    v10 = v9;
    [v10 removeAllQuads];
    v11 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v0 + v11, v8);
    v12 = *&v8[*(v1 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v13 = qword_10003D1C8;
    v14 = qword_10003D1D0;
    sub_10000AB14(v8);
    if (v13 <= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (v14 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = sub_10000F4CC(v16);
    [v17 setOpaque:1];
    [v10 addQuad:v17];
    v18 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver);
    sub_10000AAB0(v0 + v11, v5);

    sub_10000F690(v19, v5);

    return sub_10000AB14(v5);
  }

  return result;
}

id sub_10000F4CC(Swift::UInt a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_100010B0C(&v14, a1);
  swift_endAccess();
  v4 = [objc_opt_self() quadWithShaderType:3];
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  LODWORD(v7) = 1000593162;
  if (v6 == 1)
  {
    *&v7 = 0.0025;
  }

  [v4 setLineThickness:v7];
  v8 = sub_10000FC70(a1);
  [v4 setPrimaryLumaTexture:v8];

  v9 = sub_10000FC9C(a1);
  [v4 setPrimaryChromaTexture:v9];

  [v2 bounds];
  Width = CGRectGetWidth(v15);
  *&Width = Width;
  *&Width = *&Width / (*&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] * *&Width);
  [v4 setDialRadius:Width];
  v11 = *&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable];
  v12 = sub_10000B164(a1);
  [v11 setObject:v12 forKey:v4];

  return v4;
}

void sub_10000F690(uint64_t a1, uint64_t a2)
{
  sub_10000F1F4(a2);
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress) = *(a1 + 80);
  v4 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver);
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) = a1;

  sub_10000F8E8(*(a1 + 80));
  v5 = *(a1 + 88);

  sub_10000F70C(v5);
}

void sub_10000F70C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v4 = [v17 quads];
  sub_1000114F8();
  v5 = sub_100024D48();

  if (v5 >> 62)
  {
    v6 = sub_100025028();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      v8 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_100024F48();
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = [*(v1 + v8) objectForKey:v11];
          if (v13)
          {
            v14 = v13;
            [v13 startRotation];
            v16 = fmod(v15 + a1, 1.0);
            *&v16 = v16;
            [v12 setRotation:v16];

            v10 = v14;
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void sub_10000F8E8(double a1)
{
  v34 = type metadata accessor for KaleidoscopePosterData();
  v3 = *(*(v34 - 8) + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v6)
  {
    v33 = v5;
    v7 = v6;
    v8 = [v7 quads];
    sub_1000114F8();
    v9 = sub_100024D48();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100025028())
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v30 = v7;
      v35 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      v11 = v9 & 0xC000000000000001;
      v32 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
      swift_beginAccess();
      v12 = 0;
      v31 = i;
      while (1)
      {
        if (v11)
        {
          v16 = sub_100024F48();
        }

        else
        {
          v16 = *(v9 + 8 * v12 + 32);
        }

        v15 = v16;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
          goto LABEL_7;
        }

        v18 = v17;
        v19 = [*(v1 + v35) objectForKey:v17];
        if (!v19)
        {
          goto LABEL_7;
        }

        v20 = v19;
        v7 = v9;
        v21 = v1;
        v22 = v1 + v32;
        v23 = v33;
        sub_10000AAB0(v22, v33);
        v24 = v23;
        v25 = *(v23 + *(v34 + 24));
        if (qword_10003B8D8 != -1)
        {
          swift_once();
          v24 = v33;
        }

        v9 = qword_10003D1C8;
        v1 = qword_10003D1D0;
        sub_10000AB14(v24);
        v26 = v9 <= v25 ? v25 : v9;
        v27 = v1 >= v26 ? v26 : v1;
        if (qword_10003B900 == -1)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          swift_once();
          if ((v27 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
LABEL_28:

            return;
          }
        }

        if (v27 >= *(qword_10003D1F8 + 16))
        {
          break;
        }

        v28 = *(qword_10003D1F8 + 8 * v27 + 32) - 1;
        v29 = 0.0;
        if (v28 <= 0x20)
        {
          v29 = dbl_100028978[v28];
        }

        v13 = fmod(v29 + a1, 1.0);
        *&v13 = v13;
        [v20 pointForTime:v13];
        v14 = v36;
        [v18 setSampleRadius:v37];
        [v18 setSampleCenter:v14];

        v15 = v20;
        v1 = v21;
        v9 = v7;
        i = v31;
LABEL_7:
        ++v12;

        if (i == v12)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_31:
      ;
    }
  }
}

uint64_t sub_10000FCC8(unint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance) > 1uLL)
  {
    result = a3();
  }

  else
  {
    result = a2();
  }

  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  swift_once();
  result = v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v6.i64[0] = -4;
    v7.i64[0] = *(qword_10003D1F8 + 8 * a1 + 32) - 13;
    *&v11 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v6, v7).i64[0], 0), xmmword_100028880, xmmword_100028870).u64[0];
    v8 = sub_100024C68();

    v9 = [objc_opt_self() textureWithProviderDelegate:v3 uuid:v8 rect:v11];

    return v9;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10000FED8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for KaleidoscopePosterData();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
  if (*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking))
  {
    v40 = v9;
    v16 = a2;
    v17 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v2 + v17, v14);
    v18 = *&v14[*(v5 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v20 = qword_10003D1C8;
    v19 = qword_10003D1D0;
    sub_10000AB14(v14);
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if (v19 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (sub_10000BA94(v22) == a1 && v23 == v16)
    {
    }

    else
    {
      a2 = v16;
      v25 = sub_1000250D8();

      v9 = v40;
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v37 = *(v2 + v15);
    goto LABEL_34;
  }

LABEL_15:
  v26 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
  if (*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking))
  {
    v27 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v2 + v27, v12);
    v28 = *&v12[*(v5 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v29 = qword_10003D1C8;
    v30 = qword_10003D1D0;
    sub_10000AB14(v12);
    if (v29 <= v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    if (v30 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (sub_10000BA9C(v32) == a1 && v33 == a2)
    {
    }

    else
    {
      v35 = sub_1000250D8();

      if ((v35 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v37 = *(v2 + v26);
LABEL_34:
    v38 = v37;
    return v37;
  }

LABEL_29:
  v36 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v2 + v36, v9);
  v37 = sub_10000CF50(a1, a2);
  sub_10000AB14(v9);
  return v37;
}

uint64_t sub_100010250(uint64_t a1, uint64_t a2, float a3)
{
  v7 = type metadata accessor for KaleidoscopePosterData();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&dword_10003D208;
  dword_10003D208 = LODWORD(a3);
  v12 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v12 = dbl_100028A80[a1 - 2];
  }

  if (a2 == 2)
  {
    if (v12 >= 3.14159265)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a2 == 4)
  {
    goto LABEL_14;
  }

  if (a2 != 3)
  {
    if (v12 >= 0.0)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (a1 == 2)
    {
      v13 = 1.0;
      v14 = 1.0;
      if (a2 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v14 = 1.0;
    v13 = 1.0;
    if (a1 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v12 < 1.57079633)
  {
    v13 = 1.0;
    v14 = 1.0;
    if (a1 != 4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_14:
  v13 = -1.0;
  v14 = 1.0;
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 != 2 || a2 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (a2 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a1 == 3)
  {
    if (a2 != 4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a1 == 4 && a2 == 3)
  {
LABEL_24:
    v14 = 2.0;
  }

LABEL_25:
  v15 = (a3 - v11);
  *(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused) = 0;
  sub_10000E948();
  *(*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) + 88) = v14 * (v15 * 0.0415 * v13) * 5.0 + *(*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) + 88);
  v16 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v3 + v16, v10);

  sub_10000F690(v17, v10);

  return sub_10000AB14(v10);
}

uint64_t sub_100010484(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000104F8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100010554(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100010554(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001149C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C36C(v11);
  return v7;
}

unint64_t sub_100010620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001072C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100024F68();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001072C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100010778(a1, a2);
  sub_1000108A8(&off_100035340);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100010778(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100010994(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100024F68();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100024D18();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010994(v10, 0);
        result = sub_100024F18();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000108A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100010A08(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100010994(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000AB70(&qword_10003BEE8, &qword_100028960);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010A08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003BEE8, &qword_100028960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100010AFC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100010B0C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_100025118();
  sub_100025128(a2);
  v7 = sub_100025138();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100010E54(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100010C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  result = sub_100024F08();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_100025118();
      sub_100025128(v18);
      result = sub_100025138();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100010E54(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100010C04(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100010FA0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000110E0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_100025118();
  sub_100025128(v4);
  result = sub_100025138();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000250E8();
  __break(1u);
  return result;
}

void *sub_100010FA0()
{
  v1 = v0;
  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  v2 = *v0;
  v3 = sub_100024EF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000110E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  result = sub_100024F08();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_100025118();
      sub_100025128(v17);
      result = sub_100025138();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_100011300()
{
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView) = 0;
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  *(v0 + v1) = [objc_allocWithZone(NSMapTable) init];
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets) = &_swiftEmptySetSingleton;
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *(v0 + v2) = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress) = 0;
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier) = 1063675494;
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance) = 0;
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking) = 0;
  *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking) = 0;
  sub_100025018();
  __break(1u);
}

uint64_t sub_100011424()
{
  dword_10003D208 = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_100020F50();
    [*(v1 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_renderer) noteContentSignificantlyChanged];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001149C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000114F8()
{
  result = qword_10003BEF0;
  if (!qword_10003BEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003BEF0);
  }

  return result;
}

uint64_t sub_100011544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000115D0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v56 - v10;
  if (*&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] == a1 && *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView])
  {
    return;
  }

  *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] = a1;
  [v4 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012310(&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData], v11);
  v20 = type metadata accessor for KaleidoscopePosterData();
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v57 = a3;
  v58 = a1;
  v59 = a2;
  v21 = *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v56 = type metadata accessor for KaleidoscopeContentView();
  v22 = objc_allocWithZone(v56);
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
  v23 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  v24 = objc_allocWithZone(NSMapTable);

  *&v22[v23] = [v24 init];
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *&v22[v25] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  v26 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
  v27 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
  v28 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *&v22[v28] = v29;
  v30 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
  v31 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
  *&v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
  v32 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
  v33 = v59;
  *&v22[v31] = v59;
  v34 = v57;
  *&v22[v32] = v57;
  v35 = *&v22[v28];
  *&v22[v28] = v21;
  v36 = v34;

  v37 = v33;

  v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
  sub_10000AAB0(v11, &v22[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
  *&v22[v26] = *(v21 + 80);
  *&v22[v30] = v58;
  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v40 = 0.9;
  if (!v39)
  {
    v40 = 1.125;
  }

  *&v22[v27] = v40;
  v66.receiver = v22;
  v66.super_class = v56;
  v41 = objc_msgSendSuper2(&v66, "initWithFrame:", v13, v15, v17, v19);
  sub_10000ED8C();

  sub_10000AB14(v11);
  [v4 insertSubview:v41 atIndex:0];
  v42 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v43 = *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
  if (v43)
  {
    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v64 = sub_100012410;
    v65 = v45;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100011B4C;
    v63 = &unk_100035590;
    v46 = _Block_copy(&aBlock);
    v47 = v43;

    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v64 = sub_10001243C;
    v65 = v48;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100011B90;
    v63 = &unk_1000355E0;
    v49 = _Block_copy(&aBlock);
    v50 = v47;

    [v44 animateWithDuration:0x20000 delay:v46 options:v49 animations:0.25 completion:0.0];

    _Block_release(v49);
    _Block_release(v46);
    v43 = *&v4[v42];
  }

  *&v4[v42] = v41;
  v51 = v41;

  v52 = *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator];
  sub_100012380();
  sub_100024B08();
  v53 = *&v4[v42];
  if (v53)
  {
    v54 = *(v53 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (v54)
    {
      v55 = v54;
      [v55 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }
}

uint64_t sub_100011B4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100011B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100011BE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for KaleidoscopePosterData();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v9 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v9 + v10, v7);
    v11 = v9;
    sub_10000F690(a1, v7);

    sub_10000AB14(v7);
    v12 = *(v2 + v8);
    if (v12)
    {
      v13 = v12;
      sub_10000F310();

      v14 = *(v2 + v8);
      if (v14)
      {
        v15 = *(v14 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
        if (v15)
        {
          [v15 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
        }
      }
    }
  }
}

void sub_100011D08(float a1)
{
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v3 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView);
  if (v3)
  {
    v4 = v1;
    *&v3[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = a1;
    v5 = v3;
    sub_10000F310();

    v6 = *(v4 + v2);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
      if (v7)
      {

        [v7 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
      }
    }
  }
}

id sub_100011E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopeEditorContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopeEditorContentView()
{
  result = qword_10003BF98;
  if (!qword_10003BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100011F1C()
{
  sub_100011FEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100011FEC()
{
  if (!qword_10003C240)
  {
    type metadata accessor for KaleidoscopePosterData();
    v0 = sub_100024E98();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C240);
    }
  }
}

void sub_100012044()
{
  v1 = v0;
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100012310(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData, &v11 - v4);
  v6 = type metadata accessor for KaleidoscopePosterData();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = *&v5[*(v6 + 24)];
    sub_10000AB14(v5);
    v12 = v7;
    v15._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v15);

    v16._countAndFlagsBits = 45;
    v16._object = 0xE100000000000000;
    sub_100024D08(v16);
    v8 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver);
    if (v8)
    {
      v9 = *(v8 + 88);
      sub_100024D88(3);
      sub_100024D98();
      v17._countAndFlagsBits = 45;
      v17._object = 0xE100000000000000;
      sub_100024D08(v17);
      v10 = *(v8 + 80);
      sub_100024D88(3);
      sub_100024D98();
      v18._countAndFlagsBits = 45;
      v18._object = 0xE100000000000000;
      sub_100024D08(v18);
      v12 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle);
      type metadata accessor for UIUserInterfaceStyle(0);
      sub_100024FC8();
      sub_100024C68();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_100012260()
{
  v1 = *v0;
  sub_100012044();
  v3 = v2;
  v4 = [v2 description];
  v5 = sub_100024C78();
  v7 = v6;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_100024D08(v9);

  v10._countAndFlagsBits = 1735290926;
  v10._object = 0xE400000000000000;
  sub_100024D08(v10);

  return 0x6C6C696B73746163;
}

uint64_t sub_100012310(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100012380()
{
  result = qword_10003C2A0;
  if (!qword_10003C2A0)
  {
    type metadata accessor for KaleidoscopeContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C2A0);
  }

  return result;
}

uint64_t sub_1000123D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001244C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView) = 0;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot) = 1;
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotManager;
  v4 = sub_100024A68();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_100024A58();
  v7 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator;
  v8 = sub_100024B28();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_100024B18();
  sub_100025018();
  __break(1u);
}

uint64_t sub_100012544(uint64_t a1)
{
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1000125B8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for KaleidoscopeEmptyView();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemBrownColor];
  [v12 setBackgroundColor:v13];

  v14 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  v15 = *&v12[OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel];
  v16 = sub_100024C68();
  [v15 setText:v16];

  [v12 addSubview:*&v12[v14]];
  return v12;
}

id sub_100012848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopeEmptyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001291C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100024B98();
  sub_100012E54(v3, a2);
  sub_10000C2CC(v3, a2);
  return sub_100024B88();
}

uint64_t sub_100012994@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100024BD8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100024BE8();
  v5 = sub_100024BA8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_100024BB8();
  sub_10000AB70(&qword_10003BFF8, &unk_100028C20);
  v8 = *(sub_100024958() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100028B90;
  sub_100012E0C(&qword_10003C000, &type metadata accessor for PRRenderingConfiguration);

  sub_100024948();
  sub_100012E0C(&qword_10003C008, &type metadata accessor for PREditingConfiguration);

  sub_100024948();

  *a1 = v11;
  return result;
}

id sub_100012BF0(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100012C30()
{
  v0 = sub_10000AB70(&qword_10003BFE8, qword_100028BA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100024BC8();
  sub_100012EEC(&qword_10003BFF0);
  sub_100024988();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100012D70();
  sub_100012EEC(&qword_10003BFE0);
  sub_100024968();
  return 0;
}

unint64_t sub_100012D70()
{
  result = qword_10003BFD8;
  if (!qword_10003BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFD8);
  }

  return result;
}

uint64_t sub_100012E0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100012E54(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100012EEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000DD0C(&qword_10003BFE8, qword_100028BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012F3C()
{
  v1 = v0;
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for KaleidoscopePosterData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v55 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 48);
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  for (result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= 6; result = sub_100025028())
  {
    v54 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!v11)
      {
LABEL_5:
        v13 = v10 & 0xFFFFFFFFFFFFFF8;
        v45 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
        v46 = 0;
        v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = 13;
        goto LABEL_8;
      }
    }

    v13 = sub_100025038();
    v45 = v15;
    v46 = v16;
    v44 = v17;
    v14 = sub_100025028();
LABEL_8:
    v18 = _swiftEmptyArrayStorage;
    if (!v14)
    {
LABEL_27:
      sub_10000AB70(&qword_10003C150, &qword_100028CB8);
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      if (v11)
      {
        sub_100025028();
      }

      else
      {
        v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = sub_1000147A8(0, &qword_10003C158, OS_dispatch_queue_ptr);
      __chkstk_darwin(v39);
      *(&v41 - 8) = v1;
      *(&v41 - 7) = v18;
      *(&v41 - 6) = inited;
      *(&v41 - 5) = v13;
      v40 = v46;
      *(&v41 - 4) = v45;
      *(&v41 - 3) = v40;
      *(&v41 - 2) = v44;
      sub_100024E38();

      return swift_unknownObjectRelease();
    }

    v56 = _swiftEmptyArrayStorage;
    result = sub_10000A3A8(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      goto LABEL_36;
    }

    v41 = v13;
    v42 = v11;
    v43 = v1;
    v18 = v56;
    v19 = sub_10000AB70(&unk_10003C280, &qword_100028CB0);
    v20 = 0;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v51 = (v7 + 48);
    v52 = v19;
    *&v21 = 138412290;
    v47 = v21;
    v53 = v14;
    v48 = v6;
    v50 = v7;
    while (1)
    {
      v1 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v54)
      {
        v22 = sub_100024F48();
      }

      else
      {
        if (v20 >= *(v49 + 16))
        {
          goto LABEL_32;
        }

        v22 = *(v10 + 8 * v20 + 32);
      }

      v23 = v22;
      sub_100024A88();
      if ((*v51)(v5, 1, v6) == 1)
      {
        sub_10000E2AC(v5, &qword_10003C380, qword_100028B40);
        if (qword_10003B910 != -1)
        {
          swift_once();
        }

        v24 = sub_100024B98();
        sub_10000C2CC(v24, qword_10003D268);
        v25 = v23;
        v26 = sub_100024B78();
        v27 = sub_100024E08();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = v5;
          v30 = v10;
          v31 = swift_slowAlloc();
          *v28 = v47;
          *(v28 + 4) = v25;
          *v31 = v25;
          v32 = v25;
          _os_log_impl(&_mh_execute_header, v26, v27, "Unable to load Kaleidoscope poster data for look %@. Falling back to first look.", v28, 0xCu);
          sub_10000E2AC(v31, &qword_10003B968, &unk_100028CA0);
          v10 = v30;
          v5 = v29;
          v6 = v48;
        }

        v33 = sub_100024938();
        v34 = v55;
        (*(*(v33 - 8) + 56))(v55, 1, 1, v33);

        *(v34 + *(v6 + 20)) = 0;
        *(v34 + *(v6 + 24)) = 1;
        v7 = v50;
      }

      else
      {
        sub_10000AA4C(v5, v55);
      }

      v56 = v18;
      v36 = v18[2];
      v35 = v18[3];
      v11 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_10000A3A8(v35 > 1, v36 + 1, 1);
        v18 = v56;
      }

      v18[2] = v11;
      sub_10000AA4C(v55, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36);
      ++v20;
      if (v1 == v53)
      {
        v11 = v42;
        v1 = v43;
        v13 = v41;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_100025028();
    if (result < 0)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100013570(unint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for KaleidoscopePosterData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 48);
  v75 = a6;
  if ((v20 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v21 = *(v20 + 8 * a1 + 32);
        goto LABEL_5;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = sub_100024F48();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  a6 = v21;
  if (*(a3 + 16) > a1)
  {
    v73 = a7;
    v74 = a8;
    sub_10000AAB0(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a1, v19);
    v15 = *&v19[*(v15 + 24)];
    if (qword_10003B8D8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_7:
  v22 = qword_10003D1C8;
  if (qword_10003D1C8 <= v15)
  {
    v22 = v15;
  }

  if (qword_10003D1D0 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = qword_10003D1D0;
  }

  v24 = sub_10000BA94(v23);
  v26 = sub_10000CF50(v24, v25);

  v27 = sub_10000BA9C(v23);
  v29 = sub_10000CF50(v27, v28);

  v31 = __chkstk_darwin(v30);
  v70 = a2;
  v69[-4] = a2;
  v69[-3] = a6;
  v69[-2] = v26;
  v69[-1] = v29;
  __chkstk_darwin(v31);
  v69[-2] = sub_100014804;
  v69[-1] = v32;
  os_unfair_lock_lock(a4 + 4);
  sub_100014824();
  v72 = 0;
  os_unfair_lock_unlock(a4 + 4);
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v33 = sub_100024B98();
  v34 = sub_10000C2CC(v33, qword_10003D268);
  v35 = v29;
  v36 = a6;
  v37 = v26;
  v69[1] = v34;
  v38 = sub_100024B78();
  v39 = sub_100024DE8();

  v77 = v35;
  v76 = v37;

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = a4;
    *v40 = 138412802;
    v42 = v76;
    v43 = v77;
    *(v40 + 4) = v76;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v43;
    *v41 = v26;
    v41[1] = v29;
    *(v40 + 22) = 2112;
    *(v40 + 24) = v36;
    v41[2] = v36;
    v44 = v42;
    v45 = v43;
    v46 = v36;
    _os_log_impl(&_mh_execute_header, v38, v39, "Loading luma %@ and chroma %@ for look %@", v40, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();
    a4 = v71;
  }

  v78 = v36;
  __chkstk_darwin(v47);
  v69[-2] = &v78;
  v48 = v72;
  sub_10001B898(sub_10001486C, &v69[-4], v75, v73, v74);
  if (v49)
  {
    v75 = v48;
    v50 = sub_10000BB64(v23);
    v52 = sub_10000CF50(v50, v51);

    v53 = sub_10000BB7C(v23);
    v55 = sub_10000CF50(v53, v54);

    v56 = v55;
    v57 = v36;
    v58 = v52;
    v59 = sub_100024B78();
    v60 = sub_100024DE8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v71 = a4;
      *v61 = 138412802;
      *(v61 + 4) = v58;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v56;
      *v62 = v52;
      v62[1] = v55;
      *(v61 + 22) = 2112;
      *(v61 + 24) = v57;
      v62[2] = v57;
      v63 = v57;
      v64 = v58;
      v65 = v56;
      _os_log_impl(&_mh_execute_header, v59, v60, "Loading dark luma %@ and dark chroma %@ for look %@", v61, 0x20u);
      sub_10000AB70(&qword_10003B968, &unk_100028CA0);
      swift_arrayDestroy();
      a4 = v71;
    }

    v67 = __chkstk_darwin(v66);
    v69[-4] = v70;
    v69[-3] = v57;
    v69[-2] = v52;
    v69[-1] = v55;
    __chkstk_darwin(v67);
    v69[-2] = sub_10001484C;
    v69[-1] = v68;
    os_unfair_lock_lock(a4 + 4);
    sub_100014888();
    os_unfair_lock_unlock(a4 + 4);

    sub_10000AB14(v19);
  }

  else
  {
    sub_10000AB14(v19);
  }
}

uint64_t sub_100013BB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (a3)
  {
    v8 = *(a1 + 16);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = a3;
      result = sub_100024FE8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      *(a1 + 16) = sub_1000194D8(v9, result + 1);
    }

    else
    {
      v12 = *(a1 + 16);
      v10 = a3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 16);
    sub_10001A764(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 16) = v19;
  }

  else
  {
  }

  swift_endAccess();
  swift_beginAccess();
  if (!a4)
  {

    return swift_endAccess();
  }

  v14 = *(a1 + 24);
  if ((v14 & 0xC000000000000001) == 0)
  {
    v17 = *(a1 + 24);
    v16 = a4;
    goto LABEL_20;
  }

  if (v14 < 0)
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = a4;
  result = sub_100024FE8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 24) = sub_1000194D8(v15, result + 1);
LABEL_20:
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 24);
    sub_10001A764(v16, a2, v18);
    *(a1 + 24) = v20;
    return swift_endAccess();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100013D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (a3)
  {
    v8 = *(a1 + 32);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *(a1 + 32);
      }

      else
      {
        v9 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = a3;
      result = sub_100024FE8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      *(a1 + 32) = sub_1000194D8(v9, result + 1);
    }

    else
    {
      v12 = *(a1 + 32);
      v10 = a3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 32);
    sub_10001A764(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 32) = v19;
  }

  else
  {
  }

  swift_endAccess();
  swift_beginAccess();
  if (!a4)
  {

    return swift_endAccess();
  }

  v14 = *(a1 + 40);
  if ((v14 & 0xC000000000000001) == 0)
  {
    v17 = *(a1 + 40);
    v16 = a4;
    goto LABEL_20;
  }

  if (v14 < 0)
  {
    v15 = *(a1 + 40);
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = a4;
  result = sub_100024FE8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 40) = sub_1000194D8(v15, result + 1);
LABEL_20:
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 40);
    sub_10001A764(v16, a2, v18);
    *(a1 + 40) = v20;
    return swift_endAccess();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100013F1C(void *a1, uint64_t a2)
{
  v6 = v2[6];
  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
    {
      goto LABEL_3;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 < 0)
  {
    v31 = v2[6];
  }

  result = sub_100025028();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (sub_100025028() < 6)
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

    sub_100024F38(0);
    sub_100024F38(1);
    sub_100024F38(2);
    sub_100024F38(3);
    sub_100024F38(4);
    sub_100024F38(5);
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:

    v8 = sub_100025038();
    v3 = v8;
    if (a2 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (a2 != 2)
  {
    goto LABEL_11;
  }

LABEL_9:
  v34 = a1;
  __chkstk_darwin(v8);
  v32[2] = &v34;
  sub_10001B898(sub_10001486C, v32, v10, v9, v11);
  if (v12)
  {
    v13 = v2 + 4;
    goto LABEL_12;
  }

LABEL_11:
  v13 = v2 + 2;
LABEL_12:
  swift_beginAccess();
  v14 = *v13;

  v6 = sub_100014A44(a1, v14);

  if (qword_10003B910 != -1)
  {
LABEL_28:
    swift_once();
  }

  v15 = sub_100024B98();
  sub_10000C2CC(v15, qword_10003D268);
  v16 = v6;
  v17 = a1;
  v18 = sub_100024B78();
  v19 = sub_100024DE8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[4] = v3;
    v23 = v22;
    v33 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v16;
    *v21 = v6;
    *(v20 + 12) = 2080;
    v24 = a2 == 1;
    if (a2 == 1)
    {
      v25 = 0x746867696CLL;
    }

    else
    {
      v25 = 1802658148;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = v16;
    v28 = sub_100010554(v25, v26, &v33);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    v21[1] = v17;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Retrieved backing luma %@ for appearance %s for look %@", v20, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();

    sub_10000C36C(v23);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100014314(void *a1, uint64_t a2)
{
  v6 = v2[6];
  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
    {
      goto LABEL_3;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 < 0)
  {
    v31 = v2[6];
  }

  result = sub_100025028();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (sub_100025028() < 6)
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

    sub_100024F38(0);
    sub_100024F38(1);
    sub_100024F38(2);
    sub_100024F38(3);
    sub_100024F38(4);
    sub_100024F38(5);
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:

    v8 = sub_100025038();
    v3 = v8;
    if (a2 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (a2 != 2)
  {
    goto LABEL_11;
  }

LABEL_9:
  v34 = a1;
  __chkstk_darwin(v8);
  v32[2] = &v34;
  sub_10001B898(sub_100014788, v32, v10, v9, v11);
  if (v12)
  {
    v13 = v2 + 5;
    goto LABEL_12;
  }

LABEL_11:
  v13 = v2 + 3;
LABEL_12:
  swift_beginAccess();
  v14 = *v13;

  v6 = sub_100014A44(a1, v14);

  if (qword_10003B910 != -1)
  {
LABEL_28:
    swift_once();
  }

  v15 = sub_100024B98();
  sub_10000C2CC(v15, qword_10003D268);
  v16 = v6;
  v17 = a1;
  v18 = sub_100024B78();
  v19 = sub_100024DE8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[4] = v3;
    v23 = v22;
    v33 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v16;
    *v21 = v6;
    *(v20 + 12) = 2080;
    v24 = a2 == 1;
    if (a2 == 1)
    {
      v25 = 0x746867696CLL;
    }

    else
    {
      v25 = 1802658148;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = v16;
    v28 = sub_100010554(v25, v26, &v33);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    v21[1] = v17;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Retrieved backing chroma %@ for appearance %s for look %@", v20, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();

    sub_10000C36C(v23);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10001470C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000147A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100014824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000148A0(uint64_t a1, void *a2)
{
  v5 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for KaleidoscopePosterData();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000E2AC(a1, &qword_10003C380, qword_100028B40);
    sub_100019384(a2, v8);

    sub_10000E2AC(v8, &qword_10003C380, qword_100028B40);
  }

  else
  {
    sub_10000AA4C(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10001A778(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

void *sub_100014A44(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100024FF8();

    if (v4)
    {
      sub_1000147A8(0, &qword_10003C2D8, CLKUIAtlasBacking_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10001E6A0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_100014B08(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100024FF8();

    if (v4)
    {
      type metadata accessor for KaleidoscopeEditorContentView();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10001E6A0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100014BBC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100024FF8();

    if (v4)
    {
      type metadata accessor for AnimationDriver();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10001E6A0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t sub_100014CD0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  v2 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView] = 0;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterDataForLook] = &_swiftEmptyDictionarySingleton;
  v3 = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_kaleidoscopeViewReuseCache] = _swiftEmptyArrayStorage;
  v4 = &qword_10003C000;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames] = _swiftEmptyArrayStorage;
  v5 = &unk_10003D000;
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager;
  type metadata accessor for KaleidoscopeArtFileManager();
  v7 = swift_allocObject();
  v7[2] = &_swiftEmptyDictionarySingleton;
  v7[3] = &_swiftEmptyDictionarySingleton;
  v7[4] = &_swiftEmptyDictionarySingleton;
  v7[5] = &_swiftEmptyDictionarySingleton;
  v7[6] = sub_10000A6CC();
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation] = 0;
  v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton] = 1;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle] = 0;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for KaleidoscopePosterEditor();
  v8 = objc_msgSendSuper2(&v37, "init");
  v9 = qword_10003B910;
  v10 = v8;
  if (v9 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v11 = sub_100024B98();
    sub_10000C2CC(v11, qword_10003D268);
    v12 = sub_100024B78();
    v13 = sub_100024DD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "PosterEditor created", v14, 2u);
    }

    v15 = *(v10 + v5[86]);

    sub_100012F3C();

    v16 = sub_10000A6CC();
    v17 = v16;
    v18 = v16 >> 62;
    if (v16 >> 62)
    {
      result = sub_100025028();
      if (result < 0)
      {
        goto LABEL_32;
      }

      result = sub_100025028();
      if (result < 6)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 6)
      {
        goto LABEL_29;
      }
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v18)
      {
LABEL_8:
        v5 = ((v17 & 0xFFFFFFFFFFFFFF8) + 32);
        v20 = 6;
        goto LABEL_11;
      }
    }

    sub_100025038();
    v5 = v21;
    v18 = v22;
    v20 = v23 >> 1;
LABEL_11:
    swift_unknownObjectRetain();

    v24 = v20 - v18;
    if (__OFSUB__(v20, v18))
    {
      goto LABEL_30;
    }

    if (!v24)
    {
      break;
    }

    sub_10000A3C8(0, v24 & ~(v24 >> 63), 0);
    v25 = v3;
    result = swift_unknownObjectRelease();
    if (v24 < 0)
    {
      goto LABEL_31;
    }

    v36 = v10;
    if (v18 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v18;
    }

    v4 = (v26 - v18);
    v10 = &v5[v18];
    while (v4)
    {
      v27 = *v10;
      v28 = [v27 displayName];
      v29 = sub_100024C78();
      v5 = v30;

      v32 = v25[2];
      v31 = v25[3];
      v3 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        sub_10000A3C8((v31 > 1), v32 + 1, 1);
      }

      v25[2] = v3;
      v33 = &v25[2 * v32];
      v33[4] = v29;
      v33[5] = v5;
      v4 = (v4 - 1);
      ++v10;
      if (!--v24)
      {
        swift_unknownObjectRelease();
        v4 = &qword_10003C000;
        v10 = v36;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  swift_unknownObjectRelease_n();
  v25 = _swiftEmptyArrayStorage;
LABEL_24:
  v34 = v4[52];
  v35 = *(v10 + v34);
  *(v10 + v34) = v25;

  return v10;
}

void sub_10001525C(void *a1, void *a2, void *a3)
{
  v209 = a1;
  v5 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v203 = &v195[-v7];
  v204 = sub_100024938();
  v213 = *(v204 - 1);
  v8 = *(v213 + 8);
  v9 = __chkstk_darwin(v204);
  v200 = &v195[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v208 = &v195[-v11];
  v12 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v202 = &v195[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v195[-v16];
  v18 = type metadata accessor for KaleidoscopePosterData();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v205 = &v195[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v212 = &v195[-v24];
  v25 = __chkstk_darwin(v23);
  v199 = &v195[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v195[-v28];
  __chkstk_darwin(v27);
  v214 = &v195[-v30];
  v31 = sub_1000249A8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v195[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v32 + 104))(v35, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v31);
  v36 = sub_100024998();
  (*(v32 + 8))(v35, v31);
  if ((v36 & 1) == 0)
  {
    type metadata accessor for KaleidoscopeEmptyView();
    v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v42 = [a2 backgroundView];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v41 setFrame:{v44, v46, v48, v50}];
    v51 = [a2 backgroundView];
    [v51 addSubview:v41];

    return;
  }

  v206 = a2;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A88();
  v207 = v19;
  v37 = *(v19 + 48);
  if (v37(v17, 1, v18) == 1)
  {
    v38 = v214;
    sub_100024A98();
    v39 = v37(v17, 1, v18);
    v40 = v208;
    if (v39 != 1)
    {
      sub_10000E2AC(v17, &qword_10003C380, qword_100028B40);
    }
  }

  else
  {
    v38 = v214;
    sub_10000AA4C(v17, v214);
    v40 = v208;
  }

  v211 = v18;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v52 = sub_100024B98();
  v53 = sub_10000C2CC(v52, qword_10003D268);
  sub_10000AAB0(v38, v29);
  v54 = a3;
  v198 = v53;
  v55 = sub_100024B78();
  LOBYTE(v56) = sub_100024DE8();

  v57 = os_log_type_enabled(v55, v56);
  v201 = v54;
  if (!v57)
  {

    sub_10000AB14(v29);
    v67 = v213;
    goto LABEL_18;
  }

  v58 = swift_slowAlloc();
  v216 = swift_slowAlloc();
  *v58 = 136315394;
  v59 = [v54 identifier];
  v60 = sub_100024C78();
  v62 = v61;

  v63 = sub_100010554(v60, v62, &v216);

  *(v58 + 4) = v63;
  *(v58 + 12) = 2080;
  sub_10000C5F4();
  v217 = v64;
  v218 = v65;
  v220._countAndFlagsBits = 45;
  v220._object = 0xE100000000000000;
  sub_100024D08(v220);
  v66 = *(v29 + *(v211 + 24));
  v67 = v213;
  if (qword_10003B8D8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v68 = qword_10003D1C8;
    if (qword_10003D1C8 <= v66)
    {
      v68 = v66;
    }

    v69 = qword_10003D1D0 >= v68 ? v68 : qword_10003D1D0;
    v221._countAndFlagsBits = sub_10000B8CC(v69);
    sub_100024D08(v221);

    v70 = v217;
    v71 = v218;
    sub_10000AB14(v29);
    v72 = sub_100010554(v70, v71, &v216);

    *(v58 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v55, v56, "populateViewsForLook: %s; resolved data: %s", v58, 0x16u);
    swift_arrayDestroy();

    v38 = v214;
    v54 = v201;
LABEL_18:
    sub_10000E8DC();
    v213 = v73;
    v74 = v203;
    sub_10001D704(v38, v203, &qword_10003B970, qword_100028490);
    v75 = v204;
    v76 = (*(v67 + 6))(v74, 1, v204);
    v29 = v210;
    if (v76 == 1)
    {
      sub_10000E2AC(v74, &qword_10003B970, qword_100028490);
    }

    else
    {
      (*(v67 + 4))(v40, v74, v75);
      v77 = v40;
      v78 = v67;
      v79 = objc_allocWithZone(NSUserDefaults);
      v80 = sub_100024C68();
      v81 = [v79 initWithSuiteName:v80];

      v203 = v81;
      if (v81)
      {
        v82 = sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID);
        v217 = sub_1000250C8();
        v218 = v83;
        v222._countAndFlagsBits = 0x736572676F72702DLL;
        v222._object = 0xE900000000000073;
        sub_100024D08(v222);
        v84 = sub_100024C68();

        v85 = v203;
        [v203 doubleForKey:v84];
        v87 = v86;

        v197 = v82;
        v217 = sub_1000250C8();
        v218 = v88;
        v223._countAndFlagsBits = 0x6F697461746F722DLL;
        v223._object = 0xE90000000000006ELL;
        sub_100024D08(v223);
        v89 = sub_100024C68();

        [v85 doubleForKey:v89];
        v91 = v90;

        v92 = v213;
        *(v213 + 10) = v87;
        *(v92 + 88) = v91;
        v93 = v200;
        (*(v78 + 2))(v200, v77, v75);
        v94 = v38;
        v95 = v199;
        sub_10000AAB0(v94, v199);
        v96 = sub_100024B78();
        v97 = sub_100024DD8();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = v75;
          v99 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v217 = v198;
          *v99 = 136315650;
          v196 = v97;
          v100 = sub_1000250C8();
          v102 = v101;
          v103 = *(v78 + 1);
          v103(v93, v98);
          v104 = sub_100010554(v100, v102, &v217);

          *(v99 + 4) = v104;
          *(v99 + 12) = 2080;
          sub_10000CDE4();
          v105 = sub_100024CE8();
          v107 = v106;

          sub_10000AB14(v95);
          v108 = sub_100010554(v105, v107, &v217);

          *(v99 + 14) = v108;
          *(v99 + 22) = 2048;
          *(v99 + 24) = v87;
          _os_log_impl(&_mh_execute_header, v96, v196, "Poster %s which is look %s loaded path progress of %f in the editor", v99, 0x20u);
          swift_arrayDestroy();

          v103(v208, v98);
          v54 = v201;
        }

        else
        {

          sub_10000AB14(v95);
          v109 = *(v78 + 1);
          v109(v93, v75);
          v109(v208, v75);
        }

        v38 = v214;
      }

      else
      {
        (*(v67 + 1))(v77, v75);
      }
    }

    v110 = v209;
    v111 = [v209 environment];
    swift_getObjectType();
    v112 = *(v29 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
    v113 = swift_unknownObjectRetain();
    v114 = sub_10000DDA8(v113, v112);
    swift_unknownObjectRelease_n();
    v115 = *(v29 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager);
    v116 = sub_100013F1C(v54, v114);
    v117 = sub_100014314(v54, v114);
    sub_1000147A8(0, &qword_10003C298, NSObject_ptr);
    v118 = [v110 currentLook];
    LODWORD(v204) = sub_100024E78();

    v119 = [v206 backgroundView];
    [v119 bounds];
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;

    v128 = v212;
    sub_10000AAB0(v38, v212);
    v129 = type metadata accessor for KaleidoscopeEditorContentView();
    v130 = objc_allocWithZone(v129);
    v131 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotImageView;
    v132 = objc_allocWithZone(UIImageView);
    v198 = v117;
    v209 = v117;
    v133 = v213;

    v199 = v116;
    v208 = v116;
    *&v130[v131] = [v132 init];
    *&v130[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView] = 0;
    v134 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot;
    v130[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot] = 1;
    v135 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotManager;
    v136 = sub_100024A68();
    v137 = *(v136 + 48);
    v138 = *(v136 + 52);
    swift_allocObject();
    *&v130[v135] = sub_100024A58();
    v139 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator;
    v140 = sub_100024B28();
    v141 = *(v140 + 48);
    v142 = *(v140 + 52);
    swift_allocObject();
    *&v130[v139] = sub_100024B18();
    v143 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData;
    sub_10000AAB0(v128, &v130[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData]);
    v144 = v207 + 56;
    v203 = *(v207 + 56);
    (v203)(&v130[v143], 0, 1, v211);
    v200 = v114;
    *&v130[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] = v114;
    *&v130[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver] = v133;
    v130[v134] = 0;
    v219.receiver = v130;
    v219.super_class = v129;
    swift_retain_n();
    v145 = objc_msgSendSuper2(&v219, "initWithFrame:", v121, v123, v125, v127);
    v146 = objc_opt_self();
    v56 = v145;
    v147 = [v146 grayColor];
    [v56 setBackgroundColor:v147];

    if (v204)
    {
      sub_10000AAB0(v212, v205);
      v204 = type metadata accessor for KaleidoscopeContentView();
      v148 = objc_allocWithZone(v204);
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
      v207 = v144;
      v149 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      v150 = objc_allocWithZone(NSMapTable);
      v151 = v208;
      v152 = v209;
      *&v148[v149] = [v150 init];
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
      v153 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
      *&v148[v153] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
      v154 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
      v155 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
      v156 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
      sub_10000E8DC();
      *&v148[v156] = v157;
      v158 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
      v159 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
      *&v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
      v160 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
      *&v148[v159] = v199;
      *&v148[v160] = v198;
      v161 = *&v148[v156];
      v162 = v213;
      *&v148[v156] = v213;

      v163 = v151;
      v164 = v152;

      v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
      v165 = v205;
      sub_10000AAB0(v205, &v148[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
      *&v148[v154] = *(v162 + 80);
      *&v148[v158] = v200;
      v166 = [objc_opt_self() currentDevice];
      v167 = [v166 userInterfaceIdiom];

      v168 = 0.9;
      if (!v167)
      {
        v168 = 1.125;
      }

      *&v148[v155] = v168;
      v29 = v210;
      v215.receiver = v148;
      v215.super_class = v204;
      v169 = objc_msgSendSuper2(&v215, "initWithFrame:", v121, v123, v125, v127);
      sub_10000ED8C();

      sub_10000AB14(v165);
      v170 = *&v56[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
      *&v56[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView] = v169;
      v171 = v169;

      v172 = *&v56[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator];
      sub_10001DCC4(&qword_10003C2A0, type metadata accessor for KaleidoscopeContentView);
      v173 = v171;

      sub_100024B08();
    }

    if (*&v56[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView])
    {
      [v56 addSubview:?];
      v174 = v208;

      v40 = v209;
      sub_10000AB14(v212);
    }

    else
    {
      sub_10000AB14(v212);

      v174 = v208;
      v40 = v209;
    }

    v58 = v211;
    v175 = v214;
    v55 = v201;
    v176 = [v206 backgroundView];
    [v176 addSubview:v56];

    v67 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
    swift_beginAccess();
    v177 = *&v67[v29];
    if ((v177 & 0xC000000000000001) != 0)
    {
      if (v177 < 0)
      {
        v66 = *&v67[v29];
      }

      else
      {
        v66 = v177 & 0xFFFFFFFFFFFFFF8;
      }

      v178 = v56;
      v179 = sub_100024FE8();
      if (__OFADD__(v179, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      *&v67[v29] = sub_100019968(v66, v179 + 1);
    }

    else
    {
      v180 = *&v67[v29];
      v181 = v56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v216 = *&v67[v29];
    sub_10001AA58(v56, v55, isUniquelyReferenced_nonNull_native, &qword_10003C2C0, &qword_100028DC0);
    *&v67[v29] = v216;
    swift_endAccess();
    v67 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
    swift_beginAccess();
    v183 = *&v67[v29];
    if ((v183 & 0xC000000000000001) != 0)
    {
      if (v183 < 0)
      {
        v66 = *&v67[v29];
      }

      else
      {
        v66 = v183 & 0xFFFFFFFFFFFFFF8;
      }

      v184 = sub_100024FE8();
      if (__OFADD__(v184, 1))
      {
        goto LABEL_55;
      }

      *&v67[v29] = sub_100019734(v66, v184 + 1);
    }

    v185 = swift_isUniquelyReferenced_nonNull_native();
    v216 = *&v67[v29];
    sub_10001A8DC(v213, v55, v185);
    *&v67[v29] = v216;
    swift_endAccess();
    v186 = *(v29 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView);
    *(v29 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView) = v56;
    v67 = v56;

    v56 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
    swift_beginAccess();
    v187 = *&v56[v29];
    if ((v187 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v187 < 0)
    {
      v66 = *&v56[v29];
    }

    else
    {
      v66 = v187 & 0xFFFFFFFFFFFFFF8;
    }

    v188 = sub_100024FE8();
    if (!__OFADD__(v188, 1))
    {
      v189 = v175;
      v190 = v58;
      v191 = v174;
      *&v56[v29] = sub_100019968(v66, v188 + 1);
      goto LABEL_53;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v189 = v175;
  v190 = v58;
  v191 = v174;
LABEL_53:
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *&v56[v29];
  sub_10001AA58(v67, v55, v192, &qword_10003C2C0, &qword_100028DC0);
  *&v56[v29] = v216;
  swift_endAccess();
  v193 = v202;
  sub_10000AAB0(v189, v202);
  v194 = v203;
  (v203)(v193, 0, 1, v190);
  swift_beginAccess();
  sub_1000148A0(v193, v55);
  swift_endAccess();
  sub_10000AAB0(v189, v193);
  (v194)(v193, 0, 1, v190);
  sub_1000170AC(v193);

  sub_10000E2AC(v193, &qword_10003C380, qword_100028B40);
  sub_10000AB14(v189);
}