void std::vector<webrtc::FrameEncodeMetadataWriter::TimingFramesLayerInfo>::__append(void *a1, unint64_t a2)
{
  v2 = a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 5)
  {
    if (!a2)
    {
LABEL_16:
      a1[1] = v3;
      return;
    }

    v9 = &v3[4 * a2];
    while (v3)
    {
      *v3 = 0;
      v3[1] = v3 + 1;
      v3[2] = v3 + 1;
      v3[3] = 0;
      v3 += 4;
      if (v3 == v9)
      {
        v3 = v9;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10 = 32 * v5;
    v11 = 0;
    v12 = 32 * v5 + 32 * a2;
    v13 = (32 * v5);
    while (v13)
    {
      *v13 = 0;
      v13[1] = v13 + 1;
      v13[2] = v13 + 1;
      v13[3] = 0;
      v13 += 4;
      if (v13 == v12)
      {
        v14 = *a1;
        v15 = a1[1];
        v16 = (v10 + *a1 - v15);
        if (v15 == *a1)
        {
          goto LABEL_46;
        }

        v30 = v10 + 32 * a2;
        v31 = 0;
        v32 = a1;
        v17 = *a1;
        v29 = (v10 + *a1 - v15);
        while (v16)
        {
          *v16 = *v17;
          v16[1] = v16 + 1;
          v16[2] = v16 + 1;
          v16[3] = 0;
          if (v17[2] != v17 + 1)
          {
            operator new();
          }

          v17 += 4;
          v16 += 4;
          if (v17 == v15)
          {
            while (v14)
            {
              if (v14[3])
              {
                v18 = v14[2];
                v19 = *(v14[1] + 8);
                v20 = *v18;
                *(v20 + 8) = v19;
                *v19 = v20;
                v14[3] = 0;
                if (v18 != v14 + 1)
                {
                  do
                  {
                    v22 = v18[1];
                    v23 = v18[16];
                    if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
                    {
                      v24 = *(v23 + 8);
                      if (v24)
                      {
                        v25 = v18;
                        v26 = *(v23 + 16);
                        v27 = *(v23 + 8);
                        if (v26 != v24)
                        {
                          do
                          {
                            v28 = *(v26 - 96);
                            if (v28)
                            {
                              *(v26 - 88) = v28;
                              operator delete(v28);
                            }

                            v26 -= 104;
                          }

                          while (v26 != v24);
                          v27 = *(v23 + 8);
                        }

                        *(v23 + 16) = v24;
                        operator delete(v27);
                        MEMORY[0x2743DA540](v23, 0x1020C40E72D6CFBLL);
                        v18 = v25;
                        if (!v25)
                        {
                          goto LABEL_44;
                        }
                      }

                      else
                      {
                        v21 = v18;
                        MEMORY[0x2743DA540](v23, 0x1020C40E72D6CFBLL);
                        v18 = v21;
                      }
                    }

                    operator delete(v18);
                    v18 = v22;
                  }

                  while (v22 != v14 + 1);
                }
              }

              v14 += 4;
              if (v14 == v15)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_44;
          }
        }

        break;
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v11 = v31;
  v2 = v32;
  v14 = *v32;
  v16 = v29;
  v12 = v30;
LABEL_46:
  *v2 = v16;
  v2[1] = v12;
  v2[2] = v11;
  if (v14)
  {

    operator delete(v14);
  }
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::EncodedImageBufferWrapper>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::anonymous namespace::EncodedImageBufferWrapper>::~RefCountedObject(void *result)
{
  *result = &unk_288293E90;
  v1 = result[3];
  result[3] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::EncodedImageBufferWrapper>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288293E90;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::EncodedImageBufferWrapper::data(webrtc::_anonymous_namespace_::EncodedImageBufferWrapper *this)
{
  return *(this + 3);
}

{
  return *(this + 3);
}

unint64_t *webrtc::CombineAndDeleteFrames@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = (result + 1);
  v3 = *result;
  v4 = *result >> 1;
  if (v4 != 1)
  {
    v6 = (result + 1);
    if (v3)
    {
      v6 = *v2;
    }

    if (v3 < 2)
    {
      __break(1u);
      return result;
    }

    v7 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = v7 + 1;
      v11 = (v7 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v12 = &v6[v11];
      v13 = v6 + 1;
      v14 = v11;
      do
      {
        v8 += *(*(v13 - 1) + 152);
        v9 += *(*v13 + 152);
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      v15 = v9 + v8;
      if (v10 == v11)
      {
LABEL_16:
        v18 = v2;
        if (v3)
        {
          v18 = *v2;
        }

        v19 = *v18;
        *v18 = 0;
        *a2 = v19;
        operator new();
      }
    }

    else
    {
      v15 = 0;
      v12 = v6;
    }

    v16 = &v6[v4];
    do
    {
      v17 = *v12++;
      v15 += *(v17 + 152);
    }

    while (v12 != v16);
    goto LABEL_16;
  }

  if (v3)
  {
    v2 = *v2;
  }

  v5 = *v2;
  *v2 = 0;
  *a2 = v5;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    *(a2 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISB_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSF_1EJS9_SA_EEERKSR_EEEDcSJ_DpT0_(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 48);
  if (v4 != -1)
  {
    if (!v4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_288293EC8[v4])(&v6, v3);
    a3 = v5;
  }

  *(v3 + 48) = -1;
  *v3 = *a3;
  *(v3 + 48) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISB_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSF_1EJS9_SA_EEERKSR_EEEDcSJ_DpT0_(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[3].n128_i32[0];
  if (v4 == 1)
  {
    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    if (a2 != a3)
    {
      v7 = a3[1].n128_u64[1];
      v6 = a3[2].n128_u64[0];

      std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>((a2 + 24), v7, v6, (v6 - v7) >> 3);
    }
  }

  else
  {
    v10 = *a3;
    v8 = a3[1].n128_u64[1];
    v11 = a3[1].n128_u64[0];
    v9 = a3[2].n128_u64[0];
    if (v9 != v8)
    {
      if (((v9 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v4 != -1)
    {
      (off_288293EC8[v4])(&v12, v3);
    }

    result = v10;
    *v3 = v10;
    v3[1].n128_u64[0] = v11;
    v3[1].n128_u64[1] = 0;
    v3[2].n128_u64[0] = 0;
    v3[2].n128_u64[1] = 0;
    v3[3].n128_u32[0] = 1;
  }

  return result;
}

char *std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(void **result, void *a2)
{
  if (*result)
  {
    **result = *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *a2;
  v4 = a2[1].n128_u64[0];
  *v2 = *a2;
  v2[1].n128_u64[0] = v4;
  v2[1].n128_u64[1] = 0;
  v2[2].n128_u64[0] = 0;
  v2[2].n128_u64[1] = 0;
  v6 = a2[1].n128_u64[1];
  v5 = a2[2].n128_u64[0];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webrtc::GetCorruptionScore(webrtc *this, const FrameInstrumentationData *a2, const webrtc::VideoFrame *a3)
{
  if (*(this + 3) == *(this + 4))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc");
    }

    return 0;
  }

  var2 = a2->var2;
  if (var2 != 0.0)
  {
    (***&var2)(*&a2->var2);
  }

  (*(**&var2 + 56))(&v77, COERCE_DOUBLE(*&var2));
  (*(**&var2 + 8))(COERCE_DOUBLE(*&var2));
  if (!v77)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v25 = a2->var2;
      if (v25 != 0.0)
      {
        (***&v25)(COERCE_DOUBLE(*&v25));
      }

      (*(**&v25 + 32))(COERCE_DOUBLE(*&v25));
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v58, v59, v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc");
      (*(**&v25 + 8))(COERCE_DOUBLE(*&v25));
    }

    v56 = v77;
    if (!v77)
    {
      return 0;
    }

    goto LABEL_47;
  }

  v73 = 2;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  if ((*this & 0x80000000) == 0)
  {
    HIDWORD(v73) = *this;
  }

  webrtc::HaltonFrameSampler::GetSampleCoordinatesForFrame(&v73, (*(this + 4) - *(this + 3)) >> 3, v13, v14, v15, v16, v17, v18);
  v20 = v71;
  v19 = v72;
  if (v71 == v72)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc");
    }

    v33 = v71;
    if (!v71)
    {
LABEL_46:
      v56 = v77;
      if (!v77)
      {
        return 0;
      }

LABEL_47:
      (*v56)[1](v56);
      return 0;
    }

LABEL_45:
    v72 = v33;
    operator delete(v33);
    goto LABEL_46;
  }

  v68 = v77;
  if (v77)
  {
    (**v77)(v77);
    v20 = v71;
    v19 = v72;
  }

  __p = 0;
  v66 = 0;
  v67 = 0;
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v21 = a2->var2;
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = (*(**&v21 + 40))(COERCE_DOUBLE(*&v21));
    v23 = a2->var2;
    if (v23 != 0.0)
    {
      v24 = (*(**&v23 + 48))(COERCE_DOUBLE(*&v23));
      goto LABEL_28;
    }
  }

  v24 = 0;
LABEL_28:
  webrtc::GetSampleValuesForFrame(&v68, &__p, v22, v24, &v69, *(this + 1));
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v68)
  {
    (*v68)[1](v68);
  }

  if (v69 == v70)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      v48 = v69;
      if (!v69)
      {
        goto LABEL_44;
      }
    }

    else
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc");
      v48 = v69;
      if (!v69)
      {
        goto LABEL_44;
      }
    }

LABEL_43:
    v70 = v48;
    operator delete(v48);
    goto LABEL_44;
  }

  v38 = *(this + 3);
  v39 = *(this + 4);
  v40 = (v39 - v38) >> 3;
  if (v40 == (v70 - v69) >> 4)
  {
    if (v39 != v38)
    {
      if (!(v40 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc");
    }

    v48 = v69;
    if (v69)
    {
      goto LABEL_43;
    }

LABEL_44:
    v33 = v71;
    if (!v71)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_evaluation.cc", 34, "values.size() == samples.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v34, v35, v36, v37, (v39 - v38) >> 3);
  return webrtc::FrameInstrumentationGenerator::OnCapturedFrame();
}

void webrtc::FrameInstrumentationGenerator::OnCapturedFrame(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 80));
  v4 = *(a1 + 40);
  if (v4 > 2)
  {
    v5 = *(a1 + 32);
    while (1)
    {
      v6 = *(*(a1 + 8) + 8 * (v5 / 0x12));
      if (!v6)
      {
        break;
      }

      v7 = v6 + 216 * (v5 % 0x12);
      v8 = *(v7 + 184);
      if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v10 = *(v8 + 16);
          v11 = *(v8 + 8);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 96);
              if (v12)
              {
                *(v10 - 88) = v12;
                operator delete(v12);
              }

              v10 -= 104;
            }

            while (v10 != v9);
            v11 = *(v8 + 8);
          }

          *(v8 + 16) = v9;
          operator delete(v11);
        }

        MEMORY[0x2743DA540](v8, 0x1020C40E72D6CFBLL);
      }

      v13 = *(v7 + 8);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = vaddq_s64(*(a1 + 32), xmmword_273B93620);
      *(a1 + 32) = v14;
      v5 = v14.i64[0];
      if (v14.i64[0] >= 0x24uLL)
      {
        operator delete(**(a1 + 8));
        *(a1 + 8) += 8;
        v4 = *(a1 + 40);
        v5 = *(a1 + 32) - 18;
        *(a1 + 32) = v5;
        if (v4 <= 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = v14.u64[1];
        if (v14.i64[1] <= 2uLL)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_37:
    __break(1u);
    return;
  }

  v5 = *(a1 + 32);
LABEL_22:
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = 18 * ((v16 - v15) >> 3) - 1;
  if (v16 == v15)
  {
    v17 = 0;
  }

  if (v17 == v4 + v5)
  {
    std::deque<webrtc::VideoFrame>::__add_back_capacity(a1);
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
  }

  if (v16 == v15)
  {
    goto LABEL_37;
  }

  v18 = *(a1 + 40) + *(a1 + 32);
  v19 = *(v15 + 8 * (v18 / 0x12));
  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = v19 + 216 * (v18 % 0x12);
  *v20 = *a2;
  v21 = *(a2 + 8);
  *(v20 + 8) = v21;
  if (v21)
  {
    (**v21)(v21);
  }

  v22 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = *(a2 + 48);
  v25 = *(a2 + 60);
  *(v20 + 76) = 0;
  *(v20 + 60) = v25;
  *(v20 + 48) = v24;
  *(v20 + 32) = v23;
  *(v20 + 16) = v22;
  *(v20 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(v20 + 76) = *(a2 + 76);
    v26 = *(a2 + 92);
    v27 = *(a2 + 108);
    v28 = *(a2 + 124);
    *(v20 + 140) = *(a2 + 140);
    *(v20 + 108) = v27;
    *(v20 + 124) = v28;
    *(v20 + 92) = v26;
    *(v20 + 144) = 1;
  }

  v29 = *(a2 + 148);
  *(v20 + 161) = *(a2 + 161);
  *(v20 + 148) = v29;
  v30 = *(a2 + 184);
  *(v20 + 184) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
  }

  v31 = *(a2 + 192);
  *(v20 + 208) = *(a2 + 208);
  *(v20 + 192) = v31;
  ++*(a1 + 40);

  pthread_mutex_unlock((a1 + 80));
}

void webrtc::FrameInstrumentationGenerator::OnEncodedImage(webrtc::FrameInstrumentationGenerator *this@<X0>, const webrtc::EncodedImage *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 38);
  pthread_mutex_lock((this + 80));
  if (!*(this + 5))
  {
    goto LABEL_40;
  }

  v74 = v6;
  v11 = *(this + 4);
  while (1)
  {
    v4 = *(*(this + 1) + 8 * (v11 / 0x12)) + 216 * (v11 % 0x12);
    v13 = *(v4 + 16);
    if (v6 - v13 != 0x80000000)
    {
      break;
    }

    if (v6 <= v13)
    {
      goto LABEL_25;
    }

LABEL_9:
    v3 = *(v4 + 184);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      v14 = *(v3 + 1);
      if (v14)
      {
        v15 = *(v3 + 2);
        v16 = *(v3 + 1);
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 12);
            if (v17)
            {
              *(v15 - 11) = v17;
              operator delete(v17);
            }

            v15 -= 13;
          }

          while (v15 != v14);
          v16 = *(v3 + 1);
        }

        *(v3 + 2) = v14;
        operator delete(v16);
      }

      MEMORY[0x2743DA540](v3, 0x1020C40E72D6CFBLL);
    }

    v18 = *(v4 + 8);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = vaddq_s64(*(this + 2), xmmword_273B93620);
    *(this + 2) = v19;
    v11 = v19.i64[0];
    if (v19.i64[0] >= 0x24uLL)
    {
      operator delete(**(this + 1));
      *(this + 1) += 8;
      v12 = *(this + 5);
      v11 = *(this + 4) - 18;
      *(this + 4) = v11;
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    else if (!v19.i64[1])
    {
      goto LABEL_40;
    }
  }

  if (v6 != v13 && ((v6 - v13) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  if (v6 != v13)
  {
LABEL_40:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_generator.cc");
    }

    v33 = 0;
    v34 = a3;
    *a3 = 0;
    goto LABEL_43;
  }

  v20 = *(v4 + 8);
  if (v20)
  {
    (**v20)(v20);
    v74 = *(v4 + 16);
  }

  v4 = *(v4 + 184);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  v21 = *(a2 + 156);
  v22 = *(a2 + 23);
  if ((v22 & 0x100000000) == 0)
  {
    LODWORD(v22) = 0;
  }

  if ((v21 & 0x100000000) == 0)
  {
    LODWORD(v21) = 0;
  }

  if (v22 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (*(a2 + 6) == 3)
  {
    goto LABEL_38;
  }

  v41 = *(this + 6);
  v42 = (this + 56);
  if (v41 != this + 56)
  {
    v43 = 0;
    do
    {
      v44 = *(v41 + 14) == v6;
      if (*(v41 + 14) == v6)
      {
        goto LABEL_38;
      }

      v45 = *(v41 + 1);
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = *(v41 + 2);
          v47 = *v46 == v41;
          v41 = v46;
        }

        while (!v47);
      }

      v43 |= v44;
      v41 = v46;
    }

    while (v46 != v42);
    if (v43)
    {
LABEL_38:
      v24 = *(this + 7);
      if (v24)
      {
        v25 = *(this + 7);
        do
        {
          while (1)
          {
            v39 = v25;
            v40 = *(v25 + 7);
            if (v23 >= v40)
            {
              break;
            }

            v25 = *v39;
            if (!*v39)
            {
              goto LABEL_73;
            }
          }

          if (v40 >= v23)
          {
            *(v39 + 14) = *(a2 + 38);
            v77 = 1;
            v48 = (this + 56);
            goto LABEL_89;
          }

          v25 = v39[1];
        }

        while (v25);
      }

LABEL_73:
      operator new();
    }
  }

  v24 = *v42;
  if (!*v42)
  {
    goto LABEL_83;
  }

  v49 = (this + 56);
  v50 = *v42;
  do
  {
    if (*(v50 + 7) >= v23)
    {
      v49 = v50;
    }

    v50 = *&v50[8 * (*(v50 + 7) < v23)];
  }

  while (v50);
  if (v49 != v42 && v23 >= *(v49 + 7))
  {
    v77 = 0;
    v48 = (this + 56);
    if (!v24)
    {
LABEL_92:
      operator new();
    }

    while (1)
    {
LABEL_89:
      while (1)
      {
        v58 = v24;
        v59 = *(v24 + 7);
        if (v23 >= v59)
        {
          break;
        }

        v24 = *v58;
        if (!*v58)
        {
          goto LABEL_92;
        }
      }

      if (v59 >= v23)
      {
        break;
      }

      v24 = *(v58 + 1);
      if (!v24)
      {
        goto LABEL_92;
      }
    }

    v60 = *(v58 + 9);
    if (v77)
    {
      v61 = (v60 & 0xFFFFFF80) + 128;
      if ((v60 & 0x7F) == 0)
      {
        v61 = *(v58 + 9);
      }

      if (v60 <= 16256)
      {
        v62 = v61;
      }

      else
      {
        v62 = 0;
      }

      v63 = *v48;
      if (!*v48)
      {
LABEL_105:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v64 = v63;
          v65 = *(v63 + 7);
          if (v23 >= v65)
          {
            break;
          }

          v63 = *v64;
          if (!*v64)
          {
            goto LABEL_105;
          }
        }

        if (v65 >= v23)
        {
          break;
        }

        v63 = v64[1];
        if (!v63)
        {
          goto LABEL_105;
        }
      }

      if ((v62 & 0x80000000) == 0)
      {
        *(v64 + 9) = v62;
      }
    }

    v66 = *v48;
    if (!*v48)
    {
LABEL_114:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v67 = v66;
        v68 = *(v66 + 7);
        if (v23 >= v68)
        {
          break;
        }

        v66 = *v67;
        if (!*v67)
        {
          goto LABEL_114;
        }
      }

      if (v68 >= v23)
      {
        break;
      }

      v66 = v67[1];
      if (!v66)
      {
        goto LABEL_114;
      }
    }

    if (__PAIR64__(*(v67 + 44), *(v67 + 10)) == (v74 | 0x100000000))
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 57, "*rtp_timestamp_last_frame_sampled_ != rtp_timestamp", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v7, v8, v9, v10, v74);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((v77 & 1) != 0 || (v71 = *(v67 + 13), v72 = __OFSUB__(v71, 1), v73 = v71 - 1, (v73 < 0) ^ v72) || !*(v67 + 44) || (v74 - *(v67 + 10)) >= 0x15F90)
    {
      v69 = *(v67 + 12);
      if (v69 <= 0)
      {
        v70 = -(-v69 & 7);
      }

      else
      {
        v70 = v67[6] & 7;
      }

      *(v67 + 12) = v69 + 1;
      *(v67 + 13) = 32 - v70;
      *(v67 + 10) = v74;
      *(v67 + 44) = 1;
      operator new();
    }

    *(v67 + 13) = v73;
    v34 = a3;
    v3 = v20;
    *a3 = 0;
    v33 = 1;
  }

  else
  {
LABEL_83:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/frame_instrumentation_generator.cc");
    }

    v34 = a3;
    *a3 = 0;
    v33 = 1;
    v3 = v20;
  }

LABEL_43:
  v34[56] = 0;
  pthread_mutex_unlock((this + 80));
  if (v33)
  {
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      v35 = *(v4 + 8);
      if (v35)
      {
        v36 = *(v4 + 16);
        v37 = *(v4 + 8);
        if (v36 != v35)
        {
          do
          {
            v38 = *(v36 - 96);
            if (v38)
            {
              *(v36 - 88) = v38;
              operator delete(v38);
            }

            v36 -= 104;
          }

          while (v36 != v35);
          v37 = *(v4 + 8);
        }

        *(v4 + 16) = v35;
        operator delete(v37);
      }

      MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
    }

    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

webrtc::QpParser *webrtc::QpParser::QpParser(webrtc::QpParser *this)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init(this, &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 8) = &unk_2882941B0;
  *(this + 72) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 176), &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 30) = &unk_2882941B0;
  *(this + 248) = 0;
  *(this + 304) = 0;
  *(this + 308) = 0;
  *(this + 340) = 0;
  *(this + 344) = 0;
  *(this + 348) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 352), &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 52) = &unk_2882941B0;
  *(this + 424) = 0;
  *(this + 480) = 0;
  *(this + 484) = 0;
  *(this + 516) = 0;
  *(this + 520) = 0;
  *(this + 524) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 528), &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 74) = &unk_2882941E0;
  *(this + 676) = 0;
  *(this + 680) = 0;
  *(this + 684) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 657) = 0u;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 688), &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 94) = &unk_2882941E0;
  *(this + 836) = 0;
  *(this + 840) = 0;
  *(this + 844) = 0;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 817) = 0u;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init((this + 848), &v3);
  pthread_mutexattr_destroy(&v3);
  *(this + 114) = &unk_2882941E0;
  *(this + 996) = 0;
  *(this + 1000) = 0;
  *(this + 1004) = 0;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 977) = 0u;
  return this;
}

