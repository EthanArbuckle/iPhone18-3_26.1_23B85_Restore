unint64_t webrtc::AudioFrameOperations::DownmixChannels(unint64_t this, uint64_t a2, webrtc::AudioFrame *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 40);
  if (this == 1 && v8 >= 2)
  {
    if ((*(a2 + 15432) & 1) == 0)
    {
      v9 = *(a2 + 24);
      v10 = v8 * v9;
      if (v10 >= 1)
      {
        v11 = (a2 + 72);
        v12 = a2 + 72 + 2 * v10;
        if (v8 < 2)
        {
          v35 = a2 + 2 * v9 * v8 + 72;
          v36 = (a2 + 74);
          if (v35 <= a2 + 74)
          {
            v35 = a2 + 74;
          }

          v37 = v35 - a2 - 73;
          if (v37 <= 1)
          {
            goto LABEL_44;
          }

          v38 = (v37 >> 1) + 1;
          v11 += v38 & 0xFFFFFFFFFFFFFFFELL;
          v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v40 = *v36;
            *(v36 - 1) /= v8;
            *v36 = v40 / v8;
            v36 += 2;
            v39 -= 2;
          }

          while (v39);
          if (v38 != (v38 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_44:
            do
            {
              *v11++ /= v8;
            }

            while (v11 < v12);
          }
        }

        else
        {
          v13 = v8;
          v14 = (a2 + 72);
          do
          {
            v15 = &v11[v13];
            v17 = v11 + 2;
            v16 = *v11;
            v18 = v11 + 1;
            if (&v11[v13] > v11 + 2)
            {
              v17 = &v11[v13];
            }

            v19 = v17 - v11 - 3;
            if (v19 < 0x1E)
            {
              goto LABEL_45;
            }

            v20 = (v19 >> 1) + 1;
            this = v20 & 0xFFFFFFFFFFFFFFF0;
            v18 += v20 & 0xFFFFFFFFFFFFFFF0;
            v21 = 0uLL;
            v22 = *v11;
            v23 = (v11 + 9);
            v24 = v20 & 0xFFFFFFFFFFFFFFF0;
            v25 = 0uLL;
            v26 = 0uLL;
            do
            {
              v27 = v23[-1];
              v21 = vaddw_high_s16(v21, v27);
              v22 = vaddw_s16(v22, *v27.i8);
              v26 = vaddw_high_s16(v26, *v23);
              v25 = vaddw_s16(v25, *v23->i8);
              v23 += 2;
              v24 -= 16;
            }

            while (v24);
            v16 = vaddvq_s32(vaddq_s32(vaddq_s32(v25, v22), vaddq_s32(v26, v21)));
            if (v20 != this)
            {
LABEL_45:
              do
              {
                v28 = *v18++;
                v16 += v28;
              }

              while (v18 < v15);
            }

            *v14++ = v16 / v8;
            v11 = v18;
          }

          while (v18 < v12);
        }
      }
    }

    *(a2 + 40) = 1;
  }

  else if (this == 2 && v8 == 4)
  {
    if (*(a2 + 15432))
    {
      *(a2 + 40) = 2;
    }

    else
    {
      v29 = *(a2 + 24);
      if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = a2 + 72;
      }

      else
      {
        v30 = 0;
      }

      v31 = 2 * v29;
      if ((2 * v29) >= 0x1E01)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v31);
        return webrtc::ProcessAudioFrame();
      }

      else
      {
        *(a2 + 40) = 2;
        if (v31)
        {
          v32 = a2 + 72;
        }

        else
        {
          v32 = 0;
        }

        if (v29)
        {
          v33 = (v32 + 2);
          v34 = (v30 + 4);
          do
          {
            *(v33 - 1) = (*(v34 - 1) + *(v34 - 2)) >> 1;
            *v33 = (v34[1] + *v34) >> 1;
            v33 += 2;
            v34 += 4;
            --v29;
          }

          while (v29);
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::ProcessAudioFrame(uint64_t a1, uint64_t a2)
{
  v2 = 4294967291;
  if (a1 && a2)
  {
    v4 = *(a2 + 40);
    v16 = *(a2 + 32);
    v17 = v4;
    v18 = v16 / 100;
    v13 = v16;
    v14 = v4;
    v15 = v18;
    if (*(a2 + 15432) == 1)
    {
      {
        v11 = a1;
        a1 = v11;
        if (v10)
        {
          operator new[]();
        }
      }

      v5 = webrtc::AudioFrame::zeroed_data(void)::null_data;
      if (*(a2 + 15432))
      {
        v6 = a1;
        v7 = webrtc::AudioFrame::zeroed_data(void)::null_data;
        bzero((a2 + 72), 0x3C01uLL);
        v5 = v7;
        a1 = v6;
      }
    }

    else
    {
      v5 = a2 + 72;
    }

    v8 = a1;
    v2 = (*(*a1 + 128))(a1, v5, &v16, &v13, a2 + 72);
    (*(*v8 + 248))(&v12, v8);
    if (BYTE1(v12) == 1)
    {
      *(a2 + 52) = v12 ^ 1;
    }
  }

  return v2;
}

uint64_t webrtc::ProcessReverseAudioFrame(uint64_t a1, uint64_t a2)
{
  v4 = 4294967291;
  if (!a1 || !a2)
  {
    return v4;
  }

  v5 = *(a2 + 32);
  v4 = 4294967289;
  if (v5 > 31999)
  {
    if (v5 != 48000 && v5 != 32000)
    {
      return v4;
    }
  }

  else if (v5 != 8000 && v5 != 16000)
  {
    return v4;
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    return 4294967287;
  }

  v22 = v2;
  v23 = v3;
  v19 = v5;
  v20 = v9;
  v21 = v5 / 0x64u;
  v16 = v5;
  v17 = v9;
  v18 = v21;
  if (*(a2 + 15432) == 1)
  {
    {
      v14 = a2;
      v15 = a1;
      a2 = v14;
      a1 = v15;
      if (v13)
      {
        operator new[]();
      }
    }

    v10 = webrtc::AudioFrame::zeroed_data(void)::null_data;
    if (*(a2 + 15432))
    {
      v11 = a1;
      v12 = a2;
      bzero((a2 + 72), 0x3C01uLL);
      a2 = v12;
      a1 = v11;
    }
  }

  else
  {
    v10 = a2 + 72;
  }

  return (*(*a1 + 144))(a1, v10, &v19, &v16, a2 + 72);
}

void webrtc::AudioMixerImpl::~AudioMixerImpl(webrtc::AudioMixerImpl *this)
{
  *this = &unk_28828E228;
  if (*(this + 192) == 1)
  {
    v2 = *(this + 49);
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_11;
        }

        v3 = *(this + 16);
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v3 = *(this + 15);
        if (!v3)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      webrtc::metrics::HistogramAdd(v3, *(this + 25) / 100);
      goto LABEL_11;
    }

    if (v2 == 2)
    {
      v3 = *(this + 17);
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = *(this + 18);
      if (v3)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0xC400A2AC0F1);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      *(v5 + 32) = v6;
      operator delete(v6);
    }

    v7 = *v5;
    if (*v5)
    {
      *(v5 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x2743DA540](v5, 0x90C40E792C71BLL);
  }

  v8 = *(this + 10);
  if (v8)
  {
    v9 = *(this + 11);
    v10 = *(this + 10);
    if (v9 != v8)
    {
      do
      {
        v13 = *--v9;
        v12 = v13;
        *v9 = 0;
        if (v13)
        {
          v14 = *(v12 + 72);
          if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            v15 = v12;
            v16 = *(v14 + 8);
            if (v16)
            {
              v17 = *(v14 + 16);
              v11 = *(v14 + 8);
              if (v17 != v16)
              {
                do
                {
                  v18 = *(v17 - 96);
                  if (v18)
                  {
                    *(v17 - 88) = v18;
                    operator delete(v18);
                  }

                  v17 -= 104;
                }

                while (v17 != v16);
                v11 = *(v14 + 8);
              }

              *(v14 + 16) = v16;
              operator delete(v11);
            }

            MEMORY[0x2743DA540](v14, 0x1020C40E72D6CFBLL);
            v12 = v15;
          }

          MEMORY[0x2743DA540](v12, 0x1020C40FA38BBC1);
        }
      }

      while (v9 != v8);
      v10 = *(this + 10);
    }

    *(this + 11) = v8;
    operator delete(v10);
  }

  v19 = *(this + 9);
  *(this + 9) = 0;
  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  pthread_mutex_destroy((this + 8));
}

uint64_t webrtc::AudioMixerImpl::Mix(webrtc::AudioMixerImpl *this, unint64_t a2, webrtc::AudioFrame *a3)
{
  pthread_mutex_lock((this + 8));
  v7 = *(this + 10);
  v6 = *(this + 11);
  if (v7 == v6)
  {
    v11 = 0;
  }

  else
  {
    v8 = *(*(this + 13) + 24);
    v9 = *(this + 10);
    do
    {
      v10 = *v9++;
      *v8++ = (*(**v10 + 16))();
    }

    while (v9 != v6);
    v11 = *(*(this + 13) + 24);
  }

  v12 = (v6 - v7) >> 3;
  v14 = (***(this + 9))(*(this + 9), v11, v12);
  v20 = *(this + 10);
  v21 = *(this + 11);
  if (v20 == v21)
  {
LABEL_17:
    v33 = 0;
    v32 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      result = (****v20)(**v20, v14, (*v20 + 1));
      if (result)
      {
        if (result == 2 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v7 = v7 & 0xFFFFFFFF00000000 | 0x44A;
          webrtc::webrtc_logging_impl::Log("\r\t\t\t", v26, v27, v28, v29, v30, v31, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_mixer/audio_mixer_impl.cc");
        }
      }

      else
      {
        v23 = v22;
        v24 = **(this + 13);
        if (v22 >= ((*(*(this + 13) + 8) - v24) >> 3))
        {
          __break(1u);
          return result;
        }

        ++v22;
        *(v24 + 8 * v23) = *v20 + 1;
      }

      ++v20;
    }

    while (v20 != v21);
    if (!v22)
    {
      goto LABEL_17;
    }

    v32 = **(this + 13);
    v33 = v22;
  }

  webrtc::FrameCombiner::Combine(this + 112, v32, v33, a2, v14, v12, a3, v13, v15, v16, v17, v18, v19);

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::AudioMixerImpl::RemoveSource(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (v4 == v5)
  {
    goto LABEL_5;
  }

  do
  {
    if (**v4 == a2)
    {
      goto LABEL_5;
    }

    ++v4;
  }

  while (v4 != v5);
  do
  {
    __break(1u);
LABEL_5:
    ;
  }

  while (v5 == v4);
  v6 = v4 + 1;
  if (v4 + 1 != v5)
  {
    do
    {
      v9 = *v6;
      *v6 = 0;
      v8 = *v4;
      *v4 = v9;
      if (v8)
      {
        v10 = v8[9];
        if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          v11 = v8;
          v12 = *(v10 + 8);
          if (v12)
          {
            v13 = *(v10 + 16);
            v7 = *(v10 + 8);
            if (v13 != v12)
            {
              do
              {
                v14 = *(v13 - 96);
                if (v14)
                {
                  *(v13 - 88) = v14;
                  operator delete(v14);
                }

                v13 -= 104;
              }

              while (v13 != v12);
              v7 = *(v10 + 8);
            }

            *(v10 + 16) = v12;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v10, 0x1020C40E72D6CFBLL);
          v8 = v11;
        }

        MEMORY[0x2743DA540](v8, 0x1020C40FA38BBC1);
      }

      ++v6;
      ++v4;
    }

    while (v6 != v5);
    v5 = *(a1 + 88);
  }

  while (v5 != v4)
  {
    v17 = *--v5;
    v16 = v17;
    *v5 = 0;
    if (v17)
    {
      v18 = *(v16 + 72);
      if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        v19 = v16;
        v20 = *(v18 + 8);
        if (v20)
        {
          v21 = *(v18 + 16);
          v15 = *(v18 + 8);
          if (v21 != v20)
          {
            do
            {
              v22 = *(v21 - 96);
              if (v22)
              {
                *(v21 - 88) = v22;
                operator delete(v22);
              }

              v21 -= 104;
            }

            while (v21 != v20);
            v15 = *(v18 + 8);
          }

          *(v18 + 16) = v20;
          operator delete(v15);
        }

        MEMORY[0x2743DA540](v18, 0x1020C40E72D6CFBLL);
        v16 = v19;
      }

      MEMORY[0x2743DA540](v16, 0x1020C40FA38BBC1);
    }
  }

  *(a1 + 88) = v4;

  return pthread_mutex_unlock((a1 + 8));
}

BOOL webrtc::RefCountedObject<webrtc::AudioMixerImpl>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 4406, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::AudioMixerImpl>::~RefCountedObject(webrtc::AudioMixerImpl *a1)
{
  webrtc::AudioMixerImpl::~AudioMixerImpl(a1);

  JUMPOUT(0x2743DA540);
}

void *webrtc::AudioMultiVector::AudioMultiVector(void *this, unint64_t a2)
{
  *this = &unk_28828E2C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

{
  *this = &unk_28828E2C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::AudioMultiVector::~AudioMultiVector(webrtc::AudioMultiVector *this)
{
  *this = &unk_28828E2C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v5, 0x1010C40FAA616C6);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_28828E2C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
          }

          MEMORY[0x2743DA540](v5, 0x1010C40FAA616C6);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::AudioMultiVector::PushBackInterleaved(void *result, __int16 *__src, unint64_t a3)
{
  if (a3)
  {
    v3 = result[1];
    v4 = result[2];
    if (v4 - v3 != 8)
    {
      operator new[]();
    }

    if (v4 == v3)
    {
      __break(1u);
      JUMPOUT(0x2743DA520);
    }

    v5 = *v3;

    return webrtc::AudioVector::PushBack(v5, __src, a3);
  }

  return result;
}

void *webrtc::AudioMultiVector::PushBack(void *this, const webrtc::AudioMultiVector *a2)
{
  v2 = this[1];
  v3 = this[2];
  if (v3 != v2 && v3 - v2 == *(a2 + 2) - *(a2 + 1))
  {
    v6 = this;
    v7 = 0;
    while (v7 < (v3 - v2) >> 3)
    {
      v8 = *(a2 + 1);
      if (v7 >= (*(a2 + 2) - v8) >> 3)
      {
        break;
      }

      v9 = *(v8 + 8 * v7);
      this = webrtc::AudioVector::PushBack(*(v2 + 8 * v7++), v9, (*(v9 + 1) + *(v9 + 3) - *(v9 + 2)) % *(v9 + 1), 0);
      v2 = v6[1];
      v3 = v6[2];
      if (v7 >= (v3 - v2) >> 3)
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

char *webrtc::AudioMultiVector::ReadInterleavedFromIndex(char *this, unint64_t a2, char *a3, __int16 *__dst)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = v5 - v4;
  if (v5 == v4)
  {
    __break(1u);
    return this;
  }

  v7 = *v4;
  v8 = (*v4)[2];
  v9 = (*v4)[1];
  v10 = (*v4)[3] + v9 - v8;
  v11 = v10 % v9;
  if (v10 % v9 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 % v9;
  }

  if (&a3[v12] <= v11)
  {
    v13 = a3;
  }

  else
  {
    v13 = (v11 - v12);
  }

  if (v6 == 8)
  {
    if (v13)
    {
      if (v11 - v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = (v11 - v12);
      }

      v15 = &v8[v12] % v9;
      v16 = v9 - v15;
      if (v9 - v15 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = (v9 - v15);
      }

      memcpy(__dst, *v7 + 2 * v15, 2 * v17);
      if (v14 > v16)
      {
        memcpy(&__dst[v17], *v7, 2 * (v14 - v17));
      }

      return v13;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v19 = 0;
  this = 0;
  v20 = v6 >> 3;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v4;
    v22 = v20;
    do
    {
      v23 = *v21++;
      v24 = v23[1];
      v25 = &v19[v12 + v23[2]];
      v26 = *v23;
      if (v25 < v24)
      {
        v24 = 0;
      }

      __dst[this++] = *(v26 + 2 * (v25 - v24));
      --v22;
    }

    while (v22);
    ++v19;
  }

  while (v19 != v13);
  return this;
}

void *webrtc::AudioMultiVector::CrossFade(void *this, const webrtc::AudioMultiVector *a2, unint64_t a3)
{
  v4 = this[1];
  v3 = this[2];
  if (v3 != v4 && v3 - v4 == *(a2 + 2) - *(a2 + 1))
  {
    v8 = this;
    v9 = 0;
    while (v9 < (v3 - v4) >> 3)
    {
      v10 = *(a2 + 1);
      if (v9 >= (*(a2 + 2) - v10) >> 3)
      {
        break;
      }

      this = *(v4 + 8 * v9);
      v11 = *(v10 + 8 * v9);
      v12 = this[2];
      v13 = this[1];
      v14 = v13 + this[3] - v12;
      v15 = v14 % v13;
      if (v14 % v13 >= a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = v14 % v13;
      }

      v17 = *(v11 + 2);
      v18 = *(v11 + 1);
      v19 = (v18 + *(v11 + 3) - v17) % v18;
      if (v19 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = (v18 + *(v11 + 3) - v17) % v18;
      }

      if (v20)
      {
        v21 = 0;
        v22 = 0x4000 / (v20 + 1);
        v23 = v15 + v12 - v20;
        v24 = *this;
        v25 = 0x4000 - v22;
        v26 = *v11 + 2 * v17;
        v27 = v22;
        do
        {
          if (v17 + v21 >= v18)
          {
            v28 = v18;
          }

          else
          {
            v28 = 0;
          }

          *(v24 + 2 * ((v23 + v21) % v13)) = (v27 * *(v26 - 2 * v28 + 2 * v21) + v25 * *(v24 + 2 * ((v23 + v21) % v13)) + 0x2000) >> 14;
          ++v21;
          v27 += v22;
          v25 -= v22;
        }

        while (v21 < v20);
      }

      if (v19 > v16)
      {
        this = webrtc::AudioVector::PushBack(this, v11, v19 - v20, v20);
        v4 = v8[1];
        v3 = v8[2];
      }

      if (++v9 >= (v3 - v4) >> 3)
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

void webrtc::AudioNetworkAdaptorImpl::~AudioNetworkAdaptorImpl(webrtc::AudioNetworkAdaptorImpl *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1060C40A44DC76DLL);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1060C40A44DC76DLL);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioNetworkAdaptorImpl::SetUplinkBandwidth(webrtc::AudioNetworkAdaptorImpl *this, int a2)
{
  *(this + 10) = a2;
  v4 = this + 40;
  *(this + 44) = 1;
  v5 = *(this + 3);
  if (v5)
  {
    if (webrtc::g_clock)
    {
      v6 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v6 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v5 + 24))(v5, v4, v6 / 1000000);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10 = a2;
  v11 = 1;
  (*(**(this + 2) + 24))(&v20);
  v7 = v20;
  v8 = v21;
  if (v20 != v21)
  {
    do
    {
      v9 = *v7++;
      (*(*v9 + 16))(v9, &v10);
    }

    while (v7 != v8);
    v7 = v20;
  }

  if (v7)
  {
    v21 = v7;
    operator delete(v7);
  }
}

void webrtc::AudioNetworkAdaptorImpl::SetUplinkPacketLossFraction(webrtc::AudioNetworkAdaptorImpl *this, float a2)
{
  *(this + 12) = a2;
  *(this + 52) = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (webrtc::g_clock)
    {
      v5 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v5 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v4 + 24))(v4, this + 40, v5 / 1000000);
  }

  v9[0] = 0;
  v9[4] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = a2;
  v11 = 1;
  (*(**(this + 2) + 24))(&v18);
  v6 = v18;
  v7 = v19;
  if (v18 != v19)
  {
    do
    {
      v8 = *v6++;
      (*(*v8 + 16))(v8, v9);
    }

    while (v6 != v7);
    v6 = v18;
  }

  if (v6)
  {
    v19 = v6;
    operator delete(v6);
  }
}

void webrtc::AudioNetworkAdaptorImpl::SetRtt(webrtc::AudioNetworkAdaptorImpl *this, int a2)
{
  *(this + 16) = a2;
  *(this + 68) = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (webrtc::g_clock)
    {
      v5 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v5 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v4 + 24))(v4, this + 40, v5 / 1000000);
  }

  v9[0] = 0;
  v9[4] = 0;
  v9[8] = 0;
  v9[12] = 0;
  v9[16] = 0;
  v9[20] = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  v11 = 1;
  (*(**(this + 2) + 24))(&v14);
  v6 = v14;
  v7 = v15;
  if (v14 != v15)
  {
    do
    {
      v8 = *v6++;
      (*(*v8 + 16))(v8, v9);
    }

    while (v6 != v7);
    v6 = v14;
  }

  if (v6)
  {
    v15 = v6;
    operator delete(v6);
  }
}

void webrtc::AudioNetworkAdaptorImpl::SetTargetAudioBitrate(webrtc::AudioNetworkAdaptorImpl *this, int a2)
{
  *(this + 14) = a2;
  *(this + 60) = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (webrtc::g_clock)
    {
      v5 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v5 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v4 + 24))(v4, this + 40, v5 / 1000000);
  }

  v9[0] = 0;
  v9[4] = 0;
  v9[8] = 0;
  v9[12] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = a2;
  v11 = 1;
  (*(**(this + 2) + 24))(&v16);
  v6 = v16;
  v7 = v17;
  if (v16 != v17)
  {
    do
    {
      v8 = *v6++;
      (*(*v8 + 16))(v8, v9);
    }

    while (v6 != v7);
    v6 = v16;
  }

  if (v6)
  {
    v17 = v6;
    operator delete(v6);
  }
}

void webrtc::AudioNetworkAdaptorImpl::SetOverhead(webrtc::AudioNetworkAdaptorImpl *this, uint64_t a2)
{
  *(this + 9) = a2;
  *(this + 80) = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (webrtc::g_clock)
    {
      v5 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v5 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v4 + 24))(v4, this + 40, v5 / 1000000);
  }

  v9[0] = 0;
  v9[4] = 0;
  v9[8] = 0;
  v9[12] = 0;
  v9[16] = 0;
  v9[20] = 0;
  v9[24] = 0;
  v9[28] = 0;
  v10 = a2;
  v11 = 1;
  (*(**(this + 2) + 24))(&v12);
  v6 = v12;
  v7 = v13;
  if (v12 != v13)
  {
    do
    {
      v8 = *v6++;
      (*(*v8 + 16))(v8, v9);
    }

    while (v6 != v7);
    v6 = v12;
  }

  if (v6)
  {
    v13 = v6;
    operator delete(v6);
  }
}

