void sub_2761BF5CC(uint64_t a1, void *a2)
{
  v4 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_unitTransform(v8, v3, v5, v6, v7);
  }

  else
  {
    v9 = 0.0;
    memset(v19, 0, sizeof(v19));
  }

  objc_msgSend_multiply_(v4, v3, v9, v6, v7, v19);
  v14 = objc_msgSend_main(*(a1 + 40), v10, v11, v12, v13);
  objc_msgSend_getBounds_(v14, v15, v16, v17, v18, *(a1 + 48));
}

void sub_2761BFE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2761BFF34(float *a1)
{
  v2 = sub_276155178(a1);
  v7 = v2;
  if (v2)
  {
    objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v3, v4, v5, v6, 0);
  }

  else
  {
    objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v3, v4, v5, v6, 8);
  }
  v8 = ;
  v13 = objc_msgSend_container(v8, v9, v10, v11, v12);
  if ((v7 & 1) == 0)
  {
    v18 = v13;
    for (i = 0; i != 8; ++i)
    {
      sub_276154EAC(a1, i, v22);
      sub_2761C14E8(v18, v22);
    }
  }

  v20 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v14, v15, v16, v17, v8);

  return v20;
}

void sub_2761C020C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761C0394(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2761C07EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  v51 = *(v49 - 120);
  if (v51)
  {
    *(v49 - 112) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

void sub_2761C0C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float *sub_2761C0CD0(float *a1, float *a2)
{
  if (sub_276155178(a1))
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    *(a1 + 2) = 0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v9 = *a1;
    v8 = a1[1];
    v7 = a1[2];
    v6 = a1[3];
    v5 = a1[4];
    v4 = a1[5];
  }

  *a1 = v9 - *a2;
  a1[1] = v8 - a2[1];
  a1[2] = v7 - a2[2];
  a1[3] = *a2 + v6;
  a1[4] = a2[1] + v5;
  a1[5] = a2[2] + v4;
  return a1;
}

char *sub_2761C12D0(char **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_27618FC04(a1, v11);
    }

    sub_276161760();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      *(result + 2) = v5[2];
      *(result + 3) = v5[3];
      *(result + 4) = v5[4];
      *(result + 5) = v5[5];
      v5 += 6;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        *(result + 2) = v5[2];
        *(result + 3) = v5[3];
        *(result + 4) = v5[4];
        *(result + 5) = v5[5];
        v5 += 6;
        result += 24;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        *v15 = *v13;
        *(v15 + 1) = v13[1];
        *(v15 + 2) = v13[2];
        *(v15 + 3) = v13[3];
        *(v15 + 4) = v13[4];
        *(v15 + 5) = v13[5];
        v13 += 6;
        v15 += 24;
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

uint64_t sub_2761C14E8(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2761C1540(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2761C1540(void *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_276161760();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_27618FE54(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 4) = a2[1];
  *(v7 + 8) = a2[2];
  v12 = 12 * v2 + 12;
  sub_27618FDD4(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_2761C1674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761C17D0(uint64_t a1, void *a2)
{
  v11 = a2;
  v6 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v2, v3, v4, v5, 5);
  objc_msgSend_submit_(v11, v7, v8, v9, v10, v6);
}

void sub_2761C1934(uint64_t a1, void *a2)
{
  v115 = *MEMORY[0x277D85DE8];
  v93 = a2;
  v7 = objc_msgSend_scene(*(a1 + 32), v3, v4, v5, v6);
  v12 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v8, v9, v10, v11, v7);

  if (v12)
  {
    objc_msgSend_stageScale(v12, v13, v14, v15, v16);
    objc_msgSend_gridlinesOffset(v12, v17, v18, v19, v20);
    HIDWORD(v22) = v112.i32[1];
    LODWORD(v16) = v111[1].i32[0];
    v21 = COERCE_DOUBLE(vmul_f32(v111[0], v112));
    *&v22 = v111[1].f32[0] * v113;
  }

  else
  {
    v113 = 0.0;
    v112 = 0;
    v21 = 0.0;
    v22 = 0.0;
    memset(v111, 0, 12);
  }

  *&v103 = v21;
  DWORD2(v103) = LODWORD(v22);
  objc_msgSend_translate_(v93, v13, v21, v22, v16, &v103);
  v27 = objc_msgSend_scene(*(a1 + 32), v23, v24, v25, v26);
  v28 = objc_opt_class();
  v89 = objc_msgSend_partForType_(v27, v29, v30, v31, v32, v28);

  v37 = objc_msgSend_enumerator(v89, v33, v34, v35, v36);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v37;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v39, v40, v41, &v107, v114, 16);
  if (v42)
  {
    v91 = *v108;
    do
    {
      v92 = v42;
      for (i = 0; i != v92; ++i)
      {
        if (*v108 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v49 = objc_msgSend_enumerator(*(*(&v107 + 1) + 8 * i), v43, v44, v45, v46);
        while (1)
        {
          v53 = objc_msgSend_nextObject(v49, v48, v50, v51, v52);
          v58 = v53;
          if (!v53)
          {
            break;
          }

          if (objc_msgSend_isValid(v53, v54, v55, v56, v57))
          {
            objc_msgSend_position(v58, v59, v60, v61, v62);
            if (v103)
            {
              v111[0] = 0x3F0000003F000000;
              v66 = v104;
              v67 = v112.i32[v104];
              v111[1].i32[0] = 1045220557;
              v111[0].i32[v104] = v67;
              v94[0] = MEMORY[0x277D85DD0];
              v94[1] = 3321888768;
              v94[2] = sub_2761C1DA0;
              v94[3] = &unk_28851D098;
              v95 = v103;
              v97 = v105;
              v98 = v106;
              *&v68 = v112;
              *(&v68 + 1) = __PAIR64__(v111[0].u32[0], LODWORD(v113));
              v96 = v66;
              v99 = v68;
              v100 = *(v111 + 4);
              v101 = 3204448256;
              v102 = -1090519040;
              objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v63, *(v111 + 4), v64, v65, v93, v94);
            }
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, v44, v45, v46, &v107, v114, 16);
    }

    while (v42);
  }

  *&v103 = 0;
  DWORD2(v103) = -1082130432;
  objc_msgSend_translate_(v93, v69, v70, v71, v72, &v103);
  *&v103 = v112;
  DWORD2(v103) = 1045220557;
  objc_msgSend_scale_(v93, v73, *&v112, v74, v75, &v103);
  *&v103 = 0;
  DWORD2(v103) = -1090519040;
  objc_msgSend_translate_(v93, v76, v77, v78, v79, &v103);
  v84 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v80, v81, v82, v83, 5);
  objc_msgSend_submit_(v93, v85, v86, v87, v88, v84);
}

void sub_2761C1DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  *&v4 = (*(a1 + 64) * *(a1 + 80)) + 0.01;
  *v24 = vadd_f32(vmul_f32(*(a1 + 56), *(a1 + 72)), 0);
  *&v24[8] = LODWORD(v4);
  objc_msgSend_translate_(v3, v5, v4, *v24, 0.0, v24);
  objc_msgSend_scale_(v3, v6, v7, v8, v9, a1 + 84);
  LODWORD(v10) = *(a1 + 96);
  *v24 = LODWORD(v10);
  *&v24[4] = *(a1 + 100);
  v11 = *&v24[4];
  v12 = *(a1 + 48);
  *&v24[4 * *(a1 + 40)] = LODWORD(v10);
  *&v24[4 * v12] = LODWORD(v11);
  objc_msgSend_translate_(v3, v13, v10, v11, v14, v24);
  v19 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v15, v16, v17, v18, 5);
  objc_msgSend_submit_(v3, v20, v21, v22, v23, v19);
}

void sub_2761C1E70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

float sub_2761C1E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v2;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  result = *(a2 + 104);
  *(a1 + 104) = result;
  return result;
}

void sub_2761C1FF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_scene(*(a1 + 32), v4, v5, v6, v7);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  if (v13)
  {
    objc_msgSend_stageTransform(v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = 0.0;
    memset(v36, 0, sizeof(v36));
  }

  objc_msgSend_multiply_(v3, v14, v18, v16, v17, v36);
  v23 = objc_msgSend_normalizedCube(TSCH3DQuadResource, v19, v20, v21, v22);
  objc_msgSend_geometry_(v3, v24, v25, v26, v27, v23);

  objc_msgSend_get3PieceStageBounds_(*(a1 + 40), v28, v29, v30, v31, *(a1 + 32));
  objc_msgSend_getGridlineSelectionCatcherBounds_(*(a1 + 40), v32, v33, v34, v35, *(a1 + 32));
}

void sub_2761C21C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2761C2808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2761C3754(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_2761AAC20(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  sub_2761C3880(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2761C3848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761C3880(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v2 += 2;
      v5 += 2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

uint64_t sub_2761C3DB8(float32x2_t *a1, float32x2_t *a2, int32x2_t a3)
{
  v3 = vsub_f32(*a1, *a2);
  v4 = vdup_lane_s32(a3, 0);
  v5 = vcge_f32(v4, vbsl_s8(vcgez_f32(v3), v3, vneg_f32(v3)));
  if (v5.i32[0] & v5.i32[1])
  {
    v6 = vsub_f32(a1[1], a2[1]);
    v7 = vcge_f32(v4, vbsl_s8(vcgez_f32(v6), v6, vneg_f32(v6)));
    v8 = v7.i8[0] & v7.i8[4];
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_2761C4468(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a5, a1, a2, a3);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_28856E930, v6, 0.0, v7, v8, &v30, v34, 16);
  if (v9)
  {
    v14 = v9;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(&unk_28856E930);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, v11, v12, v13, @"SFC2D%@FillProperty", v17);
        v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, v20, v21, v22, @"TSCHChartSeries%@FillProperty", v17);
        objc_msgSend_setObject_forKey_(v5, v24, v25, v26, v27, v18, v23);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_28856E930, v10, v11, v12, v13, &v30, v34, 16);
    }

    while (v14);
  }

  v28 = objc_msgSend_copy(v5, v10, v11, v12, v13);
  v29 = qword_280A46988;
  qword_280A46988 = v28;
}

id sub_2761C47AC()
{
  v1 = TSUDynamicCast();
  if (!v1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v0, v2, v3, v4, "id CastAndAssertNotNilFunc(__unsafe_unretained Class, __strong id)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 56, 0, "invalid nil value for '%{public}s'", "obj");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  return v1;
}

void sub_2761C7890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761C7B78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2761C7CF0(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_2761C81D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCH3DResource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761C8CA8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, a5, a1, a2, a3, 0);
  v10 = objc_msgSend_container(v5, v6, v7, v8, v9);
  v35 = xmmword_2764D6070;
  v36 = xmmword_2764D6360;
  v37 = xmmword_2764D6370;
  v38 = xmmword_2764D6380;
  sub_276161E1C(v10, &v35);
  sub_276161E1C(v10, &v36);
  sub_276161E1C(v10, &v38);
  sub_276161E1C(v10, &v36);
  sub_276161E1C(v10, &v37);
  sub_276161E1C(v10, &v38);
  v11 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v11, v12, v13, v14, v15, v5);
  objc_storeStrong(&qword_280A46998, v11);
  if (!qword_280A46998)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCH3DQuadResource normalized4D]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 49, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }
}

void sub_2761C8ED4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, a5, a1, a2, a3, 0);
  v10 = objc_msgSend_container(v5, v6, v7, v8, v9);
  v35 = xmmword_2764D6070;
  v36 = xmmword_2764D6390;
  v37 = xmmword_2764D63A0;
  sub_27618F4B4(v10, &v35);
  sub_27618F4B4(v10, (&v35 | 0xC));
  sub_27618F4B4(v10, &v37 + 1);
  sub_27618F4B4(v10, (&v35 | 0xC));
  sub_27618F4B4(v10, &v36 + 2);
  sub_27618F4B4(v10, &v37 + 1);
  v11 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v11, v12, v13, v14, v15, v5);
  objc_storeStrong(&qword_280A469A8, v11);
  if (!qword_280A469A8)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCH3DQuadResource normalized3D]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 82, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }
}

void sub_2761C90F8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec2DataBuffer, a5, a1, a2, a3, 0);
  v10 = objc_msgSend_container(v5, v6, v7, v8, v9);
  v11 = v10;
  v43 = xmmword_2764D63B0;
  v44 = xmmword_2764D6290;
  v12 = v10[1];
  if (v12 >= v10[2])
  {
    v13 = sub_2761C99B0(v10, &v43);
  }

  else
  {
    *v12 = 0;
    v12[1] = DWORD1(v43);
    v13 = v12 + 2;
  }

  v11[1] = v13;
  if (v13 >= v11[2])
  {
    v14 = sub_2761C99B0(v11, &v43 + 2);
  }

  else
  {
    *v13 = *(&v43 + 1);
    v14 = v13 + 1;
  }

  v11[1] = v14;
  if (v14 >= v11[2])
  {
    v15 = sub_2761C99B0(v11, &v44 + 2);
  }

  else
  {
    *v14 = *(&v44 + 1);
    v15 = v14 + 1;
  }

  v11[1] = v15;
  if (v15 >= v11[2])
  {
    v16 = sub_2761C99B0(v11, &v43 + 2);
  }

  else
  {
    *v15 = *(&v43 + 1);
    v16 = v15 + 1;
  }

  v11[1] = v16;
  if (v16 >= v11[2])
  {
    v17 = sub_2761C99B0(v11, &v44);
  }

  else
  {
    *v16 = v44;
    v17 = v16 + 1;
  }

  v11[1] = v17;
  if (v17 >= v11[2])
  {
    v18 = sub_2761C99B0(v11, &v44 + 2);
  }

  else
  {
    *v17 = *(&v44 + 1);
    v18 = (v17 + 1);
  }

  v11[1] = v18;
  v19 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v19, v20, v21, v22, v23, v5);
  objc_storeStrong(&qword_280A469B8, v19);
  if (!qword_280A469B8)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "+[TSCH3DQuadResource normalized2D]_block_invoke");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 115, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }
}

void sub_2761C9400(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, a5, a1, a2, a3, 0);
  v10 = objc_msgSend_container(v5, v6, v7, v8, v9);
  v35[0] = xmmword_2764D63C0;
  v35[1] = xmmword_2764D63D0;
  v35[2] = xmmword_2764D63E0;
  v35[3] = xmmword_2764D63D0;
  v35[4] = xmmword_2764D63F0;
  v35[5] = xmmword_2764D6400;
  sub_2761C9ADC(v10, v10[1], v35, v36, 8);
  v11 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v11, v12, v13, v14, v15, v5);
  objc_storeStrong(&qword_280A469C8, v11);
  if (!qword_280A469C8)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCH3DQuadResource normalizedCenteredCube]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 147, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }
}

void sub_2761C9604(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, a5, a1, a2, a3, 0);
  v10 = objc_msgSend_container(v5, v6, v7, v8, v9);
  v35[0] = xmmword_2764D5F20;
  v35[1] = xmmword_2764D5ED0;
  v35[2] = xmmword_2764D63B0;
  v35[3] = xmmword_2764D5ED0;
  v35[4] = xmmword_2764D6410;
  v35[5] = xmmword_2764D6420;
  sub_2761C9ADC(v10, v10[1], v35, v36, 8);
  v11 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v11, v12, v13, v14, v15, v5);
  objc_storeStrong(&qword_280A469D8, v11);
  if (!qword_280A469D8)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCH3DQuadResource normalizedCube]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 179, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }
}

uint64_t sub_2761C99B0(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_2761AAC20(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  sub_2761ADD28(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2761C9AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2761C9ADC(void *a1, uint64_t a2, _DWORD *a3, char *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a1[1];
    v8 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2)) >= a5)
    {
      v14 = v7 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v7 - a2) >> 2)) >= a5)
      {
        v20 = 3 * a5;
        sub_2761C9DB4(a1, a2, v7, a2 + 12 * a5);
        v21 = 0;
        v22 = &a3[v20];
        do
        {
          v23 = &v5[v21];
          *v23 = *a3;
          *(v23 + 1) = a3[1];
          *(v23 + 2) = a3[2];
          a3 += 3;
          v21 += 12;
        }

        while (a3 != v22);
      }

      else
      {
        v15 = (a3 + v14);
        if (a3 + v14 == a4)
        {
          v17 = a1[1];
        }

        else
        {
          v16 = a3 - a2;
          v17 = a1[1];
          v18 = v17;
          do
          {
            v19 = v17 + v16;
            *v18 = *(v17 + v16);
            v18[1] = *(v17 + v16 + 4);
            v18[2] = *(v17 + v16 + 8);
            v18 += 3;
            v17 += 3;
          }

          while (v19 + 12 != a4);
        }

        a1[1] = v17;
        if (v14 >= 1)
        {
          sub_2761C9DB4(a1, a2, v7, a2 + 12 * a5);
          v25 = 0;
          do
          {
            v26 = &v5[v25];
            *v26 = *a3;
            *(v26 + 1) = a3[1];
            *(v26 + 2) = a3[2];
            a3 += 3;
            v25 += 12;
          }

          while (a3 != v15);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 - 0x5555555555555555 * ((v7 - *a1) >> 2);
      if (v10 > 0x1555555555555555)
      {
        sub_276161760();
      }

      v11 = a2 - v9;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2);
      if (2 * v12 > v10)
      {
        v10 = 2 * v12;
      }

      if (v12 >= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0x1555555555555555;
      }

      else
      {
        v13 = v10;
      }

      v32 = a1;
      if (v13)
      {
        sub_27618FE54(a1, v13);
      }

      v24 = (4 * (v11 >> 2));
      __p = 0;
      v29 = v24;
      v31 = 0;
      do
      {
        *v24 = *a3;
        v24[1] = a3[1];
        v24[2] = a3[2];
        v24 += 3;
        a3 += 3;
      }

      while (v24 != (4 * (v11 >> 2) + 12 * a5));
      v30 = 4 * (v11 >> 2) + 12 * a5;
      v5 = sub_2761C9E30(a1, &__p, v5);
      if (v30 != v29)
      {
        v30 = v29 + (v30 - v29 - 12) % 0xCuLL;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_2761C9D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_2761C9DB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    *(v6 + 4) = *(v5 + 4);
    result = *(v5 + 8);
    *(v6 + 8) = result;
    v5 += 12;
    v6 += 12;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v8 = a4 - v4;
    v9 = (v4 - 4);
    v10 = (v9 + a2 - a4);
    do
    {
      *(v9 - 2) = *(v10 - 2);
      *(v9 - 1) = *(v10 - 1);
      v11 = *v10;
      v10 -= 3;
      result = v11;
      *v9 = v11;
      v9 -= 3;
      v8 += 12;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2761C9E30(uint64_t a1, void *a2, char *a3)
{
  v4 = *(a1 + 8);
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v9 = a2[1];
    v8 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = *v7;
      v6[1] = *(v7 + 1);
      v6[2] = *(v7 + 2);
      v7 += 12;
      v6 += 3;
    }

    while (v7 != v4);
    v8 = *(a1 + 8);
    v9 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v8 - a3;
  *(a1 + 8) = a3;
  v10 = *a1;
  v11 = (v9 + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = v11;
    do
    {
      *v12 = *v10;
      v12[1] = *(v10 + 1);
      v12[2] = *(v10 + 2);
      v10 += 12;
      v12 += 3;
    }

    while (v10 != a3);
    v10 = *a1;
  }

  a2[1] = v11;
  *a1 = v11;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

id sub_2761CAAB0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, a5);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v12 != v11)
  {
    objc_msgSend_addObject_(v7, v6, v8, v9, v10, *v12);
    v12 += 5;
  }

  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v6, v8, v9, v10, v7);

  return v13;
}