uint64_t webrtc::RtpFrameObject::RtpFrameObject(uint64_t a1, __int16 a2, __int16 a3, char a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint16x4_t *a10, char a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, void (****a19)(void))
{
  v22 = (a1 + 4456);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = -1;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 144) = 0;
  v23 = (a1 + 144);
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 157) = 0;
  *(a1 + 152) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 232) = 0;
  v60 = a1 + 232;
  *(a1 + 300) = 0;
  *(a1 + 304) = 0;
  *(a1 + 306) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 322) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 400) = 1;
  *(a1 + 408) = -1;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 2056) = 1;
  *(a1 + 2064) = 0;
  *(a1 + 2272) = 0;
  *(a1 + 2280) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = 0;
  v61 = a1 + 2424;
  *(a1 + 2424) = 0;
  *(a1 + 2480) = 0;
  bzero((a1 + 432), 0x658uLL);
  *(a1 + 2488) = 0;
  *(a1 + 2496) = -1;
  *a1 = &unk_288293F08;
  v24 = *a19;
  *(a1 + 2504) = *a19;
  if (v24)
  {
    (**v24)(v24);
  }

  *(a1 + 2512) = 0;
  *(a1 + 2656) = 0;
  *(a1 + 2664) = 0;
  *(a1 + 2671) = 0;
  *(a1 + 2679) = 1;
  *(a1 + 2684) = 0;
  *(a1 + 2688) = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2718) = 0;
  *(a1 + 2712) = 0;
  *(a1 + 2724) = -1;
  *(a1 + 2728) = 0;
  *(a1 + 2796) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2802) = 0;
  *(a1 + 4448) = 0;
  *v22 = 0;
  v22[24] = 0;
  v22[32] = 0;
  v22[88] = 0;
  *(a1 + 4556) = a2;
  *(a1 + 4558) = a3;
  *(a1 + 4560) = a7;
  v25 = a1 + 4568;
  *(a1 + 4584) = 0;
  *(a1 + 4568) = 0u;
  *(a1 + 4592) = a5;
  webrtc::RTPVideoHeader::operator=(a1 + 2512, a15);
  *(a1 + 4552) = a12;
  if (*(a1 + 2480) == *(a17 + 56))
  {
    v26 = a4;
    v27 = a8;
    v28 = a9;
    v29 = a11;
    if (!*(a1 + 2480))
    {
      goto LABEL_18;
    }

    v30 = *(a1 + 2472);
    v31 = *(a17 + 48);
    if (v30 == -1)
    {
      if (v31 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (v31 == -1)
    {
      (off_288293F80[v30])(&v67, v61);
      *(a1 + 2472) = -1;
      goto LABEL_18;
    }

    v67 = v61;
    (off_288293F90[v31])(&v67);
  }

  else
  {
    if (*(a1 + 2480))
    {
      v32 = *(a1 + 2472);
      v26 = a4;
      v27 = a8;
      v28 = a9;
      if (v32 != -1)
      {
        (off_288293F80[v32])(&v67, v61);
      }

      *(a1 + 2472) = -1;
      *(a1 + 2480) = 0;
    }

    else
    {
      *(a1 + 2424) = 0;
      *(a1 + 2472) = -1;
      v33 = *(a17 + 48);
      v26 = a4;
      v28 = a9;
      if (v33 != -1)
      {
        v67 = v61;
        (off_288293FA0[v33])(&v67, a17);
        *(a1 + 2472) = v33;
      }

      *(a1 + 2480) = 1;
      v27 = a8;
    }

    v29 = a11;
  }

LABEL_18:
  webrtc::EncodedFrame::CopyCodecSpecific(a1, a1 + 2512);
  *(a1 + 416) = v29;
  *(a1 + 160) = v27;
  *(a1 + 16) = v28;
  *(a1 + 32) = *(a1 + 2664);
  *(a1 + 120) = *(a1 + 2688);
  *(a1 + 136) = *(a1 + 2704);
  v34 = *(a1 + 2504);
  if (v34)
  {
    (**v34)(*(a1 + 2504));
    (**v34)(v34);
  }

  if (*v23)
  {
    (*(**v23 + 8))(*v23);
  }

  *(a1 + 144) = v34;
  *(a1 + 152) = (*(*v34 + 48))(v34);
  (*(*v34 + 8))(v34);
  v35 = *(a1 + 2670);
  *(a1 + 8) = *(a1 + 2668);
  *(a1 + 12) = v35;
  if (*a18)
  {
    v36 = a16;
    if (*(*a18 + 8) == *(*a18 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    {
      operator new();
    }

    v37 = *webrtc::RtpPacketInfos::empty_entries(void)::value;
    if (*a18)
    {
      v36 = a16;
      if (v37 == *(*a18 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      {
        operator new();
      }

      v36 = a16;
      if (v37 == *(webrtc::RtpPacketInfos::empty_entries(void)::value + 1))
      {
        goto LABEL_34;
      }
    }
  }

  if (*a18)
  {
    v38 = *(*a18 + 8);
    if (v25 != v38 + 8)
    {
LABEL_33:
      std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>((a1 + 4568), *(v38 + 8), *(v38 + 16), (*(v38 + 16) - *(v38 + 8)) >> 2);
    }
  }

  else
  {
    {
      operator new();
    }

    v38 = *webrtc::RtpPacketInfos::empty_entries(void)::value;
    if (v25 != *webrtc::RtpPacketInfos::empty_entries(void)::value + 8)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  v39 = *a18;
  *a18 = 0;
  v40 = *(a1 + 312);
  *(a1 + 312) = v39;
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    v41 = v26;
    v42 = *(v40 + 8);
    if (v42)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 8);
      if (v43 != v42)
      {
        do
        {
          v45 = *(v43 - 96);
          if (v45)
          {
            *(v43 - 88) = v45;
            operator delete(v45);
          }

          v43 -= 104;
        }

        while (v43 != v42);
        v44 = *(v40 + 8);
      }

      *(v40 + 16) = v42;
      operator delete(v44);
    }

    MEMORY[0x2743DA540](v40, 0x1020C40E72D6CFBLL);
    v26 = v41;
  }

  *(a1 + 36) = a13;
  if (*(a1 + 300) == *(v36 + 68))
  {
    v46 = a6;
    v47 = a7;
    if (*(a1 + 300))
    {
      *v60 = *v36;
      v48 = *(v36 + 16);
      v49 = *(v36 + 32);
      v50 = *(v36 + 48);
      *(v60 + 64) = *(v36 + 64);
      *(v60 + 32) = v49;
      *(v60 + 48) = v50;
      *(v60 + 16) = v48;
    }
  }

  else
  {
    v46 = a6;
    v47 = a7;
    if (*(a1 + 300))
    {
      *(a1 + 300) = 0;
    }

    else
    {
      *v60 = *v36;
      v51 = *(v36 + 16);
      v52 = *(v36 + 32);
      v53 = *(v36 + 48);
      *(v60 + 64) = *(v36 + 64);
      *(v60 + 32) = v52;
      *(v60 + 48) = v53;
      *(v60 + 16) = v51;
      *(a1 + 300) = 1;
    }
  }

  v54 = *(a1 + 2800);
  *(a1 + 304) = v54;
  *(a1 + 306) = BYTE2(v54);
  *(a1 + 40) = a14;
  v55 = a10[1].u8[4];
  if (v55 != 255)
  {
    v56 = *(a1 + 16);
    v57 = vmovl_u16(*a10);
    v58 = vdupq_n_s64(v56);
    *(a1 + 72) = vaddw_high_u32(v58, v57);
    *(a1 + 56) = vaddw_u32(v58, *v57.i8);
    *(a1 + 88) = v56 + a10[1].u16[0];
    *(a1 + 96) = v56 + a10[1].u16[1];
  }

  *(a1 + 104) = v46;
  *(a1 + 112) = v47;
  *(a1 + 48) = v55;
  *(a1 + 400) = v26;
  return a1;
}

uint64_t webrtc::RTPVideoHeader::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) != *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      if (*(a1 + 112))
      {
        operator delete(*(a1 + 120));
        if ((*(a1 + 64) & 1) == 0)
        {
LABEL_18:
          if ((*(a1 + 16) & 1) == 0)
          {
LABEL_20:
            *(a1 + 144) = 0;
            goto LABEL_39;
          }

LABEL_19:
          operator delete(*(a1 + 24));
          goto LABEL_20;
        }
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*(a1 + 72));
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    *a1 = *a2;
    *(a1 + 16) = 0;
    v10 = (a1 + 16);
    v11 = (a2 + 16);
    v12 = *(a2 + 16);
    if (v12 < 2)
    {
      *(a1 + 64) = 0;
      v13 = (a1 + 64);
      v14 = (a2 + 64);
      v15 = *(a2 + 64);
      if (v15 < 2)
      {
        goto LABEL_23;
      }

LABEL_34:
      if (v15)
      {
        absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::InitFrom(v13, v14);
        *(a1 + 112) = 0;
        v16 = (a1 + 112);
        v17 = (a2 + 112);
        v18 = *(a2 + 112);
        if (v18 < 2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        *(a1 + 64) = v15;
        v21 = *(a2 + 72);
        v22 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v22;
        *(a1 + 72) = v21;
        *(a1 + 112) = 0;
        v16 = (a1 + 112);
        v17 = (a2 + 112);
        v18 = *(a2 + 112);
        if (v18 < 2)
        {
          goto LABEL_38;
        }
      }

LABEL_24:
      if (v18)
      {
        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v16, v17);
      }

      else
      {
        *(a1 + 112) = v18;
        *(a1 + 120) = *(a2 + 120);
      }

      goto LABEL_38;
    }

    if (v12)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(v10, v11);
      *(a1 + 64) = 0;
      v13 = (a1 + 64);
      v14 = (a2 + 64);
      v15 = *(a2 + 64);
      if (v15 >= 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *(a1 + 16) = v12;
      v19 = *(a2 + 24);
      v20 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v20;
      *(a1 + 24) = v19;
      *(a1 + 64) = 0;
      v13 = (a1 + 64);
      v14 = (a2 + 64);
      v15 = *(a2 + 64);
      if (v15 >= 2)
      {
        goto LABEL_34;
      }
    }

LABEL_23:
    *(a1 + 112) = 0;
    v16 = (a1 + 112);
    v17 = (a2 + 112);
    v18 = *(a2 + 112);
    if (v18 >= 2)
    {
      goto LABEL_24;
    }

LABEL_38:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = 1;
    goto LABEL_39;
  }

  if (*(a1 + 144))
  {
    *a1 = *a2;
    if (a1 != a2)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = *(a2 + 24);
      }

      else
      {
        v5 = a2 + 24;
      }

      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v5, v4 >> 1);
      v6 = *(a2 + 64);
      if (v6)
      {
        v7 = *(a2 + 72);
      }

      else
      {
        v7 = a2 + 72;
      }

      absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>((a1 + 64), v7, v6 >> 1);
      v8 = *(a2 + 112);
      if (v8)
      {
        v9 = *(a2 + 120);
      }

      else
      {
        v9 = a2 + 120;
      }

      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((a1 + 112), v9, v8 >> 1);
    }

    *(a1 + 136) = *(a2 + 136);
  }

LABEL_39:
  v23 = *(a2 + 152);
  v24 = *(a2 + 168);
  v25 = *(a2 + 184);
  *(a1 + 197) = *(a2 + 197);
  *(a1 + 184) = v25;
  *(a1 + 168) = v24;
  *(a1 + 152) = v23;
  v26 = (a1 + 216);
  v27 = (a2 + 216);
  if (*(a1 + 284) == *(a2 + 284))
  {
    if (*(a1 + 284))
    {
      *v26 = *v27;
      v28 = *(a2 + 232);
      v29 = *(a2 + 248);
      v30 = *(a2 + 264);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 248) = v29;
      *(a1 + 264) = v30;
      *(a1 + 232) = v28;
    }
  }

  else if (*(a1 + 284))
  {
    *(a1 + 284) = 0;
  }

  else
  {
    *v26 = *v27;
    v31 = *(a2 + 232);
    v32 = *(a2 + 248);
    v33 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 248) = v32;
    *(a1 + 264) = v33;
    *(a1 + 232) = v31;
    *(a1 + 284) = 1;
  }

  v34 = *(a2 + 288);
  *(a1 + 290) = *(a2 + 290);
  *(a1 + 288) = v34;
  v35 = *(a1 + 1936);
  v36 = *(a2 + 1936);
  if (v35 == -1)
  {
    if (v36 == -1)
    {
      goto LABEL_50;
    }
  }

  else if (v36 == -1)
  {
    (off_288293F30[v35])(&v44, a1 + 296);
    *(a1 + 1936) = -1;
    goto LABEL_50;
  }

  v44 = a1 + 296;
  (off_288293F58[v36])(&v44);
LABEL_50:
  v37 = *(a2 + 1944);
  *(a1 + 1953) = *(a2 + 1953);
  *(a1 + 1944) = v37;
  v38 = a1 + 1976;
  if (*(a1 + 2032) == *(a2 + 2032))
  {
    if (!*(a1 + 2032))
    {
      return a1;
    }

    v39 = *(a1 + 2024);
    v40 = *(a2 + 2024);
    if (v39 == -1)
    {
      if (v40 == -1)
      {
        return a1;
      }
    }

    else if (v40 == -1)
    {
      (off_288293F80[v39])(&v44, v38);
      *(a1 + 2024) = -1;
      return a1;
    }

    v44 = a1 + 1976;
    (off_288293F90[v40])(&v44);
    return a1;
  }

  else if (*(a1 + 2032))
  {
    v42 = *(a1 + 2024);
    if (v42 != -1)
    {
      (off_288293F80[v42])(&v44, v38);
    }

    *(a1 + 2024) = -1;
    *(a1 + 2032) = 0;
    return a1;
  }

  else
  {
    *(a1 + 1976) = 0;
    *(a1 + 2024) = -1;
    v43 = *(a2 + 2024);
    if (v43 != -1)
    {
      v44 = a1 + 1976;
      (off_288293FA0[v43])(&v44, a2 + 1976);
      *(a1 + 2024) = v43;
    }

    *(a1 + 2032) = 1;
    return a1;
  }
}

void webrtc::RtpFrameObject::~RtpFrameObject(webrtc::RtpFrameObject *this)
{
  *this = &unk_288293F08;
  v2 = *(this + 571);
  if (v2)
  {
    *(this + 572) = v2;
    operator delete(v2);
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader((this + 2512));
  v3 = *(this + 313);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_288293250;
  if (*(this + 2480) != 1)
  {
    if (*(this + 2408) != 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 2280));
    if (*(this + 2272) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = *(this + 618);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v4])(&v5, this + 2424);
  }

  *(this + 618) = -1;
  if (*(this + 2408) == 1)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*(this + 2272) == 1)
  {
LABEL_8:
    webrtc::GenericFrameInfo::~GenericFrameInfo((this + 2064));
  }

LABEL_9:
  webrtc::EncodedImage::~EncodedImage((this + 8));
}

{
  *this = &unk_288293F08;
  v2 = *(this + 571);
  if (v2)
  {
    *(this + 572) = v2;
    operator delete(v2);
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader((this + 2512));
  v3 = *(this + 313);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_288293250;
  if (*(this + 2480) == 1)
  {
    v4 = *(this + 618);
    if (v4 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v4])(&v5, this + 2424);
    }

    *(this + 618) = -1;
    if (*(this + 2408) != 1)
    {
LABEL_7:
      if (*(this + 2272) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (*(this + 2408) != 1)
  {
    goto LABEL_7;
  }

  webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 2280));
  if (*(this + 2272) != 1)
  {
LABEL_9:
    webrtc::EncodedImage::~EncodedImage((this + 8));

    JUMPOUT(0x2743DA540);
  }

LABEL_8:
  webrtc::GenericFrameInfo::~GenericFrameInfo((this + 2064));
  goto LABEL_9;
}

void absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 5;
    v6 = a1 + 1;
    if (a3 <= 5)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 2 * v5;
    if (v19 <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v19;
    }

    if (!(v20 >> 61))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (a3 < v4 >> 1)
  {
    v8 = 0;
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v4 >> 1;
  }

  if (!v9)
  {
    v11 = a2;
    if (v7 >= a3)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v10 = 0;
  if (v9 < 4)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = (a2 + 8 * (v9 & 0x7FFFFFFFFFFFFFFCLL));
  v12 = (a2 + 16);
  v13 = v6 + 2;
  v14 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  v3 = (a2 + 8 * (v9 & 0x7FFFFFFFFFFFFFFCLL));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = &v6[v10];
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v7 < a3)
  {
LABEL_25:
    if (v6)
    {
      v21 = &v6[v7];
      v22 = 0;
      if (v8 < 4 || (v21 - v11) < 0x20)
      {
        v23 = v11;
      }

      else
      {
        v22 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        v23 = &v11[v8 & 0xFFFFFFFFFFFFFFFCLL];
        v24 = (v11 + 2);
        v25 = v21 + 2;
        v26 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v8 == v22)
        {
          goto LABEL_35;
        }
      }

      v28 = v8 - v22;
      v29 = &v21[v22];
      do
      {
        v30 = *v23++;
        *v29++ = v30;
        --v28;
      }

      while (v28);
LABEL_35:
      v4 = *a1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v4 & 1 | (2 * a3);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *(a2 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 1640);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_288293F30[v2])(&v3, v1);
  }

  *(v1 + 1640) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[102].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_288293F30[v4])(&v7, v3);
    a3 = v6;
  }

  v3[102].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[102].n128_u32[2] = 1;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t a1, void *__dst, void *__src)
{
  v4 = *a1;
  v5 = *(*a1 + 1640);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (off_288293F30[v5])(&v7, v4);
LABEL_7:
    v4[410] = -1;
    result = memcpy(v4, __src, 0x668uLL);
    v4[410] = 2;
    return result;
  }

  return memcpy(__dst, __src, 0x668uLL);
}

char *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = *result;
  v5 = *(*result + 1640);
  v6 = *a3;
  if (v5 == 3)
  {
    *a2 = v6;
    if (a2 != a3)
    {
      v7 = a2;
      result = std::vector<webrtc::NaluInfo>::__assign_with_size[abi:sn200100]<webrtc::NaluInfo*,webrtc::NaluInfo*>((a2 + 8), a3[1], a3[2], 0xAAAAAAAAAAAAAAABLL * ((a3[2] - a3[1]) >> 2));
      a2 = v7;
    }

    *(a2 + 32) = *(a3 + 8);
  }

  else
  {
    v9 = a3[1];
    v8 = a3[2];
    if (v8 != v9)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10 = *(a3 + 8);
    if (v5 != -1)
    {
      result = (off_288293F30[v5])(&v11, v4);
    }

    *v4 = v6;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = v10;
    *(v4 + 1640) = 3;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE16__generic_assignB8sn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t result, _WORD *a2, _WORD *a3)
{
  v3 = *result;
  v4 = *(*result + 1640);
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_288293F30[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 1640) = 4;
  return result;
}

char *std::vector<webrtc::NaluInfo>::__assign_with_size[abi:sn200100]<webrtc::NaluInfo*,webrtc::NaluInfo*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0x1555555555555555;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - result) >> 2) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void webrtc::CloneAudioFrame(uint64_t a1)
{
  if ((*(*a1 + 96))(a1) == 1)
  {

    webrtc::CloneReceiverAudioFrame(a1);
  }

  webrtc::CloneSenderAudioFrame(a1);
}

webrtc::FramerateControllerDeprecated *webrtc::FramerateControllerDeprecated::FramerateControllerDeprecated(webrtc::FramerateControllerDeprecated *this, float a2)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = -1;
  *(this + 88) = 0;
  *(this + 92) = 0x447A000000000000;
  *(this + 104) = vdupq_n_s64(0x3E8uLL);
  webrtc::RateStatistics::Reset((this + 24));
  if (*(this + 12) == 1)
  {
    webrtc::RateStatistics::Update(v4, 1, *(this + 2));
  }

  *this = a2;
  *(this + 4) = 1;
  *(this + 4) = 85 * (1000.0 / a2) / 0x64;
  return this;
}

unint64_t webrtc::FramerateControllerDeprecated::DropFrame(webrtc::FramerateControllerDeprecated *this, unsigned int a2)
{
  if (*(this + 12) == 1 && *(this + 2) > a2)
  {
    return 0;
  }

  v4 = a2;
  result = webrtc::RateStatistics::Rate((this + 24), a2);
  if (*(this + 4))
  {
    if ((v6 & 1) != 0 && *this < result)
    {
      return 1;
    }

    return *(this + 12) == 1 && v4 - *(this + 2) < *(this + 4);
  }

  __break(1u);
  return result;
}

void webrtc::FramerateControllerDeprecated::AddFrame(webrtc::FramerateControllerDeprecated *this, unsigned int a2)
{
  if (*(this + 12) == 1 && *(this + 2) > a2)
  {
    webrtc::RateStatistics::Reset((this + 24));
    if (*(this + 12) == 1)
    {
      *(this + 12) = 0;
    }
  }

  webrtc::RateStatistics::Update((this + 24), 1, a2);
  *(this + 2) = a2;
  *(this + 12) = 1;
}

webrtc::FullBandErleEstimator *webrtc::FullBandErleEstimator::FullBandErleEstimator(webrtc::FullBandErleEstimator *this, float32x2_t *a2, unint64_t a3)
{
  *this = vadd_f32(vmul_f32(vcvt_f32_u32(vadd_f32(*a2, vdup_n_s32(0x3A83126Fu))), 0x3400000034000000), vdup_n_s32(0xC2FDE2A9));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  webrtc::FullBandErleEstimator::Reset(this, 0);
  return this;
}

