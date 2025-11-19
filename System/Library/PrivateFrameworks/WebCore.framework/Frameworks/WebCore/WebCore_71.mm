uint64_t WebRtcSpl_ScaleAndAddVectorsWithRoundC(int16x4_t *a1, unsigned int a2, int16x4_t *a3, unsigned int a4, unsigned int a5, int16x8_t *a6, unint64_t a7)
{
  v7 = 0xFFFFFFFFLL;
  if ((a5 & 0x80000000) == 0 && a1 && a3 && a6 && a7)
  {
    v8 = 1 << a5 >> 1;
    if (a7 >= 4)
    {
      v9 = 0;
      if ((a6 - a1) >= 0x20 && (a6 - a3) >= 0x20)
      {
        v19 = vdupq_n_s32(v8);
        v20 = vdupq_n_s32(a5);
        if (a7 >= 0x10)
        {
          v9 = a7 & 0xFFFFFFFFFFFFFFF0;
          v21 = a1 + 2;
          v22 = a3 + 2;
          v23 = a6 + 1;
          v24 = vdupq_n_s16(a2);
          v25 = vdupq_n_s16(a4);
          v26 = vnegq_s32(v20);
          v27 = a7 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v28 = *v21[-2].i8;
            v29 = vmlal_high_s16(v19, v24, v28);
            v30 = vmlal_s16(v19, *v24.i8, *v28.i8);
            v31 = vuzp1q_s16(vshlq_s32(vmlal_s16(vmlal_s16(v19, *v24.i8, *v21), *v25.i8, *v22), v26), vshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, v24, *v21->i8), v25, *v22->i8), v26));
            v23[-1] = vuzp1q_s16(vshlq_s32(vmlal_s16(v30, *v25.i8, v22[-2]), v26), vshlq_s32(vmlal_high_s16(v29, v25, *v22[-2].i8), v26));
            *v23 = v31;
            v21 += 4;
            v22 += 4;
            v23 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v9 == a7)
          {
            return 0;
          }

          if ((a7 & 0xC) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v9 = 0;
        }

        v32 = v9;
        v9 = a7 & 0xFFFFFFFFFFFFFFFCLL;
        v33 = (a1 + 2 * v32);
        v34 = (a3 + 2 * v32);
        v35 = (a6 + 2 * v32);
        v36 = v32 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
        v37 = vdup_n_s16(a2);
        v38 = vdup_n_s16(a4);
        v39 = vnegq_s32(v20);
        do
        {
          v40 = *v33++;
          v41 = v40;
          v42 = *v34++;
          *v35++ = vmovn_s32(vshlq_s32(vmlal_s16(vmlal_s16(v19, v37, v41), v38, v42), v39));
          v36 += 4;
        }

        while (v36);
        if (v9 == a7)
        {
          return 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_8:
    v10 = a7 - v9;
    v11 = 2 * v9;
    v12 = &a6->i16[v9];
    v13 = (a3 + v11);
    v14 = (a1 + v11);
    do
    {
      v16 = v14->i16[0];
      v14 = (v14 + 2);
      v15 = v16;
      v17 = v13->i16[0];
      v13 = (v13 + 2);
      *v12++ = (v8 + v15 * a2 + v17 * a4) >> a5;
      --v10;
    }

    while (v10);
    return 0;
  }

  return v7;
}

void webrtc::VideoAdaptationCounters::ToString(webrtc::VideoAdaptationCounters *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  memset(&v23, 0, sizeof(v23));
  if (&v23 > "{ res=" || v23.__r_.__value_.__r.__words + 6 <= "{ res=")
  {
    qmemcpy(&v23, "{ res=", 6);
    *(&v23.__r_.__value_.__s + 23) = 6;
    v6 = webrtc::StringBuilder::operator<<(&v23, *this, a2);
    v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
    if (v8 >= 0)
    {
      v9 = 22;
    }

    else
    {
      v9 = (v6->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v8 >= 0)
    {
      size = HIBYTE(v6->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v6->__r_.__value_.__l.__size_;
    }

    if (v9 - size >= 5)
    {
      if (v8 >= 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = v6->__r_.__value_.__r.__words[0];
      }

      v13 = v12 + size;
      if (v12 + size <= " fps=" && v12->__r_.__value_.__r.__words + size + 5 > " fps=")
      {
        goto LABEL_44;
      }

      *(v13 + 4) = 61;
      *v13 = 1936746016;
      v15 = size + 5;
      if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
      {
        v6->__r_.__value_.__l.__size_ = v15;
      }

      else
      {
        *(&v6->__r_.__value_.__s + 23) = v15 & 0x7F;
      }

      v12->__r_.__value_.__s.__data_[v15] = 0;
    }

    else
    {
      v11 = v6;
      std::string::__grow_by_and_replace(v6, v9, size - v9 + 5, size, size, 0, 5uLL, " fps=");
      v6 = v11;
    }

    v16 = webrtc::StringBuilder::operator<<(v6, *(this + 1), v7);
    v17 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
    if (v17 >= 0)
    {
      v18 = 22;
    }

    else
    {
      v18 = (v16->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v17 >= 0)
    {
      v19 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v16->__r_.__value_.__l.__size_;
    }

    if (v18 - v19 < 2)
    {
      std::string::__grow_by_and_replace(v16, v18, v19 - v18 + 2, v19, v19, 0, 2uLL, " }");
LABEL_43:
      *a3 = v23;
      return;
    }

    if (v17 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v16->__r_.__value_.__r.__words[0];
    }

    if (v20 + v19 > " }" || &v20->__r_.__value_.__s.__data_[v19 + 2] <= " }")
    {
      *(&v20->__r_.__value_.__l.__data_ + v19) = 32032;
      v22 = v19 + 2;
      if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
      {
        v16->__r_.__value_.__l.__size_ = v22;
      }

      else
      {
        *(&v16->__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v20->__r_.__value_.__s.__data_[v22] = 0;
      goto LABEL_43;
    }
  }

LABEL_44:
  __break(1u);
}

void webrtc::VideoAdapter::~VideoAdapter(pthread_mutex_t *this)
{
  this->__sig = &unk_2882A19B8;
  pthread_mutex_destroy(this + 3);
}

{
  this->__sig = &unk_2882A19B8;
  pthread_mutex_destroy(this + 3);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoAdapter::AdaptFrameResolution(webrtc::VideoAdapter *this, int a2, int a3, uint64_t a4, int *a5, int *a6, int *a7, int *a8)
{
  pthread_mutex_lock(this + 3);
  v16 = *(this + 2) + 1;
  *(this + 2) = v16;
  v17 = *(this + 23);
  if (a2 <= a3)
  {
    v18 = *(this + 68);
    if (*(this + 68))
    {
      v19 = *(this + 60);
      if (*(this + 76) != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
      if (*(this + 76) != 1)
      {
        goto LABEL_14;
      }
    }

    v20 = 72;
  }

  else
  {
    v18 = *(this + 48);
    if (*(this + 48))
    {
      v19 = *(this + 5);
      if ((*(this + 56) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
      if ((*(this + 56) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v20 = 52;
  }

  v21 = *(this + v20);
  if (v21 < v17)
  {
    v17 = v21;
  }

LABEL_14:
  v22 = *(this + 22);
  if (v17 < v22)
  {
    v22 = v17;
  }

  if (v17 < 1)
  {
    goto LABEL_28;
  }

  v23 = *(this + 24);
  if (*(this + 84) == 1 && *(this + 20) < v23)
  {
    v23 = *(this + 20);
  }

  *(this + 21) = v23;
  if (v23 < 1)
  {
    goto LABEL_28;
  }

  v24 = (1000000000.0 / v23);
  if (v24 >= 1)
  {
    if (*(this + 184) == 1)
    {
      v25 = *(this + 22);
      v26 = v25 - a4 >= 0 ? v25 - a4 : a4 - v25;
      if (v26 < 2 * v24)
      {
        if (v25 - a4 > 0)
        {
LABEL_28:
          HIDWORD(v27) = -1527099483 * (v16 - *(this + 3)) + 47721858;
          LODWORD(v27) = HIDWORD(v27);
          if (v27 >> 1) > 0x2D82D82 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
          {
            v35 = 0;
          }

          else
          {
            webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t,  v28,  v29,  v30,  v31,  v32,  v33,  v34,  "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
            v35 = 0;
          }

          goto LABEL_129;
        }

        *(this + 22) = v25 + v24;
        if (!v18)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }
    }

    *(this + 22) = a4 + (v24 >> 1);
    *(this + 184) = 1;
  }

  if (!v18)
  {
    goto LABEL_44;
  }

LABEL_33:
  if (v19 >= 1 && v19 > 0)
  {
    v36 = v19 / HIDWORD(v19);
    v37 = (v36 * a3);
    if (v37 >= a2)
    {
      v37 = a2;
    }

    *a5 = v37;
    if ((a2 / v36) >= a3)
    {
      v38 = a3;
    }

    else
    {
      v38 = (a2 / v36);
    }

    *a6 = v38;
    v39 = *a5;
    v40 = *a5 * v38;
    v41 = v40 - v22;
    if (v40 > v22)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_44:
  *a5 = a2;
  v38 = a3;
  *a6 = a3;
  v39 = *a5;
  v40 = *a5 * a3;
  v41 = v40 - v22;
  if (v40 > v22)
  {
LABEL_45:
    if (v40 <= v17)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0x7FFFFFFF;
    }

    v44 = (v39 % 9) | (v38 % 9);
    if ((v39 % 3) | (v38 % 3))
    {
      v45 = 1;
    }

    else
    {
      v45 = 6;
    }

    if (v44)
    {
      v46 = v45;
    }

    else
    {
      v46 = 36;
    }

    v47 = 1;
    v48 = v46;
    v49 = 1;
    do
    {
      if (v48 & 1 | (v46 % 3))
      {
        v48 *= 4;
        v46 *= 3;
      }

      else
      {
        v48 /= 2;
        v46 /= 3;
      }

      v50 = v46 * v46 * v40 / (v48 * v48);
      v51 = v22 - v50;
      if (v22 - v50 < 0)
      {
        v51 = v50 - v22;
      }

      if (v51 < v43)
      {
        v52 = v48;
      }

      else
      {
        v52 = v49;
      }

      if (v51 < v43)
      {
        v53 = v46;
      }

      else
      {
        v53 = v47;
      }

      if (v51 >= v43)
      {
        v51 = v43;
      }

      if (v17 >= v50)
      {
        v49 = v52;
        v47 = v53;
        v43 = v51;
      }
    }

    while (v22 < v50);
    if (v47 == 0x80000000)
    {
      v54 = 0;
    }

    else
    {
      v54 = -v47;
    }

    if (v47 >= 0)
    {
      v54 = v47;
    }

    if (v49 == 0x80000000)
    {
      v55 = 0;
    }

    else
    {
      v55 = -v49;
    }

    if (v49 >= 0)
    {
      v56 = v49;
    }

    else
    {
      v56 = v55;
    }

    if (v54 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v54;
    }

    if (v54 <= v56)
    {
      v54 = v56;
    }

    if (v57)
    {
      v58 = v54 % v57;
      if (v58)
      {
        v59 = v58 >> __clz(__rbit32(v58));
        v60 = v57;
        do
        {
          v61 = v60 >> __clz(__rbit32(v60));
          v60 = v61 - v59;
          if (v59 > v61)
          {
            v60 = v59 - v61;
          }

          if (v59 >= v61)
          {
            v59 = v61;
          }
        }

        while (v60);
        v57 = v59 << __clz(__rbit32(v58 | v57));
      }
    }

    else
    {
      v57 = v54;
    }

    v42 = (v47 / v57) | ((v49 / v57) << 32);
    goto LABEL_98;
  }

LABEL_41:
  v42 = 0x100000001;
LABEL_98:
  v62 = *(this + 9) * HIDWORD(v42);
  v63 = (v39 + v62 - 1) / v62 * v62;
  if (v63 > a2)
  {
    v63 = a2 / v62 * v62;
  }

  *a5 = v63;
  v64 = *(this + 9) * HIDWORD(v42);
  v65 = (*a6 + v64 - 1) / v64 * v64;
  if (v65 > a3)
  {
    v65 = a3 / v64 * v64;
  }

  *a6 = v65;
  *a7 = *a5 / SHIDWORD(v42) * v42;
  v66 = *a6 / SHIDWORD(v42) * v42;
  *a8 = v66;
  if (*(this + 108) == 1)
  {
    v67 = *(this + 25);
    v68 = *a7;
    v69 = (v67 >= *(this + 26)) ^ (*a7 < v66);
    v70 = v69 == 0;
    if (v69)
    {
      v71 = *(this + 25);
    }

    else
    {
      v71 = *(this + 26);
    }

    if (!v70)
    {
      v67 = *(this + 26);
    }

    if (v68 >= 1 && v66 >= 1 && (v71 < v68 || v67 < v66))
    {
      v72 = v71 / v68;
      if (v67 / v66 < v72)
      {
        v72 = v67 / v66;
      }

      v73 = *(this + 9);
      v74 = (llround(v72 * v68) + v73 - 1) / v73 * v73;
      if (v74 > v71)
      {
        v74 = v71 / v73 * v73;
      }

      *a7 = v74;
      v75 = *(this + 9);
      v76 = (v75 + llround(v72 * *a8) - 1) / v75 * v75;
      if (v76 > v67)
      {
        v76 = v67 / v75 * v75;
      }

      *a8 = v76;
    }
  }

  ++*(this + 3);
  if (v42 != HIDWORD(v42))
  {
    ++*(this + 4);
  }

  v77 = *(this + 6);
  if (v77)
  {
    if (v77 != *a7 || *(this + 7) != *a8)
    {
      ++*(this + 5);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v86 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc";
        v87 = 2289;
        v88 = &v85;
        webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t,  " fps: ",  v78,  v79,  v80,  v81,  v82,  v83,  "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
      }

      v77 = *a7;
    }
  }

  else
  {
    v77 = *a7;
  }

  *(this + 6) = v77;
  *(this + 7) = *a8;
  v35 = 1;
LABEL_129:
  pthread_mutex_unlock(this + 3);
  return v35;
}

uint64_t webrtc::VideoAdapter::OnOutputFormatRequest(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 192));
  v12 = *a2;
  v13 = HIDWORD(*a2);
  v14 = *(a2 + 8);
  v15 = *a3 | (*(a3 + 4) << 32);
  v16 = *a4;
  v17 = HIDWORD(*a4);
  v18 = *(a4 + 8);
  *v39 = *a5;
  v39[4] = *(a5 + 4);
  *&v39[8] = *a6;
  v39[12] = *(a6 + 4);
  if (*(a1 + 160) != 1)
  {
    if (*(a1 + 48) == v14)
    {
      if (*(a1 + 48))
      {
        *(a1 + 40) = v12;
        *(a1 + 44) = v13;
        *(a1 + 52) = v15;
        *(a1 + 56) = BYTE4(v15);
        v20 = *(a1 + 68);
        if (v20 != v18)
        {
          goto LABEL_30;
        }

LABEL_19:
        if (!v20)
        {
          goto LABEL_32;
        }

        *(a1 + 60) = v16;
        *(a1 + 64) = v17;
        *(a1 + 72) = *v39;
        *(a1 + 77) = *&v39[5];
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
        *(a1 + 40) = v12;
        *(a1 + 48) = 1;
        *(a1 + 52) = v15;
        *(a1 + 56) = BYTE4(v15);
        v20 = *(a1 + 68);
        if (v20 == v18)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }

      *(a1 + 48) = 0;
    }

    *(a1 + 52) = v15;
    *(a1 + 56) = BYTE4(v15);
    v20 = *(a1 + 68);
    if (v20 == v18)
    {
      goto LABEL_19;
    }

LABEL_30:
    if (v20)
    {
      *(a1 + 68) = 0;
LABEL_32:
      *(a1 + 72) = *v39;
      *(a1 + 77) = *&v39[5];
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    *(a1 + 60) = v16;
    *(a1 + 68) = 1;
    *(a1 + 72) = *v39;
    *(a1 + 77) = *&v39[5];
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_38;
    }

LABEL_33:
    webrtc::VideoAdapter::OutputFormatRequest::ToString(&__p, (a1 + 40), v22);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (*(a1 + 120) != v14)
  {
    if (!*(a1 + 120))
    {
      *(a1 + 112) = v12;
      *(a1 + 120) = 1;
      *(a1 + 124) = v15;
      *(a1 + 128) = BYTE4(v15);
      v19 = *(a1 + 140);
      if (v19 == v18)
      {
        goto LABEL_13;
      }

LABEL_23:
      if (!v19)
      {
        *(a1 + 132) = v16;
        *(a1 + 140) = 1;
        *(a1 + 144) = *v39;
        *(a1 + 149) = *&v39[5];
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      *(a1 + 140) = 0;
      goto LABEL_25;
    }

    *(a1 + 120) = 0;
LABEL_12:
    *(a1 + 124) = v15;
    *(a1 + 128) = BYTE4(v15);
    v19 = *(a1 + 140);
    if (v19 == v18)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if (!*(a1 + 120))
  {
    goto LABEL_12;
  }

  *(a1 + 112) = v12;
  *(a1 + 116) = v13;
  *(a1 + 124) = v15;
  *(a1 + 128) = BYTE4(v15);
  v19 = *(a1 + 140);
  if (v19 != v18)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v19)
  {
    *(a1 + 132) = v16;
    *(a1 + 136) = v17;
    *(a1 + 144) = *v39;
    *(a1 + 149) = *&v39[5];
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a1 + 144) = *v39;
  *(a1 + 149) = *&v39[5];
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((*(a1 + 160) & 1) == 0)
  {
    __break(1u);
  }

  webrtc::VideoAdapter::OutputFormatRequest::ToString(&__p, (a1 + 112), v21);
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_34:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_38:
  *(a1 + 168) = 0x7FEFFFFFFFFFFFFFLL;
  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  return pthread_mutex_unlock((a1 + 192));
}

void webrtc::VideoAdapter::OutputFormatRequest::ToString(std::string *this, unsigned int *a2, char *a3)
{
  memset(&v82, 0, sizeof(v82));
  if (&v82 <= "[ " && &v82.__r_.__value_.__s.__data_[2] > "[ ")
  {
    goto LABEL_223;
  }

  LOWORD(v82.__r_.__value_.__l.__data_) = 8283;
  *(&v82.__r_.__value_.__s + 23) = 2;
  v6 = *(a2 + 8);
  if (a2[7])
  {
    if (!*(a2 + 8) || *a2 != a2[6] || a2[1] != a2[5])
    {
LABEL_14:
      if (&v82.__r_.__value_.__s.__data_[2] <= "[ landscape: " && &v82.__r_.__value_.__r.__words[1] + 7 > "[ landscape: ")
      {
        goto LABEL_223;
      }

      strcpy(&v82.__r_.__value_.__s.__data_[2], "[ landscape: ");
      *(&v82.__r_.__value_.__s + 23) = 15;
      if (v6)
      {
        v8 = webrtc::StringBuilder::operator<<(&v82, *a2, a3);
        v10 = v8;
        size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
        v12 = size;
        if ((size & 0x80u) == 0)
        {
          v13 = 22;
        }

        else
        {
          v13 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((size & 0x80u) != 0)
        {
          size = v8->__r_.__value_.__l.__size_;
        }

        if (v13 == size)
        {
          std::string::__grow_by_and_replace(v8, v13, 1uLL, v13, v13, 0, 1uLL, "x");
          if ((a2[2] & 1) == 0)
          {
            goto LABEL_223;
          }
        }

        else
        {
          if (v12 >= 0)
          {
            v17 = v8;
          }

          else
          {
            v17 = v8->__r_.__value_.__r.__words[0];
          }

          if (v17 + size <= "x" && &v17->__r_.__value_.__l.__data_ + size + 1 > "x")
          {
            goto LABEL_223;
          }

          v17->__r_.__value_.__s.__data_[size] = 120;
          v19 = size + 1;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            v8->__r_.__value_.__l.__size_ = v19;
            v17->__r_.__value_.__s.__data_[v19] = 0;
            if ((a2[2] & 1) == 0)
            {
              goto LABEL_223;
            }
          }

          else
          {
            *(&v8->__r_.__value_.__s + 23) = v19 & 0x7F;
            v17->__r_.__value_.__s.__data_[v19] = 0;
            if ((a2[2] & 1) == 0)
            {
              goto LABEL_223;
            }
          }
        }

        webrtc::StringBuilder::operator<<(v10, a2[1], v9);
        v14 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
        v16 = v82.__r_.__value_.__r.__words[2];
        v15 = v82.__r_.__value_.__l.__size_;
        if (*(a2 + 16) != 1)
        {
LABEL_72:
          v33 = v14;
          v34 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if ((v14 & 0x80u) == 0)
          {
            v35 = 22;
          }

          else
          {
            v35 = v34;
          }

          if ((v14 & 0x80u) == 0)
          {
            v36 = v14;
          }

          else
          {
            v36 = v15;
          }

          if (v35 - v36 >= 0xF)
          {
            v43 = v82.__r_.__value_.__r.__words[0];
            if (v33 >= 0)
            {
              v43 = &v82;
            }

            v44 = v43 + v36;
            if (v43 + v36 <= " ] [ portrait: " && v44 + 15 > " ] [ portrait: ")
            {
              goto LABEL_223;
            }

            qmemcpy(v44, " ] [ portrait: ", 15);
            v45 = v36 + 15;
            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              v82.__r_.__value_.__l.__size_ = v36 + 15;
              v43->__r_.__value_.__s.__data_[v45] = 0;
              if (*(a2 + 28) == 1)
              {
                goto LABEL_80;
              }
            }

            else
            {
              *(&v82.__r_.__value_.__s + 23) = v45 & 0x7F;
              v43->__r_.__value_.__s.__data_[v45] = 0;
              if (*(a2 + 28) == 1)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&v82, v35, v36 - v35 + 15, v36, v36, 0, 0xFuLL, " ] [ portrait: ");
            if (*(a2 + 28) == 1)
            {
LABEL_80:
              v37 = webrtc::StringBuilder::operator<<(&v82, a2[5], a3);
              v39 = v37;
              v40 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
              v41 = v40;
              if ((v40 & 0x80u) == 0)
              {
                v42 = 22;
              }

              else
              {
                v42 = (v37->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v40 & 0x80u) != 0)
              {
                v40 = v37->__r_.__value_.__l.__size_;
              }

              if (v42 == v40)
              {
                std::string::__grow_by_and_replace(v37, v42, 1uLL, v42, v42, 0, 1uLL, "x");
                if ((a2[7] & 1) == 0)
                {
                  goto LABEL_223;
                }
              }

              else
              {
                if (v41 >= 0)
                {
                  v46 = v37;
                }

                else
                {
                  v46 = v37->__r_.__value_.__r.__words[0];
                }

                v47 = v46 + v40;
                if (v46 + v40 <= "x" && v47 + 1 > "x")
                {
                  goto LABEL_223;
                }

                *v47 = 120;
                v48 = v40 + 1;
                if (SHIBYTE(v37->__r_.__value_.__r.__words[2]) < 0)
                {
                  v37->__r_.__value_.__l.__size_ = v48;
                  v46->__r_.__value_.__s.__data_[v48] = 0;
                  if ((a2[7] & 1) == 0)
                  {
                    goto LABEL_223;
                  }
                }

                else
                {
                  *(&v37->__r_.__value_.__s + 23) = v48 & 0x7F;
                  v46->__r_.__value_.__s.__data_[v48] = 0;
                  if ((a2[7] & 1) == 0)
                  {
                    goto LABEL_223;
                  }
                }
              }

              webrtc::StringBuilder::operator<<(v39, a2[6], v38);
              if (*(a2 + 36) != 1)
              {
                goto LABEL_126;
              }

              goto LABEL_108;
            }
          }

          if (*(a2 + 36) != 1)
          {
LABEL_126:
            if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = 22;
            }

            else
            {
              v54 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v55 = v82.__r_.__value_.__l.__size_;
            }

            if (v54 - v55 >= 2)
            {
              v56 = &v82;
              if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v56 = v82.__r_.__value_.__r.__words[0];
              }

              v57 = (v56 + v55);
              if (v56 + v55 <= " ]" && v57 + 1 > " ]")
              {
                goto LABEL_223;
              }

              *v57 = 23840;
              v58 = v55 + 2;
              if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
              {
                v82.__r_.__value_.__l.__size_ = v55 + 2;
              }

              else
              {
                *(&v82.__r_.__value_.__s + 23) = v58 & 0x7F;
              }

              v56->__r_.__value_.__s.__data_[v58] = 0;
            }

            else
            {
              std::string::__grow_by_and_replace(&v82, v54, v55 - v54 + 2, v55, v55, 0, 2uLL, " ]");
            }

            goto LABEL_173;
          }

LABEL_108:
          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = 22;
          }

          else
          {
            v49 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v82.__r_.__value_.__l.__size_;
          }

          if (v49 - v50 < 0x12)
          {
            std::string::__grow_by_and_replace(&v82, v49, v50 - v49 + 18, v50, v50, 0, 0x12uLL, " max_pixel_count: ");
            if ((a2[9] & 1) == 0)
            {
              goto LABEL_223;
            }

            goto LABEL_125;
          }

          v51 = &v82;
          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = v82.__r_.__value_.__r.__words[0];
          }

          v52 = v51 + v50;
          if (v51 + v50 <= " max_pixel_count: " && v52 + 18 > " max_pixel_count: ")
          {
            goto LABEL_223;
          }

          *(v52 + 8) = 8250;
          *v52 = *" max_pixel_count: ";
          v53 = v50 + 18;
          if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            *(&v82.__r_.__value_.__s + 23) = v53 & 0x7F;
            v51->__r_.__value_.__s.__data_[v53] = 0;
            if ((a2[9] & 1) == 0)
            {
              goto LABEL_223;
            }

            goto LABEL_125;
          }

          v82.__r_.__value_.__l.__size_ = v50 + 18;
          v51->__r_.__value_.__s.__data_[v53] = 0;
          if (a2[9])
          {
LABEL_125:
            webrtc::StringBuilder::operator<<(&v82, a2[8], a3);
            goto LABEL_126;
          }

          goto LABEL_223;
        }
      }

      else
      {
        if (&v82.__r_.__value_.__r.__words[1] + 7 <= "unset" && &v82.__r_.__value_.__r.__words[2] + 4 > "unset")
        {
          goto LABEL_223;
        }

        strcpy(&v82.__r_.__value_.__s.__data_[15], "unset");
        v14 = 20;
        *(&v82.__r_.__value_.__s + 23) = 20;
        v16 = v82.__r_.__value_.__r.__words[2];
        v15 = v82.__r_.__value_.__l.__size_;
        if (*(a2 + 16) != 1)
        {
          goto LABEL_72;
        }
      }

      v26 = v14;
      v27 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v14 & 0x80u) == 0)
      {
        v28 = 22;
      }

      else
      {
        v28 = v27;
      }

      if ((v14 & 0x80u) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = v15;
      }

      if (v28 - v29 >= 0x12)
      {
        v30 = v82.__r_.__value_.__r.__words[0];
        if (v26 >= 0)
        {
          v30 = &v82;
        }

        v31 = v30 + v29;
        if (v30 + v29 <= " max_pixel_count: " && v31 + 18 > " max_pixel_count: ")
        {
          goto LABEL_223;
        }

        *(v31 + 8) = 8250;
        *v31 = *" max_pixel_count: ";
        v32 = v29 + 18;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v82.__r_.__value_.__l.__size_ = v29 + 18;
          v30->__r_.__value_.__s.__data_[v32] = 0;
          if ((a2[4] & 1) == 0)
          {
            goto LABEL_223;
          }
        }

        else
        {
          *(&v82.__r_.__value_.__s + 23) = v32 & 0x7F;
          v30->__r_.__value_.__s.__data_[v32] = 0;
          if ((a2[4] & 1) == 0)
          {
            goto LABEL_223;
          }
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v82, v28, v29 - v28 + 18, v29, v29, 0, 0x12uLL, " max_pixel_count: ");
        if ((a2[4] & 1) == 0)
        {
          goto LABEL_223;
        }
      }

      webrtc::StringBuilder::operator<<(&v82, a2[3], a3);
      v14 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      v16 = v82.__r_.__value_.__r.__words[2];
      v15 = v82.__r_.__value_.__l.__size_;
      goto LABEL_72;
    }
  }

  else if (v6)
  {
    goto LABEL_14;
  }

  v7 = *(a2 + 16);
  if (v7 == 1 && *(a2 + 36))
  {
    if (a2[3] != a2[8])
    {
      goto LABEL_14;
    }
  }

  else if (v7 != *(a2 + 36))
  {
    goto LABEL_14;
  }

  if (a2[7])
  {
    v20 = webrtc::StringBuilder::operator<<(&v82, *a2, a3);
    v22 = v20;
    v23 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v24 = v23;
    if ((v23 & 0x80u) == 0)
    {
      v25 = 22;
    }

    else
    {
      v25 = (v20->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = v20->__r_.__value_.__l.__size_;
    }

    if (v25 == v23)
    {
      std::string::__grow_by_and_replace(v20, v25, 1uLL, v25, v25, 0, 1uLL, "x");
    }

    else
    {
      if (v24 >= 0)
      {
        v59 = v20;
      }

      else
      {
        v59 = v20->__r_.__value_.__r.__words[0];
      }

      if (v59 + v23 <= "x" && &v59->__r_.__value_.__l.__data_ + v23 + 1 > "x")
      {
        goto LABEL_223;
      }

      v59->__r_.__value_.__s.__data_[v23] = 120;
      v61 = v23 + 1;
      if (SHIBYTE(v20->__r_.__value_.__r.__words[2]) < 0)
      {
        v20->__r_.__value_.__l.__size_ = v61;
      }

      else
      {
        *(&v20->__r_.__value_.__s + 23) = v61 & 0x7F;
      }

      v59->__r_.__value_.__s.__data_[v61] = 0;
    }

    if ((a2[2] & 1) == 0)
    {
      goto LABEL_223;
    }

    webrtc::StringBuilder::operator<<(v22, a2[1], v21);
    if ((a2[4] & 1) == 0)
    {
      goto LABEL_173;
    }
  }

  else
  {
    if (&v82.__r_.__value_.__s.__data_[2] <= "unset-resolution" && &v82.__r_.__value_.__r.__words[2] + 2 > "unset-resolution")
    {
      goto LABEL_223;
    }

    strcpy(&v82.__r_.__value_.__s.__data_[2], "unset-resolution");
    *(&v82.__r_.__value_.__s + 23) = 18;
    if ((v7 & 1) == 0)
    {
LABEL_173:
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = 22;
      }

      else
      {
        v67 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = v82.__r_.__value_.__l.__size_;
      }

      if (v67 - v68 >= 0xA)
      {
        v69 = &v82;
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = v82.__r_.__value_.__r.__words[0];
        }

        v70 = v69 + v68;
        if (v69 + v68 <= " max_fps: " && v70 + 10 > " max_fps: ")
        {
          goto LABEL_223;
        }

        *(v70 + 4) = 8250;
        *v70 = *" max_fps: ";
        v71 = v68 + 10;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v82.__r_.__value_.__l.__size_ = v68 + 10;
          v69->__r_.__value_.__s.__data_[v71] = 0;
          if (*(a2 + 44) == 1)
          {
            goto LABEL_181;
          }
        }

        else
        {
          *(&v82.__r_.__value_.__s + 23) = v71 & 0x7F;
          v69->__r_.__value_.__s.__data_[v71] = 0;
          if (*(a2 + 44) == 1)
          {
            goto LABEL_181;
          }
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v82, v67, v68 - v67 + 10, v68, v68, 0, 0xAuLL, " max_fps: ");
        if (*(a2 + 44) == 1)
        {
LABEL_181:
          webrtc::StringBuilder::operator<<(&v82, a2[10], a3);
          goto LABEL_206;
        }
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = 22;
      }

      else
      {
        v72 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v82.__r_.__value_.__l.__size_;
      }

      if (v72 - v73 >= 5)
      {
        v74 = &v82;
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v74 = v82.__r_.__value_.__r.__words[0];
        }

        v75 = v74 + v73;
        if (v74 + v73 <= "unset" && v75 + 5 > "unset")
        {
          goto LABEL_223;
        }

        v75[4] = 116;
        *v75 = 1702063733;
        v76 = v73 + 5;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v82.__r_.__value_.__l.__size_ = v73 + 5;
        }

        else
        {
          *(&v82.__r_.__value_.__s + 23) = v76 & 0x7F;
        }

        v74->__r_.__value_.__s.__data_[v76] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v82, v72, v73 - v72 + 5, v73, v73, 0, 5uLL, "unset");
      }