void sub_2761CAC8C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v5;
  if (v6 != v7)
  {
    while (*v6 != v8)
    {
      v6 += 40;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  v29 = v8;

  if (v6 == *(a1 + 40))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "TextureType TSCH3D::ObjectStateMatchObject::textureForVariable(TSCH3DShaderVariable *__strong) const");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DObjectState.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 328, 0, "Texture variable not found in match object %@", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 257;
    *(a3 + 18) = 0;
    *(a3 + 20) = 0;
    *(a3 + 25) = 0;
  }

  else
  {
    *a3 = *v6;
    v13 = *(v6 + 8);
    *(a3 + 15) = *(v6 + 15);
    *(a3 + 8) = v13;
    *(a3 + 20) = *(v6 + 20);
    *(a3 + 24) = *(v6 + 24);
    *(a3 + 28) = *(v6 + 28);
    *(a3 + 32) = *(v6 + 32);
  }
}

void sub_2761CAF9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *sub_2761CB09C(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_2761CB15C((a1 + 1), v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_2761CB408((a1 + 4), v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
  return a1;
}

void sub_2761CB134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2761CB388(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2761CB15C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2761CB1E4(result, a4);
  }

  return result;
}

void sub_2761CB1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2761CB388(&a9);
  _Unwind_Resume(a1);
}

void sub_2761CB1E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_2761CB230(a1, a2);
  }

  sub_276161760();
}

void sub_2761CB230(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2761617D0();
}

uint64_t sub_2761CB288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = a2;
  v6 = 0;
  result = a4;
  do
  {
    v8 = sub_2761CB314(result, v5);
    v5 += 40;
    result = v8 + 48;
    v6 -= 48;
  }

  while (v5 != a3);
  return result;
}

void sub_2761CB2EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 - 48;
    do
    {

      v4 -= 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761CB314(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = objc_msgSend_uniqueIdentifier(*(a2 + 8), v4, v5, v6, v7);
  *(a1 + 16) = objc_msgSend_hash(*(a2 + 8), v8, v9, v10, v11);
  v12 = *(a2 + 16);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 24) = v12;
  return a1;
}

void sub_2761CB388(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 6);
        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2761CB408(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2761CB490(result, a4);
  }

  return result;
}

void sub_2761CB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2761CB5BC(&a9);
  _Unwind_Resume(a1);
}

void sub_2761CB490(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_2761CB4DC(a1, a2);
  }

  sub_276161760();
}

void sub_2761CB4DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2761617D0();
}

uint64_t sub_2761CB534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 15) = *(v6 + 23);
      *(a4 + 8) = v7;
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = *(v6 + 32);
      *(a4 + 28) = *(v6 + 36);
      *(a4 + 32) = *(v6 + 40);
      v6 += 48;
      a4 += 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_2761CB5BC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2761CB63C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 6);
        v3 -= 48;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2761CB6A0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 5);
        v3 -= 40;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2761CC4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2761CC4CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v81 = a2;
  v10 = a3;
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHReferenceLine swapTuplesForMutations:forImport:]_block_invoke");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 356, 0, "invalid nil value for '%{public}s'", "outOldStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v49 = MEMORY[0x277D81150];
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHReferenceLine swapTuplesForMutations:forImport:]_block_invoke");
  v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 357, 0, "invalid nil value for '%{public}s'", "outNewStyle");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
LABEL_3:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  v19 = v81;
  if (!v81)
  {
    IsPrivate = 1;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v33 = 1;
    goto LABEL_10;
  }

  v20 = objc_msgSend_chartInfo(WeakRetained, v81, v15, v16, v17);
  objc_opt_class();
  v21 = TSUCheckedDynamicCast();
  IsPrivate = objc_msgSend_referenceLineStyleIsPrivate_(v20, v22, v23, v24, v25, v21);

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  v27 = objc_msgSend_chartInfo(v18, v19, v15, v16, v17);
  objc_opt_class();
  v28 = TSUCheckedDynamicCast();
  v33 = objc_msgSend_referenceLineStyleIsPrivate_(v27, v29, v30, v31, v32, v28);

LABEL_10:
  v64 = v33 ^ 1;
  if (((IsPrivate ^ 1) & 1) == 0 && (v64 & 1) == 0)
  {
    *a4 = v81;
LABEL_13:
    v65 = v10;
    *a5 = v10;
    goto LABEL_18;
  }

  if ((IsPrivate ^ 1 | v33))
  {
    if (((IsPrivate | v64) & 1) == 0)
    {
      *a4 = 0;
      goto LABEL_13;
    }

    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v15, v16, v17, "[TSCHReferenceLine swapTuplesForMutations:forImport:]_block_invoke");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v73, v74, v75, v76, v67, v72, 374, 0, "mutations should never cause a switch between theme styles...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
  }

  else
  {
    *a4 = v81;
    *a5 = 0;
  }

LABEL_18:
}

void sub_2761CCD6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2761CCEF4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A469E8;
  qword_280A469E8 = v11;

  if (!qword_280A469E8)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DBarResourceCache instance]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 106, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

BOOL sub_2761CD3C8(uint64_t a1, uint64_t a2)
{
  result = sub_2761CD43C(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

void sub_2761CD574(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A469F8;
  qword_280A469F8 = v11;

  if (!qword_280A469F8)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DBarUnitCubeResource sharedInstance]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractBarResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 23, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2761CDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCH3DChartMeshSharedChildResource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761CDBD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2761CE0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCH3DChartTexcoordSharedResource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761CEDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSCH3DChartMeshResources;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761CEEA0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_get(*(*(a1 + 32) + 32), a2, a3, a4, a5);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartMeshResources bounds]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 348, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = [TSCH3DDataBufferResource alloc];
  v31 = objc_msgSend_initWithBuffer_(v26, v27, v28, v29, v30, v7);
  objc_msgSend_bufferInfo(v31, v32, v33, v34, v35);
  objc_storeStrong((*(a1 + 32) + 40), v31);
  if (!*(*(a1 + 32) + 40))
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCH3DChartMeshResources bounds]_block_invoke");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 353, 0, "invalid nil value for '%{public}s'", "_cachedBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }
}

void sub_2761CF5CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_2761D04A4(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_2761D3A48(uint64_t result, const char *a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5, double a6, double a7, double a8)
{
  v12 = result;
  if (result <= 1 && a2 <= 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a6, a7, a8, "void TSCH3D::Texture::HalveImage(const NSInteger, const NSInteger, const NSInteger, const unsigned char *, unsigned char *)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 208, 0, "invalid texture size");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = v12 >> 1;
  v29 = a2 >> 1;
  if (v12 == 1 || a2 == 1)
  {
    if (v28 <= v29)
    {
      v28 = a2 >> 1;
    }

    if (v28 >= 1)
    {
      for (i = 0; i != v28; ++i)
      {
        v35 = a3;
        if (a3 >= 1)
        {
          do
          {
            *a5++ = (a4[a3] + *a4) >> 1;
            ++a4;
            --v35;
          }

          while (v35);
        }

        a4 += a3;
      }
    }
  }

  else if (a3 == 4)
  {
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = 4 * v12;
      do
      {
        if (v28 >= 1)
        {
          v32 = a4 + 3;
          v33 = v12 >> 1;
          do
          {
            *a5 = (*(v32 - 3) + v32[1] + v32[v31 - 3] + v32[v31 + 1] + 2) >> 2;
            a5[1] = (*(v32 - 2) + v32[2] + v32[v31 - 2] + v32[v31 + 2] + 2) >> 2;
            result = v32[v31 + 3];
            a5[2] = (*(v32 - 1) + v32[3] + v32[v31 - 1] + result + 2) >> 2;
            a5[3] = (*v32 + v32[4] + v32[4 * v12] + v32[4 * v12 + 4] + 2) >> 2;
            a5 += 4;
            v32 += 8;
            --v33;
          }

          while (v33);
          a4 = v32 - 3;
        }

        a4 += v31;
        ++v30;
      }

      while (v30 != v29);
    }
  }

  else if (v29 >= 1)
  {
    v36 = 0;
    v37 = a3 * v12;
    do
    {
      if (v28 >= 1)
      {
        for (j = 0; j != v28; ++j)
        {
          v39 = a3;
          if (a3 >= 1)
          {
            do
            {
              result = a4[a3 * v12 + a3];
              *a5++ = (*a4 + a4[a3] + a4[v37] + result + 2) >> 2;
              ++a4;
              --v39;
            }

            while (v39);
          }

          a4 += a3;
        }
      }

      a4 += v37;
      ++v36;
    }

    while (v36 != v29);
  }

  return result;
}

id sub_2761D44DC(uint64_t a1, CGImage *a2, double a3, double a4, double a5)
{
  v7 = sub_2761D4F38(a1, a2, a3, a4, a5);
  sub_2761D5100(a1, a2, v7);

  return v7;
}

id sub_2761D4A94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4 != 1 && a4 != 4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSPData *__strong, ivec2cref, NSUInteger)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 90, 0, "Invalid components");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v7, v9, v10, v11);
  v32 = v27;
  if (v8)
  {
    objc_msgSend_addInterestInProviderForData_(v27, v28, v29, v30, v31, v8);
  }

  v34 = objc_msgSend_providerForData_shouldValidate_(v32, v28, v29, v30, v31, v8, 0);
  if (!v34)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v35, v36, v37, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSPData *__strong, ivec2cref, NSUInteger)");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 94, 0, "invalid nil value for '%{public}s'", "provider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  v53 = sub_2761D5458(a1, a3, a4, v35, v36, v37);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v56 = sub_2761D5584(a1, v53);
  if (v56)
  {
    objc_msgSend_drawImageInContext_rect_(v34, v55, 0.0, 0.0, *a3, v56, *(a3 + 4));
    CGContextRelease(v56);
  }

  else
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v57, v58, v59, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSPData *__strong, ivec2cref, NSUInteger)");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 98, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  CGColorSpaceRelease(DeviceRGB);
  if (v8)
  {
    objc_msgSend_removeInterestInProviderForData_(v32, v75, v76, v77, v78, v8);
  }

  return v53;
}

void sub_2761D4EB0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2761D4F38(uint64_t a1, CGImageRef image, double a3, double a4, double a5)
{
  if (image)
  {
    if (CGImageGetBitsPerComponent(image) != 8)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBufferWithSize(CGImageRef)");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
      BitsPerComponent = CGImageGetBitsPerComponent(image);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v20, v21, v22, v12, v17, 173, 0, "only byte-sized components is implemented, got %zu bits instead", BitsPerComponent);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    BitsPerPixel = CGImageGetBitsPerPixel(image);
    v49[0] = CGImageGetWidth(image);
    v49[1] = CGImageGetHeight(image);
    if ((BitsPerPixel & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      v31 = 1;
    }

    else
    {
      v31 = 4;
    }

    v32 = sub_2761D5458(a1, v49, v31, v28, v29, v30);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, a3, a4, a5, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBufferWithSize(CGImageRef)");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 166, 0, "invalid nil value for '%{public}s'", "image");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    v32 = 0;
  }

  return v32;
}

void sub_2761D5100(uint64_t a1, CGImage *a2, void *a3)
{
  v5 = a3;
  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  if (v5)
  {
    objc_msgSend_size2(v5, v7, v9, v10, v11);
    v13 = __p[0];
    v12 = HIDWORD(__p[0]);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v13 == Width && v12 == Height)
  {
    goto LABEL_20;
  }

  v14 = MEMORY[0x277D81150];
  v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "void TSCH3D::Texture::Utilities::drawIntoDataBuffer(CGImageRef, TSCH3D2DDataBuffer *__strong)");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
  v20 = MEMORY[0x277CCACA8];
  sub_276152FD4("ivec2(%d, %d)", v21, v22, v23, v24, v25, v26, v27, Width);
  if (v85 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p[0]);
  }
  v39 = ;
  if (v85 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v44 = 0;
    v43 = 0;
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  objc_msgSend_size(v5, v32, v40, v41, v42);
  v43 = v82;
  v44 = v83;
LABEL_14:
  v45 = MEMORY[0x277CCACA8];
  v80 = v44;
  sub_276152FD4("ivec3(%d, %d, %d)", v32, v33, v34, v35, v36, v37, v38, v43);
  if (v85 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, __p[0]);
  }
  v51 = ;
  if (v85 < 0)
  {
    operator delete(__p[0]);
  }

  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v50, v52, v53, v54, v81, v19, 133, 0, "size mismatch between CGImage and buffer %@, %@", v39, v51, v80);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
LABEL_20:
  CGImageGetColorSpace(a2);
  v59 = sub_2761D5584(a1, v5);
  v64 = v59;
  if (v59)
  {
    v86.size.width = Width;
    v86.size.height = Height;
    v86.origin.x = 0.0;
    v86.origin.y = 0.0;
    CGContextDrawImage(v59, v86, a2);
    CGContextRelease(v64);
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "void TSCH3D::Texture::Utilities::drawIntoDataBuffer(CGImageRef, TSCH3D2DDataBuffer *__strong)");
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v73, v74, v75, v66, v71, 136, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
  }
}

id sub_2761D5458(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  if (a3 != 1 && a3 != 4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(ivec2cref, NSUInteger)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 51, 0, "Invalid components");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = *a1;
  v25 = *(a1 + 8);
  v32[0] = *a2;
  *&v32[1] = a3;
  v33 = v25;
  v26 = objc_msgSend_bufferWithCapacityDimension_(v24, a2, v32[0], a5, a6, v32);
  objc_msgSend_fillCapacity(v26, v27, v28, v29, v30);

  return v26;
}

CGContextRef sub_2761D5584(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = v2;
  if (v2)
  {
    objc_msgSend_size2(v2, v3, v4, v5, v6);
  }

  else
  {
    v35 = 0;
  }

  v8 = objc_msgSend_components(v7, v3, v4, v5, v6);
  v13 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "CGContextRef TSCH3D::Texture::Utilities::createBitmapContext(TSCH3D2DDataBuffer *__strong, CGColorSpaceRef)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 186, 0, "Invalid components for a bitmap context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_mutableData(v7, v9, v10, v11, v12);
  v33 = sub_2761D7D78(&v35, v13, v29, 0, v30, v31, v32);

  return v33;
}

void sub_2761D5948(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_p_parent(*(a1 + 32), a2, a3, a4, a5);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_hash(v6, v7, v8, v9, v10);
  }

  else
  {
    v39.receiver = *(a1 + 32);
    v39.super_class = TSCH3DTextureResource;
    v12 = objc_msgSendSuper2(&v39, sel_hash);
  }

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277CCABB0]);
  v19 = objc_msgSend_initWithUnsignedInteger_(v14, v15, v16, v17, v18, v13);
  objc_storeStrong((*(a1 + 32) + 96), v19);
  if (!*(*(a1 + 32) + 96))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCH3DTextureResource hash]_block_invoke");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 107, 0, "invalid nil value for '%{public}s'", "_cachedHash");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }
}

id sub_2761D67F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (objc_msgSend_technique(v7, v8, v9, v10, v11) != 1)
  {
    v16 = objc_msgSend_mutableCopy(v7, v12, v13, v14, v15);

    v7 = v16;
    objc_msgSend_setTechnique_(v16, v17, v18, v19, v20, 1);
  }

  v21 = sub_2761D68A0(a1, v7, a3, a4);

  return v21;
}

id sub_2761D68A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4 != 1 && a4 != 4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSDFill *__strong, ivec2cref, NSUInteger)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 69, 0, "Invalid components");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v28 = sub_2761D5458(a1, a3, a4, v9, v10, v11);
  v32 = *a3 < 1 || *(a3 + 4) <= 0;
  if (!v32 || (v33 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v29, v30, v31, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSDFill *__strong, ivec2cref, NSUInteger)"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 71, 0, "zero size buffer"), v39, v34, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47), *a3 >= 1) && *(a3 + 4) >= 1)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v50 = sub_2761D5584(a1, v28);
    if (v50)
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v49, 0.0, 0.0, *a3, v8, v50, *(a3 + 4));
      CGContextRelease(v50);
    }

    else
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v51, v52, v53, "TSCH3D2DDataBuffer *TSCH3D::Texture::Utilities::makeDataBuffer(TSDFill *__strong, ivec2cref, NSUInteger)");
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.h");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 75, 0, "invalid nil value for '%{public}s'", "context");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
    }

    CGColorSpaceRelease(DeviceRGB);
  }

  return v28;
}

void sub_2761D72C0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = objc_msgSend_uniqueFilename(*(*(a1 + 32) + 16), v3, v4, v5, v6);
  v12 = objc_msgSend_hash(v7, v8, v9, v10, v11);
  obj = objc_msgSend_initWithUnsignedInteger_(v2, v13, v14, v15, v16, v12);

  objc_storeStrong((*(a1 + 32) + 32), obj);
  if (!*(*(a1 + 32) + 32))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DTSPImageDataTexture hash]_block_invoke");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 330, 0, "invalid nil value for '%{public}s'", "_cachedHash");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }
}

void sub_2761D73E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2761D7B30(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v10 = objc_msgSend_data(a2, a2, a3, a4, a5);
  objc_msgSend_setData_(*(*(a1 + 32) + 16), v6, v7, v8, v9);
}

void sub_2761D7BA8(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v10 = objc_msgSend_data(a2, a2, a3, a4, a5);
  objc_msgSend_p_setOptimizedMipMapData_(v5, v6, v7, v8, v9);
}

CGContextRef sub_2761D7D78(int *a1, const char *a2, void *a3, int a4, double a5, double a6, double a7)
{
  if (a2 != 1 && a2 != 4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a5, a6, a7, "CGContextRef TSCH3D::CGBitmapContextCreateWithSizeComponentsAndData(glm::ivec2cref, NSUInteger, void *, BOOL)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 30, 0, "invalid number of components for bitmap context %lu", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (a4)
  {
    v26 = MEMORY[0x277CBF448];
    if (a2 != 1)
    {
      v26 = MEMORY[0x277CBF4B8];
    }

    DeviceGray = CGColorSpaceCreateWithName(*v26);
  }

  else if (a2 == 1)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
  }

  v28 = DeviceGray;
  v29 = CGBitmapContextCreate(a3, *a1, a1[1], 8uLL, *a1 * a2, DeviceGray, a2 == 4);
  CFRelease(v28);
  return v29;
}