void webrtc::FullBandErleEstimator::Reset(webrtc::FullBandErleEstimator *this, int32x2_t a2)
{
  v3 = *(this + 7);
  v2 = *(this + 8);
  if (v3 == v2)
  {
LABEL_16:
    v14 = *(this + 4);
    v15 = *(this + 5) - v14;
    v16 = v15 >> 2;
    if (v15 >> 2 >= 1)
    {
      a2.i32[0] = *this;
      if (v16 < 8)
      {
        v17 = v15 >> 2;
        v18 = *(this + 4);
        goto LABEL_22;
      }

      v17 = (v15 >> 2) & 7;
      v18 = &v14->i32[v16 & 0x7FFFFFFFFFFFFFF8];
      v19 = vdupq_lane_s32(a2, 0);
      v20 = v14 + 1;
      v21 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_22:
        *v18 = a2.i32[0];
        if (v17 >= 2)
        {
          v18[1] = a2.i32[0];
          if (v17 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v18[2] = a2.i32[0];
            if ((v17 & 6) != 2)
            {
              v18[3] = a2.i32[0];
              if (v17 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v18[4] = a2.i32[0];
                if ((v17 & 6) != 4)
                {
                  v18[5] = a2.i32[0];
                  if (v17 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v18[6] = a2.i32[0];
                  }
                }
              }
            }
          }
        }
      }
    }

    v22 = *(this + 2) - *(this + 1);
    if (v22 >= 1)
    {
      bzero(*(this + 1), v22);
    }

    return;
  }

  v4 = *(this + 7);
  do
  {
    if (*(v4 + 8) == 1)
    {
      *(v4 + 8) = 0;
    }

    *(v4 + 28) = 0;
    *(v4 + 12) = xmmword_273B93750;
    v4 += 36;
  }

  while (v4 != v2);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  a2.i32[1] = 0;
  while (1)
  {
    v8 = v3 + v5;
    if (*(v8 + 8) == 1)
    {
      v9 = *(v8 + 12);
      v10 = fmaxf(v9, 0.0);
      if (*v8)
      {
        v9 = v10;
      }

      if (*(v8 + 1) == 1)
      {
        v9 = fminf(v9, 1.0);
      }

      v11 = 0x100000000;
    }

    else
    {
      v11 = 0;
      v9 = 0.0;
    }

    v12 = *(this + 10);
    if (v7 >= (*(this + 11) - v12) >> 3)
    {
      break;
    }

    v13 = v12 + v6;
    *(v13 + 4) = BYTE4(v11);
    *v13 = v11 | LODWORD(v9);
    ++v7;
    v3 = *(this + 7);
    v6 += 8;
    v5 += 36;
    if (v7 >= 0x8E38E38E38E38E39 * ((*(this + 8) - v3) >> 2))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t webrtc::FullBandErleEstimator::Update(uint64_t result, float *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a5)
  {
    v8 = 0;
    while (a8[1] > v8)
    {
      if ((*(*a8 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = 0.0;
        if (a3)
        {
          v10 = 4 * a3;
          v11 = a2;
          do
          {
            v12 = *v11++;
            v9 = v9 + v12;
            v10 -= 4;
          }

          while (v10);
        }

        if (v9 > (a3 * 44015000.0))
        {
          v13 = *(result + 56);
          if (0x8E38E38E38E38E39 * ((*(result + 64) - v13) >> 2) <= v8)
          {
            break;
          }

          v14 = (a4 + 260 * v8);
          v15 = (a6 + 260 * v8);
          v16 = ((((((((((((((((((((((((((((((((((((((((((*v14 + 0.0) + v14[1]) + v14[2]) + v14[3]) + v14[4]) + v14[5]) + v14[6]) + v14[7]) + v14[8]) + v14[9]) + v14[10]) + v14[11]) + v14[12]) + v14[13]) + v14[14]) + v14[15]) + v14[16]) + v14[17]) + v14[18]) + v14[19]) + v14[20]) + v14[21]) + v14[22]) + v14[23]) + v14[24]) + v14[25]) + v14[26]) + v14[27]) + v14[28]) + v14[29]) + v14[30]) + v14[31]) + v14[32]) + v14[33]) + v14[34]) + v14[35]) + v14[36]) + v14[37]) + v14[38]) + v14[39]) + v14[40]) + v14[41]) + v14[42];
          v17 = ((((((((((((((((((((((((((((((((((((((((((*v15 + 0.0) + v15[1]) + v15[2]) + v15[3]) + v15[4]) + v15[5]) + v15[6]) + v15[7]) + v15[8]) + v15[9]) + v15[10]) + v15[11]) + v15[12]) + v15[13]) + v15[14]) + v15[15]) + v15[16]) + v15[17]) + v15[18]) + v15[19]) + v15[20]) + v15[21]) + v15[22]) + v15[23]) + v15[24]) + v15[25]) + v15[26]) + v15[27]) + v15[28]) + v15[29]) + v15[30]) + v15[31]) + v15[32]) + v15[33]) + v15[34]) + v15[35]) + v15[36]) + v15[37]) + v15[38]) + v15[39]) + v15[40]) + v15[41]) + v15[42];
          v18 = v13 + 36 * v8;
          v19 = ((((((((((((((((((((((v17 + v15[43]) + v15[44]) + v15[45]) + v15[46]) + v15[47]) + v15[48]) + v15[49]) + v15[50]) + v15[51]) + v15[52]) + v15[53]) + v15[54]) + v15[55]) + v15[56]) + v15[57]) + v15[58]) + v15[59]) + v15[60]) + v15[61]) + v15[62]) + v15[63]) + v15[64]) + *(v18 + 28);
          v20 = ((((((((((((((((((((((v16 + v14[43]) + v14[44]) + v14[45]) + v14[46]) + v14[47]) + v14[48]) + v14[49]) + v14[50]) + v14[51]) + v14[52]) + v14[53]) + v14[54]) + v14[55]) + v14[56]) + v14[57]) + v14[58]) + v14[59]) + v14[60]) + v14[61]) + v14[62]) + v14[63]) + v14[64]) + *(v18 + 24);
          *(v18 + 24) = v20;
          *(v18 + 28) = v19;
          LODWORD(v15) = *(v18 + 32) + 1;
          *(v18 + 32) = v15;
          if (v15 == 6)
          {
            if (v19 <= 0.0)
            {
              *(v18 + 32) = 0;
              *(v18 + 24) = 0;
            }

            else
            {
              v21 = vcvts_n_f32_u32(COERCE_UNSIGNED_INT((v20 / v19) + 0.001), 0x17uLL) + -126.94;
              *(v18 + 4) = v21;
              *(v18 + 8) = 1;
              *(v18 + 32) = 0;
              *(v18 + 24) = 0;
              v22 = *(v18 + 20);
              v23 = *(v18 + 16) + -0.0004;
              if (v23 < v21)
              {
                v23 = v21;
              }

              if (v21 >= (v22 + 0.0004))
              {
                v24 = v22 + 0.0004;
              }

              else
              {
                v24 = v21;
              }

              *(v18 + 16) = v23;
              *(v18 + 20) = v24;
              v25 = 0.0;
              if (v23 > v24)
              {
                v25 = (v21 - v24) / (v23 - v24);
              }

              v26 = *(v18 + 12);
              if (v25 <= v26)
              {
                v27 = v26 + ((v25 - v26) * 0.07);
              }

              else
              {
                v27 = v25;
              }

              *(v18 + 12) = v27;
              v28 = *(result + 8);
              if (v8 >= (*(result + 16) - v28) >> 2)
              {
                break;
              }

              *(v28 + 4 * v8) = 100;
              v29 = *(result + 56);
              if (0x8E38E38E38E38E39 * ((*(result + 64) - v29) >> 2) <= v8)
              {
                break;
              }

              v30 = *(v29 + 36 * v8 + 4);
              if ((v30 & 0x100000000) == 0)
              {
                goto LABEL_50;
              }

              v31 = *(result + 32);
              if (v8 >= (*(result + 40) - v31) >> 2)
              {
                break;
              }

              v32 = *(v31 + 4 * v8) + ((*&v30 - *(v31 + 4 * v8)) * 0.05);
              *(v31 + 4 * v8) = v32;
              if (v32 < *result)
              {
                v32 = *result;
              }

              *(v31 + 4 * v8) = v32;
            }
          }
        }
      }

      v33 = *(result + 8);
      if (v8 >= (*(result + 16) - v33) >> 2)
      {
        break;
      }

      v34 = *(v33 + 4 * v8) - 1;
      *(v33 + 4 * v8) = v34;
      if (!v34)
      {
        v35 = *(result + 56);
        if (0x8E38E38E38E38E39 * ((*(result + 64) - v35) >> 2) <= v8)
        {
          break;
        }

        v36 = v35 + 36 * v8;
        if (*(v36 + 8) == 1)
        {
          *(v36 + 8) = 0;
        }

        *(v36 + 12) = 0;
        *(v36 + 32) = 0;
        *(v36 + 24) = 0;
      }

      if (++v8 == a5)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
LABEL_37:
    v37 = *(result + 56);
    if (*(result + 64) == v37)
    {
      return result;
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    while (1)
    {
      v41 = v37 + v38;
      if (*(v41 + 8) == 1)
      {
        v42 = *(v41 + 12);
        v43 = fmaxf(v42, 0.0);
        if (*v41)
        {
          v42 = v43;
        }

        if (*(v41 + 1) == 1)
        {
          v42 = fminf(v42, 1.0);
        }

        v44 = 0x100000000;
      }

      else
      {
        v44 = 0;
        v42 = 0.0;
      }

      v45 = *(result + 80);
      if (v40 >= (*(result + 88) - v45) >> 3)
      {
        break;
      }

      v46 = v45 + v39;
      *(v46 + 4) = BYTE4(v44);
      *v46 = v44 | LODWORD(v42);
      ++v40;
      v37 = *(result + 56);
      v39 += 8;
      v38 += 36;
      if (v40 >= 0x8E38E38E38E38E39 * ((*(result + 64) - v37) >> 2))
      {
        return result;
      }
    }
  }

  __break(1u);
LABEL_50:
  v47 = std::__throw_bad_optional_access[abi:sn200100]();
  return WebRtc_g722_decode(v47, v48, v49, v50, v51, v52, v53);
}

uint64_t WebRtc_g722_decode(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, int8x16_t a7)
{
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (a1[1])
      {
        v14 = a1[119];
        v15 = a1[3];
        v16 = a1[118];
        if (v14 < v15)
        {
          v17 = *(a3 + v10++);
          v16 |= v17 << v14;
          v14 += 8;
        }

        v18 = v16 & ~(-1 << v15);
        a1[118] = v16 >> v15;
        a1[119] = v14 - v15;
      }

      else
      {
        v18 = *(a3 + v10++);
        v15 = a1[3];
      }

      v19 = v18 & 0xF;
      v20 = v18 >> 4;
      v21 = v18 >> 5;
      v22 = &WebRtc_g722_decode_qm5 + 4 * (v18 & 0x1F);
      v23 = (v18 >> 1) & 0xF;
      v24 = v18 >> 6;
      v25 = &WebRtc_g722_decode_qm6 + 4 * (v18 & 0x3F);
      v26 = (v18 >> 2) & 0xF;
      if (v15 == 7)
      {
        v26 = v23;
      }

      else
      {
        LOBYTE(v21) = v24;
      }

      if (v15 != 7)
      {
        v22 = v25;
      }

      v27 = v15 == 6;
      if (v15 == 6)
      {
        v28 = v20;
      }

      else
      {
        v28 = v21;
      }

      if (v15 == 6)
      {
        v29 = v19;
      }

      else
      {
        v29 = v26;
      }

      if (v27)
      {
        v30 = &WebRtc_g722_decode_qm4[v19];
      }

      else
      {
        v30 = v22;
      }

      v31 = a1[72];
      v32 = a1[28] + ((v31 * *v30) >> 15);
      if (v32 <= -16384)
      {
        v32 = -16384;
      }

      if (v32 >= 0x3FFF)
      {
        v33 = 0x3FFF;
      }

      else
      {
        v33 = v32;
      }

      v34 = (WebRtc_g722_decode_qm4[v29] * v31) >> 15;
      v35 = WebRtc_g722_decode_wl[WebRtc_g722_decode_rl42[v29]] + ((127 * a1[71]) >> 7);
      if (v35 >= 18432)
      {
        v36 = 18432;
      }

      else
      {
        v36 = v35;
      }

      v37 = v36 & ~(v36 >> 31);
      a1[71] = v37;
      v38 = (v37 >> 6) & 0x1F;
      v37 >>= 11;
      v39 = WebRtc_g722_decode_ilb[v38];
      v40 = v39 << (v37 - 8);
      v41 = v39 >> (8 - v37);
      if (v35 <= 18431)
      {
        v42 = v41;
      }

      else
      {
        v42 = v40;
      }

      a1[72] = 4 * v42;
      block4(a1, 0, v34, a5, a6, a7);
      if (a1[2])
      {
        if (!*a1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v43 = (a1[117] * WebRtc_g722_decode_qm2[v28 & 3]) >> 15;
        v44 = v43 + a1[73];
        if (v44 <= -16384)
        {
          v44 = -16384;
        }

        if (v44 >= 0x3FFF)
        {
          v12 = 0x3FFF;
        }

        else
        {
          v12 = v44;
        }

        v45 = WebRtc_g722_decode_wh[WebRtc_g722_decode_rh2[v28 & 3]] + ((127 * a1[116]) >> 7);
        if (v45 >= 22528)
        {
          v46 = 22528;
        }

        else
        {
          v46 = WebRtc_g722_decode_wh[WebRtc_g722_decode_rh2[v28 & 3]] + ((127 * a1[116]) >> 7);
        }

        v47 = v46 & ~(v46 >> 31);
        a1[116] = v47;
        v48 = (v47 >> 6) & 0x1F;
        v47 >>= 11;
        v49 = WebRtc_g722_decode_ilb[v48];
        v50 = v49 << (v47 - 10);
        v51 = v49 >> (10 - v47);
        if (v45 <= 22527)
        {
          v52 = v51;
        }

        else
        {
          v52 = v50;
        }

        a1[117] = 4 * v52;
        block4(a1, 1u, v43, a5, a6, a7);
        if (!*a1)
        {
LABEL_50:
          if (a1[2])
          {
            *(a2 + 2 * v11++) = 2 * v33;
          }

          else
          {
            memmove(a1 + 4, a1 + 6, 0x58uLL);
            v53 = 3 * a1[4] - 11 * (a1[6] + v12 + v33) + 12 * a1[8] + 32 * a1[10] - 210 * a1[12] + 951 * a1[14] + 3876 * a1[16] - 805 * a1[18] + 362 * a1[20] - 156 * a1[22] + 53 * a1[24];
            v54 = (3 * (v33 - v12) + 53 * a1[7] - 156 * a1[9] + 362 * a1[11] - 805 * a1[13] + 3876 * a1[15] + 951 * a1[17] - 210 * a1[19] + 32 * a1[21] + 12 * a1[23] - 11 * (a1[25] + a1[5])) >> 11;
            if (v54 <= -32768)
            {
              v54 = -32768;
            }

            if (v54 >= 0x7FFF)
            {
              LOWORD(v54) = 0x7FFF;
            }

            v55 = (a2 + 2 * v11);
            *v55 = v54;
            v56 = v53 >> 11;
            if (v56 <= -32768)
            {
              v56 = -32768;
            }

            if (v56 >= 0x7FFF)
            {
              LOWORD(v56) = 0x7FFF;
            }

            v55[1] = v56;
            a1[26] = v12 + v33;
            a1[27] = v33 - v12;
            v11 += 2;
          }

          goto LABEL_4;
        }
      }

      v13 = (a2 + 2 * v11);
      *v13 = 2 * v33;
      v11 += 2;
      v13[1] = 2 * v12;
LABEL_4:
      if (v10 >= a4)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t block4(uint64_t a1, unsigned int a2, int a3, double a4, double a5, int8x16_t a6)
{
  v6 = a1 + 180 * a2;
  v8 = *(v6 + 112);
  v7 = v6 + 112;
  *(v7 + 60) = a3;
  v9 = v8 + a3;
  if (v8 + a3 <= -32768)
  {
    v9 = -32768;
  }

  if (v9 >= 0x7FFF)
  {
    v9 = 0x7FFF;
  }

  *(v7 + 12) = v9;
  v10 = *(v7 + 8) + a3;
  if (v10 <= -32768)
  {
    v10 = -32768;
  }

  if (v10 >= 0x7FFF)
  {
    v10 = 0x7FFF;
  }

  *(v7 + 48) = v10;
  v11 = v10 >> 15;
  v12 = *(v7 + 52);
  v13 = *(v7 + 28);
  LODWORD(result) = 4 * v13;
  if (4 * v13 <= -32768)
  {
    LODWORD(result) = -32768;
  }

  if (result >= 0x7FFF)
  {
    LODWORD(result) = 0x7FFF;
  }

  if (v11 == v12 >> 15)
  {
    LODWORD(result) = -result;
    v15 = 192;
  }

  else
  {
    v15 = -192;
  }

  if (result >= 0x7FFF)
  {
    result = 0x7FFFLL;
  }

  else
  {
    result = result;
  }

  if (v11 == *(v7 + 56) >> 15)
  {
    v16 = 128;
  }

  else
  {
    v16 = -128;
  }

  v17 = v16 + ((32512 * *(v7 + 32)) >> 15) + (result >> 7);
  if (v17 <= -12288)
  {
    v17 = -12288;
  }

  if (v17 >= 12288)
  {
    v17 = 12288;
  }

  if (v15 + ((32640 * v13) >> 15) <= -32768)
  {
    v18 = -32768;
  }

  else
  {
    v18 = v15 + ((32640 * v13) >> 15);
  }

  if (v18 >= 0x7FFF)
  {
    v18 = 0x7FFF;
  }

  *(v7 + 40) = v18;
  *(v7 + 44) = v17;
  v19 = 15360 - v17;
  if (v18 > 15360 - v17 || (v19 = v17 - 15360, v18 < v17 - 15360))
  {
    *(v7 + 40) = v19;
  }

  if (a3)
  {
    v20 = -128;
  }

  else
  {
    v20 = 0;
  }

  *(v7 + 144) = a3 >> 15;
  a6.i64[0] = *(v7 + 80);
  v21 = vshr_n_s32(*a6.i8, 0xFuLL);
  *(v7 + 164) = v21;
  v22 = vdupq_n_s32(a3 >> 15);
  v23 = vdupq_n_s32((a3 != 0) << 7);
  v24 = vdupq_n_s32(v20);
  v25 = vdupq_n_s32(0x7F80u);
  v26 = vmin_s32(vmax_s32(vsra_n_s32(vbsl_s8(vceq_s32(v21, *v22.i8), *v23.i8, *v24.i8), vmul_s32(*(v7 + 108), *v25.i8), 0xFuLL), 0x7F0000007FLL), 0x7F0000007FLL);
  *(v7 + 136) = v26;
  *(v7 + 108) = v26;
  v27 = *(v7 + 64);
  v28 = vshrq_n_s32(v27, 0xFuLL);
  *(v7 + 148) = v28.i32[0];
  v29 = vsraq_n_s32(vbslq_s8(vceqq_s32(v28, v22), v23, v24), vmulq_s32(*(v7 + 92), v25), 0xFuLL);
  v30.i64[0] = 0x7F0000007FLL;
  v30.i64[1] = 0x7F0000007FLL;
  v31.i64[0] = 0x7F0000007FLL;
  v31.i64[1] = 0x7F0000007FLL;
  v32 = vminq_s32(vmaxq_s32(v29, v30), v31);
  *(v7 + 152) = vextq_s8(v28, v28, 4uLL).u64[0];
  *(v7 + 160) = v28.i32[3];
  *(v7 + 120) = v32;
  *(v7 + 76) = v27.i32[2];
  *(v7 + 80) = vextq_s8(v27, a6, 0xCuLL).u64[0];
  *(v7 + 68) = v27.i64[0];
  *(v7 + 64) = a3;
  *(v7 + 92) = v32;
  v33 = *(v7 + 16);
  *(v7 + 16) = v9;
  *(v7 + 20) = v33;
  *(v7 + 52) = v10;
  *(v7 + 56) = v12;
  v34 = *(v7 + 40);
  *(v7 + 28) = v34;
  *(v7 + 32) = v17;
  v35 = 2 * v33;
  if (2 * v33 <= -32768)
  {
    v35 = -32768;
  }

  if (v35 >= 0x7FFF)
  {
    v35 = 0x7FFF;
  }

  v36 = (v35 * v17) >> 15;
  v37 = 2 * v27.i32[3];
  if (2 * v27.i32[3] <= -32768)
  {
    v37 = -32768;
  }

  if (v37 >= 0x7FFF)
  {
    v37 = 0x7FFF;
  }

  v38 = v26.i32[0] * v37;
  v27.i32[3] = a3;
  v39 = vminq_s32(vmaxq_s32(vaddq_s32(v27, v27), v30), v31);
  v40 = vdup_lane_s32(*a6.i8, 0);
  v40.i32[0] = v9;
  v26.i32[0] = v34;
  v41 = vmul_s32(v26, vmin_s32(vmax_s32(vadd_s32(v40, v40), 0x7F0000007FLL), 0x7F0000007FLL));
  v42.i32[0] = v36;
  v42.i32[1] = vaddvq_s32(vshrq_n_s32(vmulq_s32(v32, vextq_s8(v39, v39, 0xCuLL)), 0xFuLL)) + (v38 >> 15);
  v43 = vmin_s32(vmax_s32(vsra_n_s32(v42, v41, 0xFuLL), 0x7F0000007FLL), 0x7F0000007FLL);
  *(v7 + 4) = v43;
  v44 = v43.i16[0] + v43.i16[2];
  if (v44 >= 0x7FFF)
  {
    v44 = 0x7FFF;
  }

  if (v44 <= -32768)
  {
    v44 = -32768;
  }

  *v7 = v44;
  return result;
}

uint64_t WebRtc_g722_encode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, int8x16_t a7)
{
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = NAN;
    while (1)
    {
      if (*a1)
      {
        v14 = *(a3 + 2 * v12++);
        v15 = v14 >> 1;
        v11 = v15;
      }

      else
      {
        v16 = (a3 + 2 * v12);
        if (*(a1 + 8))
        {
          ++v12;
          v15 = *v16 >> 1;
        }

        else
        {
          memmove((a1 + 16), (a1 + 24), 0x58uLL);
          v17 = *v16;
          v18 = v16[1];
          *(a1 + 104) = v17;
          *(a1 + 108) = v18;
          a6 = *(a1 + 40);
          a7.i64[0] = *(a1 + 48);
          v19.i32[0] = *(a1 + 24) + v17;
          v19.i32[1] = *(a1 + 28);
          v20.i32[0] = *(a1 + 16);
          v20.i32[1] = v18;
          v21.i32[0] = *(a1 + 96);
          v21.i32[1] = *(a1 + 100) + *(a1 + 20);
          v13 = NAN;
          v22 = vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmla_s32(vmul_s32(v20, 0x300000003), v19, 0x35FFFFFFF5), *(a1 + 32), 0xFFFFFF640000000CLL), *&a6, 0x16A00000020), *a7.i8, 0xFFFFFCDBFFFFFF2ELL), *(a1 + 56), 0xF24000003B7), *(a1 + 64), 0x3B700000F24), *(a1 + 72), 0xFFFFFF2EFFFFFCDBLL), *(a1 + 80), 0x200000016ALL), *(a1 + 88), 0xCFFFFFF64), v21, 0xFFFFFFF500000035);
          v12 += 2;
          v15 = (v22.i32[1] + v22.i32[0]) >> 14;
          v11 = (v22.i32[1] - v22.i32[0]) >> 14;
        }
      }

      v23 = v15 - *(a1 + 112);
      if (v23 <= -32768)
      {
        v24 = -32768;
      }

      else
      {
        v24 = v15 - *(a1 + 112);
      }

      if (v24 >= 0x7FFF)
      {
        v24 = 0x7FFF;
      }

      v25 = v24 ^ (v24 >> 15);
      v26 = *(a1 + 288);
      if (v25 >= (35 * v26) >> 12)
      {
        if (v25 >= (72 * v26) >> 12)
        {
          if (v25 >= (110 * v26) >> 12)
          {
            if (v25 >= (150 * v26) >> 12)
            {
              if (v25 >= (190 * v26) >> 12)
              {
                if (v25 >= (233 * v26) >> 12)
                {
                  if (v25 >= (276 * v26) >> 12)
                  {
                    if (v25 >= (323 * v26) >> 12)
                    {
                      if (v25 >= (370 * v26) >> 12)
                      {
                        if (v25 >= (422 * v26) >> 12)
                        {
                          if (v25 >= (473 * v26) >> 12)
                          {
                            if (v25 >= (530 * v26) >> 12)
                            {
                              if (v25 >= (587 * v26) >> 12)
                              {
                                if (v25 >= (650 * v26) >> 12)
                                {
                                  if (v25 >= (714 * v26) >> 12)
                                  {
                                    if (v25 >= (786 * v26) >> 12)
                                    {
                                      if (v25 >= (858 * v26) >> 12)
                                      {
                                        if (v25 >= (940 * v26) >> 12)
                                        {
                                          if (v25 >= (1023 * v26) >> 12)
                                          {
                                            if (v25 >= (1121 * v26) >> 12)
                                            {
                                              if (v25 >= (1219 * v26) >> 12)
                                              {
                                                if (v25 >= (1339 * v26) >> 12)
                                                {
                                                  if (v25 >= (1458 * v26) >> 12)
                                                  {
                                                    if (v25 >= (1612 * v26) >> 12)
                                                    {
                                                      if (v25 >= (1765 * v26) >> 12)
                                                      {
                                                        if (v25 >= (1980 * v26) >> 12)
                                                        {
                                                          if (v25 >= (2195 * v26) >> 12)
                                                          {
                                                            if (v25 >= (2557 * v26) >> 12)
                                                            {
                                                              v28 = v25 < (2919 * v26) >> 12;
                                                              v27 = 29;
                                                              if (!v28)
                                                              {
                                                                v27 = 30;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v27 = 28;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v27 = 27;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v27 = 26;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v27 = 25;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v27 = 24;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v27 = 23;
                                                  }
                                                }

                                                else
                                                {
                                                  v27 = 22;
                                                }
                                              }

                                              else
                                              {
                                                v27 = 21;
                                              }
                                            }

                                            else
                                            {
                                              v27 = 20;
                                            }
                                          }

                                          else
                                          {
                                            v27 = 19;
                                          }
                                        }

                                        else
                                        {
                                          v27 = 18;
                                        }
                                      }

                                      else
                                      {
                                        v27 = 17;
                                      }
                                    }

                                    else
                                    {
                                      v27 = 16;
                                    }
                                  }

                                  else
                                  {
                                    v27 = 15;
                                  }
                                }

                                else
                                {
                                  v27 = 14;
                                }
                              }

                              else
                              {
                                v27 = 13;
                              }
                            }

                            else
                            {
                              v27 = 12;
                            }
                          }

                          else
                          {
                            v27 = 11;
                          }
                        }

                        else
                        {
                          v27 = 10;
                        }
                      }

                      else
                      {
                        v27 = 9;
                      }
                    }

                    else
                    {
                      v27 = 8;
                    }
                  }

                  else
                  {
                    v27 = 7;
                  }
                }

                else
                {
                  v27 = 6;
                }
              }

              else
              {
                v27 = 5;
              }
            }

            else
            {
              v27 = 4;
            }
          }

          else
          {
            v27 = 3;
          }
        }

        else
        {
          v27 = 2;
        }
      }

      else
      {
        v27 = 1;
      }

      v29 = v23 < 0;
      v30 = &WebRtc_g722_encode_ilp;
      if (v29)
      {
        v30 = &WebRtc_g722_encode_iln;
      }

      v31 = v30[v27];
      v32 = WebRtc_g722_encode_qm4[v31 >> 2];
      v33 = WebRtc_g722_encode_wl[WebRtc_g722_encode_rl42[v31 >> 2]] + ((127 * *(a1 + 284)) >> 7);
      *(a1 + 284) = v33;
      if ((v33 & 0x80000000) != 0)
      {
        LOBYTE(v35) = 0;
        v34 = 0;
        *(a1 + 284) = 0;
      }

      else
      {
        if (v33 >= 0x4801)
        {
          v34 = 0;
          *(a1 + 284) = 18432;
LABEL_80:
          v36 = 2 * WebRtc_g722_encode_ilb[v34];
          goto LABEL_83;
        }

        v34 = (v33 >> 6) & 0x1F;
        if (v33 == 18432)
        {
          goto LABEL_80;
        }

        v35 = v33 >> 11;
      }

      v36 = WebRtc_g722_encode_ilb[v34] >> (8 - v35);
LABEL_83:
      *(a1 + 288) = 4 * v36;
      block4(a1, 0, (v32 * v26) >> 15, v13, a6, a7);
      if (*(a1 + 8))
      {
        v37 = *(a1 + 12);
        v38 = (v31 | 0xC0) >> (8 - v37);
        if (*(a1 + 4))
        {
          goto LABEL_104;
        }

        goto LABEL_3;
      }

      v39 = v11 - *(a1 + 292);
      if (v39 <= -32768)
      {
        v40 = -32768;
      }

      else
      {
        v40 = v11 - *(a1 + 292);
      }

      if (v40 >= 0x7FFF)
      {
        v40 = 0x7FFF;
      }

      v41 = v40 ^ (v40 >> 15);
      v42 = *(a1 + 468);
      v28 = v41 < (564 * v42) >> 12;
      v43 = 4;
      if (!v28)
      {
        v43 = 8;
      }

      v29 = v39 < 0;
      v44 = &WebRtc_g722_encode_ihp;
      if (v29)
      {
        v44 = &WebRtc_g722_encode_ihn;
      }

      v45 = *&v44[v43];
      v46 = WebRtc_g722_encode_qm2[v45];
      v47 = WebRtc_g722_encode_wh[WebRtc_g722_encode_rh2[v45]] + ((127 * *(a1 + 464)) >> 7);
      *(a1 + 464) = v47;
      if ((v47 & 0x80000000) != 0)
      {
        LOBYTE(v49) = 0;
        v48 = 0;
        *(a1 + 464) = 0;
      }

      else
      {
        if (v47 >= 0x5801)
        {
          v48 = 0;
          *(a1 + 464) = 22528;
LABEL_100:
          v50 = 2 * WebRtc_g722_encode_ilb[v48];
          goto LABEL_103;
        }

        v48 = (v47 >> 6) & 0x1F;
        if (v47 == 22528)
        {
          goto LABEL_100;
        }

        v49 = v47 >> 11;
      }

      v50 = WebRtc_g722_encode_ilb[v48] >> (10 - v49);
LABEL_103:
      *(a1 + 468) = 4 * v50;
      block4(a1, 1u, (v46 * v42) >> 15, v13, a6, a7);
      v37 = *(a1 + 12);
      v38 = (v31 | (v45 << 6)) >> (8 - v37);
      if (*(a1 + 4))
      {
LABEL_104:
        v51 = *(a1 + 484);
        v52 = *(a1 + 480) | (v38 << v51);
        *(a1 + 480) = v52;
        v53 = v51 + v37;
        *(a1 + 484) = v53;
        if (v53 >= 8)
        {
          *(a2 + v10++) = v52;
          v54 = *(a1 + 480);
          LODWORD(a6) = vshr_n_u32(v54, 8uLL).u32[0];
          v13 = COERCE_DOUBLE(vadd_s32(v54, 0x700000007));
          HIDWORD(a6) = HIDWORD(v13);
          *(a1 + 480) = a6;
        }

        goto LABEL_4;
      }

LABEL_3:
      *(a2 + v10++) = v38;
LABEL_4:
      if (v12 >= a4)
      {
        return v10;
      }
    }
  }

  return 0;
}

uint64_t WebRtcG722_CreateEncoder(void *a1)
{
  v2 = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WebRtcG722_EncoderInit(void *a1)
{
  if (!a1)
  {
    a1 = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  a1[60] = 0;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 72) = 32;
  *(a1 + 3) = 8;
  *(a1 + 1) = 0;
  *(a1 + 117) = 8;
  return 0;
}

void webrtc::GainApplier::ApplyGain(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a1 + 12) != v2)
  {
    *(a1 + 12) = v2;
    *(a1 + 16) = 1.0 / v2;
    v2 = a2[1];
  }

  v4 = *(a1 + 4);
  v3 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  v7 = *(a2 + 6);
  if (v4 == v3)
  {
    v9 = v3 <= 1.0 && v3 >= 0.99997;
    if (!v9 && v5)
    {
      if (v7 > 1)
      {
        goto LABEL_83;
      }

      if (v7)
      {
        if (v2)
        {
          v10 = 0;
          v11 = (v2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          v12 = (v11 + 1) & 0x7FFFFFFFFFFFFFF8;
          v13 = v6 + 1;
          do
          {
            v14 = &v6->f32[v10 * v2];
            v15 = v14;
            if (v11 <= 6)
            {
              goto LABEL_21;
            }

            v15 = &v14[v12];
            v16 = (v11 + 1) & 0x7FFFFFFFFFFFFFF8;
            v17 = v13;
            do
            {
              v18 = vmulq_n_f32(*v17, v3);
              v17[-1] = vmulq_n_f32(v17[-1], v3);
              *v17 = v18;
              v17 += 2;
              v16 -= 8;
            }

            while (v16);
            if (v11 + 1 != v12)
            {
LABEL_21:
              v19 = &v14[v2];
              do
              {
                *v15 = v3 * *v15;
                ++v15;
              }

              while (v15 != v19);
            }

            ++v10;
            v13 = (v13 + 4 * v2);
          }

          while (v10 != v5);
        }
      }

      else if (v2)
      {
        v25 = 0;
        v26 = (v2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        v27 = (v26 + 1) & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = v6->i64[v25];
          v29 = v28;
          if (v26 < 7)
          {
            goto LABEL_40;
          }

          v29 = &v28->f32[v27];
          v30 = v28 + 1;
          v31 = (v26 + 1) & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v32 = vmulq_n_f32(*v30, v3);
            v30[-1] = vmulq_n_f32(v30[-1], v3);
            *v30 = v32;
            v30 += 2;
            v31 -= 8;
          }

          while (v31);
          if (v26 + 1 != v27)
          {
LABEL_40:
            v33 = &v28->f32[v2];
            do
            {
              *v29 = v3 * *v29;
              ++v29;
            }

            while (v29 != v33);
          }

          ++v25;
        }

        while (v25 != v5);
      }
    }
  }

  else if (v5)
  {
    if (v7 > 1)
    {
      goto LABEL_83;
    }

    v20 = (v3 - v4) * *(a1 + 16);
    if (v7)
    {
      if (v2)
      {
        for (i = 0; i != v5; ++i)
        {
          v22 = &v6->f32[i * v2];
          v23 = 4 * v2;
          v24 = v4;
          do
          {
            *v22 = v24 * *v22;
            ++v22;
            v24 = v20 + v24;
            v23 -= 4;
          }

          while (v23);
        }
      }
    }

    else if (v2)
    {
      v34 = 0;
      v35 = 4 * v2;
      do
      {
        v36 = v6->i64[v34];
        v37 = v35;
        v38 = v4;
        do
        {
          *v36 = v38 * *v36;
          ++v36;
          v38 = v20 + v38;
          v37 -= 4;
        }

        while (v37);
        ++v34;
      }

      while (v34 != v5);
    }
  }

  *(a1 + 4) = *(a1 + 8);
  if (*a1 != 1)
  {
    return;
  }

  v39 = *a2;
  if (!*a2)
  {
    return;
  }

  v40 = *(a2 + 6);
  if (v40 > 1)
  {
LABEL_83:
    v70 = std::__throw_bad_variant_access[abi:sn200100]();
    webrtc::GainControlImpl::~GainControlImpl(v70);
    return;
  }

  v41 = a2[1];
  v42 = a2[2];
  if (v40)
  {
    if (v41)
    {
      v43 = 0;
      v44 = (v41 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v45 = (v44 + 1) & 0x7FFFFFFFFFFFFFF8;
      v46 = v42 + 1;
      v47.i64[0] = 0xC7000000C7000000;
      v47.i64[1] = 0xC7000000C7000000;
      v48 = vdupq_n_s32(0x46FFFE00u);
      do
      {
        v49 = &v42->f32[v43 * v41];
        v50 = v49;
        if (v44 <= 6)
        {
          goto LABEL_59;
        }

        v50 = &v49[v45];
        v51 = (v44 + 1) & 0x7FFFFFFFFFFFFFF8;
        v52 = v46;
        do
        {
          v53 = vbslq_s8(vcgeq_f32(v47, *v52), v47, vbslq_s8(vcgeq_f32(*v52, v48), v48, *v52));
          v52[-1] = vbslq_s8(vcgeq_f32(v47, v52[-1]), v47, vbslq_s8(vcgeq_f32(v52[-1], v48), v48, v52[-1]));
          *v52 = v53;
          v52 += 2;
          v51 -= 8;
        }

        while (v51);
        if (v44 + 1 != v45)
        {
LABEL_59:
          v54 = &v49[v41];
          do
          {
            v55 = 32767.0;
            if (*v50 < 32767.0)
            {
              v55 = *v50;
            }

            if (*v50 > -32768.0)
            {
              v56 = v55;
            }

            else
            {
              v56 = -32768.0;
            }

            *v50++ = v56;
          }

          while (v50 != v54);
        }

        ++v43;
        v46 = (v46 + 4 * v41);
      }

      while (v43 != v39);
    }
  }

  else if (v41)
  {
    v57 = 0;
    v58 = (v41 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v59 = (v58 + 1) & 0x7FFFFFFFFFFFFFF8;
    v60.i64[0] = 0xC7000000C7000000;
    v60.i64[1] = 0xC7000000C7000000;
    v61 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      v62 = v42->i64[v57];
      v63 = v62;
      if (v58 < 7)
      {
        goto LABEL_74;
      }

      v63 = &v62->f32[v59];
      v64 = v62 + 1;
      v65 = (v58 + 1) & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v66 = vbslq_s8(vcgeq_f32(v60, *v64), v60, vbslq_s8(vcgeq_f32(*v64, v61), v61, *v64));
        v64[-1] = vbslq_s8(vcgeq_f32(v60, v64[-1]), v60, vbslq_s8(vcgeq_f32(v64[-1], v61), v61, v64[-1]));
        *v64 = v66;
        v64 += 2;
        v65 -= 8;
      }

      while (v65);
      if (v58 + 1 != v59)
      {
LABEL_74:
        v67 = &v62->f32[v41];
        do
        {
          v68 = 32767.0;
          if (*v63 < 32767.0)
          {
            v68 = *v63;
          }

          if (*v63 > -32768.0)
          {
            v69 = v68;
          }

          else
          {
            v69 = -32768.0;
          }

          *v63++ = v69;
        }

        while (v63 != v67);
      }

      ++v57;
    }

    while (v57 != v39);
  }
}

void webrtc::GainControlImpl::~GainControlImpl(webrtc::GainControlImpl *this)
{
  *this = &unk_288293FC0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = *(this + 6);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          free(*(v6 + 48));
          MEMORY[0x2743DA540](v6, 0x1080C40D70B5887);
        }
      }

      while (v4 != v3);
      v5 = *(this + 6);
    }

    *(this + 7) = v3;
    operator delete(v5);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    MEMORY[0x2743DA540](v8, 0xC400A2AC0F1);
  }
}

