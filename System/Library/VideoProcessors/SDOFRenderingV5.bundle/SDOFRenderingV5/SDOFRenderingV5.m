uint64_t sub_295EA9178()
{
  v0 = [SDOFResources alloc];
  qword_2A18AAF28 = objc_msgSend_initInstance(v0, v1, v2, v3);

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_295EAAA6C()
{

  return fig_log_get_emitter();
}

BOOL sub_295EAB384(void *a1, uint64_t a2, _DWORD *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = a1;
    objc_msgSend_stringWithUTF8String_(v7, v9, a2, v10);
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();

    result = Int32IfPresent != 0;
    if (Int32IfPresent)
    {
      *a3 = 0;
    }
  }

  return result;
}

float sub_295EAB41C(void *a1, uint64_t a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_295EAB5FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  if (!a2)
  {
    sub_295EB45B4();
LABEL_23:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    sub_295EB4540();
    goto LABEL_12;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v5, @"%s.brightLightExposureLevel", v6, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB44CC();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v8, @"%s.lowLightExposureLevel", v9, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB4458();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"%s.nearSubjectDistanceRatio", v11, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB43E4();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v12, @"%s.farSubjectDistanceRatio", v13, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB4370();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v14, @"%s.brightLightNearValue", v15, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB42FC();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v16, @"%s.brightLightFarValue", v17, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB4288();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v18, @"%s.lowLightNearValue", v19, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB4214();
    goto LABEL_23;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v20, @"%s.lowLightFarValue", v21, a2);
  if (!FigCFDictionaryGetFloat32IfPresent())
  {
    sub_295EB41A0();
    goto LABEL_23;
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  a3 = 1;
LABEL_12:

  return a3;
}

uint64_t sub_295EADD4C()
{

  return fig_log_get_emitter();
}

double sub_295EADD70@<D0>(_OWORD *a1@<X8>)
{
  a1[10] = xmmword_295EBA160;
  a1[11] = unk_295EBA170;
  *(a1 + 188) = unk_295EBA17C;
  a1[6] = xmmword_295EBA120;
  a1[7] = unk_295EBA130;
  a1[8] = xmmword_295EBA140;
  a1[9] = unk_295EBA150;
  a1[2] = xmmword_295EBA0E0;
  a1[3] = unk_295EBA0F0;
  a1[4] = xmmword_295EBA100;
  a1[5] = unk_295EBA110;
  result = dbl_295EBA0D0[0];
  *a1 = xmmword_295EBA0C0;
  a1[1] = *dbl_295EBA0D0;
  return result;
}

double sub_295EADDB4@<D0>(_OWORD *a1@<X8>)
{
  a1[2] = xmmword_295EBA1B8;
  a1[3] = unk_295EBA1C8;
  a1[4] = xmmword_295EBA1D8;
  result = dbl_295EBA1A8[0];
  *a1 = xmmword_295EBA198;
  a1[1] = *dbl_295EBA1A8;
  return result;
}

uint64_t sub_295EADFE0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295EAE014(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295EAE444()
{

  return fig_log_get_emitter();
}

id sub_295EAE6D0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2A18AAF38;
  v7 = qword_2A18AAF38;
  if (!qword_2A18AAF38)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = sub_295EB0BAC;
    v3[3] = &unk_29EDEA5B0;
    v3[4] = &v4;
    sub_295EB0BAC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_295EAE798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_295EAEADC(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = 1;
  if (PixelFormatType <= 792225327)
  {
    if (PixelFormatType == 641230384)
    {
      return v2;
    }

    v3 = 758670896;
  }

  else
  {
    if (PixelFormatType == 792225328 || PixelFormatType == 875704422)
    {
      return v2;
    }

    v3 = 2084070960;
  }

  if (PixelFormatType != v3)
  {
    v4 = CVPixelBufferGetAttributes();
    v7 = v4;
    if (v4)
    {
      v2 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"PixelFormatDescription", v6);
      if (!v2)
      {
LABEL_13:

        return v2;
      }

      v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"PixelFormatDescription", v9);
      v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"EquivalentUncompressedPixelFormat", v12);

      if (v13)
      {
        v16 = objc_msgSend_objectForKeyedSubscript_(v7, v14, @"PixelFormatDescription", v15);
        v19 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"EquivalentUncompressedPixelFormat", v18);
        v23 = objc_msgSend_unsignedIntValue(v19, v20, v21, v22);

        v2 = v23 == 875704422;
        goto LABEL_13;
      }
    }

    v2 = 0;
    goto LABEL_13;
  }

  return v2;
}