float webrtc::AudioNetworkAdaptorImpl::GetEncoderRuntimeConfig@<S0>(webrtc::AudioNetworkAdaptorImpl *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 24) = 0;
  (*(**(this + 2) + 16))(&v30);
  v4 = v30;
  v5 = v31;
  if (v30 != v31)
  {
    do
    {
      v6 = *v4++;
      (*(*v6 + 24))(v6, a2);
    }

    while (v4 != v5);
    v4 = v30;
  }

  if (v4)
  {
    v31 = v4;
    operator delete(v4);
  }

  if ((*(this + 144) & 1) == 0)
  {
    v20 = *(a2 + 16);
    *(this + 88) = *a2;
    *(this + 104) = v20;
    v21 = *(a2 + 32);
    *(this + 120) = v21;
    *(this + 136) = *(a2 + 48);
    *(this + 144) = 1;
    v22 = *(this + 3);
    if (!v22)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  v7 = *(a2 + 4);
  v8 = *(this + 92);
  if (v7 == 1 && *(this + 92))
  {
    v7 = *a2;
    v8 = *(this + 22);
  }

  if (v7 != v8)
  {
    if (*(this + 156))
    {
      v9 = *(this + 38) + 1;
    }

    else
    {
      v9 = 1;
    }

    *(this + 38) = v9;
    *(this + 156) = 1;
  }

  v10 = *(a2 + 27);
  v11 = *(this + 115);
  if (v10 == 1 && *(this + 115))
  {
    v10 = *(a2 + 26);
    v11 = *(this + 114);
  }

  if (v10 != v11)
  {
    if (*(this + 172))
    {
      v12 = *(this + 42) + 1;
    }

    else
    {
      v12 = 1;
    }

    *(this + 42) = v12;
    *(this + 172) = 1;
  }

  v13 = *(a2 + 25);
  v14 = *(this + 113);
  if (v13 == 1 && *(this + 113))
  {
    v13 = *(a2 + 24);
    v14 = *(this + 112);
  }

  if (v13 != v14)
  {
    if (*(this + 180))
    {
      v15 = *(this + 44) + 1;
    }

    else
    {
      v15 = 1;
    }

    *(this + 44) = v15;
    *(this + 180) = 1;
  }

  if (*(a2 + 12) == 1 && *(this + 100) == 1)
  {
    v16 = *(a2 + 8);
    v17 = *(this + 24);
    if (v16 <= v17)
    {
      if (v16 >= v17)
      {
        goto LABEL_43;
      }

      v18 = 196;
      v19 = 192;
    }

    else
    {
      v18 = 188;
      v19 = 184;
    }

    if (*(this + v18))
    {
      v23 = *(this + v19) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(this + v19) = v23;
    *(this + v18) = 1;
  }

LABEL_43:
  v24 = *(a2 + 40);
  if (v24 == 1 && *(this + 128))
  {
    if (*(a2 + 32) == *(this + 15))
    {
      goto LABEL_52;
    }
  }

  else if (v24 == *(this + 128))
  {
    goto LABEL_52;
  }

  if (*(this + 164))
  {
    v25 = *(this + 40) + 1;
  }

  else
  {
    v25 = 1;
  }

  *(this + 40) = v25;
  *(this + 164) = 1;
LABEL_52:
  if (*(a2 + 20) == 1)
  {
    *(this + 50) = *(a2 + 16);
    *(this + 204) = 1;
  }

  v26 = *(a2 + 16);
  *(this + 88) = *a2;
  *(this + 104) = v26;
  v21 = *(a2 + 32);
  *(this + 120) = v21;
  *(this + 136) = *(a2 + 48);
  v22 = *(this + 3);
  if (v22)
  {
LABEL_55:
    if (webrtc::g_clock)
    {
      v27 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v27 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    (*(*v22 + 16))(v22, a2, v27 / 1000000);
  }

LABEL_61:
  v28 = *(this + 4);
  if (v28)
  {
    *&v21 = webrtc::EventLogWriter::MaybeLogEncoderConfig(v28, a2);
  }

  return *&v21;
}

uint64_t webrtc::AudioNetworkAdaptorImpl::StopDebugDump(webrtc::AudioNetworkAdaptorImpl *this)
{
  result = *(this + 3);
  *(this + 3) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 webrtc::AudioNetworkAdaptorImpl::GetStats@<Q0>(webrtc::AudioNetworkAdaptorImpl *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 168);
  *a2 = *(this + 152);
  *(a2 + 16) = v2;
  result = *(this + 184);
  *(a2 + 32) = result;
  *(a2 + 45) = *(this + 197);
  return result;
}

void webrtc::AudioOptions::SetAll(webrtc::AudioOptions *this, const webrtc::AudioOptions *a2)
{
  if (*(a2 + 1) == 1)
  {
    *this = *a2;
    if (*(a2 + 3) != 1)
    {
LABEL_3:
      if (*(a2 + 5) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if (*(a2 + 3) != 1)
  {
    goto LABEL_3;
  }

  *(this + 1) = *(a2 + 1);
  if (*(a2 + 5) != 1)
  {
LABEL_4:
    if (*(a2 + 7) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(this + 2) = *(a2 + 2);
  if (*(a2 + 7) != 1)
  {
LABEL_5:
    if (*(a2 + 9) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(this + 3) = *(a2 + 3);
  if (*(a2 + 9) != 1)
  {
LABEL_6:
    if (*(a2 + 11) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(this + 4) = *(a2 + 4);
  if (*(a2 + 11) != 1)
  {
LABEL_7:
    if (*(a2 + 16) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(this + 5) = *(a2 + 5);
  if (*(a2 + 16) != 1)
  {
LABEL_8:
    if (*(a2 + 21) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = *(a2 + 3);
  *(this + 16) = *(a2 + 16);
  *(this + 3) = v4;
  if (*(a2 + 21) != 1)
  {
LABEL_9:
    if (*(a2 + 28) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(this + 10) = *(a2 + 10);
  if (*(a2 + 28) != 1)
  {
LABEL_10:
    if (*(a2 + 33) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = *(a2 + 6);
  *(this + 28) = *(a2 + 28);
  *(this + 6) = v5;
  if (*(a2 + 33) != 1)
  {
LABEL_11:
    if (*(a2 + 64) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(this + 16) = *(a2 + 16);
  if (*(a2 + 64) != 1)
  {
LABEL_12:
    if (*(a2 + 73) != 1)
    {
      return;
    }

LABEL_25:
    *(this + 36) = *(a2 + 36);
    return;
  }

LABEL_24:
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 40, a2 + 40);
  if (*(a2 + 73) == 1)
  {
    goto LABEL_25;
  }
}

uint64_t std::operator==[abi:sn200100]<std::string,std::string>(void *a1, _BYTE *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 ^ a2[24] ^ 1;
  if (v2 != 1 || (a2[24] & 1) == 0)
  {
    return v3 & 1;
  }

  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = a2[23];
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v5 == v6)
  {
    if (v4 < 0)
    {
      a1 = *a1;
    }

    if (v7 < 0)
    {
      a2 = *a2;
    }

    v3 = memcmp(a1, a2, v5) == 0;
    return v3 & 1;
  }

  return 0;
}

unint64_t webrtc::AudioOptions::ToString@<X0>(webrtc::AudioOptions *this@<X0>, char *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = v45;
  __s = v45;
  strcpy(v45, "AudioOptions {");
  v44 = xmmword_273B8E920;
  if (*(this + 1) == 1)
  {
    strcpy(&v45[14], "aec: ");
    *(&v44 + 1) = 19;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *this);
    if (v44 + ~*(&v44 + 1) >= 2uLL)
    {
      v5 = 2;
    }

    else
    {
      v5 = v44 + ~*(&v44 + 1);
    }

    memcpy(&__s[*(&v44 + 1)], ", ", v5);
    *(&v44 + 1) += v5;
    __s[*(&v44 + 1)] = 0;
    v6 = *(&v44 + 1);
    v7 = v44;
    v4 = __s;
    if (*(this + 3) != 1)
    {
LABEL_6:
      if (*(this + 5) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v7 = 1024;
    v6 = 14;
    if (*(this + 3) != 1)
    {
      goto LABEL_6;
    }
  }

  if ((v7 + ~v6) >= 0x1B)
  {
    v8 = 27;
  }

  else
  {
    v8 = v7 + ~v6;
  }

  memcpy(&v4[v6], "ios_force_software_aec_HACK", v8);
  *(&v44 + 1) += v8;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v9 = 2;
  }

  else
  {
    v9 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v9);
  *(&v44 + 1) += v9;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 3) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 2));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v10 = 2;
  }

  else
  {
    v10 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v10);
  *(&v44 + 1) += v10;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 5) != 1)
  {
LABEL_7:
    if (*(this + 7) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_28:
  if ((v7 + ~v6) >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v7 + ~v6;
  }

  memcpy(&v4[v6], "agc", v11);
  *(&v44 + 1) += v11;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v12 = 2;
  }

  else
  {
    v12 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v12);
  *(&v44 + 1) += v12;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 5) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 4));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v13 = 2;
  }

  else
  {
    v13 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v13);
  *(&v44 + 1) += v13;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 7) != 1)
  {
LABEL_8:
    if (*(this + 9) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_39:
  if ((v7 + ~v6) >= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v7 + ~v6;
  }

  memcpy(&v4[v6], "ns", v14);
  *(&v44 + 1) += v14;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v15 = 2;
  }

  else
  {
    v15 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v15);
  *(&v44 + 1) += v15;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 7) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 6));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v16 = 2;
  }

  else
  {
    v16 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v16);
  *(&v44 + 1) += v16;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 9) != 1)
  {
LABEL_9:
    if (*(this + 11) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_50:
  if ((v7 + ~v6) >= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v7 + ~v6;
  }

  memcpy(&v4[v6], "hf", v17);
  *(&v44 + 1) += v17;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v18 = 2;
  }

  else
  {
    v18 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v18);
  *(&v44 + 1) += v18;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 9) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 8));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v19 = 2;
  }

  else
  {
    v19 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v19);
  *(&v44 + 1) += v19;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 11) != 1)
  {
LABEL_10:
    if (*(this + 16) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_61:
  if ((v7 + ~v6) >= 4)
  {
    v20 = 4;
  }

  else
  {
    v20 = v7 + ~v6;
  }

  memcpy(&v4[v6], "swap", v20);
  *(&v44 + 1) += v20;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v21 = 2;
  }

  else
  {
    v21 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v21);
  *(&v44 + 1) += v21;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 11) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 10));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v22 = 2;
  }

  else
  {
    v22 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v22);
  *(&v44 + 1) += v22;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 16) != 1)
  {
LABEL_11:
    if (*(this + 21) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_83;
  }

LABEL_72:
  if ((v7 + ~v6) >= 0x1F)
  {
    v23 = 31;
  }

  else
  {
    v23 = v7 + ~v6;
  }

  memcpy(&v4[v6], "audio_jitter_buffer_max_packets", v23);
  *(&v44 + 1) += v23;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v24 = 2;
  }

  else
  {
    v24 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v24);
  *(&v44 + 1) += v24;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 3));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v25 = 2;
  }

  else
  {
    v25 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v25);
  *(&v44 + 1) += v25;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 21) != 1)
  {
LABEL_12:
    if (*(this + 28) != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_94;
  }

LABEL_83:
  if ((v7 + ~v6) >= 0x23)
  {
    v26 = 35;
  }

  else
  {
    v26 = v7 + ~v6;
  }

  memcpy(&v4[v6], "audio_jitter_buffer_fast_accelerate", v26);
  *(&v44 + 1) += v26;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v27 = 2;
  }

  else
  {
    v27 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v27);
  *(&v44 + 1) += v27;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 21) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 20));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v28 = 2;
  }

  else
  {
    v28 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v28);
  *(&v44 + 1) += v28;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 28) != 1)
  {
LABEL_13:
    if (*(this + 33) != 1)
    {
      goto LABEL_14;
    }

LABEL_105:
    if ((v7 + ~v6) >= 0x15)
    {
      v32 = 21;
    }

    else
    {
      v32 = v7 + ~v6;
    }

    memcpy(&v4[v6], "audio_network_adaptor", v32);
    *(&v44 + 1) += v32;
    __s[*(&v44 + 1)] = 0;
    if (v44 + ~*(&v44 + 1) >= 2uLL)
    {
      v33 = 2;
    }

    else
    {
      v33 = v44 + ~*(&v44 + 1);
    }

    memcpy(&__s[*(&v44 + 1)], ": ", v33);
    *(&v44 + 1) += v33;
    __s[*(&v44 + 1)] = 0;
    if ((*(this + 33) & 1) == 0)
    {
      goto LABEL_139;
    }

    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 32));
    if (v44 + ~*(&v44 + 1) >= 2uLL)
    {
      v34 = 2;
    }

    else
    {
      v34 = v44 + ~*(&v44 + 1);
    }

    memcpy(&__s[*(&v44 + 1)], ", ", v34);
    *(&v44 + 1) += v34;
    __s[*(&v44 + 1)] = 0;
    v6 = *(&v44 + 1);
    v7 = v44;
    v4 = __s;
    if (*(this + 73) != 1)
    {
      goto LABEL_127;
    }

    goto LABEL_116;
  }

LABEL_94:
  if ((v7 + ~v6) >= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = v7 + ~v6;
  }

  memcpy(&v4[v6], "audio_jitter_buffer_min_delay_ms", v29);
  *(&v44 + 1) += v29;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v30 = 2;
  }

  else
  {
    v30 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v30);
  *(&v44 + 1) += v30;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 6));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v31 = 2;
  }

  else
  {
    v31 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v31);
  *(&v44 + 1) += v31;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
  if (*(this + 33) == 1)
  {
    goto LABEL_105;
  }

LABEL_14:
  if (*(this + 73) != 1)
  {
    goto LABEL_127;
  }

LABEL_116:
  if ((v7 + ~v6) >= 0x16)
  {
    v35 = 22;
  }

  else
  {
    v35 = v7 + ~v6;
  }

  memcpy(&v4[v6], "init_recording_on_send", v35);
  *(&v44 + 1) += v35;
  __s[*(&v44 + 1)] = 0;
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v36 = 2;
  }

  else
  {
    v36 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ": ", v36);
  *(&v44 + 1) += v36;
  __s[*(&v44 + 1)] = 0;
  if ((*(this + 73) & 1) == 0)
  {
    goto LABEL_139;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 72));
  if (v44 + ~*(&v44 + 1) >= 2uLL)
  {
    v37 = 2;
  }

  else
  {
    v37 = v44 + ~*(&v44 + 1);
  }

  memcpy(&__s[*(&v44 + 1)], ", ", v37);
  *(&v44 + 1) += v37;
  __s[*(&v44 + 1)] = 0;
  v6 = *(&v44 + 1);
  v7 = v44;
  v4 = __s;
LABEL_127:
  v38 = v6 + 1;
  memcpy(&v4[v6], "}", v7 != v6 + 1);
  v39 = *(&v44 + 1);
  if (v7 != v38)
  {
    v39 = *(&v44 + 1) + 1;
  }

  *(&v44 + 1) = v39;
  __s[v39] = 0;
  v40 = __s;
  if (!__s)
  {
    goto LABEL_139;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_140;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v42 = &a2[result];
  if (a2 <= v40 && v42 > v40)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v40, result);
  }

  *v42 = 0;
  return result;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(uint64_t a1, const std::string::value_type *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        v6 = *(a2 + 1);
        if (a2[23] >= 0)
        {
          v7 = *(a2 + 23);
        }

        else
        {
          a2 = *a2;
          v7 = v6;
        }

        std::string::__assign_no_alias<false>(a1, a2, v7);
      }

      else if (a2[23] < 0)
      {
        v8 = *(a2 + 1);
        v9 = *a2;

        std::string::__assign_no_alias<true>(a1, v9, v8);
      }

      else
      {
        v2 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v2;
      }
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  else if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 1;
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
    *(a1 + 24) = 1;
  }
}

unint64_t webrtc::AudioProcessing::Config::ToString@<X0>(webrtc::AudioProcessing::Config *this@<X0>, char *a2@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  __s = v69;
  strcpy(v69, "AudioProcessing::Config{ pipeline: { maximum_internal_processing_rate: ");
  v68 = xmmword_273B8E930;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *this);
  if (v68 + ~*(&v68 + 1) >= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", multi_channel_render: ", v4);
  *(&v68 + 1) += v4;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 4));
  if (v68 + ~*(&v68 + 1) >= 0x19uLL)
  {
    v5 = 25;
  }

  else
  {
    v5 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", multi_channel_capture: ", v5);
  *(&v68 + 1) += v5;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 5));
  if (v68 + ~*(&v68 + 1) >= 0x1EuLL)
  {
    v6 = 30;
  }

  else
  {
    v6 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, pre_amplifier: { enabled: ", v6);
  *(&v68 + 1) += v6;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 12));
  if (v68 + ~*(&v68 + 1) >= 0x15uLL)
  {
    v7 = 21;
  }

  else
  {
    v7 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", fixed_gain_factor: ", v7);
  *(&v68 + 1) += v7;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 4));
  if (v68 + ~*(&v68 + 1) >= 0x28uLL)
  {
    v8 = 40;
  }

  else
  {
    v8 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " },capture_level_adjustment: { enabled: ", v8);
  *(&v68 + 1) += v8;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 20));
  if (v68 + ~*(&v68 + 1) >= 0x13uLL)
  {
    v9 = 19;
  }

  else
  {
    v9 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", pre_gain_factor: ", v9);
  *(&v68 + 1) += v9;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 6));
  if (v68 + ~*(&v68 + 1) >= 0x14uLL)
  {
    v10 = 20;
  }

  else
  {
    v10 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", post_gain_factor: ", v10);
  *(&v68 + 1) += v10;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 7));
  if (v68 + ~*(&v68 + 1) >= 0x28uLL)
  {
    v11 = 40;
  }

  else
  {
    v11 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", analog_mic_gain_emulation: { enabled: ", v11);
  *(&v68 + 1) += v11;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 32));
  if (v68 + ~*(&v68 + 1) >= 0x11uLL)
  {
    v12 = 17;
  }

  else
  {
    v12 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", initial_level: ", v12);
  *(&v68 + 1) += v12;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 9));
  if (v68 + ~*(&v68 + 1) >= 0x22uLL)
  {
    v13 = 34;
  }

  else
  {
    v13 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }}, high_pass_filter: { enabled: ", v13);
  *(&v68 + 1) += v13;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 40));
  if (v68 + ~*(&v68 + 1) >= 0x1FuLL)
  {
    v14 = 31;
  }

  else
  {
    v14 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, echo_canceller: { enabled: ", v14);
  *(&v68 + 1) += v14;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 42));
  if (v68 + ~*(&v68 + 1) >= 0xFuLL)
  {
    v15 = 15;
  }

  else
  {
    v15 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", mobile_mode: ", v15);
  *(&v68 + 1) += v15;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 43));
  if (v68 + ~*(&v68 + 1) >= 0x1FuLL)
  {
    v16 = 31;
  }

  else
  {
    v16 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", enforce_high_pass_filtering: ", v16);
  *(&v68 + 1) += v16;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 45));
  if (v68 + ~*(&v68 + 1) >= 0x22uLL)
  {
    v17 = 34;
  }

  else
  {
    v17 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, noise_suppression: { enabled: ", v17);
  *(&v68 + 1) += v17;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 48));
  if (v68 + ~*(&v68 + 1) >= 9uLL)
  {
    v18 = 9;
  }

  else
  {
    v18 = v68 + ~*(&v68 + 1);
  }

  v19 = memcpy(&__s[*(&v68 + 1)], ", level: ", v18);
  *(&v68 + 1) += v18;
  __s[*(&v68 + 1)] = 0;
  v20 = *(this + 13);
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      if (v20 != 3)
      {
        goto LABEL_192;
      }

      v66 = 8;
      if (&__src <= "VeryHigh" && v65 > "VeryHigh")
      {
        goto LABEL_190;
      }

      v21 = 0x6867694879726556;
      goto LABEL_57;
    }

    v66 = 4;
    if (&__src <= "High" && &__src + 4 > "High")
    {
      goto LABEL_190;
    }

    LODWORD(__src) = 1751607624;
    v22 = 4;
  }

  else
  {
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_192;
      }

      v66 = 8;
      if (&__src <= "Moderate" && v65 > "Moderate")
      {
        goto LABEL_190;
      }

      v21 = 0x6574617265646F4DLL;
LABEL_57:
      __src = v21;
      v22 = 8;
      goto LABEL_64;
    }

    v66 = 3;
    if (&__src <= "Low" && &__src + 3 > "Low")
    {
      goto LABEL_190;
    }

    qmemcpy(&__src, "Low", 3);
    v22 = 3;
  }

LABEL_64:
  v65[v22 - 8] = 0;
  if (v22 >= v68 + ~*(&v68 + 1))
  {
    v23 = v68 + ~*(&v68 + 1);
  }

  else
  {
    v23 = v22;
  }

  memcpy(&__s[*(&v68 + 1)], &__src, v23);
  *(&v68 + 1) += v23;
  __s[*(&v68 + 1)] = 0;
  if (v68 + ~*(&v68 + 1) >= 0x26uLL)
  {
    v24 = 38;
  }

  else
  {
    v24 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, transient_suppression: { enabled: ", v24);
  *(&v68 + 1) += v24;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 60));
  if (v68 + ~*(&v68 + 1) >= 0x21uLL)
  {
    v25 = 33;
  }

  else
  {
    v25 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, gain_controller1: { enabled: ", v25);
  *(&v68 + 1) += v25;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 64));
  if (v68 + ~*(&v68 + 1) >= 8uLL)
  {
    v26 = 8;
  }

  else
  {
    v26 = v68 + ~*(&v68 + 1);
  }

  v19 = memcpy(&__s[*(&v68 + 1)], ", mode: ", v26);
  *(&v68 + 1) += v26;
  __s[*(&v68 + 1)] = 0;
  v27 = *(this + 17);
  if (v27 == 2)
  {
    v63 = 12;
    if (__p <= "FixedDigital" && &__p[12] > "FixedDigital")
    {
      goto LABEL_190;
    }

    qmemcpy(__p, "FixedDigital", 12);
    v28 = 12;
    goto LABEL_88;
  }

  if (v27 == 1)
  {
    v63 = 15;
    if (__p <= "AdaptiveDigital" && &v62 > "AdaptiveDigital")
    {
      goto LABEL_190;
    }

    qmemcpy(__p, "AdaptiveDigital", sizeof(__p));
    v28 = 15;
    goto LABEL_88;
  }

  if (v27)
  {
LABEL_192:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v19);
  }

  v63 = 14;
  if (__p <= "AdaptiveAnalog" && &__p[14] > "AdaptiveAnalog")
  {
    goto LABEL_190;
  }

  qmemcpy(__p, "AdaptiveAnalog", 14);
  v28 = 14;