{
  webrtc::GainControlImpl::~GainControlImpl(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::GainControlImpl::ProcessRenderAudio(uint64_t result, __int16 *a2, uint64_t a3)
{
  v4 = *(result + 48);
  v3 = *(result + 56);
  if (v3 != v4)
  {
    v6 = result;
    if (a3 == 160)
    {
      v9 = 0;
      do
      {
        v10 = *(*(v4 + 8 * v9) + 48);
        if (v10)
        {
          v11 = *v10;
          v12 = *v10 == 16000 || v11 == 48000;
          if (v12 || v11 == 32000)
          {
            result = webrtc::WebRtcAgc_ProcessVad((v10 + 152), a2, 160);
            v4 = *(v6 + 48);
            v3 = *(v6 + 56);
          }
        }

        ++v9;
      }

      while (v9 < (v3 - v4) >> 3);
    }

    else if (a3 == 80)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v4 + 8 * v7) + 48);
        if (v8)
        {
          if (*v8 == 8000)
          {
            result = webrtc::WebRtcAgc_ProcessVad((v8 + 152), a2, 80);
            v4 = *(v6 + 48);
            v3 = *(v6 + 56);
          }
        }

        ++v7;
      }

      while (v7 < (v3 - v4) >> 3);
    }
  }

  return result;
}

char *webrtc::GainControlImpl::PackRenderAudioBuffer(char *result, char **a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, double a8, double a9, int8x16_t a10)
{
  v10 = *(result + 9);
  v11 = *(result + 7);
  if (v11 == 1)
  {
    v12 = *(result + 11);
    if (!v12)
    {
      v12 = *(result + 10);
    }

    if (v10)
    {
      v13 = **(v12 + 16);
      if (v10 >= 8)
      {
        v14 = v10 & 0xFFFFFFFFFFFFFFF8;
        v30 = vdupq_n_s32(0x46FFFE00u);
        v31 = v51;
        v32.i64[0] = 0xC7000000C7000000;
        v32.i64[1] = 0xC7000000C7000000;
        a5.i64[0] = 0x3F0000003F000000;
        a5.i64[1] = 0x3F0000003F000000;
        v33.i64[0] = 0x8000000080000000;
        v33.i64[1] = 0x8000000080000000;
        v34 = v10 & 0xFFFFFFFFFFFFFFF8;
        v35 = v13;
        do
        {
          v36 = *v35;
          v37 = v35[1];
          v35 += 2;
          v38 = vbslq_s8(vcgtq_f32(v36, v30), v30, v36);
          v39 = vbslq_s8(vcgtq_f32(v37, v30), v30, v37);
          v40 = vbslq_s8(vcgtq_f32(v32, v38), v32, v38);
          v41 = vbslq_s8(vcgtq_f32(v32, v39), v32, v39);
          a7 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v40, vbslq_s8(v33, a5, v40))), vcvtq_s32_f32(vaddq_f32(v41, vbslq_s8(v33, a5, v41))));
          *v31++ = a7;
          v34 -= 8;
        }

        while (v34);
        if (v10 == v14)
        {
LABEL_47:
          v29 = v10;
          goto LABEL_48;
        }
      }

      else
      {
        v14 = 0;
      }

      a5.i32[0] = 0.5;
      v42.i64[0] = 0x8000000080000000;
      v42.i64[1] = 0x8000000080000000;
      do
      {
        a7.i32[0] = v13->i32[v14];
        if (*a7.i32 > 32767.0)
        {
          *a7.i32 = 32767.0;
        }

        if (*a7.i32 < -32768.0)
        {
          *a7.i32 = -32768.0;
        }

        v51[v14++] = (*a7.i32 + *vbslq_s8(v42, a5, a7).i32);
      }

      while (v10 != v14);
      goto LABEL_47;
    }

LABEL_26:
    v29 = 0;
LABEL_48:
    if (v10)
    {
      v49 = v51;
    }

    else
    {
      v49 = 0;
    }

    v50 = *a2;
    a2[1] = *a2;
    return std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(a2, v50, v49, &v49[v29], v29);
  }

  if (!v10)
  {
    goto LABEL_26;
  }

  if (v11 > 0)
  {
    v15 = 0;
    v16 = *(result + 11);
    if (!v16)
    {
      v16 = *(result + 10);
    }

    v17 = *(v16 + 8);
    v18 = *(result + 7) & 0x7FFFFFFFLL;
    v19 = vdup_n_s32(0x46FFFE00u);
    a6.i32[0] = 0.5;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    while (v18 >= 2)
    {
      a10 = 0uLL;
      result = ((v11 & 0x7FFFFFFF) - (v11 & 1));
      v23 = (v17 + 8);
      do
      {
        v24.i32[0] = *(*(v23 - 1) + 4 * v15);
        v24.i32[1] = *(*v23 + 4 * v15);
        v25 = vbsl_s8(vcgt_f32(v24, v19), v19, v24);
        v26 = vbsl_s8(vcgt_f32(0xC7000000C7000000, v25), 0xC7000000C7000000, v25);
        *a10.i8 = vadd_s32(*a10.i8, vcvt_s32_f32(vadd_f32(v26, vbsl_s8(0x8000000080000000, 0x3F0000003F000000, v26))));
        v23 += 2;
        result -= 2;
      }

      while (result);
      *a10.i8 = vadd_s32(vdup_lane_s32(*a10.i8, 1), *a10.i8);
      v22 = a10.i32[0];
      v21 = (v11 & 0x7FFFFFFF) - (v11 & 1);
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (v15 == 160)
      {
        goto LABEL_52;
      }

      v51[v15++] = v22 / v11;
      if (v15 == v10)
      {
        goto LABEL_47;
      }
    }

    v21 = 0;
    v22 = 0;
LABEL_17:
    result = (v18 - v21);
    v27 = (v17 + 8 * v21);
    do
    {
      v28 = *v27++;
      a10.i32[0] = *(v28 + 4 * v15);
      if (*a10.i32 > 32767.0)
      {
        *a10.i32 = 32767.0;
      }

      if (*a10.i32 < -32768.0)
      {
        *a10.i32 = -32768.0;
      }

      v22 += (*a10.i32 + *vbslq_s8(v20, a6, a10).i32);
      --result;
    }

    while (result);
    goto LABEL_23;
  }

  if (v10 > 0x10)
  {
    v44 = v10 - 1;
    if (v10 - 1 >= 0xA0)
    {
      v44 = 160;
    }

    v45 = v44 + 1;
    v46 = v45 & 0xF;
    if ((v45 & 0xF) == 0)
    {
      v46 = 16;
    }

    v43 = v45 - v46;
    v47 = &v52;
    v48 = v43;
    do
    {
      *(v47 - 1) = 0uLL;
      *v47 = 0uLL;
      v47 += 4;
      v48 -= 16;
    }

    while (v48);
  }

  else
  {
    v43 = 0;
  }

  while (v43 != 160)
  {
    v51[v43++] = 0;
    if (v10 == v43)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t webrtc::GainControlImpl::AnalyzeCaptureAudio(uint64_t this, const webrtc::AudioBuffer *a2, double a3, int8x16_t a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v10 = this;
  v23[40] = *MEMORY[0x277D85DE8];
  v20[0] = &v21;
  v20[1] = &v22;
  v20[2] = v23;
  v11 = *(this + 16);
  if (v11)
  {
    if (v11 == 1 && *(this + 56) != *(this + 48))
    {
      v12 = 0;
      while (1)
      {
        v19 = 0;
        this = webrtc::AudioBuffer::ExportSplitChannelData(a2, v12, v20, a3, a4, a5, a6, a7, a8, a9);
        v14 = *(v10 + 48);
        if (v12 >= (*(v10 + 56) - v14) >> 3)
        {
          break;
        }

        this = webrtc::WebRtcAgc_VirtualMic(*(*(v14 + 8 * v12) + 48), v20, *(a2 + 8), *(a2 + 9), *(v10 + 40), &v19, v13);
        v15 = *(v10 + 72);
        if (v12 >= (*(v10 + 80) - v15) >> 2)
        {
          break;
        }

        *(v15 + 4 * v12) = v19;
        if (this)
        {
          return 0xFFFFFFFFLL;
        }

        if (++v12 >= (*(v10 + 56) - *(v10 + 48)) >> 3)
        {
          return 0;
        }
      }

LABEL_19:
      __break(1u);
      return this;
    }
  }

  else if (*(this + 56) != *(this + 48))
  {
    v16 = 0;
    while (1)
    {
      v17 = *(v10 + 72);
      if (v16 >= (*(v10 + 80) - v17) >> 2)
      {
        break;
      }

      *(v17 + 4 * v16) = *(v10 + 40);
      this = webrtc::AudioBuffer::ExportSplitChannelData(a2, v16, v20, a3, a4, a5, a6, a7, a8, a9);
      v18 = *(v10 + 48);
      if (v16 >= (*(v10 + 56) - v18) >> 3)
      {
        break;
      }

      this = webrtc::WebRtcAgc_AddMic(*(*(v18 + 8 * v16) + 48), v20, *(a2 + 8), *(a2 + 9));
      if (this)
      {
        return 0xFFFFFFFFLL;
      }

      if (++v16 >= (*(v10 + 56) - *(v10 + 48)) >> 3)
      {
        return 0;
      }
    }

    goto LABEL_19;
  }

  return 0;
}

uint64_t webrtc::GainControlImpl::ProcessCaptureAudio(webrtc::GainControlImpl *this, webrtc::AudioBuffer *a2, int *a3, double a4, int8x16_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v80[41] = *MEMORY[0x277D85DE8];
  if (!*(this + 4) && *(this + 44) != 1)
  {
    return 4294967285;
  }

  *(this + 45) = 0;
  v13 = *(this + 6);
  if (*(this + 7) == v13)
  {
    v15 = 0;
    v20 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v75[0] = v76;
      v75[1] = &v79;
      v75[2] = v80;
      webrtc::AudioBuffer::ExportSplitChannelData(a2, v14, v75, a4, a5, a6, a7, a8, a9, a10);
      v74 = 0;
      v73 = 0;
      v16 = *(this + 6);
      if (v14 >= (*(this + 7) - v16) >> 3)
      {
        goto LABEL_62;
      }

      v17 = *(this + 9);
      if (v14 >= (*(this + 10) - v17) >> 2)
      {
        goto LABEL_62;
      }

      v18 = webrtc::WebRtcAgc_Analyze(*(*(v16 + 8 * v14) + 48), v75, *(a2 + 8), *(a2 + 9), *(v17 + 4 * v14), &v74, a3, &v73, *(v16 + 8 * v14), v72);
      v19 = *(this + 9);
      if (v14 >= (*(this + 10) - v19) >> 2)
      {
        goto LABEL_62;
      }

      *(v19 + 4 * v14) = v74;
      v15 |= v18 != 0;
      *(this + 45) |= v73 == 1;
      ++v14;
      v13 = *(this + 6);
      v20 = (*(this + 7) - v13) >> 3;
    }

    while (v14 < v20);
    if (v20 >= 2)
    {
      v21 = 0;
      for (i = 1; i != v20; ++i)
      {
        if (v20 <= v21)
        {
          goto LABEL_62;
        }

        if (*(*(v13 + 8 * v21) + 40) < *(*(v13 + 8 * i) + 40))
        {
          v21 = i;
        }
      }

      if (v20 <= v21)
      {
LABEL_62:
        __break(1u);
      }

      goto LABEL_20;
    }
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = 0;
LABEL_20:
  v23 = 0;
  v24 = *(a2 + 8);
  v25 = *(a2 + 11);
  v26 = vdupq_n_s32(0x37800000u);
  v27.i64[0] = 0xC7000000C7000000;
  v27.i64[1] = 0xC7000000C7000000;
  v28 = vdupq_n_s32(0x46FFFE00u);
  do
  {
    v29 = v25;
    if (!v25)
    {
      v29 = *(a2 + 10);
    }

    v30 = *(v13 + 8 * v21);
    v31 = *(v29 + 56);
    v32 = *(v29 + 16);
    v33 = vmulq_f32(vcvtq_f32_s32(*(v30 + 16)), v26);
    v76[0] = vmulq_f32(vcvtq_f32_s32(*v30), v26);
    v76[1] = v33;
    v77 = vmul_f32(vcvt_f32_s32(*(v30 + 32)), *v26.f32);
    v78 = *(v30 + 40) * 0.000015259;
    if (v24)
    {
      v34 = 0;
      v35 = v32 + 8 * v31 * v23;
      do
      {
        v36 = (*(v35 + 8 * v34) + 32);
        v37 = v76 + 1;
        v38 = 10;
        do
        {
          v39.f32[0] = *(v37 - 1);
          v40 = (*v37 - v39.f32[0]) * 0.0625;
          v41 = v40 + (v40 + (v39.f32[0] + v40));
          v39.f32[1] = v39.f32[0] + v40;
          v39.f32[2] = v40 + (v39.f32[0] + v40);
          v39.f32[3] = v41;
          v42.f32[0] = v40 + v41;
          v43 = v40 + (v40 + v41);
          *&v44 = v40 + v43;
          v42.f32[1] = v43;
          *&v45 = v40 + (v40 + v43);
          v42.i64[1] = __PAIR64__(v45, v44);
          v46.f32[0] = v40 + *&v45;
          v46.f32[1] = v40 + (v40 + *&v45);
          v47 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v42, v36[-1]), v27), v28);
          v46.f32[2] = v40 + v46.f32[1];
          v36[-2] = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v39, v36[-2]), v27), v28);
          v36[-1] = v47;
          v46.f32[3] = v40 + (v40 + v46.f32[1]);
          v39.f32[0] = v40 + v46.f32[3];
          v39.f32[1] = v40 + (v40 + v46.f32[3]);
          v39.f32[2] = v40 + v39.f32[1];
          v39.f32[3] = v40 + (v40 + v39.f32[1]);
          v48 = vmaxnmq_f32(vmulq_f32(v39, v36[1]), v27);
          *v36 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v46, *v36), v27), v28);
          v36[1] = vminnmq_f32(v48, v28);
          v36 += 4;
          ++v37;
          --v38;
        }

        while (v38);
        ++v34;
      }

      while (v34 != v24);
    }

    ++v23;
  }

  while (v23 != v20);