void sub_295EAFE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_295EB0948()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2A1390230;
  v7 = qword_2A1390230;
  if (!qword_2A1390230)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = sub_295EB0E24;
    v3[3] = &unk_29EDEA5B0;
    v3[4] = &v4;
    sub_295EB0E24(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_295EB0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_295EB0BAC(uint64_t a1)
{
  sub_295EB0C04();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMakeBlurMap");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A18AAF38 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_295EB838C();
    sub_295EB0C04();
  }
}

void sub_295EB0C04()
{
  v1[0] = 0;
  if (!qword_2A18AAF48)
  {
    v1[1] = MEMORY[0x29EDCA5F8];
    v1[2] = 3221225472;
    v1[3] = sub_295EB0CD4;
    v1[4] = &unk_29EDEA5D0;
    v1[5] = v1;
    v2 = xmmword_29EDEA650;
    v3 = 0;
    qword_2A18AAF48 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_2A18AAF48)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_295EB0CD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A18AAF48 = result;
  return result;
}

Class sub_295EB0D1C(uint64_t a1)
{
  sub_295EB0C04();
  result = objc_getClass("CCFacePoints");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A1390220 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_295EB83B4();
    return sub_295EB0D74(v3);
  }

  return result;
}

Class sub_295EB0D74(uint64_t a1)
{
  sub_295EB0C04();
  result = objc_getClass("CCMakeBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A1390228 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_295EB83DC();
    return sub_295EB0DCC(v3);
  }

  return result;
}

Class sub_295EB0DCC(uint64_t a1)
{
  sub_295EB0C04();
  result = objc_getClass("CCApplyBlurMap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A18AAF40 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_295EB8404();
    return sub_295EB0E24(v3);
  }

  return result;
}

Class sub_295EB0E24(uint64_t a1)
{
  sub_295EB0C04();
  result = objc_getClass("CCSDOFMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A1390230 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_295EB842C();
    return sub_295EB0E7C(v3);
  }

  return result;
}

Class sub_295EB0E7C(uint64_t a1)
{
  sub_295EB0C04();
  result = objc_getClass("CCApplyBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2A1390238 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_295EB8454();
    return sub_295EB0ED4(v3, v4, v5, v6);
  }

  return result;
}

BOOL sub_295EB0ED4(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, *MEMORY[0x29EDC0000], a4);
  v9 = v5;
  if (v5)
  {
    *a2 = objc_msgSend_intValue(v5, v6, v7, v8);
  }

  return v9 != 0;
}

uint64_t sub_295EB0F2C(int a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = (a1 - 1) >= 8;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v3 == 1)
  {
    *a2 = a1;
  }

  return v3;
}