LABEL_88:
  __p[v28] = 0;
  if (v28 >= v68 + ~*(&v68 + 1))
  {
    v29 = v68 + ~*(&v68 + 1);
  }

  else
  {
    v29 = v28;
  }

  memcpy(&__s[*(&v68 + 1)], __p, v29);
  *(&v68 + 1) += v29;
  __s[*(&v68 + 1)] = 0;
  if (v68 + ~*(&v68 + 1) >= 0x15uLL)
  {
    v30 = 21;
  }

  else
  {
    v30 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", target_level_dbfs: ", v30);
  *(&v68 + 1) += v30;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 18));
  if (v68 + ~*(&v68 + 1) >= 0x17uLL)
  {
    v31 = 23;
  }

  else
  {
    v31 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", compression_gain_db: ", v31);
  *(&v68 + 1) += v31;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 19));
  if (v68 + ~*(&v68 + 1) >= 0x12uLL)
  {
    v32 = 18;
  }

  else
  {
    v32 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", enable_limiter: ", v32);
  *(&v68 + 1) += v32;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 80));
  if (v68 + ~*(&v68 + 1) >= 0x24uLL)
  {
    v33 = 36;
  }

  else
  {
    v33 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", analog_gain_controller { enabled: ", v33);
  *(&v68 + 1) += v33;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 84));
  if (v68 + ~*(&v68 + 1) >= 0x16uLL)
  {
    v34 = 22;
  }

  else
  {
    v34 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", startup_min_volume: ", v34);
  *(&v68 + 1) += v34;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 22));
  if (v68 + ~*(&v68 + 1) >= 0x15uLL)
  {
    v35 = 21;
  }

  else
  {
    v35 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipped_level_min: ", v35);
  *(&v68 + 1) += v35;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 23));
  if (v68 + ~*(&v68 + 1) >= 0x1BuLL)
  {
    v36 = 27;
  }

  else
  {
    v36 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", enable_digital_adaptive: ", v36);
  *(&v68 + 1) += v36;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 96));
  if (v68 + ~*(&v68 + 1) >= 0x16uLL)
  {
    v37 = 22;
  }

  else
  {
    v37 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipped_level_step: ", v37);
  *(&v68 + 1) += v37;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 25));
  if (v68 + ~*(&v68 + 1) >= 0x1BuLL)
  {
    v38 = 27;
  }

  else
  {
    v38 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipped_ratio_threshold: ", v38);
  *(&v68 + 1) += v38;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 26));
  if (v68 + ~*(&v68 + 1) >= 0x17uLL)
  {
    v39 = 23;
  }

  else
  {
    v39 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipped_wait_frames: ", v39);
  *(&v68 + 1) += v39;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 27));
  if (v68 + ~*(&v68 + 1) >= 0x22uLL)
  {
    v40 = 34;
  }

  else
  {
    v40 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipping_predictor:  { enabled: ", v40);
  *(&v68 + 1) += v40;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 112));
  if (v68 + ~*(&v68 + 1) >= 8uLL)
  {
    v41 = 8;
  }

  else
  {
    v41 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", mode: ", v41);
  *(&v68 + 1) += v41;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 29));
  if (v68 + ~*(&v68 + 1) >= 0x11uLL)
  {
    v42 = 17;
  }

  else
  {
    v42 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", window_length: ", v42);
  *(&v68 + 1) += v42;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 30));
  if (v68 + ~*(&v68 + 1) >= 0x1BuLL)
  {
    v43 = 27;
  }

  else
  {
    v43 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", reference_window_length: ", v43);
  *(&v68 + 1) += v43;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 31));
  if (v68 + ~*(&v68 + 1) >= 0x1AuLL)
  {
    v44 = 26;
  }

  else
  {
    v44 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", reference_window_delay: ", v44);
  *(&v68 + 1) += v44;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 32));
  if (v68 + ~*(&v68 + 1) >= 0x16uLL)
  {
    v45 = 22;
  }

  else
  {
    v45 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", clipping_threshold: ", v45);
  *(&v68 + 1) += v45;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 33));
  if (v68 + ~*(&v68 + 1) >= 0x17uLL)
  {
    v46 = 23;
  }

  else
  {
    v46 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", crest_factor_margin: ", v46);
  *(&v68 + 1) += v46;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 34));
  if (v68 + ~*(&v68 + 1) >= 0x16uLL)
  {
    v47 = 22;
  }

  else
  {
    v47 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", use_predicted_step: ", v47);
  *(&v68 + 1) += v47;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 140));
  if (v68 + ~*(&v68 + 1) >= 0x23uLL)
  {
    v48 = 35;
  }

  else
  {
    v48 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }}}, gain_controller2: { enabled: ", v48);
  *(&v68 + 1) += v48;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 144));
  if (v68 + ~*(&v68 + 1) >= 0x1CuLL)
  {
    v49 = 28;
  }

  else
  {
    v49 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", fixed_digital: { gain_db: ", v49);
  *(&v68 + 1) += v49;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 43));
  if (v68 + ~*(&v68 + 1) >= 0x21uLL)
  {
    v50 = 33;
  }

  else
  {
    v50 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, adaptive_digital: { enabled: ", v50);
  *(&v68 + 1) += v50;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 148));
  if (v68 + ~*(&v68 + 1) >= 0xFuLL)
  {
    v51 = 15;
  }

  else
  {
    v51 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", headroom_db: ", v51);
  *(&v68 + 1) += v51;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 38));
  if (v68 + ~*(&v68 + 1) >= 0xFuLL)
  {
    v52 = 15;
  }

  else
  {
    v52 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", max_gain_db: ", v52);
  *(&v68 + 1) += v52;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 39));
  if (v68 + ~*(&v68 + 1) >= 0x13uLL)
  {
    v53 = 19;
  }

  else
  {
    v53 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", initial_gain_db: ", v53);
  *(&v68 + 1) += v53;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 40));
  if (v68 + ~*(&v68 + 1) >= 0x21uLL)
  {
    v54 = 33;
  }

  else
  {
    v54 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", max_gain_change_db_per_second: ", v54);
  *(&v68 + 1) += v54;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 41));
  if (v68 + ~*(&v68 + 1) >= 0x1FuLL)
  {
    v55 = 31;
  }

  else
  {
    v55 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], ", max_output_noise_level_dbfs: ", v55);
  *(&v68 + 1) += v55;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", *(this + 42));
  if (v68 + ~*(&v68 + 1) >= 0x25uLL)
  {
    v56 = 37;
  }

  else
  {
    v56 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], " }, input_volume_control : { enabled ", v56);
  *(&v68 + 1) += v56;
  __s[*(&v68 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 145));
  if (v68 + ~*(&v68 + 1) >= 2uLL)
  {
    v57 = 2;
  }

  else
  {
    v57 = v68 + ~*(&v68 + 1);
  }

  memcpy(&__s[*(&v68 + 1)], "}}", v57);
  *(&v68 + 1) += v57;
  __s[*(&v68 + 1)] = 0;
  if (v63 < 0)
  {
    operator delete(*__p);
    if ((v66 & 0x80000000) == 0)
    {
LABEL_177:
      v58 = __s;
      if (!__s)
      {
        goto LABEL_190;
      }

      goto LABEL_181;
    }
  }

  else if ((v66 & 0x80000000) == 0)
  {
    goto LABEL_177;
  }

  operator delete(__src);
  v58 = __s;
  if (!__s)
  {
    goto LABEL_190;
  }

LABEL_181:
  result = strlen(v58);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_191;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v60 = &a2[result];
  if (a2 <= v58 && v60 > v58)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v58, result);
  }

  *v60 = 0;
  return result;
}

void *webrtc::CustomAudioProcessing(webrtc::scoped_refptr<webrtc::AudioProcessing>)::Builder::~Builder(void *result)
{
  *result = &unk_28828E350;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void webrtc::CustomAudioProcessing(webrtc::scoped_refptr<webrtc::AudioProcessing>)::Builder::~Builder(void *a1)
{
  *a1 = &unk_28828E350;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::CustomAudioProcessing(webrtc::scoped_refptr<webrtc::AudioProcessing>)::Builder::Build@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
  *a2 = v2;
  return result;
}

void webrtc::AudioProcessingImpl::AudioProcessingImpl(uint64_t a1, uint64_t *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828E378;
  v2 = *a2;
  *(a1 + 8) = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v3 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v3;
  operator new();
}

void webrtc::AudioProcessingImpl::~AudioProcessingImpl(webrtc::AudioProcessingImpl *this)
{
  *this = &unk_28828E378;
  v2 = *(this + 221);
  *(this + 221) = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      v5 = *(v2 + 32);
      if (v4 != v3)
      {
        v6 = *(v2 + 40);
        do
        {
          v8 = *(v6 - 24);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 16) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 32);
      }

      *(v2 + 40) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40D7793CB0);
  }

  v9 = *(this + 220);
  *(this + 220) = 0;
  if (v9)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = *(v9 + 40);
      v12 = *(v9 + 32);
      if (v11 != v10)
      {
        v13 = *(v9 + 40);
        do
        {
          v15 = *(v13 - 24);
          v13 -= 24;
          v14 = v15;
          if (v15)
          {
            *(v11 - 16) = v14;
            operator delete(v14);
          }

          v11 = v13;
        }

        while (v13 != v10);
        v12 = *(v9 + 32);
      }

      *(v9 + 40) = v10;
      operator delete(v12);
    }

    MEMORY[0x2743DA540](v9, 0x1020C40D7793CB0);
  }

  v16 = *(this + 219);
  *(this + 219) = 0;
  if (v16)
  {
    v17 = *(v16 + 32);
    if (v17)
    {
      v18 = *(v16 + 40);
      v19 = *(v16 + 32);
      if (v18 != v17)
      {
        v20 = *(v16 + 40);
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v18 - 16) = v21;
            operator delete(v21);
          }

          v18 = v20;
        }

        while (v20 != v17);
        v19 = *(v16 + 32);
      }

      *(v16 + 40) = v17;
      operator delete(v19);
    }

    MEMORY[0x2743DA540](v16, 0x1020C40D7793CB0);
  }

  v23 = *(this + 183);
  if (v23)
  {
    *(this + 184) = v23;
    operator delete(v23);
  }

  v24 = *(this + 180);
  if (v24)
  {
    *(this + 181) = v24;
    operator delete(v24);
  }

  v25 = *(this + 176);
  if (v25)
  {
    *(this + 177) = v25;
    operator delete(v25);
  }

  v26 = *(this + 173);
  if (v26)
  {
    *(this + 174) = v26;
    operator delete(v26);
  }

  v27 = *(this + 169);
  if (v27)
  {
    *(this + 170) = v27;
    operator delete(v27);
  }

  v28 = *(this + 166);
  if (v28)
  {
    *(this + 167) = v28;
    operator delete(v28);
  }

  v29 = *(this + 163);
  if (v29)
  {
    *(this + 164) = v29;
    operator delete(v29);
  }

  pthread_mutex_destroy((this + 1096));
  v31 = *(this + 136);
  *(this + 136) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 135);
  *(this + 135) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 106);
  *(this + 106) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 105);
  *(this + 105) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 104);
  *(this + 104) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 86);
  *(this + 86) = 0;
  if (v36)
  {
    MEMORY[0x2743DA540](v36, 0x1000C4025072006);
  }

  v37 = *(this + 85);
  *(this + 85) = 0;
  if (v37)
  {
    v38 = *v37;
    if (*v37)
    {
      v39 = v37[1];
      v40 = *v37;
      if (v39 != v38)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            v43 = *v41;
            if (*v41)
            {
              *(v41 + 8) = v43;
              operator delete(v43);
            }

            MEMORY[0x2743DA540](v41, 0x20C40960023A9);
          }
        }

        while (v39 != v38);
        v40 = *v37;
      }

      v37[1] = v38;
      operator delete(v40);
    }

    MEMORY[0x2743DA540](v37, 0x20C40960023A9);
  }

  v44 = *(this + 84);
  *(this + 84) = 0;
  if (v44)
  {
    webrtc::NoiseSuppressor::~NoiseSuppressor(v44);
    MEMORY[0x2743DA540]();
  }

  v45 = *(this + 83);
  *(this + 83) = 0;
  if (v45)
  {
    webrtc::EchoControlMobileImpl::~EchoControlMobileImpl(v45, v30);
    MEMORY[0x2743DA540]();
  }

  v46 = *(this + 82);
  *(this + 82) = 0;
  if (v46)
  {
    (*(*v46 + 72))(v46);
  }

  v47 = *(this + 81);
  *(this + 81) = 0;
  if (v47)
  {
    v48 = *(v47 + 8);
    if (v48)
    {
      v49 = *(v47 + 16);
      v50 = *(v47 + 8);
      if (v49 != v48)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            v53 = *v51;
            if (*v51)
            {
              *(v51 + 8) = v53;
              operator delete(v53);
            }

            MEMORY[0x2743DA540](v51, 0x20C40960023A9);
          }
        }

        while (v49 != v48);
        v50 = *(v47 + 8);
      }

      *(v47 + 16) = v48;
      operator delete(v50);
    }

    MEMORY[0x2743DA540](v47, 0x1020C40E72D6CFBLL);
  }

  v54 = *(this + 80);
  *(this + 80) = 0;
  if (v54)
  {
    webrtc::GainController2::~GainController2(v54);
    MEMORY[0x2743DA540]();
  }

  v55 = *(this + 79);
  *(this + 79) = 0;
  if (v55)
  {
    (*(*v55 + 120))(v55);
  }

  v56 = *(this + 78);
  *(this + 78) = 0;
  if (v56)
  {
    webrtc::AgcManagerDirect::~AgcManagerDirect(v56);
    MEMORY[0x2743DA540]();
  }

  v57 = *(this + 77);
  *(this + 77) = 0;
  if (v57)
  {
    (*(*v57 + 32))(v57);
  }

  v58 = *(this + 76);
  *(this + 76) = 0;
  if (v58)
  {
    (*(*v58 + 40))(v58);
  }

  v59 = *(this + 75);
  *(this + 75) = 0;
  if (v59)
  {
    (*(*v59 + 40))(v59);
  }

  v60 = *(this + 74);
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  pthread_mutex_destroy((this + 336));
  pthread_mutex_destroy((this + 272));
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v61 = *(this + 25);
  *(this + 25) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *(this + 24);
  *(this + 24) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(this + 19);
  if (v63)
  {
    *(this + 20) = v63;
    operator delete(v63);
  }

  v64 = *(this + 12);
  if (v64)
  {
    *(this + 13) = v64;
    operator delete(v64);
  }

  v65 = *(this + 6);
  *(this + 6) = 0;
  if (v65)
  {
    MEMORY[0x2743DA540](v65, 0xC400A2AC0F1);
  }

  v66 = *(this + 1);
  if (v66)
  {
    if (atomic_fetch_add(v66 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v66 + 8))(v66);
    }
  }
}

uint64_t webrtc::AudioProcessingImpl::Initialize(webrtc::AudioProcessingImpl *this)
{
  pthread_mutex_lock((this + 272));
  pthread_mutex_lock((this + 336));
  (*(*this + 272))(this);
  pthread_mutex_unlock((this + 336));
  pthread_mutex_unlock((this + 272));
  return 0;
}

uint64_t webrtc::AudioProcessingImpl::Initialize(uint64_t a1, _OWORD *a2)
{
  pthread_mutex_lock((a1 + 272));
  pthread_mutex_lock((a1 + 336));
  webrtc::AudioProcessingImpl::InitializeLocked(a1, a2);
  pthread_mutex_unlock((a1 + 336));
  pthread_mutex_unlock((a1 + 272));
  return 0;
}

uint64_t webrtc::AudioProcessingImpl::InitializeLocked(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 440);
  v3 = *(a1 + 664);
  v4 = v3 != 0;
  v5 = *(a1 + 672);
  v6 = v5 != 0;
  v7 = *(a1 + 632);
  v8 = v7 != 0;
  if (*(a1 + 412))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 420);
  }

  v10 = *(a1 + 640) != 0;
  v11 = v7 != 0;
  v12 = v5 != 0;
  v13 = v3 != 0;
  v14 = *(a1 + 1072);
  v15 = v9 & 1;
  if (*(a1 + 579) == v2 && (*(a1 + 580) == v13 ? (v16 = *(a1 + 581) == v12) : (v16 = 0), v16 ? (v17 = *(a1 + 582) == v11) : (v17 = 0), v17 ? (v18 = *(a1 + 583) == v10) : (v18 = 0), v18 ? (v19 = *(a1 + 584) == v15) : (v19 = 0), v19 ? (v20 = *(a1 + 585) == v14) : (v20 = 0), v20))
  {
    v8 = *(a1 + 582);
    v6 = *(a1 + 581);
    v4 = *(a1 + 580);
  }

  else
  {
    *(a1 + 579) = v2;
    *(a1 + 580) = v13;
    *(a1 + 581) = v12;
    *(a1 + 582) = v11;
    *(a1 + 583) = v10;
    *(a1 + 584) = v15;
    *(a1 + 585) = v14;
  }

  *(a1 + 586) = 0;
  v21 = a2[1];
  *(a1 + 696) = *a2;
  *(a1 + 712) = v21;
  v22 = a2[2];
  v23 = a2[3];
  v24 = a2[5];
  *(a1 + 760) = a2[4];
  *(a1 + 776) = v24;
  *(a1 + 728) = v22;
  *(a1 + 744) = v23;
  v25 = *(a1 + 400);
  if (v25 == 32000)
  {
    v26 = 32000;
  }

  else
  {
    v26 = 48000;
  }

  v27 = *(a1 + 696);
  if (*(a1 + 720) < v27)
  {
    v27 = *(a1 + 720);
  }

  v28 = v2 | v4 | v6 | v8;
  if ((v28 & 1) == 0 && !v14)
  {
    v29 = 16000;
    if (v27 <= 16000)
    {
      goto LABEL_38;
    }

    if (v27 < 0x7D01)
    {
      v29 = 32000;
      goto LABEL_38;
    }

LABEL_37:
    v29 = 48000;
    goto LABEL_38;
  }

  v29 = 16000;
  if (v27 > 16000)
  {
    v29 = 32000;
    if (v25 != 32000 && v27 > 0x7D00)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  *(a1 + 1040) = v29;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = (5243 * (v29 >> 2)) >> 17;
  v30 = v29;
  if (v14)
  {
    goto LABEL_55;
  }

  v31 = *(a1 + 744);
  if (*(a1 + 768) >= v31)
  {
    v32 = *(a1 + 744);
  }

  else
  {
    v32 = *(a1 + 768);
  }

  if ((v28 & 1) == 0)
  {
    if (v32 < 16001)
    {
LABEL_60:
      v33 = *(a1 + 752);
      v34 = v31 / 100;
      v30 = *(a1 + 744);
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  if (v32 <= 16000)
  {
    v30 = 16000;
  }

  else
  {
    v30 = v26;
  }

  if (v32 >= 16001 && v25 != 32000)
  {
LABEL_51:
    if (v32 <= 0x7D00)
    {
      v30 = 32000;
    }

    else
    {
      v30 = 48000;
    }

    if (((v4 | v8) & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  if (((v4 | v8) & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_55:
  if (*(a1 + 404) == 1 && *(a1 + 816) == 1)
  {
    v33 = *(a1 + 752);
  }

  else
  {
    v33 = 1;
  }

  v34 = v30 / 0x64u;
LABEL_61:
  *(a1 + 792) = v30;
  *(a1 + 800) = v33;
  *(a1 + 808) = v34;
  v35 = 16000;
  if (v29 != 32000 && v29 != 48000)
  {
    v35 = v29;
  }

  *(a1 + 1064) = v35;
  return (*(*a1 + 272))();
}

void webrtc::AudioProcessingImpl::InitializeLocked(webrtc::AudioProcessingImpl *this)
{
  v2 = *(this + 440);
  if (*(this + 412))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 420);
  }

  v4 = *(this + 1072);
  v5 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(this + 664)), vceqzq_s64(*(this + 632))))), 0x1000100010001);
  v6 = v3 & 1;
  if (*(this + 145) != vuzp1_s8(v5, v5).u32[0] || *(this + 579) != v2 || *(this + 584) != v6 || *(this + 585) != v4)
  {
    *(this + 579) = v2;
    *(this + 580) = v5.i8[0];
    *(this + 581) = v5.i8[2];
    *(this + 582) = v5.i8[4];
    *(this + 583) = v5.i8[6];
    *(this + 584) = v6;
    *(this + 585) = v4;
  }

  *(this + 586) = 0;
  if (*(this + 94))
  {
    operator new();
  }

  v10 = *(this + 136);
  *(this + 136) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 135);
  *(this + 135) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  operator new();
}

void webrtc::AudioProcessingImpl::InitializeGainController1(webrtc::AudioProcessingImpl *this)
{
  if (*(this + 544) == 1 && *(this + 545) == 1 && *(this + 464) == 1 && (!*(this + 117) || *(this + 484) == 1) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
  }

  if (*(this + 464))
  {
    v9 = *(this + 79);
    if (!v9)
    {
      operator new();
    }

    v10 = (*(*this + 80))(this);
    v11 = (*(*this + 56))(this);
    webrtc::GainControlImpl::Initialize(v9, v10, v11);
    if (*(this + 484))
    {
      v13 = *(this + 78);
      if (!v13 || (v14 = *(v13 + 24), v15 = (*(*this + 80))(this), v16 = *(this + 78), v14 != v15))
      {
        (*(*this + 80))(this);
        operator new();
      }

      v21 = *(v16 + 64);
      v22 = *(v16 + 72) - v21;
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 3;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v26 = *(v21 + 8 * v23);
          *(v26 + 20) = 0xC000000FFLL;
          if (*(v26 + 4))
          {
            v27 = 0;
          }

          else
          {
            v27 = 7;
          }

          *(v26 + 28) = v27;
          *(v26 + 32) = v27;
          *(v26 + 36) = v27;
          *(v26 + 40) = 257;
          *(v26 + 64) = 0;
          *(v26 + 68) = 1;
          ++v23;
        }

        while (v25 != v23);
        *(v16 + 40) = 1;
        v28 = *(*v21 + 44);
        *(v16 + 44) = 0;
        if (v24 >= 2)
        {
          for (i = 1; i != v24; ++i)
          {
            v30 = *(*(v21 + 8 * i) + 44);
            if (v30 < v28)
            {
              *(v16 + 44) = i;
              v28 = v30;
            }
          }
        }

        v31 = *(v16 + 8) != 1 || v28 <= 0;
        if (!v31 && v28 <= *(v16 + 4))
        {
          v28 = *(v16 + 4);
        }

        if (*v16 == 1)
        {
          *(v16 + 36) = v28;
        }

        *(v16 + 124) = 0;
        webrtc::AgcManagerDirect::SetupDigitalGainControl(v16, *(this + 79));
        v32 = *(this + 78);
        v33 = *(this + 825);
        v34 = *(v32 + 64);
        v35 = *(v32 + 72) - v34;
        if (v35)
        {
          v36 = v35 >> 3;
          if (v36 <= 1)
          {
            v36 = 1;
          }

          if (v33)
          {
            do
            {
              v37 = *v34;
              if (*(*v34 + 40) != v33)
              {
                *(v37 + 40) = v33;
                *(v37 + 41) = 1;
              }

              ++v34;
              --v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              if (*(*v34 + 40) != v33)
              {
                *(*v34 + 40) = v33;
              }

              ++v34;
              --v36;
            }

            while (v36);
          }
        }

        *(v32 + 40) = v33;
        return;
      }

      *(v16 + 40) = 1;
      __break(1u);
LABEL_63:
      JUMPOUT(0x2743DA540);
    }

    if (*(this + 117) >= 3u)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v12);
    }

    (*(**(this + 79) + 16))(*(this + 79));
    (*(**(this + 79) + 32))(*(this + 79), *(this + 118));
    (*(**(this + 79) + 48))(*(this + 79), *(this + 119));
    (*(**(this + 79) + 64))(*(this + 79), *(this + 480));
    (*(**(this + 79) + 80))(*(this + 79), 0, 255);
    v20 = *(this + 78);
    *(this + 78) = 0;
    if (v20)
    {
      webrtc::AgcManagerDirect::~AgcManagerDirect(v20);

      goto LABEL_63;
    }
  }

  else
  {
    v17 = *(this + 78);
    *(this + 78) = 0;
    if (v17)
    {
      webrtc::AgcManagerDirect::~AgcManagerDirect(v17);
      MEMORY[0x2743DA540]();
    }

    v18 = *(this + 79);
    *(this + 79) = 0;
    if (v18)
    {
      v19 = *(*v18 + 120);

      v19();
    }
  }
}