CGImageRef sub_2761D7ED0(CGImageRef image, uint64_t a2, double a3, double a4, double a5)
{
  if (image)
  {
    if (*a2)
    {
      v7 = *(a2 + 4) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGImageRef TSCH3D::CGImageCreateResized(CGImageRef, glm::ivec2cref)");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
      v15 = MEMORY[0x277CCACA8];
      v114 = *(a2 + 4);
      sub_276152FD4("ivec2(%d, %d)", v16, v17, v18, v19, v20, v21, v22, *a2);
      if (v116 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v15, v23, v24, v25, v26, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v15, v23, v24, v25, v26, __p);
      }
      v28 = ;
      if (v116 < 0)
      {
        operator delete(__p);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v27, v29, v30, v31, v9, v14, 52, 0, "invalid request size %@", v28, v114);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    }

    BitsPerPixel = CGImageGetBitsPerPixel(image);
    BitsPerComponent = CGImageGetBitsPerComponent(image);
    if (!BitsPerComponent)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v39, v40, v41, "CGImageRef TSCH3D::CGImageCreateResized(CGImageRef, glm::ivec2cref)");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 56, 0, "0 bitsPerComponent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    if (BitsPerPixel / BitsPerComponent == 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = 4;
    }

    v59 = sub_2761D7D78(a2, v57, 0, 0, v39, v40, v41);
    if (!v59)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v60, v61, v62, "CGImageRef TSCH3D::CGImageCreateResized(CGImageRef, glm::ivec2cref)");
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 61, 0, "invalid nil value for '%{public}s'", "context");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(v59);
    CGContextDrawImage(v59, ClipBoundingBox, image);
    v79 = CGBitmapContextCreateImage(v59);
    if (!v79)
    {
      v83 = MEMORY[0x277D81150];
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v80, v81, v82, "CGImageRef TSCH3D::CGImageCreateResized(CGImageRef, glm::ivec2cref)");
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 64, 0, "invalid nil value for '%{public}s'", "resizedImage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
    }

    CGContextRelease(v59);
  }

  else
  {
    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGImageRef TSCH3D::CGImageCreateResized(CGImageRef, glm::ivec2cref)");
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v105, v106, v107, v108, v99, v104, 47, 0, "invalid nil value for '%{public}s'", "originalImage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111, v112);
    return 0;
  }

  return v79;
}

id sub_2761D82BC(const void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  if ((a3 - 3) > 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "NSData *TSCH3D::PNGRepresentationFromRGBData(const unsigned char *, glm::ivec2cref, NSInteger)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 72, 0, " expected RGB data with 3 or 4 components. Recieved instead %i components.", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = v9 * a3;
    if (a3 == 1)
    {
      v27 = 8;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = v9 * a3;
  }

  v27 = 8 * a3;
  DeviceGray = CGColorSpaceCreateDeviceRGB();
LABEL_6:
  v29 = DeviceGray;
  v30 = CGDataProviderCreateWithData(0, a1, v10 * a3 * v9, 0);
  if (a3 == 4)
  {
    v31 = 5;
  }

  else
  {
    v31 = 0;
  }

  v32 = CGImageCreate(v9, v10, 8uLL, v27, v11, v29, v31, v30, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v30);
  CFRelease(v29);
  v37 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v33, v34, v35, v36, v32);
  CGImageRelease(v32);
  v42 = objc_msgSend_PNGRepresentation(v37, v38, v39, v40, v41);

  return v42;
}

void sub_2761DC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2761DDAAC()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_msgSend_initWithObjects_(v0, v1, v2, v3, v4, @"Default", @"Glossy", @"Medium Center", @"Medium Left", @"Medium Right", @"Soft Fill", @"Soft Light", 0);
  v6 = qword_280A46A08;
  v26 = v5;
  qword_280A46A08 = v5;

  if (!qword_280A46A08)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DLightingPackage(ImportExportAdditions) p_sageLightingPackageNames]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 52, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_2761DE93C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2761DE9F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2761DEAAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2761DEEC8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if ((~v5 & 9) == 0)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 44);
      if (v8 - 1 >= 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, a3, a4, a5, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v16 = objc_msgSend_identifierWithFillPropertyType_seriesIndex_textureSetID_(TSCH3DFillSetIdentifier, v12, v13, v14, v15, v10, v9, v11);

      goto LABEL_15;
    }
  }

  else if ((v5 & 8) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      v7 = *(v6 + 8);
    }

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v17 = MEMORY[0x277D81150];
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCH3DFillSetIdentifier *TSCH3DFillSetIdentifierWithArchive(const T &) [T = TSCH::Chart3DFillArchive]");
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 160, 0, "TSCH3DFillSetIdentifierWithArchive invalid fill identifier encountered");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
}

void sub_2761DF274(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2761530FC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2761DF36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761DFD34(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"UNDEFINED";
  v25[1] = @"SFC3DAreaFillProperty";
  v25[2] = @"SFC3DBarFillProperty";
  v25[3] = @"SFC3DColumnFillProperty";
  v25[4] = @"SFC3DLineFillProperty";
  v25[5] = @"SFC3DPieFillProperty";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a5, a1, a2, a3, v25, 6);
  objc_storeStrong(&qword_280A46A18, v5);
  if (!qword_280A46A18)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFillSetIdentifier(ImportExportAdditions) p_sageFillPropertyNames]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 98, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }
}

void sub_2761E0130()
{
  v0 = qword_280A46A28;
  qword_280A46A28 = &unk_28856E948;
}

void sub_2761E03D8()
{
  v0 = qword_280A46A38;
  qword_280A46A38 = &unk_28856E960;
}

void sub_2761E07CC()
{
  v0 = objc_alloc(MEMORY[0x277D81170]);
  v5 = objc_msgSend_initWithName_(v0, v1, v2, v3, v4, @"TSCH3DFillSetPListCache");
  v6 = qword_280A46A48;
  v26 = v5;
  qword_280A46A48 = v5;

  if (!qword_280A46A48)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DFillSetIdentifier(ImportExportAdditions) p_getPlist]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 228, 0, "invalid nil value for '%{public}s'", "cache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

double sub_2761E21EC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  if (a1 > a2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "CGFloat TSCHLegendAnchorRangeGetLength(TSCHLegendAnchorRange)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, v15, v16, v17, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v19, v20, v21, v22, v8, v13, 41, 0, "invalid range %@", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  return a2 - a1;
}

double sub_2761E22CC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  if (a1 > a2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "CGFloat TSCHLegendAnchorRangeGetMidLocation(TSCHLegendAnchorRange)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, v15, v16, v17, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v19, v20, v21, v22, v8, v13, 50, 0, "invalid range %@", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  return (a1 + a2) * 0.5;
}

double sub_2761E23B4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  if (a1 > a2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "TSCHLegendAnchorRange TSCHLegendAnchorRangeFromMinMax(CGFloat, CGFloat)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, v15, v16, v17, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v19, v20, v21, v22, v8, v13, 56, 0, "invalid range %@", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  return a1;
}

void sub_2761E2498(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1 == 1)
  {
    MinY = CGRectGetMinY(*&a3);
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    MaxY = CGRectGetMaxY(v32);
    goto LABEL_5;
  }

  if (!a1)
  {
    MinY = CGRectGetMinX(*&a3);
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    MaxY = CGRectGetMaxX(v31);
LABEL_5:
    sub_2761E23B4(MinY, MaxY, v15, v12, v13);
    return;
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHLegendAnchorRange TSCHLegendAnchorRangeFromRect(CGRect, NSInteger)");
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 83, 0, "invalid dimension %ld", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
}

double sub_2761E25F0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a3 > a4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGFloat TSCHLegendAnchorRangeNormalizedLocation(TSCHLegendAnchorRange, CGFloat)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, v16, v17, v18, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v20, v21, v22, v23, v9, v14, 100, 0, "invalid range %@", v19);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v29 = sub_2761E21EC(a3, a4, a5, a1, a2);
  v32 = v29;
  if (v29 == 0.0)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "CGFloat TSCHLegendAnchorRangeNormalizedLocation(TSCHLegendAnchorRange, CGFloat)");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, v41, v42, v43, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v45, v46, v47, v48, v34, v39, 102, 0, "empty range %@", v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  return (a5 - a3) / v32;
}

double sub_2761E2780(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a3 > a4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGFloat TSCHLegendAnchorRangeLocationFromNormalized(TSCHLegendAnchorRange, CGFloat)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, v16, v17, v18, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v20, v21, v22, v23, v9, v14, 107, 0, "invalid range %@", v19);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return a3 + sub_2761E21EC(a3, a4, a5, a1, a2) * a5;
}

double sub_2761E2878(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  if (a3 > a4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHLegendAnchorRange TSCHLegendAnchorRangeNormalizedRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 113, 0, "invalid range %@", v21);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a5 > a6)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHLegendAnchorRange TSCHLegendAnchorRangeNormalizedRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a5, *&a6);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 114, 0, "invalid rangeToNormalize %@", v41);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = sub_2761E25F0(a1, a2, a3, a4, a5);
  v53 = sub_2761E25F0(v51, v52, a3, a4, a6);
  v58 = sub_2761E23B4(v50, v53, v56, v54, v55);
  v61 = v58;
  v62 = v59;
  if (v58 > v59)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "TSCHLegendAnchorRange TSCHLegendAnchorRangeNormalizedRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, v71, v72, v73, @"(%f, %f)", *&v61, *&v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v75, v76, v77, v78, v64, v69, 119, 0, "invalid result %@", v74);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  return v61;
}

double sub_2761E2AC4(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  if (a3 > a4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHLegendAnchorRange TSCHLegendAnchorRangeFromNormalized(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 124, 0, "invalid range %@", v21);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a5 > a6)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHLegendAnchorRange TSCHLegendAnchorRangeFromNormalized(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a5, *&a6);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 125, 0, "invalid normalized %@", v41);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = sub_2761E2780(a1, a2, a3, a4, a5);
  v53 = sub_2761E2780(v51, v52, a3, a4, a6);
  v58 = sub_2761E23B4(v50, v53, v56, v54, v55);
  v61 = v58;
  v62 = v59;
  if (v58 > v59)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "TSCHLegendAnchorRange TSCHLegendAnchorRangeFromNormalized(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, v71, v72, v73, @"(%f, %f)", *&v61, *&v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v75, v76, v77, v78, v64, v69, 130, 0, "invalid result %@", v74);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  return v61;
}

void sub_2761E2D10(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6)
{
  if (a1 > a2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "CGFloat TSCHLegendAnchorRangeMinDistanceToRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 135, 0, "invalid range %@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a3 > a4)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "CGFloat TSCHLegendAnchorRangeMinDistanceToRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 136, 0, "invalid range %@", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }
}

double sub_2761E2EA8(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6)
{
  if (a1 > a2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "TSCHLegendAnchorRange TSCHLegendAnchorRangeIntersectedRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 152, 0, "invalid range %@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a3 > a4)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "TSCHLegendAnchorRange TSCHLegendAnchorRangeIntersectedRange(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 153, 0, "invalid range %@", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  return fmax(a1, a3);
}

void sub_2761E302C(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  if (a3 > a4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGFloat TSCHLegendAnchorRangeIntersectedRangePortion(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 160, 0, "invalid range %@", v21);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a5 > a6)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGFloat TSCHLegendAnchorRangeIntersectedRangePortion(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a5, *&a6);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 161, 0, "invalid range %@", v41);

    a1 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v52 = sub_2761E2EA8(a3, a4, a5, a6, a1, a2);
  if (v52 <= v53)
  {
    sub_2761E21EC(v52, v53, v54, v50, v51);
  }

  sub_2761E21EC(a3, a4, v54, v50, v51);
}

uint64_t sub_2761E31EC(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6)
{
  if (a1 > a2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "CGRect TSCHLegendRectFromAnchorRanges(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, @"(%f, %f)", *&a1, *&a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v22, v23, v24, v25, v11, v16, 171, 0, "invalid range %@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a3 > a4)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "CGRect TSCHLegendRectFromAnchorRanges(TSCHLegendAnchorRange, TSCHLegendAnchorRange)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @"(%f, %f)", *&a3, *&a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 172, 0, "invalid range %@", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  return TSURectWithPoints();
}

CGFloat sub_2761E3388(CGFloat a1, CGFloat a2)
{
  TSUPointLength();
  if (v5 != 1.0)
  {
    v7 = fabs(v5 + -1.0);
    if (v7 >= 0.000000999999997)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v7, 0.000000999999997, v6, "TSCHLegendAnchorLine TSCHLegendAnchorLineFromNormalPoint(CGPoint, CGPoint)");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
      v25.x = a1;
      v25.y = a2;
      v15 = NSStringFromCGPoint(v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 201, 0, "normal must have length of 1 %@", v15);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }
  }

  TSUDotPoints();
  return a1;
}

id sub_2761E34B0(double a1, double a2, double a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromCGPoint(*&a1);
  v10 = objc_msgSend_stringWithFormat_(v4, v6, v7, v8, v9, @"normal %@ distance %f", v5, *&a3);

  return v10;
}

double sub_2761E352C(double a1, double a2, double a3)
{
  TSUMultiplyPointScalar();
  TSUDotPoints();
  return v4 - a3;
}

BOOL sub_2761E357C(unint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if ((a3 == 0.0) == (a4 == 0.0))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "BOOL TSCHLegendAnchorLineOnlyAffectsDimension(TSCHLegendAnchorLine, NSInteger)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    v26.x = a3;
    v26.y = a4;
    v15 = NSStringFromCGPoint(v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 252, 0, "arbitrary normal not supported %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  sub_2761E367C(a1, a2, a3, a4, a5);
  return v24 != 0.0;
}

unint64_t sub_2761E367C(unint64_t result, const char *a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result >= 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGFloat CGGetDimensionValueForPoint(CGPoint, NSInteger)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 191, 0, "invalid dimension %ld", v5);

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return result;
}

unint64_t sub_2761E3744(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v8 = 0;
  for (i = 1; ; i = 0)
  {
    v10 = i;
    if (sub_2761E357C(v8, a5, a1, a2, a3))
    {
      break;
    }

    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, v11, v12, v13, "NSInteger TSCHLegendAnchorLineGetDimension(TSCHLegendAnchorLine)");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
      v21 = sub_2761E34B0(a1, a2, a3);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v15, v20, 263, 0, "invalid line %@", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      return 0;
    }
  }

  return v8;
}

double sub_2761E3858(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      MinX = CGRectGetMinX(*&a3);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_8;
      }

      MinX = CGRectGetMaxX(*&a3);
    }

    v28 = MinX;
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetMaxY(v31);
    return v28;
  }

  if (!a1)
  {
    MaxX = CGRectGetMinX(*&a3);
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    MaxX = CGRectGetMaxX(*&a3);
LABEL_10:
    v28 = MaxX;
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    CGRectGetMinY(v30);
    return v28;
  }

LABEL_8:
  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "CGPoint TSCHLegendAnchorLinePointForRectAtIndex(CGRect, NSUInteger)");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 278, 0, "invalid index %ld", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  return *MEMORY[0x277CBF348];
}

uint64_t sub_2761E39F0(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  if (CGRectIsNull(v19))
  {
    return 0;
  }

  v16 = 0;
  v15 = 0;
  do
  {
    sub_2761E3858(v16, v14, a4, a5, a6, a7);
    TSUDotPoints();
    if (v17 - a3 >= a8)
    {
      ++v15;
    }

    ++v16;
  }

  while (v16 != 4);
  return v15;
}

double sub_2761E3AB4(double a1, double a2, double a3, double a4)
{
  TSUDotPoints();
  if (v6 - a3 < 0.0)
  {
    TSUMultiplyPointScalar();
    TSUAddPoints();
    return v7;
  }

  return a4;
}

void sub_2761E3B48(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsNull(*&a2))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "TSCHLegendAnchorLine TSCHLegendAnchorLineFromRectAtIndex(CGRect, NSUInteger)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 309, 0, "null rect is not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  CGRectGetMinX(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  CGRectGetMinY(v51);
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  CGRectGetMaxX(v52);
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  MaxY = CGRectGetMaxY(v53);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v33 = 1.0;
      v34 = 0.0;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v33 = 0.0;
      v34 = 1.0;
      goto LABEL_14;
    }

LABEL_10:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, MaxY, v31, v32, "TSCHLegendAnchorLine TSCHLegendAnchorLineFromRectAtIndex(CGRect, NSUInteger)");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 326, 0, "index out of bounds %lu", a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v33 = 1.0;
    v34 = 0.0;
    goto LABEL_14;
  }

  if (!a1)
  {
    v33 = -1.0;
    v34 = 0.0;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_10;
  }

  v33 = 0.0;
  v34 = -1.0;
LABEL_14:
  sub_2761E3388(v33, v34);
}

uint64_t sub_2761E3D6C(unint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a1 <= 3)
  {
    return a1 ^ 2;
  }

  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "NSUInteger TSCHLegendAnchorLineOppositeIndexOfRectIndex(NSUInteger)");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 331, 0, "index out of bounds %lu", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  v6 = a1 ^ 2;
  v22 = MEMORY[0x277D81150];
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "NSUInteger TSCHLegendAnchorLineOppositeIndexOfRectIndex(NSUInteger)");
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v27, v32, 333, 0, "result out of bounds %lu", v6);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  return v6;
}

void sub_2761E3E9C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = a1;
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  if (!CGRectIsNull(v12))
  {
    for (i = 0; i != 4; ++i)
    {
      sub_2761E3B48(i, a2, a3, a4, a5);
      v10[2](v10, i);
    }
  }
}

void sub_2761E453C(double *a1, const char *a2, double a3, double a4, double a5)
{
  if (sub_2761E357C(0, a2, a3, a4, a5) && (v13 = *(*(*(a1 + 4) + 8) + 32), v13 == 0.0) || sub_2761E357C(1uLL, v10, a3, a4, a5) && (v13 = *(*(*(a1 + 4) + 8) + 40), v13 == 0.0))
  {
    v14 = a1[5];
    v15 = a1[6];
    v16 = a1[7];
    v17 = a1[8];
    v18 = sub_2761E3D6C(a2, v10, v13, v11, v12);
    sub_2761E3B48(v18, v14, v15, v16, v17);
    if (fabs(sub_2761E352C(a3, a4, a5)) < 10.0)
    {
      TSUMultiplyPointScalar();
      v19 = *(*(a1 + 4) + 8);
      TSUAddPoints();
      *(v19 + 32) = v20;
      *(v19 + 40) = v21;
    }
  }
}

unint64_t sub_2761E4654(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v8 = sub_2761E3744(a3, a4, a5, a1, a2);
  result = sub_2761E367C(v8, v9, *(a1 + 40), *(a1 + 48), v10);
  if (v12 < 0.8)
  {
    TSUMultiplyPointScalar();
    v14 = v13;
    v16 = v15;
    v19 = sub_2761E3D6C(a2, v17, v13, v15, v18);
    v21 = *(*(a1 + 32) + 16);
    v22 = v19;
    v23 = *(a1 + 32);
    v24.n128_f64[0] = v14;
    v25.n128_f64[0] = v16;

    v20.n128_f64[0] = -a5;
    return v21(v23, v22, v24, v25, v20);
  }

  return result;
}

void sub_2761E4D60(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  CGRectGetMinX(*(a1 + 48));
  CGRectGetMinY(*(a1 + 48));
  if (objc_msgSend_p_isInFrontOfLine_forRect_(*(a1 + 32), v8, a2, a3, a4, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)))
  {
    v9 = sub_2761E3388(a2, a3);
    v10 = *(a1 + 40);
    v18 = objc_msgSend_halfSpaceWithLine_(TSCHLegendAnchorHalfSpace, v11, v9, v12, v13);
    objc_msgSend_addObject_(v10, v14, v15, v16, v17, v18);
  }
}

void sub_2761E4FEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