LABEL_206:
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = 22;
      }

      else
      {
        v77 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = v82.__r_.__value_.__l.__size_;
      }

      if (v77 - v78 >= 2)
      {
        v79 = &v82;
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v79 = v82.__r_.__value_.__r.__words[0];
        }

        v80 = (v79 + v78);
        if (v79 + v78 <= " ]" && v80 + 1 > " ]")
        {
          goto LABEL_223;
        }

        *v80 = 23840;
        v81 = v78 + 2;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v82.__r_.__value_.__l.__size_ = v78 + 2;
        }

        else
        {
          *(&v82.__r_.__value_.__s + 23) = v81 & 0x7F;
        }

        v79->__r_.__value_.__s.__data_[v81] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v82, v77, v78 - v77 + 2, v78, v78, 0, 2uLL, " ]");
      }

      *this = v82;
      return;
    }
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v82.__r_.__value_.__l.__size_;
  }

  if (v62 - v63 >= 0x12)
  {
    v64 = &v82;
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v82.__r_.__value_.__r.__words[0];
    }

    v65 = v64 + v63;
    if (v64 + v63 <= " max_pixel_count: " && v65 + 18 > " max_pixel_count: ")
    {
      goto LABEL_223;
    }

    *(v65 + 8) = 8250;
    *v65 = *" max_pixel_count: ";
    v66 = v63 + 18;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      v82.__r_.__value_.__l.__size_ = v63 + 18;
    }

    else
    {
      *(&v82.__r_.__value_.__s + 23) = v66 & 0x7F;
    }

    v64->__r_.__value_.__s.__data_[v66] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v82, v62, v63 - v62 + 18, v63, v63, 0, 0x12uLL, " max_pixel_count: ");
  }

  if (a2[4])
  {
    webrtc::StringBuilder::operator<<(&v82, a2[3], a3);
    goto LABEL_173;
  }

LABEL_223:
  __break(1u);
}

void webrtc::VideoAdapter::OnSinkWants(webrtc::VideoAdapter *this, const webrtc::VideoSinkWants *a2)
{
  pthread_mutex_lock(this + 3);
  LODWORD(v4) = 0;
  v5 = *(a2 + 1);
  *(this + 23) = v5;
  if (*(a2 + 12))
  {
    v5 = *(a2 + 2);
  }

  *(this + 22) = v5;
  *(this + 24) = *(a2 + 4);
  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    if (v7)
    {
      if (v6 == 0x80000000)
      {
        v8 = 0;
      }

      else
      {
        v8 = -v6;
      }

      if (v6 >= 0)
      {
        v8 = *(this + 8);
      }

      if (v7 == 0x80000000)
      {
        v9 = 0;
      }

      else
      {
        v9 = -v7;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 5);
      }

      v10 = v8 >= v9 ? v9 : v8;
      v11 = v8 <= v9 ? v9 : v8;
      if (v10)
      {
        v12 = v11 % v10;
        if (v12)
        {
          v13 = v12 >> __clz(__rbit32(v12));
          v14 = v10;
          do
          {
            v15 = v14 >> __clz(__rbit32(v14));
            v14 = v15 - v13;
            if (v13 > v15)
            {
              v14 = v13 - v15;
            }

            if (v13 >= v15)
            {
              v13 = v15;
            }
          }

          while (v14);
          v10 = v13 << __clz(__rbit32(v12 | v10));
        }
      }

      else
      {
        v10 = v11;
      }

      v4 = v8 / v10 * v9;
      if (v4 != v4)
      {
        goto LABEL_70;
      }
    }
  }

  *(this + 9) = v4;
  if (*(this + 108))
  {
    *(this + 108) = 0;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_49;
    }
  }

  else if ((*(a2 + 56) & 1) == 0)
  {
    goto LABEL_49;
  }

  v16 = *(a2 + 6);
  *(this + 108) = 1;
  *(this + 100) = v16;
  if (*(a2 + 56))
  {
    if (*(a2 + 62) == 1 && (*(a2 + 61) & 1) != 0)
    {
      goto LABEL_69;
    }

    if ((*(this + 160) & 1) == 0)
    {
      v17 = *(this + 56);
      *(this + 7) = *(this + 40);
      *(this + 8) = v17;
      *(this + 9) = *(this + 72);
      *(this + 160) = 1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        if ((*(this + 160) & 1) == 0)
        {
          goto LABEL_70;
        }

        webrtc::VideoAdapter::OutputFormatRequest::ToString(&__p, this + 28, v18);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(this + 48))
    {
      *(this + 48) = 0;
    }

    *(this + 52) = 0;
    *(this + 56) = 0;
    if (*(this + 68))
    {
      *(this + 68) = 0;
    }

    *(this + 72) = 0;
    *(this + 76) = 0;
    v26 = this + 84;
    *(this + 80) = 0;
    goto LABEL_68;
  }

LABEL_49:
  v26 = this + 160;
  if (*(this + 160) != 1)
  {
LABEL_69:
    pthread_mutex_unlock(this + 3);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    if ((*v26 & 1) == 0)
    {
      goto LABEL_70;
    }

    webrtc::VideoAdapter::OutputFormatRequest::ToString(&__p, this + 28, v27);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_adapter.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*v26)
  {
    if (*(this + 48) == *(this + 120))
    {
      if (*(this + 48))
      {
        *(this + 5) = *(this + 14);
      }
    }

    else if (*(this + 48))
    {
      *(this + 48) = 0;
    }

    else
    {
      *(this + 5) = *(this + 14);
      *(this + 48) = 1;
    }

    *(this + 13) = *(this + 31);
    *(this + 56) = *(this + 128);
    if (*(this + 68) == *(this + 140))
    {
      if (*(this + 68))
      {
        *(this + 60) = *(this + 132);
      }
    }

    else if (*(this + 68))
    {
      *(this + 68) = 0;
    }

    else
    {
      *(this + 60) = *(this + 132);
      *(this + 68) = 1;
    }

    *(this + 9) = *(this + 18);
    *(this + 77) = *(this + 149);
LABEL_68:
    *v26 = 0;
    goto LABEL_69;
  }

LABEL_70:
  __break(1u);
}

uint64_t webrtc::VideoBitrateAllocation::VideoBitrateAllocation(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 164) = 0;
  return this;
}

void webrtc::VideoBitrateAllocation::SetBitrate(webrtc::VideoBitrateAllocation *this, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 5)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 32, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a2);
    goto LABEL_9;
  }

  if (a3 >= 4)
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 33, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a3);
    webrtc::VideoBitrateAllocation::GetTemporalLayerAllocation(v11, v12, v13, v14, v15, v16, v17);
    return;
  }

  v8 = *this;
  v9 = this + 32 * a2 + 8 * a3;
  if (v9[8] != 1)
  {
    v10 = v8 + a4;
    if (v10 > 0xFFFFFFFFLL)
    {
      return;
    }

LABEL_7:
    *(v9 + 1) = a4;
    v9[8] = 1;
    *this = v10;
    return;
  }

  v10 = v8 - *(v9 + 1) + a4;
  if (v10 <= 0xFFFFFFFFLL)
  {
    goto LABEL_7;
  }
}

void webrtc::VideoBitrateAllocation::GetTemporalLayerAllocation(webrtc::VideoBitrateAllocation *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, std::vector<int> *a7@<X8>)
{
  if (a2 >= 5)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 96, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a3, a4, a5, a6, a2);
    webrtc::VideoBitrateAllocation::GetSimulcastAllocations(v15);
    return;
  }

  a7->__begin_ = 0;
  a7->__end_ = 0;
  a7->__end_cap_.__value_ = 0;
  v10 = this + 32 * a2 + 4;
  if (v10[28])
  {
    std::vector<float>::__append(a7, 4uLL);
    begin = a7->__begin_;
    v12 = a7->__end_ - a7->__begin_;
    if (!v12)
    {
      return;
    }
  }

  else if (v10[20])
  {
    std::vector<float>::__append(a7, 3uLL);
    begin = a7->__begin_;
    v12 = a7->__end_ - a7->__begin_;
    if (!v12)
    {
      return;
    }
  }

  else if (v10[12])
  {
    std::vector<float>::__append(a7, 2uLL);
    begin = a7->__begin_;
    v12 = a7->__end_ - a7->__begin_;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (v10[4] != 1)
    {
      return;
    }

    std::vector<float>::__append(a7, 1uLL);
    begin = a7->__begin_;
    v12 = a7->__end_ - a7->__begin_;
    if (!v12)
    {
      return;
    }
  }

  v13 = v12 >> 2;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = this + 32 * a2 + 8;
  do
  {
    while (*v14 == 1)
    {
      *begin++ = *(v14 - 1);
      v14 += 8;
      if (!--v13)
      {
        return;
      }
    }

    *begin++ = 0;
    v14 += 8;
    --v13;
  }

  while (v13);
}