LABEL_30:
  if (!*(this + 4))
  {
    v50 = *(this + 9);
    v49 = *(this + 10);
    v51 = v49 - v50;
    if (v49 == v50)
    {
      goto LABEL_62;
    }

    v52 = *v50;
    *(this + 10) = *v50;
    v53 = (this + 40);
    v54 = v20 - 2;
    if (v20 >= 2)
    {
      v55 = v51 >> 2;
      if (v55 <= 1)
      {
        v55 = 1;
      }

      if (v55 - 1 >= v54)
      {
        v56 = v20 - 2;
      }

      else
      {
        v56 = v55 - 1;
      }

      if (v56 < 0x10)
      {
        goto LABEL_52;
      }

      if (v55 - 1 < v54)
      {
        v54 = v55 - 1;
      }

      if (v53 >= &v50[v54 + 2] || v50 + 1 >= this + 11)
      {
        v58 = v56 + 1;
        v59 = (v56 + 1) & 7;
        if (!v59)
        {
          v59 = 8;
        }

        v60 = v58 - v59;
        v61 = v60 + 1;
        v62 = vdupq_n_s32(v52);
        v63 = (v50 + 5);
        v64 = v62;
        do
        {
          v62 = vminq_s32(v63[-1], v62);
          v64 = vminq_s32(*v63, v64);
          v63 += 2;
          v60 -= 8;
        }

        while (v60);
        v65 = vminvq_s32(vminq_s32(v62, v64));
        *v53 = v65;
        v52 = v65;
      }

      else
      {
LABEL_52:
        v61 = 1;
      }

      v67 = &v50[v61];
      v68 = v20 - v61;
      v69 = v55 - v61;
      while (v69)
      {
        v71 = *v67++;
        v70 = v71;
        if (v71 < v52)
        {
          v52 = v70;
        }

        *v53 = v52;
        --v69;
        if (!--v68)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_62;
    }
  }

LABEL_58:
  if (v15)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(this + 44) = 0;
  return result;
}

uint64_t webrtc::GainControlImpl::set_stream_analog_level(webrtc::GainControlImpl *this, int a2)
{
  *(this + 44) = 1;
  if (*(this + 5) > a2)
  {
    return 4294967290;
  }

  if (*(this + 6) < a2)
  {
    return 4294967290;
  }

  result = 0;
  *(this + 10) = a2;
  return result;
}

uint64_t webrtc::GainControlImpl::set_mode(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    return 4294967290;
  }

  *(result + 16) = a2;
  if (*(result + 104) & 1) != 0 && (*(result + 116))
  {
    webrtc::GainControlImpl::Initialize(result, *(result + 96), *(result + 112));
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::GainControlImpl::Initialize(webrtc::GainControlImpl *this, unint64_t a2, int a3)
{
  *(this + 12) = a2;
  *(this + 104) = 1;
  *(this + 28) = a3;
  *(this + 116) = 1;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (v5 - v4) >> 3;
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v4 + 8 * a2);
      while (v5 != v13)
      {
        v15 = *--v5;
        v14 = v15;
        *v5 = 0;
        if (v15)
        {
          free(*(v14 + 48));
          MEMORY[0x2743DA540](v14, 0x1080C40D70B5887);
        }
      }

      *(this + 7) = v13;
    }
  }

  else
  {
    v8 = *(this + 8);
    if (v7 > (v8 - v5) >> 3)
    {
      if (!(a2 >> 61))
      {
        v9 = v8 - v4;
        v10 = v9 >> 2;
        if (v9 >> 2 <= a2)
        {
          v10 = a2;
        }

        v11 = v9 >= 0x7FFFFFFFFFFFFFF8;
        v12 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v11)
        {
          v12 = v10;
        }

        if (!(v12 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_69:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v16 = &v5[v7];
    v17 = 8 * a2 - 8 * v6;
    do
    {
      if (!v5)
      {
        goto LABEL_68;
      }

      *v5++ = 0;
      v17 -= 8;
    }

    while (v17);
    *(this + 7) = v16;
  }

  if ((*(this + 104) & 1) == 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v18 = *(this + 12);
  v19 = *(this + 9);
  v20 = (*(this + 10) - v19) >> 2;
  if (v18 <= v20)
  {
    if (v18 < v20)
    {
      *(this + 10) = v19 + 4 * v18;
    }
  }

  else
  {
    std::vector<float>::__append(this + 3, v18 - v20);
  }

  v22 = *(this + 6);
  v21 = *(this + 7);
  if (v21 != v22)
  {
    v23 = 0;
    do
    {
      if (!*(v22 + 8 * v23))
      {
        operator new();
      }

      v24 = *(this + 6);
      if (v23 >= (*(this + 7) - v24) >> 3 || (*(this + 116) & 1) == 0)
      {
        goto LABEL_68;
      }

      v25 = *(this + 4);
      v26 = v25 < 3 ? v25 + 1 : -1;
      webrtc::WebRtcAgc_Init(*(*(v24 + 8 * v23) + 48), *(this + 5), *(this + 6), v26, *(this + 28));
      v27 = *(this + 9);
      if (v23 >= (*(this + 10) - v27) >> 2)
      {
        goto LABEL_68;
      }

      *(v27 + 4 * v23++) = *(this + 10);
      v22 = *(this + 6);
      v21 = *(this + 7);
    }

    while (v23 < (v21 - v22) >> 3);
  }

  v28 = v21 - v22;
  if (v28)
  {
    v29 = *(this + 28);
    v31 = *(this + 8);
    v30 = *(this + 9);
    if (v31 <= 0x1Fu)
    {
      v35 = 0;
      do
      {
        v36 = *(*(v22 + 8 * v35) + 48);
        if (v36)
        {
          if (*(v36 + 24) == 42)
          {
            *(v36 + 10) = v29;
            *(v36 + 4) = v30;
            *(v36 + 6) = v31;
            v37 = *(v36 + 8);
            v38 = v30;
            if (v37 == 3)
            {
              *(v36 + 4) = v31 + v30;
              v38 = v31 + v30;
            }

            if (((5 * v38 + 5) / 11) <= 0x7FFBu)
            {
              v39 = (5 * v38 + 5) / 11 + 4;
            }

            else
            {
              v39 = 4;
            }

            if (v37 == 3)
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            *(v36 + 58) = v40;
            *(v36 + 56) = 20;
            *(v36 + 28) = xmmword_273B8E3A0;
            *(v36 + 44) = 0x287984C00813652;
            *(v36 + 52) = 4244080;
            *(v36 + 92) = 0xA2AB200101CFECLL;
            if (webrtc::WebRtcAgc_CalculateGainTable((v36 + 420), v38, v31, v29, v40) != -1)
            {
              *(v36 + 20) = v30;
              *(v36 + 22) = v29;
              *(v36 + 18) = v31;
            }
          }

          else
          {
            *(v36 + 26) = 18002;
          }
        }

        ++v35;
        v22 = *(this + 6);
      }

      while (v35 < (*(this + 7) - v22) >> 3);
    }

    else
    {
      v32 = v28 >> 3;
      v33 = *(*v22 + 48);
      if (v33)
      {
        if (*(v33 + 24) == 42)
        {
          *(v33 + 10) = v29;
          *(v33 + 4) = v30;
          v34 = 18004;
        }

        else
        {
          v34 = 18002;
        }

        *(v33 + 26) = v34;
      }

      if (v32 >= 2)
      {
        v41 = v32 - 1;
        v42 = v22 + 8;
        do
        {
          v44 = *(*v42 + 48);
          if (v44)
          {
            if (*(v44 + 24) == 42)
            {
              *(v44 + 10) = v29;
              *(v44 + 4) = v30;
              v43 = 18004;
            }

            else
            {
              v43 = 18002;
            }

            *(v44 + 26) = v43;
          }

          v42 += 8;
          --v41;
        }

        while (v41);
      }
    }
  }
}

uint64_t webrtc::GainControlImpl::set_analog_level_limits(uint64_t this, int a2, int a3)
{
  v3 = 4294967290;
  if (a3 < a2 || a2 < 0 || a3 >= 0x10000)
  {
    return v3;
  }

  *(this + 20) = a2;
  *(this + 24) = a3;
  if (*(this + 104) & 1) != 0 && (*(this + 116))
  {
    webrtc::GainControlImpl::Initialize(this, *(this + 96), *(this + 112));
    return 0;
  }

  __break(1u);
  return this;
}

uint64_t webrtc::GainControlImpl::set_target_level_dbfs(webrtc::GainControlImpl *this, unsigned int a2)
{
  if (a2 <= 0x1F)
  {
    v3 = a2;
    *(this + 8) = a2;
    v5 = *(this + 6);
    if (*(this + 7) == v5)
    {
      return 0;
    }

    v2 = 0;
    v6 = 0;
    v7 = *(this + 28);
    v8 = *(this + 9);
    while (1)
    {
      v9 = *(*(v5 + 8 * v6) + 48);
      if (!v9)
      {
        goto LABEL_6;
      }

      if (*(v9 + 24) == 42)
      {
        *(v9 + 10) = v7;
        *(v9 + 4) = v8;
        *(v9 + 6) = v3;
        v10 = *(v9 + 8);
        v11 = v8;
        if (v10 == 3)
        {
          *(v9 + 4) = v8 + v3;
          v11 = v8 + v3;
        }

        if (((5 * v11 + 5) / 11) <= 0x7FFBu)
        {
          v12 = (5 * v11 + 5) / 11 + 4;
        }

        else
        {
          v12 = 4;
        }

        if (v10 == 3)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        *(v9 + 58) = v13;
        *(v9 + 56) = 20;
        *(v9 + 28) = xmmword_273B8E3A0;
        *(v9 + 44) = 0x287984C00813652;
        *(v9 + 52) = 4244080;
        *(v9 + 92) = 0xA2AB200101CFECLL;
        if (webrtc::WebRtcAgc_CalculateGainTable((v9 + 420), v11, v3, v7, v13) == -1)
        {
          goto LABEL_6;
        }

        *(v9 + 20) = v8;
        *(v9 + 22) = v7;
        *(v9 + 18) = v3;
        ++v6;
        v5 = *(this + 6);
        if (v6 >= (*(this + 7) - v5) >> 3)
        {
          return v2;
        }
      }

      else
      {
        *(v9 + 26) = 18002;
LABEL_6:
        v2 = 0xFFFFFFFFLL;
        ++v6;
        v5 = *(this + 6);
        if (v6 >= (*(this + 7) - v5) >> 3)
        {
          return v2;
        }
      }
    }
  }

  return 4294967290;
}

uint64_t webrtc::GainControlImpl::set_compression_gain_db(webrtc::GainControlImpl *this, unsigned int a2)
{
  v2 = a2;
  if (a2 >= 0x5B)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/gain_control_impl.cc");
    }

    return 4294967290;
  }

  *(this + 9) = a2;
  v12 = *(this + 6);
  v13 = *(this + 7) - v12;
  if (!v13)
  {
    return 0;
  }

  v14 = *(this + 28);
  v15 = *(this + 8);
  if (v15 <= 0x1Fu)
  {
    v10 = 0;
    v19 = 0;
    while (1)
    {
      v20 = *(*(v12 + 8 * v19) + 48);
      if (!v20)
      {
        goto LABEL_13;
      }

      if (*(v20 + 24) == 42)
      {
        *(v20 + 10) = v14;
        *(v20 + 4) = v2;
        *(v20 + 6) = v15;
        v21 = *(v20 + 8);
        v22 = v2;
        if (v21 == 3)
        {
          *(v20 + 4) = v15 + v2;
          v22 = v15 + v2;
        }

        if (((5 * v22 + 5) / 11) <= 0x7FFBu)
        {
          v23 = (5 * v22 + 5) / 11 + 4;
        }

        else
        {
          v23 = 4;
        }

        if (v21 == 3)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        *(v20 + 58) = v24;
        *(v20 + 56) = 20;
        *(v20 + 28) = xmmword_273B8E3A0;
        *(v20 + 44) = 0x287984C00813652;
        *(v20 + 52) = 4244080;
        *(v20 + 92) = 0xA2AB200101CFECLL;
        if (webrtc::WebRtcAgc_CalculateGainTable((v20 + 420), v22, v15, v14, v24) == -1)
        {
          goto LABEL_13;
        }

        *(v20 + 20) = v2;
        *(v20 + 22) = v14;
        *(v20 + 18) = v15;
        ++v19;
        v12 = *(this + 6);
        if (v19 >= (*(this + 7) - v12) >> 3)
        {
          return v10;
        }
      }

      else
      {
        *(v20 + 26) = 18002;
LABEL_13:
        v10 = 0xFFFFFFFFLL;
        ++v19;
        v12 = *(this + 6);
        if (v19 >= (*(this + 7) - v12) >> 3)
        {
          return v10;
        }
      }
    }
  }

  v16 = v13 >> 3;
  v17 = *(*v12 + 48);
  if (v17)
  {
    if (*(v17 + 24) == 42)
    {
      *(v17 + 10) = v14;
      *(v17 + 4) = a2;
      v18 = 18004;
    }

    else
    {
      v18 = 18002;
    }

    *(v17 + 26) = v18;
  }

  if (v16 >= 2)
  {
    v26 = v16 - 1;
    v27 = v12 + 8;
    do
    {
      v29 = *(*v27 + 48);
      if (v29)
      {
        if (*(v29 + 24) == 42)
        {
          *(v29 + 10) = v14;
          *(v29 + 4) = a2;
          v28 = 18004;
        }

        else
        {
          v28 = 18002;
        }

        *(v29 + 26) = v28;
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  return 0xFFFFFFFFLL;
}

uint64_t webrtc::GainControlImpl::enable_limiter(webrtc::GainControlImpl *this, int a2)
{
  *(this + 28) = a2;
  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if (!v3)
  {
    return 0;
  }

  v7 = *(this + 8);
  v6 = *(this + 9);
  if (v7 <= 0x1Fu)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*(v2 + 8 * v12) + 48);
      if (!v13)
      {
        goto LABEL_9;
      }

      if (*(v13 + 24) == 42)
      {
        *(v13 + 10) = a2;
        *(v13 + 4) = v6;
        *(v13 + 6) = v7;
        v14 = *(v13 + 8);
        v15 = v6;
        if (v14 == 3)
        {
          *(v13 + 4) = v7 + v6;
          v15 = v7 + v6;
        }

        if (((5 * v15 + 5) / 11) <= 0x7FFBu)
        {
          v16 = (5 * v15 + 5) / 11 + 4;
        }

        else
        {
          v16 = 4;
        }

        if (v14 == 3)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        *(v13 + 58) = v17;
        *(v13 + 56) = 20;
        *(v13 + 28) = xmmword_273B8E3A0;
        *(v13 + 44) = 0x287984C00813652;
        *(v13 + 52) = 4244080;
        *(v13 + 92) = 0xA2AB200101CFECLL;
        if (webrtc::WebRtcAgc_CalculateGainTable((v13 + 420), v15, v7, a2, v17) == -1)
        {
          goto LABEL_9;
        }

        *(v13 + 20) = v6;
        *(v13 + 22) = a2;
        *(v13 + 18) = v7;
        ++v12;
        v2 = *(this + 6);
        if (v12 >= (*(this + 7) - v2) >> 3)
        {
          return v11;
        }
      }

      else
      {
        *(v13 + 26) = 18002;
LABEL_9:
        v11 = 0xFFFFFFFFLL;
        ++v12;
        v2 = *(this + 6);
        if (v12 >= (*(this + 7) - v2) >> 3)
        {
          return v11;
        }
      }
    }
  }

  v8 = v3 >> 3;
  v9 = *(*v2 + 48);
  if (v9)
  {
    if (*(v9 + 24) == 42)
    {
      *(v9 + 10) = a2;
      *(v9 + 4) = v6;
      v10 = 18004;
    }

    else
    {
      v10 = 18002;
    }

    *(v9 + 26) = v10;
  }

  if (v8 >= 2)
  {
    v19 = v8 - 1;
    v20 = v2 + 8;
    do
    {
      v22 = *(*v20 + 48);
      if (v22)
      {
        if (*(v22 + 24) == 42)
        {
          *(v22 + 10) = a2;
          *(v22 + 4) = v6;
          v21 = 18004;
        }

        else
        {
          v21 = 18002;
        }

        *(v22 + 26) = v21;
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  return 0xFFFFFFFFLL;
}

void webrtc::GainController2::GainController2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a2 + 8);
  (*(*v8 + 16))(__p, v8, "WebRTC-Agc2SimdSse2KillSwitch", 29);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v8 + 16))(__p, v8, "WebRTC-Agc2SimdAvx2KillSwitch", 29);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v8 + 16))(__p, v8, "WebRTC-Agc2SimdNeonKillSwitch", 29);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 2) = 0;
  *a1 = 0;
  atomic_fetch_add(webrtc::GainController2::instance_count_, 1u);
  v9 = *(a3 + 28);
  *(a1 + 24) = 0u;
  v10 = __exp10f(v9 / 20.0);
  *(a1 + 4) = 0;
  *(a1 + 8) = v10;
  *(a1 + 12) = v10;
  *(a1 + 16) = 0xBF800000FFFFFFFFLL;
  v11 = a5 / 0x64uLL;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  webrtc::InterpolatedGainCurve::InterpolatedGainCurve(a1 + 72, a1 + 3, "Agc2", 4uLL);
  *(a1 + 160) = a1 + 3;
  *(a1 + 168) = 0;
  *(a1 + 172) = v11;
  if (v11 % 20)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v12, v13, v14, v15, (v11 % 20));
    *(v16 + 20) = 1;
    __break(1u);
  }

  else
  {
    *(a1 + 176) = v11 / 20;
    *(a1 + 184) = a1 + 3;
    bzero((a1 + 192), 0x7D4uLL);
    *(a1 + 2196) = 1065353216;
    *(a1 + 2204) = 0;
    *(a1 + 2208) = 0;
    if ((*(a3 + 1) & 1) != 0 || *(a3 + 4) == 1)
    {
      operator new();
    }

    if (*(a3 + 1) == 1)
    {
      operator new();
    }

    if (*(a3 + 4) == 1)
    {
      operator new();
    }
  }
}

void webrtc::GainController2::~GainController2(webrtc::GainController2 *this)
{
  if (*(this + 144) == 1)
  {
    v2 = *(this + 37);
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_11;
        }

        v3 = *(this + 10);
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v3 = *(this + 9);
        if (!v3)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      webrtc::metrics::HistogramAdd(v3, *(this + 19) / 100);
      goto LABEL_11;
    }

    if (v2 == 2)
    {
      v3 = *(this + 11);
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = *(this + 12);
      if (v3)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1060C40CE23CE1BLL);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    v7 = v6[9];
    if (v7)
    {
      v8 = v6[10];
      v9 = v6[9];
      if (v8 != v7)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x2743DA540](v10, 0x1000C4088480CCALL);
          }
        }

        while (v8 != v7);
        v9 = v6[9];
      }

      v6[10] = v7;
      operator delete(v9);
    }

    v12 = v6[5];
    v6[5] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    MEMORY[0x2743DA540](v6, 0x1020C408821BEBCLL);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    MEMORY[0x2743DA540](v13, 0x1060C40D924619CLL);
  }

  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    webrtc::VoiceActivityDetectorWrapper::~VoiceActivityDetectorWrapper(v14);
    MEMORY[0x2743DA540]();
  }

  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }
}