_BYTE *webrtc::AudioProcessingImpl::InitializeHighPassFilter(_BYTE *this, char a2)
{
  v3 = this;
  if (this[442] == 1 && this[445] == 1)
  {
    v4 = this[443] ^ 1;
    if (this[579])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (this[579])
    {
      goto LABEL_8;
    }
  }

  if ((this[580] & 1) == 0 && ((this[581] | v4) & 1) == 0)
  {
    v9 = *(this + 81);
    *(this + 81) = 0;
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = *(v9 + 16);
        v12 = *(v9 + 8);
        if (v11 != v10)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              v15 = *v13;
              if (*v13)
              {
                *(v13 + 8) = v15;
                operator delete(v15);
              }

              MEMORY[0x2743DA540](v13, 0x20C40960023A9);
            }
          }

          while (v11 != v10);
          v12 = *(v9 + 8);
        }

        *(v9 + 16) = v10;
        operator delete(v12);
      }

      JUMPOUT(0x2743DA540);
    }

    return this;
  }

LABEL_8:
  if (this[441] == 1 && (this[818] & 1) == 0)
  {
    v8 = *(this + 105);
    if (v8)
    {
      v5 = 100 * *(v8 + 24);
    }

    else
    {
      v5 = *(this + 260);
    }

    this = (*(*this + 88))(this);
    v6 = this;
    v7 = v3[81];
    if (!v7)
    {
LABEL_21:
      operator new();
    }
  }

  else
  {
    v5 = (*(*this + 64))(this);
    this = (*(*v3 + 80))(v3);
    v6 = this;
    v7 = v3[81];
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v5 != *v7 || (a2 & 1) != 0 || v6 != ((*(v7 + 16) - *(v7 + 8)) >> 3))
  {
    goto LABEL_21;
  }

  return this;
}

webrtc::EchoControlMobileImpl *webrtc::AudioProcessingImpl::InitializeEchoController(webrtc::AudioProcessingImpl *this, void *a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    v4 = (*(*this + 56))(this);
    v5 = (*(*this + 96))(this);
    v6 = (*(*this + 80))(this);
    (*(*v3 + 16))(__p, v3, this + 8, v4, v5, v6);
    v7 = __p[0];
    __p[0] = 0;
    v8 = *(this + 82);
    *(this + 82) = v7;
    if (v8)
    {
      (*(*v8 + 72))(v8);
      v9 = __p[0];
      __p[0] = 0;
      if (v9)
      {
        (*(*v9 + 72))(v9);
      }
    }

    if (*(this + 444) == 1)
    {
      (*(*this + 80))(this);
      (*(*this + 80))(this);
      (*(*this + 80))(this);
      operator new();
    }

    v15 = *(this + 106);
    *(this + 106) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    *(this + 1072) = 1;
    (*(**(this + 2) + 16))(__p);
    v17 = BYTE7(v86);
    if (SBYTE7(v86) < 0)
    {
      v17 = __p[1];
    }

    if (v17 >= 7)
    {
      v19 = __p[0];
      if ((SBYTE7(v86) & 0x80u) == 0)
      {
        v19 = __p;
      }

      v20 = *v19;
      v21 = *(v19 + 3);
      v18 = v20 == 1650552389 && v21 == 1684368482;
      if ((SBYTE7(v86) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = 0;
      if ((SBYTE7(v86) & 0x80000000) == 0)
      {
LABEL_37:
        if (!v18)
        {
          v23 = (*(*this + 56))(this);
          (*(*this + 80))(this);
          if (v23 == 48000)
          {
            operator new();
          }

          v24 = *(this + 85);
          *(this + 85) = 0;
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              v27 = *v24;
              if (v26 != v25)
              {
                do
                {
                  v29 = *--v26;
                  v28 = v29;
                  *v26 = 0;
                  if (v29)
                  {
                    v30 = *v28;
                    if (*v28)
                    {
                      *(v28 + 8) = v30;
                      operator delete(v30);
                    }

                    MEMORY[0x2743DA540](v28, 0x20C40960023A9);
                  }
                }

                while (v26 != v25);
                v27 = *v24;
              }

              v24[1] = v25;
              operator delete(v27);
            }

            MEMORY[0x2743DA540](v24, 0x20C40960023A9);
          }
        }

        result = *(this + 83);
        *(this + 83) = 0;
        if (result)
        {
          webrtc::EchoControlMobileImpl::~EchoControlMobileImpl(result, v16);
          result = MEMORY[0x2743DA540]();
        }

        v39 = *(this + 219);
        *(this + 219) = 0;
        if (v39)
        {
          v40 = *(v39 + 32);
          if (v40)
          {
            v41 = *(v39 + 40);
            v42 = *(v39 + 32);
            if (v41 != v40)
            {
              v43 = *(v39 + 40);
              do
              {
                v45 = *(v43 - 24);
                v43 -= 24;
                v44 = v45;
                if (v45)
                {
                  *(v41 - 16) = v44;
                  operator delete(v44);
                }

                v41 = v43;
              }

              while (v43 != v40);
              v42 = *(v39 + 32);
            }

            *(v39 + 40) = v40;
            operator delete(v42);
          }

          return MEMORY[0x2743DA540](v39, 0x1020C40D7793CB0);
        }

        return result;
      }
    }

    operator delete(__p[0]);
    goto LABEL_37;
  }

  if (*(this + 442) == 1 && (*(this + 443) & 1) == 0)
  {
    webrtc::EchoCanceller3Config::EchoCanceller3Config(v127);
    LOBYTE(__p[0]) = 0;
    v126 = 0;
    if (*(this + 56) == 1)
    {
      webrtc::EchoCanceller3Config::EchoCanceller3Config(v50);
      *&v54 = 11;
      DWORD2(v54) = 1064514355;
      *&v57 = 11;
      DWORD2(v57) = 1064514355;
      v72 = 0x3EB333333FC00000;
      v89 = v50[4];
      v90 = v50[5];
      v91 = v50[6];
      v92 = v51;
      *__p = v50[0];
      v86 = v50[1];
      v87 = v50[2];
      v88 = v50[3];
      v104 = v63;
      *v105 = *v64;
      *(&v105[1] + 6) = *(&v64[1] + 6);
      v102 = v61;
      v103 = v62;
      v98 = v57;
      v99 = v58;
      v100 = v59;
      v101 = v60;
      v95 = v54;
      v96 = v55;
      v97 = v56;
      v93 = v52;
      v94 = v53;
      *(v106 + 9) = *(v65 + 9);
      *&v105[3] = *&v64[3];
      v106[0] = v65[0];
      v107 = v66;
      v108 = v67;
      v109 = v68;
      v110 = v69;
      v111 = v70;
      v112 = v71;
      v113 = 0x3EB333333FC00000;
      v114 = v73;
      v115 = v74;
      v116 = v75;
      v117 = v76;
      v118 = v77;
      *(v125 + 9) = *(v84 + 9);
      v124 = v83;
      v123 = v82;
      v122 = v81;
      v121 = v80;
      v120 = v79;
      v119 = v78;
      v125[0] = v84[0];
      v125[2] = v84[2];
      v126 = 1;
    }

    (*(*this + 56))(this);
    (*(*this + 96))(this);
    (*(*this + 80))(this);
    operator new();
  }

  v10 = *(this + 82);
  *(this + 82) = 0;
  if (v10)
  {
    (*(*v10 + 72))(v10);
  }

  *(this + 1072) = 0;
  v11 = *(this + 106);
  *(this + 106) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 442))
  {
    if (*(this + 443) == 1)
    {
      v12 = (*(*this + 88))(this);
      v13 = (*(*this + 96))(this);
      if ((160 * v12 * v13) <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 160 * v12 * v13;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    result = *(this + 83);
    *(this + 83) = 0;
    if (result)
    {
      webrtc::EchoControlMobileImpl::~EchoControlMobileImpl(result, a2);
      result = MEMORY[0x2743DA540]();
    }

    v32 = *(this + 219);
    *(this + 219) = 0;
    if (v32)
    {
      v33 = *(v32 + 32);
      if (!v33)
      {
        goto LABEL_88;
      }

      v46 = *(v32 + 40);
      v35 = *(v32 + 32);
      if (v46 == v33)
      {
LABEL_87:
        *(v32 + 40) = v33;
        operator delete(v35);
LABEL_88:

        JUMPOUT(0x2743DA540);
      }

      v47 = *(v32 + 40);
      do
      {
        v49 = *(v47 - 24);
        v47 -= 24;
        v48 = v49;
        if (v49)
        {
          *(v46 - 16) = v48;
          operator delete(v48);
        }

        v46 = v47;
      }

      while (v47 != v33);
LABEL_86:
      v35 = *(v32 + 32);
      goto LABEL_87;
    }
  }

  else
  {
    result = *(this + 83);
    *(this + 83) = 0;
    if (result)
    {
      webrtc::EchoControlMobileImpl::~EchoControlMobileImpl(result, a2);
      result = MEMORY[0x2743DA540]();
    }

    v32 = *(this + 219);
    *(this + 219) = 0;
    if (v32)
    {
      v33 = *(v32 + 32);
      if (!v33)
      {
        goto LABEL_88;
      }

      v34 = *(v32 + 40);
      v35 = *(v32 + 32);
      if (v34 == v33)
      {
        goto LABEL_87;
      }

      v36 = *(v32 + 40);
      do
      {
        v38 = *(v36 - 24);
        v36 -= 24;
        v37 = v38;
        if (v38)
        {
          *(v34 - 16) = v37;
          operator delete(v37);
        }

        v34 = v36;
      }

      while (v36 != v33);
      goto LABEL_86;
    }
  }

  return result;
}

webrtc::GainController2 *webrtc::AudioProcessingImpl::InitializeGainController2(webrtc::AudioProcessingImpl *this)
{
  if (*(this + 544))
  {
    v3 = 0x4600000014;
    v4 = 0x3DCCCCCD0000000FLL;
    v5 = 300;
    v6 = 1;
    v7 = 0xFFFFFFCEFFFFFFE2;
    v8 = 100;
    v9 = 0x3F19999A3F333333;
    (*(*this + 88))(this);
    operator new();
  }

  result = *(this + 80);
  *(this + 80) = 0;
  if (result)
  {
    webrtc::GainController2::~GainController2(result);

    JUMPOUT(0x2743DA540);
  }

  return result;
}

webrtc::NoiseSuppressor *webrtc::AudioProcessingImpl::InitializeNoiseSuppressor(webrtc::AudioProcessingImpl *this)
{
  result = *(this + 84);
  *(this + 84) = 0;
  if (result)
  {
    webrtc::NoiseSuppressor::~NoiseSuppressor(result);
    result = MEMORY[0x2743DA540]();
  }

  if (*(this + 448) == 1)
  {
    if (*(this + 113) < 4u)
    {
      (*(*this + 56))(this);
      (*(*this + 80))(this);
      operator new();
    }

    webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
  }

  return result;
}

uint64_t webrtc::AudioProcessingImpl::ApplyConfig(webrtc::AudioProcessingImpl *this, const webrtc::AudioProcessing::Config *a2)
{
  pthread_mutex_lock((this + 272));
  pthread_mutex_lock((this + 336));
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::AudioProcessing::Config::ToString(a2, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc"), v39 < 0))
  {
    operator delete(__p);
    v11 = this + 400;
    if (*(this + 404) != *(a2 + 4))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = this + 400;
    if (*(this + 404) != *(a2 + 4))
    {
      goto LABEL_9;
    }
  }

  if (*(this + 405) != *(a2 + 5) || *v11 != *a2)
  {
LABEL_9:
    v12 = 1;
    if (*(this + 442) != *(a2 + 42))
    {
      goto LABEL_7;
    }

LABEL_10:
    v13 = *(this + 443) != *(a2 + 43);
    goto LABEL_11;
  }

  v12 = *(this + 102) != *(a2 + 2);
  if (*(this + 442) == *(a2 + 42))
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = 1;
LABEL_11:
  v15 = webrtc::AudioProcessing::Config::GainController1::operator==(this + 464, a2 + 64);
  v16 = *(this + 544) == *(a2 + 144) && *(this + 143) == *(a2 + 43) && *(this + 548) == *(a2 + 148) && *(this + 138) == *(a2 + 38) && *(this + 139) == *(a2 + 39) && *(this + 140) == *(a2 + 40) && *(this + 141) == *(a2 + 41) && *(this + 142) == *(a2 + 42) && *(this + 545) == *(a2 + 145);
  if (*(this + 448) == *(a2 + 48))
  {
    v17 = *(this + 113) != *(a2 + 13);
    if (*(this + 412) != *(a2 + 12))
    {
      goto LABEL_23;
    }

LABEL_26:
    v18 = *(this + 104) != *(a2 + 4);
    if (*(this + 420) != *(a2 + 20))
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v17 = 1;
  if (*(this + 412) == *(a2 + 12))
  {
    goto LABEL_26;
  }

LABEL_23:
  v18 = 1;
  if (*(this + 420) != *(a2 + 20))
  {
    goto LABEL_31;
  }

LABEL_27:
  if (*(this + 106) == *(a2 + 6) && *(this + 107) == *(a2 + 7) && *(this + 432) == *(a2 + 32))
  {
    v19 = *(this + 109) != *(a2 + 9);
    goto LABEL_32;
  }

LABEL_31:
  v19 = 1;
LABEL_32:
  v20 = *a2;
  v21 = *(a2 + 2);
  *(v11 + 1) = *(a2 + 1);
  *(v11 + 2) = v21;
  *v11 = v20;
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(a2 + 6);
  *(v11 + 5) = *(a2 + 5);
  *(v11 + 6) = v24;
  *(v11 + 3) = v22;
  *(v11 + 4) = v23;
  v25 = *(a2 + 7);
  v26 = *(a2 + 8);
  v27 = *(a2 + 10);
  *(v11 + 9) = *(a2 + 9);
  *(v11 + 10) = v27;
  *(v11 + 7) = v25;
  *(v11 + 8) = v26;
  if (v13)
  {
    webrtc::AudioProcessingImpl::InitializeEchoController(this, v14);
    if (!v17)
    {
      goto LABEL_34;
    }

LABEL_46:
    webrtc::AudioProcessingImpl::InitializeNoiseSuppressor(this);
    webrtc::AudioProcessingImpl::InitializeHighPassFilter(this, 0);
    if (v15)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v17)
  {
    goto LABEL_46;
  }

LABEL_34:
  webrtc::AudioProcessingImpl::InitializeHighPassFilter(this, 0);
  if (!v15)
  {
LABEL_35:
    webrtc::AudioProcessingImpl::InitializeGainController1(this);
  }

LABEL_36:
  if (vminv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgezq_f32(*(this + 552)))), vmovn_s32(vcgtzq_f32(*(this + 552))))))
  {
    v28 = *(this + 143);
    if (v28 >= 0.0 && v28 < 50.0 && *(this + 142) <= 0.0)
    {
      if (!v16)
      {
        goto LABEL_43;
      }

LABEL_49:
      if (!v18 && !v19)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
  }

  *(this + 68) = 0;
  *(this + 552) = xmmword_273B8E960;
  *(this + 71) = 3259498496;
  if (v16)
  {
    goto LABEL_49;
  }

LABEL_43:
  webrtc::AudioProcessingImpl::InitializeGainController2(this);
  if (!v18 && !v19)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (*(this + 412) & 1) != 0 || (*(this + 420))
  {
    operator new();
  }

  v37 = *(this + 86);
  *(this + 86) = 0;
  if (v37)
  {
    MEMORY[0x2743DA540](v37, 0x1000C4025072006);
  }

LABEL_54:
  if (v12)
  {
    webrtc::AudioProcessingImpl::InitializeLocked(this, (this + 696));
  }

  pthread_mutex_unlock((this + 336));
  return pthread_mutex_unlock((this + 272));
}

uint64_t webrtc::AudioProcessingImpl::num_proc_channels(webrtc::AudioProcessingImpl *this)
{
  if (*(this + 405) == 1)
  {
    v1 = *(this + 817);
    if (*(this + 1072) != 1)
    {
      return (*(*this + 88))();
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 1072) != 1)
    {
      return (*(*this + 88))();
    }
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  return (*(*this + 88))();
}

uint64_t webrtc::AudioProcessingImpl::set_output_will_be_muted(webrtc::AudioProcessingImpl *this, int a2)
{
  pthread_mutex_lock((this + 336));
  if (a2)
  {
    v4 = (*(this + 819) ^ 1) & 1;
    *(this + 825) = v4;
    v5 = *(this + 78);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = 1;
    *(this + 825) = 1;
    v5 = *(this + 78);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v6 = *(v5 + 64);
  v7 = *(v5 + 72) - v6;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    if (v4)
    {
      do
      {
        v9 = *v6;
        if (*(*v6 + 40) != v4)
        {
          *(v9 + 40) = v4;
          *(v9 + 41) = 1;
        }

        ++v6;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        if (*(*v6 + 40) != v4)
        {
          *(*v6 + 40) = v4;
        }

        ++v6;
        --v8;
      }

      while (v8);
    }
  }

  *(v5 + 40) = v4;
LABEL_17:
  v10 = *(this + 82);
  if (v10)
  {
    (*(*v10 + 48))(v10);
  }

  v11 = *(this + 84);
  if (v11)
  {
    *(v11 + 80) = *(this + 825);
  }

  v12 = *(this + 80);
  if (v12)
  {
    v13 = *(v12 + 48);
    if (v13)
    {
      v14 = *(this + 825);
      v15 = *(v13 + 72);
      v16 = *(v13 + 80);
      if (v15 != v16)
      {
        if (v14)
        {
          do
          {
            v17 = *v15;
            if (*(*v15 + 16) != v14)
            {
              *(v17 + 16) = v14;
              *(v17 + 17) = 1;
            }

            ++v15;
          }

          while (v15 != v16);
        }

        else
        {
          do
          {
            if (*(*v15 + 16) != v14)
            {
              *(*v15 + 16) = v14;
            }

            ++v15;
          }

          while (v15 != v16);
        }
      }

      *(v13 + 20) = v14;
    }
  }

  return pthread_mutex_unlock((this + 336));
}

uint64_t webrtc::AudioProcessingImpl::PostRuntimeSetting(uint64_t result, std::string::size_type a2, char *a3)
{
  v3 = 1;
  if (a2 > 8)
  {
    return v3;
  }

  if (((1 << a2) & 0x18E) != 0)
  {
    v4 = *(result + 176);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    v6 = v4[4];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4[5] - v6) >> 2);
    if (explicit == v7)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }

LABEL_9:
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
      return 0;
    }

    v19 = v4[1];
    if (v7 > v19)
    {
      v20 = v6 + 12 * v19;
      *v20 = a2;
      *(v20 + 8) = a3;
      atomic_fetch_add_explicit(v4 + 3, 1uLL, memory_order_release);
      v21 = v4[1];
      if (v21 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v4[5] - v4[4]) >> 2))
      {
        v22 = 0;
      }

      else
      {
        v22 = v21 + 1;
      }

      v4[1] = v22;
      return 1;
    }
  }

  else
  {
    if (((1 << a2) & 0x60) == 0)
    {
      if (a2 != 4)
      {
        return v3;
      }

      v23 = *(result + 176);
      v24 = atomic_load_explicit(v23 + 3, memory_order_acquire);
      v25 = v23[4];
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v23[5] - v25) >> 2);
      if (v24 == v26)
      {
        v35 = a3;
        v36 = a2;
        v37 = result;
        v38 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
        a2 = v36;
        LODWORD(a3) = v35;
        v44 = v38;
        result = v37;
        if ((v44 & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v36, v35, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
          result = v37;
          a2 = v36;
          LODWORD(a3) = v35;
        }
      }

      else
      {
        v27 = v23[1];
        if (v26 <= v27)
        {
          goto LABEL_44;
        }

        v28 = v25 + 12 * v27;
        *v28 = a2;
        *(v28 + 8) = a3;
        atomic_fetch_add_explicit(v23 + 3, 1uLL, memory_order_release);
        v29 = v23[1];
        if (v29 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v23[5] - v23[4]) >> 2))
        {
          v30 = 0;
        }

        else
        {
          v30 = v29 + 1;
        }

        v23[1] = v30;
      }

      v45 = *(result + 184);
      v46 = atomic_load_explicit(v45 + 3, memory_order_acquire);
      v47 = v45[4];
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v45[5] - v47) >> 2);
      if (v46 == v48)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v53, v54, v55, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
        }
      }

      else
      {
        v49 = v45[1];
        if (v48 <= v49)
        {
          goto LABEL_44;
        }

        v50 = v47 + 12 * v49;
        *v50 = a2;
        *(v50 + 8) = a3;
        atomic_fetch_add_explicit(v45 + 3, 1uLL, memory_order_release);
        v51 = v45[1];
        if (v51 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v45[5] - v45[4]) >> 2))
        {
          v52 = 0;
        }

        else
        {
          v52 = v51 + 1;
        }

        v45[1] = v52;
      }

      return v24 != v26 && v46 != v48;
    }

    v15 = *(result + 184);
    v16 = atomic_load_explicit(v15 + 3, memory_order_acquire);
    v17 = v15[4];
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v15[5] - v17) >> 2);
    if (v16 == v18)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }

      goto LABEL_9;
    }

    v31 = v15[1];
    if (v18 > v31)
    {
      v32 = v17 + 12 * v31;
      *v32 = a2;
      *(v32 + 8) = a3;
      v3 = 1;
      atomic_fetch_add_explicit(v15 + 3, 1uLL, memory_order_release);
      v33 = v15[1];
      if (v33 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v15[5] - v15[4]) >> 2))
      {
        v34 = 0;
      }

      else
      {
        v34 = v33 + 1;
      }

      v15[1] = v34;
      return v3;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t webrtc::AudioProcessingImpl::MaybeInitializeCapture(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a1 + 632);
  pthread_mutex_lock((a1 + 336));
  v7 = *(a1 + 744);
  *&v25[16] = *(a1 + 728);
  v26 = v7;
  v8 = *(a1 + 776);
  v27 = *(a1 + 760);
  v28 = v8;
  v9 = *(a1 + 712);
  v24 = *(a1 + 696);
  *v25 = v9;
  v10 = *(a1 + 440);
  if (*(a1 + 412))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 420);
  }

  v12 = *(a1 + 1072);
  v13 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v6[2]), vceqzq_s64(*v6)))), 0x1000100010001);
  v14 = v11 & 1;
  v16 = *(a1 + 580) != vuzp1_s8(v13, v13).u32[0] || *(a1 + 579) != v10;
  v18 = *(a1 + 584) != v14 || *(a1 + 585) != v12 || v16;
  if (v18 == 1)
  {
    *(a1 + 579) = v10;
    *(a1 + 580) = v13.i8[0];
    *(a1 + 581) = v13.i8[2];
    *(a1 + 582) = v13.i8[4];
    *(a1 + 583) = v13.i8[6];
    *(a1 + 584) = v14;
    *(a1 + 585) = v12;
  }

  v19 = *(a1 + 586);
  *(a1 + 586) = 0;
  result = pthread_mutex_unlock((a1 + 336));
  if (*&v25[8] != *a3 || *&v25[16] != *(a3 + 8) || ((v19 | v18) & 1) != 0 || v24 != *a2 || *(&v24 + 1) != *(a2 + 1))
  {
    pthread_mutex_lock((a1 + 272));
    pthread_mutex_lock((a1 + 336));
    v21 = *(a1 + 776);
    v27 = *(a1 + 760);
    v28 = v21;
    v22 = *(a1 + 712);
    v23 = *(a1 + 744);
    *&v25[16] = *(a1 + 728);
    v26 = v23;
    v24 = *a2;
    *v25 = v22;
    *v25 = *(a2 + 2);
    *&v25[8] = *a3;
    *&v25[24] = *(a3 + 16);
    webrtc::AudioProcessingImpl::InitializeLocked(a1, &v24);
    pthread_mutex_unlock((a1 + 336));

    return pthread_mutex_unlock((a1 + 272));
  }

  return result;
}