unint64_t sub_2761E5010(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_2761E3B48(a2, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (objc_msgSend_p_isInFrontOfLine_forRect_(*(a1 + 32), v15, a3, a4, a5, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)) || (result = objc_msgSend_p_isInFrontOfLine_forRect_(*(a1 + 32), v16, v10, v12, v14, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)), result))
  {
    result = sub_2761E357C(*(a1 + 120), v16, v10, v12, v14);
    if (result)
    {
      TSUMultiplyPointScalar();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      sub_2761E367C(*(a1 + 120), v18, v19, v20, v21);
      v23 = v22;
      result = sub_2761E367C(*(a1 + 120), v24, v10, v12, v25);
      if (v27 < 0.0)
      {
        v30 = *(a1 + 120);
        v31 = *(a1 + 104);
        v32 = *(a1 + 112);
        if (v30 >= 2)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "CGFloat CGGetDimensionValueForSize(CGSize, NSInteger)");
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 196, 0, "invalid dimension %ld", v30);

          result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
        }

        if (v30)
        {
          v48 = v32;
        }

        else
        {
          v48 = v31;
        }

        v23 = v23 - v48;
      }

      *(*(*(a1 + 40) + 8) + 24) = v23;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_2761E5378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2761E539C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v59 = TSUCheckedDynamicCast();

  v8 = v59;
  if (!v59)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChartDrawableLayoutLegendResizer p_hasConfinedLocationWithinConfinementBoundsForLocation:dimension:returningConfinedLocation:]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 608, 0, "invalid nil value for '%{public}s'", "halfSpace");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    v8 = 0;
  }

  objc_msgSend_line(v8, v4, v5, v6, v7);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (sub_2761E357C(*(a1 + 48), v30, v24, v26, v28))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v35 = *(a1 + 56);
    v36 = *(a1 + 48);
    if (v36 >= 2)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "CGPoint CGPointMakeForDimension(CGFloat, NSInteger)");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableLayoutLegendResizer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 184, 0, "invalid dimension %ld", v36);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    v37 = *(a1 + 48);
    if (v36)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = v35;
    }

    v54 = sub_2761E3AB4(v25, v27, v29, v53);
    sub_2761E367C(v37, v55, v54, v56, v57);
    *(*(*(a1 + 40) + 8) + 24) = v58;
  }
}

void sub_2761E6AF4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2761E6B64(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2761E7150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2761E72B0@<D0>(double *a1@<X0>, const char *a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  if (*(a1 + 4) != 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "glm::ivec2 TSCH3D::DataBufferLevelData::size2() const");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.h");
    v15 = MEMORY[0x277CCACA8];
    v37 = *(a1 + 3);
    v38 = *(a1 + 4);
    sub_276152FD4("ivec3(%d, %d, %d)", v16, v17, v18, v19, v20, v21, v22, *(a1 + 2));
    if (v40 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v15, v23, v24, v25, v26, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v15, v23, v24, v25, v26, __p);
    }
    v28 = ;
    if (v40 < 0)
    {
      operator delete(__p);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v27, v29, v30, v31, v9, v14, 38, 0, "cannot get 2D size from 3D size %@", v28, v37, v38);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  result = a1[1];
  *a3 = result;
  return result;
}

void sub_2761E75A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2761E810C(void *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = a1[4];
  if (*(v6 + 8))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHDEPRECATED3DFill initWithArchive:unarchiver:]_block_invoke");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 522, 0, "expected nil value for '%{public}s'", "_fill");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = a1[4];
  }

  if (*(v6 + 16))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHDEPRECATED3DFill initWithArchive:unarchiver:]_block_invoke");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 523, 0, "expected nil value for '%{public}s'", "_lightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v37 = a1[6];
  v38 = *(v37 + 16);
  if ((v38 & 2) != 0)
  {
    v39 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], a2, a3, a4, a5, *(v37 + 32), a1[5]);
    v40 = a1[4];
    v41 = *(v40 + 8);
    *(v40 + 8) = v39;

    v38 = *(a1[6] + 16);
  }

  if ((v38 & 4) != 0)
  {
    v42 = [TSCH3DLightingModel alloc];
    v47 = a1[5];
    if (*(a1[6] + 40))
    {
      v48 = objc_msgSend_initWithArchive_unarchiver_(v42, v43, v44, v45, v46, *(a1[6] + 40), v47);
    }

    else
    {
      v48 = objc_msgSend_initWithArchive_unarchiver_(v42, v43, v44, v45, v46, &qword_2812F1278, v47);
    }

    v49 = a1[4];
    v50 = *(v49 + 16);
    *(v49 + 16) = v48;
  }
}

void sub_2761E8510(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

float sub_2761E990C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  TSURGBToHSB();
  TSUHSBToRGB();
  *a2 = 0.0;
  a2[1] = 0.0;
  result = *(a1 + 12);
  a2[2] = 0.0;
  a2[3] = result;
  return result;
}

void sub_2761EBB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761EC524(uint64_t a1@<X0>, const char *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D1>, double a5@<D2>)
{
  v5 = a2;
  v7 = 0;
  LODWORD(a5) = *a1;
  v8 = *(a1 + 4);
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  v11 = v9 - *a1;
  v13 = *(a1 + 16);
  v12 = *(a1 + 20);
  v14 = v13 - v8;
  v15 = v12 - v10;
  v90[0] = v11;
  v90[1] = v13 - v8;
  v90[2] = v12 - v10;
  HIDWORD(v16) = 872415232;
  __p.i64[0] = 0x3400000034000000;
  __p.i32[2] = 872415232;
  do
  {
    *&v16 = v90[v7];
    LODWORD(a4) = __p.i32[v7];
    *(&v79 + v7++) = *&v16 > *&a4;
  }

  while (v7 != 3);
  v17 = 0;
  v18 = 1;
  do
  {
    while ((v18 & 1) == 0)
    {
      v18 = 0;
      if (++v17 == 3)
      {
        goto LABEL_10;
      }
    }

    v18 = *(&v79 + v17++);
  }

  while (v17 != 3);
  if (v18)
  {
    goto LABEL_16;
  }

LABEL_10:
  v54 = LODWORD(a5);
  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v16, a4, a5, "mat4 TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec3<float>>::normalizingMatrix(BOOL) const [T = glm::detail::tvec3<float>]");
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
  v52 = v14;
  v53 = v15;
  v51 = v11;
  sub_276152FD4("vec3(%f, %f, %f)", v26, v27, v28, v29, v30, v31, v32, SLOBYTE(v51));
  if (v89 >= 0)
  {
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v33, v34, v35, v36, v20, v25, 548, 0, "invalid size %s", &__p, *&v52, *&v53);
  }

  else
  {
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v33, v34, v35, v36, v20, v25, 548, 0, "invalid size %s", __p.i64[0], *&v52, *&v53);
  }

  if (v89 < 0)
  {
    operator delete(__p.i64[0]);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  LODWORD(a5) = v54;
LABEL_16:
  v41 = v12 + v10;
  v42 = v13 + v8;
  v43 = v9 + *&a5;
  v44 = 0.5;
  if (!v5)
  {
    v44 = 0.0;
  }

  v81 = 0;
  v80 = 0;
  v79 = 1065353216;
  v82 = 1065353216;
  v83 = 0;
  v84 = 0;
  v85 = xmmword_2764D6610;
  v86 = v44;
  v87 = 1065353216;
  v66 = 1.0 / v11;
  v67 = (1.0 / v11) * 0.0;
  v68 = v67;
  v69 = v67;
  v70 = (1.0 / v14) * 0.0;
  v71 = 1.0 / v14;
  v72 = v70;
  v73 = v70;
  v74 = (1.0 / v15) * 0.0;
  v75 = v74;
  v76 = 1.0 / v15;
  v77 = v74;
  v78 = xmmword_2764D5F20;
  sub_2761558A0(&v79, &v66, &__p);
  v55 = 1065353216;
  v57 = 0;
  v56 = 0;
  v58 = 1065353216;
  v59 = 0;
  v60 = 0;
  v61 = 1065353216;
  v45 = (v43 * -0.5) * 0.0;
  v46 = (v42 * -0.5) * 0.0;
  v47 = (v43 * -0.5) + v46;
  v48 = v45 + (v42 * -0.5);
  v49 = v45 + v46;
  v50 = (v41 * -0.5) * 0.0;
  v62 = (v47 + v50) + 0.0;
  v63 = (v48 + v50) + 0.0;
  v64 = ((v41 * -0.5) + v49) + 0.0;
  v65 = (v49 + v50) + 1.0;
  sub_2761558A0(&__p, &v55, a3);
}