void webrtc::GainController2::Process(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2208) == 1)
  {
    *(a1 + 2208) = 0;
  }

  if (a3)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      *(v9 + 16) = 400;
      v10 = *(v9 + 8);
      *(v9 + 20) = v10;
      *(v9 + 24) = 0x1903F800000;
      *(v9 + 32) = v10;
      *(v9 + 36) = 1065353216;
      *(v9 + 40) = v10;
      *(v9 + 48) = 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = a2;
      v13 = a4;
      (*(*v11 + 32))(v11);
      a4 = v13;
      a2 = v12;
    }
  }

  v14 = a4[7];
  v15 = a4[3];
  if (v14 && v15)
  {
    v16 = *(a4[10] + 8);
    v17 = *(a1 + 32);
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_15:
    *&v69 = a4[7];
    *(&v69 + 1) = v15;
    v71 = 0;
    v70 = v16;
    webrtc::VoiceActivityDetectorWrapper::Analyze(v17, &v69, a3, a4, a5, a6, a7, a8);
    v18 = v22;
LABEL_16:
    v19 = 1;
    v20 = *v16;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v16 = 0;
  v17 = *(a1 + 32);
  if (v17)
  {
    goto LABEL_15;
  }

LABEL_11:
  v18 = *&a2;
  if ((a2 & 0x100000000) != 0)
  {
    goto LABEL_16;
  }

  v19 = 0;
  v20 = *v16;
  if (!v15)
  {
LABEL_13:
    v21 = 0.0;
    goto LABEL_33;
  }

LABEL_17:
  v23 = 4 * v15;
  v21 = 0.0;
  v24 = 0.0;
  do
  {
    v25 = *v20++;
    v26 = v25;
    v27 = fabsf(v25);
    if (v27 >= v24)
    {
      v24 = v27;
    }

    v21 = v21 + (v26 * v26);
    v23 -= 4;
  }

  while (v23);
  if (v24 > 1.0)
  {
    v28 = (log10f(v24) * 20.0) + -90.309;
    v29 = sqrtf(v21 / v15);
    if (v29 > 1.0)
    {
      goto LABEL_34;
    }

LABEL_23:
    v30 = -90.309;
    v31 = *(a1 + 24);
    if (!v31)
    {
      goto LABEL_35;
    }

LABEL_24:
    *&v69 = v14;
    *(&v69 + 1) = v15;
    v71 = 0;
    v70 = v16;
    v32 = (*(*v31 + 16))(v31, &v69);
    v33 = *(a1 + 40);
    if (!v33)
    {
      goto LABEL_36;
    }

LABEL_25:
    if ((v19 & 1) == 0)
    {
LABEL_75:
      __break(1u);
      return;
    }

    if (v18 >= 0.95)
    {
      v36 = *(v33 + 48) + 1;
      *(v33 + 48) = v36;
      v37 = *(v33 + 16);
      if (v37)
      {
        *(v33 + 16) = v37 - 10;
        v38 = 1.0;
      }

      else
      {
        v38 = 0.9975;
      }

      v40 = (v18 * v30) + (*(v33 + 20) * v38);
      v41 = v18 + (*(v33 + 24) * v38);
      *(v33 + 20) = v40;
      *(v33 + 24) = v41;
      v34 = *(v33 + 12);
      if (v36 >= v34)
      {
        v42 = v40 / v41;
        v43 = 30.0;
        if (v42 < 30.0)
        {
          v43 = v42;
        }

        if (v42 > -90.0)
        {
          v44 = v43;
        }

        else
        {
          v44 = -90.0;
        }

        *(v33 + 40) = v44;
      }

      if (v34 == 1)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

    v34 = *(v33 + 12);
    if (v34 >= 2)
    {
      v35 = *(v33 + 48);
      if (v35 >= v34)
      {
        *(v33 + 28) = *(v33 + 16);
        *(v33 + 36) = *(v33 + 24);
        v36 = 0;
        *(v33 + 48) = 0;
LABEL_52:
        if (!*(v33 + 28))
        {
          *(v33 + 44) = 1;
          v47 = *(a1 + 40);
          v45 = *(a1 + 48);
          v39 = *(v47 + 44);
          v30 = *(v47 + 40);
          if (!v45)
          {
            goto LABEL_63;
          }

          goto LABEL_60;
        }

        if (v36 < v34)
        {
          *(v33 + 44) = 0;
          v46 = *(a1 + 40);
          v45 = *(a1 + 48);
          v39 = *(v46 + 44);
          v30 = *(v46 + 40);
          if (!v45)
          {
            goto LABEL_63;
          }

          goto LABEL_60;
        }

LABEL_59:
        *(v33 + 44) = *(v33 + 16) == 0;
        v48 = *(a1 + 40);
        v45 = *(a1 + 48);
        v39 = *(v48 + 44);
        v30 = *(v48 + 40);
        if (!v45)
        {
          goto LABEL_63;
        }

LABEL_60:
        v49 = LODWORD(v30);
        if (!v39)
        {
          v49 = 0;
        }

        webrtc::InputVolumeController::RecommendInputVolume(v45, v49 | (v39 << 32), v18);
        *(a1 + 2204) = v50;
        *(a1 + 2208) = v51;
LABEL_63:
        if (*(a1 + 64))
        {
          if ((v19 & 1) == 0 || !v33)
          {
            goto LABEL_75;
          }

          (*(**(a1 + 56) + 24))(*(a1 + 56), v18, v28, v30);
          v52 = (*(**(a1 + 56) + 16))(*(a1 + 56));
          v53 = *(a1 + 168);
          v54 = v53 <= 1.0 ? -90.309 : (log10f(v53) * 20.0) + -90.309;
          v55 = *(a1 + 64);
          *v64 = v18;
          *&v64[1] = v30;
          v65 = v39;
          if (!v31)
          {
            goto LABEL_75;
          }

          v66 = v32;
          v67 = v52;
          v68 = v54;
          *&v69 = v14;
          *(&v69 + 1) = v15;
          v70 = v16;
          v71 = 0;
          webrtc::AdaptiveDigitalGainController::Process(v55, v64, &v69);
        }

        goto LABEL_71;
      }

      if (v35 >= 1)
      {
        *(v33 + 16) = *(v33 + 28);
        *(v33 + 24) = *(v33 + 36);
      }
    }

    v36 = 0;
    *(v33 + 48) = 0;
    if (v34 == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_52;
  }

LABEL_33:
  v28 = -90.309;
  v29 = sqrtf(v21 / v15);
  if (v29 <= 1.0)
  {
    goto LABEL_23;
  }

LABEL_34:
  v30 = (log10f(v29) * 20.0) + -90.309;
  v31 = *(a1 + 24);
  if (v31)
  {
    goto LABEL_24;
  }

LABEL_35:
  v32 = 0.0;
  v33 = *(a1 + 40);
  if (v33)
  {
    goto LABEL_25;
  }

LABEL_36:
  if (!*(a1 + 48))
  {
    LOBYTE(v39) = 0;
    goto LABEL_63;
  }

  if (v19 || *(a1 + 64))
  {
    goto LABEL_75;
  }

LABEL_71:
  *&v69 = v14;
  *(&v69 + 1) = v15;
  v70 = v16;
  v71 = 0;
  webrtc::GainApplier::ApplyGain(a1 + 4, &v69);
  *&v69 = v14;
  *(&v69 + 1) = v15;
  v70 = v16;
  v71 = 0;
  webrtc::Limiter::Process((a1 + 72), &v69);
  v56 = *(a1 + 2200) + 1;
  *(a1 + 2200) = v56;
  if (v56 == 3000)
  {
    *(a1 + 2200) = 0;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/gain_controller2.cc");
    }
  }
}

uint64_t webrtc::VCMDecodedFrameCallback::VCMDecodedFrameCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288294050;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  pthread_mutexattr_init(&v15);
  pthread_mutexattr_setpolicy_np(&v15, 3);
  pthread_mutex_init((a1 + 40), &v15);
  pthread_mutexattr_destroy(&v15);
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 160) = a5;
  v7 = *(a1 + 16);
  v8 = (*(*v7 + 16))(v7);
  v9 = (*(*v7 + 24))(v7, v8);
  v10 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (v10 % 0x3E8uLL <= 0x1F3)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = -v10 / 0x3E8uLL;
  if (-v10 % 0x3E8uLL > 0x1F4)
  {
    ++v12;
  }

  if (v10 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11 - v10 / 0x3E8uLL;
  }

  *(a1 + 152) = (v9 / 4294967.3 + 0.5) + 1000 * HIDWORD(v9) + v13;
  return a1;
}

void webrtc::VCMDecodedFrameCallback::~VCMDecodedFrameCallback(webrtc::VCMDecodedFrameCallback *this)
{
  *this = &unk_288294050;
  v2 = *(this + 14);
  v3 = *(this + 15);
  if (v3 == v2)
  {
    v3 = *(this + 14);
    *(this + 18) = 0;
    v9 = 0;
  }

  else
  {
    v4 = *(this + 17);
    v5 = &v2[v4 / 0x13];
    v6 = *v5 + 208 * (v4 % 0x13);
    v7 = v2[(*(this + 18) + v4) / 0x13] + 208 * ((*(this + 18) + v4) % 0x13);
    if (v6 != v7)
    {
      do
      {
        std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(v6);
        v6 += 208;
        if (v6 - *v5 == 3952)
        {
          v8 = v5[1];
          ++v5;
          v6 = v8;
        }
      }

      while (v6 != v7);
      v2 = *(this + 14);
      v3 = *(this + 15);
    }

    *(this + 18) = 0;
    v9 = v3 - v2;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 15);
        v2 = (*(this + 14) + 8);
        *(this + 14) = v2;
        v9 = v3 - v2;
      }

      while (v9 > 2);
    }
  }

  if (v9 == 1)
  {
    v10 = 9;
    goto LABEL_15;
  }

  if (v9 == 2)
  {
    v10 = 19;
LABEL_15:
    *(this + 17) = v10;
  }

  if (v2 != v3)
  {
    do
    {
      v11 = *v2++;
      operator delete(v11);
    }

    while (v2 != v3);
    v13 = *(this + 14);
    v12 = *(this + 15);
    if (v12 != v13)
    {
      *(this + 15) = v12 + ((v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v14 = *(this + 13);
  if (v14)
  {
    operator delete(v14);
  }

  pthread_mutex_destroy((this + 40));
}

{
  webrtc::VCMDecodedFrameCallback::~VCMDecodedFrameCallback(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VCMDecodedFrameCallback::Decoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 0)
  {
    v3 = a3 | 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  (*(*a1 + 32))(a1, a2, v3, 0);
  return 0;
}

void webrtc::VCMDecodedFrameCallback::Decoded(uint64_t a1, uint64_t i, uint64_t a3, __int16 a4)
{
  LOWORD(v4) = a4;
  LOBYTE(v198) = 0;
  v211 = 0;
  pthread_mutex_lock((a1 + 40));
  v8 = *(i + 16);
  LOBYTE(v212) = 0;
  v225 = 0;
  v9 = *(a1 + 136);
  v10 = 0xD79435E50D79435FLL;
  v11 = *(a1 + 112);
  v12 = v11 + 8 * (v9 / 0x13);
  if (*(a1 + 120) == v11)
  {
    v21 = 0;
    v16 = 0;
  }

  else
  {
    v13 = *(v11 + 8 * (v9 / 0x13));
    v14 = v9 % 0x13;
    v15 = &v13[208 * (v9 % 0x13)];
    v16 = *(v11 + 8 * ((*(a1 + 144) + v9) / 0x13)) + 208 * ((*(a1 + 144) + v9) % 0x13);
    if (v15 == v16)
    {
      v21 = 0;
    }

    else
    {
      v17 = &v13[208 * v14];
      v18 = v12;
      while (1)
      {
        v19 = *v17 - v8;
        if (*v17 == v8)
        {
          break;
        }

        if (v19 == 0x80000000)
        {
          if (*v17 > v8)
          {
            break;
          }
        }

        else if ((v19 & 0x80000000) == 0)
        {
          break;
        }

        v17 += 208;
        if (v17 - v13 == 3952)
        {
          v20 = *(v18 + 8);
          v18 += 8;
          v13 = v20;
          v17 = v20;
        }

        if (v17 == v16)
        {
          v17 = v16;
          break;
        }
      }

      if (v17 != v15)
      {
        v21 = 19 * ((v18 - v12) >> 3) - v14 + 0x4EC4EC4EC4EC4EC5 * ((v17 - v13) >> 4);
        v22 = v17;
        v12 = v18;
        if (v17 == v16)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (*v22 == v8)
        {
          v23 = *v22;
          v24 = *(v22 + 1);
          v25 = *(v22 + 3);
          v214 = *(v22 + 2);
          v215 = v25;
          v212 = v23;
          v213 = v24;
          v26 = *(v22 + 4);
          v27 = *(v22 + 5);
          v28 = *(v22 + 7);
          v218 = *(v22 + 6);
          v219 = v28;
          v216 = v26;
          v217 = v27;
          v29 = *(v22 + 16);
          *(v22 + 16) = 0;
          v220 = v29;
          v221 = v22[34];
          v222[0] = 0;
          v224 = 0;
          if (*(v22 + 200) == 1)
          {
            v30 = a3;
            v223 = -1;
            v31 = v22[48];
            if (v31 != -1)
            {
              *&v183 = v222;
              (off_288294098[v31])(&v183, v22 + 36);
              v223 = v31;
            }

            v224 = 1;
            a3 = v30;
          }

          v225 = 1;
          v16 = (v22 + 52);
          if ((v22 - *v12 + 208) == 3952)
          {
            v32 = *(v12 + 8);
            v12 += 8;
            v16 = v32;
          }
        }

        else
        {
          v16 = v22;
        }

        goto LABEL_27;
      }

      v21 = 0;
      v22 = v17;
      v12 = v18;
      if (v17 != v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_27:
  v33 = *(a1 + 136);
  v34 = v33 / 0x13;
  add_explicit = *(a1 + 112);
  v36 = *(a1 + 120);
  v37 = add_explicit + 8 * (v33 / 0x13);
  if (v36 == add_explicit)
  {
    v38 = 0;
    v39 = v37 == v12;
    if (v37 < v12)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v38 = *v37 + 208 * (v33 % 0x13);
    v39 = v37 == v12;
    if (v37 < v12)
    {
      goto LABEL_37;
    }
  }

  if (!v39 || v38 > v16)
  {
    goto LABEL_36;
  }

  while (1)
  {
LABEL_37:
    if (v38 == v16)
    {
      v41 = 0;
      if (v36 != add_explicit)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v41 = 19 * ((v12 - v37) >> 3) + 0x4EC4EC4EC4EC4EC5 * ((v16 - *v12) >> 4) - 0x4EC4EC4EC4EC4EC5 * ((v38 - *v37) >> 4);
      if (v36 != add_explicit)
      {
LABEL_39:
        v42 = *v37 + 208 * (v33 - 19 * v34);
        v179 = v4;
        v181 = a3;
        if (v38 == v42)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }
    }

    v42 = 0;
    v179 = v4;
    v181 = a3;
    if (!v38)
    {
LABEL_40:
      v43 = 0;
      v44 = v42;
      v45 = v37;
      if (v41 < 1)
      {
        goto LABEL_91;
      }

      goto LABEL_49;
    }

LABEL_44:
    v46 = (v38 - *v37) >> 4;
    v47 = (v42 - *v37) >> 4;
    v43 = 0xB13B13B13B13B13BLL * v47 + 0x4EC4EC4EC4EC4EC5 * v46;
    if (v43)
    {
      v48 = v43 + 0x4EC4EC4EC4EC4EC5 * v47;
      if (v48 < 1)
      {
        v79 = 18 - v48;
        v80 = ((v79 * v10) >> 64) >> 4;
        v45 = (v37 - 8 * v80);
        v44 = *v45 + 208 * (19 * v80 - v79) + 3744;
        if (v41 < 1)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v49 = ((v48 * v10) >> 64) >> 4;
        v45 = (v37 + 8 * v49);
        v44 = *v45 + 208 * (v48 - 19 * v49);
        if (v41 < 1)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v44 = v42;
      v45 = v37;
      if (v41 < 1)
      {
        goto LABEL_91;
      }
    }

LABEL_49:
    v50 = *(a1 + 144);
    v51 = v41 + 0x4EC4EC4EC4EC4EC5 * ((v44 - *v45) >> 4);
    if (v43 > (v50 - v41) >> 1)
    {
      v52 = i;
      if (v51 < 1)
      {
        v81 = 18 - v51;
        v82 = ((v81 * v10) >> 64) >> 4;
        v54 = &v45[-v82];
        v55 = *v54;
        v56 = &(*v54)[13 * (19 * v82 - v81) + 234];
        v57 = v50 + v33;
        v58 = ((v57 * v10) >> 64) >> 4;
        v59 = (add_explicit + 8 * v58);
        if (v36 != add_explicit)
        {
LABEL_52:
          v60 = &(*v59)[13 * (v57 - 19 * v58)];
          if (v54 != v59)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        }
      }

      else
      {
        v53 = ((v51 * v10) >> 64) >> 4;
        v54 = &v45[v53];
        v55 = *v54;
        v56 = &(*v54)[13 * (v51 - 19 * v53)];
        v57 = v50 + v33;
        v58 = ((v57 * v10) >> 64) >> 4;
        v59 = (add_explicit + 8 * v58);
        if (v36 != add_explicit)
        {
          goto LABEL_52;
        }
      }

      v60 = 0;
      if (v54 != v59)
      {
LABEL_53:
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, v56, v55 + 247, v45, v44);
        v61 = *(&v183 + 1);
        v62 = v184;
        v63 = v54 + 1;
        for (i = v52; v63 != v59; v62 = v184)
        {
          v64 = *v63++;
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, v64, v64 + 247, v61, v62);
          v61 = *(&v183 + 1);
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, *v59, v60, v61, v62);
        v65 = *(&v183 + 1);
        v66 = v184;
        v68 = *(a1 + 112);
        v67 = *(a1 + 120);
        if (v67 != v68)
        {
LABEL_56:
          v69 = *(a1 + 144) + *(a1 + 136);
          v70 = ((v69 * v10) >> 64) >> 4;
          v71 = *(v68 + 8 * v70) + 208 * (v69 - 19 * v70);
          if (v71 == v66)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_68:
        v71 = 0;
        if (!v66)
        {
LABEL_74:
          a3 = -1;
          if (v67 == v68)
          {
            v84 = 0;
          }

          else
          {
            v84 = 19 * ((v67 - v68) >> 3) - 1;
          }

          v85 = *(a1 + 136);
          v86 = *(a1 + 144) - v41;
          *(a1 + 144) = v86;
          if ((v84 - (v85 + v86)) >= 0x26)
          {
            do
            {
              operator delete(*(v67 - 8));
              v67 = *(a1 + 120) - 8;
              v39 = v67 == *(a1 + 112);
              v87 = 19 * ((v67 - *(a1 + 112)) >> 3) - 1;
              *(a1 + 120) = v67;
              if (v39)
              {
                v87 = 0;
              }
            }

            while ((v87 - (*(a1 + 144) + *(a1 + 136))) > 0x25);
          }

          goto LABEL_91;
        }

        do
        {
LABEL_71:
          std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(v66);
          v66 += 208;
          if (v66 - *v65 == 3952)
          {
            v83 = v65[1];
            ++v65;
            v66 = v83;
          }
        }

        while (v66 != v71);
        v68 = *(a1 + 112);
        v67 = *(a1 + 120);
        goto LABEL_74;
      }

LABEL_67:
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, v56, v60, v45, v44);
      v65 = *(&v183 + 1);
      v66 = v184;
      i = v52;
      v68 = *(a1 + 112);
      v67 = *(a1 + 120);
      if (v67 != v68)
      {
        goto LABEL_56;
      }

      goto LABEL_68;
    }

    if (v51 < 1)
    {
      v88 = (((18 - v51) * v10) >> 64) >> 4;
      v73 = &v45[-v88];
      v74 = *v73 + 208 * (v51 - 18 + 19 * v88) + 3744;
      if (v37 != v45)
      {
LABEL_60:
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, *v45, v44, v73, v74);
        v73 = *(&v183 + 1);
        v74 = v184;
        for (j = v45 - 1; j != v37; v74 = v184)
        {
          v76 = *j--;
          std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, v76, v76 + 3952, v73, v74);
          v73 = *(&v183 + 1);
        }

        v77 = *v37 + 3952;
        v78 = v42;
        goto LABEL_84;
      }
    }

    else
    {
      v72 = ((v51 * v10) >> 64) >> 4;
      v73 = &v45[v72];
      v74 = *v73 + 208 * (v51 - 19 * v72);
      if (v37 != v45)
      {
        goto LABEL_60;
      }
    }

    v78 = v42;
    v77 = v44;
LABEL_84:
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(&v183, v78, v77, v73, v74);
    a3 = v184;
    while (v42 != a3)
    {
      std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(v42);
      v42 += 208;
      if (v42 - *v37 == 3952)
      {
        v89 = *(v37 + 8);
        v37 += 8;
        v42 = v89;
      }
    }

    v90 = *(a1 + 144) - v41;
    v91 = *(a1 + 136) + v41;
    *(a1 + 136) = v91;
    *(a1 + 144) = v90;
    if (v91 >= 0x26)
    {
      v92 = *(a1 + 112);
      do
      {
        operator delete(*v92);
        v92 = (*(a1 + 112) + 8);
        *(a1 + 112) = v92;
        v93 = *(a1 + 136) - 19;
        *(a1 + 136) = v93;
      }

      while (v93 >= 0x26);
    }

LABEL_91:
    LOBYTE(v183) = 0;
    v196 = 0;
    if (v225 != 1)
    {
      v197 = v21;
      goto LABEL_115;
    }

    v187 = v216;
    v188 = v217;
    v189 = v218;
    v190 = v219;
    v183 = v212;
    v184 = v213;
    v185 = v214;
    v186 = v215;
    v94 = v220;
    v220 = 0;
    v191 = v94;
    v192 = v221;
    v193[0] = 0;
    v195 = 0;
    if (v224 != 1)
    {
      v196 = 1;
      v197 = v21;
LABEL_100:
      v96 = v220;
      if (v220)
      {
        goto LABEL_104;
      }

      goto LABEL_115;
    }

    v194 = -1;
    v95 = v223;
    if (v223 == -1)
    {
      v195 = 1;
      v196 = 1;
      v197 = v21;
    }

    else
    {
      a3 = &v212;
      v226[0] = v193;
      (off_288294098[v223])(v226, v222);
      v194 = v95;
      v195 = 1;
      v196 = 1;
      v197 = v21;
      if ((v225 & 1) == 0)
      {
        v100 = 1;
        goto LABEL_117;
      }

      if ((v224 & 1) == 0)
      {
        goto LABEL_100;
      }

      if (v223 != -1)
      {
        (off_288294078[v223])(v226, v222);
      }
    }

    v223 = -1;
    v96 = v220;
    if (v220)
    {
LABEL_104:
      if (atomic_fetch_add(v96, 0xFFFFFFFF) == 1)
      {
        a3 = *(v96 + 1);
        if (a3)
        {
          v97 = *(v96 + 2);
          v98 = *(v96 + 1);
          if (v97 != a3)
          {
            do
            {
              v99 = *(v97 - 96);
              if (v99)
              {
                *(v97 - 88) = v99;
                operator delete(v99);
              }

              v97 -= 104;
            }

            while (v97 != a3);
            v98 = *(v96 + 1);
          }

          *(v96 + 2) = a3;
          operator delete(v98);
        }

        MEMORY[0x2743DA540](v96, 0x1020C40E72D6CFBLL);
      }
    }

LABEL_115:
    if (!v196)
    {
      v12 = v197;
      goto LABEL_140;
    }

    v100 = v195;
LABEL_117:
    v202 = v187;
    v203 = v188;
    v204 = v189;
    v205 = v190;
    v198 = v183;
    v199 = v184;
    v200 = v185;
    v201 = v186;
    v101 = v191;
    v191 = 0;
    v206 = v101;
    v207 = v192;
    v208[0] = 0;
    v210 = 0;
    if ((v100 & 1) == 0)
    {
      v211 = 1;
      v12 = v197;
LABEL_124:
      v102 = v191;
      if (!v191)
      {
        goto LABEL_140;
      }

LABEL_130:
      if (atomic_fetch_add(v102, 0xFFFFFFFF) == 1)
      {
        a3 = *(v102 + 1);
        if (a3)
        {
          v103 = *(v102 + 2);
          v104 = *(v102 + 1);
          if (v103 != a3)
          {
            do
            {
              v105 = *(v103 - 96);
              if (v105)
              {
                *(v103 - 88) = v105;
                operator delete(v105);
              }

              v103 -= 104;
            }

            while (v103 != a3);
            v104 = *(v102 + 1);
          }

          *(v102 + 2) = a3;
          operator delete(v104);
        }

        MEMORY[0x2743DA540](v102, 0x1020C40E72D6CFBLL);
      }

      goto LABEL_140;
    }

    v209 = -1;
    a3 = v194;
    if (v194 == -1)
    {
      v210 = 1;
      v211 = 1;
      v12 = v197;
    }

    else
    {
      *&v212 = v208;
      (off_288294098[v194])(&v212, v193);
      v209 = a3;
      v210 = 1;
      v211 = 1;
      v12 = v197;
      if ((v196 & 1) == 0)
      {
        goto LABEL_140;
      }

      if ((v195 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    if (v194 != -1)
    {
      (off_288294078[v194])(&v212, v193);
    }

    v194 = -1;
    v102 = v191;
    if (v191)
    {
      goto LABEL_130;
    }

LABEL_140:
    v37 = *(a1 + 144);
    pthread_mutex_unlock((a1 + 40));
    if (v12 >= 1)
    {
      (*(**(a1 + 24) + 8))(*(a1 + 24), v12);
    }

    if ((v211 & 1) == 0)
    {
      break;
    }

    v106 = *(a1 + 160);
    if (!v106)
    {
      v10 = 0;
      v21 = 0;
      LOWORD(v4) = 0;
LABEL_152:
      add_explicit = *(&v205 + 1);
      v109 = v206;
      *(i + 24) = *(&v205 + 1);
      if (v109)
      {
        goto LABEL_153;
      }

      goto LABEL_154;
    }

    LOWORD(v4) = 0;
    v10 = 0;
    if (v210 != 1)
    {
      v21 = 0;
      add_explicit = *(&v205 + 1);
      v109 = v206;
      *(i + 24) = *(&v205 + 1);
      if (!v109)
      {
        goto LABEL_154;
      }

LABEL_153:
      add_explicit = atomic_fetch_add_explicit(v109, 1u, memory_order_relaxed);
      goto LABEL_154;
    }

    v21 = 0;
    if (v209 != 1)
    {
      goto LABEL_152;
    }

    v107 = (*(*v106 + 16))(v106, i, v208);
    v16 = v211;
    if ((v211 & 1) == 0)
    {
      goto LABEL_36;
    }

    LOWORD(v4) = v108;
    v10 = v107 & 0xFFFFFFFFFFFFFF00;
    v21 = v107;
    add_explicit = *(&v205 + 1);
    v109 = v206;
    *(i + 24) = *(&v205 + 1);
    if (v109)
    {
      goto LABEL_153;
    }

LABEL_154:
    v117 = *(i + 184);
    *(i + 184) = v109;
    if (v117 && atomic_fetch_add(v117, 0xFFFFFFFF) == 1)
    {
      a3 = *(v117 + 8);
      if (a3)
      {
        v12 = *(v117 + 16);
        v118 = *(v117 + 8);
        if (v12 != a3)
        {
          do
          {
            v119 = *(v12 - 96);
            if (v119)
            {
              *(v12 - 88) = v119;
              operator delete(v119);
            }

            v12 -= 104;
          }

          while (v12 != a3);
          v118 = *(v117 + 8);
        }

        *(v117 + 16) = a3;
        operator delete(v118);
      }

      MEMORY[0x2743DA540](v117, 0x1020C40E72D6CFBLL);
    }

    v16 = v211;
    if (v211)
    {
      *(i + 72) = DWORD2(v200);
      a3 = *(a1 + 32);
      pthread_mutex_lock((a3 + 8));
      v174 = v21;
      if (*(a3 + 104))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a3 + 112) < 500001;
      }

      v120 = *(a3 + 272);
      v21 = *(a3 + 276);
      pthread_mutex_unlock((a3 + 8));
      LODWORD(v121) = (v120 - v37) & ~((v120 - v37) >> 31);
      if (v21)
      {
        v122 = 1;
      }

      else
      {
        v122 = v21;
      }

      if (v21)
      {
        v121 = v121;
      }

      else
      {
        v121 = v120;
      }

      *(i + 148) = v12 | (v121 << 32);
      *(i + 156) = v122;
      v123 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v124 = v123;
      add_explicit = v181;
      v175 = v10;
      v176 = v4;
      if ((v181 & 0x100000000) != 0)
      {
        v4 = 1000 * v181;
      }

      else
      {
        v16 = v211;
        if ((v211 & 1) == 0)
        {
          goto LABEL_36;
        }

        v16 = v200;
        if ((v200 & 1) == 0)
        {
          goto LABEL_36;
        }

        v125 = v123 - *(&v199 + 1);
        if (*(&v199 + 1) == 0x7FFFFFFFFFFFFFFFLL || v123 == 0x8000000000000000)
        {
          v125 = 0x8000000000000000;
        }

        if (v123 == 0x7FFFFFFFFFFFFFFFLL || *(&v199 + 1) == 0x8000000000000000)
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v4 = v125;
        }
      }

      v37 = *(a1 + 32);
      pthread_mutex_lock((v37 + 8));
      a3 = 0x20C49BA5E353F7CFLL;
      v10 = v124 / 0x3E8;
      webrtc::DecodeTimePercentileFilter::AddTiming(*(v37 + 88));
      ++*(v37 + 264);
      pthread_mutex_unlock((v37 + 8));
      v16 = v211;
      if (v211)
      {
        v16 = v200;
        if (v200)
        {
          add_explicit = 0x7FFFFFFFFFFFFFFFLL;
          if (*(&v199 + 1) != 0x7FFFFFFFFFFFFFFFLL && v4 != 0x7FFFFFFFFFFFFFFFLL)
          {
            add_explicit = 0x8000000000000000;
            if (v4 != 0x8000000000000000 && *(&v199 + 1) != 0x8000000000000000)
            {
              add_explicit = *(&v199 + 1) + v4;
            }
          }

          v33 = *(i + 208);
          *(i + 192) = *(&v199 + 1);
          *(i + 200) = add_explicit;
          if ((v33 & 1) == 0)
          {
            *(i + 208) = 1;
          }

          v178 = i;
          if (v201 == 255)
          {
            v180 = -1;
            v182 = -1;
            v37 = -1;
            v139 = -1;
            v21 = -1;
            v12 = -1;
            v177 = -1;
          }

          else
          {
            v129 = *(i + 24);
            v130 = *(a1 + 152);
            v131 = v129 - v130;
            v132 = *(&v201 + 1) - v130;
            v133 = v202 - v130;
            *(&v201 + 1) -= v130;
            *&v202 = v202 - v130;
            v134 = *(&v202 + 1) - v130;
            v135 = v203 - v130;
            *(&v202 + 1) -= v130;
            *&v203 = v203 - v130;
            v136 = *(&v203 + 1) - v130;
            v137 = v204 - v130;
            *(&v203 + 1) -= v130;
            *&v204 = v204 - v130;
            if (v129 < 0)
            {
              if (v131 <= v132)
              {
                v140 = v132;
              }

              else
              {
                v140 = v129 - v130;
              }

              if (v140 <= v133)
              {
                v140 = v133;
              }

              if (v140 <= v134)
              {
                v140 = v134;
              }

              if (v140 <= v135)
              {
                v140 = v135;
              }

              if (v140 <= v136)
              {
                v141 = v136;
              }

              else
              {
                v141 = v140;
              }

              if (v140 < v136)
              {
                v140 = v136;
              }

              if (v141 < v137)
              {
                v140 = v137;
              }

              v138 = v140 + 1;
            }

            else
            {
              v138 = 0;
            }

            v177 = v131 - v138;
            v182 = v132 - v138;
            v180 = v133 - v138;
            explicit = atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire);
            if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v143 = 0, atomic_compare_exchange_strong(&_MergedGlobals_14, &v143, explicit), explicit))
            {
              webrtc::metrics::HistogramAdd(explicit, v182 - v177);
            }

            v37 = v134 - v138;
            v139 = v135 - v138;
            v21 = v136 - v138;
            v12 = v137 - v138;
            CountsLinear = atomic_load_explicit(&qword_28100BA30, memory_order_acquire);
            if (CountsLinear || (CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear(), v145 = 0, atomic_compare_exchange_strong(&qword_28100BA30, &v145, CountsLinear), CountsLinear))
            {
              webrtc::metrics::HistogramAdd(CountsLinear, v180 - v182);
            }

            v146 = atomic_load_explicit(&qword_28100BA38, memory_order_acquire);
            i = v178;
            if (v146 || (v146 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v147 = 0, atomic_compare_exchange_strong(&qword_28100BA38, &v147, v146), v146))
            {
              webrtc::metrics::HistogramAdd(v146, v139 - v180);
            }

            a3 = 0x20C49BA5E353F7CFLL;
          }

          v16 = v211;
          if (v211)
          {
            v16 = v200;
            if (v200)
            {
              v170 = v12;
              v148 = *(&v199 + 1) / 0x3E8uLL;
              if (*(&v199 + 1) % 0x3E8uLL > 0x1F3)
              {
                ++v148;
              }

              if (-*(&v199 + 1) % 0x3E8uLL <= 0x1F4)
              {
                v149 = 0;
              }

              else
              {
                v149 = -1;
              }

              v150 = v149 - -*(&v199 + 1) / 0x3E8uLL;
              if (v199 < 0)
              {
                v12 = v150;
              }

              else
              {
                v12 = v148;
              }

              if (v124 % 0x3E8 <= 0x1F3)
              {
                v151 = v124 / 0x3E8;
              }

              else
              {
                v151 = v10 + 1;
              }

              if (-v124 % 0x3E8uLL <= 0x1F4)
              {
                v152 = 0;
              }

              else
              {
                v152 = -1;
              }

              v153 = v152 - -v124 / 0x3E8uLL;
              if ((v124 & 0x8000000000000000) != 0)
              {
                v154 = v153;
              }

              else
              {
                v154 = v151;
              }

              v172 = v139;
              v173 = v37;
              v171 = v21;
              if (v199 == 1)
              {
                if ((*(&v198 + 1) & 0x8000000000000000) != 0)
                {
                  if (-*(&v198 + 1) % 0x3E8uLL <= 0x1F4)
                  {
                    v155 = 0;
                  }

                  else
                  {
                    v155 = -1;
                  }

                  v10 = v155 - -*(&v198 + 1) / 0x3E8uLL;
                }

                else if (*(&v198 + 1) % 0x3E8uLL <= 0x1F3)
                {
                  v10 = *(&v198 + 1) / 0x3E8uLL;
                }

                else
                {
                  v10 = *(&v198 + 1) / 0x3E8uLL + 1;
                }
              }

              else
              {
                v10 = -1;
              }

              v156 = v201;
              v37 = *(i + 16);
              v21 = *(&v204 + 1);
              i = v205;
              v157 = atomic_load_explicit(&qword_28100BA40, memory_order_acquire);
              if (v157 || (v157 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v158 = 0, atomic_compare_exchange_strong(&qword_28100BA40, &v158, v157), v157))
              {
                webrtc::metrics::HistogramAdd(v157, i - v21);
              }

              v159 = atomic_load_explicit(&qword_28100BA48, memory_order_acquire);
              if (v159 || (v159 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v160 = 0, atomic_compare_exchange_strong(&qword_28100BA48, &v160, v159), v159))
              {
                webrtc::metrics::HistogramAdd(v159, v12 - i);
              }

              v161 = atomic_load_explicit(&qword_28100BA50, memory_order_acquire);
              if (v161 || (v161 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v162 = 0, atomic_compare_exchange_strong(&qword_28100BA50, &v162, v161), v161))
              {
                webrtc::metrics::HistogramAdd(v161, v154 - v12);
              }

              a3 = *(a1 + 32);
              pthread_mutex_lock((a3 + 8));
              *(a3 + 144) = v37;
              *(a3 + 152) = v177;
              *(a3 + 160) = v182;
              *(a3 + 168) = v180;
              *(a3 + 176) = v173;
              *(a3 + 184) = v172;
              *(a3 + 192) = v171;
              *(a3 + 200) = v170;
              *(a3 + 208) = v21;
              *(a3 + 216) = i;
              *(a3 + 224) = v12;
              *(a3 + 232) = v154;
              *(a3 + 240) = v10;
              *(a3 + 248) = v156;
              *(a3 + 249) = v212;
              *(a3 + 252) = *(&v212 + 3);
              *(a3 + 256) = 1;
              pthread_mutex_unlock((a3 + 8));
              v16 = v211;
              if (v211)
              {
                if (v199)
                {
                  v163 = *(&v198 + 1);
                }

                else
                {
                  v163 = -1;
                }

                *(v178 + 32) = v163;
                v164 = *(a1 + 24);
                *&v183 = v178;
                WORD4(v183) = v179;
                *&v184 = v4;
                BYTE8(v184) = BYTE12(v200);
                HIDWORD(v184) = v207;
                *&v185 = v174 | v175;
                BYTE8(v185) = v176;
                (**v164)();
                goto LABEL_277;
              }
            }
          }
        }
      }
    }

LABEL_36:
    __break(1u);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v110, v111, v112, v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/generic_decoder.cc");
  }

LABEL_277:
  if (v211 == 1)
  {
    if (v210 == 1)
    {
      if (v209 != -1)
      {
        (off_288294078[v209])(&v183, v208);
      }

      v209 = -1;
    }

    v165 = v206;
    if (v206 && atomic_fetch_add(v206, 0xFFFFFFFF) == 1)
    {
      v166 = *(v165 + 1);
      if (v166)
      {
        v167 = *(v165 + 2);
        v168 = *(v165 + 1);
        if (v167 != v166)
        {
          do
          {
            v169 = *(v167 - 96);
            if (v169)
            {
              *(v167 - 88) = v169;
              operator delete(v169);
            }

            v167 -= 104;
          }

          while (v167 != v166);
          v168 = *(v165 + 1);
        }

        *(v165 + 2) = v166;
        operator delete(v168);
      }

      MEMORY[0x2743DA540](v165, 0x1020C40E72D6CFBLL);
    }
  }
}

void *std::deque<webrtc::FrameInfo>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 19 * ((v5 - v4) >> 3) - 1;
  }

  v7 = result[4];
  if (v6 == result[5] + v7)
  {
    v8 = v7 >= 0x13;
    v9 = v7 - 19;
    if (!v8)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

LABEL_23:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    result[4] = v9;
    v26 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(result, &v26);
    v4 = v3[1];
    v5 = v3[2];
  }

  if (v5 == v4 || (v14 = v3[5] + v3[4], (v15 = *&v4[8 * (v14 / 0x13)]) == 0))
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15 + 208 * (v14 % 0x13);
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[3];
  *(v16 + 32) = a2[2];
  *(v16 + 48) = v19;
  *v16 = v17;
  *(v16 + 16) = v18;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[7];
  *(v16 + 96) = a2[6];
  *(v16 + 112) = v22;
  *(v16 + 64) = v20;
  *(v16 + 80) = v21;
  v23 = *(a2 + 16);
  *(a2 + 16) = 0;
  v24 = *(a2 + 34);
  *(v16 + 144) = 0;
  *(v16 + 128) = v23;
  *(v16 + 136) = v24;
  *(v16 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    *(v16 + 192) = -1;
    v25 = *(a2 + 48);
    if (v25 != -1)
    {
      v26 = v16 + 144;
      result = (off_288294098[v25])(&v26, a2 + 9);
      *(v16 + 192) = v25;
    }

    *(v16 + 200) = 1;
  }

  ++v3[5];
  return result;
}