uint64_t webrtc::AudioProcessingImpl::ProcessStream(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = a5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  if (result)
  {
    if ((StatusReg & 0x1000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  webrtc::AudioProcessingImpl::MaybeInitializeCapture(a1, a3, a4);
  pthread_mutex_lock((a1 + 336));
  if (*(a1 + 200))
  {
    webrtc::AudioProcessingImpl::WriteAecDumpConfigMessage(a1, 0);
    v12 = *(a1 + 704);
    if (v12)
    {
      v13 = *(a1 + 712);
      if (v13)
      {
        v14 = a2;
        do
        {
          v15 = *v14++;
          (*(**(a1 + 200) + 32))(*(a1 + 200), v15, v13);
          --v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          (*(**(a1 + 200) + 32))(*(a1 + 200), 0, 0);
          --v12;
        }

        while (v12);
      }
    }

    v28[0] = *(a1 + 1068);
    v28[1] = 0;
    v28[2] = *(a1 + 1016);
    v29 = *(a1 + 1020);
    v30 = *(a1 + 827);
    (*(**(a1 + 200) + 72))(*(a1 + 200), v28);
  }

  webrtc::AudioBuffer::CopyFrom(*(a1 + 832), a2, a1 + 696);
  v16 = *(a1 + 840);
  if (v16)
  {
    webrtc::AudioBuffer::CopyFrom(v16, a2, a1 + 696);
  }

  webrtc::AudioProcessingImpl::ProcessCaptureStreamLocked(a1);
  if (v17)
  {
    v23 = v17;
    pthread_mutex_unlock((a1 + 336));
    result = v23;
    if ((StatusReg & 0x1000000) != 0)
    {
      return result;
    }

LABEL_5:
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
    return result;
  }

  v24 = *(a1 + 840);
  if (!v24)
  {
    v24 = *(a1 + 832);
  }

  webrtc::AudioBuffer::CopyTo(v24, a1 + 720, v5, v18, v19, v20, v21, v22);
  if (*(a1 + 200))
  {
    v25 = *(a1 + 728);
    if (v25)
    {
      v26 = *(a1 + 736);
      if (v26)
      {
        do
        {
          v27 = *v5++;
          (*(**(a1 + 200) + 48))(*(a1 + 200), v27, v26);
          --v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          (*(**(a1 + 200) + 48))(*(a1 + 200), 0, 0);
          --v25;
        }

        while (v25);
      }
    }

    (*(**(a1 + 200) + 80))(*(a1 + 200));
  }

  pthread_mutex_unlock((a1 + 336));
  result = 0;
  if ((StatusReg & 0x1000000) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::HandleUnsupportedAudioFormats(const void **a1, int a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = a3;
  v9 = *(a4 + 8);
  v10 = *a4;
  v11 = a2 >> 6 < 0x7D || a2 > 0x5DC00;
  if (a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = 3;
  }

  if (a2 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  if ((v10 & 0x80000000) != 0)
  {
    v14 = 2;
  }

  else if (v9)
  {
    if (v10 >> 6 >= 0x7D)
    {
      v14 = v10 > 0x5DC00;
      if (!v13 && v10 <= 0x5DC00)
      {
        result = 0;
        if (v9 == 1 || v9 == a3)
        {
          return result;
        }

        result = 4294967287;
        goto LABEL_32;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 3;
  }

  if (v13 - 1 >= 2)
  {
    if (v13)
    {
      result = 4294967287;
      if (v14 >= 2)
      {
        return result;
      }

      goto LABEL_38;
    }

    if (v14 - 1 >= 2)
    {
      result = 4294967287;
      if (v14)
      {
        return result;
      }
    }

    else
    {
      result = 4294967289;
      if (v14 > 1)
      {
        return result;
      }
    }
  }

  else
  {
    result = 4294967289;
    if (v14 > 1)
    {
      return result;
    }

    if (v13 > 1)
    {
      goto LABEL_38;
    }
  }

LABEL_32:
  if (v10 != a2)
  {
LABEL_38:
    if (v9)
    {
      v20 = result;
      do
      {
        v21 = *a5++;
        bzero(v21, 4 * *(a4 + 16));
        --v9;
      }

      while (v9);
      return v20;
    }

    return result;
  }

  if (v9 == a3)
  {
    if (v9)
    {
      v16 = result;
      do
      {
        v18 = *a5++;
        v17 = v18;
        v19 = *a1++;
        memcpy(v17, v19, 4 * *(a4 + 16));
        --v7;
      }

      while (v7);
      return v16;
    }
  }

  else if (v9)
  {
    v22 = result;
    do
    {
      v23 = *a5++;
      memcpy(v23, *a1, 4 * *(a4 + 16));
      --v9;
    }

    while (v9);
    return v22;
  }

  return result;
}

void webrtc::AudioProcessingImpl::ProcessCaptureStreamLocked(webrtc::AudioProcessingImpl *this)
{
  webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(this);
  *&v290 = 0;
  if (atomic_load_explicit(this + 11, memory_order_acquire))
  {
    v15 = 0;
    while (1)
    {
      v16 = v15;
      v17 = *(this + 10);
      v18 = *(this + 12);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - v18) >> 2) <= v17)
      {
        goto LABEL_425;
      }

      v19 = v18 + 12 * v17;
      v20 = DWORD2(v290);
      v21 = v290;
      v22 = *(v19 + 8);
      *&v290 = *v19;
      DWORD2(v290) = v22;
      *v19 = v21;
      *(v19 + 8) = v20;
      atomic_fetch_add_explicit(this + 11, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
      v23 = *(this + 10);
      if (v23 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2))
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 + 1;
      }

      *(this + 10) = v24;
      v25 = *(this + 25);
      if (v25)
      {
        (*(*v25 + 112))(v25, &v290);
      }

      if (v290 > 3)
      {
        switch(v290)
        {
          case 4:
            *(this + 223) = DWORD1(v290);
            break;
          case 7:
            if (*(this + 420) == 1)
            {
              LODWORD(v8) = DWORD1(v290);
              *(this + 107) = DWORD1(v290);
              *(*(this + 86) + 36) = LODWORD(v8);
            }

            break;
          case 8:
            if (BYTE4(v290))
            {
              v28 = 1;
              *(this + 825) = 1;
              v29 = *(this + 78);
              if (!v29)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v28 = (*(this + 819) ^ 1) & 1;
              *(this + 825) = v28;
              v29 = *(this + 78);
              if (!v29)
              {
LABEL_54:
                v37 = *(this + 82);
                if (v37)
                {
                  (*(*v37 + 48))(v37);
                }

                v38 = *(this + 84);
                if (v38)
                {
                  *(v38 + 80) = *(this + 825);
                }

                v39 = *(this + 80);
                if (v39)
                {
                  v40 = *(v39 + 48);
                  if (v40)
                  {
                    v41 = *(this + 825);
                    v42 = *(v40 + 72);
                    v43 = *(v40 + 80);
                    if (v42 != v43)
                    {
                      if (v41)
                      {
                        do
                        {
                          v44 = *v42;
                          if (*(*v42 + 16) != v41)
                          {
                            *(v44 + 16) = v41;
                            *(v44 + 17) = 1;
                          }

                          ++v42;
                        }

                        while (v42 != v43);
                      }

                      else
                      {
                        do
                        {
                          if (*(*v42 + 16) != v41)
                          {
                            *(*v42 + 16) = v41;
                          }

                          ++v42;
                        }

                        while (v42 != v43);
                      }
                    }

                    *(v40 + 20) = v41;
                  }
                }

                break;
              }
            }

            v33 = *(v29 + 64);
            v34 = *(v29 + 72) - v33;
            if (v34)
            {
              v35 = v34 >> 3;
              if (v35 <= 1)
              {
                v35 = 1;
              }

              if (v28)
              {
                do
                {
                  v36 = *v33;
                  if (*(*v33 + 40) != v28)
                  {
                    *(v36 + 40) = v28;
                    *(v36 + 41) = 1;
                  }

                  ++v33;
                  --v35;
                }

                while (v35);
              }

              else
              {
                do
                {
                  if (*(*v33 + 40) != v28)
                  {
                    *(*v33 + 40) = v28;
                  }

                  ++v33;
                  --v35;
                }

                while (v35);
              }
            }

            *(v29 + 40) = v28;
            goto LABEL_54;
        }
      }

      else
      {
        switch(v290)
        {
          case 1:
            if (*(this + 412))
            {
              LODWORD(v8) = DWORD1(v290);
              *(this + 104) = DWORD1(v290);
              if (*(this + 420))
              {
                v30 = *(this + 106);
                goto LABEL_37;
              }

              goto LABEL_38;
            }

            if (*(this + 420))
            {
              v30 = *(&v290 + 1);
              *(this + 106) = DWORD1(v290);
              LODWORD(v8) = 1.0;
LABEL_37:
              *&v8 = v30 * *&v8;
LABEL_38:
              v32 = *(this + 86);
              v10.i32[0] = 998277249;
              *v9.i32 = *&v8 * (*(v32 + 4) * 0.0039216);
              if (!*v32)
              {
                v9.i32[0] = SLODWORD(v8);
              }

              *(v32 + 8) = LODWORD(v8);
              *(v32 + 12) = v9.i32[0];
              *(v32 + 20) = v9.i32[0];
            }

            break;
          case 2:
            if (!*(this + 78) && (!*(this + 80) || (*(this + 545) & 1) == 0))
            {
              *&v8 = *(&v290 + 1) + 0.5;
              *(this + 119) = (*(&v290 + 1) + 0.5);
              v31 = *(this + 79);
              if (v31)
              {
                (*(*v31 + 48))(v31);
              }
            }

            break;
          case 3:
            v26 = *(this + 80);
            if (v26)
            {
              v27 = *(&v290 + 1);
              *(this + 143) = DWORD1(v290);
              *&v8 = __exp10f(v27 / 20.0);
              v9.i32[0] = *(v26 + 12);
              if (*v9.i32 != *&v8)
              {
                *(v26 + 168) = 0;
              }

              *(v26 + 12) = LODWORD(v8);
            }

            break;
        }
      }

      v15 = v16 + 1;
      if (!atomic_load_explicit(this + 11, memory_order_acquire))
      {
        if (v16 >= 0x63)
        {
          *(this + 825) = 1;
          v45 = *(this + 78);
          if (v45)
          {
            v46 = *(v45 + 64);
            v47 = *(v45 + 72) - v46;
            if (v47)
            {
              v48 = v47 >> 3;
              if (v48 <= 1)
              {
                v48 = 1;
              }

              do
              {
                if ((*(*v46 + 40) & 1) == 0)
                {
                  *(*v46 + 40) = 257;
                }

                v46 += 8;
                --v48;
              }

              while (v48);
            }

            *(v45 + 40) = 1;
          }

          v49 = *(this + 82);
          if (v49)
          {
            (*(*v49 + 48))(v49, 1);
          }

          v50 = *(this + 84);
          if (v50)
          {
            *(v50 + 80) = *(this + 825);
          }

          v51 = *(this + 80);
          if (v51)
          {
            v52 = *(v51 + 48);
            if (v52)
            {
              v53 = *(this + 825);
              v54 = *(v52 + 72);
              v55 = *(v52 + 80);
              if (v54 != v55)
              {
                if (v53)
                {
                  do
                  {
                    v56 = *v54;
                    if (*(*v54 + 16) != v53)
                    {
                      *(v56 + 16) = v53;
                      *(v56 + 17) = 1;
                    }

                    ++v54;
                  }

                  while (v54 != v55);
                }

                else
                {
                  do
                  {
                    if (*(*v54 + 16) != v53)
                    {
                      *(*v54 + 16) = v53;
                    }

                    ++v54;
                  }

                  while (v54 != v55);
                }
              }

              *(v52 + 20) = v53;
            }
          }
        }

        break;
      }
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  v58 = *(this + 104);
  v59 = *(this + 106);
  v60 = *(this + 81);
  if (v60)
  {
    if (*(this + 441) == 1 && (*(this + 818) & 1) == 0)
    {
      v61 = *(v58 + 56);
      if (v61)
      {
        v62 = 0;
        v64 = v60 + 8;
        v63 = *(v60 + 8);
        v65 = (*(v64 + 8) - v63) >> 3;
        while (v62 != v65)
        {
          v66 = *(v63 + 8 * v62);
          v67 = *v66;
          v68 = v66[1];
          if (v67 != v68)
          {
            v69 = *(v58 + 24);
            v70 = *(*(*(v58 + 80) + 8) + 8 * v62);
            if (v69)
            {
              do
              {
                LODWORD(v8) = *v67;
                v9.i32[0] = *(v67 + 4);
                v14.i32[0] = *(v67 + 28);
                v10.i32[0] = *(v67 + 32);
                v13.i32[0] = *(v67 + 20);
                v11.i32[0] = *(v67 + 24);
                v12.i32[0] = *(v67 + 8);
                v71 = -*(v67 + 12);
                v72 = -*(v67 + 16);
                v73 = v70;
                v74 = v69;
                do
                {
                  v75 = v11.f32[0];
                  v76 = *v10.i32;
                  v11.i32[0] = v13.i32[0];
                  v10.i32[0] = v14.i32[0];
                  v13.i32[0] = *v73;
                  *v14.i32 = ((((*v9.i32 * v11.f32[0]) + (*&v8 * *v73)) + (v12.f32[0] * v75)) + (v71 * *v14.i32)) + (v72 * v76);
                  *v73++ = v14.i32[0];
                  --v74;
                }

                while (v74);
                *(v67 + 20) = v13.i32[0];
                *(v67 + 24) = v11.i32[0];
                *(v67 + 28) = v14.i32[0];
                *(v67 + 32) = v10.i32[0];
                v67 += 36;
              }

              while (v67 != v68);
            }
          }

          if (++v62 == v61)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_425;
      }
    }
  }

LABEL_111:
  v77 = (this + 1016);
  v78 = *(this + 86);
  if (v78)
  {
    if (*(this + 432) != 1)
    {
LABEL_147:
      webrtc::AudioSamplesScaler::Process(v78 + 1, v58);
      goto LABEL_148;
    }

    v79 = v78->i32[1];
    v80 = *(this + 1020) == 1 && *v77 != v79;
    *(this + 1024) = v80;
    *(this + 254) = v79;
    *(this + 1020) = 1;
    if (*(this + 1032) == 1)
    {
      *(this + 1032) = 0;
    }

    v81 = *(this + 78);
    if (!v81)
    {
      v88 = *(this + 79);
      if (v88)
      {
        (**v88)(v88);
        v78 = *(this + 86);
      }

      goto LABEL_147;
    }

    v82 = *v81;
    if ((v82 & 1) == 0)
    {
      *(v81 + 9) = v79;
    }

    v83 = *(v81 + 8);
    v84 = *(v81 + 9) - v83;
    if (!v84)
    {
      goto LABEL_425;
    }

    v85 = v84 >> 3;
    if (v85 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v85;
    }

    if (v85 > 1)
    {
      v87 = v86 & 0xFFFFFFFFFFFFFFFELL;
      v89 = v83 + 1;
      v90 = v86 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v91 = *v89;
        *(*(v89 - 1) + 44) = v79;
        *(v91 + 44) = v79;
        v89 += 2;
        v90 -= 2;
      }

      while (v90);
      if (v85 == v87)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v87 = 0;
    }

    v92 = v86 - v87;
    v93 = &v83[v87];
    do
    {
      v94 = *v93++;
      *(v94 + 44) = v79;
      --v92;
    }

    while (v92);
LABEL_134:
    v95 = *(*v83 + 44);
    *(v81 + 11) = 0;
    if (v85 >= 2)
    {
      for (i = 1; i != v85; ++i)
      {
        v97 = *(v83[i] + 44);
        if (v97 < v95)
        {
          *(v81 + 11) = i;
          v95 = v97;
        }
      }
    }

    v98 = v81[8] != 1 || v95 <= 0;
    if (!v98 && v95 <= *(v81 + 1))
    {
      v95 = *(v81 + 1);
    }

    if (v82)
    {
      *(v81 + 9) = v95;
    }

    goto LABEL_147;
  }

LABEL_148:
  v99 = **(*(v58 + 80) + 8);
  v100 = *(this + 132);
  if (!v100)
  {
    goto LABEL_166;
  }

  if (*(this + 1520) == 1 && *(this + 189) == v100)
  {
    v101 = (v100 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v101 <= 6)
    {
LABEL_152:
      v8 = 0.0;
      v102 = v99;
      goto LABEL_157;
    }
  }

  else
  {
    *(this + 372) = 0;
    *(this + 187) = 0;
    *(this + 376) = 0;
    *(this + 189) = v100;
    *(this + 1520) = 1;
    v101 = (v100 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v101 <= 6)
    {
      goto LABEL_152;
    }
  }

  v103 = v101 + 1;
  v104 = (v101 + 1) & 0x7FFFFFFFFFFFFFF8;
  v102 = &v99->f32[v104];
  v105 = v99 + 1;
  v8 = 0.0;
  v9.i64[0] = 0xC7000000C7000000;
  v9.i64[1] = 0xC7000000C7000000;
  v10 = vdupq_n_s32(0x46FFFE00u);
  v106 = v104;
  do
  {
    v107 = vbslq_s8(vcgtq_f32(v9, v105[-1]), v9, v105[-1]);
    v108 = vbslq_s8(vcgtq_f32(v9, *v105), v9, *v105);
    v13 = vcgtq_f32(v107, v10);
    v14 = vcgtq_f32(v108, v10);
    *v107.i8 = vmovn_s32(vcvtq_s32_f32(vbslq_s8(v13, v10, v107)));
    *v108.i8 = vmovn_s32(vcvtq_s32_f32(vbslq_s8(v14, v10, v108)));
    v11 = vcvtq_f32_u32(vmull_s16(*v107.i8, *v107.i8));
    v13.i32[0] = v11.i32[3];
    v14.i32[0] = v11.i32[2];
    v12 = vcvtq_f32_u32(vmull_s16(*v108.i8, *v108.i8));
    *&v8 = (((((((*&v8 + v11.f32[0]) + v11.f32[1]) + v11.f32[2]) + v11.f32[3]) + v12.f32[0]) + v12.f32[1]) + v12.f32[2]) + v12.f32[3];
    v105 += 2;
    v106 -= 8;
  }

  while (v106);
  if (v103 != v104)
  {
LABEL_157:
    v109 = &v99->f32[v100];
    v9.i32[1] = -956301312;
    v10.i32[0] = 1191181824;
    do
    {
      v110 = *v102++;
      v111 = v110;
      if (v110 < -32768.0)
      {
        v111 = -32768.0;
      }

      if (v111 > 32767.0)
      {
        v111 = 32767.0;
      }

      v11.f32[0] = (v111 * v111);
      *&v8 = *&v8 + v11.f32[0];
    }

    while (v102 != v109);
  }

  *(this + 372) = *&v8 + *(this + 372);
  *(this + 187) += v100;
  v9.i32[0] = *(this + 376);
  if (*v9.i32 >= *&v8)
  {
    LODWORD(v8) = *(this + 376);
  }

  *(this + 376) = LODWORD(v8);
LABEL_166:
  v112 = *(this + 392);
  *(this + 392) = v112 + 1;
  if (v112 < 999)
  {
    goto LABEL_174;
  }

  *(this + 392) = 0;
  v113 = *(this + 187);
  if (v113)
  {
    v114 = *(this + 372) / v113;
    if (v114 <= 0.00021424)
    {
      v115 = 127;
    }

    else
    {
      v115 = ((log10f(v114 * 9.3132e-10) * -10.0) + 0.5);
    }

    if ((*(this + 1520) & 1) == 0)
    {
      goto LABEL_425;
    }

    *&v8 = *(this + 376) / *(this + 189);
    v9.i32[0] = 962635141;
    if (*&v8 <= 0.00021424)
    {
      v123 = 0x7F00000000;
    }

    else
    {
      *&v8 = log10f(*&v8 * 9.3132e-10);
      v9.i32[0] = 0.5;
      *&v8 = (*&v8 * -10.0) + 0.5;
      v123 = *&v8 << 32;
    }

    *(this + 372) = 0;
    *(this + 187) = 0;
    v117 = v123 | v115;
    *(this + 376) = 0;
  }

  else
  {
    v116 = *(this + 1520);
    *(this + 372) = 0;
    v117 = 0x7F0000007FLL;
    *(this + 376) = 0;
    if ((v116 & 1) == 0)
    {
      explicit = atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire);
      if (!explicit)
      {
        goto LABEL_191;
      }

LABEL_172:
      webrtc::metrics::HistogramAdd(explicit, v117);
      v119 = atomic_load_explicit(&qword_28100B8A8, memory_order_acquire);
      if (!v119)
      {
        goto LABEL_192;
      }

      goto LABEL_173;
    }
  }

  *(this + 1520) = 0;
  explicit = atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire);
  if (explicit)
  {
    goto LABEL_172;
  }

LABEL_191:
  v124 = 0;
  atomic_compare_exchange_strong(&_MergedGlobals_7, &v124, 0);
  v119 = atomic_load_explicit(&qword_28100B8A8, memory_order_acquire);
  if (v119)
  {
LABEL_173:
    webrtc::metrics::HistogramAdd(v119, SHIDWORD(v117));
LABEL_174:
    if (*(this + 1020) != 1)
    {
      goto LABEL_193;
    }

LABEL_175:
    if (*(this + 1648))
    {
      goto LABEL_193;
    }

    v120 = *(this + 254);
    if (*(this + 1660) == 1 && *(this + 414) != v120)
    {
      webrtc::metrics::HistogramAdd(*(this + 199), *(this + 254));
      if ((*(this + 1660) & 1) == 0)
      {
        goto LABEL_426;
      }

      v121 = v120 - *(this + 414);
      if (v121 < 0)
      {
        ++*(this + 394);
        *(this + 396) -= v121;
        v212 = *(this + 413);
        *(this + 413) = v212 + 1;
        if (v212 < 5999)
        {
          goto LABEL_183;
        }

        goto LABEL_182;
      }

      ++*(this + 395);
      *(this + 397) += v121;
    }

    v122 = *(this + 413);
    *(this + 413) = v122 + 1;
    if (v122 < 5999)
    {
LABEL_183:
      *(this + 414) = v120;
      *(this + 1660) = 1;
      goto LABEL_193;
    }

LABEL_182:
    webrtc::InputVolumeStatsReporter::LogVolumeUpdateStats((this + 1576));
    *(this + 413) = 0;
    *(this + 197) = 0;
    *(this + 198) = 0;
    goto LABEL_183;
  }

LABEL_192:
  v125 = 0;
  atomic_compare_exchange_strong(&qword_28100B8A8, &v125, 0);
  if (*(this + 1020) == 1)
  {
    goto LABEL_175;
  }

LABEL_193:
  v126 = *(this + 82);
  if (!v126)
  {
    goto LABEL_210;
  }

  v127 = *(this + 86);
  if (!v127)
  {
    if (*(this + 1024))
    {
      goto LABEL_201;
    }

LABEL_203:
    v132 = *(this + 224);
    v130 = *(this + 223);
    v131 = v132 >= 0 && v132 != v130;
    goto LABEL_209;
  }

  v128 = *(v127 + 12);
  if (!*(this + 1024))
  {
    v129 = *(this + 222);
    if (v129 == v128)
    {
      *(this + 222) = v128;
    }

    else
    {
      *(this + 222) = v128;
      if (v129 >= 0.0)
      {
        goto LABEL_201;
      }
    }

    goto LABEL_203;
  }

  *(this + 222) = v128;
LABEL_201:
  v130 = *(this + 223);
  v131 = 1;
LABEL_209:
  *(this + 884) = v131;
  *(this + 224) = v130;
  (*(*v126 + 8))(v126, v58);
LABEL_210:
  v134 = *(this + 78);
  if (v134)
  {
    webrtc::AgcManagerDirect::AnalyzePreProcess(v134, v58);
  }

  v135 = *(this + 80);
  if (v135 && *(this + 545) == 1 && *(this + 1020) == 1)
  {
    v136 = *v77;
    if (*(v135 + 2208) == 1)
    {
      *(v135 + 2208) = 0;
    }

    v137 = *(v135 + 48);
    if (v137)
    {
      webrtc::InputVolumeController::AnalyzeInputAudio(v137, v136, v58);
    }
  }

  if ((*(this + 579) & 1) != 0 || (*(this + 580) & 1) != 0 || (*(this + 581) & 1) != 0 || (*(this + 582) & 1) != 0 || *(this + 585) == 1)
  {
    v138 = *(this + 260);
    if (v138 == 48000 || v138 == 32000)
    {
      webrtc::SplittingFilter::Analysis(*(v58 + 96), *(v58 + 80), *(v58 + 88));
    }
  }

  if (*(this + 405) == 1)
  {
    v139 = *(this + 817);
    if (!*(this + 82))
    {
      goto LABEL_234;
    }
  }

  else
  {
    v139 = 0;
    if (!*(this + 82))
    {
      goto LABEL_234;
    }
  }

  if ((v139 & 1) == 0)
  {
    *(v58 + 56) = 1;
    *(*(v58 + 80) + 48) = 1;
    v140 = *(v58 + 88);
    if (v140)
    {
      *(v140 + 48) = 1;
    }
  }

LABEL_234:
  v141 = *(this + 81);
  if (v141 && (*(this + 441) != 1 || *(this + 818) == 1))
  {
    v142 = *(v58 + 56);
    if (v142)
    {
      v143 = 0;
      v144 = *(v58 + 88);
      v146 = v141 + 8;
      v145 = *(v141 + 8);
      v147 = (*(v146 + 8) - v145) >> 3;
      do
      {
        v148 = v144;
        if (!v144)
        {
          v148 = *(v58 + 80);
        }

        if (v143 == v147)
        {
          goto LABEL_425;
        }

        v149 = *(v145 + 8 * v143);
        v150 = *v149;
        v151 = v149[1];
        if (v150 != v151)
        {
          v152 = *(v58 + 72);
          v153 = *(*(v148 + 16) + 8 * *(v148 + 56) * v143);
          if (v152)
          {
            do
            {
              LODWORD(v8) = *v150;
              v9.i32[0] = *(v150 + 4);
              v14.i32[0] = *(v150 + 28);
              v10.i32[0] = *(v150 + 32);
              v13.i32[0] = *(v150 + 20);
              v11.i32[0] = *(v150 + 24);
              v12.i32[0] = *(v150 + 8);
              v154 = -*(v150 + 12);
              v155 = -*(v150 + 16);
              v156 = v153;
              v157 = v152;
              do
              {
                v158 = v11.f32[0];
                v159 = *v10.i32;
                v11.i32[0] = v13.i32[0];
                v10.i32[0] = v14.i32[0];
                v13.i32[0] = *v156;
                *v14.i32 = ((((*v9.i32 * v11.f32[0]) + (*&v8 * *v156)) + (v12.f32[0] * v158)) + (v154 * *v14.i32)) + (v155 * v159);
                *v156++ = v14.i32[0];
                --v157;
              }

              while (v157);
              *(v150 + 20) = v13.i32[0];
              *(v150 + 24) = v11.i32[0];
              *(v150 + 28) = v14.i32[0];
              *(v150 + 32) = v10.i32[0];
              v150 += 36;
            }

            while (v150 != v151);
          }
        }
      }

      while (++v143 != v142);
    }
  }

  v160 = *(this + 79);
  if (v160 && webrtc::GainControlImpl::AnalyzeCaptureAudio(v160, v58, v8, v9, *v10.i64, *v11.i64, *v12.i64, *v13.i64, v14))
  {
    goto LABEL_319;
  }

  if (*(this + 456) != 1 || !v59 || *(this + 83))
  {
    v161 = *(this + 84);
    if (v161)
    {
      webrtc::NoiseSuppressor::Analyze(v161, v58, v2);
    }
  }

  v162 = *(this + 83);
  if (v162)
  {
    if (*(this + 824) != 1)
    {
      goto LABEL_319;
    }

    v163 = *(this + 84);
    if (v163)
    {
      webrtc::NoiseSuppressor::Process(v163, v58, v2);
      v162 = *(this + 83);
    }

    *v164.i64 = (*(*this + 200))(this);
    webrtc::EchoControlMobileImpl::ProcessCaptureAudio(v162, v58, v165, v164, v166, v167, v168, v169);
    if (v170)
    {
      goto LABEL_319;
    }
  }

  else
  {
    if (*(this + 82))
    {
      (*(*this + 200))(this);
      if (*(this + 824) == 1)
      {
        v171 = *(this + 82);
        v172 = (*(*this + 200))(this);
        (*(*v171 + 40))(v171, v172);
      }

      (*(**(this + 82) + 24))(*(this + 82), v58, v59, *(this + 884));
    }

    if (*(this + 456) == 1)
    {
      if (v59)
      {
        v173 = *(this + 84);
        if (v173)
        {
          webrtc::NoiseSuppressor::Analyze(v173, v59, v2);
        }
      }
    }

    v174 = *(this + 84);
    if (v174)
    {
      webrtc::NoiseSuppressor::Process(v174, v58, v2);
    }
  }

  v175 = *(this + 78);
  if (!v175)
  {
    goto LABEL_277;
  }

  webrtc::AgcManagerDirect::Process(v175, v58, 0);
  v176 = *(this + 78);
  v177 = *(v176 + 44);
  v179 = v176 + 88;
  v178 = *(v176 + 88);
  if (v177 >= (*(v179 + 8) - v178) >> 3)
  {
    goto LABEL_425;
  }

  if ((*(v178 + 8 * v177) & 0x100000000) == 0)
  {
LABEL_277:
    v181 = *(this + 79);
    if (!v181 || !webrtc::GainControlImpl::ProcessCaptureAudio(v181, v58, 0, v8, v9, *v10.i64, *v11.i64, *v12.i64, *v13.i64, v14))
    {
      goto LABEL_279;
    }

LABEL_319:
    if ((StatusReg & 0x1000000) != 0)
    {
      return;
    }

    goto LABEL_320;
  }

  v180 = *(this + 79);
  if (v180)
  {
    (*(*v180 + 48))(v180);
    goto LABEL_277;
  }

LABEL_279:
  if ((*(this + 579) & 1) != 0 || (*(this + 580) & 1) != 0 || (*(this + 581) & 1) != 0 || (*(this + 582) & 1) != 0 || *(this + 585) == 1)
  {
    v182 = *(this + 260);
    if (v182 == 48000 || v182 == 32000)
    {
      webrtc::SplittingFilter::Synthesis(*(v58 + 96), *(v58 + 88), *(v58 + 80));
    }
  }

  if (*(this + 825) == 1)
  {
    if (*(this + 105))
    {
      v183 = *(this + 82);
      if (v183)
      {
        LOBYTE(v183) = (*(*v183 + 56))(v183);
      }

      if ((*(this + 579) & 1) != 0 || (*(this + 580) & 1) != 0 || (*(this + 581) & 1) != 0 || (*(this + 582) & 1) != 0 || (v183 & *(this + 585)) == 1)
      {
        webrtc::AudioBuffer::CopyTo(v58, *(this + 105), v2, v3, v4, v5, v6, v7);
      }

      v58 = *(this + 105);
    }

    v184 = *(this + 74);
    if (v184)
    {
      if (*(v58 + 24))
      {
        v185 = **(*(v58 + 80) + 8);
      }

      else
      {
        v185 = 0;
      }

      (*(*v184 + 48))(v184, v185);
    }

    v186 = *(this + 77);
    if (v186)
    {
      (*(*v186 + 8))(v186, v58);
    }

    v187 = *(this + 80);
    if (v187)
    {
      webrtc::GainController2::Process(v187, 0, *(this + 1024), v58, v4, v5, v6, v7);
    }

    v188 = *(this + 85);
    if (v188)
    {
      v189 = *(v58 + 56);
      if (v189)
      {
        v190 = *v188;
        v191 = (*(*(this + 85) + 8) - v190) >> 3;
        v192 = *(v58 + 24);
        if (v192)
        {
          v193 = 0;
          v194 = *(v58 + 80);
          while (v193 != v191)
          {
            v195 = *(v190 + 8 * v193);
            v196 = *v195;
            v197 = v195[1];
            if (v196 != v197)
            {
              v198 = *(*(v194 + 8) + 8 * v193);
              do
              {
                v199 = *v196;
                v200 = v196[1];
                v202 = v196[7];
                v201 = v196[8];
                v204 = v196[5];
                v203 = v196[6];
                v205 = v196[2];
                v206 = -v196[3];
                v207 = -v196[4];
                v208 = v198;
                v209 = v192;
                do
                {
                  v210 = v203;
                  v211 = v201;
                  v203 = v204;
                  v201 = v202;
                  v204 = *v208;
                  v202 = ((((v200 * v203) + (v199 * *v208)) + (v205 * v210)) + (v206 * v202)) + (v207 * v211);
                  *v208++ = v202;
                  --v209;
                }

                while (v209);
                v196[5] = v204;
                v196[6] = v203;
                v196[7] = v202;
                v196[8] = v201;
                v196 += 9;
              }

              while (v196 != v197);
            }

            if (++v193 == v189)
            {
              goto LABEL_333;
            }
          }
        }

        else
        {
          v213 = v189 - 1;
          if (v191 < v189 - 1)
          {
            v213 = (*(*(this + 85) + 8) - v190) >> 3;
          }

          if ((v213 + 1) >= 3)
          {
            v214 = v213 & 0xFFFFFFFFFFFFFFFELL;
            v215 = v190 + 8;
            v216 = v214;
            do
            {
              v215 += 16;
              v216 -= 2;
            }

            while (v216);
          }

          else
          {
            v214 = 0;
          }

          v217 = v189 - v214;
          v218 = v190 + 8 * v214;
          v219 = v191 - v214;
          while (v219)
          {
            v218 += 8;
            --v219;
            if (!--v217)
            {
              goto LABEL_333;
            }
          }
        }

        goto LABEL_425;
      }
    }

LABEL_333:
    v220 = *(this + 75);
    if (v220)
    {
      (*(*v220 + 8))(v220, v58);
    }

    v221 = **(*(v58 + 80) + 8);
    v222 = *(this + 132);
    if (!v222)
    {
LABEL_353:
      if (v112 < 999)
      {
        goto LABEL_371;
      }

      v239 = *(this + 192);
      if (v239)
      {
        v240 = *(this + 382) / v239;
        if (v240 <= 0.00021424)
        {
          v241 = 127;
        }

        else
        {
          v241 = ((log10f(v240 * 9.3132e-10) * -10.0) + 0.5);
        }

        if ((*(this + 1560) & 1) == 0)
        {
          goto LABEL_425;
        }

        v244 = *(this + 386) / *(this + 194);
        if (v244 <= 0.00021424)
        {
          v245 = 0x7F00000000;
        }

        else
        {
          v245 = ((log10f(v244 * 9.3132e-10) * -10.0) + 0.5) << 32;
        }

        *(this + 382) = 0;
        *(this + 192) = 0;
        v243 = v245 | v241;
        *(this + 386) = 0;
      }

      else
      {
        v242 = *(this + 1560);
        *(this + 382) = 0;
        v243 = 0x7F0000007FLL;
        *(this + 386) = 0;
        if ((v242 & 1) == 0)
        {
LABEL_366:
          v246 = atomic_load_explicit(&qword_28100B8B0, memory_order_acquire);
          if (v246)
          {
            webrtc::metrics::HistogramAdd(v246, v243);
            v247 = atomic_load_explicit(&qword_28100B8B8, memory_order_acquire);
            if (v247)
            {
LABEL_368:
              webrtc::metrics::HistogramAdd(v247, SHIDWORD(v243));
              goto LABEL_371;
            }
          }

          else
          {
            v248 = 0;
            atomic_compare_exchange_strong(&qword_28100B8B0, &v248, 0);
            v247 = atomic_load_explicit(&qword_28100B8B8, memory_order_acquire);
            if (v247)
            {
              goto LABEL_368;
            }
          }

          v249 = 0;
          atomic_compare_exchange_strong(&qword_28100B8B8, &v249, 0);
LABEL_371:
          v250 = *(this + 74);
          if (v250)
          {
            (*(*v250 + 56))(&v290);
            *(this + 122) = v290;
            *(this + 984) = BYTE8(v290);
            *(this + 124) = v291;
            *(this + 1000) = BYTE8(v291);
          }

          goto LABEL_373;
        }
      }

      *(this + 1560) = 0;
      goto LABEL_366;
    }

    if (*(this + 1560) != 1 || *(this + 194) != v222)
    {
      *(this + 382) = 0;
      *(this + 192) = 0;
      *(this + 386) = 0;
      *(this + 194) = v222;
      *(this + 1560) = 1;
    }

    v223 = (v222 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v223 > 6)
    {
      v226 = v223 + 1;
      v227 = (v223 + 1) & 0x7FFFFFFFFFFFFFF8;
      v225 = &v221->f32[v227];
      v228 = v221 + 1;
      v224 = 0.0;
      v229.i64[0] = 0xC7000000C7000000;
      v229.i64[1] = 0xC7000000C7000000;
      v230 = vdupq_n_s32(0x46FFFE00u);
      v231 = v227;
      do
      {
        v232 = vbslq_s8(vcgtq_f32(v229, v228[-1]), v229, v228[-1]);
        v233 = vbslq_s8(vcgtq_f32(v229, *v228), v229, *v228);
        *v232.i8 = vmovn_s32(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v232, v230), v230, v232)));
        *v233.i8 = vmovn_s32(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v233, v230), v230, v233)));
        v234 = vcvtq_f32_u32(vmull_s16(*v232.i8, *v232.i8));
        v235 = vcvtq_f32_u32(vmull_s16(*v233.i8, *v233.i8));
        v224 = (((((((v224 + v234.f32[0]) + v234.f32[1]) + v234.f32[2]) + v234.f32[3]) + v235.f32[0]) + v235.f32[1]) + v235.f32[2]) + v235.f32[3];
        v228 += 2;
        v231 -= 8;
      }

      while (v231);
      if (v226 == v227)
      {
LABEL_350:
        *(this + 382) = v224 + *(this + 382);
        *(this + 192) += v222;
        if (*(this + 386) >= v224)
        {
          v224 = *(this + 386);
        }

        *(this + 386) = v224;
        goto LABEL_353;
      }
    }

    else
    {
      v224 = 0.0;
      v225 = v221;
    }

    v236 = &v221->f32[v222];
    do
    {
      v237 = *v225++;
      v238 = v237;
      if (v237 < -32768.0)
      {
        v238 = -32768.0;
      }

      if (v238 > 32767.0)
      {
        v238 = 32767.0;
      }

      v224 = v224 + (v238 * v238);
    }

    while (v225 != v236);
    goto LABEL_350;
  }