void sub_2761EC804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761EC980(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *sub_2761ECEC0(void *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a1[1];
    v8 = a1[2];
    if (a5 <= (v8 - v7) >> 3)
    {
      v15 = (v7 - a2) >> 3;
      if (v15 >= a5)
      {
        v21 = &a2[8 * a5];
        v22 = (v7 - 8 * a5);
        v23 = a1[1];
        while (v22 < v7)
        {
          *v23 = *v22;
          v23[1] = v22[1];
          v22 += 2;
          v23 += 2;
        }

        a1[1] = v23;
        if (v7 != v21)
        {
          v24 = &v21[-v7];
          v25 = (v7 - 4);
          v26 = &v25[-2 * a5];
          do
          {
            *(v25 - 1) = *(v26 - 1);
            v27 = *v26;
            v26 -= 2;
            *v25 = v27;
            v25 -= 2;
            v24 += 8;
          }

          while (v24);
        }

        v28 = 0;
        do
        {
          v29 = &a2[v28];
          *v29 = *v6;
          *(v29 + 1) = *(v6 + 1);
          v6 += 8;
          v28 += 8;
        }

        while (v6 != &a3[8 * a5]);
      }

      else
      {
        v16 = &a3[v7 - a2];
        if (v16 == a4)
        {
          v18 = a1[1];
          v19 = v18;
        }

        else
        {
          v17 = a3 - a2;
          v18 = a1[1];
          v19 = v18;
          do
          {
            v20 = &v18[v17];
            *v19 = *&v18[v17];
            *(v19 + 1) = *&v18[v17 + 4];
            v19 += 8;
            v18 += 8;
          }

          while (v20 + 8 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          v31 = &a2[8 * a5];
          v32 = &v18[-8 * a5];
          v33 = v18;
          while (v32 < v7)
          {
            *v33 = *v32;
            *(v33 + 1) = *(v32 + 1);
            v32 += 8;
            v33 += 8;
          }

          a1[1] = v33;
          if (v19 != v31)
          {
            v34 = v31 - v18;
            v35 = v18 - 4;
            v36 = &v35[-8 * a5];
            do
            {
              *(v35 - 1) = *(v36 - 1);
              v37 = *v36;
              v36 -= 2;
              *v35 = v37;
              v35 -= 8;
              v34 += 8;
            }

            while (v34);
          }

          if (v7 != a2)
          {
            v38 = 0;
            do
            {
              v39 = &a2[v38];
              *v39 = *v6;
              *(v39 + 1) = *(v6 + 1);
              v6 += 8;
              v38 += 8;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 + ((v7 - *a1) >> 3);
      if (v10 >> 61)
      {
        sub_276161760();
      }

      v11 = &a2[-v9];
      v12 = v8 - v9;
      if (v12 >> 2 > v10)
      {
        v10 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v10;
      }

      v14 = v11 >> 3;
      v45 = a1;
      if (v13)
      {
        sub_2761AAC20(a1, v13);
      }

      v30 = (8 * v14);
      __p = 0;
      v42 = 8 * v14;
      v44 = 0;
      do
      {
        *v30 = *v6;
        v30[1] = *(v6 + 1);
        v30 += 2;
        v6 += 8;
      }

      while (v30 != (8 * v14 + 8 * a5));
      v43 = 8 * v14 + 8 * a5;
      v5 = sub_2761ED1B4(a1, &__p, v5);
      if (v43 != v42)
      {
        v43 += (v42 - v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_2761ED17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761ED1B4(uint64_t a1, void *a2, char *a3)
{
  v4 = *(a1 + 8);
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v9 = a2[1];
    v8 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = *v7;
      v6[1] = *(v7 + 1);
      v7 += 8;
      v6 += 2;
    }

    while (v7 != v4);
    v8 = *(a1 + 8);
    v9 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v8 - a3;
  *(a1 + 8) = a3;
  v10 = *a1;
  v11 = (v9 + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = v11;
    do
    {
      *v12 = *v10;
      v12[1] = *(v10 + 1);
      v10 += 8;
      v12 += 2;
    }

    while (v10 != a3);
    v10 = *a1;
  }

  a2[1] = v11;
  *a1 = v11;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

char *sub_2761ED280(char **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_2761ED438(a1, v11);
    }

    sub_276161760();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      *(result + 2) = v5[2];
      v5 += 3;
      result += 12;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        *(result + 2) = v5[2];
        v5 += 3;
        result += 12;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        *v15 = *v13;
        *(v15 + 1) = v13[1];
        *(v15 + 2) = v13[2];
        v13 += 3;
        v15 += 12;
        v14 += 12;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_2761ED438(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_27618FE54(a1, a2);
  }

  sub_276161760();
}

char *sub_2761ED484(char **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2761ED5EC(a1, v10);
    }

    sub_276161760();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      v5 += 2;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        v5 += 2;
        result += 8;
      }

      while (v5 != v12);
      v11 = a1[1];
    }

    v13 = v11;
    if (v12 != a3)
    {
      v13 = v11;
      v14 = v11;
      do
      {
        *v14 = *v12;
        *(v14 + 1) = v12[1];
        v12 += 2;
        v14 += 8;
        v13 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void sub_2761ED5EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2761AAC20(a1, a2);
  }

  sub_276161760();
}

uint64_t sub_2761ED628(uint64_t a1, float32x2_t **a2)
{
  *a1 = xmmword_2764D5F00;
  *(a1 + 16) = 0x80000000800000;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    sub_276154FD8(a1, v3);
    v3 = (v3 + 12);
  }

  return a1;
}

void sub_2761EDA00(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2761EE128(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_2761EDEC0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2761EE304(a1, a2 - v2);
  }
}

void sub_2761EE128(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_276161760();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_27618FE54(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    sub_27618FDD4(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2761EE2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761EE304(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_276161760();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_2761AAC20(a1, v10);
    }

    __p = 0;
    v12 = 8 * v8;
    v14 = 0;
    bzero((8 * v8), 8 * a2);
    v13 = 8 * v8 + 8 * a2;
    sub_2761ADD28(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2761EE414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761EE9F8(float32x2_t *a1, void *a2, float a3, float a4, float a5, float a6)
{
  sub_2761EEC64(a1, &v27, a3);
  sub_2761EEC64(a1, &v25, a4);
  v12 = v27;
  v13 = v25.f32[0] - v27.f32[0];
  v14 = v25.f32[1] - v27.f32[1];
  v15 = (v25.f32[0] - v27.f32[0]) * (v25.f32[0] - v27.f32[0]) + (v25.f32[1] - v27.f32[1]) * (v25.f32[1] - v27.f32[1]);
  if ((a5 * a5) < v15)
  {
    v21 = (a3 + a4) * 0.5;
    sub_2761EEC64(a1, &v23, v21);
    v16 = v23;
    v17 = sqrtf(((v14 * v14) + (v13 * v13)) + ((v26 - v28) * (v26 - v28)));
    v18 = (((v14 * (v23.f32[1] - v12.f32[1])) + ((v23.f32[0] - v12.f32[0]) * v13)) + ((v24 - v28) * (v26 - v28))) / (v17 * v17);
    if (sqrtf((((v23.f32[1] - (v12.f32[1] + (v14 * v18))) * (v23.f32[1] - (v12.f32[1] + (v14 * v18)))) + ((v23.f32[0] - (v12.f32[0] + (v13 * v18))) * (v23.f32[0] - (v12.f32[0] + (v13 * v18))))) + ((v24 - (v28 + ((v26 - v28) * v18))) * (v24 - (v28 + ((v26 - v28) * v18))))) > a6)
    {
      sub_2761EE9F8(a1, a2, a3, v21, a5, a6);
      v22 = v16;
      v19 = a2[1];
      if (v19[-1].f32[0] != v16.f32[0] || v19[-1].f32[1] != v16.f32[1])
      {
        if (v19 >= a2[2])
        {
          v20 = sub_2761C99B0(a2, &v22);
        }

        else
        {
          *v19 = v16;
          v20 = &v19[1];
        }

        a2[1] = v20;
      }

      sub_2761EE9F8(a1, a2, v21, a4, a5, a6);
    }
  }
}

float32_t sub_2761EEC64@<S0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>, float a3@<S0>)
{
  v3 = (a3 * a3) * a3;
  *a2 = vadd_f32(a1[6], vmla_n_f32(vmla_n_f32(vmul_n_f32(a1[2], a3 * a3), *a1, v3), a1[4], a3));
  result = a1[7].f32[0] + ((((a3 * a3) * a1[3].f32[0]) + (a1[1].f32[0] * v3)) + (a1[5].f32[0] * a3));
  a2[1].f32[0] = result;
  return result;
}

uint64_t sub_2761EECB8@<X0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D2>)
{
  v10 = xmmword_2764D5F20;
  __asm { FMOV            V0.2S, #1.0 }

  v11 = _D0;
  sub_2761EC524(&v10, 0, v12, a2, a3);
  return sub_2761EED14(&v10, v12, a1);
}

uint64_t sub_2761EED14@<X0>(float *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_2764D5F00;
  *(a3 + 16) = 0x80000000800000;
  result = sub_276155178(a1);
  if ((result & 1) == 0)
  {
    v7 = -1;
    do
    {
      sub_276154EAC(a1, ++v7, v10);
      sub_276154744(v10, a2, &v9, v8);
      result = sub_276154FD8(a3, &v9);
    }

    while (v7 <= 6);
  }

  return result;
}

void sub_2761EF56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2761EF584(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(*(a1 + 40) + 8);
  objc_msgSend_p_drawingRectForModel_(*(a1 + 32), a2, a3, a4, a5, a2);
  v11.origin.x = v7;
  v11.origin.y = v8;
  v11.size.width = v9;
  v11.size.height = v10;
  *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(v6[1], v11);
}

void sub_2761F07FC(uint64_t a1@<X0>, float *a2@<X1>, float32x2_t *a3@<X8>)
{
  sub_2761F0884(a2, a1, &v8);
  v4 = (COERCE_FLOAT(vmul_f32(v8, v8).i32[1]) + (v8.f32[0] * v8.f32[0])) + (v9 * v9);
  if (v4 <= 0.00000011921)
  {
    v6 = 0;
    v7 = 0.0;
  }

  else
  {
    v5 = 1.0 / sqrtf(v4);
    v6 = vmul_n_f32(v8, v5);
    v7 = v9 * v5;
  }

  *a3 = v6;
  a3[1].f32[0] = v7;
}

float32x2_t sub_2761F0884@<D0>(float *a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = ((v3 * *(a2 + 20)) + (*(a2 + 8) * *a1)) + (*(a2 + 32) * v4);
  result = *(a2 + 24);
  *a3 = vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a2 + 12), v3), *a2, *a1), result, v4);
  a3[1].f32[0] = v5;
  return result;
}

void sub_2761F1A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  v52 = *(v50 - 256);
  if (v52)
  {
    *(v50 - 248) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761F1AC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, float32x2_t *a5@<X8>)
{
  if (a4)
  {
    if (a2 < 1)
    {
      v11 = -12;
      if (a3 > 1)
      {
        v11 = -24;
      }

      v12 = (result + v11 + 12 * a3);
      v6 = vsub_f32(*(result + 12), *v12);
      v7 = *(result + 20);
      v10 = v12[1].f32[0];
    }

    else
    {
      v5 = result + 12 * a2;
      if (a3 - 1 == a2)
      {
        v6 = vsub_f32(*(result + 12), *(v5 - 12));
        v7 = *(result + 20);
      }

      else
      {
        v6 = vsub_f32(*(v5 + 12), *(v5 - 12));
        v7 = *(v5 + 20);
      }

      v10 = *(v5 - 4);
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    v6 = vsub_f32(*(result + 12), *result);
    v7 = *(result + 20);
    v10 = *(result + 8);
    goto LABEL_14;
  }

  v8 = result + 12 * a2;
  if (a3 - 1 == a2)
  {
    v9 = result + 12 * a3;
    v6 = vsub_f32(*v8, *(v9 - 24));
    v7 = *(v8 + 8);
    v10 = *(v9 - 16);
LABEL_14:
    v13 = v7 - v10;
    goto LABEL_15;
  }

  v18 = vsub_f32(*v8, *(v8 - 12));
  v19 = *(v8 + 8);
  v20 = v19 - *(v8 - 4);
  v21 = (COERCE_FLOAT(vmul_f32(v18, v18).i32[1]) + (v18.f32[0] * v18.f32[0])) + (v20 * v20);
  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0;
  if (v21 > 0.00000011921)
  {
    v26 = 1.0 / sqrtf(v21);
    v25 = vmul_n_f32(v18, v26);
    v24 = v20 * v26;
  }

  v27 = vsub_f32(*(v8 + 12), *v8);
  v28 = *(v8 + 20) - v19;
  v29 = (COERCE_FLOAT(vmul_f32(v27, v27).i32[1]) + (v27.f32[0] * v27.f32[0])) + (v28 * v28);
  if (v29 > 0.00000011921)
  {
    v30 = 1.0 / sqrtf(v29);
    v22 = vmul_n_f32(v27, v30);
    v23 = v28 * v30;
  }

  v6 = vadd_f32(v25, v22);
  v13 = v24 + v23;
LABEL_15:
  v14 = (COERCE_FLOAT(vmul_f32(v6, v6).i32[1]) + (v6.f32[0] * v6.f32[0])) + (v13 * v13);
  if (v14 <= 0.00000011921)
  {
    v16 = 0;
    v17 = 0.0;
  }

  else
  {
    v15 = 1.0 / sqrtf(v14);
    v16 = vmul_n_f32(v6, v15);
    v17 = v13 * v15;
  }

  *a5 = v16;
  a5[1].f32[0] = v17;
  return result;
}

uint64_t sub_2761F1C8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    if (a2 >= 1)
    {
      v5 = result + 12 * a2;
      if (a3 - 1 == a2)
      {
        v6 = *(result + 12);
        v7 = *(result + 20);
      }

      else
      {
        v6 = *(v5 + 12);
        v7 = *(v5 + 20);
      }

      v10 = *(v5 + 8);
      v11 = v7 - v10;
      v13 = vsub_f32(v6, *v5);
      v14 = vsub_f32(*(v5 - 12), *v5);
LABEL_14:
      v15 = (v5 - 4);
      goto LABEL_15;
    }

    v10 = *(result + 8);
    v11 = *(result + 20) - v10;
    v16 = -12;
    if (a3 > 1)
    {
      v16 = -24;
    }

    v17 = (result + v16 + 12 * a3);
    v13 = vsub_f32(*(result + 12), *result);
    v18 = *v17;
    v15 = &v17[1];
    v14 = vsub_f32(v18, *result);
  }

  else
  {
    if (a3 == 2)
    {
LABEL_23:
      *a5 = 0;
      *(a5 + 8) = 0;
      return result;
    }

    if (a2)
    {
      v5 = result + 12 * a2;
      v8.i32[0] = *v5;
      if (a3 - 1 == a2)
      {
        v9 = result + 12 * a3;
        v10 = *(v9 - 16);
        v11 = *(v5 + 8) - v10;
        v12 = *(v9 - 24);
        v8.i32[1] = *(v5 + 4);
        v13 = vsub_f32(v8, v12);
        v14 = vsub_f32(*(v9 - 36), v12);
        v15 = (v9 - 28);
        goto LABEL_15;
      }

      v8.i32[1] = *(v5 + 4);
      v13 = vsub_f32(*(v5 + 12), v8);
      v10 = *(v5 + 8);
      v11 = *(v5 + 20) - v10;
      v14 = vsub_f32(*(v5 - 12), v8);
      goto LABEL_14;
    }

    v10 = *(result + 20);
    v11 = *(result + 32) - v10;
    v36 = *(result + 12);
    v13 = vsub_f32(*(result + 24), v36);
    v14 = vsub_f32(*result, v36);
    v15 = (result + 8);
  }

LABEL_15:
  v19 = *v15 - v10;
  v20 = (COERCE_FLOAT(vmul_f32(v13, v13).i32[1]) + (v13.f32[0] * v13.f32[0])) + (v11 * v11);
  v21 = 0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0;
  if (v20 > 0.00000011921)
  {
    v25 = 1.0 / sqrtf(v20);
    v24 = vmul_n_f32(v13, v25);
    v23 = v11 * v25;
  }

  v26 = (COERCE_FLOAT(vmul_f32(v14, v14).i32[1]) + (v14.f32[0] * v14.f32[0])) + (v19 * v19);
  if (v26 > 0.00000011921)
  {
    v27 = 1.0 / sqrtf(v26);
    v21 = vmul_n_f32(v14, v27);
    v22 = v19 * v27;
  }

  if (fabsf((vmuls_lane_f32(v24.f32[1], v21, 1) + (v24.f32[0] * v21.f32[0])) + (v23 * v22)) > 0.999)
  {
    goto LABEL_23;
  }

  v28 = (v24.f32[1] * v22) - (v21.f32[1] * v23);
  v29 = (v23 * v21.f32[0]) - (v22 * v24.f32[0]);
  v30 = (v24.f32[0] * v21.f32[1]) - (v21.f32[0] * v24.f32[1]);
  v31 = ((v29 * v29) + (v28 * v28)) + (v30 * v30);
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  if (v31 > 0.00000011921)
  {
    v35 = 1.0 / sqrtf(v31);
    v32 = v28 * v35;
    v33 = v29 * v35;
    v34 = v30 * v35;
  }

  if ((((v33 * v33) + (v32 * v32)) + (v34 * v34)) == 0.0)
  {
    goto LABEL_23;
  }

  *a5 = v32;
  *(a5 + 4) = v33;
  *(a5 + 8) = v34;
  return result;
}

float sub_2761F1EE4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float *a12)
{
  v12 = (a4 + 12 * a11 * a5 + 12 * a6);
  v13 = (a2 + 12 * *a1);
  *v13 = *v12;
  v13[1] = v12[1];
  v13[2] = v12[2];
  v14 = (a4 + 12 * a11 * a7 + 12 * a8);
  v15 = (a2 + 12 * (*a1 + 1));
  *v15 = *v14;
  v15[1] = v14[1];
  v15[2] = v14[2];
  v16 = (a4 + 12 * a11 * a9 + 12 * a10);
  v17 = (a2 + 12 * (*a1 + 2));
  *v17 = *v16;
  v17[1] = v16[1];
  v17[2] = v16[2];
  v18 = (a3 + 12 * *a1);
  *v18 = *a12;
  v18[1] = *(a12 + 1);
  v18[2] = *(a12 + 2);
  v19 = (a3 + 12 * (*a1 + 1));
  *v19 = *a12;
  v19[1] = *(a12 + 1);
  v19[2] = *(a12 + 2);
  v20 = (a3 + 12 * (*a1 + 2));
  *v20 = *a12;
  v20[1] = a12[1];
  result = a12[2];
  v20[2] = result;
  *a1 += 3;
  return result;
}

float *sub_2761F1FF4@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, float *a5@<X4>, float *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  v8 = *result;
  v9 = result[1];
  v10 = result[2];
  v11 = *a5;
  v12 = a5[1];
  v13 = *result * *a5;
  v14 = v9 * v12;
  v15 = a5[2];
  v16 = v10 * v15;
  v17 = ((v14 * v14) + (v13 * v13)) + (v16 * v16);
  v18 = 0.0;
  v19 = sqrtf(v17);
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  if (v17 > 0.00000011921)
  {
    v20 = v13 * (1.0 / v19);
    v21 = v14 * (1.0 / v19);
    v22 = v16 * (1.0 / v19);
  }

  v23 = a2[1];
  v24 = v11 * *a2;
  v25 = v12 * v23;
  v26 = a2[2];
  v27 = v15 * v26;
  v28 = ((v25 * v25) + (v24 * v24)) + (v27 * v27);
  v29 = 0.0;
  v30 = 0.0;
  if (v28 > 0.00000011921)
  {
    v31 = 1.0 / sqrtf(v28);
    v18 = v24 * v31;
    v29 = v25 * v31;
    v30 = v27 * v31;
  }

  if ((((v21 * v29) + (v20 * v18)) + (v22 * v30)) > a7)
  {
    v8 = v8 + *a2;
    v9 = v9 + v23;
    v10 = v10 + v26;
  }

  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (v17 > 0.00000011921)
  {
    v33 = v13 * (1.0 / v19);
    v34 = v14 * (1.0 / v19);
    v35 = v16 * (1.0 / v19);
  }

  v36 = a3[1];
  v37 = v11 * *a3;
  v38 = v12 * v36;
  v39 = a3[2];
  v40 = v15 * v39;
  v41 = ((v38 * v38) + (v37 * v37)) + (v40 * v40);
  v42 = 0.0;
  v43 = 0.0;
  if (v41 > 0.00000011921)
  {
    v44 = 1.0 / sqrtf(v41);
    v32 = v37 * v44;
    v42 = v38 * v44;
    v43 = v40 * v44;
  }

  if ((((v34 * v42) + (v33 * v32)) + (v35 * v43)) > a8)
  {
    v8 = v8 + *a3;
    v9 = v9 + v36;
    v10 = v10 + v39;
  }

  v45 = 0.0;
  v62 = v17 <= 0.00000011921;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  if (!v62)
  {
    v49 = 1.0 / v19;
    v46 = v13 * v49;
    v47 = v14 * v49;
    v48 = v16 * v49;
  }

  v50 = a4[1];
  v51 = v11 * *a4;
  v52 = v12 * v50;
  v53 = a4[2];
  v54 = v15 * v53;
  v55 = ((v52 * v52) + (v51 * v51)) + (v54 * v54);
  v56 = 0.0;
  v57 = 0.0;
  if (v55 > 0.00000011921)
  {
    v58 = 1.0 / sqrtf(v55);
    v45 = v51 * v58;
    v56 = v52 * v58;
    v57 = v54 * v58;
  }

  v59 = ((v47 * v56) + (v46 * v45)) + (v48 * v57);
  v60 = (a7 + a8) * 0.5;
  v61 = v10 + v53;
  v62 = v59 <= v60;
  if (v59 <= v60)
  {
    v63 = v8;
  }

  else
  {
    v63 = v8 + *a4;
  }

  if (v62)
  {
    v64 = v9;
  }

  else
  {
    v64 = v9 + v50;
  }

  if (v62)
  {
    v61 = v10;
  }

  v65 = ((v64 * v64) + (v63 * v63)) + (v61 * v61);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 > 0.00000011921)
  {
    v69 = 1.0 / sqrtf(v65);
    v66 = v63 * v69;
    v67 = v64 * v69;
    v68 = v61 * v69;
  }

  *a6 = v66;
  a6[1] = v67;
  a6[2] = v68;
  return result;
}

float *sub_2761F2588@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, float *a5@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = *a2 - *result;
  v8 = a2[1] - v6;
  v9 = result[2];
  v10 = a2[2] - v9;
  v11 = ((v8 * v8) + (v7 * v7)) + (v10 * v10);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v11 > 0.00000011921)
  {
    v16 = 1.0 / sqrtf(v11);
    v13 = v7 * v16;
    v14 = v8 * v16;
    v15 = v10 * v16;
  }

  v17 = *a3 - v5;
  v18 = a3[1] - v6;
  v19 = a3[2] - v9;
  v20 = ((v18 * v18) + (v17 * v17)) + (v19 * v19);
  v21 = sqrtf(v20);
  v22 = 0.0;
  v23 = 0.0;
  if (v20 > 0.00000011921)
  {
    v12 = v17 * (1.0 / v21);
    v22 = v18 * (1.0 / v21);
    v23 = v19 * (1.0 / v21);
  }

  v24 = (v14 * v23) - (v22 * v15);
  v25 = (v15 * v12) - (v23 * v13);
  v26 = (v13 * v22) - (v12 * v14);
  v27 = ((v25 * v25) + (v24 * v24)) + (v26 * v26);
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (v27 > 0.00000011921)
  {
    v32 = 1.0 / sqrtf(v27);
    v29 = v24 * v32;
    v30 = v25 * v32;
    v31 = v26 * v32;
  }

  v33 = v20 <= 0.00000011921;
  v34 = 0.0;
  v35 = 0.0;
  if (!v33)
  {
    v36 = 1.0 / v21;
    v28 = v17 * v36;
    v34 = v18 * v36;
    v35 = v19 * v36;
  }

  v37 = *a4 - v5;
  v38 = a4[1] - v6;
  v39 = a4[2] - v9;
  v40 = ((v38 * v38) + (v37 * v37)) + (v39 * v39);
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  if (v40 > 0.00000011921)
  {
    v45 = 1.0 / sqrtf(v40);
    v42 = v37 * v45;
    v43 = v38 * v45;
    v44 = v39 * v45;
  }

  v46 = (v34 * v44) - (v43 * v35);
  v47 = (v35 * v42) - (v44 * v28);
  v48 = (v28 * v43) - (v42 * v34);
  v49 = ((v47 * v47) + (v46 * v46)) + (v48 * v48);
  v50 = 0.0;
  v51 = 0.0;
  if (v49 > 0.00000011921)
  {
    v52 = 1.0 / sqrtf(v49);
    v41 = v46 * v52;
    v50 = v47 * v52;
    v51 = v48 * v52;
  }

  v53 = v29 + v41;
  v54 = v30 + v50;
  v55 = v31 + v51;
  v56 = ((v54 * v54) + (v53 * v53)) + (v55 * v55);
  v57 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  if (v56 > 0.00000011921)
  {
    v60 = 1.0 / sqrtf(v56);
    v57 = v53 * v60;
    v58 = v54 * v60;
    v59 = v55 * v60;
  }

  *a5 = v57;
  a5[1] = v58;
  a5[2] = v59;
  return result;
}

void *sub_2761F27A8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2761ED438(result, a2);
  }

  return result;
}

void sub_2761F2828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_2761F2844(uint64_t a1, float a2, float a3)
{
  *a1 = 0x3F80000000000000;
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  result = -a3;
  *(a1 + 16) = 0xBF80000000000000;
  *(a1 + 24) = 0;
  *(a1 + 28) = -a3;
  *(a1 + 32) = 1;
  return result;
}

void sub_2761F2884(float a1, uint64_t a2, void *a3, void *a4)
{
  sub_2761EDA00(a4, 0);
  v7 = a3[1] - *a3;
  if (v7 > 12)
  {
    v8 = 0;
    v9 = v7 / 0xCuLL;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    v10 = v9 - 1;
    do
    {
      v11 = (*a3 + v8);
      v12 = *v11;
      v28.f32[0] = *v11;
      v13 = v11[1];
      v28.f32[1] = v13;
      v14 = v11[2];
      v29 = v14;
      v15 = v11[3];
      v26.f32[0] = v15;
      v16 = v11[4];
      v26.f32[1] = v16;
      v17 = v11[5];
      v27 = v17;
      if (!v8)
      {
        sub_27618F4B4(a4, &v28);
      }

      v18 = ((v13 + (v12 * 0.0)) + (v14 * 0.0)) - a1;
      if ((v18 * (((v16 + (v15 * 0.0)) + (v17 * 0.0)) - a1)) < 0.0)
      {
        v19 = vsub_f32(v26, v28);
        v20 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v19, v19).i32[1]) + (v19.f32[0] * v19.f32[0])) + ((v27 - v29) * (v27 - v29)));
        v21 = vmul_n_f32(v19, v20);
        v22 = (v27 - v29) * v20;
        v23 = v18 / ((v21.f32[1] + (v21.f32[0] * 0.0)) + (v22 * 0.0));
        v24 = vsub_f32(v28, vmul_n_f32(v21, v23));
        v25 = v29 - (v22 * v23);
        sub_27618F4B4(a4, &v24);
      }

      sub_27618F4B4(a4, &v26);
      v8 += 12;
      --v10;
    }

    while (v10);
  }
}

void sub_2761F2A18(float32x2_t *a1, void *a2, void *a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_2761F2A98(a1, a2, &__p, a1);
  sub_2761F2A98(a1, &__p, a3, a1 + 2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_2761F2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761F2A98(uint64_t a1, void *a2, void *a3, float32x2_t *a4)
{
  sub_2761EDA00(a3, 0);
  v9 = a2[1] - *a2;
  if (v9)
  {
    v10 = v9 < 13;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9 / 0xCuLL;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      v11 = 2;
    }

    v13 = v11 - 1;
    for (i = 20; ; i += 12)
    {
      v15 = (*a2 + i);
      v16 = *(v15 - 5);
      v45.f32[0] = v16;
      v17 = *(v15 - 4);
      v45.f32[1] = v17;
      v18 = *(v15 - 3);
      v46 = v18;
      v19 = *(v15 - 2);
      v43.f32[0] = v19;
      v20 = *(v15 - 1);
      v43.f32[1] = v20;
      v21 = *v15;
      v44 = *v15;
      v22 = a4->f32[0];
      v23 = a4->f32[1];
      v25 = a4[1].f32[0];
      v24 = a4[1].f32[1];
      v26 = (((v17 * v23) + (v16 * a4->f32[0])) + (v18 * v25)) - v24;
      if (i == 20 && *(a1 + 32) == 1)
      {
        if (v26 >= 0.0)
        {
          sub_27618F4B4(a3, &v45);
        }

        else
        {
          v41.f32[0] = v16 - (v22 * v26);
          v41.f32[1] = v17 - (v23 * v26);
          v42 = v18 - (v25 * v26);
          sub_2761C14E8(a3, &v41);
        }
      }

      *&v8 = (((v20 * v23) + (v19 * v22)) + (v21 * v25)) - v24;
      if (v26 >= 0.0 && *&v8 < 0.0)
      {
        break;
      }

      if (v26 < 0.0 && *&v8 >= 0.0)
      {
        v40 = v8;
        v33 = vsub_f32(v43, v45);
        v34 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v33, v33).i32[1]) + (v33.f32[0] * v33.f32[0])) + ((v44 - v46) * (v44 - v46)));
        v35 = vmul_n_f32(v33, v34);
        v36 = (v44 - v46) * v34;
        v37 = v26 / ((vmuls_lane_f32(a4->f32[1], v35, 1) + (v35.f32[0] * a4->f32[0])) + (v36 * a4[1].f32[0]));
        v41 = vsub_f32(v45, vmul_n_f32(v35, v37));
        v42 = v46 - (v36 * v37);
        sub_27618F4B4(a3, &v41);
        v32 = &v43;
        goto LABEL_21;
      }

      if (v26 < 0.0 || *&v8 < 0.0)
      {
        goto LABEL_23;
      }

      v32 = &v43;
      v38 = a3;
      v40 = v8;
LABEL_22:
      sub_27618F4B4(v38, v32);
      v8 = v40;