void webrtc::VCMGenericDecoder::~VCMGenericDecoder(webrtc::VCMGenericDecoder *this)
{
  (*(**(this + 1) + 48))(*(this + 1));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t webrtc::VCMGenericDecoder::Configure(webrtc::VCMGenericDecoder *this, const webrtc::VideoDecoder::Settings *a2)
{
  v3 = (*(**(this + 1) + 16))(*(this + 1), a2);
  (*(**(this + 1) + 56))(__p);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  *(this + 24) = *__p;
  *(this + 5) = v13;
  *(this + 48) = v14;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::VideoDecoder::DecoderInfo::ToString((this + 24), __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/generic_decoder.cc");
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*this)
  {
    (*(**(*this + 24) + 24))(*(*this + 24), this + 24);
  }

  return v3;
}

uint64_t webrtc::VCMGenericDecoder::Decode(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82[0] = 0;
  v84 = 0;
  LODWORD(v72) = *(a2 + 152);
  LOBYTE(v74) = 1;
  *(&v73 + 1) = a3;
  *(&v72 + 1) = (1000 * a4) & ~(a4 >> 63);
  LOBYTE(v73) = a4 >= 0;
  DWORD2(v74) = *(a2 + 28);
  v9 = *(a2 + 56);
  v10 = *(a2 + 88);
  v77 = *(a2 + 72);
  v78 = v10;
  v11 = *(a2 + 104);
  v75 = *(a2 + 40);
  v76 = v9;
  v12 = *(a2 + 8);
  *&v79 = v11;
  *(&v79 + 1) = v12;
  v13 = *(a2 + 304);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
  }

  v80 = v13;
  v14 = *(a5 + 56);
  if (*(a5 + 56))
  {
    v82[0] = 0;
    v83 = -1;
    v5 = *(a5 + 48);
    if (v5 != -1)
    {
      v63[0] = v82;
      (off_2882940A8[v5])(v63, a5);
      v83 = v5;
    }

    v84 = 1;
    v15 = *(a2 + 24);
    if (v15 == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *(a2 + 24);
    if (v15 == 3)
    {
LABEL_7:
      v16 = *(a2 + 32);
      a1->__r_.__value_.__s.__data_[16] = v16;
      goto LABEL_10;
    }
  }

  v16 = a1->__r_.__value_.__s.__data_[16];
LABEL_10:
  BYTE12(v74) = v16;
  v81 = v15;
  v17 = a1->__r_.__value_.__r.__words[0];
  v66[5] = v77;
  v66[6] = v78;
  v66[7] = v79;
  v66[0] = v72;
  v66[1] = v73;
  v66[3] = v75;
  v66[4] = v76;
  v66[2] = v74;
  v18 = v80;
  v80 = 0;
  v67 = v18;
  v68 = v15;
  v69[0] = 0;
  v71 = 0;
  if (v14)
  {
    v70 = -1;
    if (v5 != -1)
    {
      v63[0] = v69;
      (off_288294098[v5])(v63, v82);
      v70 = v5;
    }

    v71 = 1;
  }

  pthread_mutex_lock((v17 + 40));
  if (*(v17 + 144) != 10)
  {
    std::deque<webrtc::FrameInfo>::push_back((v17 + 104), v66);
    pthread_mutex_unlock((v17 + 40));
    if (v71 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(*(*(v17 + 112) + 8 * (*(v17 + 136) / 0x13uLL)) + 208 * (*(v17 + 136) % 0x13uLL));
  v19 = vaddq_s64(*(v17 + 136), xmmword_273B93620);
  *(v17 + 136) = v19;
  if (v19.i64[0] >= 0x26uLL)
  {
    operator delete(**(v17 + 112));
    *(v17 + 112) += 8;
    *(v17 + 136) -= 19;
  }

  std::deque<webrtc::FrameInfo>::push_back((v17 + 104), v66);
  pthread_mutex_unlock((v17 + 40));
  (*(**(v17 + 24) + 8))(*(v17 + 24), 1);
  if (v71 == 1)
  {
LABEL_20:
    if (v70 != -1)
    {
      (off_288294078[v70])(v63, v69);
    }

    v70 = -1;
  }

LABEL_23:
  v20 = v67;
  if (v67 && atomic_fetch_add(v67, 0xFFFFFFFF) == 1)
  {
    v21 = *(v20 + 1);
    if (v21)
    {
      v22 = *(v20 + 2);
      v23 = *(v20 + 1);
      if (v22 != v21)
      {
        do
        {
          v24 = *(v22 - 96);
          if (v24)
          {
            *(v22 - 88) = v24;
            operator delete(v24);
          }

          v22 -= 104;
        }

        while (v22 != v21);
        v23 = *(v20 + 1);
      }

      *(v20 + 2) = v21;
      operator delete(v23);
    }

    MEMORY[0x2743DA540](v20, 0x1020C40E72D6CFBLL);
  }

  v25 = (*(*a1->__r_.__value_.__l.__size_ + 24))(a1->__r_.__value_.__l.__size_, a2, a4);
  (*(*a1->__r_.__value_.__l.__size_ + 56))(v63);
  p_data = &a1[1].__r_.__value_.__l.__data_;
  if (v65 != a1[2].__r_.__value_.__s.__data_[0])
  {
    goto LABEL_111;
  }

  if (v64 >= 0)
  {
    v27 = HIBYTE(v64);
  }

  else
  {
    v27 = v63[1];
  }

  size = HIBYTE(a1[1].__r_.__value_.__r.__words[2]);
  v29 = size;
  if ((size & 0x80u) != 0)
  {
    size = a1[1].__r_.__value_.__l.__size_;
  }

  if (v27 != size || (v64 >= 0 ? (v30 = v63) : (v30 = v63[0]), v29 >= 0 ? (v31 = a1 + 1) : (v31 = *p_data), memcmp(v30, v31, v27)))
  {
LABEL_111:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::VideoDecoder::DecoderInfo::ToString(v63, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/generic_decoder.cc");
      if (v62 < 0)
      {
        operator delete(__p);
      }
    }

    if (p_data != v63)
    {
      if (SHIBYTE(a1[1].__r_.__value_.__r.__words[2]) < 0)
      {
        if (v64 >= 0)
        {
          v39 = v63;
        }

        else
        {
          v39 = v63[0];
        }

        if (v64 >= 0)
        {
          v40 = HIBYTE(v64);
        }

        else
        {
          v40 = v63[1];
        }

        std::string::__assign_no_alias<false>(a1 + 1, v39, v40);
      }

      else if (v64 < 0)
      {
        std::string::__assign_no_alias<true>(&a1[1], v63[0], v63[1]);
      }

      else
      {
        *p_data = *v63;
        a1[1].__r_.__value_.__r.__words[2] = v64;
      }
    }

    a1[2].__r_.__value_.__s.__data_[0] = v65;
    v41 = HIBYTE(v64);
    if (v64 < 0)
    {
      v41 = v63[1];
    }

    if (!v41)
    {
      if (SHIBYTE(v64) < 0)
      {
        v63[1] = 7;
        v42 = v63[0];
      }

      else
      {
        HIBYTE(v64) = 7;
        v42 = v63;
      }

      strcpy(v42, "unknown");
    }

    (*(**(a1->__r_.__value_.__r.__words[0] + 24) + 24))(*(a1->__r_.__value_.__r.__words[0] + 24), v63);
  }

  if ((v25 & 0x80000000) != 0 || v25 == 1)
  {
    v43 = a1->__r_.__value_.__r.__words[0];
    pthread_mutex_lock((a1->__r_.__value_.__r.__words[0] + 40));
    v44 = *(v43 + 144);
    v45 = *(v43 + 112);
    v46 = *(v43 + 120);
    if (v46 == v45)
    {
      *(v43 + 144) = 0;
      v52 = 0;
    }

    else
    {
      v47 = *(v43 + 136);
      v48 = &v45[v47 / 0x13];
      v49 = *v48 + 208 * (v47 % 0x13);
      v50 = v45[(v47 + v44) / 0x13] + 208 * ((v47 + v44) % 0x13);
      if (v49 != v50)
      {
        do
        {
          std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(v49);
          v49 += 208;
          if (v49 - *v48 == 3952)
          {
            v51 = v48[1];
            ++v48;
            v49 = v51;
          }
        }

        while (v49 != v50);
        v45 = *(v43 + 112);
        v46 = *(v43 + 120);
      }

      *(v43 + 144) = 0;
      v52 = v46 - v45;
      if (v52 >= 3)
      {
        do
        {
          operator delete(*v45);
          v53 = *(v43 + 120);
          v45 = (*(v43 + 112) + 8);
          *(v43 + 112) = v45;
          v52 = (v53 - v45) >> 3;
        }

        while (v52 > 2);
      }
    }

    if (v52 == 1)
    {
      v54 = 9;
    }

    else
    {
      if (v52 != 2)
      {
        goto LABEL_88;
      }

      v54 = 19;
    }

    *(v43 + 136) = v54;
LABEL_88:
    pthread_mutex_unlock((v43 + 40));
    if (v44 >= 1)
    {
      (*(**(v43 + 24) + 8))(*(v43 + 24), v44);
    }
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
    if (v84 != 1)
    {
LABEL_92:
      v55 = v80;
      if (!v80)
      {
        return v25;
      }

      goto LABEL_98;
    }
  }

  else if (v84 != 1)
  {
    goto LABEL_92;
  }

  if (v83 != -1)
  {
    (off_288294078[v83])(v63, v82);
  }

  v83 = -1;
  v55 = v80;
  if (v80)
  {
LABEL_98:
    if (atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
    {
      v56 = *(v55 + 1);
      if (v56)
      {
        v57 = *(v55 + 2);
        v58 = *(v55 + 1);
        if (v57 != v56)
        {
          do
          {
            v59 = *(v57 - 96);
            if (v59)
            {
              *(v57 - 88) = v59;
              operator delete(v59);
            }

            v57 -= 104;
          }

          while (v57 != v56);
          v58 = *(v55 + 1);
        }

        *(v55 + 2) = v56;
        operator delete(v58);
      }

      MEMORY[0x2743DA540](v55, 0x1020C40E72D6CFBLL);
    }
  }

  return v25;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISB_LNS0_6_TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_6__baseILSF_1EJS9_SA_EEEOSP_EEEDcSH_DpT0_(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 48);
  if (v4 != -1)
  {
    if (!v4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_288294078[v4])(&v6, v3);
    a3 = v5;
  }

  *(v3 + 48) = -1;
  *v3 = *a3;
  *(v3 + 48) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS8_24FrameInstrumentationDataEEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISB_LNS0_6_TraitE1EEEEEvOT_EUlRSH_OT0_E_JRNS0_6__baseILSF_1EJS9_SA_EEEOSP_EEEDcSH_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_288294078[v5])(&v12, v4);
LABEL_7:
    *(v4 + 48) = -1;
    v11 = *(a3 + 2);
    *v4 = *a3;
    *(v4 + 16) = v11;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    result = *(a3 + 24);
    *(v4 + 24) = result;
    *(v4 + 40) = *(a3 + 5);
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 5) = 0;
    *(v4 + 48) = 1;
    return result;
  }

  v6 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v6;
  v8 = (a2 + 24);
  v7 = *(a2 + 24);
  if (v7)
  {
    *(a2 + 32) = v7;
    v9 = a2;
    operator delete(v7);
    a2 = v9;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  result = *(a3 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = *(a3 + 5);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData> &&>(void **result, void *a2)
{
  if (*result)
  {
    **result = *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,webrtc::FrameInstrumentationSyncData,webrtc::FrameInstrumentationData> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(a2 + 16);
    *v2 = *a2;
    *(v2 + 16) = v3;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 24) = *(a2 + 24);
    *(v2 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    v29 = a2;
    goto LABEL_38;
  }

  v31 = result;
  v32 = a4;
  v6 = *a4;
  for (i = a3; ; i = v10)
  {
    v8 = 0x4EC4EC4EC4EC4EC5 * ((a5 - v6) >> 4);
    v9 = a2;
    if (0x4EC4EC4EC4EC4EC5 * ((i - a2) >> 4) < v8)
    {
      v8 = 0x4EC4EC4EC4EC4EC5 * ((i - a2) >> 4);
    }

    v10 = i - 208 * v8;
    if (v8)
    {
      do
      {
        v11 = *(i - 208);
        v12 = *(i - 192);
        v13 = *(i - 160);
        *(a5 - 176) = *(i - 176);
        *(a5 - 160) = v13;
        *(a5 - 208) = v11;
        *(a5 - 192) = v12;
        v14 = *(i - 144);
        v15 = *(i - 128);
        v16 = *(i - 96);
        *(a5 - 112) = *(i - 112);
        *(a5 - 96) = v16;
        *(a5 - 144) = v14;
        *(a5 - 128) = v15;
        v17 = *(i - 80);
        *(i - 80) = 0;
        v18 = *(a5 - 80);
        *(a5 - 80) = v17;
        if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
        {
          v19 = *(v18 + 8);
          if (v19)
          {
            v20 = *(v18 + 16);
            v21 = *(v18 + 8);
            if (v20 != v19)
            {
              do
              {
                v22 = *(v20 - 96);
                if (v22)
                {
                  *(v20 - 88) = v22;
                  operator delete(v22);
                }

                v20 -= 104;
              }

              while (v20 != v19);
              v21 = *(v18 + 8);
            }

            *(v18 + 16) = v19;
            operator delete(v21);
          }

          MEMORY[0x2743DA540](v18, 0x1020C40E72D6CFBLL);
        }

        *(a5 - 72) = *(i - 72);
        v23 = a5 - 64;
        v24 = i - 64;
        if (*(a5 - 8) != *(i - 8))
        {
          if (*(a5 - 8))
          {
            v27 = *(a5 - 16);
            if (v27 != -1)
            {
              (off_288294078[v27])(&v33, v23, v24);
            }

            *(a5 - 16) = -1;
            *(a5 - 8) = 0;
          }

          else
          {
            *(a5 - 64) = 0;
            *(a5 - 16) = -1;
            v28 = *(i - 16);
            if (v28 != -1)
            {
              v33 = a5 - 64;
              (off_288294098[v28])(&v33, i - 64);
              *(a5 - 16) = v28;
            }

            *(a5 - 8) = 1;
          }

          goto LABEL_10;
        }

        if (*(a5 - 8))
        {
          v25 = *(a5 - 16);
          v26 = *(i - 16);
          if (v25 != -1)
          {
            if (v26 == -1)
            {
              (off_288294078[v25])(&v33, v23, v24);
              *(a5 - 16) = -1;
              goto LABEL_10;
            }

LABEL_9:
            v33 = a5 - 64;
            (off_288294088[v26])(&v33);
            goto LABEL_10;
          }

          if (v26 != -1)
          {
            goto LABEL_9;
          }
        }

LABEL_10:
        i -= 208;
        a5 -= 208;
      }

      while (i != v10);
    }

    if (v10 == v9)
    {
      break;
    }

    a2 = v9;
    v6 = *--v32;
    a5 = v6 + 3952;
  }

  a4 = v32;
  if (*v32 + 3952 == a5)
  {
    a4 = v32 + 1;
    a5 = v32[1];
  }

  v29 = a3;
  result = v31;
LABEL_38:
  *result = v29;
  result[1] = a4;
  result[2] = a5;
  return result;
}

uint64_t std::__destroy_at[abi:sn200100]<webrtc::FrameInfo,0>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 200) == 1)
    {
      v2 = *(result + 192);
      if (v2 != -1)
      {
        result = (off_288294078[v2])(&v8, result + 144);
      }

      *(v1 + 192) = -1;
    }

    v3 = *(v1 + 128);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 8);
        if (v5 != v4)
        {
          do
          {
            v7 = *(v5 - 96);
            if (v7)
            {
              *(v5 - 88) = v7;
              operator delete(v7);
            }

            v5 -= 104;
          }

          while (v5 != v4);
          v6 = *(v3 + 8);
        }

        *(v3 + 16) = v4;
        operator delete(v6);
      }

      return MEMORY[0x2743DA540](v3, 0x1020C40E72D6CFBLL);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<webrtc::FrameInfo *,std::__deque_iterator<webrtc::FrameInfo,webrtc::FrameInfo *,webrtc::FrameInfo&,webrtc::FrameInfo **,long,19l>,0>(__int128 **result, __int128 *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v6 = a2;
  if (a2 == a3)
  {
    v10 = a2;
    goto LABEL_40;
  }

  v28 = result;
  v29 = a3;
  v7 = *a4;
  while (1)
  {
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v7 - a5 + 3952) >> 4);
    if (0x4EC4EC4EC4EC4EC5 * (a3 - v6) < v9)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (a3 - v6);
    }

    if (v9)
    {
      break;
    }