LABEL_373:
  v251 = *(this + 82);
  if (v251)
  {
    v290 = 0uLL;
    *&v291 = 0;
    (*(*v251 + 32))(&v290);
    v252 = *(&v290 + 1);
    *(this + 114) = v290;
    *(this + 920) = 1;
    *(this + 116) = v252;
    *(this + 936) = 1;
    *(this + 252) = v291;
    *(this + 1012) = 1;
  }

  v288 = *(this + 968);
  *v289 = *(this + 984);
  *&v289[13] = *(this + 997);
  v284 = *(this + 904);
  v285 = *(this + 920);
  v286 = *(this + 936);
  v287 = *(this + 952);
  v253 = atomic_load_explicit(this + 162, memory_order_acquire);
  v254 = *(this + 163);
  v255 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 164) - v254) >> 4);
  if (v253 != v255)
  {
    v256 = *(this + 160);
    if (v255 <= v256)
    {
      goto LABEL_425;
    }

    v257 = (v254 + 112 * v256);
    v294 = v288;
    *v295 = *v289;
    *&v295[13] = *&v289[13];
    v290 = v284;
    v291 = v285;
    v292 = v286;
    v293 = v287;
    v257[1] = v285;
    v257[2] = v286;
    *v257 = v284;
    v258 = v293;
    v259 = v294;
    v260 = *&v295[16];
    v257[5] = *v295;
    v257[6] = v260;
    v257[3] = v258;
    v257[4] = v259;
    atomic_fetch_add_explicit(this + 162, 1uLL, memory_order_release);
    v261 = *(this + 160);
    if (v261 + 1 == 0x6DB6DB6DB6DB6DB7 * ((*(this + 164) - *(this + 163)) >> 4))
    {
      v262 = 0;
    }

    else
    {
      v262 = v261 + 1;
    }

    *(this + 160) = v262;
  }

  if (*(this + 1020))
  {
    v263 = *(this + 78);
    if (v263)
    {
      LODWORD(v264) = *(v263 + 36);
    }

    else
    {
      v266 = *(this + 79);
      if (!v266)
      {
        v268 = *(this + 80);
        if (v268 && *(this + 545) == 1)
        {
          v264 = *(v268 + 2204);
          *(this + 257) = v264;
          *(this + 1032) = BYTE4(v264);
          v265 = this + 1032;
          if ((v264 & 0x100000000) == 0)
          {
            goto LABEL_405;
          }
        }

        else
        {
          v269 = *(this + 1020);
          *(this + 1032) = v269;
          *(this + 257) = *v77;
          v265 = this + 1032;
          if ((v269 & 1) == 0)
          {
            goto LABEL_405;
          }

          LODWORD(v264) = *(this + 257);
        }

        goto LABEL_389;
      }

      LODWORD(v264) = (*(*v266 + 8))(v266);
    }

    *(this + 257) = v264;
    v265 = this + 1032;
    *(this + 1032) = 1;
LABEL_389:
    if (*(this + 1736))
    {
      goto LABEL_405;
    }

    if (*(this + 1748) != 1 || *(this + 436) == v264)
    {
      goto LABEL_402;
    }

    webrtc::metrics::HistogramAdd(*(this + 210), v264);
    if (*(this + 1748))
    {
      v267 = v264 - *(this + 436);
      if (v267 < 0)
      {
        ++*(this + 416);
        *(this + 418) -= v267;
      }

      else
      {
        ++*(this + 417);
        *(this + 419) += v267;
      }

LABEL_402:
      v270 = *(this + 435);
      *(this + 435) = v270 + 1;
      if (v270 >= 5999)
      {
        webrtc::InputVolumeStatsReporter::LogVolumeUpdateStats((this + 1664));
        *(this + 435) = 0;
        *(this + 208) = 0;
        *(this + 209) = 0;
      }

      *(this + 436) = v264;
      *(this + 1748) = 1;
      goto LABEL_405;
    }

LABEL_426:
    v283 = std::__throw_bad_optional_access[abi:sn200100]();
    webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(v283);
    return;
  }

  v265 = this + 1032;
  if (*(this + 1032) == 1)
  {
    *(this + 1032) = 0;
  }

LABEL_405:
  v271 = *(this + 86);
  if (!v271)
  {
    goto LABEL_417;
  }

  webrtc::AudioSamplesScaler::Process(v271 + 2, v58);
  if (*(this + 432) != 1)
  {
    goto LABEL_417;
  }

  if ((*v265 & 1) == 0)
  {
LABEL_425:
    __break(1u);
    goto LABEL_426;
  }

  v272 = *(this + 86);
  v273 = *(this + 257);
  if (v273 >= 0xFF)
  {
    v274 = 255;
  }

  else
  {
    v274 = *(this + 257);
  }

  if (v273 <= 0)
  {
    v275 = 0;
  }

  else
  {
    v275 = v274;
  }

  *(v272 + 4) = v275;
  v276 = *(v272 + 8);
  if (*v272)
  {
    v276 = v276 * (v275 * 0.0039216);
  }

  *(v272 + 12) = v276;
  *(v272 + 20) = v276;
LABEL_417:
  v277 = *(this + 825);
  if (*(this + 826) & 1) == 0 && (*(this + 825))
  {
    v278 = *(v58 + 56);
    if (v278)
    {
      v279 = *(v58 + 24);
      if (v279 >= 1)
      {
        v280 = *(*(v58 + 80) + 8);
        v281 = 4 * v279;
        do
        {
          v282 = *v280++;
          bzero(v282, v281);
          --v278;
        }

        while (v278);
      }
    }
  }

  *(this + 826) = v277;
  *(this + 824) = 0;
  if ((StatusReg & 0x1000000) == 0)
  {
LABEL_320:
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }
}