void webrtc::VideoBitrateAllocation::GetSimulcastAllocations(webrtc::VideoBitrateAllocation *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this + 16;
  if (*(this + 8))
  {
    if ((*v3 & 1) == 0)
    {
      v4 = *(this + 1);
      if (*(this + 24) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v4 = *(this + 1);
    v5 = *(this + 3) + v4;
    if (HIDWORD(v5))
    {
      if (*(this + 24) != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      if (!((*(this + 5) + v4) >> 32))
      {
        v4 += *(this + 5);
        if (*(this + 32) == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }

LABEL_18:
      if (*(this + 32) == 1)
      {
LABEL_19:
        if (!((*(this + 7) + v4) >> 32))
        {
          v6 = a2[2];
          if (v6)
          {
            goto LABEL_34;
          }

          goto LABEL_25;
        }
      }

LABEL_22:
      v6 = a2[2];
      if (v6)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if ((*v3 & 1) == 0)
    {
      if ((*(this + 24) & 1) == 0 && (*(this + 32) & 1) == 0)
      {
        v6 = a2[2];
        if (v6)
        {
          goto LABEL_34;
        }

LABEL_25:
        v7 = 0x82FA0BE82FA0BE83 * (-*a2 >> 2) + 1;
        if (v7 > 0x17D05F417D05F41)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v8 = 0x82FA0BE82FA0BE83 * ((v6 - *a2) >> 2);
        if (2 * v8 > v7)
        {
          v7 = 2 * v8;
        }

        if (v8 >= 0xBE82FA0BE82FA0)
        {
          v9 = 0x17D05F417D05F41;
        }

        else
        {
          v9 = v7;
        }

        if (v9)
        {
          if (v9 <= 0x17D05F417D05F41)
          {
            operator new();
          }

LABEL_35:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v4 = 0;
      if (*(this + 24) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    LODWORD(v5) = *(this + 3);
  }

  v4 = v5;
  if (*(this + 24) != 1)
  {
    goto LABEL_18;
  }

  goto LABEL_15;
}

uint64_t webrtc::VideoBitrateAllocation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1 && v3 != 0)
  {
    v2 = *(a1 + 4);
    v3 = *(a2 + 4);
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 1 && (v6 & 1) != 0)
  {
    v5 = *(a1 + 12);
    v6 = *(a2 + 12);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7 == 1 && (v8 & 1) != 0)
  {
    v7 = *(a1 + 20);
    v8 = *(a2 + 20);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == 1 && (v10 & 1) != 0)
  {
    v9 = *(a1 + 28);
    v10 = *(a2 + 28);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  if (v11 == 1 && (v12 & 1) != 0)
  {
    v11 = *(a1 + 36);
    v12 = *(a2 + 36);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 1 && (v14 & 1) != 0)
  {
    v13 = *(a1 + 44);
    v14 = *(a2 + 44);
  }

  if (v13 != v14)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15 == 1 && (v16 & 1) != 0)
  {
    v15 = *(a1 + 52);
    v16 = *(a2 + 52);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (v17 == 1 && (v18 & 1) != 0)
  {
    v17 = *(a1 + 60);
    v18 = *(a2 + 60);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19 == 1 && (v20 & 1) != 0)
  {
    v19 = *(a1 + 68);
    v20 = *(a2 + 68);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v21 = *(a1 + 80);
  v22 = *(a2 + 80);
  if (v21 == 1 && (v22 & 1) != 0)
  {
    v21 = *(a1 + 76);
    v22 = *(a2 + 76);
  }

  if (v21 != v22)
  {
    return 0;
  }

  v23 = *(a1 + 88);
  v24 = *(a2 + 88);
  if (v23 == 1 && (v24 & 1) != 0)
  {
    v23 = *(a1 + 84);
    v24 = *(a2 + 84);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v25 = *(a1 + 96);
  v26 = *(a2 + 96);
  if (v25 == 1 && (v26 & 1) != 0)
  {
    v25 = *(a1 + 92);
    v26 = *(a2 + 92);
  }

  if (v25 != v26)
  {
    return 0;
  }

  v27 = *(a1 + 104);
  v28 = *(a2 + 104);
  if (v27 == 1 && (v28 & 1) != 0)
  {
    v27 = *(a1 + 100);
    v28 = *(a2 + 100);
  }

  if (v27 != v28)
  {
    return 0;
  }

  v29 = *(a1 + 112);
  v30 = *(a2 + 112);
  if (v29 == 1 && (v30 & 1) != 0)
  {
    v29 = *(a1 + 108);
    v30 = *(a2 + 108);
  }

  if (v29 != v30)
  {
    return 0;
  }

  v31 = *(a1 + 120);
  v32 = *(a2 + 120);
  if (v31 == 1 && (v32 & 1) != 0)
  {
    v31 = *(a1 + 116);
    v32 = *(a2 + 116);
  }

  if (v31 != v32)
  {
    return 0;
  }

  v33 = *(a1 + 128);
  v34 = *(a2 + 128);
  if (v33 == 1 && (v34 & 1) != 0)
  {
    v33 = *(a1 + 124);
    v34 = *(a2 + 124);
  }

  if (v33 != v34)
  {
    return 0;
  }

  v35 = *(a1 + 136);
  v36 = *(a2 + 136);
  if (v35 == 1 && (v36 & 1) != 0)
  {
    v35 = *(a1 + 132);
    v36 = *(a2 + 132);
  }

  if (v35 != v36)
  {
    return 0;
  }

  v37 = *(a1 + 144);
  v38 = *(a2 + 144);
  if (v37 == 1 && (v38 & 1) != 0)
  {
    v37 = *(a1 + 140);
    v38 = *(a2 + 140);
  }

  if (v37 != v38)
  {
    return 0;
  }

  v39 = *(a1 + 152);
  v40 = *(a2 + 152);
  if (v39 == 1 && (v40 & 1) != 0)
  {
    v39 = *(a1 + 148);
    v40 = *(a2 + 148);
  }

  if (v39 != v40)
  {
    return 0;
  }

  v41 = *(a1 + 160);
  v42 = *(a2 + 160);
  if (v41 == 1 && (v42 & 1) != 0)
  {
    if (*(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if (v41 != v42)
  {
    return 0;
  }

  return 1;
}

void *webrtc::VideoBitrateAllocation::ToString@<X0>(webrtc::VideoBitrateAllocation *this@<X0>, char *a2@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  __s = v43;
  strcpy(v43, "VideoBitrateAllocation [");
  v41 = xmmword_273BA6010;
  while (v4 != *this)
  {
    v8 = this + v3;
    if (*(this + v3 + 8) == 1)
    {
      v9 = *(v8 + 1);
      if (v8[16] != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (v8[16] != 1)
      {
LABEL_10:
        v10 = 0;
        v11 = this + v3;
        if (*(this + v3 + 24) != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    v10 = *(v8 + 3);
    v11 = this + v3;
    if (*(this + v3 + 24) != 1)
    {
LABEL_11:
      v12 = 0;
      if (v11[32] == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_16:
    v12 = *(v11 + 5);
    if (v11[32] == 1)
    {
LABEL_17:
      v13 = v10 + v9 + v12 + *(v11 + 7);
      v14 = *(&v41 + 1);
      v15 = v41;
      if (v3)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

LABEL_12:
    v13 = v10 + v9 + v12;
    v14 = *(&v41 + 1);
    v15 = v41;
    if (v3)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (v13 == *this)
    {
      if ((v15 + ~v14) >= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = v15 + ~v14;
      }

      v17 = &__s[v14];
      v18 = " [";
      goto LABEL_33;
    }

LABEL_23:
    v19 = __s;
    if (v3)
    {
      v20 = v14 + 1;
      memcpy(&__s[v14], ",", v15 != v14 + 1);
      v21 = *(&v41 + 1);
      if (v15 != v20)
      {
        v21 = *(&v41 + 1) + 1;
      }

      *(&v41 + 1) = v21;
      __s[v21] = 0;
      v14 = *(&v41 + 1);
      v15 = v41;
      v19 = __s;
    }

    __src = 10;
    v22 = v14 + 1;
    memcpy(&v19[v14], &__src, v15 != v14 + 1);
    v23 = *(&v41 + 1);
    if (v15 != v22)
    {
      v23 = *(&v41 + 1) + 1;
    }

    *(&v41 + 1) = v23;
    __s[v23] = 0;
    if (v41 + ~*(&v41 + 1) >= 3uLL)
    {
      v16 = 3;
    }

    else
    {
      v16 = v41 + ~*(&v41 + 1);
    }

    v17 = &__s[*(&v41 + 1)];
    v18 = "  [";
LABEL_33:
    memcpy(v17, v18, v16);
    *(&v41 + 1) += v16;
    __s[*(&v41 + 1)] = 0;
    if (v13)
    {
      if ((v8[8] & 1) == 0)
      {
        v24 = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", 0);
LABEL_38:
        if (v41 + ~*(&v41 + 1) >= 2uLL)
        {
          v25 = 2;
        }

        else
        {
          v25 = v41 + ~*(&v41 + 1);
        }

        memcpy(&__s[*(&v41 + 1)], ", ", v25);
        v26 = 0;
        *(&v41 + 1) += v25;
        __s[*(&v41 + 1)] = 0;
        if (*(this + v3 + 16) == 1)
        {
          v26 = *(this + v3 + 12);
        }

        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v26);
        v27 = v26 + v24;
        if (v27 != v13)
        {
          if (v41 + ~*(&v41 + 1) >= 2uLL)
          {
            v28 = 2;
          }

          else
          {
            v28 = v41 + ~*(&v41 + 1);
          }

          memcpy(&__s[*(&v41 + 1)], ", ", v28);
          v29 = 0;
          *(&v41 + 1) += v28;
          __s[*(&v41 + 1)] = 0;
          if (*(this + v3 + 24) == 1)
          {
            v29 = *(this + v3 + 20);
          }

          webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v29);
          if (v29 + v27 != v13)
          {
            if (v41 + ~*(&v41 + 1) >= 2uLL)
            {
              v30 = 2;
            }

            else
            {
              v30 = v41 + ~*(&v41 + 1);
            }

            memcpy(&__s[*(&v41 + 1)], ", ", v30);
            v31 = 0;
            *(&v41 + 1) += v30;
            __s[*(&v41 + 1)] = 0;
            if (*(this + v3 + 32) == 1)
            {
              v31 = *(this + v3 + 28);
            }

            webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v31);
          }
        }

        goto LABEL_4;
      }

      v24 = *(v8 + 1);
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v24);
      if (v24 != v13)
      {
        goto LABEL_38;
      }
    }

LABEL_4:
    v4 += v13;
    v5 = v41;
    v6 = *(&v41 + 1) + 1;
    memcpy(&__s[*(&v41 + 1)], "]", v41 != *(&v41 + 1) + 1);
    v7 = *(&v41 + 1);
    if (v5 != v6)
    {
      v7 = *(&v41 + 1) + 1;
    }

    *(&v41 + 1) = v7;
    __s[v7] = 0;
    v3 += 32;
    if (v3 == 160)
    {
      break;
    }
  }

  if (v41 + ~*(&v41 + 1) >= 2uLL)
  {
    v32 = 2;
  }

  else
  {
    v32 = v41 + ~*(&v41 + 1);
  }

  memcpy(&__s[*(&v41 + 1)], " ]", v32);
  *(&v41 + 1) += v32;
  __s[*(&v41 + 1)] = 0;
  v33 = __s;
  if (!__s)
  {
    goto LABEL_71;
  }

  v34 = strlen(__s);
  if (v34 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v35 = v34;
  if (v34 > 0x16)
  {
    operator new();
  }

  result = a2;
  a2[23] = v35;
  v37 = &a2[v35];
  if (a2 <= v33 && v37 > v33)
  {
LABEL_71:
    __break(1u);
  }

  if (v35)
  {
    result = memmove(a2, v33, v35);
  }

  *v37 = 0;
  return result;
}

uint64_t webrtc::VideoBitrateAllocator::GetAllocation(webrtc::VideoBitrateAllocator *this, unsigned int a2, unsigned int a3)
{
  v4[0] = a2;
  v4[1] = a2;
  *&v4[2] = a3;
  return (*(*this + 24))(this, v4);
}

void webrtc::VideoBroadcaster::~VideoBroadcaster(webrtc::VideoBroadcaster *this)
{
  *this = &unk_2882A19D8;
  *(this + 4) = &unk_2882A1A20;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  pthread_mutex_destroy((this + 40));
  *this = &unk_2882A3068;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 1);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 40);
        if (v7)
        {
          *(v5 - 32) = v7;
          operator delete(v7);
        }

        v5 -= 72;
      }

      while (v5 != v4);
      v6 = *(this + 1);
    }

    *(this + 2) = v4;
    operator delete(v6);
  }
}

{
  *this = &unk_2882A19D8;
  *(this + 4) = &unk_2882A1A20;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  pthread_mutex_destroy((this + 40));
  *this = &unk_2882A3068;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 1);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 40);
        if (v7)
        {
          *(v5 - 32) = v7;
          operator delete(v7);
        }

        v5 -= 72;
      }

      while (v5 != v4);
      v6 = *(this + 1);
    }

    *(this + 2) = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::VideoBroadcaster::~VideoBroadcaster(webrtc::VideoBroadcaster *this)
{
  *(this - 4) = &unk_2882A19D8;
  *this = &unk_2882A1A20;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  pthread_mutex_destroy((this + 8));
  *(this - 4) = &unk_2882A3068;
  v4 = *(this - 3);
  if (v4)
  {
    v5 = *(this - 2);
    v6 = *(this - 3);
    if (v5 == v4)
    {
      *(this - 2) = v4;
    }

    else
    {
      do
      {
        v7 = *(v5 - 40);
        if (v7)
        {
          *(v5 - 32) = v7;
          operator delete(v7);
        }

        v5 -= 72;
      }

      while (v5 != v4);
      v6 = *(this - 3);
      *(this - 2) = v4;
    }

    operator delete(v6);
  }
}

{
  *(this - 4) = &unk_2882A19D8;
  *this = &unk_2882A1A20;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  pthread_mutex_destroy((this + 8));
  *(this - 4) = &unk_2882A3068;
  v4 = *(this - 3);
  if (v4)
  {
    v5 = *(this - 2);
    v6 = *(this - 3);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 40);
        if (v7)
        {
          *(v5 - 32) = v7;
          operator delete(v7);
        }

        v5 -= 72;
      }

      while (v5 != v4);
      v6 = *(this - 3);
    }

    *(this - 2) = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoBroadcaster::AddOrUpdateSink(uint64_t a1, uint64_t a2, __int128 *a3)
{
  pthread_mutex_lock((a1 + 40));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      v6 += 9;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 != v7 && v6 != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  *(a1 + 176) = 0;
  if (*(a1 + 216) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      if ((*(a1 + 216) & 1) == 0)
      {
        goto LABEL_19;
      }

      webrtc::webrtc_logging_impl::Log("\r\t\t\a\t\a", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_broadcaster.cc");
    }

    if (*(a1 + 216))
    {
      (*(*a2 + 32))(a2, a1 + 184);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_16:
  webrtc::VideoSourceBase::AddOrUpdateSink(a1, a2, a3);
  webrtc::VideoBroadcaster::UpdateWants(a1);

  pthread_mutex_unlock((a1 + 40));
}

char *webrtc::VideoBroadcaster::UpdateWants(webrtc::VideoBroadcaster *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    v12 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v16 = 0x7FFFFFFF;
    v14 = 0x7FFFFFFF;
    LODWORD(v15) = 1;
  }

  else
  {
    v4 = *(this + 1);
    do
    {
      if (v4[8].i8[4] == 1 && (v4[8].i8[0] & 1) != 0)
      {
        v5 = 1;
        goto LABEL_8;
      }

      v4 += 9;
    }

    while (v4 != v3);
    v5 = 0;
LABEL_8:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x7FFFFFFF;
    LODWORD(v15) = 1;
    v16 = 0x7FFFFFFF;
    LODWORD(result) = 0x7FFFFFFF;
    v18 = 0x7FFFFFFF;
    v19 = 1;
    do
    {
      if ((v2[8].i8[4] & 1) != 0 || ((v5 | v2[8].u8[0]) & 1) == 0)
      {
        if (v2[1].i8[0])
        {
          v12 = 1;
        }

        if (v2[1].i32[1] < v18)
        {
          v16 = v2[1].i32[1];
          v18 = v16;
        }

        if (v2[2].i8[4] == 1)
        {
          v20 = v2[2].i32[0];
          if ((v8 & 1) == 0 || v20 < (v6 | (v9 << 8)))
          {
            v6 = v2[2].i32[0];
            v9 = v20 >> 8;
            v8 = v2[2].i8[4];
          }
        }

        LODWORD(v15) = 0;
        v21 = v2[3].i32[0];
        if (v21 >= result)
        {
          result = result;
        }

        else
        {
          v14 = v2[3].i32[0];
          result = v21;
        }

        if (v19)
        {
          v22 = v2[3].i32[1];
          if (v22)
          {
            if (v19 == 0x80000000)
            {
              v23 = 0;
            }

            else
            {
              v23 = -v19;
            }

            if (v19 >= 0)
            {
              v23 = v19;
            }

            if (v22 == 0x80000000)
            {
              v24 = 0;
            }

            else
            {
              v24 = -v22;
            }

            if (v22 >= 0)
            {
              v24 = v2[3].i32[1];
            }

            if (v23 >= v24)
            {
              v25 = v24;
            }

            else
            {
              v25 = v23;
            }

            if (v23 <= v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = v23;
            }

            if (v25)
            {
              v27 = v26 % v25;
              if (v27)
              {
                v28 = v27 >> __clz(__rbit32(v27));
                v29 = v25;
                do
                {
                  v30 = v29 >> __clz(__rbit32(v29));
                  v29 = v30 - v28;
                  if (v28 > v30)
                  {
                    v29 = v28 - v30;
                  }

                  if (v28 >= v30)
                  {
                    v28 = v30;
                  }
                }

                while (v29);
                v25 = v28 << __clz(__rbit32(v27 | v25));
              }

              v15 = v23 / v25 * v24;
              if (v15 != v15)
              {
LABEL_79:
                __break(1u);
                return result;
              }
            }

            else
            {
              v15 = v23 / v26 * v24;
              if (v15 != v15)
              {
                goto LABEL_79;
              }
            }
          }
        }

        if (v2[8].i8[0] == 1)
        {
          v31 = v2[7];
          v32 = vmax_s32(v13, v31);
          if (v7)
          {
            v33 = -1;
          }

          else
          {
            v7 = 1;
            v33 = 0;
          }

          v13 = vbsl_s8(vdup_n_s32(v33), v32, v31);
        }

        else if (v2[8].i8[4])
        {
          v11 = 1;
        }

        v10 |= v2[8].u8[4];
        v19 = v15;
      }

      v2 += 9;
    }

    while (v2 != v3);
    v34 = v16;
    if ((v6 | (v9 << 8)) >= v16)
    {
      v35 = 1;
    }

    else
    {
      v34 = v6;
      v35 = v8;
    }

    if ((v6 | (v9 << 8)) >= v16)
    {
      v36 = v16 >> 8;
    }

    else
    {
      v36 = v9;
    }

    if (v8)
    {
      v37 = v34;
    }

    else
    {
      v37 = v6;
    }

    if (v8)
    {
      v38 = v35;
    }

    else
    {
      v38 = v8;
    }

    if (v8)
    {
      v39 = v36;
    }

    else
    {
      v39 = v9;
    }

    v40 = v13;
  }

  *(this + 104) = v12;
  *(this + 105) = 0;
  *(this + 27) = v16;
  *(this + 28) = v37 | (v39 << 8);
  *(this + 116) = v38;
  *(this + 30) = v14;
  *(this + 31) = v15;
  result = std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>(this + 16, 0, 0, 0);
  *(this + 19) = v40;
  *(this + 160) = v7;
  *(this + 164) = v10;
  *(this + 165) = v11;
  *(this + 166) = 1;
  return result;
}

uint64_t webrtc::VideoBroadcaster::RemoveSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 40));
  webrtc::VideoSourceBase::RemoveSink(a1, a2);
  webrtc::VideoBroadcaster::UpdateWants(a1);

  return pthread_mutex_unlock((a1 + 40));
}

uint64_t webrtc::VideoBroadcaster::OnFrame(webrtc::VideoBroadcaster *this, const webrtc::VideoFrame *a2)
{
  pthread_mutex_lock((this + 40));
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = 1;
  if (v6 == v7)
  {
LABEL_56:
    *(this + 176) = v8 & 1;
    return pthread_mutex_unlock((this + 40));
  }

  v9 = 0;
  while (1)
  {
    if (*(v6 + 8) == 1 && *(a2 + 18) != 0)
    {
      v16 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
      if ((v16 & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x290;
        webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/video_broadcaster.cc");
      }

      (*(**v6 + 24))();
      v9 = 1;
      goto LABEL_4;
    }

    if (*(v6 + 9) == 1)
    {
      break;
    }

    if ((*(this + 176) & 1) == 0 && *(a2 + 176) == 1)
    {
      LOWORD(v45) = *a2;
      v24 = *(a2 + 1);
      v46 = v24;
      if (v24)
      {
        (**v24)(v24);
      }

      v25 = *(a2 + 2);
      v47 = *(a2 + 1);
      v48 = v25;
      *v49 = *(a2 + 3);
      *&v49[12] = *(a2 + 60);
      LOBYTE(v50) = 0;
      v55 = 0;
      if (*(a2 + 144) == 1)
      {
        v51 = *(a2 + 92);
        v52 = *(a2 + 108);
        v53 = *(a2 + 124);
        v54 = *(a2 + 140);
        v50 = *(a2 + 76);
        v55 = 1;
      }

      *v56 = *(a2 + 148);
      *&v56[13] = *(a2 + 161);
      v26 = *(a2 + 23);
      v57 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 1u, memory_order_relaxed);
      }

      v58 = *(a2 + 12);
      v59 = *(a2 + 26);
      if (v56[28] == 1)
      {
        v56[28] = 0;
      }

      (*(**v6 + 16))(*v6, &v45);
      v27 = v57;
      if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
      {
        v28 = *(v27 + 1);
        if (v28)
        {
          v29 = *(v27 + 2);
          v30 = *(v27 + 1);
          if (v29 == v28)
          {
            goto LABEL_51;
          }

          do
          {
            v31 = *(v29 - 96);
            if (v31)
            {
              *(v29 - 88) = v31;
              operator delete(v31);
            }

            v29 -= 104;
          }

          while (v29 != v28);
LABEL_50:
          v30 = *(v27 + 1);
          goto LABEL_51;
        }

LABEL_52:
        MEMORY[0x2743DA540](v27, 0x1020C40E72D6CFBLL);
      }

LABEL_53:
      if (v46)
      {
        (*v46)[1](v46);
      }

      goto LABEL_4;
    }

    (*(**v6 + 16))(*v6, a2);
LABEL_4:
    v6 += 9;
    if (v6 == v7)
    {
      v8 = v9 ^ 1;
      goto LABEL_56;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = (*(*v11 + 40))(v11);
    v13 = *(a2 + 1);
    if (v13)
    {
      v14 = (*(*v13 + 48))(v13);
      v15 = *(this + 21);
      if (!v15)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
  v15 = *(this + 21);
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_38:
  if ((*(*v15 + 40))(v15) != v12 || (*(**(this + 21) + 48))(*(this + 21)) != v14)
  {
LABEL_40:
    webrtc::I420Buffer::Create(v12);
  }

  v36 = *(this + 21);
  if (v36)
  {
    v2 &= 0xFFFFFFFFFFFFFF00;
    (**v36)(*(this + 21));
    v37 = *(a2 + 18);
    v38 = *(a2 + 4);
    LOWORD(v45) = *a2;
    v46 = v36;
    (**v36)(v36);
    LODWORD(v47) = 0;
    *(&v47 + 1) = 0;
    *&v48 = v38;
    *(&v48 + 1) = v2;
    v49[0] = 0;
    v49[8] = 0;
    v49[16] = 0;
    *&v49[24] = v37;
    LOBYTE(v50) = 0;
    v55 = 0;
    v56[0] = 0;
    v56[4] = 0;
    v56[8] = 0;
    v56[12] = 0;
    v56[28] = 0;
    v57 = 0;
    LOBYTE(v58) = 0;
    LOBYTE(v59) = 0;
    (*v36)[1](v36);
    (*(**v6 + 16))(*v6, &v45);
    v27 = v57;
    if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
    {
      v28 = *(v27 + 1);
      if (v28)
      {
        v39 = *(v27 + 2);
        v30 = *(v27 + 1);
        if (v39 != v28)
        {
          do
          {
            v40 = *(v39 - 96);
            if (v40)
            {
              *(v39 - 88) = v40;
              operator delete(v40);
            }

            v39 -= 104;
          }

          while (v39 != v28);
          goto LABEL_50;
        }

LABEL_51:
        *(v27 + 2) = v28;
        operator delete(v30);
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame.cc", 173, "video_frame_buffer_ != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v32, v33, v34, v35, v44);
}

uint64_t webrtc::VideoBroadcaster::OnDiscardedFrame(webrtc::VideoBroadcaster *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 9;
    (*(*v4 + 24))(v4);
  }

  return pthread_mutex_unlock((this + 40));
}

uint64_t non-virtual thunk towebrtc::VideoBroadcaster::OnDiscardedFrame(webrtc::VideoBroadcaster *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this - 3);
  v3 = *(this - 2);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 9;
    (*(*v4 + 24))(v4);
  }

  return pthread_mutex_unlock((this + 8));
}

double webrtc::VideoCodec::VideoCodec(webrtc::VideoCodec *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 1;
  *(this + 7) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 48) = 1;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 84) = 1;
  *(this + 104) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 120) = 1;
  *(this + 132) = 0;
  *(this + 124) = 0;
  *(this + 140) = 0;
  *(this + 80) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 156) = 1;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 192) = 1;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 212) = 0;
  *(this + 228) = 1;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 264) = 1;
  *(this + 276) = 0;
  *(this + 268) = 0;
  *(this + 284) = 0;
  *(this + 300) = 1;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 81) = 0;
  *(this + 328) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 352) = 0;
  *(this + 94) = 0;
  *(this + 380) = 0;
  *(this + 364) = 0;
  *(this + 356) = 0;
  *(this + 186) = 0;
  return result;
}