LABEL_5:
    v8 = a4[1];
    ++a4;
    v7 = v8;
    a5 = v8;
  }

  v30 = a4;
  v10 = &v6[13 * v9];
  do
  {
    v11 = *v6;
    v12 = v6[1];
    v13 = v6[3];
    *(a5 + 32) = v6[2];
    *(a5 + 48) = v13;
    *a5 = v11;
    *(a5 + 16) = v12;
    v14 = v6[4];
    v15 = v6[5];
    v16 = v6[7];
    *(a5 + 96) = v6[6];
    *(a5 + 112) = v16;
    *(a5 + 64) = v14;
    *(a5 + 80) = v15;
    v17 = *(v6 + 16);
    *(v6 + 16) = 0;
    v18 = *(a5 + 128);
    *(a5 + 128) = v17;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        v20 = *(v18 + 16);
        v21 = *(v18 + 8);
        if (v20 != v19)
        {
          do
          {
            v22 = *(v20 - 96);
            if (v22)
            {
              *(v20 - 88) = v22;
              operator delete(v22);
            }

            v20 -= 104;
          }

          while (v20 != v19);
          v21 = *(v18 + 8);
        }

        *(v18 + 16) = v19;
        operator delete(v21);
      }

      MEMORY[0x2743DA540](v18, 0x1020C40E72D6CFBLL);
    }

    *(a5 + 136) = *(v6 + 34);
    v23 = a5 + 144;
    if (*(a5 + 200) == *(v6 + 200))
    {
      if (*(a5 + 200))
      {
        v24 = *(a5 + 192);
        v25 = *(v6 + 48);
        if (v24 == -1)
        {
          if (v25 == -1)
          {
            goto LABEL_12;
          }

LABEL_11:
          v31 = a5 + 144;
          (off_288294088[v25])(&v31);
          goto LABEL_12;
        }

        if (v25 != -1)
        {
          goto LABEL_11;
        }

        (off_288294078[v24])(&v31, v23);
        *(a5 + 192) = -1;
      }
    }

    else if (*(a5 + 200))
    {
      v26 = *(a5 + 192);
      if (v26 != -1)
      {
        (off_288294078[v26])(&v31, v23);
      }

      *(a5 + 192) = -1;
      *(a5 + 200) = 0;
    }

    else
    {
      *(a5 + 144) = 0;
      *(a5 + 192) = -1;
      v27 = *(v6 + 48);
      if (v27 != -1)
      {
        v31 = a5 + 144;
        (off_288294098[v27])(&v31, v6 + 9);
        *(a5 + 192) = v27;
      }

      *(a5 + 200) = 1;
    }

LABEL_12:
    v6 += 13;
    a5 += 208;
  }

  while (v6 != v10);
  a3 = v29;
  if (v10 != v29)
  {
    v6 = v10;
    a4 = v30;
    goto LABEL_5;
  }

  a4 = v30;
  if (*v30 + 3952 == a5)
  {
    a4 = v30 + 1;
    a5 = v30[1];
  }

  result = v28;
LABEL_40:
  *result = v10;
  result[1] = a4;
  result[2] = a5;
  return result;
}

webrtc::GenericFrameInfo *webrtc::GenericFrameInfo::GenericFrameInfo(webrtc::GenericFrameInfo *this, const webrtc::GenericFrameInfo *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  v4 = (this + 8);
  v7 = *(a2 + 1);
  v5 = (a2 + 8);
  v6 = v7;
  if (v7 < 2)
  {
    *(this + 7) = 0;
    v8 = (this + 56);
    v9 = (a2 + 56);
    v10 = *(a2 + 7);
    if (v10 < 2)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v10)
    {
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v8, v9);
      *(this + 10) = 0;
      v11 = (this + 80);
      v12 = (a2 + 80);
      v13 = *(a2 + 10);
      if (v13 >= 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(this + 7) = v10;
      *(this + 4) = *(a2 + 4);
      *(this + 10) = 0;
      v11 = (this + 80);
      v12 = (a2 + 80);
      v13 = *(a2 + 10);
      if (v13 >= 2)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    *(this + 13) = 0;
    v14 = (this + 104);
    v15 = (a2 + 104);
    v16 = *(a2 + 13);
    if (v16 < 2)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  if (v6)
  {
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(v4, v5);
    *(this + 7) = 0;
    v8 = (this + 56);
    v9 = (a2 + 56);
    v10 = *(a2 + 7);
    if (v10 >= 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(this + 1) = v6;
    v20 = *(a2 + 1);
    v21 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 1) = v20;
    *(this + 2) = v21;
    *(this + 7) = 0;
    v8 = (this + 56);
    v9 = (a2 + 56);
    v10 = *(a2 + 7);
    if (v10 >= 2)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  *(this + 10) = 0;
  v11 = (this + 80);
  v12 = (a2 + 80);
  v13 = *(a2 + 10);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_16:
  if (v13)
  {
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v11, v12);
    *(this + 13) = 0;
    v14 = (this + 104);
    v15 = (a2 + 104);
    v16 = *(a2 + 13);
    if (v16 < 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(this + 10) = v13;
    *(this + 88) = *(a2 + 88);
    *(this + 13) = 0;
    v14 = (this + 104);
    v15 = (a2 + 104);
    v16 = *(a2 + 13);
    if (v16 < 2)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if (v16)
  {
    absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::InitFrom(v14, v15);
  }

  else
  {
    *(this + 13) = v16;
    v17 = *(a2 + 7);
    v18 = *(a2 + 8);
    v19 = *(a2 + 10);
    *(this + 9) = *(a2 + 9);
    *(this + 10) = v19;
    *(this + 7) = v17;
    *(this + 8) = v18;
  }

LABEL_20:
  std::vector<BOOL>::vector(this + 22, a2 + 176);
  *(this + 25) = *(a2 + 25);
  return this;
}

void webrtc::GenericFrameInfo::~GenericFrameInfo(webrtc::GenericFrameInfo *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 104))
  {
    operator delete(*(this + 14));
    if ((*(this + 80) & 1) == 0)
    {
LABEL_5:
      if ((*(this + 56) & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 11));
  if ((*(this + 56) & 1) == 0)
  {
LABEL_6:
    if ((*(this + 8) & 1) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(*(this + 2));
    return;
  }

LABEL_10:
  operator delete(*(this + 8));
  if (*(this + 8))
  {
    goto LABEL_11;
  }
}

void *absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 4 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 8 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

void webrtc::GoogCcNetworkControllerFactory::Create(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (**v2)(&v4);
    v3 = *(a1 + 16);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
LABEL_5:
      operator new();
    }
  }

  (**v3)(&v4);
  goto LABEL_5;
}

void webrtc::GoogCcNetworkControllerFactory::~GoogCcNetworkControllerFactory(webrtc::GoogCcNetworkControllerFactory *this)
{
  v1 = *(this + 1);
  *this = &unk_2882940C8;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2882940C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::GoogCcNetworkController::GoogCcNetworkController(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882940F8;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a3 + 16);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 111) = 7;
  if (a1 + 88 <= "Enabled" && a1 + 95 > "Enabled" || (strcpy((a1 + 88), "Enabled"), *(a1 + 112) = 0, *(a1 + 56) = &unk_288293940, *(a1 + 136) = 0, *(a1 + 144) = 0, *(a1 + 175) = 3, *(a1 + 128) = 0, a1 + 152 <= "ack") && a1 + 155 > "ack")
  {
    __break(1u);
  }

  *(a1 + 154) = 107;
  *(a1 + 152) = 25441;
  *(a1 + 155) = 0;
  *(a1 + 176) = 0;
  *(a1 + 120) = &unk_288293940;
  (*(**(a1 + 16) + 16))(__p);
  v6 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6 >= 8)
  {
    v8 = __p[0];
    if ((v16 & 0x80u) == 0)
    {
      v8 = __p;
    }

    v7 = *v8 != 0x64656C6261736944;
    if ((v16 & 0x80000000) == 0)
    {
LABEL_16:
      *(a1 + 184) = v7;
      (*(**(a1 + 16) + 16))(__p);
      v9 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v9 = __p[1];
      }

      if (v9 >= 8)
      {
        v11 = __p[0];
        if ((v16 & 0x80u) == 0)
        {
          v11 = __p;
        }

        v10 = *v11 != 0x64656C6261736944;
        if ((v16 & 0x80000000) == 0)
        {
LABEL_25:
          *(a1 + 185) = v10;
          (*(**(a1 + 16) + 16))(__p);
          v12 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v12 = __p[1];
          }

          if (v12 >= 8)
          {
            v14 = __p[0];
            if ((v16 & 0x80u) == 0)
            {
              v14 = __p;
            }

            v13 = *v14 != 0x64656C6261736944;
            if ((v16 & 0x80000000) == 0)
            {
LABEL_34:
              *(a1 + 186) = v13;
              webrtc::RateControlSettings::RateControlSettings(a1 + 192, *(a1 + 16));
            }
          }

          else
          {
            v13 = 1;
            if ((v16 & 0x80000000) == 0)
            {
              goto LABEL_34;
            }
          }

          operator delete(__p[0]);
          goto LABEL_34;
        }
      }

      else
      {
        v10 = 1;
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }
      }

      operator delete(__p[0]);
      goto LABEL_25;
    }
  }

  else
  {
    v7 = 1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__p[0]);
  goto LABEL_16;
}

void webrtc::GoogCcNetworkController::~GoogCcNetworkController(void **this)
{
  *this = &unk_2882940F8;
  std::deque<long long>::~deque[abi:sn200100](this + 94);
  if (*(this + 536) == 1)
  {
    v2 = this[45];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  v3 = this[44];
  this[44] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[43];
  this[43] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[42];
  this[42] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[41];
  this[41] = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = this[40];
  this[40] = 0;
  if (v7)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v7, *(v7 + 8));
    MEMORY[0x2743DA540](v7, 0x1060C4034819227);
  }

  v8 = this[39];
  this[39] = 0;
  if (v8)
  {
    MEMORY[0x2743DA540](v8, 0x1020C407CA1986DLL);
  }

  v9 = this[38];
  this[38] = 0;
  if (v9)
  {
    webrtc::SendSideBandwidthEstimation::~SendSideBandwidthEstimation(v9);
    MEMORY[0x2743DA540]();
  }

  v10 = this[37];
  this[37] = 0;
  if (v10)
  {
    MEMORY[0x2743DA540](v10, 0x1000C40B46F825FLL);
  }

  v11 = this[36];
  this[36] = 0;
  if (v11)
  {
    webrtc::ProbeControllerConfig::~ProbeControllerConfig((v11 + 304));
    MEMORY[0x2743DA540](v11, 0x10B2C40EA80DAC0);
  }

  this[15] = &unk_288293910;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v12 = this[16];
  if (v12)
  {
    this[17] = v12;
    operator delete(v12);
  }

  this[7] = &unk_288293910;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v13 = this[8];
  if (v13)
  {
    this[9] = v13;
    operator delete(v13);
  }

  v14 = this[1];
  if (v14)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }
}

{
  webrtc::GoogCcNetworkController::~GoogCcNetworkController(this);

  JUMPOUT(0x2743DA540);
}

double webrtc::GoogCcNetworkController::OnNetworkAvailability@<D0>(uint64_t a1@<X0>, Timestamp a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  *(a4 + 152) = 0;
  *(a4 + 80) = 0;
  v4 = *(a1 + 288);
  *v4 = a3 & 1;
  v5 = *(v4 + 20);
  if (a3)
  {
    if (!v5 && *(v4 + 192))
    {
      webrtc::ProbeController::InitiateExponentialProbing(v4, a2);
    }
  }

  else if (v5 == 1)
  {
    *(v4 + 20) = 2;
    *(v4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0.0;
  *(a4 + 56) = 0uLL;
  *(a4 + 72) = 0;
  return result;
}

void webrtc::GoogCcNetworkController::OnNetworkRouteChange(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 113) == 1)
  {
    if (*(a1 + 177) == 1)
    {
      v4 = (*(**(a1 + 352) + 24))(*(a1 + 352));
      if ((v5 & 1) == 0)
      {
        v4 = (*(**(a1 + 352) + 32))(*(a1 + 352));
        if ((v5 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v6 = *(a1 + 304);
      v7 = *(v6 + 488);
      if ((*(v6 + 1977) & 1) == 0 && *(v6 + 568) < v7)
      {
        v7 = *(v6 + 568);
      }

      v8 = *(v6 + 504);
      if (v8 <= v7)
      {
        v4 = v7;
      }

      else
      {
        v4 = v8;
      }

      v5 = 1;
    }

    if (*(a2 + 56) == 1)
    {
      v9 = *(a2 + 48);
      if (v4 < v9)
      {
        v9 = v4;
      }

      *(a2 + 48) = v9;
    }

    else
    {
      *(a2 + 48) = v4;
      *(a2 + 56) = v5;
    }
  }

LABEL_18:
  webrtc::RobustThroughputEstimatorSettings::RobustThroughputEstimatorSettings(&v10);
}

uint64_t webrtc::GoogCcNetworkController::ResetConstraints(void *a1, webrtc::GoogCcNetworkController *this, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    *(this + 68) = *(a3 + 8);
    if (*(a3 + 32) != 1)
    {
LABEL_3:
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }
  }

  else
  {
    *(this + 68) = 0;
    if (*(a3 + 32) != 1)
    {
      goto LABEL_3;
    }
  }

  v6 = *(a3 + 24);
LABEL_6:
  *(this + 70) = v6;
  v7 = *(a3 + 40);
  *(this + 576) = *(a3 + 48);
  *(this + 71) = v7;
  webrtc::GoogCcNetworkController::ClampConstraints(this);
  v8 = *(this + 38);
  v9 = *(this + 71);
  v10 = *(this + 144);
  v11 = *(this + 70);
  v12 = *a3;
  if (*(this + 69) <= 5000)
  {
    v13 = 5000;
  }

  else
  {
    v13 = *(this + 69);
  }

  v14 = v11 - 1;
  if (v13 > v11)
  {
    v11 = v13;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v15 = 1000000000;
  }

  else
  {
    v15 = v11;
  }

  *(v8 + 504) = v13;
  *(v8 + 512) = v15;
  webrtc::LossBasedBweV2::SetMinMaxBitrate(*(v8 + 1904), v13, v15);
  if (v10)
  {
    if ((*(v8 + 400) - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      if (v9 == 0x8000000000000000)
      {
        v16 = -INFINITY;
      }

      else
      {
        v16 = INFINITY;
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v9;
        }
      }

      *(v8 + 392) = v16;
    }

    v17.var0 = v12;
    webrtc::SendSideBandwidthEstimation::SetSendBitrate(v8, v9, v17);
  }

  if (*(this + 576) == 1)
  {
    v18 = *(this + 43);
    v19 = *(this + 71);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::ToString(v19, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/delay_based_bwe.cc");
      if (v36 < 0)
      {
        operator delete(__p);
      }
    }

    *(v18 + 168) = v19;
    *(v18 + 176) = v19;
    *(v18 + 384) = 1;
  }

  v27 = *(this + 43);
  v28 = *(this + 69);
  *(v27 + 152) = v28;
  if (*(v27 + 168) > v28)
  {
    v28 = *(v27 + 168);
  }

  *(v27 + 168) = v28;
  v29 = *(this + 36);
  v30 = *(this + 69);
  if (*(this + 576) == 1)
  {
    v31 = *(this + 71);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(this + 70);
  v33.var0 = *a3;

  return webrtc::ProbeController::SetBitrates(v33, v29, v30, v31, v32, a1);
}