LABEL_23:
      if (*(a1 + 32) == 1 && !v12 && *&v8 < 0.0)
      {
        v39 = v44 - (*&v8 * a4[1].f32[0]);
        v41 = vsub_f32(v43, vmul_n_f32(*a4, *&v8));
        v42 = v39;
        sub_2761C14E8(a3, &v41);
      }

      --v12;
      if (!--v13)
      {
        return;
      }
    }

    v40 = v8;
    v27 = vsub_f32(v43, v45);
    v28 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v27, v27).i32[1]) + (v27.f32[0] * v27.f32[0])) + ((v44 - v46) * (v44 - v46)));
    v29 = vmul_n_f32(v27, v28);
    v30 = (v44 - v46) * v28;
    v31 = v26 / ((vmuls_lane_f32(a4->f32[1], v29, 1) + (v29.f32[0] * a4->f32[0])) + (v30 * a4[1].f32[0]));
    v41 = vsub_f32(v45, vmul_n_f32(v29, v31));
    v42 = v46 - (v30 * v31);
    v32 = &v41;
LABEL_21:
    v38 = a3;
    goto LABEL_22;
  }
}

void sub_2761F2F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761F309C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761F317C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761F3E14(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_27616EF94(result, a4);
  }

  return result;
}

void sub_2761F3E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2761F3E90(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2761ED5EC(result, a2);
  }

  return result;
}

void sub_2761F3EEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761F4AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2761F59D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  v50 = *(v48 - 248);
  if (v50)
  {
    *(v48 - 240) = v50;
    operator delete(v50);
  }

  v51 = *(v48 - 224);
  if (v51)
  {
    *(v48 - 216) = v51;
    operator delete(v51);
  }

  v52 = *(v48 - 200);
  if (v52)
  {
    *(v48 - 192) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

float sub_2761F5AB8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a4 + 12 * a5);
  v10 = (a4 + 12 * a6);
  v11 = (a4 + 12 * a7);
  v12 = v9[1];
  v13 = *v10 - *v9;
  v14 = v10[1] - v12;
  v15 = v9[2];
  v16 = v10[2] - v15;
  v17 = ((v14 * v14) + (v13 * v13)) + (v16 * v16);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v17 > 0.00000011921)
  {
    v22 = 1.0 / sqrtf(v17);
    v19 = v13 * v22;
    v20 = v14 * v22;
    v21 = v16 * v22;
  }

  v23 = *v11 - *v9;
  v24 = v11[1] - v12;
  v25 = v11[2] - v15;
  v26 = ((v24 * v24) + (v23 * v23)) + (v25 * v25);
  v27 = 0.0;
  v28 = 0.0;
  if (v26 > 0.00000011921)
  {
    v29 = 1.0 / sqrtf(v26);
    v18 = v23 * v29;
    v27 = v24 * v29;
    v28 = v25 * v29;
  }

  v30 = (v20 * v28) - (v27 * v21);
  v31 = (v21 * v18) - (v28 * v19);
  v32 = (v19 * v27) - (v18 * v20);
  v33 = ((v31 * v31) + (v30 * v30)) + (v32 * v32);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  if (v33 > 0.00000011921)
  {
    v37 = 1.0 / sqrtf(v33);
    v34 = v30 * v37;
    v35 = v31 * v37;
    v36 = v32 * v37;
  }

  v40 = v7;
  v41 = v8;
  v39[0] = v34;
  v39[1] = v35;
  v39[2] = v36;
  return sub_2761F5C94(a1, a2, a3, a4, a5, a6, a7, v39);
}

float sub_2761F5C94(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8)
{
  v8 = (a4 + 12 * a5);
  v9 = (a2 + 12 * *a1);
  *v9 = *v8;
  v9[1] = v8[1];
  v9[2] = v8[2];
  v10 = (a4 + 12 * a6);
  v11 = (a2 + 12 * (*a1 + 1));
  *v11 = *v10;
  v11[1] = v10[1];
  v11[2] = v10[2];
  v12 = (a4 + 12 * a7);
  v13 = (a2 + 12 * (*a1 + 2));
  *v13 = *v12;
  v13[1] = v12[1];
  v13[2] = v12[2];
  v14 = (a3 + 12 * *a1);
  *v14 = *a8;
  v14[1] = *(a8 + 1);
  v14[2] = *(a8 + 2);
  v15 = (a3 + 12 * (*a1 + 1));
  *v15 = *a8;
  v15[1] = *(a8 + 1);
  v15[2] = *(a8 + 2);
  v16 = (a3 + 12 * (*a1 + 2));
  *v16 = *a8;
  v16[1] = a8[1];
  result = a8[2];
  v16[2] = result;
  *a1 += 3;
  return result;
}

void sub_2761F64E8(unint64_t a1)
{
  v2 = a1 > 1;
  v3 = a1 - 1;
  if (v2)
  {
    sub_2761F64E8(v3);
    sub_2761F64E8(a1 - 2);
  }
}

float sub_2761F6538(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, uint64_t a10)
{
  v10 = (a4 + 12 * a5);
  v11 = (a2 + 12 * *a1);
  *v11 = *v10;
  v11[1] = v10[1];
  v11[2] = v10[2];
  v12 = (a4 + 12 * a6);
  v13 = (a2 + 12 * (*a1 + 1));
  *v13 = *v12;
  v13[1] = v12[1];
  v13[2] = v12[2];
  v14 = (a4 + 12 * a7);
  v15 = (a2 + 12 * (*a1 + 2));
  *v15 = *v14;
  v15[1] = v14[1];
  v15[2] = v14[2];
  v16 = (a3 + 12 * *a1);
  *v16 = *a8;
  v16[1] = a8[1];
  v16[2] = a8[2];
  v17 = (a3 + 12 * (*a1 + 1));
  *v17 = *a9;
  v17[1] = a9[1];
  v17[2] = a9[2];
  v18 = a3 + 12 * (*a1 + 2);
  *v18 = *a10;
  *(v18 + 4) = *(a10 + 4);
  result = *(a10 + 8);
  *(v18 + 8) = result;
  *a1 += 3;
  return result;
}

void sub_2761F6970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

float sub_2761F69CC(void *a1, void *a2, void *a3)
{
  v6 = (a2[1] - *a2) >> 2;
  sub_2761EDA00(a3, v6);
  if (v6 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      result = *(*a1 + 4 * i);
      v10 = *(*a2 + 4 * i);
      v11 = *a3 + v8;
      *v11 = result;
      *(v11 + 4) = v10;
      *(v11 + 8) = 0;
      v8 += 12;
    }
  }

  return result;
}

char *sub_2761F6A54(char *result, char *a2, char *a3)
{
  v5 = *result;
  v4 = *(result + 1);
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = v6 - *a2;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v10 = v4 - *result;
  if (v4 == *result)
  {
    if (a3 == a2)
    {
      return result;
    }

    v46 = a3;
    v47 = *a2;
    v4 = v6;
    v48 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  }

  else
  {
    if (v6 != v7)
    {
      v11 = *v5;
      v12 = *v7;
      v13 = *(v7 + 1);
      v14 = vsub_f32(v13, *(v5 + 4)).f32[0];
      v15 = *(v5 + 4);
      v49 = *(v5 + 4);
      v16 = -v14;
      if (v14 >= 0.0)
      {
        v16 = v14;
      }

      if (v16 >= 0.000001)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0.0;
      }

      v61 = *v5;
      v62 = __PAIR64__(LODWORD(v17), v15);
      result = sub_2761C14E8(a3, &v61);
      v18 = v49;
      if (v10 >= 13 && v8 >= 13)
      {
        v19 = v13;
        v20 = 1;
        v21 = 1;
        do
        {
          v22 = v5 + 12 * v21;
          v23 = *v22;
          v24 = *(v22 + 4);
          v25 = &v7[3 * v20];
          v26 = *v25;
          if (*v25 >= v23)
          {
            v27 = v23;
          }

          else
          {
            v27 = *v25;
          }

          if (v27 == v23 || vabdd_f64(v27, v23) < fabs(v23 * 0.000000999999997))
          {
            ++v21;
          }

          else
          {
            v44 = (v27 - v11) / (v23 - v11);
            v23 = v11 + ((v23 - v11) * v44);
            v24 = vadd_f32(v18, vmul_n_f32(vsub_f32(v24, v18), v44));
          }

          v28 = *(v25 + 1);
          if (v27 == v26 || vabdd_f64(v27, v26) < fabs(v26 * 0.000000999999997))
          {
            ++v20;
          }

          else
          {
            v45 = (v27 - v12) / (v26 - v12);
            v26 = v12 + ((v26 - v12) * v45);
            v28 = vadd_f32(v19, vmul_n_f32(vsub_f32(v28, v19), v45));
          }

          v29 = vsub_f32(v28, v24).f32[0];
          v30 = -v29;
          if (v29 >= 0.0)
          {
            v30 = v29;
          }

          if (v30 >= 0.000001)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0.0;
          }

          v50 = v24;
          if ((v17 * v31) < 0.0)
          {
            v61 = v11;
            v62 = v18;
            _D1 = vsub_f32(v24, v18);
            _S3 = _D1.i32[1];
            __asm { FMLA            S2, S3, V1.S[1] }

            v39 = 1.0 / sqrtf(_S2);
            v63 = (v23 - v11) * v39;
            v64 = vmul_n_f32(_D1, v39);
            v57 = v12;
            v58 = v19;
            _D1 = vsub_f32(v28, v19);
            _S3 = _D1.i32[1];
            __asm { FMLA            S2, S3, V1.S[1] }

            v43 = 1.0 / sqrtf(_S2);
            v59 = (v26 - v12) * v43;
            v60 = vmul_n_f32(_D1, v43);
            v55 = 0;
            v56 = 0;
            v53 = 0;
            v54 = 0;
            if (sub_276155D3C(&v61, &v57, &v55, &v53))
            {
              v51 = v55;
              v52 = 0;
              sub_2761C14E8(a3, &v51);
            }

            v24.i32[0] = v50.i32[0];
          }

          v61 = v27;
          v62 = __PAIR64__(LODWORD(v31), v24.u32[0]);
          result = sub_2761C14E8(a3, &v61);
          if (v21 >= (0xAAAAAAAAAAAAAAABLL * (v10 >> 2)))
          {
            break;
          }

          v11 = v23;
          v12 = v26;
          v17 = v31;
          v18 = v50;
          v19 = v28;
        }

        while (v20 < v9);
      }

      return result;
    }

    if (a3 == result)
    {
      return result;
    }

    v46 = a3;
    v47 = v5;
    v48 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
  }

  return sub_2761ED280(v46, v47, v4, v48);
}

void sub_2761F7168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761F72CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_2761F8A3C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a4 + 12 * a5);
  v9 = (a2 + 12 * *a1);
  *v9 = *v8;
  v9[1] = v8[1];
  v9[2] = v8[2];
  v10 = (a4 + 12 * a6);
  v11 = (a2 + 12 * (*a1 + 1));
  *v11 = *v10;
  v11[1] = v10[1];
  v11[2] = v10[2];
  v12 = (a4 + 12 * a7);
  v13 = (a2 + 12 * (*a1 + 2));
  *v13 = *v12;
  v13[1] = v12[1];
  v13[2] = v12[2];
  v14 = *a1;
  v15 = (a2 + 12 * *a1);
  v16 = (a2 + 12 * (*a1 + 1));
  result = *v16;
  if (*v15 != *v16 || v15[1] != v16[1] || v15[2] != v16[2])
  {
    v18 = (a2 + 12 * (v14 + 2));
    if (result != *v18 || v16[1] != v18[1] || (result = v16[2], result != v18[2]))
    {
      v19 = (a3 + 12 * v14);
      *v19 = *a8;
      v19[1] = *(a8 + 4);
      v19[2] = *(a8 + 8);
      v20 = (a3 + 12 * (*a1 + 1));
      *v20 = *(a8 + 12);
      v20[1] = *(a8 + 16);
      v20[2] = *(a8 + 20);
      v21 = a3 + 12 * (*a1 + 2);
      *v21 = *(a8 + 24);
      *(v21 + 4) = *(a8 + 28);
      result = *(a8 + 32);
      *(v21 + 8) = result;
      *a1 += 3;
    }
  }

  return result;
}

void sub_2761F8D20(_Unwind_Exception *a1)
{
  if (*(v2 - 81) < 0)
  {
    operator delete(*(v2 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2761F9818(int *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  do
  {
    if (v4)
    {
      if (*(a1 + 16) != 1)
      {
        return result;
      }

      v5 = *(a1 + 1) * (a1[1] >> v4) * (*a1 >> v4);
    }

    else
    {
      v5 = *(a1 + 1) * a1[1] * *a1;
    }

    result += v5;
    if (v5)
    {
      v6 = a2 == v4;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return result;
}

void *sub_2761FA128(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_27616EFD0(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FA1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761FA240(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2761FC28C(a1, a2 - v2);
  }
}

void sub_2761FA4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2761FA5B8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_2761AAC20(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FA658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761FA91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2761FAA18(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      sub_27618FE54(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FAAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761FADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2761FAEE0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_27616222C(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FAF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761FAFF8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_2761FC5C4(a1, a2 - v2);
  }
}

void sub_2761FB274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2761FB370(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2761FB7DC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_2761FC960(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761FB8B8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_2761FC9A4(a1, a2 - v2);
  }
}

void sub_2761FBB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

int **sub_2761FC224(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void sub_2761FC28C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      sub_276161760();
    }

    v8 = v6 >> 2;
    v9 = v4 - *a1;
    if (v9 >> 1 > v7)
    {
      v7 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_27616EFD0(a1, v10);
    }

    __p = 0;
    v12 = 4 * v8;
    v14 = 0;
    bzero((4 * v8), 4 * a2);
    v13 = 4 * v8 + 4 * a2;
    sub_2761FC224(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2761FC39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761FC3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = (**(a1 + 40) + 4 * a2);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 16))
  {
    result = sub_2761FC428(v2, v3);
  }

  else
  {
    *v4 = *v3;
    result = (v4 + 1);
  }

  *(v2 + 8) = result;
  return result;
}

uint64_t sub_2761FC428(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    sub_276161760();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_27616EFD0(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  sub_2761FC224(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_2761FC510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761FC548(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = (**(a1 + 40) + 8 * a2);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 16))
  {
    result = sub_2761C99B0(*(*(*(a1 + 32) + 8) + 24), v3);
  }

  else
  {
    *v4 = *v3;
    v4[1] = v3[1];
    result = (v4 + 2);
  }

  *(v2 + 8) = result;
  return result;
}

void sub_2761FC5C4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_276161760();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_27616222C(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    sub_2761621A4(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2761FC6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761FC724(char **a1, size_t a2)
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
      sub_276161760();
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

void sub_2761FC85C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = **(a1 + 40);
  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v5 >= v4)
  {
    v7 = *v2;
    v8 = &v5[-*v2];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      sub_276161760();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v2];
    *v8 = *(v3 + a2);
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v2 = 0;
    *(v2 + 8) = v8 + 1;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *(v3 + a2);
    v6 = v5 + 1;
  }

  *(v2 + 8) = v6;
}

void sub_2761FC960(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_2761FC9A4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_276161760();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2761FC960(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_2761FCACC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = **(a1 + 40);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v6 >= v5)
  {
    v8 = *v3;
    v9 = v6 - *v3;
    v10 = v9 >> 1;
    if (v9 >> 1 <= -2)
    {
      sub_276161760();
    }

    v11 = v5 - v8;
    if (v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v11 >= 0x7FFFFFFFFFFFFFFELL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_2761FC960(*(*(*(a1 + 32) + 8) + 24), v14);
    }

    v15 = (2 * v10);
    v16 = *(v4 + 2 * a2);
    v17 = &v15[-(v9 >> 1)];
    *v15 = v16;
    v7 = v15 + 1;
    memcpy(v17, v8, v9);
    v18 = *v3;
    *v3 = v17;
    *(v3 + 8) = v7;
    *(v3 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = *(v4 + 2 * a2);
    v7 = v6 + 1;
  }

  *(v3 + 8) = v7;
}

void sub_2761FDE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DChartBoundsLayoutSceneDelegate;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761FEAD4(uint64_t a1, void *a2)
{
  v4 = a2;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    objc_msgSend_offset(v8, v3, v5, v6, v7);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  objc_msgSend_p_extendProjectedBoundsForCachedLabelBounds_offset_(v9, v3, v5, v6, v7, v4, &v10);
}

float sub_2761FF750(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "T TSCH3D::AssertSafeValue(__strong id, SEL, __strong id, T) [T = float]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 17, 0, "cannot get safe value from nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return a1;
}

float sub_2761FF824@<S0>(float *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *&a4 = *a1;
  *&a5 = a1[1];
  *&a6 = a1[2];
  *&a7 = a1[3];
  if (a2 > 3 || *&a6 < *&a4 || *&a7 < *&a5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "value_type TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>::pointAtIndex(NSUInteger) const [T = glm::detail::tvec2<float>]", a7);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    *&v20 = *a1;
    *&v21 = a1[1];
    *&v22 = a1[2];
    v23 = a1[3] < *&v21 || *&v22 < *&v20;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v20, v21, v22, v13, v19, 459, 0, "invalid index %lu >= %lu", a2, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  result = *(a1 + (~(8 * a2) & 8));
  v30 = *(a1 + (~(4 * a2) & 8) + 4);
  *a3 = result;
  *(a3 + 4) = v30;
  return result;
}

void sub_2761FFD58(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_scene(*(*(a1 + 32) + 8), v4, v5, v6, v7);
  v14 = objc_msgSend_elementPropertiesFromScene_(*(a1 + 40), v9, v10, v11, v12, v8);
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DChartBoundsLayoutSceneDelegatePieFamily willBeginProcessingSceneObject:]_block_invoke");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 503, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  memset(v62, 0, sizeof(v62));
  memset(v61, 0, sizeof(v61));
  objc_msgSend_applyChartElementsTransform_(v14, v13, 0.0, v16, v17, v61);
  sub_276169AD4(v61, v60, v33);
  objc_msgSend_multiply_(v3, v34, v35, v36, v37, v60);
  v42 = objc_msgSend_wholePieBoundsResource(TSCH3DChartPieSceneObject, v38, v39, v40, v41);
  objc_msgSend_geometry_(v3, v43, v44, v45, v46, v42);

  v51 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v47, v48, v49, v50, 5);
  objc_msgSend_submit_(v3, v52, v53, v54, v55, v51);

  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_anyHasExplosion(v14, v56, v57, v58, v59);
  sub_27616B32C(v62);
  sub_27616B32C(v61);
}

uint64_t sub_27620035C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 97) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
  }

  if (*(v4 + 98) != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v5 = 1;
LABEL_8:

  return v5;
}

void sub_276201690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DChartResizer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

id sub_276202B30(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  v61 = *a1;
  sub_276152FD4("vec2(%f, %f)", a2, a3, a4, a5, a6, a7, a8, SLOBYTE(v61));
  if (v65 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p[0]);
  }
  v21 = ;
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = a1[2];
  sub_276152FD4("vec3(%f, %f, %f)", v14, v15, v16, v17, v18, v19, v20, SLOBYTE(v23));
  if (v65 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v22, v24, v25, v26, v27, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v22, v24, v25, v26, v27, __p[0]);
  }
  v35 = ;
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = MEMORY[0x277CCACA8];
  v62 = a1[5];
  sub_276152FD4("vec2(%f, %f)", v28, v29, v30, v31, v32, v33, v34, SLOBYTE(v62));
  if (v65 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p[0]);
  }
  v48 = ;
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  v49 = MEMORY[0x277CCACA8];
  v63 = a1[7];
  sub_276152FD4("vec2(%f, %f)", v41, v42, v43, v44, v45, v46, v47, SLOBYTE(v63));
  if (v65 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, __p[0]);
  }
  v55 = ;
  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  v59 = objc_msgSend_stringWithFormat_(v9, v54, v56, v57, v58, @"size %@ scale %@ delta %@ steps %@", v21, v35, v48, v55);

  return v59;
}