webrtc::webrtc_checks_impl *webrtc::VideoCodec::ToString@<X0>(webrtc::webrtc_checks_impl *this@<X0>, char *a2@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  __s = v67;
  strcpy(v67, "VideoCodec {type: ");
  v66 = xmmword_273BA6030;
  v3 = *this;
  if (v3 >= 6)
  {
LABEL_77:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
  }

  v4 = this;
  v5 = (&off_279E95900)[v3];
  v6 = strlen(v5);
  if (v6 >= 0x7ED)
  {
    v7 = 2029;
  }

  else
  {
    v7 = v6;
  }

  memcpy(&v67[18], v5, v7);
  v8 = v7 + 18;
  v67[v7 + 18] = 0;
  if (2029 - v7 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = 2029 - v7;
  }

  memcpy(&v67[v8], ", mode: ", v9);
  v10 = v9 + v8;
  v67[v9 + v8] = 0;
  if (*(v4 + 81))
  {
    v11 = "Screensharing";
  }

  else
  {
    v11 = "RealtimeVideo";
  }

  if (2047 - v10 >= 0xD)
  {
    v12 = 13;
  }

  else
  {
    v12 = 2047 - v10;
  }

  memcpy(&v67[v10], v11, v12);
  v13 = v12 + v10;
  v67[v13] = 0;
  v14 = 2047 - v13;
  __dst = a2;
  if (*(v4 + 32) > 1u)
  {
    if (v14 >= 0xE)
    {
      v25 = 14;
    }

    else
    {
      v25 = 2047 - v13;
    }

    memcpy(&v67[v13], ", Simulcast: {", v25);
    v26 = 0;
    v67[v25 + v13] = 0;
    *(&v66 + 1) = v25 + v13;
    v27 = v4 + 36;
    do
    {
      v37 = v27[12];
      v38 = v27[32];
      v39 = v66;
      v40 = *(&v66 + 1) + 1;
      v41 = *v27;
      v42 = *(v27 + 1);
      memcpy(&__s[*(&v66 + 1)], "[", v66 != *(&v66 + 1) + 1);
      v43 = *(&v66 + 1);
      if (v39 != v40)
      {
        v43 = *(&v66 + 1) + 1;
      }

      *(&v66 + 1) = v43;
      __s[v43] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v41);
      v44 = v66;
      v45 = *(&v66 + 1) + 1;
      memcpy(&__s[*(&v66 + 1)], "x", v66 != *(&v66 + 1) + 1);
      v46 = *(&v66 + 1);
      if (v44 != v45)
      {
        v46 = *(&v66 + 1) + 1;
      }

      *(&v66 + 1) = v46;
      __s[v46] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v42);
      v47 = v66;
      v48 = *(&v66 + 1) + 1;
      this = memcpy(&__s[*(&v66 + 1)], " ", v66 != *(&v66 + 1) + 1);
      v49 = *(&v66 + 1);
      if (v47 != v48)
      {
        v49 = *(&v66 + 1) + 1;
      }

      *(&v66 + 1) = v49;
      __s[v49] = 0;
      if ((v37 - 4) < 0xFFFFFFFD)
      {
        v28 = "nullopt";
        v29 = 7;
      }

      else
      {
        v50 = webrtc::SimulcastStream::GetScalabilityMode(void)const::scalability_modes[v37 - 1];
        if (v50 >= 0x22)
        {
          goto LABEL_77;
        }

        v28 = off_279E957F0[v50];
        v29 = qword_273BA6068[v50];
      }

      v27 += 36;
      if (v29 >= v66 + ~*(&v66 + 1))
      {
        v30 = v66 + ~*(&v66 + 1);
      }

      else
      {
        v30 = v29;
      }

      memcpy(&__s[*(&v66 + 1)], v28, v30);
      *(&v66 + 1) += v30;
      __s[*(&v66 + 1)] = 0;
      v31 = 10;
      if (v38)
      {
        v31 = 8;
        v32 = ", active";
      }

      else
      {
        v32 = ", inactive";
      }

      if (v31 >= v66 + ~*(&v66 + 1))
      {
        v33 = v66 + ~*(&v66 + 1);
      }

      else
      {
        v33 = v31;
      }

      memcpy(&__s[*(&v66 + 1)], v32, v33);
      *(&v66 + 1) += v33;
      __s[*(&v66 + 1)] = 0;
      v34 = v66;
      v35 = *(&v66 + 1) + 1;
      memcpy(&__s[*(&v66 + 1)], "]", v66 != *(&v66 + 1) + 1);
      v36 = *(&v66 + 1);
      if (v34 != v35)
      {
        v36 = *(&v66 + 1) + 1;
      }

      *(&v66 + 1) = v36;
      __s[v36] = 0;
      ++v26;
    }

    while (v26 < *(v4 + 32));
  }

  else
  {
    if (v14 >= 0xF)
    {
      v15 = 15;
    }

    else
    {
      v15 = 2047 - v13;
    }

    memcpy(&v67[v13], ", Singlecast: {", v15);
    *(&v66 + 1) = v15 + v13;
    v67[*(&v66 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v4 + 2));
    v16 = v66;
    v17 = *(&v66 + 1) + 1;
    memcpy(&__s[*(&v66 + 1)], "x", v66 != *(&v66 + 1) + 1);
    v18 = *(&v66 + 1);
    if (v16 != v17)
    {
      v18 = *(&v66 + 1) + 1;
    }

    *(&v66 + 1) = v18;
    __s[v18] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v4 + 3));
    v19 = v66;
    v20 = *(&v66 + 1) + 1;
    this = memcpy(&__s[*(&v66 + 1)], " ", v66 != *(&v66 + 1) + 1);
    v21 = *(&v66 + 1);
    if (v19 != v20)
    {
      v21 = *(&v66 + 1) + 1;
    }

    *(&v66 + 1) = v21;
    __s[v21] = 0;
    v22 = *(v4 + 186);
    if ((v22 & 0x100) != 0)
    {
      if (v22 >= 0x22u)
      {
        goto LABEL_77;
      }

      v51 = v22 & 0x3F;
      v23 = off_279E957F0[v51];
      v24 = qword_273BA6068[v51];
    }

    else
    {
      v23 = "nullopt";
      v24 = 7;
    }

    if (v24 >= v66 + ~*(&v66 + 1))
    {
      v52 = v66 + ~*(&v66 + 1);
    }

    else
    {
      v52 = v24;
    }

    memcpy(&__s[*(&v66 + 1)], v23, v52);
    *(&v66 + 1) += v52;
    __s[*(&v66 + 1)] = 0;
    v53 = 10;
    if (*(v4 + 24))
    {
      v53 = 8;
      v54 = ", active";
    }

    else
    {
      v54 = ", inactive";
    }

    if (v53 >= v66 + ~*(&v66 + 1))
    {
      v55 = v66 + ~*(&v66 + 1);
    }

    else
    {
      v55 = v53;
    }

    memcpy(&__s[*(&v66 + 1)], v54, v55);
    *(&v66 + 1) += v55;
    __s[*(&v66 + 1)] = 0;
  }

  v56 = v66;
  v57 = *(&v66 + 1) + 1;
  memcpy(&__s[*(&v66 + 1)], "}", v66 != *(&v66 + 1) + 1);
  v58 = *(&v66 + 1);
  if (v56 != v57)
  {
    v58 = *(&v66 + 1) + 1;
  }

  *(&v66 + 1) = v58;
  __s[v58] = 0;
  v59 = v66;
  v60 = *(&v66 + 1) + 1;
  this = memcpy(&__s[*(&v66 + 1)], "}", v66 != *(&v66 + 1) + 1);
  v61 = *(&v66 + 1);
  if (v59 != v60)
  {
    v61 = *(&v66 + 1) + 1;
  }

  *(&v66 + 1) = v61;
  __s[v61] = 0;
  v62 = __s;
  if (!__s)
  {
    goto LABEL_76;
  }

  this = strlen(__s);
  if (this >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (this > 0x16)
  {
    operator new();
  }

  __dst[23] = this;
  v63 = this + __dst;
  if (__dst <= v62 && v63 > v62)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (this)
  {
    this = memmove(__dst, v62, this);
  }

  *v63 = 0;
  return this;
}

char *webrtc::CodecTypeToPayloadString(webrtc::webrtc_checks_impl *a1)
{
  if (a1 >= 6)
  {
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  return (&off_279E95900)[a1];
}

uint64_t webrtc::PayloadStringToCodecType(unsigned __int8 *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      v3 = "AV1X";
      v4 = v2;
      v5 = 4;
      while (1)
      {
        v7 = *v4++;
        v6 = v7;
        v9 = *v3++;
        v8 = v9;
        if (v6 != v9)
        {
          if ((v6 - 65) < 0x1A)
          {
            LOBYTE(v6) = v6 + 32;
          }

          if ((v8 - 65) < 0x1A)
          {
            LOBYTE(v8) = v8 + 32;
          }

          if (v6 != v8)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 3;
        }
      }

      v10 = "H264";
      v11 = v2;
      v12 = 4;
      while (1)
      {
        v14 = *v11++;
        v13 = v14;
        v16 = *v10++;
        v15 = v16;
        if (v13 != v16)
        {
          if ((v13 - 65) < 0x1A)
          {
            LOBYTE(v13) = v13 + 32;
          }

          if ((v15 - 65) < 0x1A)
          {
            LOBYTE(v15) = v15 + 32;
          }

          if (v13 != v15)
          {
            break;
          }
        }

        if (!--v12)
        {
          return 4;
        }
      }

      v17 = "H265";
      result = 5;
      while (1)
      {
        v20 = *v2++;
        v19 = v20;
        v22 = *v17++;
        v21 = v22;
        if (v19 != v22)
        {
          if ((v19 - 65) < 0x1A)
          {
            LOBYTE(v19) = v19 + 32;
          }

          if ((v21 - 65) < 0x1A)
          {
            LOBYTE(v21) = v21 + 32;
          }

          if (v19 != v21)
          {
            break;
          }
        }

        if (!--v1)
        {
          return result;
        }
      }
    }

    return 0;
  }

  v23 = *v2;
  if (v23 == 86)
  {
    goto LABEL_44;
  }

  if ((v23 - 65) < 0x1A)
  {
    LOBYTE(v23) = v23 + 32;
  }

  if (v23 == 118)
  {
LABEL_44:
    v24 = v2[1];
    if (v24 == 80)
    {
      goto LABEL_77;
    }

    if ((v24 - 65) < 0x1A)
    {
      LOBYTE(v24) = v24 + 32;
    }

    if (v24 == 112)
    {
LABEL_77:
      v25 = v2[2];
      if (v25 == 56)
      {
        return 1;
      }

      if ((v25 - 65) < 0x1A)
      {
        LOBYTE(v25) = v25 + 32;
      }

      if (v25 == 56)
      {
        return 1;
      }
    }
  }

  v26 = *v2;
  if (v26 == 86)
  {
    goto LABEL_57;
  }

  if ((v26 - 65) < 0x1A)
  {
    LOBYTE(v26) = v26 + 32;
  }

  if (v26 == 118)
  {
LABEL_57:
    v27 = v2[1];
    if (v27 == 80)
    {
      goto LABEL_78;
    }

    if ((v27 - 65) < 0x1A)
    {
      LOBYTE(v27) = v27 + 32;
    }

    if (v27 == 112)
    {
LABEL_78:
      v28 = v2[2];
      if (v28 == 57)
      {
        return 2;
      }

      if ((v28 - 65) < 0x1A)
      {
        LOBYTE(v28) = v28 + 32;
      }

      if (v28 == 57)
      {
        return 2;
      }
    }
  }

  v29 = *v2;
  if (v29 != 65)
  {
    if ((v29 - 65) < 0x1A)
    {
      LOBYTE(v29) = v29 + 32;
    }

    if (v29 != 97)
    {
      return 0;
    }
  }

  v30 = v2[1];
  if (v30 != 86)
  {
    if ((v30 - 65) < 0x1A)
    {
      LOBYTE(v30) = v30 + 32;
    }

    if (v30 != 118)
    {
      return 0;
    }
  }

  v31 = v2[2];
  if (v31 != 49)
  {
    if ((v31 - 65) < 0x1A)
    {
      LOBYTE(v31) = v31 + 32;
    }

    if (v31 != 49)
    {
      return 0;
    }
  }

  return 3;
}

void webrtc::VideoCodecInitializer::SetupCodec(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  *(a9 + 28) = 0;
  *(a9 + 32) = 0;
  *(a9 + 36) = 0u;
  *(a9 + 52) = 0u;
  *(a9 + 68) = 0u;
  *(a9 + 84) = 0u;
  *(a9 + 100) = 0u;
  *(a9 + 116) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 48) = 1;
  *(a9 + 60) = 0;
  *(a9 + 52) = 0;
  *(a9 + 68) = 0;
  *(a9 + 84) = 1;
  *(a9 + 104) = 0;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 120) = 1;
  *(a9 + 132) = 0;
  *(a9 + 124) = 0;
  *(a9 + 140) = 0;
  *(a9 + 144) = 0u;
  v12 = a9 + 144;
  *(a9 + 320) = 0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 160) = 0u;
  v13 = a9 + 160;
  *(a9 + 156) = 1;
  *(a9 + 168) = 0;
  *(a9 + 160) = 0;
  *(a9 + 176) = 0;
  *(a9 + 192) = 1;
  *(a9 + 204) = 0;
  *(a9 + 196) = 0;
  *(a9 + 212) = 0;
  *(a9 + 228) = 1;
  *(a9 + 232) = 0;
  *(a9 + 240) = 0;
  *(a9 + 248) = 0;
  *(a9 + 264) = 1;
  *(a9 + 276) = 0;
  *(a9 + 268) = 0;
  *(a9 + 284) = 0;
  *(a9 + 300) = 1;
  *(a9 + 304) = 0;
  *(a9 + 312) = 0;
  *(a9 + 320) = 0;
  *(a9 + 324) = 0;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  *(a9 + 344) = 0;
  v14 = (a9 + 356);
  *(a9 + 376) = 0;
  *(a9 + 364) = 0;
  *(a9 + 356) = 0;
  *(a9 + 372) = 0;
  *a9 = *a2;
  v15 = *(a2 + 136);
  if (v15 <= 1)
  {
    *(a9 + 324) = v15;
  }

  *(a9 + 352) = (v15 == 1) & *(a2 + 200);
  *(a9 + 380) = *(a2 + 140);
  v16 = *a3;
  v17 = a3[1];
  *(a9 + 32) = -85 * ((v17 - *a3) >> 5);
  if (v17 == v16)
  {
    goto LABEL_211;
  }

  v18 = *(v16 + 20) / 1000;
  *(a9 + 16) = v18;
  v20 = *(a2 + 168);
  v19 = *(a2 + 176);
  if (v20 == v19)
  {
    v22 = 0;
    v158 = v14;
    v159 = v13;
    v160 = a2;
    v155 = v12;
    *(a9 + 24) = 0;
    if (v18 > 0x1D)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = v20 + 96;
    do
    {
      v22 = *(v21 - 14);
      if (v22)
      {
        break;
      }

      v23 = v21 == v19;
      v21 += 96;
    }

    while (!v23);
    v158 = v14;
    v159 = v13;
    v160 = a2;
    v155 = v12;
    *(a9 + 24) = v22;
    if (v18 > 0x1D)
    {
      goto LABEL_11;
    }
  }

  *(a9 + 16) = 30;