uint64_t webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(uint64_t this)
{
  v1 = this;
  if (*(this + 664))
  {
    v2 = *(this + 1752);
    for (i = v2 + 3; atomic_load_explicit(v2 + 3, memory_order_acquire); i = v2 + 3)
    {
      v4 = v2[2];
      v5 = v2[4];
      if (0xAAAAAAAAAAAAAAABLL * ((v2[5] - v5) >> 3) <= v4)
      {
        goto LABEL_75;
      }

      v6 = (v5 + 24 * v4);
      v7 = *(v1 + 1352);
      *(v1 + 1352) = *v6;
      *v6 = v7;
      v8 = *(v1 + 1360);
      *(v1 + 1360) = v6[1];
      v6[1] = v8;
      v9 = *(v1 + 1368);
      *(v1 + 1368) = v6[2];
      v6[2] = v9;
      atomic_fetch_add_explicit(i, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
      v10 = v2[2];
      if (v10 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v2[5] - v2[4]) >> 3))
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 + 1;
      }

      v2[2] = v11;
      v12 = *(v1 + 664);
      v13 = *(v1 + 1360) - *(v1 + 1352);
      if (v13)
      {
        v14 = *(v1 + 1352);
      }

      else
      {
        v14 = 0;
      }

      v15 = v12[1];
      v16 = v12[2];
      if (v15 != v16)
      {
        if (v14)
        {
          v17 = (v13 >> 1) / (*(v12[4] + 8) * *(v12[4] + 16));
          if (v17 == 160 || v17 == 80)
          {
            do
            {
              v18 = **v15;
              if (v18 && *(v18 + 336) == 42)
              {
                if (!*(v18 + 356))
                {
                  v19 = *(v18 + 376);
                  if (v19)
                  {
                    v20 = *v19;
                    v21 = *(v19 + 8) ? v19[2] - v20 + v19[1] : v19[1] - v20;
                  }

                  else
                  {
                    LODWORD(v21) = 0;
                  }

                  v22 = *(*(v18 + 384) + 568);
                  v23 = 8 * *(v18 + 346) * v22;
                  if (v23 - v21 > -80 * v22 + 256)
                  {
                    if (v19)
                    {
                      v24 = (v23 >> 1) - v21;
                      if (v24 <= 80)
                      {
                        v24 = 80;
                      }

                      if (v24 >= 800)
                      {
                        v25 = 800;
                      }

                      else
                      {
                        v25 = v24;
                      }

                      v26 = *(v19 + 4);
                      v27 = *(v19 + 8);
                      v28 = *v19;
                      v29 = *(v19 + 2);
                      v30 = v27 == 0;
                      if (v27)
                      {
                        v31 = *(v19 + 4);
                      }

                      else
                      {
                        v31 = 0;
                      }

                      if (v30)
                      {
                        v32 = *(v19 + 4);
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v33 = v31 - v28 + v29;
                      v34 = v29 - v28 - v32;
                      if (v33 >= -v25)
                      {
                        v35 = -v25;
                      }

                      else
                      {
                        v35 = v33;
                      }

                      if (v35 <= v34)
                      {
                        v35 = v34;
                      }

                      v36 = v35 + v28;
                      if (v35 + v28 <= v26)
                      {
                        v37 = 0;
                      }

                      else
                      {
                        v37 = *(v19 + 4);
                      }

                      v38 = v36 - v37;
                      if (v36 > v26 || v38 < 0)
                      {
                        *(v19 + 8) = v38 >> 31;
                      }

                      *v19 = (v26 & (v38 >> 31)) + v38;
                    }

                    *(v18 + 364) = 1;
                  }
                }

                this = WebRtc_WriteBuffer(*(v18 + 376), v14, v17);
              }

              ++v15;
              v14 += 2 * v17;
            }

            while (v15 != v16);
          }
        }
      }

      v2 = *(v1 + 1752);
    }
  }

  if (*(v1 + 632))
  {
    v39 = *(v1 + 1760);
    for (j = v39 + 3; atomic_load_explicit(v39 + 3, memory_order_acquire); j = v39 + 3)
    {
      v41 = v39[2];
      v42 = v39[4];
      if (0xAAAAAAAAAAAAAAABLL * ((v39[5] - v42) >> 3) <= v41)
      {
        goto LABEL_75;
      }

      v43 = (v42 + 24 * v41);
      v44 = *(v1 + 1408);
      *(v1 + 1408) = *v43;
      *v43 = v44;
      v45 = *(v1 + 1416);
      *(v1 + 1416) = v43[1];
      v43[1] = v45;
      v46 = *(v1 + 1424);
      *(v1 + 1424) = v43[2];
      v43[2] = v46;
      atomic_fetch_add_explicit(j, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
      v47 = v39[2];
      if (v47 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v39[5] - v39[4]) >> 3))
      {
        v48 = 0;
      }

      else
      {
        v48 = v47 + 1;
      }

      v39[2] = v48;
      v49 = *(v1 + 1416) - *(v1 + 1408);
      if (v49)
      {
        v50 = *(v1 + 1408);
      }

      else
      {
        v50 = 0;
      }

      this = webrtc::GainControlImpl::ProcessRenderAudio(*(v1 + 632), v50, v49 >> 1);
      v39 = *(v1 + 1760);
    }
  }

  if (*(v1 + 592))
  {
    v51 = *(v1 + 1768);
    v52 = v51 + 3;
    if (atomic_load_explicit(v51 + 3, memory_order_acquire))
    {
      while (1)
      {
        v53 = v51[2];
        v54 = v51[4];
        if (0xAAAAAAAAAAAAAAABLL * ((v51[5] - v54) >> 3) <= v53)
        {
          break;
        }

        v55 = (v54 + 24 * v53);
        v56 = *(v1 + 1464);
        *(v1 + 1464) = *v55;
        *v55 = v56;
        v57 = *(v1 + 1472);
        *(v1 + 1472) = v55[1];
        v55[1] = v57;
        v58 = *(v1 + 1480);
        *(v1 + 1480) = v55[2];
        v55[2] = v58;
        atomic_fetch_add_explicit(v52, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
        v59 = v51[2];
        if (v59 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v51[5] - v51[4]) >> 3))
        {
          v60 = 0;
        }

        else
        {
          v60 = v59 + 1;
        }

        v51[2] = v60;
        v61 = *(v1 + 1472) - *(v1 + 1464);
        if (v61)
        {
          v62 = *(v1 + 1464);
        }

        else
        {
          v62 = 0;
        }

        this = (*(**(v1 + 592) + 40))(*(v1 + 592), v62, v61 >> 2);
        v51 = *(v1 + 1768);
        v52 = v51 + 3;
        if (!atomic_load_explicit(v51 + 3, memory_order_acquire))
        {
          return this;
        }
      }

LABEL_75:
      __break(1u);
    }
  }

  return this;
}