void sub_276202D80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276202D74);
}

void sub_276202DA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276202D78);
}

id sub_2762032CC(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p[0]);
  }
  v21 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 4, v14, v15, v16, v17, v18, v19, v20);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p[0]);
  }
  v111 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 8, v27, v28, v29, v30, v31, v32, v33);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p[0]);
  }
  v46 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v47 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 12, v39, v40, v41, v42, v43, v44, v45);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v47, v48, v49, v50, v51, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v47, v48, v49, v50, v51, __p[0]);
  }
  v59 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v60 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 16, v52, v53, v54, v55, v56, v57, v58);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, __p[0]);
  }
  v72 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v73 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 20, v65, v66, v67, v68, v69, v70, v71);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v73, v74, v75, v76, v77, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v73, v74, v75, v76, v77, __p[0]);
  }
  v85 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v86 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 24, v78, v79, v80, v81, v82, v83, v84);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v86, v87, v88, v89, v90, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v86, v87, v88, v89, v90, __p[0]);
  }
  v98 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v99 = MEMORY[0x277CCACA8];
  sub_276152EB4(a1 + 28, v91, v92, v93, v94, v95, v96, v97);
  if (v113 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, __p[0]);
  }
  v105 = ;
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  v109 = objc_msgSend_stringWithFormat_(v9, v104, v106, v107, v108, @"ChartProjectedBoundsSpaces chart %@ orient %@ drawing %@ layout %@ page %@ bodylayout %@ bodypage %@ cv %@", v21, v111, v46, v59, v72, v85, v98, v105);

  return v109;
}

void sub_27620360C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2762035ECLL);
}

void sub_276203634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2762035F0);
}

void sub_27620365C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2762035F4);
}

void sub_276203684(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2762035F8);
}

void sub_2762036AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276203600);
}

void sub_2762036D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276203604);
}

void sub_276204AA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276204A98);
}

void sub_276204AC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276204A9CLL);
}

float32x2_t sub_276205CDC@<D0>(float32x2_t *a1@<X0>, char a2@<W1>, float32x2_t *a3@<X2>, float32x2_t *a4@<X8>)
{
  v4 = -1.0;
  if ((a2 & 2) == 0)
  {
    v4 = 1.0;
  }

  v5 = vdup_n_s32(a2);
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vbic_s8(_D3, vceqz_s32(vand_s8(v5, 0x400000020)));
  __asm { FMOV            V3.2S, #1.0 }

  result = vsub_f32(vadd_f32(*a3, vmul_f32(vmul_n_f32(vadd_f32(v11, vbic_s8(_D3, vceqz_s32(vand_s8(v5, 0x800000010)))), v4), vadd_f32(vmul_f32(*a1, 0x3F0000003F000000), a1[3]))), a1[2]);
  *a4 = result;
  return result;
}

void sub_276205F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DGetBoundsProjector;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276207418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DChartGetProjectedBoundsPipeline;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276209128(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27620920C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_27620A250(_OWORD *a1)
{
  result = 1.40444743e306;
  *a1 = xmmword_2764D5EE0;
  a1[1] = xmmword_2764D5EE0;
  a1[2] = xmmword_2764D5EE0;
  a1[3] = xmmword_2764D5EE0;
  a1[4] = xmmword_2764D5EE0;
  a1[5] = xmmword_2764D5EE0;
  a1[6] = xmmword_2764D5EE0;
  a1[7] = xmmword_2764D5EE0;
  return result;
}

BOOL sub_27620A520(__int128 *a1, __int128 *a2)
{
  *a1 = 0;
  *a2 = 0;
  v5 = *a1;
  v6 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  return sub_27635FBE4(&v5, &v3);
}

void sub_27620BACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v24 = v20;

  _Unwind_Resume(a1);
}

void sub_27620BB1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x27620BB14);
}

void sub_27620BE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_27620CDA4(__int128 *a1, const char *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = *a1;
  v13 = *a3;
  v17 = *a2;
  v18 = v13;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = *a4;
  v28 = *a5;
  v29 = *(a5 + 2);
  v30 = 0;
  v14 = objc_msgSend_cacheWithCacheValues_(TSCH3DChartSceneAreaLayoutItemCache, a2, *&v28, a7, a8, &v16);

  return v14;
}

void sub_27620DE84(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    LODWORD(a3) = *(a1 + 12);
    v6 = @"NO";
    LODWORD(a4) = 1.0;
    if (*&a3 != 1.0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3DChartSceneAreaLayoutItemCacheValues::printDebug()");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 739, 0, "default depth scale must be 1.0");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
      if (*(a1 + 128))
      {
        v6 = @"YES";
      }
    }

    NSLog(&cfstr_Tschchartlayou.isa, *a1, *(a1 + 4), *(a1 + 8), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v6);
  }
}

void sub_27620E288(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

double sub_27620E300@<D0>(float32x2_t *a1@<X0>, const char *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  LODWORD(a4) = a1[6].i32[0];
  LODWORD(a5) = a1[6].i32[1];
  v9 = a1 + 6;
  LODWORD(a6) = a1[7].i32[0];
  LODWORD(a7) = a1[7].i32[1];
  if (*&a6 < *&a4 || *&a7 < *&a5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "BoundsType TSCH3D::ChartProjectedBoundsSpaces::normalizedToLayout(BoundsCRefType) const", a7);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartProjectedBounds.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 133, 0, "_layout is null");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  *&result = sub_276152C5C(a2, v9, a3).u64[0];
  return result;
}

void sub_27620E4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DChartLayoutSceneSettingsUpgrader;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_27620F6AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27620FAC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27620FBB8()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1294, 1290, 1292, 1293, 1291, 1361, 1362, 1343, 1312, 1311, 1310, 1313, 1309, 1314, 1305, 1304, 1303, 1306, 1302, 1307, 1341, 1340, 1261, 1432, 1433, 1421, 1420, 1423, 1419, 1425, 1439, 1438, 1437, 1442, 16, 17, 0);
  v6 = qword_280A46A58;
  qword_280A46A58 = v5;
}

void sub_27620FD24()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1299, 1298, 1260, 0);
  v6 = qword_280A46A68;
  qword_280A46A68 = v5;
}

void sub_27620FDC4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1312, 1311, 1310, 1313, 1309, 1314, 0);
  v6 = qword_280A46A78;
  qword_280A46A78 = v5;
}

void sub_27620FE74()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1454, 1447, 1448, 1449, 1446, 1450, 0);
  v6 = qword_280A46A88;
  qword_280A46A88 = v5;
}

void sub_27620FF80(uint64_t a1)
{
  v32.receiver = *(a1 + 32);
  v32.super_class = &OBJC_METACLASS___TSCH3DChartLayout;
  v2 = objc_msgSendSuper2(&v32, sel_propertiesThatInvalidateLayout);
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v12 = objc_msgSend_p_propertiesThatResetSeriesStorage(*(a1 + 32), v8, v9, v10, v11);
  objc_msgSend_addProperties_(v7, v13, v14, v15, v16, v12);

  v21 = objc_msgSend_p_propertiesThatResetSceneProperties(*(a1 + 32), v17, v18, v19, v20);
  objc_msgSend_addProperties_(v7, v22, v23, v24, v25, v21);

  v30 = objc_msgSend_copy(v7, v26, v27, v28, v29);
  v31 = qword_280A46A98;
  qword_280A46A98 = v30;
}

void sub_276210AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCH3DFramebuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276210F54(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_276212340(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}");
  objc_msgSend_setValueState_forKey_(v14, v10, v11, v12, v13, v9, a2);
}

void sub_2762123DC(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "q");
  objc_msgSend_setValueState_forKey_(v14, v10, v11, v12, v13, v9, a2);
}

uint64_t sub_2762139C0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) != 0) != (*(a2 + 8) != 0))
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v3 = *(a1 + 24);
    if (*(a2 + 16))
    {
      v4 = *(a2 + 24);
      if ((v3 != 1) == (v4 != 1))
      {
        return (v3 == 1) ^ (v4 != 1);
      }

      return 0;
    }

    if (v3 != 1)
    {
      return 0;
    }

    v4 = *(a2 + 24);
  }

  else
  {
    v4 = *(a2 + 24);
    if (*(a2 + 16))
    {
      v5 = v4 == 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return 0;
    }

    v3 = *(a1 + 24);
  }

  return (v3 == 1) ^ (v4 != 1);
}

id sub_276213A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = **a1;
  sub_276152FD4("vec3(%f, %f, %f)", a2, a3, a4, a5, a6, a7, a8, SLOBYTE(v10));
  if (v23 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v11, v12, v13, v14, &__p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v11, v12, v13, v14, __p);
  }
  v16 = ;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v20 = objc_msgSend_stringWithFormat_(v9, v15, v17, v18, v19, @"%p(%@, %p, %p, %ld)", a1, v16, *(a1 + 8), *(a1 + 16), *(a1 + 24) == 1);

  return v20;
}

uint64_t sub_276213B6C(void *a1, _DWORD *a2, _DWORD *a3)
{
  sub_27618F4B4(a1, a2);
  sub_27618F4B4(a1, a3);
  sub_27618F4B4(a1, a3);
  sub_27618F4B4(a1, a2);
  sub_27618F4B4(a1, a3);

  return sub_27618F4B4(a1, a2);
}

unint64_t sub_276213BE8(void *a1)
{
  v2 = a1;
  if (!v2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, v3, v4, v5, "NSUInteger (anonymous namespace)::patternLength(TSDStroke *__strong)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 86, 0, "invalid nil value for '%{public}s'", "stroke");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  objc_msgSend_width(v2, v1, v3, v4, v5);
  v22 = v21;
  v26 = objc_msgSend_pattern(v2, v23, v21, v24, v25);
  v27 = 0;
  v28 = 0.0;
  for (i = objc_msgSend_count(v26, v29, v30, v31, v32); v27 < i; i = objc_msgSend_count(v26, v39, v38, v40, v41))
  {
    v38 = *(objc_msgSend_pattern(v26, v34, v35, v36, v37) + 8 * v27);
    v28 = v28 + v38 * v22;
    ++v27;
  }

  isRoundDash = objc_msgSend_isRoundDash(v2, v34, v35, v36, v37);
  v43 = v28 + v22 * 1.5;
  if (!isRoundDash)
  {
    v43 = v28;
  }

  v44 = vcvtpd_u64_f64(v43);

  return v44;
}

uint64_t sub_276213D54(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2762178FC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

void sub_276213F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DPrefilteredLineRenderer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276214638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276214D4C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_p_setupShaderEffectsForSetting_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40));
  (*(*(a1 + 48) + 16))();
  objc_opt_class();
  v10 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 256), v6, v7, v8, v9, *(a1 + 40));
  v30 = TSUCheckedDynamicCast();

  if (!v30)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DPrefilteredLineRenderer endWithDidGenerateShaderEffectsBlock:]_block_invoke");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 782, 0, "invalid nil value for '%{public}s'", "cacheObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  objc_msgSend_submitResourcesWithLineRenderer_setting_(v30, v11, v12, v13, v14, *(a1 + 32), *(a1 + 40));
}

void sub_276215A7C()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PrefilterBox", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46AA8;
  v26 = v5;
  qword_280A46AA8 = v5;

  if (!qword_280A46AA8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPrefilteredLineShaderEffect variablePrefilterBox]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 899, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276215C30()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PrefilterBoxTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v6 = qword_280A46AB8;
  v26 = v5;
  qword_280A46AB8 = v5;

  if (!qword_280A46AB8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPrefilteredLineShaderEffect variablePrefilterBoxTexture]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 900, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276215DE4()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PrefilterBoxTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46AC8;
  v26 = v5;
  qword_280A46AC8 = v5;

  if (!qword_280A46AC8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPrefilteredLineShaderEffect variablePrefilterBoxTextureCoordinate]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 901, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276215F98()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PrefilterLineColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46AD8;
  v26 = v5;
  qword_280A46AD8 = v5;

  if (!qword_280A46AD8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPrefilteredLineShaderEffect variablePrefilterLineColor]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 902, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276216324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_27621642C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_27621645C(void *a1, const char *a2)
{
  v3 = a1;
  v8 = objc_msgSend_valueStateForKey_(v3, v4, v5, v6, v7, a2);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = long]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = sub_276217A38(v3, a2, v10, v11, v12);

  return v28;
}

void sub_2762165B0()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PrefilterStrokeColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46AE8;
  v26 = v5;
  qword_280A46AE8 = v5;

  if (!qword_280A46AE8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPrefilteredLineOutputColorShaderEffect variablePrefilterStrokeColor]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 949, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276216920(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276216950(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v29 = a1;
  v9 = objc_msgSend_valueStateForKey_(v29, v5, v6, v7, v8, a2);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = glm::detail::tvec4<float>]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  sub_276217BDC(v29, a2, a3, v11, v12, v13);
}

void sub_276216AB8()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"StrokeTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v6 = qword_280A46AF8;
  v26 = v5;
  qword_280A46AF8 = v5;

  if (!qword_280A46AF8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DStrokePatternShaderEffect variableStrokeTexture]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 976, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276216DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_276216EC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276216FD0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B08;
  qword_280A46B08 = v11;

  if (!qword_280A46B08)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DGaussTexture texture]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1011, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276217380(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B18;
  qword_280A46B18 = v11;

  if (!qword_280A46B18)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DBoxTexture texture]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1026, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

uint64_t sub_2762178FC(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_27616222C(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v8[2] = a2[2];
  v8[3] = a2[3];
  v13 = 16 * v2 + 16;
  sub_2761621A4(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_276217A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276217A38(void *a1, const char *a2, double a3, double a4, double a5)
{
  v45 = 0;
  v5 = objc_msgSend_valueStateForKey_(a1, a2, a3, a4, a5, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v12 = objc_msgSend_objCType(v7, v8, v9, v10, v11);
    if (!sub_276217B84(v12))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = long]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v24 = v6;
      v29 = objc_msgSend_objCType(v24, v25, v26, v27, v28);
      v30 = v6;
      v35 = objc_msgSend_objCType(v30, v31, v32, v33, v34);
      sizep = 0;
      NSGetSizeAndAlignment(v35, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v36, v37, v38, v39, v18, v23, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v29, sizep, "q", 8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    objc_msgSend_getValue_(v6, v13, v14, v15, v16, &v45);
  }

  return v45;
}

BOOL sub_276217B84(uint64_t a1)
{
  if (*a1 != 113 || *(a1 + 1))
  {
    return 0;
  }

  sizep[1] = v1;
  sizep[2] = v2;
  sizep[0] = 0;
  NSGetSizeAndAlignment(a1, sizep, 0);
  return sizep[0] == 8;
}

void sub_276217BDC(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = 0;
  a3[1] = 0;
  v7 = objc_msgSend_valueStateForKey_(a1, a2, a4, a5, a6, a2);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v14 = objc_msgSend_objCType(v9, v10, v11, v12, v13);
    if (!sub_276217D30(v14))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = glm::detail::tvec4<float>]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v26 = v8;
      v31 = objc_msgSend_objCType(v26, v27, v28, v29, v30);
      v32 = v8;
      v37 = objc_msgSend_objCType(v32, v33, v34, v35, v36);
      sizep = 0;
      NSGetSizeAndAlignment(v37, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v38, v39, v40, v41, v20, v25, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v31, sizep, "{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}", 16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    }

    objc_msgSend_getValue_(v8, v15, v16, v17, v18, a3);
  }
}

BOOL sub_276217D30(const char *a1)
{
  if (strcmp(a1, "{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}"))
  {
    return 0;
  }

  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep == 16;
}

void sub_276218408(uint64_t a1, void *a2)
{
  v3 = a2;
  *v97 = 1065353216;
  *v98 = 0;
  *&v97[4] = 0;
  *&v98[8] = 1065353216;
  *&v98[12] = 0;
  v99 = 0;
  v100 = 1065353216;
  *v101 = 0uLL;
  *&v101[16] = 1065353216;
  objc_msgSend_replace_(v3, v4, v5, v6, v7, v97);
  v12 = *(a1 + 32);
  if (v12)
  {
    objc_msgSend_translation(v12, v8, v9, v10, v11);
  }

  else
  {
    memset(v97, 0, sizeof(v97));
  }

  objc_msgSend_translate_(v3, v8, v9, v10, v11, v97);
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_msgSend_offset(v17, v13, v14, v15, v16);
    v18 = v96;
  }

  else
  {
    v96 = 0.0;
    v18 = 0.0;
  }

  *v97 = v18;
  *&v97[8] = 0;
  objc_msgSend_translate_(v3, v13, v18, v15, v16, v97);
  objc_msgSend_rotation(*(a1 + 32), v19, v20, v21, v22);
  v24 = __sincosf_stret(v23 * 0.017453);
  v25 = (1.0 - v24.__cosval) * 0.0;
  v26 = v24.__cosval + (v25 * 0.0);
  v27 = (v25 * 0.0) + 0.0;
  v28 = v24.__sinval + v27;
  v29 = v25 + 0.0;
  v30 = v29 - (v24.__sinval * 0.0);
  v31 = v27 - v24.__sinval;
  v32 = v29 + (v24.__sinval * 0.0);
  v33 = ((1.0 - v24.__cosval) * 0.0) + 0.0;
  v34 = v33 + (v24.__sinval * 0.0);
  v35 = v33 - (v24.__sinval * 0.0);
  v36 = v24.__cosval + (1.0 - v24.__cosval);
  v37 = (v26 * 0.0) + (v28 * 0.0);
  *v97 = (v30 * 0.0) + (v26 + (v28 * 0.0));
  *&v97[4] = ((v26 * 0.0) + v28) + (v30 * 0.0);
  *&v97[8] = v30 + v37;
  *v98 = (v30 * 0.0) + v37;
  v38 = (v26 * 0.0) + (v31 * 0.0);
  *&v98[4] = ((v26 * 0.0) + v31) + (v32 * 0.0);
  *&v98[8] = (v32 * 0.0) + (v26 + (v31 * 0.0));
  *&v98[12] = v32 + v38;
  *&v98[16] = (v32 * 0.0) + v38;
  v39 = (v34 * 0.0) + (v35 * 0.0);
  v40 = v36 * 0.0;
  *&v41 = (v36 * 0.0) + (v34 + (v35 * 0.0));
  *&v42 = (v36 * 0.0) + (v35 + (v34 * 0.0));
  *&v43 = v36 + v39;
  *&v44 = v40 + v39;
  v99 = __PAIR64__(v42, v41);
  v100 = LODWORD(v43);
  *v101 = LODWORD(v44);
  *&v101[4] = xmmword_2764D5F20;
  objc_msgSend_multiply_(v3, v45, 0.0, v43, v44, v97);
  v50 = *(a1 + 32);
  if (v50)
  {
    objc_msgSend_alignmentOffset(v50, v46, v47, v48, v49);
    v51 = v96;
  }

  else
  {
    v51 = 0.0;
  }

  *v97 = v51;
  *&v97[8] = 0;
  objc_msgSend_translate_(v3, v46, v51, v48, v49, v97);
  v56 = *(a1 + 32);
  if (v56)
  {
    objc_msgSend_scale(v56, v52, v53, v54, v55);
  }

  else
  {
    memset(v97, 0, sizeof(v97));
  }

  objc_msgSend_scale_(v3, v52, v53, v54, v55, v97);
  *&v97[8] = 0;
  *v97 = 0;
  v97[10] = 1;
  *v98 = 0;
  *&v98[5] = 0;
  v61 = objc_msgSend_variableTexture(TSCH3DDiffuseTextureShaderEffect, v57, v58, v59, v60);
  v66 = objc_msgSend_label(*(a1 + 40), v62, v63, v64, v65);
  v71 = objc_msgSend_texture_resource_attributes_(v3, v67, v68, v69, v70, v61, v66, v97);

  v76 = objc_msgSend_effectsStates(v3, v72, v73, v74, v75);
  v81 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v77, v78, v79, v80, v71);
  v82 = objc_opt_class();
  objc_msgSend_setState_forStateInfo_(v76, v83, v84, v85, v86, v81, v82);

  v91 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v87, v88, v89, v90, 1);
  objc_msgSend_submit_(v3, v92, v93, v94, v95, v91);
}