LABEL_11:
  v24 = 0;
  v25 = 0;
  *(a9 + 336) = 200;
  *(a9 + 344) = 500;
  v156 = *(v16 + 80);
  v26 = v156 >> 8;
  v27 = (a9 + 68);
  v28 = 82;
  do
  {
    v29 = v16 + v28;
    v30 = *(v16 + v28 - 82);
    *(v27 - 8) = v30;
    v31 = *(v16 + v28 - 74);
    *(v27 - 7) = v31;
    *(v27 - 6) = *(v16 + v28 - 66);
    v32 = 274877907 * *(v16 + v28 - 62);
    v33 = (v32 >> 38) + (v32 >> 63);
    *(v27 - 2) = v33;
    v34 = 274877907 * *(v16 + v28 - 58);
    *(v27 - 3) = (v34 >> 38) + (v34 >> 63);
    v35 = 274877907 * *(v16 + v28 - 54);
    v36 = (v35 >> 38) + (v35 >> 63);
    *(v27 - 4) = v36;
    v37 = *(v16 + v28 - 42);
    *(v27 - 1) = v37;
    v38 = *(v16 + v28 - 1);
    if (v38 == 1)
    {
      v9 = *(v29 - 2);
      if (v9 >= 0x22)
      {
        goto LABEL_212;
      }
    }

    else if (*(v29 - 26) == 1)
    {
      v9 = *(v16 + v28 - 34);
    }

    else
    {
      v9 = 1;
    }

    *(v27 - 20) = v9;
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 5) <= v24)
    {
      goto LABEL_211;
    }

    v39 = *(v16 + v28);
    *v27 = v39;
    v9 = *(a9 + 4);
    if (v9 > v30)
    {
      LOWORD(v30) = *(a9 + 4);
    }

    *(a9 + 4) = v30;
    if (*(a9 + 6) > v31)
    {
      LOWORD(v31) = *(a9 + 6);
    }

    *(a9 + 6) = v31;
    v40 = *(a9 + 16);
    if (v33 < v40)
    {
      v40 = v33;
    }

    *(a9 + 12) += v36;
    *(a9 + 16) = v40;
    v41 = *(a9 + 28);
    if (v41 <= v37)
    {
      v41 = v37;
    }

    *(a9 + 28) = v41;
    v42 = *(v29 - 66);
    if (v25 <= v42)
    {
      v25 = v42;
    }

    if (v39 == 1)
    {
      v43 = *(v16 + 81);
      if (v43 == 1 && v38)
      {
        if (*(v16 + 80) == *(v16 + v28 - 2))
        {
          goto LABEL_12;
        }
      }

      else if (v43 == v38)
      {
        goto LABEL_12;
      }

      if (v26)
      {
        LOBYTE(v26) = 0;
      }

      if (*a9 != 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v161 = v161 & 0xFFFFFFFF00000000 | 0x4DA;
        webrtc::webrtc_logging_impl::Log("\r\t", v44, v45, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/video_codec_initializer.cc");
      }
    }

LABEL_12:
    ++v24;
    v16 = *a3;
    v17 = a3[1];
    v28 += 96;
    v27 += 36;
  }

  while (v24 < 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 5));
  if ((v26 & 1) == 0)
  {
    v46 = *(a9 + 12);
    v47 = v159;
    if (v46)
    {
      goto LABEL_43;
    }

LABEL_51:
    v53 = *(a9 + 6) * *(a9 + 4) * *(a9 + 20) / 0x3E8;
    *(a9 + 12) = v53;
    v48 = v160;
    if (v53 > 0x1D)
    {
      goto LABEL_45;
    }

LABEL_44:
    *(a9 + 12) = 30;
    goto LABEL_45;
  }

  *(a9 + 372) = v156 | 0x100;
  v46 = *(a9 + 12);
  v47 = v159;
  if (!v46)
  {
    goto LABEL_51;
  }

LABEL_43:
  v48 = v160;
  if (v46 <= 0x1D)
  {
    goto LABEL_44;
  }

LABEL_45:
  *(a9 + 20) = v25;
  *(a9 + 156) = 1;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0;
  v49 = *(a9 + 6);
  *(a9 + 144) = *(a9 + 4);
  *(a9 + 148) = v49;
  *(a9 + 152) = v25;
  if (v17 == v16)
  {
    goto LABEL_211;
  }

  if (*(v16 + 81) == 1)
  {
    v50 = *(v16 + 80);
    v51 = v158;
    if (v50 < 0x22)
    {
      v52 = v48[18];
      if (!v52)
      {
        goto LABEL_65;
      }

LABEL_59:
      v54 = *a9;
      if (*a9 == 3)
      {
        (*(*v52 + 48))(v52, v51);
        goto LABEL_65;
      }

      if (v54 == 2)
      {
        (*(*v52 + 40))(v52, v51);
        goto LABEL_65;
      }

      if (v54 == 1)
      {
        (*(*v52 + 32))(v52, v51);
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    while (1)
    {
LABEL_213:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v50);
    }
  }

  v51 = v158;
  if (*(v16 + 56) != 1)
  {
    *(a9 + 156) = 1;
    v52 = v48[18];
    if (!v52)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  *(a9 + 156) = *(v16 + 48);
  v52 = v48[18];
  if (v52)
  {
    goto LABEL_59;
  }

LABEL_65:
  v54 = *a9;
LABEL_66:
  if (v54 <= 2)
  {
    if (v54 != 1)
    {
      if (v54 != 2)
      {
        goto LABEL_165;
      }

      if (*(a9 + 32) <= 1u)
      {
        *(a9 + 68) = v22;
        if (v48[18])
        {
LABEL_86:
          v66 = a3[1];
          if (*a3 == v66)
          {
            goto LABEL_211;
          }

          goto LABEL_101;
        }
      }

      else if (v48[18])
      {
        goto LABEL_86;
      }

      *v51 = xmmword_273BA6180;
      v66 = a3[1];
      if (*a3 == v66)
      {
        goto LABEL_211;
      }

LABEL_101:
      if (*(v66 - 40) == 1)
      {
        v73 = *(v66 - 48);
        *v51 = v73;
        v75 = v48[14];
        v74 = v48[15];
        if (v75 != v74)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v73 = *v51;
        *v51 = *v51;
        v75 = v48[14];
        v74 = v48[15];
        if (v75 != v74)
        {
LABEL_103:
          if (0x8E38E38E38E38E39 * ((v74 - v75) >> 2) < 0x71C71C71C71C71DLL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      if ((*(a9 + 372) & 0x100) != 0)
      {
        webrtc::GetVp9SvcConfig(a9, a5, a6, a7, a8, &v165);
        v126 = *(&v165 + 1);
        v125 = v165;
        v96 = v155;
      }

      else
      {
        v94 = v48[21];
        v95 = v48[22] - v94;
        v96 = v155;
        if (v95)
        {
          v97 = 0;
          v98 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 5);
          if (v98 <= 1)
          {
            v98 = 1;
          }

          v99 = (v94 + 82);
          while (1)
          {
            v100 = *v99;
            v99 += 96;
            if (v100)
            {
              break;
            }

            if (v98 == ++v97)
            {
              goto LABEL_132;
            }
          }
        }

        else
        {
LABEL_132:
          v97 = 0;
        }

        v101 = *(a9 + 4);
        v102 = *(a9 + 6);
        v103 = *(a9 + 20);
        v104 = v103;
        v105 = *(a9 + 366);
        if (*(a9 + 324) == 1)
        {
          v162 = 0;
          v163 = 0;
          v164 = 0;
          if (v105)
          {
            *&v165 = __PAIR64__(v102, v101);
            v106 = 5.0;
            if (v104 < 5.0)
            {
              v106 = v104;
            }

            *(&v165 + 2) = v106;
            BYTE12(v165) = 1;
            v168 = 30;
            v169 = 0;
            v166 = 250;
            v167 = 150;
            v170 = 1;
            std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](&v162, &v165);
            if (v105 != 1)
            {
              *&v165 = __PAIR64__(v102, v101);
              v107 = 10.0;
              if (v104 < 10.0)
              {
                v107 = v104;
              }

              *(&v165 + 2) = v107;
              BYTE12(v165) = 1;
              v168 = 200;
              v169 = 0;
              v166 = 500;
              v167 = 350;
              v170 = 1;
              std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](&v162, &v165);
              if (v105 != 2)
              {
                *&v165 = __PAIR64__(v102, v101);
                v108 = 30.0;
                if (v104 < 30.0)
                {
                  v108 = v104;
                }

                *(&v165 + 2) = v108;
                BYTE12(v165) = 1;
                v168 = 500;
                v169 = 0;
                v166 = 950;
                v167 = 950;
                v170 = 1;
                std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](&v162, &v165);
              }
            }
          }
        }

        else
        {
          LOBYTE(v165) = 0;
          v171 = 0;
          webrtc::ConfigureSvcNormalVideo(v101, v102, v97, v105, v73, &v165, &v162, v103);
        }

        v125 = v162;
        v126 = v163;
        if (*(a9 + 366) <= 1u)
        {
          if (v162 == v163)
          {
            goto LABEL_211;
          }

          v127 = *(a9 + 12);
          *(v163 - 2) = v127;
          *(v126 - 5) = v127;
        }

        v128 = v48[21];
        v129 = 0xAAAAAAAAAAAAAAABLL * ((v48[22] - v128) >> 5);
        if (v97 < v129)
        {
          v130 = 0x8E38E38E38E38E39 * ((v126 - v125) >> 2);
          v131 = v130 + v97;
          if (v97 > v130 + v97)
          {
            v131 = v97;
          }

          v132 = v129 + ~v97;
          if (v130 < v132)
          {
            v132 = 0x8E38E38E38E38E39 * ((v126 - v125) >> 2);
          }

          v133 = v131 - v97;
          if (v132 < v131 - v97)
          {
            v133 = v132;
          }

          v134 = v97;
          if (v133 + 1 >= 3)
          {
            v135 = v133 & 0xFFFFFFFFFFFFFFFELL;
            v134 = v97 + v135;
            v136 = v125 + 68;
            v137 = (v128 + 96 * v97 + 178);
            do
            {
              v9 = *(v137 - 96);
              v138 = *v137;
              v137 += 192;
              *(v136 - 36) = v9;
              *v136 = v138;
              v136 += 72;
              v135 -= 2;
            }

            while (v135);
          }

          v139 = 36 * v134 - 36 * v97 + 32;
          v140 = (v128 + 96 * v134 + 82);
          v141 = v129 - v134;
          v142 = v97 - 0x71C71C71C71C71C7 * ((v126 - v125) >> 2) - v134;
          v143 = v131 - v134;
          do
          {
            if (!v143)
            {
              break;
            }

            if (!v142)
            {
              goto LABEL_211;
            }

            v144 = *v140;
            v140 += 96;
            v125[v139] = v144;
            v139 += 36;
            --v142;
            --v143;
            --v141;
          }

          while (v141);
        }
      }

      if (v126 != v125)
      {
        v145 = 0;
        v146 = 0x8E38E38E38E38E39 * ((v126 - v125) >> 2);
        if (v146 <= 1)
        {
          v147 = 1;
        }

        else
        {
          v147 = 0x8E38E38E38E38E39 * ((v126 - v125) >> 2);
        }

        do
        {
          v148 = v96 + v145;
          v149 = *&v125[v145];
          v150 = *&v125[v145 + 16];
          *(v148 + 32) = v125[v145 + 32];
          *v148 = v149;
          *(v148 + 16) = v150;
          v145 += 36;
          --v147;
        }

        while (v147);
        v151 = *(v126 - 9);
        *(a9 + 4) = v151;
        v152 = *(v126 - 8);
        *(a9 + 6) = v152;
        if (*(a9 + 32) == 1)
        {
          *(a9 + 36) = v151;
          *(a9 + 40) = v152;
        }

        *(a9 + 366) = v146;
        *(a9 + 356) = *(v126 - 24);
        operator delete(v125);
        webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
        if ((v153 & 1) == 0)
        {
          return;
        }

        goto LABEL_166;
      }

LABEL_211:
      __break(1u);
LABEL_212:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v9);
      goto LABEL_213;
    }

    if (v48[18])
    {
      v72 = *a3;
      v71 = a3[1];
      if (*a3 == v71)
      {
        goto LABEL_156;
      }
    }

    else
    {
      *v51 = 0xBB800000101;
      v72 = *a3;
      v71 = a3[1];
      if (*a3 == v71)
      {
        goto LABEL_156;
      }
    }

    v110 = v72;
    while (*(v110 + 81) != 1 || *(v110 + 80) < 3u)
    {
      v110 += 96;
      if (v110 == v71)
      {
        goto LABEL_156;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      if ((*(v110 + 81) & 1) == 0)
      {
        goto LABEL_211;
      }

      *&v165 = webrtc::ScalabilityModeToString(*(v110 + 80));
      *(&v165 + 1) = v111;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v111, v112, v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/video_codec_initializer.cc");
    }

    if ((*(v110 + 81) & 1) == 0)
    {
      goto LABEL_211;
    }

    *(a9 + 372) = *(v110 + 80) | 0x100;
    v72 = *a3;
    v71 = a3[1];
LABEL_156:
    if (v72 == v71)
    {
      goto LABEL_211;
    }

    if (*(v71 - 15) == 1)
    {
      v50 = *(v71 - 16);
      if (v50 >= 0x22)
      {
        goto LABEL_213;
      }

      webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
      if ((v118 & 1) == 0)
      {
        return;
      }

      goto LABEL_166;
    }

    if (*(v71 - 40) == 1)
    {
      *v51 = *(v71 - 48);
      webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
      if ((v119 & 1) == 0)
      {
        return;
      }

      goto LABEL_166;
    }

    *v51 = *v51;
    goto LABEL_165;
  }

  if (v54 == 3)
  {
    v67 = a3[1];
    if (*a3 == v67)
    {
      goto LABEL_211;
    }

    if (*(v67 - 40) == 1)
    {
      v68 = *(v67 - 48);
    }

    else
    {
      v68 = 1;
    }

    if ((954437177 * ((v48[15] - v48[14]) >> 2)) <= 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = 954437177 * ((v48[15] - v48[14]) >> 2);
    }

    if (webrtc::SetAv1SvcConfig(a9, v68, v76, a4, a5, a6, a7, a8))
    {
      v77 = v48[21];
      if (v77 != v48[22])
      {
        v78 = *(v77 + 20);
        if (v78 >= 1)
        {
          v79 = v78 / 0x3E8u;
          if (*(a9 + 164) < v79)
          {
            v79 = *(a9 + 164);
          }

          *(a9 + 168) = v79;
        }
      }

      v80 = v48[14];
      v81 = v48[15] - v80;
      if (v81)
      {
        v82 = 0x8E38E38E38E38E39 * (v81 >> 2);
        if (v82 <= 1)
        {
          v82 = 1;
        }

        v83 = (a9 + 176);
        v84 = (v80 + 32);
        do
        {
          v85 = *v84;
          v84 += 36;
          *v83 = v85;
          v83 += 36;
          --v82;
        }

        while (v82);
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v86, v87, v88, v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/video_codec_initializer.cc");
      webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
      if ((v93 & 1) == 0)
      {
        return;
      }

      goto LABEL_166;
    }

    goto LABEL_165;
  }

  if (v54 == 4)
  {
    if (v48[18])
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/video_codec_initializer.cc", 341, "!config.encoder_specific_settings", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v154);
      goto LABEL_215;
    }

    *v51 = 0x100000BB8;
    v69 = a3[1];
    if (*a3 == v69)
    {
      goto LABEL_211;
    }

    if (*(v69 - 40) == 1)
    {
      *(a9 + 360) = *(v69 - 48);
      webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
      if ((v70 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *(a9 + 360) = 1;
      webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
      if ((v109 & 1) == 0)
      {
        return;
      }
    }

LABEL_166:
    v121 = v64 / 0x3E8uLL;
    if (v64 % 0x3E8uLL > 0x1F3)
    {
      ++v121;
    }

    if (-v64 % 0x3E8uLL <= 0x1F4)
    {
      v122 = 0;
    }

    else
    {
      v122 = -1;
    }

    if (v64 < 0)
    {
      v121 = v122 - -v64 / 0x3E8uLL;
    }

    v123 = (v121 < 0xFFFFFFFF80000000) | (2 * (v121 > 0x7FFFFFFF));
    if (v123 <= 1)
    {
      if (v123)
      {
        LODWORD(v121) = 0x80000000;
      }

      *(a9 + 16) = v121;
      *(a9 + 60) = v121;
      v124 = *a9;
      if (*a9 > 5u)
      {
        return;
      }

LABEL_180:
      if (((1 << v124) & 0x2C) != 0)
      {
        *(a9 + 168) = v121;
      }

      return;
    }

    if (v123 == 2)
    {
      LODWORD(v121) = 0x7FFFFFFF;
      *(a9 + 16) = 0x7FFFFFFF;
      *(a9 + 60) = 0x7FFFFFFF;
      v124 = *a9;
      if (*a9 > 5u)
      {
        return;
      }

      goto LABEL_180;
    }

LABEL_215:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v64);
  }

  if (v54 != 5)
  {
LABEL_165:
    webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
    if ((v120 & 1) == 0)
    {
      return;
    }

    goto LABEL_166;
  }

  for (i = *a3; ; i += 96)
  {
    if (i == a3[1])
    {
      goto LABEL_80;
    }

    if (*(i + 81) == 1 && *(i + 80) >= 3u)
    {
      break;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    if (*(i + 81))
    {
      *&v165 = webrtc::ScalabilityModeToString(*(i + 80));
      *(&v165 + 1) = v56;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/video_codec_initializer.cc");
      goto LABEL_78;
    }

    goto LABEL_211;
  }

LABEL_78:
  if ((*(i + 81) & 1) == 0)
  {
    goto LABEL_211;
  }

  *(a9 + 372) = *(i + 80) | 0x100;
LABEL_80:
  v63 = *(a9 + 12);
  *(a9 + 164) = v63;
  *(a9 + 160) = v63;
  *(a9 + 176) = v22;
  webrtc::GetExperimentalMinVideoBitrate(a1, *a9);
  if (v65)
  {
    goto LABEL_166;
  }
}

void webrtc::CodecSpecificInfo::~CodecSpecificInfo(webrtc::CodecSpecificInfo *this)
{
  if (*(this + 2056) == 1)
  {
    v2 = *(this + 512);
    if (v2 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v2])(&v3, this + 2000);
    }

    *(this + 512) = -1;
    if (*(this + 1984) != 1)
    {
LABEL_3:
      if (*(this + 1848) != 1)
      {
        return;
      }

LABEL_9:
      webrtc::GenericFrameInfo::~GenericFrameInfo((this + 1640));
      return;
    }
  }

  else if (*(this + 1984) != 1)
  {
    goto LABEL_3;
  }

  webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 1856));
  if (*(this + 1848) == 1)
  {
    goto LABEL_9;
  }
}

uint64_t webrtc::DecodedImageCallback::Decoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    a3 = a3;
  }

  else
  {
    a3 = -1;
  }

  return (*(*a1 + 24))(a1, a2, a3);
}