uint64_t webrtc::AudioProcessingImpl::ProcessStream(uint64_t a1, unsigned __int16 *__src, uint64_t a3, uint64_t a4, char *a5)
{
  if (!result)
  {
    webrtc::AudioProcessingImpl::MaybeInitializeCapture(a1, a3, a4);
    pthread_mutex_lock((a1 + 336));
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
    if ((StatusReg & 0x1000000) == 0)
    {
      _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
    }

    if (*(a1 + 200))
    {
      webrtc::AudioProcessingImpl::WriteAecDumpConfigMessage(a1, 0);
      (*(**(a1 + 200) + 56))(*(a1 + 200), __src, *(a3 + 8), *(a3 + 16));
      v17[0] = *(a1 + 1068);
      v17[1] = 0;
      v17[2] = *(a1 + 1016);
      v18 = *(a1 + 1020);
      v19 = *(a1 + 827);
      (*(**(a1 + 200) + 72))(*(a1 + 200), v17);
    }

    webrtc::AudioBuffer::CopyFrom(*(a1 + 832), __src, a3);
    v12 = *(a1 + 840);
    if (v12)
    {
      webrtc::AudioBuffer::CopyFrom(v12, __src, a3);
    }

    webrtc::AudioProcessingImpl::ProcessCaptureStreamLocked(a1);
    v14 = v13;
    if (!v13)
    {
      if ((*(a1 + 579) & 1) != 0 || (*(a1 + 580) & 1) != 0 || (*(a1 + 581) & 1) != 0 || (*(a1 + 582) & 1) != 0 || (*(a1 + 585) & 1) != 0 || (*(a1 + 583) & 1) != 0 || (*(a1 + 576) & 1) != 0 || *(a1 + 584) == 1)
      {
        v15 = *(a1 + 840);
        if (!v15)
        {
          v15 = *(a1 + 832);
        }

        webrtc::AudioBuffer::CopyTo(v15, a4, a5);
      }

      v16 = *(a1 + 200);
      if (v16)
      {
        (*(*v16 + 64))(v16, a5, *(a4 + 8), *(a4 + 16));
        (*(**(a1 + 200) + 80))(*(a1 + 200));
      }
    }

    if ((StatusReg & 0x1000000) == 0)
    {
      _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
    }

    pthread_mutex_unlock((a1 + 336));
    return v14;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::HandleUnsupportedAudioFormats(unsigned __int16 *__src, int a2, uint64_t a3, uint64_t a4, char *__dst)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  v7 = a2 >> 6 < 0x7D || a2 > 0x5DC00;
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  if (a2 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2;
  }

  if ((v5 & 0x80000000) != 0)
  {
    v10 = 2;
  }

  else if (v6)
  {
    if (v5 >> 6 >= 0x7D)
    {
      v10 = v5 > 0x5DC00;
      if (!v9 && v5 <= 0x5DC00)
      {
        v11 = 0;
        if (v6 == 1 || v6 == a3)
        {
          return v11;
        }

        v11 = 4294967287;
        goto LABEL_32;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 3;
  }

  if (v9 - 1 >= 2)
  {
    if (v9)
    {
      v11 = 4294967287;
      if (v10 < 2)
      {
        goto LABEL_35;
      }

      return v11;
    }

    if (v10 - 1 >= 2)
    {
      v11 = 4294967287;
      if (v10)
      {
        return v11;
      }
    }

    else
    {
      v11 = 4294967289;
      if (v10 > 1)
      {
        return v11;
      }
    }
  }

  else
  {
    v11 = 4294967289;
    if (v10 > 1)
    {
      return v11;
    }

    if (v9 > 1)
    {
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v5 == a2)
  {
    v14 = *(a4 + 16);
    if (v6 == a3)
    {
      memcpy(__dst, __src, 2 * a3 * v14);
      return v11;
    }

    if (v14 && v6)
    {
      v15 = 0;
      v16 = (__dst + 16);
      v17 = 2 * v6;
      do
      {
        v18 = __src[v15 * a3];
        if (v6 >= 4)
        {
          if (v6 < 0x10)
          {
            v20 = 0;
LABEL_48:
            v24 = vdup_n_s16(v18);
            v25 = &__dst[2 * v20];
            v26 = v20 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v25++ = v24;
              v26 += 4;
            }

            while (v26);
            v19 = v6 & 0xFFFFFFFFFFFFFFFCLL;
            if (v6 == (v6 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_39;
            }

            goto LABEL_51;
          }

          v21 = vdupq_n_s16(v18);
          v22 = v6 & 0xFFFFFFFFFFFFFFF0;
          v23 = v16;
          do
          {
            v23[-1] = v21;
            *v23 = v21;
            v23 += 2;
            v22 -= 16;
          }

          while (v22);
          if (v6 == (v6 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_39;
          }

          v20 = v6 & 0xFFFFFFFFFFFFFFF0;
          v19 = v6 & 0xFFFFFFFFFFFFFFF0;
          if ((v6 & 0xC) != 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v19 = 0;
        }

        do
        {
LABEL_51:
          *&__dst[2 * v19++] = v18;
        }

        while (v6 != v19);
LABEL_39:
        ++v15;
        v16 = (v16 + v17);
        __dst += v17;
      }

      while (v15 != v14);
    }

    return v11;
  }

LABEL_35:
  bzero(__dst, 2 * v6 * *(a4 + 16));
  return v11;
}

uint64_t webrtc::AudioProcessingImpl::AnalyzeReverseStream(uint64_t a1, uint64_t a2, __int128 *a3)
{
  pthread_mutex_lock((a1 + 272));
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  if ((*a3 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if (!*(a3 + 1))
  {
    v7 = 4294967287;
    if ((StatusReg & 0x1000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((*a3 - 384001) < 0xFFFA433F)
  {
LABEL_6:
    v7 = 4294967289;
    if ((StatusReg & 0x1000000) == 0)
    {
LABEL_7:
      _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
    }
  }

  else
  {
    v9 = *(a1 + 712);
    v20 = *(a1 + 696);
    v21 = v9;
    v10 = *a3;
    v22 = *(a1 + 728);
    v23 = v10;
    v24 = *(a3 + 2);
    v25 = v10;
    v26 = v24;
    if (v20 != *(a1 + 696) || *(&v20 + 1) != *(a1 + 704) || DWORD2(v21) != *(a1 + 720) || v22 != *(a1 + 728) || v23 != *(a1 + 744) || *(&v23 + 1) != *(a1 + 752) || v25 != *(a1 + 768) || *(&v25 + 1) != *(a1 + 776))
    {
      pthread_mutex_lock((a1 + 336));
      webrtc::AudioProcessingImpl::InitializeLocked(a1, &v20);
      pthread_mutex_unlock((a1 + 336));
    }

    v11 = *(a1 + 200);
    if (v11)
    {
      (*(*v11 + 104))(v11, a2, *(a1 + 752), *(a1 + 760));
    }

    webrtc::AudioBuffer::CopyFrom(*(a1 + 1088), a2, a1 + 744);
    webrtc::AudioProcessingImpl::ProcessRenderStreamLocked(a1, v12, v13, v14, v15, v16, v17, v18, v19);
    v7 = 0;
    if ((StatusReg & 0x1000000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 272));
  return v7;
}

uint64_t webrtc::AudioProcessingImpl::ProcessReverseStream(uint64_t a1, const void **a2, __int128 *a3, uint64_t a4, void **a5)
{
  pthread_mutex_lock((a1 + 272));
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  if (!v11)
  {
    v12 = *(a1 + 712);
    v33 = *(a1 + 696);
    v34 = v12;
    v13 = *a3;
    v35 = *(a1 + 728);
    v36 = v13;
    v37 = *(a3 + 2);
    v38 = *a4;
    v39 = *(a4 + 16);
    if (v33 != *(a1 + 696) || *(&v33 + 1) != *(a1 + 704) || DWORD2(v34) != *(a1 + 720) || v35 != *(a1 + 728) || v36 != *(a1 + 744) || *(&v36 + 1) != *(a1 + 752) || v38 != *(a1 + 768) || *(&v38 + 1) != *(a1 + 776))
    {
      pthread_mutex_lock((a1 + 336));
      webrtc::AudioProcessingImpl::InitializeLocked(a1, &v33);
      pthread_mutex_unlock((a1 + 336));
    }

    v14 = *(a1 + 200);
    if (v14)
    {
      (*(*v14 + 104))(v14, a2, *(a1 + 752), *(a1 + 760));
    }

    webrtc::AudioBuffer::CopyFrom(*(a1 + 1088), a2, a1 + 744);
    webrtc::AudioProcessingImpl::ProcessRenderStreamLocked(a1, v15, v16, v17, v18, v19, v20, v21, v22);
    if (*(a1 + 577) == 1)
    {
      webrtc::AudioBuffer::CopyTo(*(a1 + 1088), a1 + 768, a5, v23, v24, v25, v26, v27);
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    if (*(a1 + 744) != *(a1 + 768) || *(a1 + 752) != *(a1 + 776))
    {
      (*(**(a1 + 1080) + 16))(*(a1 + 1080), a2, *(a3 + 2) * *(a3 + 1), a5, *(a4 + 16) * *(a4 + 8));
      goto LABEL_26;
    }

    v28 = *(a3 + 1);
    if (v28 < 1)
    {
      goto LABEL_26;
    }

    v29 = *(a3 + 2);
    if (!v29)
    {
      goto LABEL_26;
    }

    v30 = 4 * v29;
    v31 = v28 & 0x7FFFFFFF;
    do
    {
      if (*a2 != *a5)
      {
        memmove(*a5, *a2, v30);
      }

      v11 = 0;
      ++a5;
      ++a2;
      --v31;
    }

    while (v31);
  }

LABEL_27:
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  pthread_mutex_unlock((a1 + 272));
  return v11;
}

uint64_t (***webrtc::AudioProcessingImpl::ProcessRenderStreamLocked(webrtc::AudioProcessingImpl *this, __n128 a2, __n128 a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, double a7, double a8, int8x16_t a9))(void, uint64_t)
{
  v11 = *(this + 136);
  v100 = 0;
  while (atomic_load_explicit(this + 18, memory_order_acquire))
  {
    v12 = *(this + 17);
    v13 = *(this + 19);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v13) >> 2) <= v12)
    {
      goto LABEL_80;
    }

    v14 = (v13 + 12 * v12);
    v15 = v101;
    v16 = v100;
    v17 = *(v14 + 2);
    v100 = *v14;
    v101 = v17;
    *v14 = v16;
    *(v14 + 2) = v15;
    atomic_fetch_add_explicit(this + 18, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    v18 = *(this + 17);
    if (v18 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - *(this + 19)) >> 2))
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 + 1;
    }

    *(this + 17) = v19;
    v20 = *(this + 25);
    if (v20)
    {
      (*(*v20 + 112))(v20, &v100);
    }

    if ((v100 - 4) <= 2)
    {
      v21 = *(this + 76);
      if (v21)
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v101;
        (*(*v21 + 24))(v21, v100, v9);
      }
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  v23 = *(this + 76);
  if (v23)
  {
    (*(*v23 + 8))(v23, v11);
  }

  if (*(this + 74))
  {
    v24 = *(v11 + 24);
    v25 = *(*(v11 + 80) + 8);
    v26 = *(this + 180);
    *(this + 181) = v26;
    if (v24 >= 1)
    {
      v27 = *v25;
      v28 = 4 * v24;
      v29 = *(this + 182) - v26;
      if (v24 > v29 >> 2)
      {
        if (!(v24 >> 62))
        {
          v30 = v29 >> 1;
          if (v29 >> 1 <= v24)
          {
            v30 = v24;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v31 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v30;
          }

          if (!(v31 >> 62))
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_81:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v32 = (v28 - 4) >> 2;
      if (-v26 >> 2 < v32)
      {
        v32 = -v26 >> 2;
      }

      if (v32 < 8)
      {
        v33 = v27;
      }

      else
      {
        v33 = v27;
        if ((v26 - v27) >= 0x20)
        {
          v34 = v32 + 1;
          v35 = (v32 + 1) & 7;
          if (!v35)
          {
            v35 = 8;
          }

          v36 = v34 - v35;
          v33 = v27 + v36;
          v37 = (v26 + 4 * v36);
          v38 = (v26 + 16);
          v39 = v27 + 1;
          do
          {
            a2 = v39[-1];
            a3 = *v39;
            v38[-1] = a2;
            *v38 = a3;
            v38 += 2;
            v39 += 2;
            v36 -= 8;
          }

          while (v36);
          v26 = v37;
        }
      }

      v40 = v26;
      do
      {
        if (!v40)
        {
          goto LABEL_80;
        }

        v41 = *v33++;
        a2.n128_u32[0] = v41;
        *v40++ = v41;
        v26 += 4;
      }

      while (v33 != (v27 + v28));
      *(this + 181) = v26;
    }

    v42 = *(this + 221);
    v43 = v42 + 3;
    explicit = atomic_load_explicit(v42 + 3, memory_order_acquire);
    v45 = v42 + 4;
    v46 = v42[4];
    v47 = v42 + 5;
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v42[5] - v46) >> 3);
    if (explicit != v48 || (pthread_mutex_lock((this + 336)), webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(this), pthread_mutex_unlock((this + 336)), v42 = *(this + 221), v43 = v42 + 3, v49 = atomic_load_explicit(v42 + 3, memory_order_acquire), v45 = v42 + 4, v46 = v42[4], v47 = v42 + 5, v48 = 0xAAAAAAAAAAAAAAABLL * ((v42[5] - v46) >> 3), v49 != v48))
    {
      v52 = v42[1];
      v50 = v42 + 1;
      v51 = v52;
      if (v48 <= v52)
      {
        goto LABEL_80;
      }

      v53 = (v46 + 24 * v51);
      v54 = *(this + 180);
      *(this + 180) = *v53;
      *v53 = v54;
      v55 = *(this + 181);
      *(this + 181) = v53[1];
      v53[1] = v55;
      v56 = *(this + 182);
      *(this + 182) = v53[2];
      v53[2] = v56;
      atomic_fetch_add_explicit(v43, 1uLL, memory_order_release);
      if (*v50 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*v47 - *v45) >> 3))
      {
        v57 = 0;
      }

      else
      {
        v57 = *v50 + 1;
      }

      *v50 = v57;
    }
  }

  v58 = *(this + 580);
  if ((v58 & 1) != 0 || (*(this + 582) & 1) != 0 || *(this + 585) == 1)
  {
    v59 = *(this + 198);
    if (v59 == 48000 || v59 == 32000)
    {
      webrtc::SplittingFilter::Analysis(*(v11 + 96), *(v11 + 80), *(v11 + 88));
      v58 = *(this + 580);
    }

    if (v58)
    {
      goto LABEL_85;
    }
  }

  if ((*(this + 582) & 1) != 0 || *(this + 585) == 1)
  {
LABEL_85:
    if (*(this + 83))
    {
      v60 = (*(*this + 88))(this);
      v61 = (*(*this + 96))(this);
      webrtc::EchoControlMobileImpl::PackRenderAudioBuffer(v11, v60, v62, this + 1328, v61, v63, v64, v65, v66);
      v67 = *(this + 219);
      v68 = v67 + 3;
      v69 = atomic_load_explicit(v67 + 3, memory_order_acquire);
      v70 = v67 + 4;
      v71 = v67[4];
      v72 = v67 + 5;
      v73 = 0xAAAAAAAAAAAAAAABLL * ((v67[5] - v71) >> 3);
      if (v69 != v73 || (pthread_mutex_lock((this + 336)), webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(this), pthread_mutex_unlock((this + 336)), v67 = *(this + 219), v68 = v67 + 3, v74 = atomic_load_explicit(v67 + 3, memory_order_acquire), v70 = v67 + 4, v71 = v67[4], v72 = v67 + 5, v73 = 0xAAAAAAAAAAAAAAABLL * ((v67[5] - v71) >> 3), v74 != v73))
      {
        v77 = v67[1];
        v75 = v67 + 1;
        v76 = v77;
        if (v73 <= v77)
        {
          goto LABEL_80;
        }

        v78 = (v71 + 24 * v76);
        v79 = *(this + 166);
        *(this + 166) = *v78;
        *v78 = v79;
        v80 = *(this + 167);
        *(this + 167) = v78[1];
        v78[1] = v80;
        v81 = *(this + 168);
        *(this + 168) = v78[2];
        v78[2] = v81;
        atomic_fetch_add_explicit(v68, 1uLL, memory_order_release);
        if (*v75 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*v72 - *v70) >> 3))
        {
          v82 = 0;
        }

        else
        {
          v82 = *v75 + 1;
        }

        *v75 = v82;
      }
    }

    if (*(this + 78))
    {
      goto LABEL_75;
    }

    if (!*(this + 79))
    {
      goto LABEL_75;
    }

    webrtc::GainControlImpl::PackRenderAudioBuffer(v11, this + 173, a2.n128_f64[0], a3.n128_f64[0], a4, a5, a6, a7, a8, a9);
    v83 = *(this + 220);
    v84 = v83 + 3;
    v85 = atomic_load_explicit(v83 + 3, memory_order_acquire);
    v86 = v83 + 4;
    v87 = v83[4];
    v88 = v83 + 5;
    v89 = 0xAAAAAAAAAAAAAAABLL * ((v83[5] - v87) >> 3);
    if (v85 == v89)
    {
      pthread_mutex_lock((this + 336));
      webrtc::AudioProcessingImpl::EmptyQueuedRenderAudioLocked(this);
      pthread_mutex_unlock((this + 336));
      v83 = *(this + 220);
      v84 = v83 + 3;
      v90 = atomic_load_explicit(v83 + 3, memory_order_acquire);
      v86 = v83 + 4;
      v87 = v83[4];
      v88 = v83 + 5;
      v89 = 0xAAAAAAAAAAAAAAABLL * ((v83[5] - v87) >> 3);
      if (v90 == v89)
      {
        goto LABEL_75;
      }
    }

    v93 = v83[1];
    v91 = v83 + 1;
    v92 = v93;
    if (v89 > v93)
    {
      v94 = (v87 + 24 * v92);
      v95 = *(this + 173);
      *(this + 173) = *v94;
      *v94 = v95;
      v96 = *(this + 174);
      *(this + 174) = v94[1];
      v94[1] = v96;
      v97 = *(this + 175);
      *(this + 175) = v94[2];
      v94[2] = v97;
      atomic_fetch_add_explicit(v84, 1uLL, memory_order_release);
      if (*v91 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*v88 - *v86) >> 3))
      {
        v98 = 0;
      }

      else
      {
        v98 = *v91 + 1;
      }

      *v91 = v98;
      goto LABEL_75;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_75:
  result = *(this + 82);
  if (result)
  {
    result = (**result)(result, v11);
  }

  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  return result;
}

uint64_t webrtc::AudioProcessingImpl::ProcessReverseStream(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char *a5)
{
  pthread_mutex_lock((a1 + 272));
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
  }

  if (!v11)
  {
    v12 = *(a1 + 712);
    v24 = *(a1 + 696);
    v25 = v12;
    v13 = *a3;
    v26 = *(a1 + 728);
    v27 = v13;
    v28 = *(a3 + 16);
    v29 = *a4;
    v30 = *(a4 + 16);
    if (v24 != *(a1 + 696) || *(&v24 + 1) != *(a1 + 704) || DWORD2(v25) != *(a1 + 720) || v26 != *(a1 + 728) || v27 != *(a1 + 744) || *(&v27 + 1) != *(a1 + 752) || v29 != *(a1 + 768) || *(&v29 + 1) != *(a1 + 776))
    {
      pthread_mutex_lock((a1 + 336));
      webrtc::AudioProcessingImpl::InitializeLocked(a1, &v24);
      pthread_mutex_unlock((a1 + 336));
    }

    v14 = *(a1 + 200);
    if (v14)
    {
      (*(*v14 + 88))(v14, a2, *(a3 + 16), *(a3 + 8));
    }

    webrtc::AudioBuffer::CopyFrom(*(a1 + 1088), a2, a3);
    webrtc::AudioProcessingImpl::ProcessRenderStreamLocked(a1, v15, v16, v17, v18, v19, v20, v21, v22);
    if (*(a1 + 577) == 1)
    {
      webrtc::AudioBuffer::CopyTo(*(a1 + 1088), a4, a5);
    }
  }

  if ((StatusReg & 0x1000000) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  pthread_mutex_unlock((a1 + 272));
  return v11;
}

uint64_t webrtc::AudioProcessingImpl::set_stream_delay_ms(webrtc::AudioProcessingImpl *this, int a2)
{
  pthread_mutex_lock((this + 336));
  *(this + 824) = 1;
  v4 = a2 & ~(a2 >> 31);
  if (v4 >= 500)
  {
    v4 = 500;
  }

  if (a2 <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967283;
  }

  *(this + 267) = v4;
  pthread_mutex_unlock((this + 336));
  return v5;
}

BOOL webrtc::AudioProcessingImpl::GetLinearAecOutput(uint64_t a1, float32x4_t *a2)
{
  pthread_mutex_lock((a1 + 336));
  v4 = *(a1 + 848);
  if (v4)
  {
    v5 = v4[7];
    if (v5)
    {
      v6 = v4[3];
      if (v6)
      {
        v7 = 0;
        v8 = *(v4[10] + 8);
        v9 = a2 + 1;
        v10.i64[0] = 0x4700000047000000;
        v10.i64[1] = 0x4700000047000000;
        v11.i64[0] = 0xC7000000C7000000;
        v11.i64[1] = 0xC7000000C7000000;
        v12.i64[0] = 0x3800000038000000;
        v12.i64[1] = 0x3800000038000000;
        v13 = a2;
        while (1)
        {
          v14 = *(v8 + 8 * v7);
          if (v6 < 8 || (&a2[40 * v7] - v14) < 0x20)
          {
            break;
          }

          v22 = v14 + 1;
          v23 = v6 & 0xFFFFFFFFFFFFFFF8;
          v24 = v9;
          do
          {
            v25 = vbslq_s8(vcgtq_f32(v22[-1], v10), v10, v22[-1]);
            v26 = vbslq_s8(vcgtq_f32(*v22, v10), v10, *v22);
            v24[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(v11, v25), v11, v25), v12);
            *v24 = vmulq_f32(vbslq_s8(vcgtq_f32(v11, v26), v11, v26), v12);
            v22 += 2;
            v24 += 2;
            v23 -= 8;
          }

          while (v23);
          v15 = v6 & 0xFFFFFFFFFFFFFFF8;
          if (v6 != (v6 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_9;
          }

LABEL_5:
          ++v7;
          v9 += 40;
          v13 += 40;
          if (v7 == v5)
          {
            goto LABEL_22;
          }
        }

        v15 = 0;
LABEL_9:
        v16 = v6 - v15;
        v17 = v15;
        v18 = &v13->f32[v15];
        v19 = &v14->f32[v17];
        do
        {
          v20 = *v19++;
          v21 = v20;
          if (v20 > 32768.0)
          {
            v21 = 32768.0;
          }

          if (v21 < -32768.0)
          {
            v21 = -32768.0;
          }

          *v18++ = v21 * 0.000030518;
          --v16;
        }

        while (v16);
        goto LABEL_5;
      }
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
  }

LABEL_22:
  pthread_mutex_unlock((a1 + 336));
  return v4 != 0;
}

uint64_t webrtc::AudioProcessingImpl::set_stream_key_pressed(webrtc::AudioProcessingImpl *this, char a2)
{
  pthread_mutex_lock((this + 336));
  *(this + 827) = a2;

  return pthread_mutex_unlock((this + 336));
}

uint64_t webrtc::AudioProcessingImpl::set_stream_analog_level(webrtc::AudioProcessingImpl *this, uint64_t a2)
{
  result = pthread_mutex_lock((this + 336));
  v5 = *(this + 1020) == 1 && *(this + 254) != a2;
  *(this + 1024) = v5;
  *(this + 254) = a2;
  *(this + 1020) = 1;
  if (*(this + 1032) == 1)
  {
    *(this + 1032) = 0;
  }

  v6 = *(this + 78);
  if (!v6)
  {
    v13 = *(this + 79);
    if (v13)
    {
      (**v13)(v13, a2);
    }

    goto LABEL_17;
  }

  v7 = *v6;
  if ((v7 & 1) == 0)
  {
    *(v6 + 9) = a2;
  }

  v8 = *(v6 + 8);
  v9 = *(v6 + 9) - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 > 1)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      v15 = v8 + 1;
      v16 = v11 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v17 = *v15;
        *(*(v15 - 1) + 44) = a2;
        *(v17 + 44) = a2;
        v15 += 2;
        v16 -= 2;
      }

      while (v16);
      if (v10 == v12)
      {
LABEL_25:
        v21 = *(*v8 + 44);
        *(v6 + 11) = 0;
        if (v10 >= 2)
        {
          for (i = 1; i != v10; ++i)
          {
            v23 = *(v8[i] + 44);
            if (v23 < v21)
            {
              *(v6 + 11) = i;
              v21 = v23;
            }
          }
        }

        v24 = v6[8] != 1 || v21 <= 0;
        if (!v24 && v21 <= *(v6 + 1))
        {
          v21 = *(v6 + 1);
        }

        if (v7)
        {
          *(v6 + 9) = v21;
          v14 = (this + 336);

          return pthread_mutex_unlock(v14);
        }

LABEL_17:
        v14 = (this + 336);

        return pthread_mutex_unlock(v14);
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = v11 - v12;
    v19 = &v8[v12];
    do
    {
      v20 = *v19++;
      *(v20 + 44) = a2;
      --v18;
    }

    while (v18);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::AudioProcessingImpl::recommended_stream_analog_level(webrtc::AudioProcessingImpl *this)
{
  pthread_mutex_lock((this + 336));
  if ((*(this + 1020) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/audio_processing_impl.cc");
  }

  if (*(this + 1020) == 1)
  {
    v9 = *(this + 254);
    if (*(this + 1032) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 255;
  if (*(this + 1032) == 1)
  {
LABEL_8:
    v9 = *(this + 257);
  }

LABEL_9:
  pthread_mutex_unlock((this + 336));
  return v9;
}

uint64_t webrtc::AudioProcessingImpl::CreateAndAttachAecDump()
{
  return 0;
}

{
  return 0;
}

uint64_t webrtc::AudioProcessingImpl::AttachAecDump(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 272));
  pthread_mutex_lock((a1 + 336));
  v4 = *(a1 + 200);
  *(a1 + 200) = *a2;
  *a2 = v4;
  webrtc::AudioProcessingImpl::WriteAecDumpConfigMessage(a1, 1);
  v5 = *(a1 + 200);
  if (webrtc::g_clock)
  {
    v6 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
  }

  else
  {
    gettimeofday(&v8, 0);
    v6 = v8.tv_usec + 1000000 * v8.tv_sec;
  }

  (*(*v5 + 16))(v5, a1 + 696, v6 / 1000);
  pthread_mutex_unlock((a1 + 336));

  return pthread_mutex_unlock((a1 + 272));
}

void webrtc::AudioProcessingImpl::WriteAecDumpConfigMessage(webrtc::AudioProcessingImpl *this, char a2)
{
  if (!*(this + 25))
  {
    return;
  }

  *(&v34.__r_.__value_.__s + 23) = 0;
  v34.__r_.__value_.__s.__data_[0] = 0;
  v5 = *(this + 75);
  if (!v5)
  {
    if (*(this + 76))
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  v6 = v34.__r_.__value_.__r.__words[2];
  if (&v34 <= "CapturePostProcessor;" && &v34.__r_.__value_.__r.__words[2] + 5 > "CapturePostProcessor;")
  {
    goto LABEL_94;
  }

  qmemcpy(&v34, "CapturePostProcessor;", 21);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = HIBYTE(v6);
    v2 = 21;
    v34.__r_.__value_.__l.__size_ = 21;
    v34.__r_.__value_.__s.__data_[21] = 0;
    if (*(this + 76))
    {
      goto LABEL_29;
    }

LABEL_7:
    if (*(this + 1072) == 1)
    {
      goto LABEL_8;
    }

LABEL_37:
    if (*(this + 544) != 1)
    {
      goto LABEL_65;
    }

    goto LABEL_38;
  }

  LODWORD(v5) = 21;
  *(&v34.__r_.__value_.__s + 23) = 21;
  v2 = 0x65636F725074736FLL;
  v34.__r_.__value_.__s.__data_[21] = 0;
  if (!*(this + 76))
  {
    goto LABEL_7;
  }

LABEL_29:
  v12 = v5;
  if ((v5 & 0x80u) == 0)
  {
    v13 = 22;
  }

  else
  {
    v13 = (v34.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v5 & 0x80u) == 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = v2;
  }

  if (v13 - v14 >= 0x13)
  {
    v17 = v34.__r_.__value_.__r.__words[0];
    if (v12 >= 0)
    {
      v17 = &v34;
    }

    v18 = v17 + v14;
    if (v17 + v14 <= "RenderPreProcessor;" && v18 + 19 > "RenderPreProcessor;")
    {
      goto LABEL_94;
    }

    *(v18 + 15) = 997355379;
    *v18 = *"RenderPreProcessor;";
    v19 = v14 + 19;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v34.__r_.__value_.__l.__size_ = v14 + 19;
      v17->__r_.__value_.__s.__data_[v19] = 0;
      if (*(this + 1072) != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *(&v34.__r_.__value_.__s + 23) = v19 & 0x7F;
      v17->__r_.__value_.__s.__data_[v19] = 0;
      if (*(this + 1072) != 1)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v34, v13, v14 - v13 + 19, v14, v14, 0, 0x13uLL, "RenderPreProcessor;");
    if (*(this + 1072) != 1)
    {
      goto LABEL_37;
    }
  }

LABEL_8:
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = 22;
  }

  else
  {
    v7 = (v34.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  if (v7 - size >= 0xF)
  {
    v9 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v34.__r_.__value_.__r.__words[0];
    }

    if (v9 + size <= "EchoController;" && &v9->__r_.__value_.__r.__words[1] + size + 7 > "EchoController;")
    {
      goto LABEL_94;
    }

    qmemcpy(v9 + size, "EchoController;", 15);
    v11 = size + 15;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v34.__r_.__value_.__l.__size_ = size + 15;
      v9->__r_.__value_.__s.__data_[v11] = 0;
      if (*(this + 544) != 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *(&v34.__r_.__value_.__s + 23) = v11 & 0x7F;
      v9->__r_.__value_.__s.__data_[v11] = 0;
      if (*(this + 544) != 1)
      {
        goto LABEL_65;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v34, v7, size - v7 + 15, size, size, 0, 0xFuLL, "EchoController;");
    if (*(this + 544) != 1)
    {
      goto LABEL_65;
    }
  }

LABEL_38:
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v34.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v34.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 < 0x10)
  {
    std::string::__grow_by_and_replace(&v34, v15, v16 - v15 + 16, v16, v16, 0, 0x10uLL, "GainController2;");
    goto LABEL_65;
  }

  v20 = &v34;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v34.__r_.__value_.__r.__words[0];
  }

  v21 = (v20 + v16);
  if (v20 + v16 <= "GainController2;" && v21 + 1 > "GainController2;")
  {
LABEL_94:
    __break(1u);
    return;
  }

  *v21 = *"GainController2;";
  v22 = v16 + 16;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    v34.__r_.__value_.__l.__size_ = v16 + 16;
  }

  else
  {
    *(&v34.__r_.__value_.__s + 23) = v22 & 0x7F;
  }

  v20->__r_.__value_.__s.__data_[v22] = 0;
LABEL_65:
  *&v30 = 0;
  DWORD1(v31) = 0;
  LOWORD(v32) = 0;
  BYTE2(v32) = 0;
  HIDWORD(v32) = 1065353216;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(v30) = *(this + 442);
  v23 = *(this + 83);
  BYTE8(v30) = v23 != 0;
  if (v23)
  {
    v24 = *(v23 + 4);
    LODWORD(v23) = *v23;
  }

  else
  {
    v24 = 0;
  }

  BYTE9(v30) = v24;
  HIDWORD(v30) = v23;
  v25 = *(this + 79);
  LOBYTE(v31) = v25 != 0;
  if (v25)
  {
    v26 = (*(*v25 + 24))(v25);
    v25 = *(this + 79);
    DWORD1(v31) = v26;
    if (v25)
    {
      LOBYTE(v25) = (*(*v25 + 72))(v25);
    }
  }

  BYTE8(v31) = v25;
  BYTE1(v32) = *(this + 78) != 0;
  BYTE9(v31) = *(this + 440);
  BYTE10(v31) = *(this + 448);
  HIDWORD(v31) = *(this + 113);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__assign_no_alias<true>(&__p, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    BYTE2(v32) = *(this + 412);
    HIDWORD(v32) = *(this + 104);
    if (a2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    __p = v34;
    BYTE2(v32) = *(this + 412);
    HIDWORD(v32) = *(this + 104);
    if (a2)
    {
      goto LABEL_76;
    }
  }

  if (webrtc::InternalAPMConfig::operator==(&v30, this + 208))
  {
    goto LABEL_88;
  }

LABEL_76:
  (*(**(this + 25) + 120))(*(this + 25), &v30);
  v27 = v31;
  *(this + 13) = v30;
  *(this + 14) = v27;
  *(this + 30) = v32;
  if ((this + 208) == &v30)
  {
    goto LABEL_88;
  }

  if (*(this + 271) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = __p.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>((this + 248), p_p, v29);
LABEL_88:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_92;
    }

    goto LABEL_89;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(this + 248, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_92:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_93:
      operator delete(v34.__r_.__value_.__l.__data_);
      return;
    }

LABEL_89:
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_93;
  }

  *(this + 248) = __p;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }
}

uint64_t webrtc::AudioProcessingImpl::DetachAecDump(webrtc::AudioProcessingImpl *this)
{
  pthread_mutex_lock((this + 272));
  pthread_mutex_lock((this + 336));
  v2 = *(this + 25);
  *(this + 25) = 0;
  pthread_mutex_unlock((this + 336));
  result = pthread_mutex_unlock((this + 272));
  if (v2)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  return result;
}

uint64_t webrtc::AudioProcessingImpl::GetConfig@<X0>(webrtc::AudioProcessingImpl *this@<X0>, _OWORD *a2@<X8>)
{
  pthread_mutex_lock((this + 272));
  pthread_mutex_lock((this + 336));
  v4 = *(this + 34);
  a2[8] = *(this + 33);
  a2[9] = v4;
  a2[10] = *(this + 35);
  v5 = *(this + 30);
  a2[4] = *(this + 29);
  a2[5] = v5;
  v6 = *(this + 32);
  a2[6] = *(this + 31);
  a2[7] = v6;
  v7 = *(this + 26);
  *a2 = *(this + 25);
  a2[1] = v7;
  v8 = *(this + 28);
  a2[2] = *(this + 27);
  a2[3] = v8;
  pthread_mutex_unlock((this + 336));

  return pthread_mutex_unlock((this + 272));
}

uint64_t webrtc::AudioProcessingImpl::GetStatistics@<X0>(webrtc::AudioProcessingImpl *this@<X0>, __int128 *a2@<X8>)
{
  result = pthread_mutex_lock((this + 1096));
  v5 = (this + 1160);
  if (atomic_load_explicit(this + 162, memory_order_acquire))
  {
    v6 = *(this + 161);
    v7 = *(this + 163);
    if (0x6DB6DB6DB6DB6DB7 * ((*(this + 164) - v7) >> 4) <= v6)
    {
      __break(1u);
      return result;
    }

    v8 = (v7 + 112 * v6);
    v23 = *(this + 1224);
    *v24 = *(this + 1240);
    *&v24[13] = *(this + 1253);
    v19 = *v5;
    v20 = *(this + 1176);
    v21 = *(this + 1192);
    v22 = *(this + 1208);
    v10 = v8[1];
    v9 = v8[2];
    *v5 = *v8;
    *(this + 1176) = v10;
    *(this + 1192) = v9;
    v11 = v8[6];
    v13 = v8[3];
    v12 = v8[4];
    *(this + 1240) = v8[5];
    *(this + 1256) = v11;
    *(this + 1208) = v13;
    *(this + 1224) = v12;
    *v8 = v19;
    v8[1] = v20;
    v8[5] = *v24;
    v8[6] = *&v24[16];
    v8[3] = v22;
    v8[4] = v23;
    v8[2] = v21;
    atomic_fetch_add_explicit(this + 162, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    v14 = *(this + 161);
    if (v14 + 1 == 0x6DB6DB6DB6DB6DB7 * ((*(this + 164) - *(this + 163)) >> 4))
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 + 1;
    }

    *(this + 161) = v15;
  }

  v16 = *(this + 1240);
  a2[4] = *(this + 1224);
  a2[5] = v16;
  *(a2 + 93) = *(this + 1253);
  v17 = *(this + 1176);
  *a2 = *v5;
  a2[1] = v17;
  v18 = *(this + 1208);
  a2[2] = *(this + 1192);
  a2[3] = v18;

  return pthread_mutex_unlock((this + 1096));
}

void webrtc::NoiseSuppressor::~NoiseSuppressor(webrtc::NoiseSuppressor *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = *(this + 23);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *(v5 + 22032);
          if (v7)
          {
            *(v5 + 22040) = v7;
            operator delete(v7);
          }

          MEMORY[0x2743DA540](v5, 0x1060C409552E4C7);
        }
      }

      while (v3 != v2);
      v4 = *(this + 23);
    }

    *(this + 24) = v2;
    operator delete(v4);
  }

  v8 = *(this + 20);
  if (v8)
  {
    *(this + 21) = v8;
    operator delete(v8);
  }

  v9 = *(this + 17);
  if (v9)
  {
    *(this + 18) = v9;
    operator delete(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    *(this + 15) = v10;
    operator delete(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    *(this + 12) = v11;
    operator delete(v11);
  }

  v12 = *(this + 7);
  if (v12)
  {
    *(this + 8) = v12;
    operator delete(v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    *(this + 5) = v13;
    operator delete(v13);
  }
}

void webrtc::AudioReceiveStreamInterface::Config::~Config(webrtc::AudioReceiveStreamInterface::Config *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(this + 72, *(this + 10));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

void std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(a1, *(a2 + 1));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a2 + 80), *(a2 + 11));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void webrtc::anonymous namespace::CreateChannelReceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5[12];
  if (v6)
  {
    (**v6)(v6);
  }

  v7 = a5[19];
  if (v7)
  {
    (**v7)(v7);
  }

  v8 = a5[20];
  if (v8)
  {
    (**v8)(v8);
  }

  webrtc::voe::CreateChannelReceive();
}

uint64_t webrtc::AudioReceiveStreamImpl::AudioReceiveStreamImpl(uint64_t a1, int a2, uint64_t a3, webrtc::AudioReceiveStreamInterface::Config *a4, void (****a5)(void), uint64_t *a6)
{
  *a1 = &unk_28828E4A0;
  *(a1 + 8) = &unk_28828E588;
  *(a1 + 16) = &unk_28828E5C0;
  webrtc::AudioReceiveStreamInterface::Config::Config((a1 + 24), a4);
  v11 = *a5;
  *(a1 + 192) = *a5;
  if (v11)
  {
    (**v11)(v11);
  }

  v12 = *a6;
  *a6 = 0;
  *(a1 + 200) = v12;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_receive_stream.cc");
  }

  (*(**(a1 + 200) + 184))(*(a1 + 200), a3);
  (*(**(a1 + 200) + 208))(*(a1 + 200), *(a4 + 2) != 0, (*(a4 + 2) / 20));
  (*(**(a1 + 200) + 216))(*(a1 + 200), *(a4 + 3));
  (*(**(a1 + 200) + 32))(*(a1 + 200), a4 + 72);
  return a1;
}

void webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl(webrtc::AudioReceiveStreamImpl *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_receive_stream.cc");
  }

  if (*(this + 208) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_receive_stream.cc");
    }

    (*(**(this + 25) + 48))(*(this + 25));
    *(this + 208) = 0;
    webrtc::internal::AudioState::RemoveReceivingStream(*(this + 24), this);
  }

  (*(**(this + 25) + 192))(*(this + 25));
  v16 = *(this + 27);
  *(this + 27) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 25);
  *(this + 25) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 24);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  webrtc::AudioReceiveStreamInterface::Config::~Config((this + 24));
}

{
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl(this);

  JUMPOUT(0x2743DA540);
}

unint64_t webrtc::AudioReceiveStreamImpl::Stop(unint64_t this)
{
  if (*(this + 208) == 1)
  {
    v2 = this;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_receive_stream.cc");
    }

    (*(**(v2 + 200) + 48))(*(v2 + 200));
    *(v2 + 208) = 0;
    v10 = *(v2 + 192);

    return webrtc::internal::AudioState::RemoveReceivingStream(v10, v2);
  }

  return this;
}

void non-virtual thunk towebrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl(webrtc::AudioReceiveStreamImpl *this)
{
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl((this - 8));
}

{
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl((this - 16));
}

{
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl((this - 16));

  JUMPOUT(0x2743DA540);
}