void sub_27621950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29)
{
  v36 = v29;

  v38 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

id sub_276219A84(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_resource(TSCH3DDataBufferResource, a2, a3, a4, a5);
  v11 = objc_msgSend_bufferWithCapacity_dimension_(TSCH3DVectorDataBuffer, v7, v8, v9, v10, 0, *(a1 + 32));
  objc_msgSend_setBuffer_(v6, v12, v13, v14, v15, v11);

  return v6;
}

void sub_27621A67C(uint64_t a1, void *a2)
{
  v54 = a2;
  v7 = objc_msgSend_variableTexture(TSCH3DDiffuseTextureShaderEffect, v3, v4, v5, v6);
  v12 = objc_msgSend_textureAtIndex_(*(*(a1 + 32) + 32), v8, v9, v10, v11, *(a1 + 56));
  v17 = objc_msgSend_texture_resource_attributes_(v54, v13, v14, v15, v16, v7, v12, a1 + 64);

  v22 = objc_msgSend_effectsStates(v54, v18, v19, v20, v21);
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v17);
  v28 = objc_opt_class();
  objc_msgSend_setState_forStateInfo_(v22, v29, v30, v31, v32, v27, v28);

  objc_msgSend_p_submitExternalAttributesForIndex_processor_(*(a1 + 32), v33, v34, v35, v36, *(a1 + 56), v54);
  objc_msgSend_texcoords_(v54, v37, v38, v39, v40, *(a1 + 40));
  objc_msgSend_geometry_(v54, v41, v42, v43, v44, *(a1 + 48));
  v49 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v45, v46, v47, v48, 1);
  objc_msgSend_submit_(v54, v50, v51, v52, v53, v49);
}

uint64_t sub_27621A7F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 71) = *(a2 + 71);
  *(result + 64) = v2;
  *(result + 76) = *(a2 + 76);
  *(result + 80) = *(a2 + 80);
  *(result + 84) = *(a2 + 84);
  *(result + 88) = *(a2 + 88);
  return result;
}

uint64_t sub_27621B498(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v3, v4, v5, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec2<float>]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 41, 0, "invalid resource %@", v1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v22 = objc_msgSend_buffer(v1, v2, v3, v4, v5);
  if (!v22)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec2<float>]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 43, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_opt_class();
  if (v41 != objc_opt_class())
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec2<float>]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v57, v58, v59, v60, v47, v52, 44, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v54, v56);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  objc_msgSend_setChanged_(v1, v42, v43, v44, v45, 1);
  v69 = objc_msgSend_container(v22, v65, v66, v67, v68);

  return v69;
}

void sub_27621BD84(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_27621C2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DLabelsRenderer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_27621C85C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(*(a1 + 32) + 48);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCH3DLabelsRenderer p_renderCacheFromScene:created:createIfAbsent:]_block_invoke");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 686, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *(*(a1 + 32) + 48);
  }

  return MEMORY[0x2821F9670](v6, sel_labelsMeshRendererForLabelsRenderer_, a3, a4, a5);
}

void sub_27621CCAC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2762205E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  v11 = *(a1 + 8);
  if (*a1)
  {
    v12 = v11 + 1;
    *(a1 + 8) = v12;
    if (v12 >= *(a1 + 16))
    {
LABEL_3:
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 8) = v11 - 1;
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  v14 = objc_msgSend_methodForSelector_(v5, v6, v7, v8, v9, a3);
  v14(v10, a3);
  v13 = v10;
LABEL_6:

  return v13;
}

void sub_276220EB4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_276221D54(a1, a2 - v2);
  }
}

void sub_276221D54(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_276161760();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2761AAC20(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_276222424(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B30;
  qword_280A46B30 = v11;

  if (!qword_280A46B30)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DCategoryAxisLabelKind kind]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 108, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2762227E4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B40;
  qword_280A46B40 = v11;

  if (!qword_280A46B40)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DValueAxisLabelKind kind]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 126, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276222A7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276222B28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276222C30(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B50;
  qword_280A46B50 = v11;

  if (!qword_280A46B50)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSeriesLabelKind kind]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 145, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276223CBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276223D98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2762240A0()
{
  v0 = qword_280A46B60;
  qword_280A46B60 = MEMORY[0x277CBEBF8];
}

void sub_276224138()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_276224644(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v30 = objc_msgSend_p_platformSettingsDictionary(*(a1 + 32), a2, a3, a4, a5);
  v5 = [TSCH3DChartPlatformSettings alloc];
  v10 = objc_msgSend_initWithDictionary_(v5, v6, v7, v8, v9, v30);
  objc_storeStrong(&qword_280A46B70, v10);
  if (!qword_280A46B70)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "+[TSCH3DChartPlatformSettings sharedInstance]_block_invoke");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 454, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }
}

void sub_276226940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_2762277B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_2762277F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_p_interceptAnalysisFromCurrentModel(WeakRetained, v2, v3, v4, v5);

  return v6;
}

id sub_276227844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_axisAnalysisFromCurrentModel(WeakRetained, v2, v3, v4, v5);

  return v6;
}

void sub_2762279F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_276227A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_p_multiDataAxisAnalysisFromCurrentModel(WeakRetained, v2, v3, v4, v5);

  return v6;
}

void sub_276229B38(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = objc_msgSend_valueForAxis_groupIndex_(*(a1 + 32), a2, a4, a5, a6, *(a1 + 40), a2);
  if (!v8 || *(a1 + 48) == v8)
  {
    *(*(a1 + 56) + 8 * a3) = 0x7FF8000000000000;
    goto LABEL_10;
  }

  v21 = v8;
  objc_msgSend_doubleValue(v8, v9, v10, v11, v12);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    objc_msgSend_doubleModelToAxisValue_forSeries_(*(a1 + 40), v13, v14, v15, v16, *(a1 + 32));
    objc_msgSend_unitSpaceValueForDataSpaceValue_min_max_(*(a1 + 40), v18, v19, *(a1 + 64), *(a1 + 72));
    v17 = *(a1 + 56);
    if ((v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(v17 + 8 * a3) = v20;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(a1 + 56);
  }

  *(v17 + 8 * a3) = 0x7FF8000000000000;
LABEL_9:
  v8 = v21;
LABEL_10:
}

uint64_t sub_27622A6B4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(*(a1 + 32), a2, a2, *(a1 + 48), *(a1 + 56));
  *(*(a1 + 40) + 8 * a3) = v6;
  return result;
}

__CFString *sub_27622C5DC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"BAD";
  }

  else
  {
    return off_27A6B6D00[a1 - 1];
  }
}

void sub_27622CD34(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46B80;
  qword_280A46B80 = v2;

  v4 = qword_280A46B80;
  v9 = objc_msgSend_g_genericToSpecificPropertyMap(*(a1 + 32), v5, v6, v7, v8);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v10, v11, v12, v13, v9);

  v14 = qword_280A46B80;
  v23 = objc_msgSend_g_genericToSpecificPropertyMapCategoryAxis(TSCHMultiDataChartType, v15, v16, v17, v18);
  objc_msgSend_applyFromIntToIntDictionary_(v14, v19, v20, v21, v22, v23);
}

void sub_276232ACC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_specificPropertyForGeneric_(*(a1 + 32), a2, a3, a4, a5, a2))
  {
    v11 = objc_msgSend_valueForProperty_(*(a1 + 32), v7, v8, v9, v10, a2);
    if (!v11)
    {
      v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v15);
    }

    v54 = v11;
    v17 = objc_msgSend_objectForKey_(*(*(a1 + 40) + 24), v12, v13, v14, v15, a2);
    v21 = *(a1 + 40);
    if (v17)
    {
      if ((objc_msgSend_containsKey_(*(v21 + 16), v16, v18, v19, v20, a2) & 1) == 0)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCHPropertyMigrator visitExistingSeries:]_block_invoke");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 87, 0, "Something is out of whack");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      }

      if (objc_msgSend_intForKey_(*(*(a1 + 40) + 16), v22, v23, v24, v25, a2))
      {
        isEqual = objc_msgSend_isEqual_(v17, v41, v42, v43, v44, v54);
        objc_msgSend_setInt_forKey_(*(*(a1 + 40) + 16), v46, v47, v48, v49, isEqual, a2);
      }

      else
      {
        objc_msgSend_setInt_forKey_(*(*(a1 + 40) + 16), v41, v42, v43, v44, 0, a2);
      }
    }

    else
    {
      objc_msgSend_setObject_forKey_(*(v21 + 24), v16, v18, v19, v20, v54, a2);
      objc_msgSend_setInt_forKey_(*(*(a1 + 40) + 16), v50, v51, v52, v53, 1, a2);
    }
  }
}

void sub_276232D38(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (!objc_msgSend_specificPropertyForGeneric_(*(a1 + 32), a2, a3, a4, a5, a2) || !objc_msgSend_intForKey_(*(*(a1 + 40) + 16), v7, v8, v9, v10, a2))
  {
    return;
  }

  v44 = objc_msgSend_valueForProperty_(*(a1 + 32), v11, v12, v13, v14, a2);
  v19 = objc_msgSend_objectForKey_(*(*(a1 + 40) + 24), v15, v16, v17, v18, a2);
  v24 = v19;
  if (v44)
  {
    if (objc_msgSend_isEqual_(v19, v20, v21, v22, v23))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21, v22, v23);
  if (objc_msgSend_isEqual_(v29, v30, v31, v32, v33, v24))
  {
LABEL_10:

    goto LABEL_11;
  }

  isEqual = objc_msgSend_isEqual_(v24, v34, v35, v36, v37, 0);

  if ((isEqual & 1) == 0)
  {
LABEL_9:
    v39 = *(a1 + 48);
    v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v27, v28, a2);
    objc_msgSend_setObject_forKey_(v39, v40, v41, v42, v43, v24, v29);
    goto LABEL_10;
  }

LABEL_11:
}

void sub_276237420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276237438(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = objc_msgSend_referenceLines(a2, a2, a3, a4, a5);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v6 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  *(*(*(a1 + 32) + 8) + 24) = v13;
}

void sub_276239550(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a4, a5, a6);
  v10 = *(a1 + 32);
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, v12, v13, v14, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v16, v17, v18, v19, v9, v15);

  v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, v21, v22, v23, a2);
  v24 = *(a1 + 40);
  v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, v26, v27, v28, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v24, v30, v31, v32, v33, v34, v29);
}

void sub_276239A2C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46B90;
  qword_280A46B90 = v11;

  if (!qword_280A46B90)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DMetalVersion version]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMetalVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 21, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27623A690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_27623A6B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_p_downsampleDataFromCurrentModel(WeakRetained, v2, v3, v4, v5);

  return v6;
}

void sub_27623C200()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1160, 1184, 1189, 1185, 0);
  v6 = qword_280A46BA0;
  qword_280A46BA0 = v5;
}

void sub_27623D1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27623D208(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v81 = a2;
  v10 = a3;
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartSeries swapTuplesForMutations:forImport:]_block_invoke");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 811, 0, "invalid nil value for '%{public}s'", "outOldStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v49 = MEMORY[0x277D81150];
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartSeries swapTuplesForMutations:forImport:]_block_invoke");
  v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 812, 0, "invalid nil value for '%{public}s'", "outNewStyle");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
LABEL_3:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  v19 = v81;
  if (!v81)
  {
    IsPrivate = 1;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v33 = 1;
    goto LABEL_10;
  }

  v20 = objc_msgSend_chartInfo(WeakRetained, v81, v15, v16, v17);
  objc_opt_class();
  v21 = TSUCheckedDynamicCast();
  IsPrivate = objc_msgSend_seriesStyleIsPrivate_(v20, v22, v23, v24, v25, v21);

  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  v27 = objc_msgSend_chartInfo(v18, v19, v15, v16, v17);
  objc_opt_class();
  v28 = TSUCheckedDynamicCast();
  v33 = objc_msgSend_seriesStyleIsPrivate_(v27, v29, v30, v31, v32, v28);

LABEL_10:
  v64 = v33 ^ 1;
  if (((IsPrivate ^ 1) & 1) == 0 && (v64 & 1) == 0)
  {
    *a4 = v81;
LABEL_13:
    v65 = v10;
    *a5 = v10;
    goto LABEL_18;
  }

  if ((IsPrivate ^ 1 | v33))
  {
    if (((IsPrivate | v64) & 1) == 0)
    {
      *a4 = 0;
      goto LABEL_13;
    }

    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v15, v16, v17, "[TSCHChartSeries swapTuplesForMutations:forImport:]_block_invoke");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v73, v74, v75, v76, v67, v72, 828, 0, "mutations should never cause a switch between theme styles...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
  }

  else
  {
    *a4 = v81;
    *a5 = 0;
  }

LABEL_18:
}

void sub_27623DEA8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypePie, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46BB8;
  qword_280A46BB8 = v10;
}

void sub_27623DF2C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeDonut, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46BC8;
  qword_280A46BC8 = v10;
}

void sub_27623DFB0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeScatter, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46BD8;
  qword_280A46BD8 = v10;
}

void sub_27623E034(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeColumn, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46BE8;
  qword_280A46BE8 = v10;
}

void sub_27623E0B8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeBar, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46BF8;
  qword_280A46BF8 = v10;
}

void sub_27623E13C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeLine, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C08;
  qword_280A46C08 = v10;
}

void sub_27623E1C0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeArea, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C18;
  qword_280A46C18 = v10;
}

void sub_27623E244(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedColumn, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C28;
  qword_280A46C28 = v10;
}

void sub_27623E2C8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedBar, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C38;
  qword_280A46C38 = v10;
}

void sub_27623E34C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedArea, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C48;
  qword_280A46C48 = v10;
}

void sub_27623E3D0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeMixedColumn, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C58;
  qword_280A46C58 = v10;
}

void sub_27623E454(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeMixedLine, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C68;
  qword_280A46C68 = v10;
}

void sub_27623E4D8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeMixedArea, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C78;
  qword_280A46C78 = v10;
}

void sub_27623E55C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeBubble, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C88;
  qword_280A46C88 = v10;
}

void sub_27623E5E0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeRadarArea, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46C98;
  qword_280A46C98 = v10;
}

void sub_27623E664(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeColumn3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CA8;
  qword_280A46CA8 = v10;
}

void sub_27623E6E8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeLine3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CB8;
  qword_280A46CB8 = v10;
}

void sub_27623E76C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeArea3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CC8;
  qword_280A46CC8 = v10;
}

void sub_27623E7F0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedArea3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CD8;
  qword_280A46CD8 = v10;
}

void sub_27623E874(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypePie3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CE8;
  qword_280A46CE8 = v10;
}

void sub_27623E8F8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeDonut3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46CF8;
  qword_280A46CF8 = v10;
}

void sub_27623E97C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedColumn3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46D08;
  qword_280A46D08 = v10;
}

void sub_27623EA00(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeBar3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46D18;
  qword_280A46D18 = v10;
}

void sub_27623EA84(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend__singletonAlloc(TSCHChartSeriesTypeStackedBar3D, a5, a1, a2, a3);
  v10 = objc_msgSend_init(v5, v6, v7, v8, v9);
  v11 = qword_280A46D28;
  qword_280A46D28 = v10;
}

void sub_27623F2F0(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v23, v27, 16);
  if (v10)
  {
    v14 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        if (objc_msgSend_containsKey_(v16, v9, v11, v12, v13, a2, v23))
        {
          v17 = *(a1 + 40);
          v18 = objc_msgSend_intForKey_(v16, v9, v11, v12, v13, a2);
          objc_msgSend_addProperty_(v17, v19, v20, v21, v22, v18);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, v11, v12, v13, &v23, v27, 16);
    }

    while (v10);
  }
}

void sub_27623F4E0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v84[14] = *MEMORY[0x277D85DE8];
  v6 = (a1 + 32);
  v83 = objc_msgSend_pieSeries(*(a1 + 32), a2, a3, a4, a5);
  v84[0] = v83;
  v82 = objc_msgSend_barSeries(*v6, v7, v8, v9, v10);
  v84[1] = v82;
  v81 = objc_msgSend_columnSeries(*(a1 + 32), v11, v12, v13, v14);
  v84[2] = v81;
  v80 = objc_msgSend_lineSeries(*(a1 + 32), v15, v16, v17, v18);
  v84[3] = v80;
  v79 = objc_msgSend_areaSeries(*(a1 + 32), v19, v20, v21, v22);
  v84[4] = v79;
  v27 = objc_msgSend_radarAreaSeries(*(a1 + 32), v23, v24, v25, v26);
  v84[5] = v27;
  v32 = objc_msgSend_bubbleSeries(*(a1 + 32), v28, v29, v30, v31);
  v84[6] = v32;
  v37 = objc_msgSend_pie3DSeries(*(a1 + 32), v33, v34, v35, v36);
  v84[7] = v37;
  v42 = objc_msgSend_bar3DSeries(*(a1 + 32), v38, v39, v40, v41);
  v84[8] = v42;
  v47 = objc_msgSend_column3DSeries(*(a1 + 32), v43, v44, v45, v46);
  v84[9] = v47;
  v52 = objc_msgSend_line3DSeries(*(a1 + 32), v48, v49, v50, v51);
  v84[10] = v52;
  v57 = objc_msgSend_area3DSeries(*(a1 + 32), v53, v54, v55, v56);
  v84[11] = v57;
  v62 = objc_msgSend_mixedAreaSeries(*(a1 + 32), v58, v59, v60, v61);
  v84[12] = v62;
  v67 = objc_msgSend_mixedColumnSeries(*(a1 + 32), v63, v64, v65, v66);
  v84[13] = v67;
  v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, v69, v70, v71, v84, 14);
  v77 = objc_msgSend_copy(v72, v73, v74, v75, v76);
  v78 = qword_280A46D30;
  qword_280A46D30 = v77;
}

void sub_276240038()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A46D40;
  qword_280A46D40 = v0;
}

void sub_27624016C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], a5, a1, a2, a3, 1160);
  v27[0] = v5;
  v10 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v6, v7, v8, v9, 1184);
  v27[1] = v10;
  v15 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v11, v12, v13, v14, 1189);
  v27[2] = v15;
  v20 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v16, v17, v18, v19, 1185);
  v27[3] = v20;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v22, v23, v24, v27, 4);
  v26 = qword_280A46D50;
  qword_280A46D50 = v25;
}

void sub_276240260(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2762413D8()
{
  v0 = objc_alloc_init(TSCHPieElementBuilder);
  v1 = qword_280A46D68;
  qword_280A46D68 = v0;
}