std::string *webrtc::VideoDecoder::GetDecoderInfo@<X0>(webrtc::VideoDecoder *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = (*(*this + 64))(this);
  if (result)
  {

    return std::string::__assign_external(a2, result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t webrtc::VideoDecoder::DecoderInfo::ToString@<X0>(webrtc::VideoDecoder::DecoderInfo *this@<X0>, char *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  strcpy(__s, "DecoderInfo { prefers_late_decoding = implementation_name = '");
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *this;
    v4 = *(this + 1);
  }

  else
  {
    v5 = this;
  }

  if (v4 >= 0x7C2)
  {
    v6 = 1986;
  }

  else
  {
    v6 = v4;
  }

  memcpy(&__s[61], v5, v6);
  v7 = v6 + 61;
  __s[v6 + 61] = 0;
  if (1986 - v6 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1986 - v6;
  }

  memcpy(&__s[v7], "', ", v8);
  v9 = v8 + v7;
  __s[v8 + v7] = 0;
  if (2047 - (v8 + v7) >= 0x1A)
  {
    v10 = 26;
  }

  else
  {
    v10 = 2047 - v9;
  }

  memcpy(&__s[v9], "is_hardware_accelerated = ", v10);
  v11 = v10 + v9;
  __s[v11] = 0;
  v12 = 4;
  if (*(this + 24))
  {
    v13 = "true";
  }

  else
  {
    v12 = 5;
    v13 = "false";
  }

  if (v12 >= 2047 - v11)
  {
    v14 = 2047 - v11;
  }

  else
  {
    v14 = v12;
  }

  memcpy(&__s[v11], v13, v14);
  v15 = v14 + v11;
  v16 = &__s[v14 + v11];
  *v16 = 0;
  v17 = 2047 - v15;
  if (v17 >= 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17;
  }

  memcpy(v16, " }", v18);
  v16[v18] = 0;
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v20 = &a2[result];
  if (a2 <= __s && &a2[result] > __s)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result)
  {
    result = memcpy(a2, __s, result);
  }

  *v20 = 0;
  return result;
}

void webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::~VideoDecoderSoftwareFallbackWrapper(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[2];
  this[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[2];
  this[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::Configure(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this, const webrtc::VideoDecoder::Settings *a2)
{
  v3 = *a2;
  *(this + 44) = *(a2 + 2);
  *(this + 28) = v3;
  if (*(this + 24) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_decoder_software_fallback_wrapper.cc");
    }

    goto LABEL_8;
  }

  if (!(*(**(this + 2) + 16))(*(this + 2), this + 28))
  {
LABEL_8:
  }

  *(this + 2) = 1;
  if (*(this + 11))
  {
    (*(**(this + 2) + 40))(*(this + 2));
  }

  return 1;
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::Decode(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this, const webrtc::EncodedImage *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 4294967289;
  }

  if (v2 == 2)
  {
    goto LABEL_13;
  }

  if (v2 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(**(this + 2) + 24))(*(this + 2));
  if (result != -13)
  {
    if (result != -1)
    {
      ++*(this + 24);
      *(this + 13) = 0;
      return result;
    }

    v6 = *(this + 13);
    if (*(a2 + 6) == 3)
    {
      *(this + 13) = ++v6;
    }

    if (v6 < 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = result;
  result = v7;
  if (inited)
  {
LABEL_13:
    v9 = *(**(this + 7) + 24);

    return v9();
  }

  return result;
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::RegisterDecodeCompleteCallback(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this, webrtc::DecodedImageCallback *a2)
{
  *(this + 11) = a2;
  v2 = 16;
  if (*(this + 2) == 2)
  {
    v2 = 56;
  }

  return (*(**(this + v2) + 40))();
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::Release(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this)
{
  result = *(this + 2);
  switch(result)
  {
    case 0:
      goto LABEL_9;
    case 2:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_decoder_software_fallback_wrapper.cc");
      }

      v3 = *(this + 7);
      goto LABEL_8;
    case 1:
      v3 = *(this + 2);
LABEL_8:
      result = (*(*v3 + 48))(v3);
LABEL_9:
      *(this + 2) = 0;
      return result;
  }

  result = 0xFFFFFFFFLL;
  *(this + 2) = 0;
  return result;
}

std::string *webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::GetDecoderInfo@<X0>(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 16;
  if (*(this + 2) == 2)
  {
    v4 = 56;
  }

  result = (*(**(this + v4) + 56))(*(this + v4));
  v6 = (this + 64);
  if (*(this + 2) == 2 && v6 != a2)
  {
    v8 = *(this + 87);
    if (*(a2 + 23) < 0)
    {
      if (v8 >= 0)
      {
        v9 = this + 64;
      }

      else
      {
        v9 = *(this + 8);
      }

      if (v8 >= 0)
      {
        v10 = *(this + 87);
      }

      else
      {
        v10 = *(this + 9);
      }

      return std::string::__assign_no_alias<false>(a2, v9, v10);
    }

    else if ((*(this + 87) & 0x80) != 0)
    {
      v11 = *(this + 8);
      v12 = *(this + 9);

      return std::string::__assign_no_alias<true>(a2, v11, v12);
    }

    else
    {
      *a2 = *v6;
      *(a2 + 16) = *(this + 10);
    }
  }

  return result;
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::ImplementationName(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this)
{
  if (*(this + 2) != 2)
  {
    return (*(**(this + 2) + 64))();
  }

  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::VideoDecoderSoftwareFallbackWrapper::InitFallbackDecoder(webrtc::_anonymous_namespace_::VideoDecoderSoftwareFallbackWrapper *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_decoder_software_fallback_wrapper.cc");
  }

  v9 = (*(**(this + 7) + 16))(*(this + 7), this + 28);
  if (v9)
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_decoder_software_fallback_wrapper.cc");
  }

  return v9;
}

webrtc::VideoEncoder::EncoderInfo *webrtc::VideoEncoder::EncoderInfo::EncoderInfo(webrtc::VideoEncoder::EncoderInfo *this, const webrtc::VideoEncoder::EncoderInfo *a2)
{
  *this = *a2;
  v4 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v5;
  }

  v6 = *(a2 + 24);
  *(this + 7) = 0;
  *(this + 24) = v6;
  v7 = *(a2 + 7);
  if (v7 >= 2)
  {
    if (v7)
    {
      absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(this + 7, a2 + 7);
      *(this + 10) = 0;
      v8 = (this + 80);
      v9 = (a2 + 80);
      v10 = *(a2 + 10);
      if (v10 >= 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(this + 7) = v7;
      *(this + 4) = *(a2 + 4);
      *(this + 10) = 0;
      v8 = (this + 80);
      v9 = (a2 + 80);
      v10 = *(a2 + 10);
      if (v10 >= 2)
      {
        goto LABEL_19;
      }
    }

LABEL_6:
    *(this + 13) = 0;
    v11 = (this + 104);
    v12 = (a2 + 104);
    v13 = *(a2 + 13);
    if (v13 < 2)
    {
      goto LABEL_7;
    }

LABEL_23:
    if (v13)
    {
      absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(v11, v12);
      *(this + 16) = 0;
      v14 = (this + 128);
      v15 = (a2 + 128);
      v16 = *(a2 + 16);
      if (v16 >= 2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *(this + 13) = v13;
      *(this + 7) = *(a2 + 7);
      *(this + 16) = 0;
      v14 = (this + 128);
      v15 = (a2 + 128);
      v16 = *(a2 + 16);
      if (v16 >= 2)
      {
        goto LABEL_27;
      }
    }

LABEL_8:
    *(this + 19) = 0;
    v17 = (this + 152);
    v18 = (a2 + 152);
    v19 = *(a2 + 19);
    if (v19 < 2)
    {
      goto LABEL_9;
    }

LABEL_31:
    if (v19)
    {
      absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(v17, v18);
      *(this + 22) = 0;
      *(this + 23) = 0;
      *(this + 24) = 0;
      v28 = *(a2 + 22);
      v27 = *(a2 + 23);
      v22 = v27 - v28;
      if (v27 == v28)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(this + 19) = v19;
      *(this + 10) = *(a2 + 10);
      *(this + 22) = 0;
      *(this + 23) = 0;
      *(this + 24) = 0;
      v26 = *(a2 + 22);
      v25 = *(a2 + 23);
      v22 = v25 - v26;
      if (v25 == v26)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    if ((v22 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 10) = 0;
  v8 = (this + 80);
  v9 = (a2 + 80);
  v10 = *(a2 + 10);
  if (v10 < 2)
  {
    goto LABEL_6;
  }

LABEL_19:
  if (v10)
  {
    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(v8, v9);
    *(this + 13) = 0;
    v11 = (this + 104);
    v12 = (a2 + 104);
    v13 = *(a2 + 13);
    if (v13 >= 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *(this + 10) = v10;
    *(this + 88) = *(a2 + 88);
    *(this + 13) = 0;
    v11 = (this + 104);
    v12 = (a2 + 104);
    v13 = *(a2 + 13);
    if (v13 >= 2)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  *(this + 16) = 0;
  v14 = (this + 128);
  v15 = (a2 + 128);
  v16 = *(a2 + 16);
  if (v16 < 2)
  {
    goto LABEL_8;
  }

LABEL_27:
  if (v16)
  {
    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(v14, v15);
    *(this + 19) = 0;
    v17 = (this + 152);
    v18 = (a2 + 152);
    v19 = *(a2 + 19);
    if (v19 >= 2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(this + 16) = v16;
    *(this + 136) = *(a2 + 136);
    *(this + 19) = 0;
    v17 = (this + 152);
    v18 = (a2 + 152);
    v19 = *(a2 + 19);
    if (v19 >= 2)
    {
      goto LABEL_31;
    }
  }

LABEL_9:
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v21 = *(a2 + 22);
  v20 = *(a2 + 23);
  v22 = v20 - v21;
  if (v20 != v21)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(this + 26) = 0;
  v23 = *(a2 + 26);
  *(this + 200) = *(a2 + 200);
  if (v23 >= 2)
  {
    if (v23)
    {
      absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::InitFrom(this + 26, a2 + 26);
    }

    else
    {
      *(this + 26) = v23;
      v24 = *(a2 + 216);
      *(this + 29) = *(a2 + 29);
      *(this + 216) = v24;
    }
  }

  v29 = *(a2 + 30);
  *(this + 248) = *(a2 + 248);
  *(this + 30) = v29;
  return this;
}

void webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(void **this)
{
  if (this[26])
  {
    operator delete(this[27]);
  }

  v2 = this[22];
  if (v2)
  {
    this[23] = v2;
    operator delete(v2);
  }

  if (this[19])
  {
    operator delete(this[20]);
    if ((this[16] & 1) == 0)
    {
LABEL_7:
      if ((this[13] & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((this[16] & 1) == 0)
  {
    goto LABEL_7;
  }

  operator delete(this[17]);
  if ((this[13] & 1) == 0)
  {
LABEL_8:
    if ((this[10] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(this[14]);
  if ((this[10] & 1) == 0)
  {
LABEL_9:
    if ((this[7] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(this[11]);
  if ((this[7] & 1) == 0)
  {
LABEL_10:
    if ((*(this + 47) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(this[3]);
    return;
  }

LABEL_16:
  operator delete(this[8]);
  if (*(this + 47) < 0)
  {
    goto LABEL_17;
  }
}

BOOL webrtc::VideoEncoder::EncoderInfo::operator==(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 8) != v2)
  {
    return 0;
  }

  if (!*(result + 8))
  {
LABEL_9:
    if (*(result + 12) == *(a2 + 12) && *(result + 21) == *(a2 + 21))
    {
      v4 = *(result + 47);
      if (v4 >= 0)
      {
        v5 = *(result + 47);
      }

      else
      {
        v5 = *(result + 32);
      }

      v6 = *(a2 + 47);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 32);
      }

      if (v5 == v6)
      {
        v8 = result;
        v9 = v4 >= 0 ? (result + 24) : *(result + 24);
        v11 = v7 >= 0 ? (a2 + 24) : *(a2 + 24);
        if (!memcmp(v9, v11, v5) && *(v8 + 48) == *(a2 + 48) && *(v8 + 49) == *(a2 + 49))
        {
          v12 = *(v8 + 56);
          v13 = *(a2 + 56);
          if (v12 >> 1 == v13 >> 1)
          {
            v14 = (v13 & 1) != 0 ? *(a2 + 64) : (a2 + 64);
            v15 = (v12 & 1) != 0 ? *(v8 + 64) : (v8 + 64);
            if (!memcmp(v15, v14, v12 >> 1))
            {
              v16 = *(v8 + 80);
              v17 = *(a2 + 80);
              if (v16 >> 1 == v17 >> 1)
              {
                v18 = (v17 & 1) != 0 ? *(a2 + 88) : (a2 + 88);
                v19 = (v16 & 1) != 0 ? *(v8 + 88) : (v8 + 88);
                if (!memcmp(v19, v18, v16 >> 1))
                {
                  v20 = *(v8 + 104);
                  v21 = *(a2 + 104);
                  if (v20 >> 1 == v21 >> 1)
                  {
                    v22 = (v21 & 1) != 0 ? *(a2 + 112) : (a2 + 112);
                    v23 = (v20 & 1) != 0 ? *(v8 + 112) : (v8 + 112);
                    if (!memcmp(v23, v22, v20 >> 1))
                    {
                      v24 = *(v8 + 128);
                      v25 = *(a2 + 128);
                      if (v24 >> 1 == v25 >> 1)
                      {
                        v26 = (v25 & 1) != 0 ? *(a2 + 136) : (a2 + 136);
                        v27 = (v24 & 1) != 0 ? *(v8 + 136) : (v8 + 136);
                        if (!memcmp(v27, v26, v24 >> 1))
                        {
                          v28 = *(v8 + 152);
                          v29 = *(a2 + 152);
                          if (v28 >> 1 == v29 >> 1)
                          {
                            v30 = (v29 & 1) != 0 ? *(a2 + 160) : (a2 + 160);
                            v31 = (v28 & 1) != 0 ? *(v8 + 160) : (v8 + 160);
                            if (!memcmp(v31, v30, v28 >> 1) && (std::operator==[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits,std::allocator<webrtc::VideoEncoder::ResolutionBitrateLimits>>(*(v8 + 176), *(v8 + 184), *(a2 + 176), *(a2 + 184)) & 1) != 0)
                            {
                              return *(v8 + 200) == *(a2 + 200);
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

  if (v2)
  {
    if (*result != *a2 || *(result + 4) != *(a2 + 4))
    {
      return 0;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t std::operator==[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits,std::allocator<webrtc::VideoEncoder::ResolutionBitrateLimits>>(char *a1, char *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 - a1 == a4 - a3)
  {
    if (a1 == a2)
    {
      return 1;
    }

    while (*a1 == *a3 && *(a1 + 1) == a3[1] && *(a1 + 2) == a3[2] && *(a1 + 3) == a3[3])
    {
      a1 += 16;
      a3 += 4;
      if (a1 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void webrtc::VideoEncoder::EncoderInfo::GetEncoderBitrateLimitsForResolution(webrtc::VideoEncoder::EncoderInfo *this@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *(this + 22);
  v4 = *(this + 23);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(0, 0, 0, 1, a3);
  *a2 = 0;
  a2[16] = 0;
}

uint64_t webrtc::VideoEncoder::RateControlParameters::RateControlParameters(uint64_t this)
{
  *this = &unk_2882A1B60;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  *(this + 176) = 0;
  *(this + 180) = 0;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 192) = 0;
  *(this + 196) = 0;
  *(this + 200) = 0;
  *(this + 204) = 0;
  *(this + 208) = 0;
  *(this + 212) = 0;
  *(this + 216) = 0;
  *(this + 220) = 0;
  *(this + 224) = 0;
  *(this + 228) = 0;
  *(this + 232) = 0;
  *(this + 236) = 0;
  *(this + 240) = 0;
  *(this + 244) = 0;
  *(this + 248) = 0;
  *(this + 252) = 0;
  *(this + 256) = 0;
  *(this + 260) = 0;
  *(this + 264) = 0;
  *(this + 268) = 0;
  *(this + 272) = 0;
  *(this + 276) = 0;
  *(this + 280) = 0;
  *(this + 284) = 0;
  *(this + 288) = 0;
  *(this + 292) = 0;
  *(this + 296) = 0;
  *(this + 300) = 0;
  *(this + 304) = 0;
  *(this + 308) = 0;
  *(this + 312) = 0;
  *(this + 316) = 0;
  *(this + 320) = 0;
  *(this + 324) = 0;
  *(this + 328) = 0;
  *(this + 332) = 0;
  *(this + 336) = 0;
  *(this + 340) = 0;
  *(this + 344) = 0;
  *(this + 352) = 0;
  return this;
}

uint64_t webrtc::VideoEncoder::RateControlParameters::RateControlParameters(uint64_t this, const webrtc::VideoBitrateAllocation *a2, double a3)
{
  *this = &unk_2882A1B60;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  v3 = *a2;
  v4 = *(a2 + 2);
  *(this + 192) = *(a2 + 1);
  *(this + 208) = v4;
  *(this + 176) = v3;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  *(this + 256) = *(a2 + 5);
  *(this + 272) = v7;
  *(this + 224) = v5;
  *(this + 240) = v6;
  v8 = *(a2 + 7);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  *(this + 336) = *(a2 + 20);
  *(this + 304) = v9;
  *(this + 320) = v10;
  *(this + 288) = v8;
  *(this + 344) = a3;
  *(this + 352) = *a2;
  return this;
}

uint64_t webrtc::VideoEncoder::InitEncode(webrtc::VideoEncoder *this, const webrtc::VideoCodec *a2, int a3, uint64_t a4)
{
  v5[0] = 0;
  v6 = a3;
  v7 = a4;
  v8 = 0;
  v9 = 0;
  return (*(*this + 32))(this, a2, v5);
}

unint64_t *absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::InitFrom(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (v2)
    {
      operator new();
    }

    result = memcpy(result + 1, a2 + 1, v2 >> 1);
    *v4 = *a2;
  }

  return result;
}

void *absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::InitFrom(unint64_t *a1, unint64_t *a2)
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

void webrtc::VideoEncoderConfig::~VideoEncoderConfig(webrtc::VideoEncoderConfig *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if ((*(this + 56) & 1) == 0)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 32, *(this + 5));
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 8));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 32, *(this + 5));
  if (*(this + 31) < 0)
  {
    goto LABEL_13;
  }
}

unint64_t webrtc::VideoEncoderConfig::ToString@<X0>(webrtc::VideoEncoderConfig *this@<X0>, char *a2@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v63 = v67;
  v64 = xmmword_273B8ED80;
  strcpy(v67, "{codec_type: ");
  v3 = *this;
  if (v3 >= 6)
  {
    webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
  }

  v5 = (&off_279E95970)[v3];
  v6 = strlen(v5);
  if (v6 >= 0x3F2)
  {
    v7 = 1010;
  }

  else
  {
    v7 = v6;
  }

  memcpy(&v67[13], v5, v7);
  v8 = v7 + 13;
  v67[v7 + 13] = 0;
  if (1010 - v7 >= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = 1010 - v7;
  }

  memcpy(&v67[v8], ", content_type: ", v9);
  v10 = v9 + v8;
  v67[v9 + v8] = 0;
  v11 = *(this + 34);
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_16;
    }

    v12 = "kScreenshare";
    v13 = 12;
  }

  else
  {
    v12 = "kRealtimeVideo";
    v13 = 14;
  }

  if (v13 >= 1023 - v10)
  {
    v14 = 1023 - v10;
  }

  else
  {
    v14 = v13;
  }

  memcpy(&v67[v10], v12, v14);
  v10 += v14;
  v67[v10] = 0;
LABEL_16:
  __dst = a2;
  if (1023 - v10 >= 0x16)
  {
    v15 = 22;
  }

  else
  {
    v15 = 1023 - v10;
  }

  memcpy(&v67[v10], ", frame_drop_enabled: ", v15);
  *(&v64 + 1) = v10 + v15;
  v67[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%d", *(this + 140));
  if (v64 + ~*(&v64 + 1) >= 0x1DuLL)
  {
    v16 = 29;
  }

  else
  {
    v16 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", encoder_specific_settings: ", v16);
  *(&v64 + 1) += v16;
  v63[*(&v64 + 1)] = 0;
  v17 = *(this + 18);
  v18 = v17 == 0;
  if (v17)
  {
    v19 = "(ptr)";
  }

  else
  {
    v19 = "NULL";
  }

  v20 = 4;
  if (!v18)
  {
    v20 = 5;
  }

  if (v20 >= v64 + ~*(&v64 + 1))
  {
    v21 = v64 + ~*(&v64 + 1);
  }

  else
  {
    v21 = v20;
  }

  memcpy(&v63[*(&v64 + 1)], v19, v21);
  *(&v64 + 1) += v21;
  v63[*(&v64 + 1)] = 0;
  if (v64 + ~*(&v64 + 1) >= 0x1CuLL)
  {
    v22 = 28;
  }

  else
  {
    v22 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", min_transmit_bitrate_bps: ", v22);
  *(&v64 + 1) += v22;
  v63[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%d", *(this + 38));
  if (v64 + ~*(&v64 + 1) >= 0x15uLL)
  {
    v23 = 21;
  }

  else
  {
    v23 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", number_of_streams: ", v23);
  *(&v64 + 1) += v23;
  v63[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%lu", *(this + 24));
  if (v64 + ~*(&v64 + 1) >= 0x1AuLL)
  {
    v24 = 26;
  }

  else
  {
    v24 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", legacy_conference_mode: ", v24);
  *(&v64 + 1) += v24;
  v63[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%d", *(this + 200));
  if (v64 + ~*(&v64 + 1) >= 0x1EuLL)
  {
    v25 = 30;
  }

  else
  {
    v25 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", is_quality_scaling_allowed: ", v25);
  *(&v64 + 1) += v25;
  v63[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%d", *(this + 201));
  if (v64 + ~*(&v64 + 1) >= 0xAuLL)
  {
    v26 = 10;
  }

  else
  {
    v26 = v64 + ~*(&v64 + 1);
  }

  memcpy(&v63[*(&v64 + 1)], ", max_qp: ", v26);
  *(&v64 + 1) += v26;
  v63[*(&v64 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v63, "%d", *(this + 51));
  if (*(this + 22) != *(this + 21))
  {
    v27 = 0;
    v28 = 48;
    do
    {
      v29 = v64 + ~*(&v64 + 1) >= 0x13uLL ? 19 : v64 + ~*(&v64 + 1);
      memcpy(&v63[*(&v64 + 1)], ", simulcast_layers[", v29);
      *(&v64 + 1) += v29;
      v63[*(&v64 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v63, "%lu", v27);
      v30 = v64 + ~*(&v64 + 1) >= 3uLL ? 3 : v64 + ~*(&v64 + 1);
      memcpy(&v63[*(&v64 + 1)], "]: ", v30);
      *(&v64 + 1) += v30;
      v63[*(&v64 + 1)] = 0;
      v31 = *(this + 21);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 22) - v31) >> 5) <= v27)
      {
        goto LABEL_121;
      }

      v32 = v31 + v28;
      __s = v68;
      strcpy(v68, "{width: ");
      v66 = xmmword_273BA6190;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lu", *(v31 + v28 - 48));
      if (v66 + ~*(&v66 + 1) >= 0xAuLL)
      {
        v33 = 10;
      }

      else
      {
        v33 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", height: ", v33);
      *(&v66 + 1) += v33;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lu", *(v32 - 40));
      if (v66 + ~*(&v66 + 1) >= 0x11uLL)
      {
        v34 = 17;
      }

      else
      {
        v34 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", max_framerate: ", v34);
      *(&v66 + 1) += v34;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v32 - 32));
      if (v66 + ~*(&v66 + 1) >= 0x12uLL)
      {
        v35 = 18;
      }

      else
      {
        v35 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", min_bitrate_bps:", v35);
      *(&v66 + 1) += v35;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v32 - 28));
      if (v66 + ~*(&v66 + 1) >= 0x15uLL)
      {
        v36 = 21;
      }

      else
      {
        v36 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", target_bitrate_bps:", v36);
      *(&v66 + 1) += v36;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v32 - 24));
      if (v66 + ~*(&v66 + 1) >= 0x12uLL)
      {
        v37 = 18;
      }

      else
      {
        v37 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", max_bitrate_bps:", v37);
      *(&v66 + 1) += v37;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v32 - 20));
      if (v66 + ~*(&v66 + 1) >= 0xAuLL)
      {
        v38 = 10;
      }

      else
      {
        v38 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", max_qp: ", v38);
      *(&v66 + 1) += v38;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v32 - 8));
      if (v66 + ~*(&v66 + 1) >= 0x17uLL)
      {
        v39 = 23;
      }

      else
      {
        v39 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", num_temporal_layers: ", v39);
      *(&v66 + 1) += v39;
      __s[*(&v66 + 1)] = 0;
      if (*(v32 + 8) == 1)
      {
        v40 = *(v31 + v28);
      }

      else
      {
        v40 = 1;
      }

      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lu", v40);
      if (v66 + ~*(&v66 + 1) >= 0x14uLL)
      {
        v41 = 20;
      }

      else
      {
        v41 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", bitrate_priority: ", v41);
      *(&v66 + 1) += v41;
      __s[*(&v66 + 1)] = 0;
      v42 = 0.0;
      if (*(v32 + 24) == 1)
      {
        v42 = *(v31 + v28 + 16);
      }

      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v42);
      if (v66 + ~*(&v66 + 1) >= 0xAuLL)
      {
        v43 = 10;
      }

      else
      {
        v43 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", active: ", v43);
      *(&v66 + 1) += v43;
      __s[*(&v66 + 1)] = 0;
      v44 = v31 + v28;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v44 + 34));
      if (v66 + ~*(&v66 + 1) >= 0x11uLL)
      {
        v45 = 17;
      }

      else
      {
        v45 = v66 + ~*(&v66 + 1);
      }

      memcpy(&__s[*(&v66 + 1)], ", scale_down_by: ", v45);
      *(&v66 + 1) += v45;
      __s[*(&v66 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(v44 - 16));
      LOBYTE(__src[0]) = 125;
      v46 = v66;
      v47 = *(&v66 + 1) + 1;
      memcpy(&__s[*(&v66 + 1)], __src, v66 != *(&v66 + 1) + 1);
      v48 = *(&v66 + 1);
      if (v46 != v47)
      {
        v48 = *(&v66 + 1) + 1;
      }

      *(&v66 + 1) = v48;
      __s[v48] = 0;
      if (!__s)
      {
        goto LABEL_121;
      }

      v49 = strlen(__s);
      if (v49 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_122;
      }

      if (v49 > 0x16)
      {
        operator new();
      }

      v62 = v49;
      v50 = __src + v49;
      if (__src <= __s && v50 > __s)
      {
        goto LABEL_121;
      }

      if (v49)
      {
        memmove(__src, __s, v49);
      }

      *v50 = 0;
      v51 = v62;
      if ((v62 & 0x80u) == 0)
      {
        v52 = __src;
      }

      else
      {
        v51 = __src[1];
        v52 = __src[0];
      }

      if (v51 >= v64 + ~*(&v64 + 1))
      {
        v53 = v64 + ~*(&v64 + 1);
      }

      else
      {
        v53 = v51;
      }

      memcpy(&v63[*(&v64 + 1)], v52, v53);
      *(&v64 + 1) += v53;
      v63[*(&v64 + 1)] = 0;
      if (v62 < 0)
      {
        operator delete(__src[0]);
      }

      ++v27;
      v28 += 96;
    }

    while (v27 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 22) - *(this + 21)) >> 5));
  }

  v68[0] = 125;
  v54 = v64;
  v55 = *(&v64 + 1) + 1;
  memcpy(&v63[*(&v64 + 1)], v68, v64 != *(&v64 + 1) + 1);
  v56 = *(&v64 + 1);
  if (v54 != v55)
  {
    v56 = *(&v64 + 1) + 1;
  }

  *(&v64 + 1) = v56;
  v63[v56] = 0;
  v57 = v63;
  if (!v63)
  {
    goto LABEL_121;
  }

  result = strlen(v63);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_122;
  }

  if (result > 0x16)
  {
    operator new();
  }

  __dst[23] = result;
  v59 = &__dst[result];
  if (__dst <= v57 && v59 > v57)
  {
LABEL_121:
    __break(1u);
LABEL_122:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(__dst, v57, result);
  }

  *v59 = 0;
  return result;
}

webrtc::VideoEncoderConfig *webrtc::VideoEncoderConfig::VideoEncoderConfig(webrtc::VideoEncoderConfig *this, const webrtc::VideoEncoderConfig *a2)
{
  *this = *a2;
  webrtc::SdpVideoFormat::SdpVideoFormat((this + 8), (a2 + 8));
  v4 = *(a2 + 13);
  *(this + 13) = v4;
  if (v4)
  {
    (**v4)(v4);
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v6 = *(a2 + 14);
  v5 = *(a2 + 15);
  if (v5 != v6)
  {
    if (0x8E38E38E38E38E39 * ((v5 - v6) >> 2) < 0x71C71C71C71C71DLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = *(a2 + 34);
  *(this + 140) = *(a2 + 140);
  *(this + 34) = v7;
  v8 = *(a2 + 18);
  *(this + 18) = v8;
  if (v8)
  {
    (**v8)(v8);
  }

  *(this + 152) = *(a2 + 152);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  v9 = *(a2 + 21);
  v10 = *(a2 + 22);
  if (v10 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

__n128 webrtc::VideoEncoderConfig::Vp9EncoderSpecificSettings::FillVideoCodecVp9(webrtc::VideoEncoderConfig::Vp9EncoderSpecificSettings *this, VideoCodecVP9 *a2)
{
  result = *(this + 8);
  *a2 = result;
  return result;
}

void webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::~VideoEncoderSoftwareFallbackWrapper(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this)
{
  v2 = *(this + 106);
  *(this + 106) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  v2 = *(this + 106);
  *(this + 106) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::SetFecControllerOverride(uint64_t a1)
{
  (*(**(a1 + 840) + 16))(*(a1 + 840));
  v2 = *(**(a1 + 848) + 16);

  return v2();
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::InitEncode(uint64_t a1, webrtc::webrtc_checks_impl *a2, __n128 *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v72[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc";
    v72[1] = 2545;
    v72[2] = &v69;
    v70[0] = "[VESFW] ";
    v70[1] = v72;
    v70[2] = "InitEncode";
    v71 = v70;
    webrtc::VideoCodec::ToString(a2, &__p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, *v71[1]);
    if (v68 < 0)
    {
      operator delete(__p);
    }
  }

  memcpy((a1 + 8), a2, 0x17DuLL);
  v17 = *(a1 + 416);
  v18 = a3[1].n128_u64[0];
  v19 = *a3;
  *(a1 + 392) = *a3;
  *(a1 + 408) = v18;
  if (v17)
  {
    if (*(a1 + 784) == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 1;
    *(a1 + 416) = 1;
    if (*(a1 + 784) == 1)
    {
LABEL_6:
      *(a1 + 784) = 0;
      if (*(a1 + 876) != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_10;
    }
  }

  if (*(a1 + 876) != 1)
  {
    goto LABEL_46;
  }

LABEL_10:
  if (*(a1 + 865) != 1 || *(a1 + 14) * *(a1 + 12) > *(a1 + 872) || *(a1 + 866) == 1 && (*(a1 + 8) != 1 || *(a1 + 40) > 1u))
  {
    if (*(a1 + 864) != 1)
    {
      goto LABEL_46;
    }

    v20 = *(a1 + 380);
    if ((v20 & 0x100) != 0)
    {
      v31 = v20;
      if (v20 >= 0x22u)
      {
LABEL_84:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v13, v14, v15, v16, v31);
      }
    }

    else
    {
      v21 = *(a1 + 8);
      if (v21 == 4)
      {
        v22 = *(a1 + 368);
      }

      else if (v21 == 2 || v21 == 1)
      {
        v22 = *(a1 + 364);
      }

      else
      {
        v22 = 0;
      }
    }

    if (*(a1 + 40) && v22 <= *(a1 + 56))
    {
      v22 = *(a1 + 56);
    }

    if (v22 < 2)
    {
      goto LABEL_46;
    }

    if ((v17 & 1) == 0)
    {
LABEL_83:
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_84;
    }

    if ((*(**(a1 + 840) + 32))(*(a1 + 840), a1 + 8, a1 + 392))
    {
      if (*(a1 + 832) != 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(a1 + 832) = 1;
    }

    (*(**(a1 + 840) + 96))(v72);
    v32 = v73 & 0xFFFFFFFFFFFFFFFELL;
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v72);
    if (v32 != 2)
    {
      goto LABEL_75;
    }

LABEL_39:
    if (*(a1 + 416))
    {
      if (!(*(**(a1 + 848) + 32))(*(a1 + 848), a1 + 8, a1 + 392))
      {
        (*(**(a1 + 848) + 96))(v72);
        v33 = v73 & 0xFFFFFFFFFFFFFFFELL;
        webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v72);
        if (v33 != 2)
        {
          if (*(a1 + 832) == 1)
          {
            (*(**(a1 + 840) + 48))(*(a1 + 840));
          }

          *(a1 + 832) = 3;
          v30 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
          if (v30)
          {
LABEL_75:
            v66 = *(a1 + 832);
            if ((v66 - 2) >= 2)
            {
              if (v66 == 1)
              {
                goto LABEL_81;
              }

              if (v66)
              {
LABEL_78:
                webrtc::webrtc_checks_impl::UnreachableCodeReached(v30);
              }

LABEL_66:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
              }

LABEL_81:
              v42 = *(a1 + 840);
              if (!*(a1 + 856))
              {
LABEL_50:
                if (*(a1 + 784) == 1)
                {
                  (*(*v42 + 64))(v42, a1 + 424);
                  if (*(a1 + 808) != 1)
                  {
                    goto LABEL_52;
                  }
                }

                else if (*(a1 + 808) != 1)
                {
LABEL_52:
                  if (*(a1 + 796) == 1)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_57;
                }

                (*(*v42 + 80))(v42, *(a1 + 800));
                if (*(a1 + 796) == 1)
                {
LABEL_53:
                  (*(*v42 + 72))(v42, *(a1 + 792));
                  if (*(a1 + 828) != 1)
                  {
                    return 0;
                  }

                  goto LABEL_58;
                }

LABEL_57:
                if (*(a1 + 828) != 1)
                {
                  return 0;
                }

LABEL_58:
                (*(*v42 + 88))(v42, a1 + 816);
                return 0;
              }

LABEL_49:
              (*(*v42 + 40))(v42);
              goto LABEL_50;
            }

            goto LABEL_79;
          }

          goto LABEL_74;
        }

        (*(**(a1 + 848) + 48))(*(a1 + 848));
      }

      if (*(a1 + 832) != 1)
      {
        goto LABEL_46;
      }

      v30 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      if (v30)
      {
        goto LABEL_75;
      }

LABEL_74:
      webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
      goto LABEL_75;
    }

    goto LABEL_83;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
  }

  if (v30)
  {
    goto LABEL_75;
  }

LABEL_46:
  result = (*(**(a1 + 840) + 32))(*(a1 + 840), a2, a3, v19);
  if (result == -15)
  {
    return result;
  }

  if (!result)
  {
    *(a1 + 832) = 1;
    v42 = *(a1 + 840);
    if (!*(a1 + 856))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v43 = result;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
  }

  if (v30)
  {
    v51 = *(a1 + 832);
    if ((v51 - 2) >= 2)
    {
      if (v51 == 1)
      {
        goto LABEL_81;
      }

      if (v51)
      {
        goto LABEL_78;
      }

      goto LABEL_66;
    }

LABEL_79:
    v42 = *(a1 + 848);
    if (!*(a1 + 856))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
  }

  *(a1 + 832) = 0;
  return v43;
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::RegisterEncodeCompleteCallback(uint64_t a1, uint64_t a2)
{
  *(a1 + 856) = a2;
  v2 = *(a1 + 832);
  if ((v2 - 2) < 2)
  {
    v11 = 848;
  }

  else if (v2 == 1)
  {
    v11 = 840;
  }

  else
  {
    if (v2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
    }

    v3 = a1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
    }

    v11 = 840;
    a1 = v3;
  }

  v12 = *(**(a1 + v11) + 40);

  return v12();
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::Release(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this)
{
  v1 = *(this + 208);
  if ((v1 - 2) < 2)
  {
    v2 = 848;
LABEL_6:
    result = (*(**(this + v2) + 48))(*(this + v2));
    *(this + 208) = 0;
    return result;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    v2 = 840;
    goto LABEL_6;
  }

  return *(this + 208);
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::Encode(uint64_t a1, const webrtc::VideoFrame *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 832);
  if ((v4 - 2) >= 2)
  {
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 == 1)
    {
      result = (*(**(a1 + 840) + 56))(*(a1 + 840));
      if (result != -13)
      {
        return result;
      }

      if (!a1)
      {
        return 4294967283;
      }

      v8 = *(a1 + 832);
      if ((v8 - 2) < 2)
      {
        v16 = a2;
        v17 = *(a1 + 848);
        if (!*(a1 + 856))
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (v8 == 1)
      {
        v16 = a2;
        v17 = *(a1 + 840);
        if (*(a1 + 856))
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (!v8)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          v16 = a2;
          v17 = *(a1 + 840);
          if (!*(a1 + 856))
          {
            goto LABEL_20;
          }

LABEL_19:
          (*(*v17 + 40))(v17);
          v16 = a2;
          goto LABEL_20;
        }

        webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
        v16 = a2;
        v17 = *(a1 + 840);
        if (*(a1 + 856))
        {
          goto LABEL_19;
        }

LABEL_20:
        if (*(a1 + 784) == 1)
        {
          (*(*v17 + 64))(v17, a1 + 424);
          v16 = a2;
          if (*(a1 + 808) != 1)
          {
            goto LABEL_22;
          }
        }

        else if (*(a1 + 808) != 1)
        {
LABEL_22:
          if (*(a1 + 796) == 1)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }

        (*(*v17 + 80))(v17, *(a1 + 800));
        v16 = a2;
        if (*(a1 + 796) == 1)
        {
LABEL_23:
          (*(*v17 + 72))(v17, *(a1 + 792));
          v16 = a2;
          if (*(a1 + 828) != 1)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }

LABEL_29:
        if (*(a1 + 828) != 1)
        {
LABEL_24:
          v19 = *(v16 + 1);
          if (v19)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_30:
        (*(*v17 + 88))(v17, a1 + 816);
        v19 = *(a2 + 1);
        if (v19)
        {
LABEL_25:
          (**v19)(v19);
          if ((*(*v19 + 32))(v19))
          {
LABEL_26:
            (*(*v19 + 8))(v19);
LABEL_34:
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
            }

            v28 = *(a2 + 1);
            if (v28)
            {
              (**v28)(*(a2 + 1));
            }

            (*(*v28 + 56))(&v60, v28);
            (*(*v28 + 8))(v28);
            v29 = v60;
            if (v60)
            {
              v30 = *(a1 + 12);
              v31 = *(a1 + 14);
              v32 = (*(*v60 + 40))(v60);
              v33 = (*(*v29 + 48))(v29);
              (*(*v29 + 72))(&v59, v29, 0, 0, v32, v33, v30, v31);
              if (v59)
              {
                webrtc::VideoFrame::VideoFrame(&v61, a2);
                webrtc::VideoFrame::set_video_frame_buffer(&v61, &v59, v34, v35, v36, v37, v38, v39);
                v40 = v62;
                if (v62)
                {
                  v41 = (*(*v62 + 40))(v62);
                  v40 = v62;
                  if (v62)
                  {
                    v40 = (*(*v62 + 48))(v62);
                  }
                }

                else
                {
                  v41 = 0;
                }

                v64 = 0;
                v65 = v41;
                v66 = v40;
                if ((v67 & 1) == 0)
                {
                  v67 = 1;
                }

                v56 = (*(**(a1 + 848) + 56))(*(a1 + 848), &v61, a3);
                webrtc::VideoFrame::~VideoFrame(&v61);
                result = v56;
              }

              else
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                {
                  webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
                }

                result = 4294967280;
              }

              if (v59)
              {
                v57 = result;
                (*(*v59 + 8))(v59);
                result = v57;
              }
            }

            else
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
              }

              result = 4294967280;
            }

            if (v60)
            {
              v58 = result;
              (*(*v60 + 8))(v60);
              return v58;
            }

            return result;
          }

LABEL_32:
          (*(**(a1 + 848) + 96))(&v61);
          v20 = v63;
          webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v61);
          (*(*v19 + 8))(v19);
          if (v20 == 1)
          {
            return (*(**(a1 + 848) + 56))(*(a1 + 848), a2, a3);
          }

          goto LABEL_34;
        }

LABEL_31:
        if ((*(*v19 + 32))(v19))
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  v18 = *(**(a1 + 848) + 56);

  return v18();
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::SetRates(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this, const webrtc::VideoEncoder::RateControlParameters *a2)
{
  if (*(this + 784) != 1)
  {
    *(this + 53) = &unk_2882A1B60;
    v3 = memcpy(this + 432, a2 + 8, 0x160uLL);
    *(this + 784) = 1;
    v4 = *(this + 208);
    if ((v4 - 2) >= 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 848;
    goto LABEL_10;
  }

  v3 = memcpy(this + 432, a2 + 8, 0x160uLL);
  v4 = *(this + 208);
  if ((v4 - 2) < 2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v4 != 1)
  {
    if (v4)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v3);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
    }
  }

  v12 = 840;
LABEL_10:
  v13 = *(**(this + v12) + 64);

  return v13();
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::OnPacketLossRateUpdate(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this, __n128 a2)
{
  *(this + 198) = a2.n128_u32[0];
  *(this + 796) = 1;
  v2 = *(this + 208);
  if ((v2 - 2) < 2)
  {
    v12 = 848;
  }

  else if (v2 == 1)
  {
    v12 = 840;
  }

  else
  {
    if (v2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    v3 = this;
    v4 = a2.n128_u32[0];
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
    }

    v12 = 840;
    a2.n128_u32[0] = v4;
    this = v3;
  }

  v13 = *(**(this + v12) + 72);

  return v13(a2);
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::OnRttUpdate(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this, uint64_t a2)
{
  *(this + 100) = a2;
  *(this + 808) = 1;
  v2 = *(this + 208);
  if ((v2 - 2) < 2)
  {
    v11 = 848;
  }

  else if (v2 == 1)
  {
    v11 = 840;
  }

  else
  {
    if (v2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    v3 = this;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
    }

    v11 = 840;
    this = v3;
  }

  v12 = *(**(this + v11) + 80);

  return v12();
}

uint64_t webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::OnLossNotification(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 828);
  v3 = *(a2 + 8);
  *(a1 + 816) = *a2;
  *(a1 + 824) = v3;
  if ((v2 & 1) == 0)
  {
    *(a1 + 828) = 1;
  }

  v4 = *(a1 + 832);
  if ((v4 - 2) < 2)
  {
    v13 = 848;
  }

  else if (v4 == 1)
  {
    v13 = 840;
  }

  else
  {
    if (v4)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
    }

    v5 = a1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
    }

    v13 = 840;
    a1 = v5;
  }

  v14 = *(**(a1 + v13) + 88);

  return v14();
}

void webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::GetEncoderInfo(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  (*(**(this + 106) + 96))(v16);
  (*(**(this + 105) + 96))(v13);
  if ((*(this + 208) & 0xFFFFFFFE) == 2)
  {
    v4 = v16;
  }

  else
  {
    v4 = v13;
  }

  webrtc::VideoEncoder::EncoderInfo::EncoderInfo(a2, v4);
  if (v17)
  {
    v5 = v14 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    if (v17 >= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = v17;
    }

    if (v17 <= v14)
    {
      v8 = v14;
    }

    else
    {
      v8 = v17;
    }

    v9 = v8 % v7;
    if (v9)
    {
      v10 = v9 >> __clz(__rbit32(v9));
      v11 = v7;
      do
      {
        v12 = v11 >> __clz(__rbit32(v11));
        v11 = v12 - v10;
        if (v10 > v12)
        {
          v11 = v10 - v12;
        }

        if (v10 >= v12)
        {
          v10 = v12;
        }
      }

      while (v11);
      v7 = v10 << __clz(__rbit32(v9 | v7));
    }

    v6 = v17 / v7 * v14;
    if ((v6 & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }
  }

  *(a2 + 16) = v6;
  *(a2 + 20) = (v18 | v15) & 1;
  if (*(this + 876) == 1 && *(this + 866) == 1)
  {
    *(a2 + 12) = *(this + 217);
  }

  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v13);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v16);
}

double webrtc::anonymous namespace::VideoEncoderSoftwareFallbackWrapper::InitFallbackEncoder(webrtc::_anonymous_namespace_::VideoEncoderSoftwareFallbackWrapper *this, int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\t\t\t\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
  }

  if (*(this + 416))
  {
    if ((*(**(this + 106) + 32))(*(this + 106), this + 8, this + 392))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t\t\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video_codecs/video_encoder_software_fallback_wrapper.cc");
      }

      (*(**(this + 106) + 48))(*(this + 106));
    }

    else
    {
      if (*(this + 208) == 1)
      {
        (*(**(this + 105) + 48))(*(this + 105));
      }

      if (a2)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *(this + 208) = v19;
    }
  }

  else
  {
    v20 = std::__throw_bad_optional_access[abi:sn200100]();
    return webrtc::VideoFrame::UpdateRect::Union(v20, v21);
  }

  return result;
}

double webrtc::VideoFrame::UpdateRect::Union(int32x2_t *a1, int32x2_t *a2)
{
  *&v2 = a2[1];
  if (v2)
  {
    if (a1[1])
    {
      v3 = vadd_s32(*a1, a1[1]);
      v4 = vadd_s32(*a2, *&v2);
      v5 = HIDWORD(*a1);
      v6 = *a1;
      if (a2->i32[0] < v6)
      {
        v6 = *a2;
      }

      v7 = vmax_s32(v3, v4);
      a1->i32[0] = v6;
      if (a2->i32[1] < v5)
      {
        v5 = a2->i32[1];
      }

      a1->i32[1] = v5;
      *&v2 = vsub_s32(v7, __PAIR64__(v5, v6));
      a1[1] = v2;
    }

    else
    {
      v2 = *a2->i8;
      *a1->i8 = *a2->i8;
    }
  }

  return *&v2;
}

int *webrtc::VideoFrame::UpdateRect::Intersect(int *result, int *a2)
{
  if (!*(a2 + 1) || !*(result + 1))
  {
    goto LABEL_17;
  }

  v2 = result[1];
  v3 = *a2 + a2[2];
  if (v3 >= *result + result[2])
  {
    v3 = *result + result[2];
  }

  v4 = a2[1] + a2[3];
  if (v4 >= v2 + result[3])
  {
    v4 = v2 + result[3];
  }

  if (*result <= *a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *result;
  }

  *result = v5;
  v6 = a2[1];
  if (v2 > v6)
  {
    v6 = v2;
  }

  v7 = v3 - v5;
  result[1] = v6;
  result[2] = v7;
  v8 = v4 - v6;
  result[3] = v8;
  if (v7 < 1 || v8 <= 0)
  {
LABEL_17:
    *result = 0;
    *(result + 1) = 0;
  }

  return result;
}

uint64_t webrtc::VideoFrame::Builder::Builder(uint64_t this)
{
  *this = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void webrtc::VideoFrame::Builder::~Builder(webrtc::VideoFrame::Builder *this)
{
  v2 = *(this + 23);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 96);
          if (v6)
          {
            *(v4 - 88) = v6;
            operator delete(v6);
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40E72D6CFBLL);
  }

  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

uint64_t (***webrtc::VideoFrame::Builder::build@<X0>(webrtc::VideoFrame::Builder *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>))(void)
{
  result = *(this + 1);
  if (!result)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame.cc", 173, "video_frame_buffer_ != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a2, a3, a4, a5, v19);
    return webrtc::VideoFrame::Builder::set_video_frame_buffer(v17, v18);
  }

  v9 = *this;
  v10 = *(this + 2);
  v11 = *(this + 14);
  v12 = *(this + 8);
  v13 = *(this + 18);
  v14 = *(this + 23);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 1u, memory_order_relaxed);
    result = *(this + 1);
    *a6 = v9;
    *(a6 + 8) = result;
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a6 = v9;
    *(a6 + 8) = result;
  }

  result = (**result)(result);
LABEL_7:
  *(a6 + 76) = 0;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = v10;
  *(a6 + 40) = *(this + 24);
  *(a6 + 56) = *(this + 40);
  *(a6 + 72) = v13;
  *(a6 + 144) = 0;
  if (*(this + 144) == 1)
  {
    v15 = *(this + 92);
    v16 = *(this + 124);
    *(a6 + 108) = *(this + 108);
    *(a6 + 124) = v16;
    *(a6 + 140) = *(this + 140);
    *(a6 + 76) = *(this + 76);
    *(a6 + 92) = v15;
    *(a6 + 144) = 1;
  }

  *(a6 + 148) = *(this + 148);
  *(a6 + 156) = *(this + 39);
  *(a6 + 160) = *(this + 10);
  *(a6 + 176) = *(this + 44);
  *(a6 + 184) = v14;
  *(a6 + 192) = 0;
  *(a6 + 208) = 0;
  return result;
}

uint64_t webrtc::VideoFrame::Builder::set_video_frame_buffer(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    (**v3)(*a2);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = v3;
  return a1;
}

__n128 webrtc::VideoFrame::Builder::set_color_space(webrtc::VideoFrame::Builder *this, const webrtc::ColorSpace *a2)
{
  if (a2)
  {
    v2 = *a2;
    v5 = *(a2 + 1);
    v6 = *(a2 + 17);
    result = *(a2 + 33);
    v7 = result;
    v8 = *(a2 + 49);
    v4 = *(this + 144);
    if (v4 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    v4 = *(this + 144);
    if (!*(this + 144))
    {
LABEL_3:
      if (v4)
      {
        *(this + 76) = v2;
        *(this + 77) = v5;
        *(this + 93) = v6;
        result = v7;
        *(this + 109) = v7;
        *(this + 125) = v8;
      }

      return result;
    }
  }

  if (v4)
  {
    *(this + 144) = 0;
  }

  else
  {
    *(this + 76) = v2;
    *(this + 77) = v5;
    *(this + 93) = v6;
    result = v7;
    *(this + 109) = v7;
    *(this + 125) = v8;
    *(this + 144) = 1;
  }

  return result;
}

uint64_t webrtc::VideoFrame::VideoFrame(uint64_t result, void (****a2)(void), int a3, uint64_t a4)
{
  v6 = *a2;
  *(result + 8) = *a2;
  if (v6)
  {
    v7 = result;
    (**v6)(v6);
    result = v7;
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a3;
  *(result + 76) = 0;
  *(result + 144) = 0;
  *(result + 148) = 0;
  *(result + 152) = 0;
  *(result + 156) = 0;
  *(result + 160) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 208) = 0;
  return result;
}

void webrtc::VideoFrame::~VideoFrame(webrtc::VideoFrame *this)
{
  v2 = *(this + 23);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 96);
          if (v6)
          {
            *(v4 - 88) = v6;
            operator delete(v6);
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40E72D6CFBLL);
  }

  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

__n128 webrtc::VideoFrame::VideoFrame(webrtc::VideoFrame *this, const webrtc::VideoFrame *a2)
{
  *this = *a2;
  v3 = *(a2 + 1);
  *(this + 1) = v3;
  if (v3)
  {
    v4 = this;
    (**v3)(v3);
    this = v4;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 60);
  *(this + 76) = 0;
  *(this + 60) = v8;
  *(this + 3) = v7;
  *(this + 2) = v6;
  *(this + 1) = v5;
  *(this + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(this + 76) = *(a2 + 76);
    v9 = *(a2 + 92);
    v10 = *(a2 + 108);
    v11 = *(a2 + 124);
    *(this + 140) = *(a2 + 140);
    *(this + 108) = v10;
    *(this + 124) = v11;
    *(this + 92) = v9;
    *(this + 144) = 1;
  }

  v12 = *(a2 + 148);
  *(this + 161) = *(a2 + 161);
  *(this + 148) = v12;
  v13 = *(a2 + 23);
  *(this + 23) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
  }

  result = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 12) = result;
  return result;
}

uint64_t webrtc::VideoFrame::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    (**v4)(*(a2 + 8));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 8) = v4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 16) = v6;
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      *(a1 + 76) = *(a2 + 76);
      v9 = *(a2 + 92);
      v10 = *(a2 + 108);
      v11 = *(a2 + 124);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 124) = v11;
      *(a1 + 108) = v10;
      *(a1 + 92) = v9;
      v12 = *(a2 + 148);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 148) = v12;
      v13 = *(a2 + 184);
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!*(a1 + 144))
    {
      *(a1 + 76) = *(a2 + 76);
      v20 = *(a2 + 92);
      v21 = *(a2 + 108);
      v22 = *(a2 + 124);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 124) = v22;
      *(a1 + 108) = v21;
      *(a1 + 92) = v20;
      *(a1 + 144) = 1;
      v23 = *(a2 + 148);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 148) = v23;
      v13 = *(a2 + 184);
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    *(a1 + 144) = 0;
  }

  v14 = *(a2 + 148);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 148) = v14;
  v13 = *(a2 + 184);
  if (v13)
  {
LABEL_12:
    atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
  }

LABEL_13:
  v15 = *(a1 + 184);
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    v16 = *(v15 + 8);
    if (v16)
    {
      v17 = *(v15 + 16);
      v18 = *(v15 + 8);
      if (v17 != v16)
      {
        do
        {
          v19 = *(v17 - 96);
          if (v19)
          {
            *(v17 - 88) = v19;
            operator delete(v19);
          }

          v17 -= 104;
        }

        while (v17 != v16);
        v18 = *(v15 + 8);
      }

      *(v15 + 16) = v16;
      operator delete(v18);
    }

    MEMORY[0x2743DA540](v15, 0x1020C40E72D6CFBLL);
  }

  *(a1 + 184) = v13;
  v24 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v24;
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 16) = v6;
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      *(a1 + 76) = *(a2 + 76);
      v9 = *(a2 + 92);
      v10 = *(a2 + 108);
      v11 = *(a2 + 124);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 124) = v11;
      *(a1 + 108) = v10;
      *(a1 + 92) = v9;
    }
  }

  else if (*(a1 + 144))
  {
    *(a1 + 144) = 0;
  }

  else
  {
    *(a1 + 76) = *(a2 + 76);
    v12 = *(a2 + 92);
    v13 = *(a2 + 108);
    v14 = *(a2 + 124);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 124) = v14;
    *(a1 + 108) = v13;
    *(a1 + 92) = v12;
    *(a1 + 144) = 1;
  }

  v15 = *(a2 + 148);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 148) = v15;
  v16 = *(a2 + 184);
  *(a2 + 184) = 0;
  v17 = *(a1 + 184);
  *(a1 + 184) = v16;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      v19 = *(v17 + 16);
      v20 = *(v17 + 8);
      if (v19 != v18)
      {
        do
        {
          v21 = *(v19 - 96);
          if (v21)
          {
            *(v19 - 88) = v21;
            operator delete(v21);
          }

          v19 -= 104;
        }

        while (v19 != v18);
        v20 = *(v17 + 8);
      }

      *(v17 + 16) = v18;
      operator delete(v20);
    }

    MEMORY[0x2743DA540](v17, 0x1020C40E72D6CFBLL);
  }

  v22 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v22;
  return a1;
}