BOOL sub_295EB0F50(void *a1, unsigned int a2, int a3, uint64_t a4, int *a5)
{
  v7 = a1;
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  v14 = v11;
  v128 = a3;
  if (v11 > a3)
  {
    sub_295EB847C();
  }

  else
  {
    *a5 = 0;
    if (v11)
    {
      v15 = 0;
      do
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(v7, v12, v15, v13, v125);
        v20 = objc_msgSend_landmarks(v16, v17, v18, v19);
        v24 = objc_msgSend_leftEye(v20, v21, v22, v23);

        v28 = objc_msgSend_landmarks(v16, v25, v26, v27);
        v32 = objc_msgSend_rightEye(v28, v29, v30, v31);

        v36 = objc_msgSend_landmarks(v16, v33, v34, v35);
        v40 = objc_msgSend_nose(v36, v37, v38, v39);

        v44 = objc_msgSend_landmarks(v16, v41, v42, v43);
        v48 = objc_msgSend_allPoints(v44, v45, v46, v47);

        if (v24)
        {
          if (v32)
          {
            if (v40)
            {
              if (objc_msgSend_pointCount(v24, v49, v50, v51))
              {
                if (objc_msgSend_pointCount(v32, v52, v53, v54))
                {
                  if (objc_msgSend_pointCount(v40, v55, v56, v57))
                  {
                    if (objc_msgSend_pointCount(v48, v58, v59, v60) == 65)
                    {
                      v61 = v24;
                      if (objc_msgSend_normalizedPoints(v61, v62, v63, v64))
                      {
                        v65 = v32;
                        if (objc_msgSend_normalizedPoints(v65, v66, v67, v68))
                        {
                          v69 = v40;
                          if (objc_msgSend_normalizedPoints(v69, v70, v71, v72))
                          {
                            v73 = v48;
                            if (objc_msgSend_normalizedPoints(v73, v74, v75, v76))
                            {
                              v130.f64[0] = 0.0;
                              objc_msgSend_boundingBox(v16, v77, v78, v79);
                              v129[0] = v80;
                              v129[1] = v81;
                              v129[2] = v82;
                              v129[3] = v83;
                              v84 = v24;
                              v88 = objc_msgSend_normalizedPoints(v84, v85, v86, v87);
                              v92 = objc_msgSend_pointCount(v24, v89, v90, v91);
                              v93 = 0uLL;
                              if (v92 >= 1)
                              {
                                v94 = v92 & 0x7FFFFFFF;
                                do
                                {
                                  v95 = *v88++;
                                  v93 = vaddq_f64(v93, v95);
                                  --v94;
                                }

                                while (v94);
                              }

                              v130 = vdivq_f64(v93, vdupq_lane_s64(COERCE__INT64(v92), 0));
                              sub_295EB12C0(a2, v130.f64, v129, (a4 + (*a5 << 6) + 16));
                              v96 = v32;
                              v100 = objc_msgSend_normalizedPoints(v96, v97, v98, v99);
                              v104 = objc_msgSend_pointCount(v32, v101, v102, v103);
                              v105 = 0uLL;
                              if (v104 >= 1)
                              {
                                v106 = v104 & 0x7FFFFFFF;
                                do
                                {
                                  v107 = *v100++;
                                  v105 = vaddq_f64(v105, v107);
                                  --v106;
                                }

                                while (v106);
                              }

                              v130 = vdivq_f64(v105, vdupq_lane_s64(COERCE__INT64(v104), 0));
                              sub_295EB12C0(a2, v130.f64, v129, (a4 + (*a5 << 6) + 32));
                              v108 = v40;
                              v112 = objc_msgSend_normalizedPoints(v108, v109, v110, v111);
                              v116 = objc_msgSend_pointCount(v40, v113, v114, v115);
                              if (v116 < 1)
                              {
                                v118 = 0uLL;
                              }

                              else
                              {
                                v117 = v116 & 0x7FFFFFFF;
                                v118 = 0uLL;
                                do
                                {
                                  v119 = *v112++;
                                  v118 = vaddq_f64(v118, v119);
                                  --v117;
                                }

                                while (v117);
                              }

                              v130 = vdivq_f64(v118, vdupq_lane_s64(COERCE__INT64(v116), 0));
                              v125 = a5;
                              sub_295EB12C0(a2, v130.f64, v129, (a4 + (*a5 << 6)));
                              v120 = v48;
                              v130 = *(objc_msgSend_normalizedPoints(v120, v121, v122, v123) + 736);
                              sub_295EB12C0(a2, v130.f64, v129, (a4 + (*a5 << 6) + 48));
                              ++*a5;
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

        ++v15;
      }

      while (v15 != v14);
    }
  }

  return v14 <= v128;
}

uint64_t sub_295EB12C0(uint64_t result, double *a2, double *a3, double *a4)
{
  v4 = *a3 + *a2 * a3[2];
  v5 = 1.0 - (a3[1] + a2[1] * a3[3]);
  *a4 = v4;
  a4[1] = v5;
  if (result > 4)
  {
    if (result > 6)
    {
      if (result != 7)
      {
        if (result != 8)
        {
          return result;
        }

        v8 = v4;
        v5 = 1.0 - v5;
        goto LABEL_16;
      }

      v6 = v4;
      v5 = 1.0 - v5;
    }

    else
    {
      if (result == 5)
      {
        v8 = v4;
LABEL_16:
        *a4 = v5;
        a4[1] = v8;
        return result;
      }

      v6 = v4;
    }

    v8 = 1.0 - v6;
    goto LABEL_16;
  }

  if (result == 2)
  {
    *a4 = 1.0 - v4;
  }

  else
  {
    if (result == 3)
    {
      v7 = 1.0 - v5;
      *a4 = 1.0 - v4;
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      v7 = 1.0 - v5;
    }

    a4[1] = v7;
  }

  return result;
}

int32x4_t sub_295EB1390@<Q0>(uint64_t a1@<X8>, int32x2_t a2@<D0>)
{
  *a1 = 0;
  *(a1 + 4) = 1065353216;
  *(a1 + 12) = 1065353216;
  result = vdupq_lane_s32(a2, 0);
  *(a1 + 16) = result;
  return result;
}

float sub_295EB13B4(float *a1, float *a2)
{
  if (!a1)
  {
    sub_295EB8568();
    return NAN;
  }

  if (!a2)
  {
    sub_295EB8504();
    return NAN;
  }

  v2 = a1[1] - *a1;
  v3 = 0.0;
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = fminf(fmaxf((*a2 - *a1) / v2, 0.0), 1.0);
  }

  v5 = a1[2];
  v6 = a1[3] - v5;
  if (v6 != 0.0)
  {
    v3 = fminf(fmaxf((a2[1] - v5) / v6, 0.0), 1.0);
  }

  return ((((v4 * (1.0 - v3)) * a1[6]) + ((v4 * v3) * a1[7])) + (((1.0 - v4) * v3) * a1[5])) + (((1.0 - v4) * (1.0 - v3)) * a1[4]);
}

double sub_295EB1478@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 1053609165;
  result = 4.62592898e-18;
  *a1 = xmmword_295EBA1F0;
  return result;
}

double sub_295EB1498@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_295EBA204;
  a1[1] = *algn_295EBA214;
  result = 9.68038197e-22;
  a1[2] = xmmword_295EBA224;
  a1[3] = unk_295EBA234;
  return result;
}

double sub_295EB14B4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 4915.20021;
  *a1 = xmmword_295EBA244;
  *(a1 + 16) = unk_295EBA254;
  return result;
}

uint64_t sub_295EB1D60()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295EB1D94(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295EB2014()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295EB2048(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295EB22EC()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB2360()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB23D8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB2450()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB24C8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB2540()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

void sub_295EB25B8(void *a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB2664(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB2708(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB279C(void *a1)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

uint64_t sub_295EB2828(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB28D4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB2980(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB2A2C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB40B0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4128()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB41A0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4214()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4288()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB42FC()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4370()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB43E4()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4458()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB44CC()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4540()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB45B4()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4628()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4698()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

void sub_295EB4708()
{
  sub_295EADD1C();
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB4798()
{
  sub_295EADD1C();
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB4828()
{
  sub_295EADD1C();
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB48B8()
{
  sub_295EADD1C();
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB4948()
{
  sub_295EADD1C();
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB49D8(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

void sub_295EB4A70(void *a1)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

uint64_t sub_295EB4B00()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4B78()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4BF0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4C68()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4CE0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4D58()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4DD0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4E48()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4EC0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB4F38()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB5478()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB54F4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB55A0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB564C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB56F8(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB57A4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5850(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB58FC(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB59A8(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5A54(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5B00(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5BAC(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5C58(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5D04(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5DB0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB5E5C()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB5ED8()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB5F54()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB5FD0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB665C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB6708()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6780()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB67F8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

void sub_295EB6870(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_295EAE41C();
  FigDebugAssert3();
}

uint64_t sub_295EB68FC()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB6978()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB69F0()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB6A6C()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB6AE8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6B60()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6BD8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6C50()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6CC8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6D40()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6DB8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6E30()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6EA8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB6F20(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB6FCC(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7078(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7124(uint64_t a1, char a2)
{
  fig_log_get_emitter();
  sub_295EAE41C();
  FigDebugAssert3();
  return a2 & 1;
}

uint64_t sub_295EB71B0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB725C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7308(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB73B4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7460()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB74D8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7550()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB75C8()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7640(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB76EC()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7764()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

void sub_295EB77DC(void *a1)
{
  fig_log_get_emitter();
  sub_295EAAA40();
  FigDebugAssert3();
}

uint64_t sub_295EB785C()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB78D4()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

void sub_295EB794C(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_295EAE41C();
  FigDebugAssert3();
}

uint64_t sub_295EB79DC()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7A54(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_295EAE41C();
  FigDebugAssert3();

  return objc_msgSend_releaseResources(a2, v3, v4, v5);
}

uint64_t sub_295EB7AF0()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7B68(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7C14(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7CC0()
{
  fig_log_get_emitter();
  sub_295EAE41C();
  return FigDebugAssert3();
}

uint64_t sub_295EB7D3C()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB7DB4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7E60(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7F0C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB7FB8(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8064(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8110()
{
  fig_log_get_emitter();
  sub_295EAAA40();
  return FigDebugAssert3();
}

uint64_t sub_295EB8188(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8234(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB82E0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295EB85CC(void *a1)
{
  sub_295EADC88();
  sub_295EB17F0();
  FigDebugAssert3();
}

uint64_t sub_295EB8634()
{
  sub_295EADC88();
  sub_295EB17F0();
  return FigDebugAssert3();
}

uint64_t sub_295EB868C()
{
  sub_295EADC88();
  sub_295EB17F0();
  return FigDebugAssert3();
}

uint64_t sub_295EB86E4()
{
  sub_295EADC88();
  sub_295EB17F0();
  return FigDebugAssert3();
}

uint64_t sub_295EB873C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB87E8(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8894(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8940(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB89EC(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8A98(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8B44(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8BF0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8C9C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8D48(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8DF4(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8EA0(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB8F4C()
{
  fig_log_get_emitter();
  sub_295EB22C0();
  return FigDebugAssert3();
}

uint64_t sub_295EB8FC4()
{
  fig_log_get_emitter();
  sub_295EB22C0();
  return FigDebugAssert3();
}

uint64_t sub_295EB903C(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB90E8(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB9194(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB9240(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB92EC(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295EB9398(_DWORD *a1)
{
  sub_295EAAA6C();
  sub_295EAAA58();
  FigDebugAssert3();
  sub_295EAAA6C();
  sub_295EAAA84();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}