uint64_t webrtc::VideoFrame::width(webrtc::VideoFrame *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t webrtc::VideoFrame::height(webrtc::VideoFrame *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t (***webrtc::VideoFrame::video_frame_buffer@<X0>(webrtc::VideoFrame *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 1);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::VideoFrame::set_video_frame_buffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2)
  {
    (**v8)(*a2);
    result = *(a1 + 8);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame.cc", 345, "buffer", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v18);
    return webrtc::VideoFrameBuffer::CropAndScale(v11, v12, v13, v14, v15, v16, v17);
  }

  return result;
}

webrtc::VideoFrameBuffer *webrtc::VideoFrameBuffer::GetI010(webrtc::VideoFrameBuffer *this)
{
  if ((*(*this + 32))(this) == 5)
  {
    return this;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 61, "type() == Type::kI010", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v7);
  return webrtc::VideoFrameBuffer::GetMappedFrameBuffer();
}

void webrtc::VideoFrameBuffer::GetMappedFrameBuffer(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(*a1 + 32))(a1))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 82, "type() == Type::kNative", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, v8);
    webrtc::VideoFrameBuffer::storage_representation(v7);
  }

  else
  {
    *a2 = 0;
  }
}

void webrtc::VideoFrameBuffer::storage_representation(unint64_t a1@<X8>)
{
  *(a1 + 23) = 1;
  if (a1 <= "?" && a1 + 1 > "?")
  {
    __break(1u);
  }

  else
  {
    *a1 = 63;
  }
}

const char *webrtc::VideoFrameBufferTypeToString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "kNative";
  }

  else
  {
    return off_279E95B00[a1 - 1];
  }
}

uint64_t (***webrtc::I420BufferInterface::ToI420@<X0>(uint64_t (***this)(void)@<X0>, void *a2@<X8>))(void)
{
  *a2 = this;
  if (this)
  {
    return (**this)(this);
  }

  return this;
}

uint64_t webrtc::CheckValidDimensions(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 255, "width > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, this);
    goto LABEL_8;
  }

  if (a2 <= 0)
  {
LABEL_8:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 256, "height > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a2);
    goto LABEL_9;
  }

  if (a3 < this)
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 257, "stride_y >= width", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_10;
  }

  if (a4 <= 0)
  {
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 258, "stride_u > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a4);
    goto LABEL_11;
  }

  if (a5 <= 0)
  {
LABEL_11:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 259, "stride_v > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a5);
    return webrtc::WrapI420Buffer();
  }

  return this;
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::I420BufferInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::I420BufferInterface>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A1CB0;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A1CB0;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::anonymous namespace::I422BufferBase>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::anonymous namespace::I422BufferBase>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A1E18;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A1E18;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

void webrtc::anonymous namespace::I422BufferBase::ToI420(webrtc::_anonymous_namespace_::I422BufferBase *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::anonymous namespace::I444BufferBase>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuvBuffer<webrtc::anonymous namespace::I444BufferBase>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A1F80;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A1F80;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

void webrtc::anonymous namespace::I444BufferBase::ToI420(webrtc::_anonymous_namespace_::I444BufferBase *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I010BufferBase>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I010BufferBase>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A20E8;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A20E8;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

void webrtc::anonymous namespace::I010BufferBase::ToI420(webrtc::_anonymous_namespace_::I010BufferBase *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I210BufferBase>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I210BufferBase>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A2250;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A2250;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

void webrtc::anonymous namespace::I210BufferBase::ToI420(webrtc::_anonymous_namespace_::I210BufferBase *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I410BufferBase>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 22, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::WrappedYuv16BBuffer<webrtc::anonymous namespace::I410BufferBase>>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882A23B8;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
  }
}

{
  *a1 = &unk_2882A23B8;
  v2 = a1[10];
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = a1[10];
    if (v3 == a1 + 7)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x2743DA540);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
}

void webrtc::anonymous namespace::I410BufferBase::ToI420(webrtc::_anonymous_namespace_::I410BufferBase *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

uint64_t webrtc::VideoFrameBufferPool::VideoFrameBufferPool(uint64_t this, char a2, uint64_t a3)
{
  *this = 0;
  *(this + 16) = this + 16;
  *(this + 24) = this + 16;
  *(this + 32) = 0;
  *(this + 40) = a2;
  *(this + 48) = a3;
  return this;
}

void webrtc::VideoFrameBufferPool::~VideoFrameBufferPool(webrtc::VideoFrameBufferPool *this)
{
  if (*(this + 4))
  {
    v1 = this + 16;
    v2 = *(this + 3);
    v3 = *(*(this + 2) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 4) = 0;
    if (v2 != this + 16)
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != v1);
    }
  }
}

void webrtc::VideoFrameBufferPool::Release(webrtc::VideoFrameBufferPool *this)
{
  if (*(this + 4))
  {
    v1 = this + 16;
    v2 = *(this + 3);
    v3 = *(*(this + 2) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 4) = 0;
    if (v2 != this + 16)
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != v1);
    }
  }
}

uint64_t webrtc::VideoFrameBufferPool::Resize(webrtc::VideoFrameBufferPool *this, unint64_t a2)
{
  v4 = this + 16;
  v5 = *(this + 3);
  if (v5 != (this + 16))
  {
    v6 = 0;
    do
    {
      v5 = v5[1];
    }

    while (v5 != v4);
    if (v6 > a2)
    {
      return 0;
    }

    v5 = *(this + 3);
  }

  *(this + 6) = a2;
  v8 = *(this + 4) - a2;
  if (v5 != v4 && v8 != 0)
  {
    do
    {
      v12 = v5[1];
      if (HasOneRef)
      {
        v13 = *v5;
        *(v13 + 8) = v12;
        *v12 = v13;
        --*(this + 4);
        v14 = v5[2];
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        operator delete(v5);
        --v8;
      }

      v10 = v12 == v4 || v8 == 0;
      v5 = v12;
    }

    while (!v10);
  }

  return 1;
}

uint64_t webrtc::anonymous namespace::HasOneRef(void *a1)
{
  v2 = (*(**a1 + 32))(*a1);
  if (v2 <= 4)
  {
    switch(v2)
    {
      case 1:
        v3 = *(**a1 + 160);

        return v3();
      case 3:
        v3 = *(**a1 + 160);

        return v3();
      case 4:
        v3 = *(**a1 + 160);

        return v3();
    }

    return 0;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      v3 = *(**a1 + 160);

      return v3();
    }

    if (v2 == 8)
    {
      v3 = *(**a1 + 144);

      return v3();
    }

    return 0;
  }

  if (v2 == 5)
  {
    v3 = *(**a1 + 160);
  }

  else
  {
    v3 = *(**a1 + 160);
  }

  return v3();
}

void webrtc::VideoFrameBufferPool::CreateI420Buffer(webrtc::VideoFrameBufferPool *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  webrtc::VideoFrameBufferPool::GetExistingBuffer(this, a2, a3, 1, &v8);
  v6 = v8;
  if (v8)
  {
    *a4 = v8;
    (**v6)(v6);
    v7 = (*v6)[1];

    (v7)(v6);
  }

  else
  {
    if (*(this + 4) < *(this + 6))
    {
      operator new();
    }

    *a4 = 0;
  }
}

void webrtc::VideoFrameBufferPool::GetExistingBuffer(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void (****a5)(void)@<X8>)
{
  v7 = a1 + 2;
  v8 = a1[3];
  if (v8 != a1 + 2)
  {
    while (1)
    {
      while ((*(*v8[2] + 40))(v8[2]) == a2 && (*(*v8[2] + 48))(v8[2]) == a3 && (*(*v8[2] + 32))(v8[2]) == a4)
      {
        v8 = v8[1];
        if (v8 == v7)
        {
          goto LABEL_12;
        }
      }

      if (v8 == v7)
      {
        break;
      }

      v16 = *v8;
      v17 = v8[1];
      *(v16 + 8) = v17;
      *v17 = v16;
      --a1[4];
      v18 = v8[2];
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      operator delete(v8);
      v8 = v17;
      if (v17 == v7)
      {
LABEL_12:
        v8 = a1[3];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/video_frame_buffer_pool.cc", 341, "buffer->type() == type", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v22);
    webrtc::VideoFrameMetadata::GetWidth(v21);
    return;
  }

  while (1)
  {
LABEL_15:
    if (v8 == v7)
    {
      *a5 = 0;
      return;
    }

    {
      break;
    }

    v8 = v8[1];
  }

  if ((*(*v8[2] + 32))(v8[2]) != a4)
  {
    goto LABEL_24;
  }

  v19 = v8[2];
  *a5 = v19;
  if (v19)
  {
    v20 = **v19;

    v20();
  }
}

uint64_t webrtc::VideoFrameMetadata::SetFrameId(uint64_t result, uint64_t a2, char a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

char *webrtc::VideoFrameMetadata::GetFrameDependencies(webrtc::VideoFrameMetadata *this)
{
  v3 = *(this + 6);
  v1 = this + 48;
  v2 = v3;
  v4 = *(v1 - 1);
  if ((v4 & 1) == 0)
  {
    v2 = v1;
  }

  if (v4 >= 2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::VideoFrameMetadata::GetCsrcs@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 1800);
  v3 = *(this + 1808);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

__n128 webrtc::VideoFrameMetadata::SetCsrcs(void *a1, __n128 *a2)
{
  v4 = (a1 + 225);
  v5 = a1[225];
  if (v5)
  {
    a1[226] = v5;
    operator delete(v5);
    v4->n128_u64[0] = 0;
    v4->n128_u64[1] = 0;
    v4[1].n128_u64[0] = 0;
  }

  result = *a2;
  *v4 = *a2;
  a1[227] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}