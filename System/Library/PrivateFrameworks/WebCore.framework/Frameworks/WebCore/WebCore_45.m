void webrtc::RidDescription::~RidDescription(webrtc::RidDescription *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 56, *(this + 8));
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      v5 = v3 - 27;
      v6 = v3 - 27;
      v7 = v3 - 27;
      do
      {
        v8 = *v7;
        v7 -= 27;
        (*v8)(v6);
        v5 -= 27;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::RidDescription::operator=(uint64_t __dst, _BYTE **a2)
{
  v2 = a2;
  v3 = __dst;
  if (__dst == a2)
  {
    *(__dst + 24) = *(a2 + 6);
  }

  else
  {
    if (*(__dst + 23) < 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v5 = v2[1];
      }

      std::string::__assign_no_alias<false>(__dst, a2, v5);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      *(__dst + 16) = a2[2];
      *__dst = v4;
    }

    *(v3 + 24) = *(v2 + 6);
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((v3 + 32), v2[4], v2[5], 0x84BDA12F684BDA13 * ((v2[5] - v2[4]) >> 3));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v3 + 56, v2[7], v2 + 8);
    return v3;
  }

  return __dst;
}

unint64_t WebRtc_ReadBuffer(uint64_t *a1, char **a2, char *__dst, unint64_t a4)
{
  v4 = 0;
  if (!a1 || !__dst)
  {
    return v4;
  }

  v5 = *a1;
  if (*(a1 + 8))
  {
    v6 = a1[2] - v5;
    v7 = v6 + a1[1];
  }

  else
  {
    v7 = a1[1] - v5;
    v6 = a1[2] - v5;
  }

  if (v7 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = v7;
  }

  v8 = a1[5];
  v9 = a1[3];
  v10 = &v8[v9 * v5];
  v11 = v4 - v6;
  if (v4 <= v6)
  {
    v12 = v9 * v4;
  }

  else
  {
    v12 = v9 * v6;
    v13 = v9 * v11;
    if (v9 * v11)
    {
      v14 = a1;
      v15 = a2;
      memcpy(__dst, v10, v9 * v6);
      memcpy(&__dst[v12], v8, v13);
      a2 = v15;
      v10 = __dst;
      a1 = v14;
      if (!v15)
      {
        goto LABEL_19;
      }

LABEL_15:
      if (!v4)
      {
        v10 = 0;
      }

      *a2 = v10;
      goto LABEL_19;
    }
  }

  if (a2)
  {
    goto LABEL_15;
  }

  v17 = a1;
  memcpy(__dst, v10, v12);
  a1 = v17;
LABEL_19:
  v18 = *(a1 + 4);
  v19 = *(a1 + 8);
  v20 = *a1;
  v21 = *(a1 + 2);
  v22 = v19 == 0;
  if (v19)
  {
    v23 = *(a1 + 4);
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = *(a1 + 4);
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 - v20 + v21;
  v26 = v21 - v20 - v24;
  if (v25 >= v4)
  {
    v25 = v4;
  }

  if (v25 <= v26)
  {
    v25 = v26;
  }

  v27 = v25 + v20;
  if (v25 + v20 <= v18)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 4);
  }

  v29 = v27 - v28;
  if (v27 > v18 || v29 < 0)
  {
    *(a1 + 8) = v29 >> 31;
  }

  *a1 = (v18 & (v29 >> 31)) + v29;
  return v4;
}

uint64_t WebRtc_MoveReadPtr(int *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[8];
  v4 = *a1;
  v5 = a1[2];
  v6 = v3 == 0;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[4];
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1[4];
  }

  v9 = v5 + v8 - v4;
  LODWORD(v10) = v5 - v4 - v7;
  if (v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v9;
  }

  if (v11 <= v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10 + v4;
  if (v10 + v4 <= v2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[4];
  }

  v14 = v12 - v13;
  v15 = (v2 & (v14 >> 31)) + v14;
  if (v12 > v2 || v14 < 0)
  {
    a1[8] = v14 >> 31;
    *a1 = v15;
    return v10;
  }

  else
  {
    *a1 = v15;
    return v10;
  }
}

unint64_t WebRtc_WriteBuffer(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v5 = a1[2];
    v6 = *a1;
    if (*(a1 + 8))
    {
      v7 = a1[1];
      v8 = v6 - v7;
      if (v8 >= a3)
      {
        v3 = a3;
      }

      else
      {
        v3 = v8;
      }

      v9 = v5 - v7;
      v10 = v3 - v9;
      if (v3 > v9)
      {
LABEL_8:
        v11 = a2;
        memcpy((a1[5] + a1[3] * v7), a2, a1[3] * v9);
        a2 = v11;
        v7 = 0;
        a1[1] = 0;
        *(a1 + 8) = 1;
LABEL_14:
        memcpy((a1[5] + a1[3] * v7), &a2[a1[3] * (v3 - v10)], a1[3] * v10);
        a1[1] += v10;
        return v3;
      }
    }

    else
    {
      v7 = a1[1];
      v12 = v5 - (v7 - v6);
      if (v12 >= a3)
      {
        v3 = a3;
      }

      else
      {
        v3 = v12;
      }

      v9 = v5 - v7;
      v10 = v3 - v9;
      if (v3 > v9)
      {
        goto LABEL_8;
      }
    }

    v10 = v3;
    goto LABEL_14;
  }

  return v3;
}

void webrtc::rnn_vad::RnnVad::~RnnVad(webrtc::rnn_vad::RnnVad *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    *(this + 50) = v2;
    operator delete(v2);
  }

  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

uint64_t webrtc::rnn_vad::FullyConnectedLayer::FullyConnectedLayer(uint64_t result, int a2, __n128 *a3, double a4, double a5, int8x16_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, __int16 *a12)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (a8)
  {
    if (!(a8 >> 62))
    {
      operator new();
    }

    goto LABEL_20;
  }

  if (a3 == 1)
  {
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a10)
    {
      if (!(a10 >> 62))
      {
        operator new();
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (a10 % a3)
    {
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, 0, a9, a10, a11, (a10 % a3));
      return webrtc::rnn_vad::FullyConnectedLayer::ComputeOutput(v19, v20, v21);
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a10)
    {
      if (!(a10 >> 62))
      {
        operator new();
      }

LABEL_20:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (a3 >= 1 && a10 / a3 >= 1)
    {
      __break(1u);
      v14 = a9;
      v15 = 0;
      v16 = vdupq_n_s32(0x3B800000u);
      v17 = a3;
      do
      {
        v18 = *v14++;
        a6.i32[0] = v18;
        a6 = vmulq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(a6, xmmword_273BA1CF0), 0x18uLL), v16);
        *v17++ = a6;
        v15 += 4;
      }

      while (v15);
    }
  }

  v12 = *a12;
  *(result + 58) = *(a12 + 2);
  *(result + 56) = v12;
  v13 = rnnoise::TansigApproximated;
  if (a11 == 1)
  {
    v13 = rnnoise::SigmoidApproximated;
  }

  *(result + 64) = v13;
  *(result + 72) = webrtc::FunctionView<float ()(float)>::CallFunPtr<float (&)(float)>;
  return result;
}

uint64_t webrtc::rnn_vad::FullyConnectedLayer::ComputeOutput(uint64_t result, float32x4_t *a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40) - v3;
  if (!v4)
  {
    v3 = 0;
  }

  v38 = v3;
  if (*(result + 4) >= 1)
  {
    v6 = result;
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v8 = result + 80;
    if (a3)
    {
      v9 = 0;
      v10 = v4 >> 2;
      v11 = &v7->f32[a3];
      v12 = v11 - a2 - 4;
      v13 = (v12 >> 2) + 1;
      v14 = v13 & 0x7FFFFFFFFFFFFFF8;
      v37 = &a2->f32[v14];
      v36 = a2 + 1;
      while (1)
      {
        v15 = *(v6 + 1);
        if (v9 >= (*(v6 + 2) - v15) >> 2)
        {
          goto LABEL_32;
        }

        v16 = *v6;
        v17 = v16 * v9;
        v18 = v10 - v17;
        if (v10 <= v17)
        {
          v20 = 0;
          if (v12 >= 0x1C)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v19 = (v38 + 4 * v17);
          if (v18 < v16)
          {
            v16 = v18;
          }

          if (v16)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          if (v12 >= 0x1C)
          {
LABEL_17:
            v21 = &v20->f32[v14];
            v22 = v20 + 1;
            v23 = 0.0;
            v24 = v13 & 0x7FFFFFFFFFFFFFF8;
            v25 = v36;
            do
            {
              v26 = vmulq_f32(v25[-1], v22[-1]);
              v27 = vmulq_f32(*v25, *v22);
              v23 = (((((((v23 + v26.f32[0]) + v26.f32[1]) + v26.f32[2]) + v26.f32[3]) + v27.f32[0]) + v27.f32[1]) + v27.f32[2]) + v27.f32[3];
              v25 += 2;
              v22 += 2;
              v24 -= 8;
            }

            while (v24);
            v28 = v37;
            if (v13 == (v13 & 0x7FFFFFFFFFFFFFF8))
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        v23 = 0.0;
        v21 = v20;
        v28 = a2;
        do
        {
LABEL_23:
          v29 = *v28++;
          v30 = v29;
          v31 = *v21++;
          v23 = v23 + (v30 * v31);
        }

        while (v28 != v11);
LABEL_24:
        result = (*(v6 + 9))(*(v6 + 8), *(v15 + 4 * v9) + v23);
        if (v9 == 24)
        {
          goto LABEL_32;
        }

        *(v8 + 4 * v9++) = v32;
        if (v9 >= v6[1])
        {
          return result;
        }
      }
    }

    v33 = 0;
    while (1)
    {
      v34 = *(v6 + 1);
      if (v33 >= (*(v6 + 2) - v34) >> 2)
      {
        break;
      }

      result = (*(v6 + 9))(*(v6 + 8), *(v34 + 4 * v33) + 0.0);
      if (v33 == 24)
      {
        break;
      }

      *(v8 + 4 * v33++) = v35;
      if (v33 >= v6[1])
      {
        return result;
      }
    }

LABEL_32:
    __break(1u);
  }

  return result;
}

float rnnoise::TansigApproximated(rnnoise *this, float a2)
{
  v2 = 1.0;
  if (a2 < 8.0)
  {
    v2 = -1.0;
    if (a2 > -8.0)
    {
      v3 = a2 < 0.0;
      if (a2 < 0.0)
      {
        a2 = -a2;
      }

      v4 = (a2 * 25.0) + 0.5;
      v5 = floorf(v4);
      v6 = rnnoise::TansigApproximated(float)::kTansigTable[vcvtms_s32_f32(v4)];
      v7 = v6 + (((a2 + (v5 * -0.04)) * (1.0 - (v6 * v6))) * (1.0 - (v6 * (a2 + (v5 * -0.04)))));
      if (v3)
      {
        return -v7;
      }

      else
      {
        return v7;
      }
    }
  }

  return v2;
}

float rnnoise::SigmoidApproximated(rnnoise *this, float a2)
{
  v2 = a2 * 0.5;
  v3 = 1.0;
  if (v2 < 8.0)
  {
    v3 = -1.0;
    if (v2 > -8.0)
    {
      v4 = v2 < 0.0;
      if (v2 < 0.0)
      {
        v2 = -v2;
      }

      v5 = (v2 * 25.0) + 0.5;
      v6 = floorf(v5);
      v7 = rnnoise::TansigApproximated(float)::kTansigTable[vcvtms_s32_f32(v5)];
      v8 = v7 + (((v2 + (v6 * -0.04)) * (1.0 - (v7 * v7))) * (1.0 - (v7 * (v2 + (v6 * -0.04)))));
      if (v4)
      {
        v3 = -v8;
      }

      else
      {
        v3 = v8;
      }
    }
  }

  return (v3 * 0.5) + 0.5;
}

void *webrtc::rnn_vad::anonymous namespace::PreprocessGruTensor(void *result, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 % (3 * a4));
  if (v8)
  {
    goto LABEL_9;
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

LABEL_10:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a4 >= 1 && a3 / (3 * a4) >= 1)
  {
    v8 = 0;
    __break(1u);
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v8);
    goto LABEL_10;
  }

  return result;
}

unint64_t webrtc::rnn_vad::GatedRecurrentLayer::ComputeOutput(int *a1, float32x4_t *a2, uint64_t a3)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 * v6;
  v180 = v7;
  v181 = (v4 - v3) >> 2;
  if (v181 < v7)
  {
    v7 = (v4 - v3) >> 2;
  }

  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  if (v4 == v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 4);
  }

  if (v4 == v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = (v9 - v8) >> 2;
  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  if (v9 == v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 1);
  }

  v172 = v15;
  v177 = (v9 - v8) >> 2;
  v17 = (a1 + 21);
  if (v14 == v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a1 + 7);
  }

  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v174 = v18;
  v175 = v17;
  if (!v5)
  {
    v17 = 0;
  }

  if (v12 >= v5)
  {
    v12 = v5;
  }

  if (v7)
  {
    v20 = v4 == v3;
  }

  else
  {
    v20 = 1;
  }

  v16 = v14 - v13;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v10;
  }

  v178 = (v5 * v5);
  v179 = v16 >> 2;
  if ((v14 - v13) >> 2 >= v178)
  {
    v22 = (v5 * v5);
  }

  else
  {
    v22 = v16 >> 2;
  }

  if (v22)
  {
    v23 = v14 == v13;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v18;
  }

  if (v12)
  {
    v25 = v9 == v8;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v8;
  }

  v183 = v19;
  v27 = &v19->f32[a3];
  v173 = v5;
  if (v5 >= 1)
  {
    v28 = 0;
    v29 = &a1[v173] - v17 + 80;
    v30 = (v29 >> 2) + 1;
    v31 = v27 - a2 - 4;
    v182 = (v31 >> 2) + 1;
    v32 = v182 & 0x7FFFFFFFFFFFFFF8;
    v33 = v30 & 0x7FFFFFFFFFFFFFF8;
    while (1)
    {
      v34 = v11 - v28 * v6;
      if (v11 <= v28 * v6)
      {
        v35 = 0;
        v36 = 0.0;
        v37 = 0.0;
        if (!a3)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          v34 = v6;
        }

        v35 = (v21 + 4 * v28 * v6);
        if (!v34)
        {
          v35 = 0;
        }

        v36 = 0.0;
        v37 = 0.0;
        if (!a3)
        {
          goto LABEL_60;
        }
      }

      if (v31 < 0x1C)
      {
        break;
      }

      v38 = &v35->f32[v32];
      v40 = v35 + 1;
      v41 = v182 & 0x7FFFFFFFFFFFFFF8;
      v42 = a2 + 1;
      do
      {
        v43 = vmulq_f32(v42[-1], v40[-1]);
        v44 = vmulq_f32(*v42, *v40);
        v37 = (((((((v37 + v43.f32[0]) + v43.f32[1]) + v43.f32[2]) + v43.f32[3]) + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3];
        v42 += 2;
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      v39 = &a2->f32[v32];
      if (v182 != (v182 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_59;
      }

LABEL_60:
      if (v22 <= v28 * v5 || v14 == v13)
      {
        v49 = 0;
      }

      else
      {
        v49 = (v24 + 4 * v28 * v5);
      }

      v50 = v49;
      v51 = v17;
      if (v29 < 0x1C)
      {
        goto LABEL_226;
      }

      v50 = &v49->f32[v33];
      v52 = v49 + 1;
      v36 = 0.0;
      v53 = v30 & 0x7FFFFFFFFFFFFFF8;
      v54 = v17 + 1;
      do
      {
        v55 = vmulq_f32(v54[-1], v52[-1]);
        v56 = vmulq_f32(*v54, *v52);
        v36 = (((((((v36 + v55.f32[0]) + v55.f32[1]) + v55.f32[2]) + v55.f32[3]) + v56.f32[0]) + v56.f32[1]) + v56.f32[2]) + v56.f32[3];
        v54 += 2;
        v52 += 2;
        v53 -= 8;
      }

      while (v53);
      v51 = &v17->f32[v33];
      if (v30 != (v30 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_226:
        do
        {
          v57 = *v51++;
          v58 = v57;
          v59 = *v50++;
          v36 = v36 + (v58 * v59);
        }

        while (v51 != &v175[v173]);
      }

      v60 = ((*(v26 + 4 * v28) + v37) + v36) * 0.5;
      v61 = 1.0;
      if (v60 < 8.0)
      {
        v61 = -1.0;
        if (v60 > -8.0)
        {
          v62 = v60 < 0.0;
          if (v60 < 0.0)
          {
            v60 = -v60;
          }

          v63 = (v60 * 25.0) + 0.5;
          v64 = floorf(v63);
          v65 = rnnoise::TansigApproximated(float)::kTansigTable[vcvtms_s32_f32(v63)];
          if (v62)
          {
            v61 = -(v65 + (((v60 + (v64 * -0.04)) * (1.0 - (v65 * v65))) * (1.0 - (v65 * (v60 + (v64 * -0.04))))));
          }

          else
          {
            v61 = v65 + (((v60 + (v64 * -0.04)) * (1.0 - (v65 * v65))) * (1.0 - (v65 * (v60 + (v64 * -0.04)))));
          }
        }
      }

      v184[v28++ + 24] = (v61 * 0.5) + 0.5;
      if (v28 == v5)
      {
        goto LABEL_78;
      }
    }

    v38 = v35;
    v39 = a2;
    do
    {
LABEL_59:
      v45 = *v39++;
      v46 = v45;
      v47 = *v38++;
      v37 = v37 + (v46 * v47);
    }

    while (v39 != v27);
    goto LABEL_60;
  }

LABEL_78:
  v66 = v177 - v5;
  if (v177 <= v5)
  {
    v67 = 0;
    v68 = (v5 * v5);
    v69 = v5 * v6;
    v70 = v181 - v180;
    if (v181 <= v180)
    {
      goto LABEL_85;
    }
  }

  else
  {
    if (v66 >= v5)
    {
      v66 = v5;
    }

    if (v66)
    {
      v67 = v172 + 4 * v5;
    }

    else
    {
      v67 = 0;
    }

    v68 = (v5 * v5);
    v69 = v5 * v6;
    v70 = v181 - v180;
    if (v181 <= v180)
    {
LABEL_85:
      v71 = 0;
      v72 = 0;
      v73 = v179 - v68;
      if (v179 <= v68)
      {
        goto LABEL_86;
      }

      goto LABEL_96;
    }
  }

  if (v70 >= v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = v70;
  }

  if (v71)
  {
    v72 = v10 + 4 * v69;
  }

  else
  {
    v72 = 0;
  }

  v73 = v179 - v68;
  if (v179 <= v68)
  {
LABEL_86:
    v74 = 0;
    v75 = 0;
    if (v5 < 1)
    {
      goto LABEL_133;
    }

    goto LABEL_103;
  }

LABEL_96:
  if (v73 >= v68)
  {
    v74 = v68;
  }

  else
  {
    v74 = v73;
  }

  if (v74)
  {
    v75 = v174 + 4 * v68;
  }

  else
  {
    v75 = 0;
  }

  if (v5 >= 1)
  {
LABEL_103:
    v76 = 0;
    v77 = &a1[v173] - v17 + 80;
    v78 = (v77 >> 2) + 1;
    v79 = v27 - a2 - 4;
    v80 = (v79 >> 2) + 1;
    v81 = v80 & 0x7FFFFFFFFFFFFFF8;
    v82 = v78 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v83 = v71 - v76 * v6;
      if (v71 <= v76 * v6)
      {
        v84 = 0;
        v85 = 0.0;
        v86 = 0.0;
        if (!a3)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v83 >= v6)
        {
          v83 = v6;
        }

        v84 = (v72 + 4 * v76 * v6);
        if (!v83)
        {
          v84 = 0;
        }

        v85 = 0.0;
        v86 = 0.0;
        if (!a3)
        {
          goto LABEL_119;
        }
      }

      if (v79 >= 0x1C)
      {
        v87 = &v84->f32[v81];
        v89 = v84 + 1;
        v90 = v80 & 0x7FFFFFFFFFFFFFF8;
        v91 = a2 + 1;
        do
        {
          v92 = vmulq_f32(v91[-1], v89[-1]);
          v93 = vmulq_f32(*v91, *v89);
          v86 = (((((((v86 + v92.f32[0]) + v92.f32[1]) + v92.f32[2]) + v92.f32[3]) + v93.f32[0]) + v93.f32[1]) + v93.f32[2]) + v93.f32[3];
          v91 += 2;
          v89 += 2;
          v90 -= 8;
        }

        while (v90);
        v88 = &a2->f32[v81];
        if (v80 == (v80 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_119;
        }
      }

      else
      {
        v87 = v84;
        v88 = a2;
      }

      do
      {
        v94 = *v88++;
        v95 = v94;
        v96 = *v87++;
        v86 = v86 + (v95 * v96);
      }

      while (v88 != v27);
LABEL_119:
      v97 = (v75 + 4 * v76 * v5);
      if (v74 <= v76 * v5)
      {
        v97 = 0;
      }

      v98 = v97;
      v99 = v17;
      if (v77 < 0x1C)
      {
        goto LABEL_227;
      }

      v98 = &v97->f32[v82];
      v100 = v97 + 1;
      v85 = 0.0;
      v101 = v78 & 0x7FFFFFFFFFFFFFF8;
      v102 = v17 + 1;
      do
      {
        v103 = vmulq_f32(v102[-1], v100[-1]);
        v104 = vmulq_f32(*v102, *v100);
        v85 = (((((((v85 + v103.f32[0]) + v103.f32[1]) + v103.f32[2]) + v103.f32[3]) + v104.f32[0]) + v104.f32[1]) + v104.f32[2]) + v104.f32[3];
        v102 += 2;
        v100 += 2;
        v101 -= 8;
      }

      while (v101);
      v99 = &v17->f32[v82];
      if (v78 != (v78 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_227:
        do
        {
          v105 = *v99++;
          v106 = v105;
          v107 = *v98++;
          v85 = v85 + (v106 * v107);
        }

        while (v99 != &v175[v173]);
      }

      v108 = ((*(v67 + 4 * v76) + v86) + v85) * 0.5;
      v109 = 1.0;
      if (v108 < 8.0)
      {
        v109 = -1.0;
        if (v108 > -8.0)
        {
          v110 = v108 < 0.0;
          if (v108 < 0.0)
          {
            v108 = -v108;
          }

          v111 = (v108 * 25.0) + 0.5;
          v112 = floorf(v111);
          v113 = rnnoise::TansigApproximated(float)::kTansigTable[vcvtms_s32_f32(v111)];
          if (v110)
          {
            v109 = -(v113 + (((v108 + (v112 * -0.04)) * (1.0 - (v113 * v113))) * (1.0 - (v113 * (v108 + (v112 * -0.04))))));
          }

          else
          {
            v109 = v113 + (((v108 + (v112 * -0.04)) * (1.0 - (v113 * v113))) * (1.0 - (v113 * (v108 + (v112 * -0.04)))));
          }
        }
      }

      v184[v76++] = (v109 * 0.5) + 0.5;
    }

    while (v76 != v5);
  }

LABEL_133:
  result = v5;
  v115 = v177 - 2 * v5;
  if (v177 <= 2 * v5)
  {
    v116 = 0;
  }

  else
  {
    if (v115 >= v5)
    {
      v115 = v5;
    }

    if (v115)
    {
      v116 = v172 + 8 * v5;
    }

    else
    {
      v116 = 0;
    }
  }

  v117 = 2 * v180;
  v118 = v181 - v117;
  if (v181 <= v117)
  {
    v120 = 0;
    v121 = 0;
  }

  else
  {
    v119 = v10 + 4 * v117;
    if (v118 >= v180)
    {
      v120 = v5 * v6;
    }

    else
    {
      v120 = v118;
    }

    if (v120)
    {
      v121 = v119;
    }

    else
    {
      v121 = 0;
    }
  }

  v122 = (2 * v178);
  v123 = v174 + 4 * v122;
  v124 = v179 - v122;
  if (v179 - v122 >= v178)
  {
    v124 = (v5 * v5);
  }

  if (!v124)
  {
    v123 = 0;
  }

  if (v179 > v122)
  {
    v125 = v124;
  }

  else
  {
    v125 = 0;
  }

  if (v179 > v122)
  {
    v126 = v123;
  }

  else
  {
    v126 = 0;
  }

  if (v5 >= 1)
  {
    v185[0] = *v175 * v184[0];
    if (v5 == 1 || (v185[1] = *(a1 + 22) * v184[1], v5 == 2) || (v185[2] = *(a1 + 23) * v184[2], v5 == 3) || (v185[3] = *(a1 + 24) * v184[3], v5 == 4) || (v186[0] = *(a1 + 25) * v184[4], v5 == 5) || (v186[1] = *(a1 + 26) * v184[5], v5 == 6) || (v186[2] = *(a1 + 27) * v184[6], v5 == 7) || (v186[3] = *(a1 + 28) * v184[7], v5 == 8) || (v186[4] = *(a1 + 29) * v184[8], v5 == 9) || (v186[5] = *(a1 + 30) * v184[9], v5 == 10) || (v186[6] = *(a1 + 31) * v184[10], v5 == 11) || (v186[7] = *(a1 + 32) * v184[11], v5 == 12) || (v186[8] = *(a1 + 33) * v184[12], v5 == 13) || (v186[9] = *(a1 + 34) * v184[13], v5 == 14) || (v186[10] = *(a1 + 35) * v184[14], v5 == 15) || (v186[11] = *(a1 + 36) * v184[15], v5 == 16) || (v186[12] = *(a1 + 37) * v184[16], v5 == 17) || (v186[13] = *(a1 + 38) * v184[17], v5 == 18) || (v186[14] = *(a1 + 39) * v184[18], v5 == 19) || (v186[15] = *(a1 + 40) * v184[19], v5 == 20) || (v186[16] = *(a1 + 41) * v184[20], v5 == 21) || (v186[17] = *(a1 + 42) * v184[21], v5 == 22) || (v186[18] = *(a1 + 43) * v184[22], v5 == 23) || (v186[19] = *(a1 + 44) * v184[23], v5 == 24))
    {
      v127 = &v185[v5];
      v128 = (v5 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      result = v128 + 1;
      if (a3)
      {
        v129 = 0;
        v130 = (a3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        v131 = (v130 + 1) & 0x7FFFFFFFFFFFFFF8;
        v132 = result & 0x7FFFFFFFFFFFFFF8;
        while (1)
        {
          v133 = v120 - v129 * v6;
          if (v120 <= v129 * v6)
          {
            v134 = 0;
            v135 = 0.0;
            if (v130 >= 7)
            {
              goto LABEL_193;
            }
          }

          else
          {
            if (v133 >= v6)
            {
              v133 = v6;
            }

            if (v133)
            {
              v134 = (v121 + 4 * v129 * v6);
            }

            else
            {
              v134 = 0;
            }

            v135 = 0.0;
            if (v130 >= 7)
            {
LABEL_193:
              v136 = &v134->f32[v131];
              v137 = v134 + 1;
              v138 = (v130 + 1) & 0x7FFFFFFFFFFFFFF8;
              v139 = v183 + 1;
              do
              {
                v140 = vmulq_f32(v139[-1], v137[-1]);
                v141 = vmulq_f32(*v139, *v137);
                v135 = (((((((v135 + v140.f32[0]) + v140.f32[1]) + v140.f32[2]) + v140.f32[3]) + v141.f32[0]) + v141.f32[1]) + v141.f32[2]) + v141.f32[3];
                v139 += 2;
                v137 += 2;
                v138 -= 8;
              }

              while (v138);
              v142 = &v183->f32[v131];
              if (v130 + 1 == v131)
              {
                goto LABEL_200;
              }

              goto LABEL_199;
            }
          }

          v136 = v134;
          v142 = v183;
          do
          {
LABEL_199:
            v143 = *v142++;
            v144 = v143;
            v145 = *v136++;
            v135 = v135 + (v144 * v145);
          }

          while (v142 != v27);
LABEL_200:
          if (v125 <= v129 * v5)
          {
            v146 = 0;
          }

          else
          {
            v146 = (v126 + 4 * v129 * v5);
          }

          if (v128 >= 7)
          {
            v149 = &v146->f32[v132];
            v150 = v146 + 1;
            v148 = 0.0;
            v151 = result & 0x7FFFFFFFFFFFFFF8;
            v152 = v186;
            do
            {
              v153 = vmulq_f32(v152[-1], v150[-1]);
              v154 = vmulq_f32(*v152, *v150);
              v148 = (((((((v148 + v153.f32[0]) + v153.f32[1]) + v153.f32[2]) + v153.f32[3]) + v154.f32[0]) + v154.f32[1]) + v154.f32[2]) + v154.f32[3];
              v152 += 2;
              v150 += 2;
              v151 -= 8;
            }

            while (v151);
            v147 = &v185[v132];
            if (result == (result & 0x7FFFFFFFFFFFFFF8))
            {
              goto LABEL_185;
            }
          }

          else
          {
            v147 = v185;
            v148 = 0.0;
            v149 = v146;
          }

          do
          {
            v155 = *v147++;
            v156 = v155;
            v157 = *v149++;
            v148 = v148 + (v156 * v157);
          }

          while (v147 != v127);
LABEL_185:
          v17->f32[v129] = (fmaxf((*(v116 + 4 * v129) + v135) + v148, 0.0) * (1.0 - v184[v129 + 24])) + (v184[v129 + 24] * v17->f32[v129]);
          if (++v129 == v5)
          {
            return result;
          }
        }
      }

      v158 = 0;
      v159 = result & 0x7FFFFFFFFFFFFFF8;
      while (1)
      {
        if (v125 <= v158 * v5)
        {
          v160 = 0;
        }

        else
        {
          v160 = (v126 + 4 * v158 * v5);
        }

        if (v128 >= 7)
        {
          v163 = &v160->f32[v159];
          v164 = v160 + 1;
          v162 = 0.0;
          v165 = result & 0x7FFFFFFFFFFFFFF8;
          v166 = v186;
          do
          {
            v167 = vmulq_f32(v166[-1], v164[-1]);
            v168 = vmulq_f32(*v166, *v164);
            v162 = (((((((v162 + v167.f32[0]) + v167.f32[1]) + v167.f32[2]) + v167.f32[3]) + v168.f32[0]) + v168.f32[1]) + v168.f32[2]) + v168.f32[3];
            v166 += 2;
            v164 += 2;
            v165 -= 8;
          }

          while (v165);
          v161 = &v185[v159];
          if (result == (result & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_211;
          }
        }

        else
        {
          v161 = v185;
          v162 = 0.0;
          v163 = v160;
        }

        do
        {
          v169 = *v161++;
          v170 = v169;
          v171 = *v163++;
          v162 = v162 + (v170 * v171);
        }

        while (v161 != v127);
LABEL_211:
        v17->f32[v158] = (fmaxf((*(v116 + 4 * v158) + 0.0) + v162, 0.0) * (1.0 - v184[v158 + 24])) + (v184[v158 + 24] * v17->f32[v158]);
        if (++v158 == v5)
        {
          return result;
        }
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::RobustThroughputEstimator::~RobustThroughputEstimator(webrtc::RobustThroughputEstimator *this)
{
  *this = &unk_28829A988;
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v3 == v2)
  {
    *(this + 12) = 0;
    v9 = 0;
  }

  else
  {
    v4 = *(this + 11);
    v5 = &v2[v4 / 0x2A];
    v6 = *v5;
    v7 = *v5 + 96 * (v4 % 0x2A);
    while (v7 != v2[(*(this + 12) + v4) / 0x2A] + 96 * ((*(this + 12) + v4) % 0x2A))
    {
      if (!v7)
      {
        __break(1u);
        return;
      }

      v7 += 96;
      if (v7 - v6 == 4032)
      {
        v8 = v5[1];
        ++v5;
        v6 = v8;
        v7 = v8;
      }
    }

    *(this + 12) = 0;
    v9 = v3 - v2;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 9);
        v2 = (*(this + 8) + 8);
        *(this + 8) = v2;
        v9 = v3 - v2;
      }

      while (v9 > 2);
    }
  }

  if (v9 == 1)
  {
    v10 = 21;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v10 = 42;
  }

  *(this + 11) = v10;
LABEL_15:
  if (v2 != v3)
  {
    do
    {
      v11 = *v2++;
      operator delete(v11);
    }

    while (v2 != v3);
    v13 = *(this + 8);
    v12 = *(this + 9);
    if (v12 != v13)
    {
      *(this + 9) = v12 + ((v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v14 = *(this + 7);
  if (v14)
  {
    operator delete(v14);
  }
}

{
  webrtc::RobustThroughputEstimator::~RobustThroughputEstimator(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::RobustThroughputEstimator::IncomingPacketFeedbackVector(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if ((*(v3 + 72) - 0x7FFFFFFFFFFFFFFFLL) < 2 || (*v3 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_6;
      }

      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      if (v7 == v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = 42 * ((v7 - v6) >> 3) - 1;
      }

      v9 = *(a1 + 88);
      if (v8 == *(a1 + 96) + v9)
      {
        v10 = v9 >= 0x2A;
        v11 = v9 - 42;
        if (!v10)
        {
          v12 = *(a1 + 80);
          v13 = *(a1 + 56);
          if (v7 - v6 < (v12 - v13))
          {
            operator new();
          }

          if (v12 == v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = (v12 - v13) >> 2;
          }

          if (!(v14 >> 61))
          {
            operator new();
          }

LABEL_92:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(a1 + 88) = v11;
        *v81 = *v6;
        *(a1 + 64) = v6 + 8;
        std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 56), v81);
        v6 = *(a1 + 64);
        v7 = *(a1 + 72);
      }

      if (v7 == v6)
      {
        goto LABEL_91;
      }

      v15 = *(a1 + 96) + *(a1 + 88);
      v16 = *&v6[8 * (v15 / 0x2A)];
      if (!v16)
      {
        goto LABEL_91;
      }

      v17 = (v16 + 96 * (v15 % 0x2A));
      v18 = *(v3 + 16);
      *v17 = *v3;
      v17[1] = v18;
      v19 = *(v3 + 32);
      v20 = *(v3 + 48);
      v21 = *(v3 + 64);
      *(v17 + 77) = *(v3 + 77);
      v17[3] = v20;
      v17[4] = v21;
      v17[2] = v19;
      v22 = *(a1 + 96);
      *(a1 + 96) = v22 + 1;
      if (v22 == -1)
      {
        goto LABEL_91;
      }

      v23 = *(*(a1 + 64) + 8 * ((*(a1 + 88) + v22) / 0x2AuLL)) + 96 * ((*(a1 + 88) + v22) % 0x2AuLL);
      *(v23 + 16) = llround(*(a1 + 48) * *(v23 + 16));
      v24 = *(a1 + 96) - 1;
      if (*(a1 + 96) == 1)
      {
        v25 = 1;
      }

      else
      {
        do
        {
          v25 = *(a1 + 96);
          if (v25 <= v24 || v25 <= v24 - 1)
          {
            goto LABEL_91;
          }

          v26 = v24 + *(a1 + 88);
          v27 = *(a1 + 64);
          v28 = *(v27 + 8 * (v26 / 0x2A));
          v29 = v26 % 0x2A;
          v30 = *(v27 + 8 * (--v26 / 0x2A));
          v31 = v28 + 96 * v29;
          v32 = v30 + 96 * (v26 % 0x2A);
          if (*(v31 + 72) >= *(v32 + 72))
          {
            goto LABEL_34;
          }

          v82 = *(v31 + 32);
          v83 = *(v31 + 48);
          v84[0] = *(v31 + 64);
          *(v84 + 13) = *(v31 + 77);
          *v81 = *v31;
          *&v81[16] = *(v31 + 16);
          v33 = *(v32 + 16);
          *v31 = *v32;
          *(v31 + 16) = v33;
          v34 = *(v32 + 80);
          v36 = *(v32 + 32);
          v35 = *(v32 + 48);
          *(v31 + 64) = *(v32 + 64);
          *(v31 + 80) = v34;
          *(v31 + 32) = v36;
          *(v31 + 48) = v35;
          *v32 = *v81;
          *(v32 + 80) = v84[1];
          *(v32 + 64) = v84[0];
          *(v32 + 48) = v83;
          *(v32 + 32) = v82;
          *(v32 + 16) = *&v81[16];
          --v24;
        }

        while (v24);
        v25 = *(a1 + 96);
        if (!v25)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }
      }

LABEL_34:
      v37 = *(v3 + 72);
      v38 = *(*(*(a1 + 64) + 8 * ((v25 + *(a1 + 88) - 1) / 0x2A)) + 96 * ((v25 + *(a1 + 88) - 1) % 0x2A) + 72);
      if (v38 == 0x7FFFFFFFFFFFFFFFLL || v37 == 0x8000000000000000)
      {
        v79 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v38 == 0x8000000000000000 || v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_6;
        }

        v79 = v38 - v37;
        if (v38 - v37 <= 1000000)
        {
          goto LABEL_6;
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_52;
      }

      v75 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/robust_throughput_estimator.cc";
      v76 = v73 & 0xFFFFFFFF00000000 | 0x2C2;
      v73 = v76;
      v77 = &v74;
      v78[0] = "Severe packet re-ordering or timestamps offset changed: ";
      v78[1] = &v75;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v79, v40, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v81, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v48 = v78;
        *&v81[24] = v78;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v48 = *&v81[24];
        }
      }

      else
      {
        *v81 = __p;
        v48 = v78;
        *&v81[24] = v78;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal const&)::t, v41, v42, v43, v44, v45, v46, v47, *v48[1]);
      if ((v81[23] & 0x80000000) != 0)
      {
        operator delete(*v81);
        v50 = *(a1 + 64);
        v51 = *(a1 + 72);
        v52 = v50;
        if (v51 == v50)
        {
          goto LABEL_59;
        }
      }

      else
      {
LABEL_52:
        v50 = *(a1 + 64);
        v51 = *(a1 + 72);
        v52 = v50;
        if (v51 == v50)
        {
          goto LABEL_59;
        }
      }

      v53 = *(a1 + 88);
      v54 = &v50[v53 / 0x2A];
      v55 = *v54;
      v56 = *v54 + 96 * (v53 % 0x2A);
      v57 = v50[(*(a1 + 96) + v53) / 0x2A] + 96 * ((*(a1 + 96) + v53) % 0x2A);
      while (v56 != v57)
      {
        if (!v56)
        {
          goto LABEL_91;
        }

        v56 += 96;
        if (v56 - v55 == 4032)
        {
          v58 = v54[1];
          ++v54;
          v55 = v58;
          v56 = v58;
        }
      }

      v52 = v51;
LABEL_59:
      *(a1 + 96) = 0;
      v59 = v52 - v50;
      if (v59 >= 3)
      {
        do
        {
          operator delete(*v50);
          v60 = *(a1 + 72);
          v50 = (*(a1 + 64) + 8);
          *(a1 + 64) = v50;
          v59 = (v60 - v50) >> 3;
        }

        while (v59 > 2);
      }

      if (v59 == 1)
      {
        v5 = 21;
      }

      else
      {
        if (v59 != 2)
        {
          goto LABEL_5;
        }

        v5 = 42;
      }

      *(a1 + 88) = v5;
LABEL_5:
      *(a1 + 104) = 0x8000000000000000;
LABEL_6:
      v3 += 96;
    }

    while (v3 != v4);
  }

  v61 = *(a1 + 96);
  if (v61)
  {
    v62 = *(a1 + 64);
    v63 = *(a1 + 88);
    do
    {
      if (v61 <= *(a1 + 16))
      {
        v64 = v63 / 0x2A;
        v65 = v63 % 0x2A;
        v66 = *(v62[v63 / 0x2A] + 12 * (v63 % 0x2A) + 9);
        v67 = *(v62[(v61 + v63 - 1) / 0x2A] + 12 * ((v61 + v63 - 1) % 0x2A) + 9);
        v68 = v67 - v66;
        if (v66 == 0x7FFFFFFFFFFFFFFFLL || v67 == 0x8000000000000000)
        {
          v68 = 0x8000000000000000;
        }

        if (v67 == 0x7FFFFFFFFFFFFFFFLL || v66 == 0x8000000000000000)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v68;
        }

        if (v71 <= *(a1 + 32) && (v61 <= *(a1 + 12) || v71 <= *(a1 + 24)))
        {
          return;
        }
      }

      else
      {
        v64 = v63 / 0x2A;
        v65 = v63 % 0x2A;
      }

      v72 = *(v62[v64] + 12 * v65);
      if (*(a1 + 104) > v72)
      {
        v72 = *(a1 + 104);
      }

      *(a1 + 104) = v72;
      if (!v62[v64])
      {
        goto LABEL_91;
      }

      --v61;
      *(a1 + 88) = ++v63;
      *(a1 + 96) = v61;
      if (v63 >= 0x54)
      {
        operator delete(*v62);
        v62 = (*(a1 + 64) + 8);
        *(a1 + 64) = v62;
        v61 = *(a1 + 96);
        v63 = *(a1 + 88) - 42;
        *(a1 + 88) = v63;
      }
    }

    while (v61);
  }
}

unint64_t webrtc::RobustThroughputEstimator::bitrate(webrtc::RobustThroughputEstimator *this)
{
  v1 = *(this + 12);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 10);
  if (v1 < v2)
  {
    return 0;
  }

  v4 = v1 - 1;
  if (v1 == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 8);
    v8 = *(this + 11);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v8 = *(this + 11);
    v7 = *(this + 8);
    v57 = v8;
    do
    {
      v58 = v57 + 1;
      v59 = *(*(v7 + 8 * (v57 / 0x2A)) + 96 * (v57 % 0x2A) + 72);
      v60 = *(*(v7 + 8 * ((v57 + 1) / 0x2A)) + 96 * ((v57 + 1) % 0x2A) + 72);
      v61 = v60 == 0x7FFFFFFFFFFFFFFFLL || v59 == 0x8000000000000000;
      v62 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v61)
      {
        v62 = v60 - v59;
        if (v59 == 0x7FFFFFFFFFFFFFFFLL || v60 == 0x8000000000000000)
        {
          v62 = 0x8000000000000000;
        }
      }

      if (v62 > v5)
      {
        v5 = v62;
      }

      if (v62 > v6)
      {
        v5 = v6;
        v6 = v62;
      }

      v57 = v58;
      --v4;
    }

    while (v4);
  }

  if (*(this + 9) != v7)
  {
    v9 = v8 / 0x2A;
    v10 = *(v7 + 8 * (v8 / 0x2A));
    v11 = &v10[12 * (v8 % 0x2A)];
    v12 = *(v7 + 8 * ((v8 + v1) / 0x2A)) + 96 * ((v8 + v1) % 0x2A);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = *(this + 13);
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = 0x8000000000000000;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = 0x8000000000000000;
      v23 = v7 + 8 * v9;
      while (1)
      {
        v24 = v11[9];
        if (v24 >= v21)
        {
          v26 = v11[1];
          if (v22 <= v24)
          {
            v22 = v11[9];
          }

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v26 = v11[1];
          v25 = v11[2];
          v27 = v25 == 0x8000000000000000 || v26 == 0x8000000000000000;
          v13 = v26 + v25;
          if (v27)
          {
            v13 = 0x8000000000000000;
          }

          if (v26 == 0x7FFFFFFFFFFFFFFFLL || v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = v11[9];
          if (v22 <= v24)
          {
            v22 = v11[9];
          }

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_47;
          }
        }

        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = v26 == 0x8000000000000000 || v16 == 0x8000000000000000;
          v30 = v26 + v16;
          if (v29)
          {
            v30 = 0x8000000000000000;
          }

          v31 = v11[2];
          v32 = v31 == 0x7FFFFFFFFFFFFFFFLL;
          v33 = v31 == 0x8000000000000000 || v30 == 0x8000000000000000;
          v34 = v31 + v30;
          if (v33)
          {
            v34 = 0x8000000000000000;
          }

          if (v30 == 0x7FFFFFFFFFFFFFFFLL || v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = 0;
            v16 = v34;
          }

          v36 = *v11;
          if (*v11 < v18)
          {
            goto LABEL_79;
          }

LABEL_48:
          v37 = v31 == 0x8000000000000000 || v26 == 0x8000000000000000;
          v38 = v31 + v26;
          if (v37)
          {
            v38 = 0x8000000000000000;
          }

          if (v26 == 0x7FFFFFFFFFFFFFFFLL || v32)
          {
            v39 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v36 > v20)
          {
            v20 = v36;
            v14 = v39;
          }

          if (v36 < v19)
          {
            v19 = v36;
          }

          v40 = v26 == 0x8000000000000000 || v17 == 0x8000000000000000;
          v41 = v26 + v17;
          if (v40)
          {
            v41 = 0x8000000000000000;
          }

          v42 = v41 == 0x7FFFFFFFFFFFFFFFLL || v32;
          v43 = v31 == 0x8000000000000000 || v41 == 0x8000000000000000;
          v44 = v31 + v41;
          if (v43)
          {
            v44 = 0x8000000000000000;
          }

          if (v42)
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v26 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v44;
          }

          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v45;
          }

          ++v15;
          goto LABEL_79;
        }

LABEL_47:
        v31 = v11[2];
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        v32 = v31 == 0x7FFFFFFFFFFFFFFFLL;
        v36 = *v11;
        if (*v11 >= v18)
        {
          goto LABEL_48;
        }

LABEL_79:
        v11 += 12;
        if (v11 - v10 == 4032)
        {
          v46 = *(v23 + 8);
          v23 += 8;
          v10 = v46;
          v11 = v46;
        }

        if (v11 == v12)
        {
          goto LABEL_82;
        }
      }
    }
  }

  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v22 = 0x8000000000000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0x8000000000000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_82:
  v47 = -8000000;
  v48 = -8000000;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = -8000000;
    if (v13 != 0x8000000000000000)
    {
      if (v13 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x8000000000000000)
      {
        v48 = 0;
      }

      else
      {
        v48 = 8000000 * (v16 - v13);
      }
    }
  }

  v50 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x8000000000000000)
  {
    if (v14 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x8000000000000000)
    {
      v47 = 0;
    }

    else
    {
      v47 = 8000000 * (v17 - v14);
    }
  }

  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = 0x8000000000000000;
    if (v21 != 0x8000000000000000)
    {
      if (v21 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x8000000000000000)
      {
        v52 = v22 - v21;
      }

      if (v52 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = v52 - v6;
        if (v6 == 0x7FFFFFFFFFFFFFFFLL || v52 == 0x8000000000000000)
        {
          v54 = 0x8000000000000000;
        }

        v56 = v54 + v5;
        if (v56 <= 1000)
        {
          v56 = 1000;
        }

        if (v54 == 0x8000000000000000)
        {
          v50 = 1000;
        }

        else
        {
          v50 = v56;
        }
      }
    }
  }

  if (v15 < v2)
  {
    return (v48 / v50) & 0xFFFFFFFFFFFFFF00 | (v48 / v50);
  }

  v64 = 0x7FFFFFFFFFFFFFFFLL;
  v65 = v20 - v19;
  if (v20 - v19 <= 1000)
  {
    v65 = 1000;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL || v20 == 0x8000000000000000)
  {
    v65 = 1000;
  }

  if (v19 == 0x8000000000000000)
  {
    v67 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v67 = v65;
  }

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = v67;
  }

  v68 = v47 / v64;
  if (v48 / v50 < v68)
  {
    return v48 / v50;
  }

  return v68;
}

int8x16_t *TransposeWx16_NEON(int8x16_t *result, int a2, void *a3, int a4, int a5)
{
  do
  {
    v5 = *result;
    v7 = *(result + a2);
    v6 = (result + a2 + a2);
    v9 = *v6;
    v8 = (v6 + a2);
    v11 = *v8;
    v10 = (v8 + a2);
    v13 = *v10;
    v12 = (v10 + a2);
    v15 = *v12;
    v14 = (v12 + a2);
    v17 = *v14;
    v16 = (v14 + a2);
    v19 = *v16;
    v18 = (v16 + a2);
    v21 = *v18;
    v20 = (v18 + a2);
    v23 = *v20;
    v22 = (v20 + a2);
    v25 = *v22;
    v24 = (v22 + a2);
    v27 = *v24;
    v26 = (v24 + a2);
    v29 = *v26;
    v28 = (v26 + a2);
    v31 = *v28;
    v30 = (v28 + a2);
    v32 = *(v30 + a2);
    ++result;
    v33 = vtrn1q_s8(v5, v7);
    v34 = vtrn2q_s8(v5, v7);
    v35 = vtrn1q_s8(v9, v11);
    v36 = vtrn2q_s8(v9, v11);
    v37 = vtrn1q_s8(v13, v15);
    v38 = vtrn2q_s8(v13, v15);
    v39 = vtrn1q_s8(v17, v19);
    v40 = vtrn2q_s8(v17, v19);
    v41 = vtrn1q_s8(v21, v23);
    v42 = vtrn2q_s8(v21, v23);
    v43 = vtrn1q_s8(v25, v27);
    v44 = vtrn2q_s8(v25, v27);
    v45 = vtrn1q_s8(v29, v31);
    v46 = vtrn2q_s8(v29, v31);
    v47 = vtrn1q_s8(*v30, v32);
    v48 = vtrn2q_s8(*v30, v32);
    v49 = vtrn1q_s16(v33, v35);
    v50 = vtrn1q_s16(v34, v36);
    v51 = vtrn2q_s16(v33, v35);
    v52 = vtrn2q_s16(v34, v36);
    v53 = vtrn1q_s16(v37, v39);
    v54 = vtrn1q_s16(v38, v40);
    v55 = vtrn2q_s16(v37, v39);
    v56 = vtrn2q_s16(v38, v40);
    v57 = vtrn1q_s16(v41, v43);
    v58 = vtrn1q_s16(v42, v44);
    v59 = vtrn2q_s16(v41, v43);
    v60 = vtrn2q_s16(v42, v44);
    v61 = vtrn1q_s16(v45, v47);
    v62 = vtrn1q_s16(v46, v48);
    v63 = vtrn2q_s16(v45, v47);
    v64 = vtrn2q_s16(v46, v48);
    v65 = __OFSUB__(a5, 16);
    a5 -= 16;
    v66 = vtrn1q_s32(v49, v53);
    v67 = vtrn1q_s32(v50, v54);
    v68 = vtrn1q_s32(v51, v55);
    v69 = vtrn1q_s32(v52, v56);
    v70 = vtrn2q_s32(v49, v53);
    v71 = vtrn2q_s32(v50, v54);
    v72 = vtrn2q_s32(v51, v55);
    v73 = vtrn2q_s32(v52, v56);
    v74 = vtrn1q_s32(v57, v61);
    v75 = vtrn1q_s32(v58, v62);
    v76 = vtrn1q_s32(v59, v63);
    v77 = vtrn1q_s32(v60, v64);
    v78 = vtrn2q_s32(v57, v61);
    v79 = vtrn2q_s32(v58, v62);
    v80 = vtrn2q_s32(v59, v63);
    v81 = vtrn2q_s32(v60, v64);
    *a3 = v66.i64[0];
    a3[1] = v74.i64[0];
    v82 = (a3 + a4);
    *v82 = v67.i64[0];
    v82[1] = v75.i64[0];
    v83 = (v82 + a4);
    *v83 = v68.i64[0];
    v83[1] = v76.i64[0];
    v84 = (v83 + a4);
    *v84 = v69.i64[0];
    v84[1] = v77.i64[0];
    v85 = (v84 + a4);
    *v85 = v70.i64[0];
    v85[1] = v78.i64[0];
    v86 = (v85 + a4);
    *v86 = v71.i64[0];
    v86[1] = v79.i64[0];
    v87 = (v86 + a4);
    *v87 = v72.i64[0];
    v87[1] = v80.i64[0];
    v88 = (v87 + a4);
    *v88 = v73.i64[0];
    v88[1] = v81.i64[0];
    v89 = (v88 + a4);
    *v89 = v66.i64[1];
    v89[1] = v74.i64[1];
    v90 = (v89 + a4);
    *v90 = v67.i64[1];
    v90[1] = v75.i64[1];
    v91 = (v90 + a4);
    *v91 = v68.i64[1];
    v91[1] = v76.i64[1];
    v92 = (v91 + a4);
    *v92 = v69.i64[1];
    v92[1] = v77.i64[1];
    v93 = (v92 + a4);
    *v93 = v70.i64[1];
    v93[1] = v78.i64[1];
    v94 = (v93 + a4);
    *v94 = v71.i64[1];
    v94[1] = v79.i64[1];
    v95 = (v94 + a4);
    *v95 = v72.i64[1];
    v95[1] = v80.i64[1];
    v96 = (v95 + a4);
    *v96 = v73.i64[1];
    v96[1] = v81.i64[1];
    a3 = (v96 + a4);
  }

  while (!((a5 < 0) ^ v65 | (a5 == 0)));
  return result;
}

int32x4_t TransposeUVWx8_NEON(int8x16_t *a1, int a2, void *a3, int a4, void *a5, int a6, int a7)
{
  v7 = a7 - 8;
  do
  {
    v8 = *a1;
    v10 = *(a1 + a2);
    v9 = (a1 + a2 + a2);
    v12 = *v9;
    v11 = (v9 + a2);
    v14 = *v11;
    v13 = (v11 + a2);
    v16 = *v13;
    v15 = (v13 + a2);
    v18 = *v15;
    v17 = (v15 + a2);
    v19 = *(v17 + a2);
    ++a1;
    v20 = vtrn1q_s8(v8, v10);
    v21 = vtrn2q_s8(v8, v10);
    v22 = vtrn1q_s8(v12, v14);
    v23 = vtrn2q_s8(v12, v14);
    v24 = vtrn1q_s8(v16, v18);
    v25 = vtrn2q_s8(v16, v18);
    v26 = vtrn1q_s8(*v17, v19);
    v27 = vtrn2q_s8(*v17, v19);
    v28 = __OFSUB__(v7, 8);
    v7 -= 8;
    result = vtrn1q_s16(v20, v22);
    v30 = vtrn2q_s16(v20, v22);
    v31 = vtrn1q_s16(v24, v26);
    v32 = vtrn2q_s16(v24, v26);
    v33 = vtrn1q_s16(v21, v23);
    v34 = vtrn2q_s16(v21, v23);
    v35 = vtrn1q_s16(v25, v27);
    v36 = vtrn2q_s16(v25, v27);
    v37 = vtrn1q_s32(result, v31);
    v38 = vtrn2q_s32(result, v31);
    v39 = vtrn1q_s32(v30, v32);
    v40 = vtrn2q_s32(v30, v32);
    v41 = vtrn1q_s32(v33, v35);
    v42 = vtrn2q_s32(v33, v35);
    v43 = vtrn1q_s32(v34, v36);
    v44 = vtrn2q_s32(v34, v36);
    *a3 = v37.i64[0];
    *(a3 + a4) = v39.i64[0];
    v45 = (a3 + a4 + a4);
    *v45 = v38.i64[0];
    v46 = (v45 + a4);
    *v46 = v40.i64[0];
    v47 = (v46 + a4);
    *v47 = v37.i64[1];
    v48 = (v47 + a4);
    *v48 = v39.i64[1];
    v49 = (v48 + a4);
    *v49 = v38.i64[1];
    *(v49 + a4) = v40.i64[1];
    a3 += a4;
    *a5 = v41.i64[0];
    *(a5 + a6) = v43.i64[0];
    v50 = (a5 + a6 + a6);
    *v50 = v42.i64[0];
    v51 = (v50 + a6);
    *v51 = v44.i64[0];
    v52 = (v51 + a6);
    *v52 = v41.i64[1];
    v53 = (v52 + a6);
    *v53 = v43.i64[1];
    v54 = (v53 + a6);
    *v54 = v42.i64[1];
    *(v54 + a6) = v44.i64[1];
    a5 += a6;
  }

  while (v7 < 0 == v28);
  return result;
}

const char *SplitUVRow_NEON(const char *result, int8x16_t *a2, int8x16_t *a3, int a4)
{
  do
  {
    v9 = vld2q_s8(result);
    result += 32;
    a4 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a2++ = v9.val[0];
    *a3++ = v9.val[1];
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x16_t *MergeUVRow_NEON(int8x16_t *result, int8x16_t *_X1, int8x16_t *a3, int a4)
{
  do
  {
    v4 = *result++;
    v5 = *_X1++;
    a4 -= 16;
    __asm
    {
      PRFM            #0, [X0,#0x1C0]
      PRFM            #0, [X1,#0x1C0]
    }

    *a3 = vzip1q_s8(v4, v5);
    a3[1] = vzip2q_s8(v4, v5);
    a3 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int16x8_t MergeUVRow_16_NEON(uint16x8_t *_X0, uint16x8_t *_X1, int16x8_t *a3, int a4, int a5)
{
  v5 = vdupq_n_s16(16 - a4);
  do
  {
    v6 = *_X0++;
    v7 = *_X1++;
    a5 -= 8;
    result = vshlq_u16(v6, v5);
    v9 = vshlq_u16(v7, v5);
    __asm
    {
      PRFM            #0, [X0,#0x1C0]
      PRFM            #0, [X1,#0x1C0]
    }

    *a3 = vzip1q_s16(result, v9);
    a3[1] = vzip2q_s16(result, v9);
    a3 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

__int128 *CopyRow_NEON(__int128 *result, _OWORD *a2, int a3)
{
  do
  {
    v3 = *result;
    v4 = result[1];
    result += 2;
    __asm { PRFM            #0, [X0,#0x1C0] }

    _VF = __OFSUB__(a3, 32);
    a3 -= 32;
    *a2 = v3;
    a2[1] = v4;
    a2 += 2;
  }

  while (!((a3 < 0) ^ _VF | (a3 == 0)));
  return result;
}

int8x16_t *SetRow_NEON(int8x16_t *result, unsigned int a2, int a3)
{
  v3 = vdupq_n_s8(a2);
  do
  {
    v4 = __OFSUB__(a3, 16);
    a3 -= 16;
    *result++ = v3;
  }

  while (!((a3 < 0) ^ v4 | (a3 == 0)));
  return result;
}

int8x16_t MirrorRow_NEON(uint64_t a1, int8x16_t *a2, int a3)
{
  v3 = (a1 + a3 - 32);
  do
  {
    v4 = v3[1];
    v5 = *v3;
    v3 -= 2;
    v6 = __OFSUB__(a3, 32);
    a3 -= 32;
    result = vqtbl1q_s8(v4, libyuv::kShuffleMirror);
    *a2 = result;
    a2[1] = vqtbl1q_s8(v5, libyuv::kShuffleMirror);
    a2 += 2;
  }

  while (!((a3 < 0) ^ v6 | (a3 == 0)));
  return result;
}

int8x16_t MirrorSplitUVRow_NEON(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int a4)
{
  v4 = (a1 + 2 * a4 - 32);
  do
  {
    v5 = v4[1];
    v6 = *v4;
    v4 -= 2;
    v7 = __OFSUB__(a4, 16);
    a4 -= 16;
    v8 = vqtbl1q_s8(v5, libyuv::kShuffleMirrorUV);
    v9 = vqtbl1q_s8(v6, libyuv::kShuffleMirrorUV);
    result = vuzp1q_s8(v8, v9);
    *a2++ = result;
    *a3++ = vuzp2q_s8(v8, v9);
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

const char *YUY2ToYRow_NEON(const char *result, unsigned __int128 *a2, int a3)
{
  do
  {
    v3 = vld2q_s8(result);
    result += 32;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a2++ = v3;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

const char *UYVYToYRow_NEON(const char *result, int8x16_t *a2, int a3)
{
  do
  {
    v8 = vld2q_s8(result);
    result += 32;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a2++ = v8.val[1];
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

const char *YUY2ToUVRow_NEON(const char *result, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v5 = &result[a2];
  do
  {
    v11 = vld4_s8(result);
    result += 32;
    a5 -= 16;
    v12 = vld4_s8(v5);
    v5 += 32;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3++ = vrhadd_u8(v11.val[1], v12.val[1]);
    *a4++ = vrhadd_u8(v11.val[3], v12.val[3]);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x8_t UYVYToUVRow_NEON(const char *_X0, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v5 = &_X0[a2];
  do
  {
    v12 = vld4_s8(_X0);
    _X0 += 32;
    a5 -= 16;
    v13 = vld4_s8(v5);
    v5 += 32;
    result = vrhadd_u8(v12.val[0], v13.val[0]);
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3++ = result;
    *a4++ = vrhadd_u8(v12.val[2], v13.val[2]);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ARGBToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld4q_s8(_X0);
    _X0 += 64;
    a5 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    v20 = vld4q_s8(_X8);
    _X8 += 64;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[0]), v20.val[0]), 2uLL);
    v19.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[1]), v20.val[1]), 2uLL);
    v19.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[2]), v20.val[2]), 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[2], v6), v19.val[1], v10), v19.val[0], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[1], v7), v19.val[2], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t BGRAToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld4q_s8(_X0);
    _X0 += 64;
    a5 -= 16;
    v19.val[0] = vpaddlq_u8(v19.val[3]);
    __asm { PRFM            #0, [X0,#0x1C0] }

    v19.val[3] = vpaddlq_u8(v19.val[2]);
    v20 = vld4q_s8(_X8);
    _X8 += 64;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[2] = vpadalq_u8(vpaddlq_u8(v19.val[1]), v20.val[1]);
    v19.val[0] = vrshrq_n_u16(vpadalq_u8(v19.val[0], v20.val[3]), 2uLL);
    v19.val[1] = vrshrq_n_u16(vpadalq_u8(v19.val[3], v20.val[2]), 2uLL);
    v19.val[2] = vrshrq_n_u16(v19.val[2], 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[2], v6), v19.val[1], v10), v19.val[0], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[1], v7), v19.val[2], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ABGRToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld4q_s8(_X0);
    _X0 += 64;
    a5 -= 16;
    v19.val[3] = vpaddlq_u8(v19.val[2]);
    __asm { PRFM            #0, [X0,#0x1C0] }

    v19.val[2] = vpaddlq_u8(v19.val[1]);
    v20 = vld4q_s8(_X8);
    _X8 += 64;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[1] = vpadalq_u8(vpaddlq_u8(v19.val[0]), v20.val[0]);
    v19.val[0] = vrshrq_n_u16(vpadalq_u8(v19.val[3], v20.val[2]), 2uLL);
    v19.val[2] = vrshrq_n_u16(vpadalq_u8(v19.val[2], v20.val[1]), 2uLL);
    v19.val[1] = vrshrq_n_u16(v19.val[1], 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[1], v6), v19.val[2], v10), v19.val[0], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[2], v7), v19.val[1], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RGBAToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld4q_s8(_X0);
    _X0 += 64;
    a5 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    v20 = vld4q_s8(_X8);
    _X8 += 64;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[1]), v20.val[1]), 2uLL);
    v19.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[2]), v20.val[2]), 2uLL);
    v19.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[3]), v20.val[3]), 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[2], v6), v19.val[1], v10), v19.val[0], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[1], v7), v19.val[2], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RGB24ToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld3q_s8(_X0);
    _X0 += 48;
    a5 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    v20 = vld3q_s8(_X8);
    _X8 += 48;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[0]), v20.val[0]), 2uLL);
    v19.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[1]), v20.val[1]), 2uLL);
    v19.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[2]), v20.val[2]), 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[2], v6), v19.val[1], v10), v19.val[0], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[1], v7), v19.val[2], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RAWToUVRow_NEON(const char *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = &_X0[a2];
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v19 = vld3q_s8(_X0);
    _X0 += 48;
    a5 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    v20 = vld3q_s8(_X8);
    _X8 += 48;
    __asm { PRFM            #0, [X8,#0x1C0] }

    v19.val[2] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[2]), v20.val[2]), 2uLL);
    v19.val[1] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[1]), v20.val[1]), 2uLL);
    v19.val[0] = vrshrq_n_u16(vpadalq_u8(vpaddlq_u8(v19.val[0]), v20.val[0]), 2uLL);
    v20.val[0] = vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[0], v6), v19.val[1], v10), v19.val[2], v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v19.val[2], v6), v19.val[1], v7), v19.val[0], v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v20.val[0], v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RGB565ToUVRow_NEON(int16x8_t *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = (_X0 + a2);
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v12 = *_X0;
    v13 = _X0[1];
    _X0 += 2;
    a5 -= 16;
    v14 = vshrn_high_n_s16(vshrn_n_s16(v12, 3uLL), v13, 3uLL);
    v15 = vuzp2q_s8(v12, v13);
    v16 = vshlq_n_s8(vuzp1q_s8(v12, v13), 3uLL);
    v17 = vpaddlq_u8(vsriq_n_s8(v16, v16, 5uLL));
    __asm { PRFM            #0, [X0,#0x1C0] }

    v23 = vpaddlq_u8(vsriq_n_s8(v14, v14, 6uLL));
    v24 = vpaddlq_u8(vsriq_n_s8(v15, v15, 5uLL));
    v25 = *_X8;
    v26 = _X8[1];
    _X8 += 2;
    v27 = vshrn_high_n_s16(vshrn_n_s16(v25, 3uLL), v26, 3uLL);
    v28 = vuzp2q_s8(v25, v26);
    v29 = vshlq_n_s8(vuzp1q_s8(v25, v26), 3uLL);
    __asm { PRFM            #0, [X8,#0x1C0] }

    v31 = vrshrq_n_u16(vpadalq_u8(v17, vsriq_n_s8(v29, v29, 5uLL)), 2uLL);
    v32 = vrshrq_n_u16(vpadalq_u8(v23, vsriq_n_s8(v27, v27, 6uLL)), 2uLL);
    v33 = vrshrq_n_u16(vpadalq_u8(v24, vsriq_n_s8(v28, v28, 5uLL)), 2uLL);
    v34 = vmlsq_s16(vmlsq_s16(vmulq_s16(v33, v6), v32, v10), v31, v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v31, v6), v32, v7), v33, v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v34, v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ARGB1555ToUVRow_NEON(int16x8_t *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = (_X0 + a2);
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v12 = *_X0;
    v13 = _X0[1];
    _X0 += 2;
    a5 -= 16;
    v14 = vshrn_n_s16(v12, 7uLL);
    v15 = vshrn_n_s16(v12, 2uLL);
    v16 = vshlq_n_s8(vuzp1q_s8(v12, v13), 3uLL);
    v17 = vshrn_high_n_s16(v14, v13, 7uLL);
    v18 = vshrn_high_n_s16(v15, v13, 2uLL);
    v19 = vpaddlq_u8(vsriq_n_s8(v16, v16, 5uLL));
    __asm { PRFM            #0, [X0,#0x1C0] }

    v25 = vpaddlq_u8(vsriq_n_s8(v18, v18, 5uLL));
    v26 = vpaddlq_u8(vsriq_n_s8(v17, v17, 5uLL));
    v27 = *_X8;
    v28 = _X8[1];
    _X8 += 2;
    *v17.i8 = vshrn_n_s16(v27, 7uLL);
    *v18.i8 = vshrn_n_s16(v27, 2uLL);
    v29 = vshlq_n_s8(vuzp1q_s8(v27, v28), 3uLL);
    v30 = vshrn_high_n_s16(*v17.i8, v28, 7uLL);
    v31 = vshrn_high_n_s16(*v18.i8, v28, 2uLL);
    __asm { PRFM            #0, [X8,#0x1C0] }

    v33 = vrshrq_n_u16(vpadalq_u8(v19, vsriq_n_s8(v29, v29, 5uLL)), 2uLL);
    v34 = vrshrq_n_u16(vpadalq_u8(v25, vsriq_n_s8(v31, v31, 5uLL)), 2uLL);
    v35 = vrshrq_n_u16(vpadalq_u8(v26, vsriq_n_s8(v30, v30, 5uLL)), 2uLL);
    v36 = vmlsq_s16(vmlsq_s16(vmulq_s16(v35, v6), v34, v10), v33, v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v33, v6), v34, v7), v35, v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v36, v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ARGB4444ToUVRow_NEON(int16x8_t *_X0, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  _X8 = (_X0 + a2);
  v6.i64[0] = 0x70007000700070;
  v6.i64[1] = 0x70007000700070;
  v7.i64[0] = 0x4A004A004A004ALL;
  v7.i64[1] = 0x4A004A004A004ALL;
  v8.i64[0] = 0x26002600260026;
  v8.i64[1] = 0x26002600260026;
  v9.i64[0] = 0x12001200120012;
  v9.i64[1] = 0x12001200120012;
  v10.i64[0] = 0x5E005E005E005ELL;
  v10.i64[1] = 0x5E005E005E005ELL;
  v11.i64[0] = 0x8000800080008000;
  v11.i64[1] = 0x8000800080008000;
  do
  {
    v12 = *_X0;
    v13 = _X0[1];
    _X0 += 2;
    a5 -= 16;
    v14 = vuzp1q_s8(v12, v13);
    v15 = vshrn_n_s16(v12, 4uLL);
    v16 = vshlq_n_s8(v14, 4uLL);
    v17 = vshrn_high_n_s16(v15, v13, 4uLL);
    v18 = vpaddlq_u8(vsriq_n_s8(v16, v16, 4uLL));
    __asm { PRFM            #0, [X0,#0x1C0] }

    v24 = vpaddlq_u8(vsriq_n_s8(v14, v14, 4uLL));
    v25 = vpaddlq_u8(vsriq_n_s8(v17, v17, 4uLL));
    v26 = *_X8;
    v27 = _X8[1];
    _X8 += 2;
    v28 = vuzp1q_s8(v26, v27);
    *v17.i8 = vshrn_n_s16(v26, 4uLL);
    v29 = vshlq_n_s8(v28, 4uLL);
    v30 = vshrn_high_n_s16(*v17.i8, v27, 4uLL);
    __asm { PRFM            #0, [X8,#0x1C0] }

    v32 = vrshrq_n_u16(vpadalq_u8(v18, vsriq_n_s8(v29, v29, 4uLL)), 2uLL);
    v33 = vrshrq_n_u16(vpadalq_u8(v24, vsriq_n_s8(v28, v28, 4uLL)), 2uLL);
    v34 = vrshrq_n_u16(vpadalq_u8(v25, vsriq_n_s8(v30, v30, 4uLL)), 2uLL);
    v35 = vmlsq_s16(vmlsq_s16(vmulq_s16(v34, v6), v33, v10), v32, v9);
    result = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v32, v6), v33, v7), v34, v8), v11);
    *a3++ = result;
    *a4++ = vaddhn_s16(v35, v11);
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x8_t RGB565ToYRow_NEON(int16x8_t *_X0, uint8x8_t *a2, int a3)
{
  v3.i64[0] = 0x1919191919191919;
  v3.i64[1] = 0x1919191919191919;
  v4.i64[0] = 0x8181818181818181;
  v4.i64[1] = 0x8181818181818181;
  v5.i64[0] = 0x4242424242424242;
  v5.i64[1] = 0x4242424242424242;
  do
  {
    v6 = *_X0;
    v7 = _X0[1];
    _X0 += 2;
    a3 -= 16;
    v8 = vshrn_high_n_s16(vshrn_n_s16(v6, 3uLL), v7, 3uLL);
    v9 = vuzp2q_s8(v6, v7);
    v10 = vsriq_n_s8(v8, v8, 6uLL);
    v11 = vshlq_n_s8(vuzp1q_s8(v6, v7), 3uLL);
    v12 = vsriq_n_s8(v9, v9, 5uLL);
    v13 = vsriq_n_s8(v11, v11, 5uLL);
    __asm { PRFM            #0, [X0,#0x1C0] }

    v19 = vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13, v3), v10, v4), v12, v5);
    result = vqadd_u8(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v13.i8, *v3.i8), *v10.i8, *v4.i8), *v12.i8, *v5.i8), 8uLL), 0x1010101010101010);
    *a2 = result;
    a2[1] = vqadd_u8(vqrshrn_n_u16(v19, 8uLL), 0x1010101010101010);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x16_t ARGB1555ToYRow_NEON(int16x8_t *_X0, uint8x16_t *a2, int a3)
{
  v3.i64[0] = 0x1919191919191919;
  v3.i64[1] = 0x1919191919191919;
  v4.i64[0] = 0x8181818181818181;
  v4.i64[1] = 0x8181818181818181;
  v5.i64[0] = 0x4242424242424242;
  v5.i64[1] = 0x4242424242424242;
  v6.i64[0] = 0x1010101010101010;
  v6.i64[1] = 0x1010101010101010;
  do
  {
    v7 = *_X0;
    v8 = _X0[1];
    _X0 += 2;
    a3 -= 16;
    v9 = vshrn_n_s16(v7, 7uLL);
    v10 = vshrn_n_s16(v7, 2uLL);
    v11 = vshlq_n_s8(vuzp1q_s8(v7, v8), 3uLL);
    v12 = vshrn_high_n_s16(v9, v8, 7uLL);
    v13 = vshrn_high_n_s16(v10, v8, 2uLL);
    v14 = vsriq_n_s8(v11, v11, 5uLL);
    v15 = vsriq_n_s8(v12, v12, 5uLL);
    v16 = vsriq_n_s8(v13, v13, 5uLL);
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v14.i8, *v3.i8), *v16.i8, *v4.i8), *v15.i8, *v5.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v14, v3), v16, v4), v15, v5), 8uLL), v6);
    *a2++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x16_t ARGB4444ToYRow_NEON(int16x8_t *_X0, uint8x16_t *a2, int a3)
{
  v3.i64[0] = 0x1919191919191919;
  v3.i64[1] = 0x1919191919191919;
  v4.i64[0] = 0x8181818181818181;
  v4.i64[1] = 0x8181818181818181;
  v5.i64[0] = 0x4242424242424242;
  v5.i64[1] = 0x4242424242424242;
  v6.i64[0] = 0x1010101010101010;
  v6.i64[1] = 0x1010101010101010;
  do
  {
    v7 = *_X0;
    v8 = _X0[1];
    _X0 += 2;
    a3 -= 16;
    v9 = vuzp1q_s8(v7, v8);
    v10 = vshrn_n_s16(v7, 4uLL);
    v11 = vshlq_n_s8(v9, 4uLL);
    v12 = vshrn_high_n_s16(v10, v8, 4uLL);
    v13 = vsriq_n_s8(v9, v9, 4uLL);
    v14 = vsriq_n_s8(v12, v12, 4uLL);
    v15 = vsriq_n_s8(v11, v11, 4uLL);
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vqaddq_u8(vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmlal_u8(vmull_u8(*v15.i8, *v3.i8), *v13.i8, *v4.i8), *v14.i8, *v5.i8), 8uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v15, v3), v13, v4), v14, v5), 8uLL), v6);
    *a2++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ARGBToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x108000428119, 0);
  v4 = vdupq_lane_s8(0x108000428119, 1);
  v5 = vdupq_lane_s8(0x108000428119, 2);
  v6 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v13 = vld4q_s8(_X0);
    _X0 += 64;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[0].i8, *v3.i8), *v13.val[1].i8, *v4.i8), *v13.val[2].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[0], v3), v13.val[1], v4), v13.val[2], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ABGRToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x6557108000198142, 0);
  v4 = vdupq_lane_s8(0x6557108000198142, 1);
  v5 = vdupq_lane_s8(0x6557108000198142, 2);
  v6 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v13 = vld4q_s8(_X0);
    _X0 += 64;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[0].i8, *v3.i8), *v13.val[1].i8, *v4.i8), *v13.val[2].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[0], v3), v13.val[1], v4), v13.val[2], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RGBAToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x108000428119, 0);
  v4 = vdupq_lane_s8(0x108000428119, 1);
  v5 = vdupq_lane_s8(0x108000428119, 2);
  v6 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v13 = vld4q_s8(_X0);
    _X0 += 64;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[1].i8, *v3.i8), *v13.val[2].i8, *v4.i8), *v13.val[3].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[1], v3), v13.val[2], v4), v13.val[3], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t BGRAToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x6557108000198142, 0);
  v4 = vdupq_lane_s8(0x6557108000198142, 1);
  v5 = vdupq_lane_s8(0x6557108000198142, 2);
  v6 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v13 = vld4q_s8(_X0);
    _X0 += 64;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[1].i8, *v3.i8), *v13.val[2].i8, *v4.i8), *v13.val[3].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[1], v3), v13.val[2], v4), v13.val[3], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RGB24ToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x108000428119, 0);
  v4 = vdupq_lane_s8(0x108000428119, 1);
  v5 = vdupq_lane_s8(0x108000428119, 2);
  v6 = vdupq_lane_s16(0x108000428119, 2);
  do
  {
    v13 = vld3q_s8(_X0);
    _X0 += 48;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[0].i8, *v3.i8), *v13.val[1].i8, *v4.i8), *v13.val[2].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[0], v3), v13.val[1], v4), v13.val[2], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t RAWToYRow_NEON(const char *_X0, int8x8_t *a2, int a3)
{
  v3 = vdupq_lane_s8(0x6557108000198142, 0);
  v4 = vdupq_lane_s8(0x6557108000198142, 1);
  v5 = vdupq_lane_s8(0x6557108000198142, 2);
  v6 = vdupq_lane_s16(0x6557108000198142, 2);
  do
  {
    v13 = vld3q_s8(_X0);
    _X0 += 48;
    a3 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v13.val[0].i8, *v3.i8), *v13.val[1].i8, *v4.i8), *v13.val[2].i8, *v5.i8), v6);
    *a2 = result;
    a2[1] = vaddhn_s16(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v13.val[0], v3), v13.val[1], v4), v13.val[2], v5), v6);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x16_t *InterpolateRow_NEON(uint8x16_t *result, uint8x16_t *_X1, uint64_t a3, int a4, unsigned int a5)
{
  _X9 = (_X1 + a3);
  if (a5)
  {
    if (a5 == 128)
    {
      do
      {
        v16 = *_X1++;
        v17 = *_X9++;
        a4 -= 16;
        __asm
        {
          PRFM            #0, [X1,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *result++ = vrhaddq_u8(v16, v17);
      }

      while (!(_NF ^ _VF | _ZF));
    }

    else
    {
      v6 = vdupq_n_s8(a5);
      v7 = vdupq_n_s8(256 - a5);
      do
      {
        v8 = *_X1++;
        v9 = *_X9++;
        a4 -= 16;
        __asm
        {
          PRFM            #0, [X1,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v8.i8, *v7.i8), *v9.i8, *v6.i8), 8uLL), vmlal_high_u8(vmull_high_u8(v8, v7), v9, v6), 8uLL);
      }

      while (!(_NF ^ _VF | _ZF));
    }
  }

  else
  {
    do
    {
      v20 = *_X1++;
      a4 -= 16;
      __asm { PRFM            #0, [X1,#0x1C0] }

      *result++ = v20;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  return result;
}

uint8x8_t *InterpolateRow_16To8_NEON(uint8x8_t *result, uint16x8_t *_X1, uint64_t a3, unsigned int a4, int a5, unsigned int a6, double a7, double a8, uint16x8_t a9)
{
  _X9 = (_X1 + 2 * a3);
  v10 = vdupq_n_s16(15 - __clz(a4));
  if (a6)
  {
    if (a6 == 128)
    {
      do
      {
        v21 = *_X1++;
        v22 = *_X9++;
        a5 -= 8;
        __asm
        {
          PRFM            #0, [X1,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *result++ = vqmovn_u16(vshlq_u16(vrhaddq_u16(v21, v22), v10));
      }

      while (!(_NF ^ _VF | _ZF));
    }

    else
    {
      v11 = vdupq_n_s16(a6);
      v12 = vdupq_n_s16(256 - a6);
      do
      {
        v13 = *_X1++;
        v14 = *_X9++;
        a5 -= 8;
        __asm
        {
          PRFM            #0, [X1,#0x1C0]
          PRFM            #0, [X9,#0x1C0]
        }

        *result++ = vqmovn_u16(vshlq_u16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13.i8, *v12.i8), *v14.i8, *v11.i8), 8uLL), vmlal_high_u16(vmull_high_u16(v13, v12), v14, v11), 8uLL), v10));
      }

      while (!(_NF ^ _VF | _ZF));
    }
  }

  else
  {
    do
    {
      v25 = *_X1++;
      __asm { PRFM            #0, [X1,#0x1C0] }

      _VF = __OFSUB__(a5, 8);
      a5 -= 8;
      *result++ = vqmovn_u16(vshlq_u16(v25, a9));
    }

    while (!((a5 < 0) ^ _VF | (a5 == 0)));
  }

  return result;
}

int16x8_t MultiplyRow_16_NEON(int16x8_t *_X0, int16x8_t *a2, unsigned int a3, int a4)
{
  v4 = vdupq_n_s16(a3);
  do
  {
    v5 = *_X0;
    v6 = _X0[1];
    _X0 += 2;
    a4 -= 16;
    result = vmulq_s16(v5, v4);
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a2 = result;
    a2[1] = vmulq_s16(v6, v4);
    a2 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x16_t Convert16To8Row_NEON(uint16x8_t *_X0, int8x16_t *a2, unsigned int a3, int a4)
{
  v4 = vdupq_n_s16(23 - __clz(a3));
  do
  {
    v5 = *_X0;
    v6 = _X0[1];
    _X0 += 2;
    a4 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vuzp2q_s8(vqshlq_u16(v5, v4), vqshlq_u16(v6, v4));
    *a2++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint16x8_t Convert8To16Row_NEON(int8x16_t *a1, uint16x8_t *a2, unsigned int a3, int a4)
{
  v4 = vdupq_n_s16(15 - __clz(a3));
  do
  {
    v5 = *a1++;
    v6 = v5;
    v7 = vzip2q_s8(v6, v6);
    a4 -= 16;
    result = vshlq_u16(vzip1q_s8(v6, v6), v4);
    *a2 = result;
    a2[1] = vshlq_u16(v7, v4);
    a2 += 2;
  }

  while (a4);
  return result;
}

uint64_t dcsctp::RRSendQueue::OutgoingStream::bytes_to_send_in_next_message(dcsctp::RRSendQueue::OutgoingStream *this)
{
  if ((*(this + 6) & 0xFFFFFFFE) == 2 || !*(this + 10))
  {
    return 0;
  }

  else
  {
    return *(*(*(this + 6) + 8 * (*(this + 9) / 0x2AuLL)) + 96 * (*(this + 9) % 0x2AuLL) + 72);
  }
}

void dcsctp::RRSendQueue::OutgoingStream::Produce(dcsctp::RRSendQueue::OutgoingStream *this@<X0>, Timestamp a2@<0:X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(this + 10))
  {
    v8 = *(this + 9);
    while (1)
    {
      v9 = *(*(this + 6) + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
      if (*(v9 + 84))
      {
        v17 = (v9 + 84);
        if (*(v9 + 40))
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (*(v9 + 48) > a2.var0)
      {
        break;
      }

      dcsctp::RRSendQueue::OutgoingStream::HandleMessageExpired(this, v9);
      v10 = *(this + 10);
      if (!v10)
      {
        goto LABEL_66;
      }

      v11 = *(this + 9);
      v12 = *(*(this + 6) + 8 * (v11 / 0x2A));
      if (!v12)
      {
        goto LABEL_66;
      }

      v13 = v12 + 96 * (v11 % 0x2A);
      v14 = *(v13 + 16);
      if (v14)
      {
        *(v13 + 24) = v14;
        operator delete(v14);
        v11 = *(this + 9);
        v10 = *(this + 10);
      }

      v15 = v10 - 1;
      v8 = v11 + 1;
      *(this + 9) = v11 + 1;
      *(this + 10) = v15;
      if (v11 + 1 >= 0x54)
      {
        operator delete(**(this + 6));
        *(this + 6) += 8;
        v15 = *(this + 10);
        v8 = *(this + 9) - 42;
        *(this + 9) = v8;
      }

      if (!v15)
      {
        goto LABEL_12;
      }
    }

    *(v9 + 84) = 1;
    v17 = (v9 + 84);
    v18 = *(v9 + 40);
    v19 = 32;
    if (v18)
    {
      v19 = 28;
    }

    v20 = *(this + v19);
    *(v9 + 80) = v20;
    *(this + v19) = v20 + 1;
    if ((v18 & 1) == 0)
    {
LABEL_18:
      if ((*(v9 + 90) & 1) == 0)
      {
        v21 = *(this + 18);
        *(v9 + 90) = 1;
        *(v9 + 88) = v21;
        *(this + 18) = v21 + 1;
      }
    }

LABEL_20:
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    v24 = v22 - v23;
    if (v22 == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v9 + 16);
    }

    v26 = *(v9 + 64);
    v27 = v25 + v26;
    v28 = v24 - v26;
    if (v24 - v26 >= a3)
    {
      v28 = a3;
    }

    if (!v28)
    {
      v27 = 0;
    }

    v29 = v24 > v26;
    if (v24 > v26)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v27;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + v30;
    v33 = v31 + v30 == v25 + v24;
    v75 = *(v9 + 8);
    v76 = *(v9 + 12);
    v77 = v25 == v31;
    v34 = v25 == v31 && v32 == v25 + v24;
    v72 = v30;
    v78 = v25 + v24;
    if (v34)
    {
      v35 = *(v9 + 32);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
    }

    else
    {
      if (v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_68:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v35 = 0;
      v22 = 0;
      v23 = 0;
    }

    v74 = *(v9 + 92);
    *(v9 + 92) = v74 + 1;
    v36 = v22 - v23;
    v38 = *(this + 15);
    v37 = *(this + 16);
    v39 = v38 - (v22 - v23);
    *(this + 15) = v39;
    if (v38 > v37 && v39 <= v37)
    {
      v70 = v17;
      v40 = *(this + 14);
      if (!v40)
      {
        goto LABEL_67;
      }

      v41 = v23;
      v42 = v35;
      v43 = v22;
      v44 = v33;
      v45 = v9;
      (*(*v40 + 48))(v40);
      v9 = v45;
      v33 = v44;
      v22 = v43;
      v35 = v42;
      v23 = v41;
      v17 = v70;
    }

    v46 = *(this + 1);
    v48 = v46[18];
    v47 = v46[19];
    v46[18] = v48 - v36;
    if (v48 > v47 && v48 - v36 <= v47)
    {
      v49 = v46[17];
      if (!v49)
      {
        goto LABEL_67;
      }

      v50 = v22;
      v51 = v9;
      (*(*v49 + 48))(v49);
      v9 = v51;
      v22 = v50;
    }

    if (*(v9 + 90) == 1)
    {
      v52 = *(v9 + 88);
    }

    else
    {
      v52 = 0;
    }

    if (*v17)
    {
      v53 = *v9;
      v54 = *(v9 + 80);
      v55 = *(v9 + 40);
      v56 = *(v9 + 42);
      v57 = *(v9 + 48);
      if (v32 != v78)
      {
        v58 = 0;
        v59 = *(v9 + 72) - v72;
        *(v9 + 64) += v72;
        *(v9 + 72) = v59;
LABEL_64:
        *a4 = v53;
        *(a4 + 8) = v75;
        *(a4 + 10) = v52;
        *(a4 + 12) = v54;
        *(a4 + 16) = v74;
        *(a4 + 20) = v76;
        *(a4 + 24) = v23;
        *(a4 + 32) = v22;
        *(a4 + 40) = v35;
        *(a4 + 48) = v77;
        *(a4 + 49) = v33;
        *(a4 + 50) = v55;
        *(a4 + 56) = v56;
        v16 = 1;
        *(a4 + 64) = v57;
        *(a4 + 72) = v58;
        goto LABEL_65;
      }

      v60 = *(this + 10);
      if (v60)
      {
        v71 = *(v9 + 42);
        v73 = *(v9 + 40);
        v79 = *(v9 + 48);
        v61 = *(this + 9);
        v62 = *(*(this + 6) + 8 * (v61 / 0x2A));
        if (v62)
        {
          v58 = *(v9 + 56);
          v63 = v62 + 96 * (v61 % 0x2A);
          v64 = *(v63 + 16);
          if (v64)
          {
            *(v63 + 24) = v64;
            v65 = v22;
            v66 = v52;
            operator delete(v64);
            v52 = v66;
            v22 = v65;
            v61 = *(this + 9);
            v60 = *(this + 10);
          }

          v67 = v61 + 1;
          *(this + 9) = v67;
          *(this + 10) = v60 - 1;
          if (v67 >= 0x54)
          {
            v68 = v22;
            v69 = v52;
            operator delete(**(this + 6));
            v52 = v69;
            v22 = v68;
            *(this + 6) += 8;
            *(this + 9) -= 42;
          }

          v57 = v79;
          v55 = v73;
          v56 = v71;
          if (*(this + 6) == 1)
          {
            *(this + 6) = 2;
          }

          goto LABEL_64;
        }
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_68;
  }

LABEL_12:
  v16 = 0;
  *a4 = 0;
LABEL_65:
  *(a4 + 80) = v16;
}

void dcsctp::RRSendQueue::OutgoingStream::HandleMessageExpired(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = a1[15];
  v6 = a1[16];
  a1[15] = v5 - v4;
  if (v5 > v6 && v5 - v4 <= v6)
  {
    v8 = a1[14];
    if (!v8)
    {
      goto LABEL_18;
    }

    (*(*v8 + 48))(v8);
    v4 = *(a2 + 72);
  }

  v9 = a1[1];
  v10 = v9[18];
  v11 = v9[19];
  v12 = v10 - v4;
  v9[18] = v12;
  if (v10 > v11 && v12 <= v11)
  {
    v14 = v9[17];
    if (v14)
    {
      (*(*v14 + 48))(v14);
      goto LABEL_13;
    }

LABEL_18:
    v17 = std::__throw_bad_function_call[abi:sn200100]();
    dcsctp::RRSendQueue::Add(v17, v18, v19, v20);
    return;
  }

LABEL_13:
  v15 = *(a2 + 56);
  if (v15)
  {
    (*(**(a1[1] + 24) + 184))(*(a1[1] + 24), v15, 0);
    v16 = *(**(a1[1] + 24) + 200);

    v16();
  }
}

void dcsctp::RRSendQueue::Add(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  if (a4[24])
  {
    v5 = *(a4 + 8);
  }

  else
  {
    v5 = -1;
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4[8] != 1)
  {
    goto LABEL_12;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v7 = *(a4 + 1);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  if (a2 == 0x8000000000000000)
  {
    goto LABEL_8;
  }

  v8 = a2 + 1000 * v7;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 == 0x8000000000000000)
    {
LABEL_8:
      v6 = 0x8000000000000000;
      goto LABEL_12;
    }

    v6 = v8 + 1000;
  }

LABEL_12:
  v9 = *a4;
  v10 = *(a4 + 4);
  StreamInfo = dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1, *a3);
  v12 = a3[1];
  v32 = *a3;
  v33 = *(a3 + 1);
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  v13 = (*(*StreamInfo + 24))(StreamInfo);
  v14 = StreamInfo[6];
  v15 = StreamInfo[7];
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 42 * ((v15 - v14) >> 3) - 1;
  }

  v31 = v12;
  v17 = v33 - v12;
  StreamInfo[15] += v17;
  v18 = StreamInfo[1];
  *(v18 + 144) += v17;
  v19 = *(v18 + 36);
  *(v18 + 36) = v19 + 1;
  v20 = StreamInfo[9];
  if (v16 == StreamInfo[10] + v20)
  {
    v21 = v20 >= 0x2A;
    v22 = v20 - 42;
    v30 = v13;
    if (!v21)
    {
      v23 = StreamInfo[8];
      v24 = StreamInfo[5];
      if (v15 - v14 < (v23 - v24))
      {
        operator new();
      }

      if (v23 == v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = (v23 - v24) >> 2;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

LABEL_33:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    StreamInfo[9] = v22;
    v34 = *v14;
    StreamInfo[6] = v14 + 8;
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(StreamInfo + 5, &v34);
    v14 = StreamInfo[6];
    v15 = StreamInfo[7];
    v13 = v30;
  }

  if (v15 == v14 || (v26 = StreamInfo[10] + StreamInfo[9], (v27 = *&v14[8 * (v26 / 0x2A)]) == 0))
  {
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27 + 96 * (v26 % 0x2A);
  *v28 = v19;
  *(v28 + 8) = v32;
  *(v28 + 16) = v31;
  *(v28 + 24) = v33;
  *(v28 + 40) = v9;
  *(v28 + 42) = v5;
  *(v28 + 48) = v6;
  *(v28 + 56) = v10;
  *(v28 + 64) = 0;
  *(v28 + 72) = v17;
  *(v28 + 80) = 0;
  *(v28 + 84) = 0;
  *(v28 + 88) = 0;
  *(v28 + 90) = 0;
  *(v28 + 92) = 0;
  ++StreamInfo[10];
  if (!v13)
  {
    v29 = StreamInfo[2];

    dcsctp::StreamScheduler::Stream::MaybeMakeActive(v29);
  }
}

uint64_t dcsctp::RRSendQueue::GetOrCreateStreamInfo(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 168);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a1 + 168;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == a1 + 168 || *(v3 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  return v3 + 40;
}

void dcsctp::RRSendQueue::Discard(uint64_t a1, unsigned __int16 a2, int a3)
{
  StreamInfo = dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1, a2);
  if (StreamInfo[10])
  {
    v5 = StreamInfo;
    v6 = (*(StreamInfo[6] + 8 * (StreamInfo[9] / 0x2AuLL)) + 96 * (StreamInfo[9] % 0x2AuLL));
    if (*v6 == a3)
    {
      dcsctp::RRSendQueue::OutgoingStream::HandleMessageExpired(StreamInfo, v6);
      v7 = v5[10];
      if (!v7)
      {
        goto LABEL_37;
      }

      v8 = v5[9];
      v9 = *(v5[6] + 8 * (v8 / 0x2A));
      if (!v9)
      {
        goto LABEL_37;
      }

      v10 = v9 + 96 * (v8 % 0x2A);
      v11 = *(v10 + 16);
      if (v11)
      {
        *(v10 + 24) = v11;
        operator delete(v11);
        v8 = v5[9];
        v7 = v5[10];
      }

      v12 = v8 + 1;
      v5[9] = v12;
      v5[10] = v7 - 1;
      if (v12 >= 0x54)
      {
        operator delete(*v5[6]);
        v5[6] += 8;
        v5[9] -= 42;
      }

      v13 = v5[2];
      v14 = *v13;
      *(*v13 + 41) = 0;
      if (*(v5 + 6) == 1)
      {
        *(v5 + 6) = 2;
        v13[5] = 0;
        v16 = *(v14 + 48);
        v15 = *(v14 + 56);
        if (v16 != v15)
        {
          while (*v16 != v13)
          {
            if (++v16 == v15)
            {
              return;
            }
          }

          if (v16 != v15)
          {
            for (i = v16 + 1; i != v15; ++i)
            {
              if (*i != v13)
              {
                *v16++ = *i;
              }
            }
          }
        }
      }

      else
      {
        if ((*(*v5 + 24))(v5))
        {
          return;
        }

        v17 = v5[2];
        v17[5] = 0;
        v14 = *v17;
        v16 = *(*v17 + 48);
        v15 = *(*v17 + 56);
        if (v16 != v15)
        {
          while (*v16 != v17)
          {
            if (++v16 == v15)
            {
              return;
            }
          }

          if (v16 != v15)
          {
            for (j = v16 + 1; j != v15; ++j)
            {
              if (*j != v17)
              {
                *v16++ = *j;
              }
            }
          }
        }
      }

      if (v15 < v16)
      {
LABEL_37:
        __break(1u);
        return;
      }

      if (v16 != v15)
      {
        *(v14 + 56) = v16;
      }
    }
  }
}

void dcsctp::RRSendQueue::PrepareResetStream(uint64_t a1, unsigned __int16 a2)
{
  StreamInfo = dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1, a2);
  if (*(StreamInfo + 24))
  {
    return;
  }

  v3 = StreamInfo;
  v4 = *(StreamInfo + 72);
  v5 = *(StreamInfo + 48);
  v6 = *(StreamInfo + 56);
  v7 = &v5[v4 / 0x2A];
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 96 * (v4 % 0x2A);
  }

  v153 = *(StreamInfo + 80);
  v9 = v153;
LABEL_7:
  v10 = -v8;
  while (v6 != v5)
  {
    if (v8 == v5[(v9 + v4) / 0x2A] + 96 * ((v9 + v4) % 0x2A))
    {
      goto LABEL_165;
    }

LABEL_12:
    if (!*(v8 + 64))
    {
      dcsctp::RRSendQueue::OutgoingStream::HandleMessageExpired(v3, v8);
      v13 = *(v3 + 72);
      v12 = *(v3 + 80);
      v14 = v13 + v12;
      v15 = (v13 + v12) / 0x2A;
      v16 = *(v3 + 48);
      v17 = *(v3 + 56);
      v18 = (v16 + 8 * v15);
      v154 = v3;
      if (v17 == v16)
      {
        v21 = 0;
        v19 = (v16 + (((((v13 >> 1) * 0xC30C30C30C30C30DLL) >> 64) >> 1) & 0x3FFFFFFFFFFFFFF8));
        v20 = *v19;
        goto LABEL_20;
      }

      if (v8 == *v18 + 96 * (v14 - 42 * v15))
      {
        goto LABEL_182;
      }

      v19 = (v16 + 8 * (v13 / 0x2A));
      v20 = *v19;
      v21 = *v19 + 96 * (v13 % 0x2A);
      if (v8 == v21)
      {
        v152 = 0;
        v22 = 0;
        v23 = -v10;
        v24 = 1;
        v155 = (v16 + 8 * (v13 / 0x2A));
        v25 = v155;
        goto LABEL_42;
      }

LABEL_20:
      v25 = v19;
      v155 = v19;
      v26 = (v21 - v20) >> 5;
      v22 = 42 * ((v7 - v19) >> 3) + 0x5555555555555555 * v26 - 0x5555555555555555 * ((-v10 - *v7) >> 5);
      v24 = 42 * ((v7 - v19) >> 3) + 0x5555555555555555 * v26 == 0x5555555555555555 * ((-v10 - *v7) >> 5);
      if (!v22)
      {
        v23 = v21;
        goto LABEL_41;
      }

      v27 = v22 - 0x5555555555555555 * v26;
      if (v27 < 1)
      {
        v28 = 41 - v27;
        v25 = &v19[-(v28 / 0x2A)];
        v20 = *v25;
        v23 = *v25 + 96 * (42 * (v28 / 0x2A) - v28) + 3936;
        if (v22 > (v12 - 1) >> 1)
        {
          goto LABEL_26;
        }

LABEL_41:
        v152 = v21 == 0;
LABEL_42:
        v151 = v24;
        v150 = v22;
        v45 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v20) >> 5);
        if ((v23 - v20) < -95)
        {
          v64 = 40 - v45;
          v65 = (40 - v45) / 0x2A;
          v48 = &v25[-v65];
          v49 = *v48;
          v50 = *v48 + 96 * (42 * v65 - v64) + 3936;
          v51 = v155;
          if (v155 == v25)
          {
            goto LABEL_56;
          }

LABEL_44:
          v156 = v21;
          if (v20 != v23)
          {
            while (1)
            {
              v52 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 5);
              v53 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v20) >> 5);
              if (v53 >= v52)
              {
                v53 = v52;
              }

              if (v53)
              {
                v54 = 0;
                v159 = v53;
                v55 = -96 * v53;
                do
                {
                  v59 = v23 + v54;
                  v60 = v50 + v54;
                  v62 = (v50 + v54 - 80);
                  v61 = *v62;
                  *(v62 - 4) = *(v23 + v54 - 96);
                  *(v62 - 1) = *(v23 + v54 - 88);
                  if (v61)
                  {
                    *(v60 - 72) = v61;
                    operator delete(v61);
                    *v62 = 0;
                    *(v50 + v54 - 72) = 0;
                    *(v50 + v54 - 64) = 0;
                  }

                  *v62 = *(v59 - 80);
                  *(v60 - 64) = *(v59 - 64);
                  *(v59 - 80) = 0;
                  *(v59 - 72) = 0;
                  *(v59 - 64) = 0;
                  v56 = *(v59 - 56);
                  v57 = *(v59 - 40);
                  v58 = *(v59 - 24);
                  *(v60 - 8) = *(v59 - 8);
                  *(v60 - 24) = v58;
                  *(v60 - 40) = v57;
                  *(v60 - 56) = v56;
                  v54 -= 96;
                }

                while (v55 != v54);
                v50 += v54;
                v21 = v156;
                v53 = v159;
              }

              v23 -= 96 * v53;
              if (v23 == v20)
              {
                break;
              }

              v63 = *--v48;
              v49 = v63;
              v50 = v63 + 4032;
            }

            v49 = *v48;
            if (*v48 + 4032 == v50)
            {
              v77 = v48[1];
              ++v48;
              v49 = v77;
              v50 = v77;
            }

            v51 = v155;
          }

          for (i = v25 - 1; i != v51; i = v160 - 1)
          {
            v160 = i;
            v79 = *i;
            v80 = *i + 4032;
            while (1)
            {
              v81 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 5);
              if ((0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 5)) >= v81)
              {
                v82 = v81;
              }

              else
              {
                v82 = 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 5);
              }

              if (v82)
              {
                v83 = 0;
                do
                {
                  v87 = v80 + v83;
                  v88 = v50 + v83;
                  v90 = (v50 + v83 - 80);
                  v89 = *v90;
                  *(v90 - 4) = *(v80 + v83 - 96);
                  *(v90 - 1) = *(v80 + v83 - 88);
                  if (v89)
                  {
                    *(v88 - 72) = v89;
                    operator delete(v89);
                    *v90 = 0;
                    *(v50 + v83 - 72) = 0;
                    *(v50 + v83 - 64) = 0;
                  }

                  *v90 = *(v87 - 80);
                  *(v88 - 64) = *(v87 - 64);
                  *(v87 - 80) = 0;
                  *(v87 - 72) = 0;
                  *(v87 - 64) = 0;
                  v84 = *(v87 - 56);
                  v85 = *(v87 - 40);
                  v86 = *(v87 - 24);
                  *(v88 - 8) = *(v87 - 8);
                  *(v88 - 24) = v86;
                  *(v88 - 40) = v85;
                  *(v88 - 56) = v84;
                  v83 -= 96;
                }

                while (-96 * v82 != v83);
                v50 += v83;
              }

              v80 -= 96 * v82;
              if (v80 == v79)
              {
                break;
              }

              v91 = *--v48;
              v49 = v91;
              v50 = v91 + 4032;
            }

            v49 = *v48;
            if (*v48 + 4032 == v50)
            {
              v92 = v48[1];
              ++v48;
              v49 = v92;
              v50 = v92;
            }

            v51 = v155;
            v21 = v156;
          }

          v93 = *i + 4032;
          if (v93 != v21)
          {
            while (1)
            {
              v94 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 5);
              if ((0xAAAAAAAAAAAAAAABLL * ((v93 - v21) >> 5)) >= v94)
              {
                v95 = v94;
              }

              else
              {
                v95 = 0xAAAAAAAAAAAAAAABLL * ((v93 - v21) >> 5);
              }

              if (v95)
              {
                v96 = 0;
                do
                {
                  v100 = v93 + v96;
                  v101 = v50 + v96;
                  v103 = (v50 + v96 - 80);
                  v102 = *v103;
                  *(v103 - 4) = *(v93 + v96 - 96);
                  *(v103 - 1) = *(v93 + v96 - 88);
                  if (v102)
                  {
                    *(v101 - 72) = v102;
                    operator delete(v102);
                    *v103 = 0;
                    *(v50 + v96 - 72) = 0;
                    *(v50 + v96 - 64) = 0;
                  }

                  *v103 = *(v100 - 80);
                  *(v101 - 64) = *(v100 - 64);
                  *(v100 - 80) = 0;
                  *(v100 - 72) = 0;
                  *(v100 - 64) = 0;
                  v97 = *(v100 - 56);
                  v98 = *(v100 - 40);
                  v99 = *(v100 - 24);
                  *(v101 - 8) = *(v100 - 8);
                  *(v101 - 24) = v99;
                  *(v101 - 40) = v98;
                  *(v101 - 56) = v97;
                  v96 -= 96;
                }

                while (-96 * v95 != v96);
              }

              v93 -= 96 * v95;
              if (v93 == v21)
              {
                break;
              }

              v104 = *--v48;
              v49 = v104;
              v50 = v104 + 4032;
            }
          }
        }

        else
        {
          v46 = v45 + 1;
          v47 = (v45 + 1) / 0x2A;
          v48 = &v25[v47];
          v49 = *v48;
          v50 = *v48 + 96 * (v46 - 42 * v47);
          v51 = v155;
          if (v155 != v25)
          {
            goto LABEL_44;
          }

LABEL_56:
          if (v21 != v23)
          {
            while (1)
            {
              v66 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 5);
              if ((0xAAAAAAAAAAAAAAABLL * ((v23 - v21) >> 5)) >= v66)
              {
                v67 = v66;
              }

              else
              {
                v67 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v21) >> 5);
              }

              if (v67)
              {
                v68 = 0;
                do
                {
                  v72 = v23 + v68;
                  v73 = v50 + v68;
                  v75 = (v50 + v68 - 80);
                  v74 = *v75;
                  *(v75 - 4) = *(v23 + v68 - 96);
                  *(v75 - 1) = *(v23 + v68 - 88);
                  if (v74)
                  {
                    *(v73 - 72) = v74;
                    operator delete(v74);
                    *v75 = 0;
                    *(v50 + v68 - 72) = 0;
                    *(v50 + v68 - 64) = 0;
                  }

                  *v75 = *(v72 - 80);
                  *(v73 - 64) = *(v72 - 64);
                  *(v72 - 80) = 0;
                  *(v72 - 72) = 0;
                  *(v72 - 64) = 0;
                  v69 = *(v72 - 56);
                  v70 = *(v72 - 40);
                  v71 = *(v72 - 24);
                  *(v73 - 8) = *(v72 - 8);
                  *(v73 - 24) = v71;
                  *(v73 - 40) = v70;
                  *(v73 - 56) = v69;
                  v68 -= 96;
                }

                while (-96 * v67 != v68);
              }

              v23 -= 96 * v67;
              if (v23 == v21)
              {
                break;
              }

              v76 = *--v48;
              v49 = v76;
              v50 = v76 + 4032;
            }
          }
        }

        if (!v152)
        {
          v105 = *(v21 + 16);
          if (v105)
          {
            *(v21 + 24) = v105;
            operator delete(v105);
          }

          v3 = v154;
          v106 = vaddq_s64(*(v154 + 72), xmmword_273B93620);
          *(v154 + 72) = v106;
          v4 = v106.i64[0];
          v5 = *(v154 + 48);
          v107 = v151;
          if (v106.i64[0] >= 0x54uLL)
          {
            operator delete(*v5);
            v5 = (*(v154 + 48) + 8);
            *(v154 + 48) = v5;
            v4 = *(v154 + 72) - 42;
            *(v154 + 72) = v4;
          }

          goto LABEL_157;
        }

LABEL_182:
        __break(1u);
        return;
      }

      v25 = &v19[v27 / 0x2AuLL];
      v20 = *v25;
      v23 = *v25 + 96 * (v27 % 0x2AuLL);
      if (v22 <= (v12 - 1) >> 1)
      {
        goto LABEL_41;
      }

LABEL_26:
      v150 = v22;
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v20) >> 5);
      if ((v23 - v20) < -95)
      {
        v108 = 40 - v29;
        v109 = (40 - v29) / 0x2A;
        v32 = &v25[-v109];
        v33 = *v32;
        v34 = *v32 + 96 * (42 * v109 - v108) + 3936;
        if (v17 == v16)
        {
          goto LABEL_104;
        }

LABEL_28:
        v35 = *v18 + 96 * (v14 - 42 * v15);
        if (v32 == v18)
        {
LABEL_105:
          if (v35 == v34)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v111 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23 + 4032) >> 5);
            if ((0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 5)) < v111)
            {
              v111 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 5);
            }

            if (v111)
            {
              v112 = v34 + 96 * v111;
              do
              {
                *v23 = *v34;
                *(v23 + 8) = *(v34 + 8);
                v116 = *(v23 + 16);
                if (v116)
                {
                  *(v23 + 24) = v116;
                  operator delete(v116);
                  *(v23 + 16) = 0;
                  *(v23 + 24) = 0;
                  *(v23 + 32) = 0;
                }

                *(v23 + 16) = *(v34 + 16);
                *(v23 + 32) = *(v34 + 32);
                *(v34 + 16) = 0;
                *(v34 + 24) = 0;
                *(v34 + 32) = 0;
                v113 = *(v34 + 40);
                v114 = *(v34 + 56);
                v115 = *(v34 + 72);
                *(v23 + 88) = *(v34 + 88);
                *(v23 + 72) = v115;
                *(v23 + 56) = v114;
                *(v23 + 40) = v113;
                v34 += 96;
                v23 += 96;
              }

              while (v34 != v112);
              if (v112 == v35)
              {
LABEL_147:
                if (v23 == *v25 + 4032)
                {
                  v23 = v25[1];
                }

                goto LABEL_149;
              }
            }

            else
            {
              v112 = v34;
            }

            v110 = v25[1];
            ++v25;
            v20 = v110;
            v34 = v112;
            v23 = v110;
          }
        }
      }

      else
      {
        v30 = v29 + 1;
        v31 = (v29 + 1) / 0x2A;
        v32 = &v25[v31];
        v33 = *v32;
        v34 = *v32 + 96 * (v30 - 42 * v31);
        if (v17 != v16)
        {
          goto LABEL_28;
        }

LABEL_104:
        v35 = 0;
        if (v32 == v18)
        {
          goto LABEL_105;
        }
      }

      v158 = v35;
      v36 = v33 + 4032;
      if (v33 + 4032 == v34)
      {
        goto LABEL_119;
      }

      v37 = (v16 + 8 * v15);
      while (2)
      {
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23 + 4032) >> 5);
        if ((0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 5)) < v39)
        {
          v39 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 5);
        }

        if (!v39)
        {
          v40 = v34;
LABEL_32:
          v38 = v25[1];
          ++v25;
          v20 = v38;
          v34 = v40;
          v23 = v38;
          continue;
        }

        break;
      }

      v40 = v34 + 96 * v39;
      do
      {
        *v23 = *v34;
        *(v23 + 8) = *(v34 + 8);
        v44 = *(v23 + 16);
        if (v44)
        {
          *(v23 + 24) = v44;
          operator delete(v44);
          *(v23 + 16) = 0;
          *(v23 + 24) = 0;
          *(v23 + 32) = 0;
        }

        *(v23 + 16) = *(v34 + 16);
        *(v23 + 32) = *(v34 + 32);
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
        *(v34 + 32) = 0;
        v41 = *(v34 + 40);
        v42 = *(v34 + 56);
        v43 = *(v34 + 72);
        *(v23 + 88) = *(v34 + 88);
        *(v23 + 72) = v43;
        *(v23 + 56) = v42;
        *(v23 + 40) = v41;
        v34 += 96;
        v23 += 96;
      }

      while (v34 != v40);
      if (v40 != v36)
      {
        goto LABEL_32;
      }

      v20 = *v25;
      v18 = v37;
      if (v23 == *v25 + 4032)
      {
        v117 = v25[1];
        ++v25;
        v20 = v117;
        v23 = v117;
      }

LABEL_119:
      v118 = v158;
      v119 = v32 + 1;
      if (v32 + 1 == v18)
      {
        goto LABEL_135;
      }

      v157 = v18;
      while (2)
      {
        while (2)
        {
          v120 = 0;
          v121 = *v119;
          while (2)
          {
            v123 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23 + 4032) >> 5);
            if ((0xAAAAAAAAAAAAAAABLL * ((4032 - v120) >> 5)) < v123)
            {
              v123 = 0xAAAAAAAAAAAAAAABLL * ((4032 - v120) >> 5);
            }

            if (!v123)
            {
              v124 = v120;
LABEL_125:
              v122 = v25[1];
              ++v25;
              v20 = v122;
              v120 = v124;
              v23 = v122;
              continue;
            }

            break;
          }

          v124 = v120 + 96 * v123;
          v125 = v121 + v120;
          do
          {
            *v23 = *v125;
            *(v23 + 8) = *(v125 + 8);
            v129 = *(v23 + 16);
            if (v129)
            {
              *(v23 + 24) = v129;
              operator delete(v129);
              *(v23 + 16) = 0;
              *(v23 + 24) = 0;
              *(v23 + 32) = 0;
            }

            *(v23 + 16) = *(v125 + 16);
            *(v23 + 32) = *(v125 + 32);
            *(v125 + 16) = 0;
            *(v125 + 24) = 0;
            *(v125 + 32) = 0;
            v126 = *(v125 + 40);
            v127 = *(v125 + 56);
            v128 = *(v125 + 72);
            *(v23 + 88) = *(v125 + 88);
            *(v23 + 72) = v128;
            *(v23 + 56) = v127;
            *(v23 + 40) = v126;
            v125 += 96;
            v23 += 96;
          }

          while (v125 != v121 + v124);
          if (v124 != 4032)
          {
            goto LABEL_125;
          }

          v20 = *v25;
          if (v23 != *v25 + 4032)
          {
            v18 = v157;
            v118 = v158;
            if (++v119 == v157)
            {
              goto LABEL_135;
            }

            continue;
          }

          break;
        }

        v130 = v25[1];
        ++v25;
        v20 = v130;
        v23 = v130;
        v18 = v157;
        v118 = v158;
        if (++v119 != v157)
        {
          continue;
        }

        break;
      }

LABEL_135:
      v131 = *v18;
      if (*v18 != v118)
      {
        while (1)
        {
          v133 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23 + 4032) >> 5);
          if ((0xAAAAAAAAAAAAAAABLL * ((v118 - v131) >> 5)) < v133)
          {
            v133 = 0xAAAAAAAAAAAAAAABLL * ((v118 - v131) >> 5);
          }

          if (v133)
          {
            v134 = v131 + 96 * v133;
            do
            {
              *v23 = *v131;
              *(v23 + 8) = *(v131 + 8);
              v138 = *(v23 + 16);
              if (v138)
              {
                *(v23 + 24) = v138;
                operator delete(v138);
                *(v23 + 16) = 0;
                *(v23 + 24) = 0;
                *(v23 + 32) = 0;
              }

              *(v23 + 16) = *(v131 + 16);
              *(v23 + 32) = *(v131 + 32);
              *(v131 + 16) = 0;
              *(v131 + 24) = 0;
              *(v131 + 32) = 0;
              v135 = *(v131 + 40);
              v136 = *(v131 + 56);
              v137 = *(v131 + 72);
              *(v23 + 88) = *(v131 + 88);
              *(v23 + 72) = v137;
              *(v23 + 56) = v136;
              *(v23 + 40) = v135;
              v131 += 96;
              v23 += 96;
            }

            while (v131 != v134);
            if (v134 == v118)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v134 = v131;
          }

          v132 = v25[1];
          ++v25;
          v20 = v132;
          v131 = v134;
          v23 = v132;
        }
      }

LABEL_149:
      if (!v23)
      {
        goto LABEL_182;
      }

      v139 = *(v23 + 16);
      v3 = v154;
      if (v139)
      {
        *(v23 + 24) = v139;
        operator delete(v139);
      }

      v5 = *(v154 + 48);
      v140 = *(v154 + 56);
      v141 = 42 * (v140 - v5) - 1;
      v4 = *(v154 + 72);
      v142 = *(v154 + 80);
      *(v154 + 80) = v142 - 1;
      if (v140 == v5)
      {
        v141 = 0;
      }

      if (v141 - (v142 + v4) + 1 >= 0x54)
      {
        operator delete(*(v140 - 1));
        v107 = 0;
        v5 = *(v154 + 48);
        *(v154 + 56) -= 8;
        v4 = *(v154 + 72);
      }

      else
      {
        v107 = 0;
      }

LABEL_157:
      v7 = &v5[v4 / 0x2A];
      v6 = *(v3 + 56);
      if (v6 == v5)
      {
        v8 = 0;
        if (v107)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v8 = *v7 + 96 * (v4 % 0x2A);
        if (v107)
        {
          goto LABEL_164;
        }
      }

      v143 = v150 - 0x5555555555555555 * ((v8 - *v7) >> 5);
      if (v143 < 1)
      {
        v144 = 41 - v143;
        v7 -= v144 / 0x2A;
        v8 = *v7 + 96 * (42 * (v144 / 0x2A) - v144) + 3936;
      }

      else
      {
        v7 += v143 / 0x2AuLL;
        v8 = *v7 + 96 * (v143 % 0x2AuLL);
      }

LABEL_164:
      v9 = *(v3 + 80);
      goto LABEL_7;
    }

    v8 += 96;
    v10 -= 96;
    if (-4032 - *v7 == v10)
    {
      v11 = v7[1];
      ++v7;
      v8 = v11;
      goto LABEL_7;
    }
  }

  if (v8)
  {
    goto LABEL_12;
  }

LABEL_165:
  if (v9 && *(v5[v4 / 0x2A] + 12 * (v4 % 0x2A) + 8))
  {
    *(v3 + 24) = 1;
    return;
  }

  *(v3 + 24) = 2;
  if (v153)
  {
    v145 = *(v3 + 16);
    v145[5] = 0;
    v146 = *v145;
    v148 = *(*v145 + 48);
    v147 = *(*v145 + 56);
    if (v148 != v147)
    {
      while (*v148 != v145)
      {
        if (++v148 == v147)
        {
          return;
        }
      }

      if (v148 != v147)
      {
        for (j = v148 + 1; j != v147; ++j)
        {
          if (*j != v145)
          {
            *v148++ = *j;
          }
        }
      }
    }

    if (v147 < v148)
    {
      goto LABEL_182;
    }

    if (v148 != v147)
    {
      *(v146 + 56) = v148;
    }
  }
}

BOOL dcsctp::RRSendQueue::HasStreamsReadyToBeReset(dcsctp::RRSendQueue *this)
{
  v1 = *(this + 20);
  v2 = this + 168;
  if (v1 == this + 168)
  {
    return 0;
  }

  do
  {
    v4 = *(v1 + 16);
    result = v4 == 2;
    if (v4 == 2)
    {
      break;
    }

    v5 = *(v1 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t dcsctp::RRSendQueue::GetStreamsReadyToBeReset@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 160);
  if (v2 != (this + 168))
  {
    do
    {
      if (*(v2 + 16) == 2)
      {
        *(v2 + 16) = 3;
        if (!a2[2])
        {
          operator new();
        }

        *a2 = 0;
        __break(1u);
        *a2 = 0;
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (this + 168));
    *a2 = 0;
  }

  return this;
}

void dcsctp::RRSendQueue::CommitResetStreams(dcsctp::RRSendQueue *this)
{
  v1 = *(this + 20);
  v2 = this + 168;
  if (v1 != (this + 168))
  {
    do
    {
      if (*(v1 + 16) == 3)
      {
        *(v1 + 70) = 0;
        v1[8] = 0;
        if (v1[15])
        {
          v3 = *(v1[11] + 8 * (v1[14] / 0x2AuLL)) + 96 * (v1[14] % 0x2AuLL);
          v4 = *(v3 + 24) - *(v3 + 16);
          v5 = v4 - *(v3 + 72);
          v1[20] += v5;
          *(v1[6] + 144) += v5;
          *(v3 + 64) = 0;
          *(v3 + 72) = v4;
          if (*(v3 + 84) == 1)
          {
            *(v3 + 84) = 0;
          }

          if (*(v3 + 90) == 1)
          {
            *(v3 + 90) = 0;
          }

          *(v3 + 92) = 0;
          dcsctp::StreamScheduler::Stream::MaybeMakeActive(v1[7]);
        }
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void dcsctp::RRSendQueue::RollbackResetStreams(dcsctp::RRSendQueue *this)
{
  v1 = *(this + 20);
  v2 = this + 168;
  if (v1 != this + 168)
  {
    do
    {
      if (*(v1 + 16) == 3)
      {
        *(v1 + 16) = 0;
        dcsctp::StreamScheduler::Stream::MaybeMakeActive(*(v1 + 7));
      }

      v3 = *(v1 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v1 + 2);
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void dcsctp::RRSendQueue::Reset(dcsctp::RRSendQueue *this)
{
  v2 = *(this + 20);
  v3 = this + 168;
  if (v2 != (this + 168))
  {
    do
    {
      v4 = *(v2 + 16);
      *(v2 + 70) = 0;
      v2[8] = 0;
      if (v2[15])
      {
        v5 = *(v2[11] + 8 * (v2[14] / 0x2AuLL)) + 96 * (v2[14] % 0x2AuLL);
        v6 = *(v5 + 24) - *(v5 + 16);
        v7 = v6 - *(v5 + 72);
        v2[20] += v7;
        *(v2[6] + 144) += v7;
        *(v5 + 64) = 0;
        *(v5 + 72) = v6;
        if (*(v5 + 84) == 1)
        {
          *(v5 + 84) = 0;
          if (*(v5 + 90) == 1)
          {
LABEL_16:
            *(v5 + 90) = 0;
            *(v5 + 92) = 0;
            if ((v4 & 0xFFFFFFFE) != 2)
            {
              goto LABEL_9;
            }

LABEL_8:
            dcsctp::StreamScheduler::Stream::MaybeMakeActive(v2[7]);
            goto LABEL_9;
          }
        }

        else if (*(v5 + 90) == 1)
        {
          goto LABEL_16;
        }

        *(v5 + 92) = 0;
        if ((v4 & 0xFFFFFFFE) == 2)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
      v8 = v2[1];
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
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  *(this + 81) = 0;
}

uint64_t dcsctp::RRSendQueue::buffered_amount(uint64_t a1, unsigned __int16 a2)
{
  v4 = *(a1 + 168);
  v2 = a1 + 168;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return *(v5 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t dcsctp::RRSendQueue::buffered_amount_low_threshold(uint64_t a1, unsigned __int16 a2)
{
  v4 = *(a1 + 168);
  v2 = a1 + 168;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return *(v5 + 168);
  }

  else
  {
    return 0;
  }
}

void *dcsctp::RRSendQueue::SetBufferedAmountLowThreshold(uint64_t a1, unsigned __int16 a2, unint64_t a3)
{
  result = dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1, a2);
  v5 = result;
  v6 = result[15];
  if (result[16] >= v6 || v6 > a3)
  {
    goto LABEL_7;
  }

  v8 = result[14];
  if (v8)
  {
    result = (*(*v8 + 48))(v8);
LABEL_7:
    v5[16] = a3;
    return result;
  }

  v9 = std::__throw_bad_function_call[abi:sn200100]();
  return std::vector<dcsctp::DcSctpSocketHandoverState::OutgoingStream>::push_back[abi:sn200100](v9, v10);
}

void *std::vector<dcsctp::DcSctpSocketHandoverState::OutgoingStream>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 2) + 1;
    if (v5 > 0xCCCCCCCCCCCCCCCLL)
    {
      goto LABEL_13;
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 2);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5)
    {
      if (v5 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 16) = *(a2 + 4);
  *v2 = v4;
  result[1] = v2 + 20;
  return result;
}

void dcsctp::RRSendQueue::RestoreFromState(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a2 + 64) != *(a2 + 72))
  {
    operator new();
  }
}

void dcsctp::RRSendQueue::~RRSendQueue(dcsctp::RRSendQueue *this)
{
  *this = &unk_28829A9D0;
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(this + 160, *(this + 21));
  v2 = *(this + 17);
  if (v2 == (this + 112))
  {
    (*(*v2 + 32))(v2);
    v3 = *(this + 11);
    if (!v3)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
LABEL_5:
    *(this + 12) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_28829A9D0;
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(this + 160, *(this + 21));
  v2 = *(this + 17);
  if (v2 == (this + 112))
  {
    (*(*v2 + 32))(v2);
    v3 = *(this + 11);
    if (v3)
    {
LABEL_5:
      *(this + 12) = v3;
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(this + 11);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<dcsctp::RRSendQueue::RRSendQueue(std::string_view,dcsctp::DcSctpSocketCallbacks *,unsigned long,webrtc::StrongAlias<dcsctp::StreamPriorityTag,unsigned short>,unsigned long)::$_0,std::allocator<dcsctp::RRSendQueue::RRSendQueue(std::string_view,dcsctp::DcSctpSocketCallbacks *,unsigned long,webrtc::StrongAlias<dcsctp::StreamPriorityTag,unsigned short>,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829AA88;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<dcsctp::RRSendQueue::GetOrCreateStreamInfo(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>)::$_0,std::allocator<dcsctp::RRSendQueue::GetOrCreateStreamInfo(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28829AAD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 22) = 0;
  *(a2 + 18) = 0;
  return result;
}

void dcsctp::RRSendQueue::OutgoingStream::OutgoingStream(void *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829AA58;
  a1[1] = a2;
  operator new();
}

__n128 std::__function::__func<dcsctp::RRSendQueue::RestoreFromState(dcsctp::DcSctpSocketHandoverState const&)::$_0,std::allocator<dcsctp::RRSendQueue::RestoreFromState(dcsctp::DcSctpSocketHandoverState const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28829AB18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 22) = 0;
  *(a2 + 18) = 0;
  return result;
}

void webrtc::RTCCertificate::~RTCCertificate(webrtc::RTCCertificate *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

uint64_t webrtc::RTCCertificate::Expires(webrtc::RTCCertificate *this)
{
  v1 = (*(**(this + 1) + 16))(*(this + 1));
  v2 = (*(*v1 + 56))(v1);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return 1000 * v2;
  }
}

void webrtc::RTCCertificate::ToPEM(webrtc::RTCCertificate *this@<X0>, void **a2@<X8>)
{
  (*(**(this + 1) + 32))(v15);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = (*(**(this + 1) + 16))(*(this + 1));
  v7 = __p;
  (*(*v6 + 24))(__p);
  if ((v14 & 0x80u) == 0)
  {
    v8 = v14;
  }

  else
  {
    v7 = __p[0];
    v8 = __p[1];
  }

  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_34;
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  *(a2 + 23) = v5;
  v9 = (a2 + v5);
  if (a2 <= v4 && v9 > v4)
  {
    goto LABEL_33;
  }

  if (v5)
  {
    memmove(a2, v4, v5);
  }

  *v9 = 0;
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_34:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v8 > 0x16)
  {
    operator new();
  }

  v11 = a2 + 3;
  *(a2 + 47) = v8;
  v12 = (a2 + v8 + 24);
  if (v11 <= v7 && v12 > v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8)
  {
    memmove(v11, v7, v8);
  }

  *v12 = 0;
  if ((v14 & 0x80000000) == 0)
  {
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_32:
    operator delete(v15[0]);
    return;
  }

  operator delete(__p[0]);
  if (v16 < 0)
  {
    goto LABEL_32;
  }
}

uint64_t webrtc::RTCCertificate::FromPEM@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4)
  {
    v6 = a1[1];
  }

  else
  {
    LODWORD(v6) = *(a1 + 23);
  }

  v7 = *(a1 + 47);
  v8 = a1[4];
  v11 = a1[3];
  v9 = a1 + 3;
  v10 = v11;
  if ((v7 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if ((v7 & 0x80u) == 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  webrtc::BoringSSLIdentity::CreateFromPEMStrings(v5, v6, v12, v13, &v15);
  if (v15)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void *webrtc::RTCCertificateGenerator::RTCCertificateGenerator(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_28829AB60;
  result[1] = a2;
  result[2] = a3;
  return result;
}

void webrtc::RTCCertificateGenerator::GenerateCertificateAsync(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a1 + 8);
  (*(a4 + 16))(0, a4, v10);
  v10[1] = *(a4 + 16);
  *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a4 + 24) = 0;
  operator new();
}

void _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc23RTCCertificateGenerator24GenerateCertificateAsyncERKNS2_9KeyParamsERKNSt3__18optionalIyEENS_12AnyInvocableIFvNS2_13scoped_refptrINS2_14RTCCertificateEEEOEEEE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(int **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 == 1)
  {
    if (v1[1])
    {
      goto LABEL_16;
    }
  }

  else if (v2 || ((v3 = v1[1], v3 - 1024 <= 0x1C00) ? (v4 = v1[2] > v3) : (v4 = 0), !v4))
  {
LABEL_16:
    v6 = 0;
    (*(v1 + 7))(0, v1 + 10, v7);
    v7[1] = *(v1 + 14);
    *(v1 + 7) = absl::internal_any_invocable::EmptyManager;
    *(v1 + 8) = 0;
    operator new();
  }

  if ((*a1)[6])
  {
    if (*(*a1 + 2) / 0x3E8uLL >= 0x1E13380)
    {
      v5 = 31536000;
    }

    else
    {
      v5 = *(*a1 + 2) / 0x3E8uLL;
    }

    webrtc::BoringSSLIdentity::CreateWithExpiration("WebRTC", 6uLL, v1, v5, &v6);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    webrtc::BoringSSLIdentity::CreateWithExpiration("WebRTC", 6uLL, v1, 2592000, &v6);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  operator new();
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc23RTCCertificateGenerator24GenerateCertificateAsyncERKNS2_9KeyParamsERKNSt3__18optionalIyEENS_12AnyInvocableIFvNS2_13scoped_refptrINS2_14RTCCertificateEEEOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESL_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 56))(1, v3 + 40, v3 + 40);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZZN6webrtc23RTCCertificateGenerator24GenerateCertificateAsyncERKNS2_9KeyParamsERKNSt3__18optionalIyEENS_12AnyInvocableIFvNS2_13scoped_refptrINS2_14RTCCertificateEEEOEEEEN3__0clEvEUlvE_JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(atomic_uint ***a1)
{
  v1 = *a1;
  v2 = **a1;
  *v1 = 0;
  v6 = v2;
  result = (v1[4])(v1 + 1, &v6);
  v4 = v6;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    v5 = *(v4 + 1);
    *(v4 + 1) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    return MEMORY[0x2743DA540](v4, 0x1020C40D5A9D86FLL);
  }

  return result;
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZZN6webrtc23RTCCertificateGenerator24GenerateCertificateAsyncERKNS2_9KeyParamsERKNSt3__18optionalIyEENS_12AnyInvocableIFvNS2_13scoped_refptrINS2_14RTCCertificateEEEOEEEEN3__0clEvEUlvE_EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESM_(uint64_t result, uint64_t **a2, uint64_t **a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (v3[3])(1, v3 + 1, v3 + 1);
      v4 = *v3;
      if (*v3 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        MEMORY[0x2743DA540](v4, 0x1020C40D5A9D86FLL);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void webrtc::RTCError::OK(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

uint64_t webrtc::RTCError::message(webrtc::RTCError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void webrtc::RtcEventAudioNetworkAdaptation::~RtcEventAudioNetworkAdaptation(webrtc::RtcEventAudioNetworkAdaptation *this)
{
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (v1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C402B01D017);
  }
}

{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C402B01D017);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtcEventAudioReceiveStreamConfig::~RtcEventAudioReceiveStreamConfig(webrtc::RtcEventAudioReceiveStreamConfig *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v2);
    MEMORY[0x2743DA540]();
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v3);
    MEMORY[0x2743DA540]();
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtcEventAudioSendStreamConfig::~RtcEventAudioSendStreamConfig(webrtc::RtcEventAudioSendStreamConfig *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v2);
    MEMORY[0x2743DA540]();
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v3);
    MEMORY[0x2743DA540]();
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void *std::vector<std::string_view>::push_back[abi:sn200100](void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v4 = ((v2 - *result) >> 4) + 1;
    if (v4 >> 60)
    {
      goto LABEL_13;
    }

    v5 = v3 - *result;
    if (v5 >> 3 > v4)
    {
      v4 = v5 >> 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *v2 = *a2;
  result[1] = v2 + 1;
  return result;
}

uint64_t webrtc::RtcEventLog::StopLogging(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(a1);
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    JUMPOUT(0x27338A914);
  }

  v4 = *(*v3 + 48);

  return v4();
}

void webrtc::RtcEventRtcpPacketIncoming::~RtcEventRtcpPacketIncoming(webrtc::RtcEventRtcpPacketIncoming *this)
{
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtcEventRtcpPacketOutgoing::~RtcEventRtcpPacketOutgoing(webrtc::RtcEventRtcpPacketOutgoing *this)
{
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtcEventRtpPacketIncoming::RtcEventRtpPacketIncoming(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_28829AB88;
  if (webrtc::g_clock)
  {
    v4 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v4 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  *a1 = &unk_28829B018;
  *(a1 + 8) = 1000 * (v4 / 1000000);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 63) = *(a2 + 47);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v9 = *(a2 + 7);
  v8 = *(a2 + 8);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = *(a2 + 11);
  *(a1 + 96) = *(a2 + 10);
  *(a1 + 104) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 24), 1u, memory_order_relaxed);
  }

  *(a1 + 112) = a2[6];
  return a1;
}

void webrtc::RtcEventRtpPacketIncoming::~RtcEventRtpPacketIncoming(webrtc::RtcEventRtpPacketIncoming *this)
{
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add((v2 + 24), 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40EE34DA14);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }
}

{
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add((v2 + 24), 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40EE34DA14);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

webrtc::RtcEventRtpPacketOutgoing *webrtc::RtcEventRtpPacketOutgoing::RtcEventRtpPacketOutgoing(webrtc::RtcEventRtpPacketOutgoing *this, const webrtc::RtpPacketToSend *a2, int a3)
{
  *this = &unk_28829AB88;
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

  *this = &unk_28829B050;
  *(this + 1) = 1000 * (v6 / 1000000);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  *(this + 63) = *(a2 + 47);
  *(this + 2) = v8;
  *(this + 3) = v9;
  *(this + 1) = v7;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  v11 = *(a2 + 7);
  v10 = *(a2 + 8);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = *(a2 + 11);
  *(this + 12) = *(a2 + 10);
  *(this + 13) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 24), 1u, memory_order_relaxed);
  }

  *(this + 7) = *(a2 + 6);
  *(this + 32) = a3;
  return this;
}

void webrtc::RtcEventRtpPacketOutgoing::~RtcEventRtpPacketOutgoing(webrtc::RtcEventRtpPacketOutgoing *this)
{
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add((v2 + 24), 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40EE34DA14);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }
}

{
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add((v2 + 24), 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40EE34DA14);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtcEventVideoReceiveStreamConfig::~RtcEventVideoReceiveStreamConfig(webrtc::RtcEventVideoReceiveStreamConfig *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v2);
    MEMORY[0x2743DA540]();
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v3);
    MEMORY[0x2743DA540]();
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtcEventVideoSendStreamConfig::~RtcEventVideoSendStreamConfig(webrtc::RtcEventVideoSendStreamConfig *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v2);
    MEMORY[0x2743DA540]();
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    webrtc::rtclog::StreamConfig::~StreamConfig(v3);
    MEMORY[0x2743DA540]();
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

double webrtc::RTCStats::ToJson@<D0>(webrtc::RTCStats *this@<X0>, std::string *a2@<X8>)
{
  *&v104.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v104 <= "{type:" && &v104.__r_.__value_.__r.__words[1] + 1 > "{type:")
  {
    goto LABEL_270;
  }

  v104.__r_.__value_.__s.__data_[8] = 34;
  v104.__r_.__value_.__r.__words[0] = *"{type:";
  *(&v104.__r_.__value_.__s + 23) = 9;
  v5 = (*(*this + 24))(this);
  if (!v5)
  {
    goto LABEL_270;
  }

  v6 = v5;
  v7 = strlen(v5);
  v9 = v7;
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v104.__r_.__value_.__l.__size_;
  }

  if (v10 - size >= v7)
  {
    if (v7)
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v104;
      }

      else
      {
        v12 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_270;
      }

      v13 = v12 + size;
      if (v12 + size <= v6 && &v13[v9] > v6)
      {
        goto LABEL_270;
      }

      memmove(v13, v6, v9);
      v14 = size + v9;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = size + v9;
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v12->__r_.__value_.__s.__data_[v14] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v104, v10, size + v7 - v10, size, size, 0, v7, v6);
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v104.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 >= 8)
  {
    v20 = &v104;
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v104.__r_.__value_.__r.__words[0];
    }

    v21 = (v20->__r_.__value_.__r.__words + v16);
    if (v20 + v16 <= ",id:" && v21 + 1 > ",id:")
    {
      goto LABEL_270;
    }

    *v21 = 0x223A226469222C22;
    v22 = v16 + 8;
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      v104.__r_.__value_.__l.__size_ = v16 + 8;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(this + 31);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(&v104.__r_.__value_.__s + 23) = v22 & 0x7F;
      v20->__r_.__value_.__s.__data_[v22] = 0;
      v17 = *(this + 31);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v104, v15, v16 - v15 + 8, v16, v16, 0, 8uLL, ",id:");
    v17 = *(this + 31);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_33:
      v18 = this + 8;
      v19 = v17 == 0;
      goto LABEL_42;
    }
  }

  v18 = *(this + 1);
  v17 = *(this + 2);
  v19 = v17 == 0;
  if (!v18 && v17)
  {
    goto LABEL_270;
  }

LABEL_42:
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v104.__r_.__value_.__l.__size_;
  }

  if (v23 - v24 >= v17)
  {
    if (!v19)
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v104;
      }

      else
      {
        v25 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_270;
      }

      v26 = v25 + v24;
      if (v25 + v24 <= v18 && &v26[v17] > v18)
      {
        goto LABEL_270;
      }

      v27 = v17;
      memmove(v26, v18, v17);
      v28 = v24 + v27;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = v24 + v27;
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v28 & 0x7F;
      }

      v25->__r_.__value_.__s.__data_[v28] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v104, v23, v24 + v17 - v23, v24, v24, 0, v17, v18);
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = 22;
  }

  else
  {
    v29 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v104.__r_.__value_.__l.__size_;
  }

  if (v29 - v30 >= 0xE)
  {
    v31 = &v104;
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v104.__r_.__value_.__r.__words[0];
    }

    v32 = v31 + v30;
    if (v31 + v30 <= ",timestamp:" && v32 + 14 > ",timestamp:")
    {
      goto LABEL_270;
    }

    qmemcpy(v32, ",timestamp:", 14);
    v33 = v30 + 14;
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      v104.__r_.__value_.__l.__size_ = v30 + 14;
    }

    else
    {
      *(&v104.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    v31->__r_.__value_.__s.__data_[v33] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v104, v29, v30 - v29 + 14, v30, v30, 0, 0xEuLL, ",timestamp:");
  }

  v34 = *(this + 4);
  v106 = 0;
  v107 = 0x1600000000000000;
  __p = 0;
  v35 = absl::numbers_internal::FastIntToBuffer(v34, &__p, v8);
  v36 = v35 - &__p;
  if ((SHIBYTE(v107) & 0x8000000000000000) != 0)
  {
    if (v106 < v36)
    {
      goto LABEL_272;
    }

    p_p = __p;
    v106 = (v35 - &__p);
  }

  else
  {
    if (v36 > SHIBYTE(v107))
    {
      goto LABEL_272;
    }

    HIBYTE(v107) = v35 - &__p;
    p_p = &__p;
  }

  p_p[v36] = 0;
  if (v107 >= 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p;
  }

  if (v107 >= 0)
  {
    v39 = HIBYTE(v107);
  }

  else
  {
    v39 = v106;
  }

  if (!v38 && v39)
  {
LABEL_270:
    __break(1u);
LABEL_271:
    std::__throw_bad_variant_access[abi:sn200100]();
LABEL_272:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v104.__r_.__value_.__l.__size_;
  }

  if (v40 - v41 >= v39)
  {
    if (!v39)
    {
      goto LABEL_110;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v104;
    }

    else
    {
      v42 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v39 & 0x8000000000000000) == 0)
    {
      v43 = v42 + v41;
      if (v42 + v41 > v38 || &v43[v39] <= v38)
      {
        v44 = v39;
        memmove(v43, v38, v39);
        v45 = v41 + v44;
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          v104.__r_.__value_.__l.__size_ = v41 + v44;
          v42->__r_.__value_.__s.__data_[v45] = 0;
          if ((SHIBYTE(v107) & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_100;
        }

        *(&v104.__r_.__value_.__s + 23) = v45 & 0x7F;
        v42->__r_.__value_.__s.__data_[v45] = 0;
LABEL_110:
        if ((SHIBYTE(v107) & 0x80000000) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_100;
      }
    }

    goto LABEL_270;
  }

  std::string::__grow_by_and_replace(&v104, v40, v41 + v39 - v40, v41, v41, 0, v39, v38);
  if (SHIBYTE(v107) < 0)
  {
LABEL_100:
    operator delete(__p);
  }

LABEL_111:
  (*(*this + 32))(&__p, this, 0);
  v46 = __p;
  v47 = v106;
  if (__p == v106)
  {
    goto LABEL_250;
  }

  v100 = a2;
  v49 = v102 <= "null" && v102 + 4 > "null";
  v101 = v49;
  v50 = __p + 8;
  v51 = "";
  do
  {
    v53 = *(v50 + 2);
    if (v53 == -1)
    {
      goto LABEL_271;
    }

    v102[0] = &v109;
    if (!(__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100INS1_9__variant15__value_visitorIZNK6webrtc9Attribute9has_valueEvE3__0EEJRKNS0_6__implIJPKNS_8optionalIbEEPKNSB_IiEEPKNSB_IjEEPKNSB_IxEEPKNSB_IyEEPKNSB_IdEEPKNSB_INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPKNSB_INS_6vectorIbNSX_IbEEEEEEPKNSB_INS13_IiNSX_IiEEEEEEPKNSB_INS13_IjNSX_IjEEEEEEPKNSB_INS13_IxNSX_IxEEEEEEPKNSB_INS13_IyNSX_IyEEEEEEPKNSB_INS13_IdNSX_IdEEEEEEPKNSB_INS13_ISZ_NSX_ISZ_EEEEEEPKNSB_INS_3mapISZ_yNS_4lessISZ_EENSX_INS_4pairIKSZ_yEEEEEEEEPKNSB_INS23_ISZ_dS25_NSX_INS26_IS27_dEEEEEEEEEEEEEEDcOT_DpOT0____fmatrix[v53])(v102, v50))
    {
      goto LABEL_120;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = 22;
    }

    else
    {
      v54 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = v104.__r_.__value_.__l.__size_;
    }

    if (v54 - v55 >= 2)
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v104;
      }

      else
      {
        v57 = v104.__r_.__value_.__r.__words[0];
      }

      if (v57 + v55 <= "," && &v57->__r_.__value_.__s.__data_[v55 + 2] > ",")
      {
        goto LABEL_270;
      }

      *(&v57->__r_.__value_.__l.__data_ + v55) = 8748;
      v59 = v55 + 2;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = v55 + 2;
        v57->__r_.__value_.__s.__data_[v59] = 0;
        v56 = *(v50 - 1);
        if (!v56)
        {
          goto LABEL_270;
        }
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v59 & 0x7F;
        v57->__r_.__value_.__s.__data_[v59] = 0;
        v56 = *(v50 - 1);
        if (!v56)
        {
          goto LABEL_270;
        }
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v104, v54, v55 - v54 + 2, v55, v55, 0, 2uLL, ",");
      v56 = *(v50 - 1);
      if (!v56)
      {
        goto LABEL_270;
      }
    }

    v60 = v51;
    v61 = strlen(v56);
    v62 = v61;
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = 22;
    }

    else
    {
      v63 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v104.__r_.__value_.__l.__size_;
    }

    if (v63 - v64 >= v61)
    {
      if (v61)
      {
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v104;
        }

        else
        {
          v65 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_270;
        }

        v66 = v65 + v64;
        if (v65 + v64 <= v56 && &v66[v62] > v56)
        {
          goto LABEL_270;
        }

        memmove(v66, v56, v62);
        v67 = v64 + v62;
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          v104.__r_.__value_.__l.__size_ = v64 + v62;
        }

        else
        {
          *(&v104.__r_.__value_.__s + 23) = v67 & 0x7F;
        }

        v65->__r_.__value_.__s.__data_[v67] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v104, v63, v64 + v61 - v63, v64, v64, 0, v61, v56);
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = 22;
    }

    else
    {
      v68 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v104.__r_.__value_.__l.__size_;
    }

    if (v68 - v69 >= 2)
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v104;
      }

      else
      {
        v71 = v104.__r_.__value_.__r.__words[0];
      }

      v72 = (v71 + v69);
      v51 = v60;
      if (v71 + v69 <= ":" && v72 + 1 > ":")
      {
        goto LABEL_270;
      }

      *v72 = 14882;
      v73 = v69 + 2;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = v69 + 2;
        v71->__r_.__value_.__s.__data_[v73] = 0;
        if (*(v50 + 2) == 6)
        {
LABEL_181:
          v74 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = 22;
          }

          else
          {
            v75 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v74 = v104.__r_.__value_.__l.__size_;
          }

          if (v75 == v74)
          {
            std::string::__grow_by_and_replace(&v104, v75, 1uLL, v75, v75, 0, 1uLL, v51);
            v70 = *(v50 + 2);
            if (v70 == -1)
            {
              goto LABEL_271;
            }
          }

          else
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v76 = &v104;
            }

            else
            {
              v76 = v104.__r_.__value_.__r.__words[0];
            }

            v77 = v76 + v74;
            if (v76 + v74 <= v51 && v77 + 1 > v51)
            {
              goto LABEL_270;
            }

            *v77 = 34;
            v78 = v74 + 1;
            if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
            {
              v104.__r_.__value_.__l.__size_ = v78;
              v76->__r_.__value_.__s.__data_[v78] = 0;
              v70 = *(v50 + 2);
              if (v70 == -1)
              {
                goto LABEL_271;
              }
            }

            else
            {
              *(&v104.__r_.__value_.__s + 23) = v78 & 0x7F;
              v76->__r_.__value_.__s.__data_[v78] = 0;
              v70 = *(v50 + 2);
              if (v70 == -1)
              {
                goto LABEL_271;
              }
            }
          }

          goto LABEL_198;
        }
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v73 & 0x7F;
        v71->__r_.__value_.__s.__data_[v73] = 0;
        if (*(v50 + 2) == 6)
        {
          goto LABEL_181;
        }
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v104, v68, v69 - v68 + 2, v69, v69, 0, 2uLL, ":");
      v51 = v60;
      if (*(v50 + 2) == 6)
      {
        goto LABEL_181;
      }
    }

    v70 = *(v50 + 2);
    if (v70 == -1)
    {
      goto LABEL_271;
    }

LABEL_198:
    v109 = &v108;
    if ((__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100INS1_9__variant15__value_visitorIZNK6webrtc9Attribute9has_valueEvE3__0EEJRKNS0_6__implIJPKNS_8optionalIbEEPKNSB_IiEEPKNSB_IjEEPKNSB_IxEEPKNSB_IyEEPKNSB_IdEEPKNSB_INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPKNSB_INS_6vectorIbNSX_IbEEEEEEPKNSB_INS13_IiNSX_IiEEEEEEPKNSB_INS13_IjNSX_IjEEEEEEPKNSB_INS13_IxNSX_IxEEEEEEPKNSB_INS13_IyNSX_IyEEEEEEPKNSB_INS13_IdNSX_IdEEEEEEPKNSB_INS13_ISZ_NSX_ISZ_EEEEEEPKNSB_INS_3mapISZ_yNS_4lessISZ_EENSX_INS_4pairIKSZ_yEEEEEEEEPKNSB_INS23_ISZ_dS25_NSX_INS26_IS27_dEEEEEEEEEEEEEEDcOT_DpOT0____fmatrix[v70])(&v109, v50))
    {
      v79 = *(v50 + 2);
      if (v79 == -1)
      {
        goto LABEL_271;
      }

      v109 = &v108;
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100INS1_9__variant15__value_visitorIN6webrtc12_GLOBAL__N_113VisitToStringEEEJRKNS0_6__implIJPKNS_8optionalIbEEPKNSB_IiEEPKNSB_IjEEPKNSB_IxEEPKNSB_IyEEPKNSB_IdEEPKNSB_INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPKNSB_INS_6vectorIbNSX_IbEEEEEEPKNSB_INS13_IiNSX_IiEEEEEEPKNSB_INS13_IjNSX_IjEEEEEEPKNSB_INS13_IxNSX_IxEEEEEEPKNSB_INS13_IyNSX_IyEEEEEEPKNSB_INS13_IdNSX_IdEEEEEEPKNSB_INS13_ISZ_NSX_ISZ_EEEEEEPKNSB_INS_3mapISZ_yNS_4lessISZ_EENSX_INS_4pairIKSZ_yEEEEEEEEPKNSB_INS23_ISZ_dS25_NSX_INS26_IS27_dEEEEEEEEEEEEEEDcOT_DpOT0____fmatrix + v79))(v102, &v109, v50);
      v80 = v103;
    }

    else
    {
      v103 = 4;
      if (v101)
      {
        goto LABEL_270;
      }

      strcpy(v102, "null");
      v80 = 4;
    }

    if ((v80 & 0x80u) == 0)
    {
      v81 = v102;
    }

    else
    {
      v81 = v102[0];
    }

    if ((v80 & 0x80u) == 0)
    {
      v82 = v80;
    }

    else
    {
      v82 = v102[1];
    }

    if (!v81 && v82)
    {
      goto LABEL_270;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = 22;
    }

    else
    {
      v83 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v84 = v104.__r_.__value_.__l.__size_;
    }

    if (v83 - v84 >= v82)
    {
      if (v82)
      {
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v104;
        }

        else
        {
          v85 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_270;
        }

        v86 = v85 + v84;
        if (v85 + v84 <= v81 && &v86[v82] > v81)
        {
          goto LABEL_270;
        }

        v87 = v82;
        memmove(v86, v81, v82);
        v88 = v84 + v87;
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          v104.__r_.__value_.__l.__size_ = v84 + v87;
        }

        else
        {
          *(&v104.__r_.__value_.__s + 23) = v88 & 0x7F;
        }

        v85->__r_.__value_.__s.__data_[v88] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v104, v83, v84 + v82 - v83, v84, v84, 0, v82, v81);
    }

    if (v103 < 0)
    {
      operator delete(v102[0]);
      if (*(v50 + 2) != 6)
      {
        goto LABEL_120;
      }
    }

    else if (*(v50 + 2) != 6)
    {
      goto LABEL_120;
    }

    v89 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = 22;
    }

    else
    {
      v90 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = v104.__r_.__value_.__l.__size_;
    }

    if (v90 == v89)
    {
      std::string::__grow_by_and_replace(&v104, v90, 1uLL, v90, v90, 0, 1uLL, v51);
    }

    else
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v104;
      }

      else
      {
        v91 = v104.__r_.__value_.__r.__words[0];
      }

      v92 = v91 + v89;
      if (v91 + v89 <= v51 && v92 + 1 > v51)
      {
        goto LABEL_270;
      }

      *v92 = 34;
      v93 = v89 + 1;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = v93;
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v93 & 0x7F;
      }

      v91->__r_.__value_.__s.__data_[v93] = 0;
    }

LABEL_120:
    v52 = v50 + 16;
    v50 += 24;
  }

  while (v52 != v47);
  v46 = __p;
  a2 = v100;
LABEL_250:
  if (v46)
  {
    v106 = v46;
    operator delete(v46);
  }

  v94 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = 22;
  }

  else
  {
    v95 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v94 = v104.__r_.__value_.__l.__size_;
  }

  if (v95 == v94)
  {
    std::string::__grow_by_and_replace(&v104, v95, 1uLL, v95, v95, 0, 1uLL, "}");
    goto LABEL_267;
  }

  v96 = &v104;
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v96 = v104.__r_.__value_.__r.__words[0];
  }

  v97 = v96 + v94;
  if (v96 + v94 <= "}" && v97 + 1 > "}")
  {
    goto LABEL_270;
  }

  *v97 = 125;
  v98 = v94 + 1;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    v104.__r_.__value_.__l.__size_ = v98;
  }

  else
  {
    *(&v104.__r_.__value_.__s + 23) = v98 & 0x7F;
  }

  v96->__r_.__value_.__s.__data_[v98] = 0;
LABEL_267:
  result = *&v104.__r_.__value_.__l.__data_;
  *a2 = v104;
  return result;
}

void webrtc::RTCStats::AttributesImpl(unint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    if (a1 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

uint64_t webrtc::RTCStatsCollector::RTCStatsCollector(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829B130;
  *(a1 + 8) = a2;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
  }

  v8 = *(a3 + 1);
  *(a1 + 40) = *(a3 + 3);
  *(a1 + 24) = v8;
  (*(*a2 + 336))(v11, a2);
  v9 = v12;
  webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(v11);
  *(a1 + 56) = v9;
  *(a1 + 64) = (*(*a2 + 520))(a2);
  *(a1 + 72) = (*(*a2 + 544))(a2);
  *(a1 + 80) = (*(*a2 + 536))(a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  webrtc::Event::Event((a1 + 144), 1, 1);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  pthread_mutexattr_init(v11);
  pthread_mutexattr_setpolicy_np(v11, 3);
  pthread_mutex_init((a1 + 288), v11);
  pthread_mutexattr_destroy(v11);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = a1 + 360;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = -1;
  *(a1 + 408) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = a4;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  return a1;
}

void webrtc::RTCStatsCollector::~RTCStatsCollector(webrtc::RTCStatsCollector *this)
{
  *this = &unk_28829B130;
  v2 = *(this + 61);
  if (v2)
  {
    *(this + 62) = v2;
    operator delete(v2);
  }

  v3 = *(this + 59);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v3 + 16, *(v3 + 24));
    MEMORY[0x2743DA540](v3, 0x1020C4043D65406);
  }

  std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(this + 352, *(this + 45));
  pthread_mutex_destroy((this + 288));
  v4 = *(this + 33);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = *(this + 34);
  v6 = *(this + 33);
  if (v5 == v4)
  {
    goto LABEL_19;
  }

  v7 = v5 - 69;
  do
  {
    webrtc::TrackMediaInfoMap::~TrackMediaInfoMap((v7 + 10));
    if (*(v7 + 72) == 1 && *(v7 + 71) < 0)
    {
      operator delete(v7[6]);
      if (*(v7 + 40) != 1)
      {
        goto LABEL_16;
      }
    }

    else if (*(v7 + 40) != 1)
    {
      goto LABEL_16;
    }

    if (*(v7 + 39) < 0)
    {
      operator delete(v7[2]);
    }

LABEL_16:
    if (*v7)
    {
      (*(**v7 + 8))(*v7);
    }

    v8 = v7 == v4;
    v7 -= 69;
  }

  while (!v8);
  v6 = *(this + 33);
LABEL_19:
  *(this + 34) = v4;
  operator delete(v6);
LABEL_20:
  pthread_mutex_destroy((this + 144));
  pthread_cond_destroy((this + 208));
  v9 = *(this + 17);
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v9 + 16, *(v9 + 24));
    MEMORY[0x2743DA540](v9, 0x1020C4043D65406);
  }

  v10 = *(this + 14);
  if (v10)
  {
    v11 = *(this + 15);
    v12 = *(this + 14);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 8);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v14 = *(v11 - 16);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = *(v11 - 24);
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        v11 -= 32;
      }

      while (v11 != v10);
      v12 = *(this + 14);
    }

    *(this + 15) = v10;
    operator delete(v12);
  }

  v16 = *(this + 13);
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v16 + 16, *(v16 + 24));
    MEMORY[0x2743DA540](v16, 0x1020C4043D65406);
  }

  v17 = *(this + 2);
  if (v17)
  {
    if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 8))(v17);
    }
  }
}

uint64_t webrtc::RTCStatsCollector::GetStatsReportInternal(__darwin_time_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3 >= v4)
  {
    v7 = *(a1 + 112);
    v8 = ((v3 - v7) >> 5) + 1;
    if (v8 >> 59)
    {
      goto LABEL_53;
    }

    v9 = v4 - v7;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_52:
    __break(1u);
LABEL_53:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_52;
  }

  *v3 = *a2;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v3 + 8) = v5;
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v3 + 24) = v6;
  *(a1 + 120) = v3 + 32;
  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v11 = result / 1000;
  if (*(a1 + 472) && v11 - *(a1 + 456) <= *(a1 + 464))
  {
    (**a1)(a1);
    v28.tv_sec = webrtc::RTCStatsCollector::DeliverCachedReport;
    *&v28.tv_usec = 0;
    v15 = *(a1 + 472);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
    }

    *(a1 + 112) = 0u;
    *(a1 + 128) = 0;
    operator new();
  }

  if (!*(a1 + 88))
  {
    if (*(a1 + 56) == 1)
    {
      v12 = (*(**(a1 + 32) + 16))(*(a1 + 32));
      *(a1 + 88) = 2;
      *(a1 + 96) = v11;
      v14 = *(a1 + 264);
      v13 = *(a1 + 272);
      if (v13 == v14)
      {
        goto LABEL_40;
      }
    }

    else if (webrtc::g_clock)
    {
      v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
      *(a1 + 88) = 2;
      *(a1 + 96) = v11;
      v14 = *(a1 + 264);
      v13 = *(a1 + 272);
      if (v13 == v14)
      {
LABEL_40:
        *(a1 + 272) = v14;
        v34[0] = 0;
        v34[1] = 0;
        v33 = v34;
        v43[0] = 0;
        v43[1] = 0;
        v41[1] = 0;
        v42 = v43;
        v40 = v41;
        v41[0] = 0;
        v39[0] = 0;
        v39[1] = 0;
        v38 = v39;
        (*(**(a1 + 8) + 560))(&__p);
        v18 = *(a1 + 80);
        v28.tv_sec = &__p;
        *&v28.tv_usec = a1;
        v29 = &v33;
        v30 = &v40;
        v31 = &v42;
        *&v32 = &v38;
        (*(*v18 + 96))(v18, &v28, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::PrepareTransceiverStatsInfosAndCallStats_s_w_n(void)::$_0>, &v35);
        v19 = *(a1 + 72);
        v28.tv_sec = &v33;
        *&v28.tv_usec = &v40;
        v29 = &v42;
        v30 = &v38;
        v31 = a1;
        (*(*v19 + 96))(v19, &v28, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::PrepareTransceiverStatsInfosAndCallStats_s_w_n(void)::$_1>, &v35);
        v20 = *(a1 + 264);
        for (i = *(a1 + 272); v20 != i; v20 += 552)
        {
          v22 = (*(**v20 + 104))();
          *(v20 + 544) = v22;
          *(v20 + 548) = BYTE4(v22);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v37;
          v25 = __p;
          if (v37 != __p)
          {
            do
            {
              v27 = *(v24 - 1);
              v24 -= 8;
              v26 = v27;
              if (v27)
              {
                (*(*v26 + 8))(v26);
              }
            }

            while (v24 != v23);
            v25 = __p;
          }

          v37 = v23;
          operator delete(v25);
        }

        std::__tree<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::__map_value_compare<webrtc::VideoMediaReceiveChannelInterface *,std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::less<webrtc::VideoMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>>>::destroy(v39[0]);
        std::__tree<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::__map_value_compare<webrtc::VoiceMediaReceiveChannelInterface *,std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::less<webrtc::VoiceMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>>>::destroy(v41[0]);
        std::__tree<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::__map_value_compare<webrtc::VideoMediaSendChannelInterface *,std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::less<webrtc::VideoMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>>>::destroy(v43[0]);
        std::__tree<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::__map_value_compare<webrtc::VoiceMediaSendChannelInterface *,std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::less<webrtc::VoiceMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>>>::destroy(v34[0]);
        pthread_mutex_lock((a1 + 144));
        *(a1 + 257) = 0;
        pthread_mutex_unlock((a1 + 144));
        (**a1)(a1);
        v28.tv_sec = a1;
        (**a1)(a1);
        (*(**(a1 + 8) + 576))(&v28.tv_usec);
        *&v32 = v12;
        operator new();
      }
    }

    else
    {
      gettimeofday(&v28, 0);
      v12 = v28.tv_usec + 1000000 * v28.tv_sec;
      *(a1 + 88) = 2;
      *(a1 + 96) = v11;
      v14 = *(a1 + 264);
      v13 = *(a1 + 272);
      if (v13 == v14)
      {
        goto LABEL_40;
      }
    }

    v16 = v13 - 69;
    while (1)
    {
      webrtc::TrackMediaInfoMap::~TrackMediaInfoMap((v16 + 10));
      if (*(v16 + 72) == 1 && *(v16 + 71) < 0)
      {
        operator delete(v16[6]);
        if (*(v16 + 40) == 1)
        {
LABEL_35:
          if (*(v16 + 39) < 0)
          {
            operator delete(v16[2]);
          }
        }
      }

      else if (*(v16 + 40) == 1)
      {
        goto LABEL_35;
      }

      if (*v16)
      {
        (*(**v16 + 8))(*v16);
      }

      v17 = v16 == v14;
      v16 -= 69;
      if (v17)
      {
        goto LABEL_40;
      }
    }
  }

  return result;
}

uint64_t webrtc::RTCStatsCollector::DeliverCachedReport(uint64_t result, atomic_uint **a2, uint64_t *a3)
{
  v27 = result;
  v3 = *a3;
  v29 = a3[1];
  if (*a3 != v29)
  {
    while (*v3 != 1)
    {
      if (*v3)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = *(v3 + 24);
        v11 = v10;
        if (!v10)
        {
LABEL_12:
          v12 = *(v3 + 8);
          if (v12)
          {
            (**v12)(*(v3 + 8));
          }

          v13 = *a2;
          if (*a2)
          {
            atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
          }

          v30 = v13;
          if (v8)
          {
            (**v8)(v8);
          }

          v31 = v9;
          if (v9)
          {
            (**v9)(v9);
          }

          if (v7)
          {
            if (v8)
            {
              ((*v8)[30])(v35, v8);
              v14 = v36;
              v15 = v37;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              webrtc::RtpParameters::~RtpParameters(v35);
              v16 = v30;
              if (v30)
              {
                atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
              }

              v17 = *(v30 + 2);
              atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
              if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
              {
                std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v30 + 16, *(v30 + 3));
                MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
              }

              atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
              atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
              if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
              {
                std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v30 + 16, *(v30 + 3));
                MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
              }

              v28 = v30 + 16;
              if (v17 == (v30 + 24))
              {
                if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
                {
LABEL_49:
                  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v28, *(v16 + 3));
                  MEMORY[0x2743DA540](v16, 0x1020C4043D65406);
                }

LABEL_50:
                if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
                {
                  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v28, *(v16 + 3));
                  MEMORY[0x2743DA540](v16, 0x1020C4043D65406);
                }
              }

              else
              {
                do
                {
                  if ((*(*v17[7] + 24))(v17[7]) == "outbound-rtp")
                  {
                    operator new();
                  }

                  v18 = v17[1];
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
                      v19 = v17[2];
                      v20 = *v19 == v17;
                      v17 = v19;
                    }

                    while (!v20);
                  }

                  v17 = v19;
                }

                while (v19 != (v30 + 24));
                v16 = v30;
                if (v30)
                {
                  if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_50;
                }
              }

              if (v14)
              {
                while (v15 != v14)
                {
                  v15 = (v15 - 272);
                  webrtc::RtpEncodingParameters::~RtpEncodingParameters(v15);
                }

                operator delete(v14);
              }
            }

LABEL_80:
            operator new();
          }

          if (!v31)
          {
            goto LABEL_80;
          }

          LOBYTE(v33) = 0;
          v34 = 0;
          v21 = *(v27 + 72);
          v35[0] = &v33;
          v35[1] = &v31;
          (*(*v21 + 96))(v21, v35, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::CreateReportFilteredBySelector(BOOL,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,webrtc::scoped_refptr<webrtc::RtpSenderInternal>,webrtc::scoped_refptr<webrtc::RtpReceiverInternal>)::$_1>, &v32);
          if (v34 != 1)
          {
            goto LABEL_80;
          }

          if (v30)
          {
            atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
          }

          v22 = v30 + 16;
          v23 = *(v30 + 2);
          atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
          if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
          {
            std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v30 + 16, *(v30 + 3));
            MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
            atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
            atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
            if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
            {
              goto LABEL_64;
            }

LABEL_45:
            v24 = (v30 + 24);
            if (v23 != (v30 + 24))
            {
              do
              {
LABEL_67:
                if ((*(*v23[7] + 24))(v23[7]) == "inbound-rtp")
                {
                  operator new();
                }

                v25 = v23[1];
                if (v25)
                {
                  do
                  {
                    v26 = v25;
                    v25 = *v25;
                  }

                  while (v25);
                }

                else
                {
                  do
                  {
                    v26 = v23[2];
                    v20 = *v26 == v23;
                    v23 = v26;
                  }

                  while (!v20);
                }

                v23 = v26;
              }

              while (v26 != v24);
              if (!v30)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
            atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
            atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
            if (atomic_fetch_add(v30, 0xFFFFFFFF) != 1)
            {
              goto LABEL_45;
            }

LABEL_64:
            std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v30 + 16, *(v30 + 3));
            MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
            v24 = (v30 + 24);
            if (v23 != (v30 + 24))
            {
              goto LABEL_67;
            }
          }

          if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
          {
            std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v22, *(v30 + 3));
            MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
          }

          if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
          {
            std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v22, *(v30 + 3));
            MEMORY[0x2743DA540](v30, 0x1020C4043D65406);
          }

          goto LABEL_80;
        }

LABEL_11:
        (**v10)(v10);
        v8 = v6;
        v9 = v11;
        goto LABEL_12;
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        (**v5)(*(v3 + 8));
      }

      (*(*v5 + 32))(v5, a2);
      result = (*(*v5 + 8))(v5);
      v3 += 32;
      if (v3 == v29)
      {
        return result;
      }
    }

    v11 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(v3 + 16);
    v7 = 1;
    v6 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

void webrtc::RTCStatsCollector::MergeNetworkReport_s(webrtc::RTCStatsCollector *this)
{
  v2.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v3.var0 = 3000000;
  webrtc::Event::Wait((this + 144), v2, v3);
  v4 = *(this + 17);
  if (v4)
  {
    v5 = *(this + 13);
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    v6 = *(v4 + 16);
    v7 = (v4 + 24);
    if (v6 != (v4 + 24))
    {
      do
      {
        v15 = v6[7];
        v6[7] = 0;
        v32 = v15;
        webrtc::RTCStatsReport::AddStats(v5, &v32);
        v16 = v32;
        v32 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v17 = v6[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v6[2];
            v19 = *v18 == v6;
            v6 = v18;
          }

          while (!v19);
        }

        v6 = v18;
      }

      while (v18 != v7);
    }

    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v4 + 16, *(v4 + 24));
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = v7;
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v4 + 16, *(v4 + 24));
      MEMORY[0x2743DA540](v4, 0x1020C4043D65406);
    }

    v8 = *(this + 17);
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v8 + 16, *(v8 + 24));
      MEMORY[0x2743DA540](v8, 0x1020C4043D65406);
    }

    *(this + 17) = 0;
    --*(this + 22);
    v9 = *(this + 13);
    *(this + 57) = *(this + 12);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
    }

    v10 = *(this + 59);
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v10 + 16, *(v10 + 24));
      MEMORY[0x2743DA540](v10, 0x1020C4043D65406);
    }

    *(this + 59) = v9;
    v11 = *(this + 13);
    if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v11 + 16, *(v11 + 24));
      MEMORY[0x2743DA540](v11, 0x1020C4043D65406);
    }

    *(this + 13) = 0;
    v13 = *(this + 33);
    v12 = *(this + 34);
    if (v12 != v13)
    {
      v14 = v12 - 69;
      do
      {
        webrtc::TrackMediaInfoMap::~TrackMediaInfoMap((v14 + 10));
        if (*(v14 + 72) == 1 && *(v14 + 71) < 0)
        {
          operator delete(v14[6]);
          if (*(v14 + 40) == 1)
          {
LABEL_31:
            if (*(v14 + 39) < 0)
            {
              operator delete(v14[2]);
            }
          }
        }

        else if (*(v14 + 40) == 1)
        {
          goto LABEL_31;
        }

        if (*v14)
        {
          (*(**v14 + 8))(*v14);
        }

        v19 = v14 == v13;
        v14 -= 69;
      }

      while (!v19);
    }

    *(this + 34) = v13;
    v20 = *(this + 14);
    v21 = *(this + 120);
    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 16) = 0;
    v22 = *(this + 59);
    v31 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 1u, memory_order_relaxed);
    }

    v29 = v20;
    v30 = v21;
    v28 = v21;
    webrtc::RTCStatsCollector::DeliverCachedReport(this, &v31, &v29);
    if (v20)
    {
      for (i = v28; i != v20; i -= 32)
      {
        v24 = *(i - 1);
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        v25 = *(i - 2);
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }

        v26 = *(i - 3);
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      *&v30 = v20;
      operator delete(v20);
    }

    v27 = v31;
    if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy((v27 + 4), *(v27 + 3));
      MEMORY[0x2743DA540](v27, 0x1020C4043D65406);
    }
  }
}

void webrtc::RTCStatsCollector::ProducePartialResultsOnSignalingThreadImpl(webrtc::RTCStatsCollector *this, Timestamp a2, webrtc::RTCStatsReport *a3)
{
  {
    operator new();
  }

  *(pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) + 217) = 0;
  {
    operator new();
  }

  v4 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v8 = v4[217];
  v4[217] = 0;
  v5 = *(this + 33);
  for (i = *(this + 34); v5 != i; v5 += 552)
  {
    v6 = *(*v5 + 32);
    v7 = *(*v5 + 40);
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  v4[217] = v8;
  {
    operator new();
  }

  *(pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) + 217) = 0;
  operator new();
}

void webrtc::RTCStatsCollector::ProducePartialResultsOnNetworkThreadImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v144 = v3;
  v154 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  v12 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v130 = v12[217];
  v131 = v12;
  v12[217] = 0;
  {
    operator new();
  }

  v14 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v15 = v14[217];
  v14[217] = 0;
  v16 = *v7;
  v133 = v7 + 1;
  if (*v7 != v7 + 1)
  {
    do
    {
      v20.var0 = v16[7];
      if (v20.var0)
      {
      }

      v21.var0 = v16[8];
      if (v21.var0)
      {
      }

      v22 = v16[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v16[2];
          v24 = *v23 == v16;
          v16 = v23;
        }

        while (!v24);
      }

      v16 = v23;
    }

    while (v23 != v133);
  }

  v143 = v11;
  v14[217] = v15;
  {
    operator new();
  }

  v17 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v134 = v17[217];
  v135 = v17;
  v136 = v9;
  v17[217] = 0;
  v18 = (v9 + 1);
  v19 = *v9;
  v132 = v18;
  if (v19 != v18)
  {
    do
    {
      size = v19[3].__r_.__value_.__l.__size_;
      v141 = v19[3].__r_.__value_.__r.__words[2];
      if (size != v141)
      {
        v138 = v19;
        p_size = &v19[1].__r_.__value_.__l.__size_;
        do
        {
          data = size->__r_.__value_.__l.__data_;
          __s = &__p;
          LOWORD(__p.__r_.__value_.__l.__data_) = 84;
          *__s_8 = xmmword_273BA32A0;
          v27 = v19[2].__r_.__value_.__s.__data_[7];
          if ((v27 & 0x80u) == 0)
          {
            v28 = p_size;
          }

          else
          {
            v28 = v19[1].__r_.__value_.__l.__size_;
          }

          if ((v27 & 0x80u) != 0)
          {
            v27 = v19[1].__r_.__value_.__r.__words[2];
          }

          if (v27 >= 0x3FE)
          {
            v29 = 1022;
          }

          else
          {
            v29 = v27;
          }

          memcpy(&__p.__r_.__value_.__l.__data_ + 1, v28, v29);
          __s_8[1] = (v29 + 1);
          __p.__r_.__value_.__s.__data_[__s_8[1]] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", data);
          if (!__s)
          {
            goto LABEL_303;
          }

          v30 = strlen(__s);
          if (v30 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_305;
          }

          if (v30 > 0x16)
          {
            operator new();
          }

          *(&__sz.__r_.__value_.__s + 23) = v30;
          v31 = (&__sz + v30);
          if (&__sz <= __s && v31 > __s)
          {
            goto LABEL_303;
          }

          if (v30)
          {
            memmove(&__sz, __s, v30);
          }

          v31->__r_.__value_.__s.__data_[0] = 0;
          v142 = size;
          v33 = size[3].__r_.__value_.__l.__size_;
          if (v33 != size[3].__r_.__value_.__r.__words[2])
          {
            strcpy(&__p, "CP");
            v34 = *(v33 + 143);
            if (v34 >= 0)
            {
              v35 = (v33 + 120);
            }

            else
            {
              v35 = *(v33 + 120);
            }

            if (v34 >= 0)
            {
              v36 = *(v33 + 143);
            }

            else
            {
              v36 = *(v33 + 128);
            }

            if (v36 >= 0xFFD)
            {
              v37 = 4093;
            }

            else
            {
              v37 = v36;
            }

            v38 = v37 + 2;
            v39 = v36 < 0xFFD;
            if (v36 < 0xFFD)
            {
              v40 = v37 + 3;
            }

            else
            {
              v40 = v37 + 2;
            }

            memcpy(&__p.__r_.__value_.__s.__data_[2], v35, v37);
            __p.__r_.__value_.__s.__data_[v38] = 0;
            memcpy(&__p + v38, "_", v39);
            v41 = &__p + v40;
            __p.__r_.__value_.__s.__data_[v40] = 0;
            v42 = *(v33 + 575);
            if ((v42 & 0x80u) == 0)
            {
              v43 = (v33 + 552);
            }

            else
            {
              v43 = *(v33 + 552);
            }

            if ((v42 & 0x80u) != 0)
            {
              v42 = *(v33 + 560);
            }

            if (v42 >= 4095 - v40)
            {
              v44 = 4095 - v40;
            }

            else
            {
              v44 = v42;
            }

            memcpy(v41, v43, v44);
            v41[v44] = 0;
            v45 = strlen(&__p);
            if (v45 <= 0x7FFFFFFFFFFFFFF7)
            {
              v46 = v45;
              if (v45 > 0x16)
              {
                operator new();
              }

              HIBYTE(__s_8[1]) = v45;
              if (&__s > &__p || &__s_8[-1] + v45 <= &__p)
              {
                if (v45)
                {
                  memcpy(&__s, &__p, v45);
                }

                *(&__s_8[-1] + v46) = 0;
                operator new();
              }

              goto LABEL_303;
            }

            goto LABEL_305;
          }

          v47 = size[2].__r_.__value_.__l.__size_;
          for (i = size[2].__r_.__value_.__r.__words[2]; v47 != i; v47 += 464)
          {
          }

          v19 = v138;
          if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__sz.__r_.__value_.__l.__data_);
          }

          size += 8;
        }

        while (&v142[8] != v141);
      }

      v49 = v19->__r_.__value_.__l.__size_;
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = v49->__r_.__value_.__r.__words[0];
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v19->__r_.__value_.__r.__words[2];
          v24 = *v50 == v19;
          v19 = v50;
        }

        while (!v24);
      }

      v19 = v50;
    }

    while (v50 != v132);
  }

  v135[217] = v134;
  {
    operator new();
  }

  v51 = &unk_280905000;
  v52 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v127 = v52[217];
  v128 = v52;
  v52[217] = 0;
  v53 = *v136;
  if (*v136 != v132)
  {
LABEL_85:
    memset(&__sz, 0, sizeof(__sz));
    v54 = v53[10];
    v55 = v53[11];
    if (v54 == v55)
    {
LABEL_88:
      v56 = *v133;
      if (!*v133)
      {
        goto LABEL_155;
      }
    }

    else
    {
      while (LODWORD(v54->__r_.__value_.__l.__data_) != 2)
      {
        v54 += 8;
        if (v54 == v55)
        {
          goto LABEL_88;
        }
      }

      __s = &__p;
      LOWORD(__p.__r_.__value_.__l.__data_) = 84;
      *__s_8 = xmmword_273BA32A0;
      v57 = *(v53 + 55);
      if ((v57 & 0x80u) == 0)
      {
        v58 = (v53 + 4);
      }

      else
      {
        v58 = v53[4];
      }

      if ((v57 & 0x80u) != 0)
      {
        v57 = v53[5];
      }

      if (v57 >= 0x3FE)
      {
        v59 = 1022;
      }

      else
      {
        v59 = v57;
      }

      memcpy(&__p.__r_.__value_.__l.__data_ + 1, v58, v59);
      __s_8[1] = (v59 + 1);
      __p.__r_.__value_.__s.__data_[__s_8[1]] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", 2);
      if (!__s)
      {
        goto LABEL_303;
      }

      v60 = strlen(__s);
      if (v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_305;
      }

      if (v60 > 0x16)
      {
        operator new();
      }

      *(&__len.__r_.__value_.__s + 23) = v60;
      v61 = (&__len + v60);
      if (&__len <= __s && v61 > __s)
      {
        goto LABEL_303;
      }

      if (v60)
      {
        memmove(&__len, __s, v60);
      }

      v61->__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__sz.__r_.__value_.__l.__data_);
      }

      __sz = __len;
      v56 = *v133;
      if (!*v133)
      {
        goto LABEL_155;
      }
    }

    v62 = *(v53 + 55);
    if (v62 >= 0)
    {
      v63 = (v53 + 4);
    }

    else
    {
      v63 = v53[4];
    }

    if (v62 >= 0)
    {
      v64 = *(v53 + 55);
    }

    else
    {
      v64 = v53[5];
    }

    v65 = v133;
    while (1)
    {
      v66 = *(v56 + 55);
      if (v66 >= 0)
      {
        v67 = v56 + 4;
      }

      else
      {
        v67 = v56[4];
      }

      if (v66 >= 0)
      {
        v68 = *(v56 + 55);
      }

      else
      {
        v68 = v56[5];
      }

      if (v64 >= v68)
      {
        v69 = v68;
      }

      else
      {
        v69 = v64;
      }

      v70 = memcmp(v67, v63, v69);
      if (v70)
      {
        if (v70 < 0)
        {
          goto LABEL_117;
        }

LABEL_131:
        v65 = v56;
        v56 = *v56;
        if (!v56)
        {
LABEL_132:
          if (v65 == v133)
          {
            goto LABEL_155;
          }

          v71 = *(v65 + 55);
          if (v71 >= 0)
          {
            v72 = v65 + 4;
          }

          else
          {
            v72 = v65[4];
          }

          if (v71 >= 0)
          {
            v73 = *(v65 + 55);
          }

          else
          {
            v73 = v65[5];
          }

          if (v73 >= v64)
          {
            v74 = v64;
          }

          else
          {
            v74 = v73;
          }

          v75 = memcmp(v63, v72, v74);
          if (!v75)
          {
            if (v64 < v73)
            {
              goto LABEL_155;
            }

LABEL_144:
            memset(&__len, 0, sizeof(__len));
            memset(&v148, 0, sizeof(v148));
            if (v65[7])
            {
              std::operator+<char>();
              if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__len.__r_.__value_.__l.__data_);
              }

              __len = __p;
            }

            if (v65[8])
            {
              std::operator+<char>();
              if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v148.__r_.__value_.__l.__data_);
              }

              v148 = __p;
            }

            v76 = v53[10];
            if (v76 == v53[11])
            {
              goto LABEL_156;
            }

LABEL_161:
            v78 = v76->__r_.__value_.__l.__data_;
            __s = &__p;
            strcpy(&__p, "T");
            *__s_8 = xmmword_273BA32A0;
            v79 = *(v53 + 55);
            if ((v79 & 0x80u) == 0)
            {
              v80 = (v53 + 4);
            }

            else
            {
              v80 = v53[4];
            }

            if ((v79 & 0x80u) != 0)
            {
              v79 = v53[5];
            }

            if (v79 >= 0x3FE)
            {
              v81 = 1022;
            }

            else
            {
              v81 = v79;
            }

            memcpy(&__p.__r_.__value_.__l.__data_ + 1, v80, v81);
            __s_8[1] = (v81 + 1);
            __p.__r_.__value_.__s.__data_[__s_8[1]] = 0;
            webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v78);
            if (!__s)
            {
              goto LABEL_303;
            }

            v82 = strlen(__s);
            if (v82 <= 0x7FFFFFFFFFFFFFF7)
            {
              if (v82 > 0x16)
              {
                operator new();
              }

              HIBYTE(v147) = v82;
              v83 = (&v145 + v82);
              if (&v145 > __s || v83 <= __s)
              {
                if (v82)
                {
                  memmove(&v145, __s, v82);
                }

                v83->__r_.__value_.__s.__data_[0] = 0;
                operator new();
              }

              goto LABEL_303;
            }

LABEL_305:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if ((v75 & 0x80000000) == 0)
          {
            goto LABEL_144;
          }

LABEL_155:
          memset(&__len, 0, sizeof(__len));
          memset(&v148, 0, sizeof(v148));
          v76 = v53[10];
          if (v76 != v53[11])
          {
            goto LABEL_161;
          }

LABEL_156:
          if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__data_);
            v51 = &unk_280905000;
            if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_182;
            }

LABEL_158:
            if ((SHIBYTE(__sz.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_159;
            }

LABEL_183:
            operator delete(__sz.__r_.__value_.__l.__data_);
            v77 = v53[1];
            if (v77)
            {
              goto LABEL_184;
            }

            do
            {
LABEL_186:
              v85 = v53[2];
              v24 = *v85 == v53;
              v53 = v85;
            }

            while (!v24);
          }

          else
          {
            v51 = &unk_280905000;
            if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_158;
            }

LABEL_182:
            operator delete(__len.__r_.__value_.__l.__data_);
            if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_183;
            }

LABEL_159:
            v77 = v53[1];
            if (!v77)
            {
              goto LABEL_186;
            }

            do
            {
LABEL_184:
              v85 = v77;
              v77 = v77->__r_.__value_.__r.__words[0];
            }

            while (v77);
          }

          v53 = v85;
          if (v85 == v132)
          {
            break;
          }

          goto LABEL_85;
        }
      }

      else
      {
        if (v68 >= v64)
        {
          goto LABEL_131;
        }

LABEL_117:
        v56 = v56[1];
        if (!v56)
        {
          goto LABEL_132;
        }
      }
    }
  }

  v128[217] = v127;
  {
    operator new();
  }

  v86 = pthread_getspecific(*(v51[403] + 88));
  v123 = v86[217];
  v124 = v86;
  v86[217] = 0;
  v88 = *(v144 + 264);
  v87 = *(v144 + 272);
  if (v88 != v87)
  {
    v129 = *(v144 + 272);
    while (1)
    {
      v90 = *(v88 + 8);
      v140 = v88;
      if (v90 == 1)
      {
        break;
      }

      if (v90)
      {
        goto LABEL_194;
      }

      {
        operator new();
      }

      v89 = pthread_getspecific(*(v51[403] + 88));
      v91 = v89[217];
      v89[217] = 0;
      if (*(v88 + 40) != 1 || *(v88 + 72) != 1)
      {
        goto LABEL_193;
      }

      v137 = v89;
      if (*(v88 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__sz, *(v88 + 16), *(v88 + 24));
        if ((*(v88 + 72) & 1) == 0)
        {
          goto LABEL_303;
        }
      }

      else
      {
        __sz = *(v88 + 16);
      }

      __s = &__p;
      strcpy(&__p, "T");
      *__s_8 = xmmword_273BA32A0;
      v94 = *(v88 + 71);
      if (v94 >= 0)
      {
        v95 = (v88 + 48);
      }

      else
      {
        v95 = *(v88 + 48);
      }

      if (v94 >= 0)
      {
        v96 = *(v88 + 71);
      }

      else
      {
        v96 = *(v88 + 56);
      }

      if (v96 >= 0x3FE)
      {
        v97 = 1022;
      }

      else
      {
        v97 = v96;
      }

      memcpy(&__p.__r_.__value_.__l.__data_ + 1, v95, v97);
      __s_8[1] = (v97 + 1);
      __p.__r_.__value_.__s.__data_[__s_8[1]] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", 1);
      if (!__s)
      {
        goto LABEL_303;
      }

      v98 = strlen(__s);
      if (v98 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_305;
      }

      if (v98 > 0x16)
      {
        operator new();
      }

      *(&__len.__r_.__value_.__s + 23) = v98;
      v99 = (&__len + v98);
      if (&__len <= __s && v99 > __s)
      {
        goto LABEL_303;
      }

      if (v98)
      {
        memmove(&__len, __s, v98);
      }

      v99->__r_.__value_.__s.__data_[0] = 0;
      if ((*(v88 + 192) & 1) == 0)
      {
        goto LABEL_303;
      }

      v101 = *(v88 + 112);
      v100 = *(v88 + 120);
      if (v101 == v100)
      {
        *&v148.__r_.__value_.__r.__words[1] = 0uLL;
        v148.__r_.__value_.__r.__words[0] = &v148.__r_.__value_.__l.__size_;
        v104 = *(v88 + 88);
        v105 = *(v88 + 96);
        if (v104 == v105)
        {
          goto LABEL_273;
        }

        do
        {
LABEL_267:
          v116 = v104[14];
          if (v104[15] != v116)
          {
            if (*(v88 + 192))
            {
              operator new();
            }

            goto LABEL_303;
          }

          v104 += 49;
        }

        while (v104 != v105);
        if (*(v88 + 192))
        {
          v104 = *(v88 + 88);
          v105 = *(v88 + 96);
          goto LABEL_273;
        }

        goto LABEL_303;
      }

      do
      {
        v102 = *(v101 + 160);
        if (*(v101 + 168) != v102)
        {
          if (*(v88 + 192))
          {
            operator new();
          }

          goto LABEL_303;
        }

        v101 += 552;
      }

      while (v101 != v100);
      v103 = *(v88 + 192);
      *&v148.__r_.__value_.__r.__words[1] = 0uLL;
      v148.__r_.__value_.__r.__words[0] = &v148.__r_.__value_.__l.__size_;
      if ((v103 & 1) == 0)
      {
        goto LABEL_303;
      }

      v104 = *(v88 + 88);
      v105 = *(v88 + 96);
      if (v104 != v105)
      {
        goto LABEL_267;
      }

LABEL_273:
      while (v104 != v105)
      {
        v117 = v104[20];
        if (v117 != v104[21])
        {
        }

        v104 += 49;
      }

      std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(v148.__r_.__value_.__l.__size_);
      if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__len.__r_.__value_.__l.__data_);
      }

      v51 = &unk_280905000;
      v87 = v129;
      if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__sz.__r_.__value_.__l.__data_);
      }

      v89 = v137;
LABEL_193:
      v89[217] = v91;
LABEL_194:
      v88 += 552;
      if (v88 == v87)
      {
        goto LABEL_304;
      }
    }

    {
      operator new();
    }

    v92 = pthread_getspecific(*(v51[403] + 88));
    v93 = v92[217];
    v92[217] = 0;
    if (*(v88 + 40) != 1 || *(v88 + 72) != 1)
    {
      goto LABEL_298;
    }

    v125 = v93;
    v126 = v92;
    if (*(v88 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__len, *(v88 + 16), *(v88 + 24));
      if ((*(v88 + 72) & 1) == 0)
      {
        goto LABEL_303;
      }
    }

    else
    {
      __len = *(v88 + 16);
    }

    __s = &__p;
    strcpy(&__p, "T");
    *__s_8 = xmmword_273BA32A0;
    v106 = *(v88 + 71);
    if (v106 >= 0)
    {
      v107 = (v88 + 48);
    }

    else
    {
      v107 = *(v88 + 48);
    }

    if (v106 >= 0)
    {
      v108 = *(v88 + 71);
    }

    else
    {
      v108 = *(v88 + 56);
    }

    if (v108 >= 0x3FE)
    {
      v109 = 1022;
    }

    else
    {
      v109 = v108;
    }

    memcpy(&__p.__r_.__value_.__l.__data_ + 1, v107, v109);
    __s_8[1] = (v109 + 1);
    __p.__r_.__value_.__s.__data_[__s_8[1]] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", 1);
    if (__s)
    {
      v110 = strlen(__s);
      if (v110 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_305;
      }

      if (v110 > 0x16)
      {
        operator new();
      }

      *(&v148.__r_.__value_.__s + 23) = v110;
      v111 = (&v148 + v110);
      if (&v148 > __s || v111 <= __s)
      {
        if (v110)
        {
          memmove(&v148, __s, v110);
        }

        v111->__r_.__value_.__s.__data_[0] = 0;
        if (*(v88 + 320))
        {
          v113 = *(v88 + 248);
          v112 = *(v88 + 256);
          if (v113 == v112)
          {
            v146 = 0;
            v147 = 0;
            v145 = &v146;
LABEL_281:
            v118 = v88;
            v119 = *(v88 + 200);
            v120 = *(v118 + 208);
            if (v119 == v120)
            {
              goto LABEL_290;
            }

            do
            {
              v121 = v119[14];
              if (v119[15] != v121)
              {
                if (*(v140 + 320))
                {
                  operator new();
                }

                goto LABEL_303;
              }

              v119 += 59;
            }

            while (v119 != v120);
            if (*(v140 + 320))
            {
              v119 = *(v140 + 200);
              v120 = *(v140 + 208);
LABEL_290:
              while (v119 != v120)
              {
                v122 = v119[20];
                if (v122 != v119[21])
                {
                }

                v119 += 59;
              }

              std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(v146);
              if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v148.__r_.__value_.__l.__data_);
              }

              v51 = &unk_280905000;
              v88 = v140;
              v87 = v129;
              v92 = v126;
              if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__len.__r_.__value_.__l.__data_);
                v92 = v126;
              }

              v93 = v125;
LABEL_298:
              v92[217] = v93;
              goto LABEL_194;
            }
          }

          else
          {
            do
            {
              v114 = *(v113 + 160);
              if (*(v113 + 168) != v114)
              {
                if (*(v88 + 320))
                {
                  operator new();
                }

                goto LABEL_303;
              }

              v113 += 792;
            }

            while (v113 != v112);
            v115 = *(v88 + 320);
            v146 = 0;
            v147 = 0;
            v145 = &v146;
            if (v115)
            {
              goto LABEL_281;
            }
          }
        }
      }
    }

LABEL_303:
    __break(1u);
  }

LABEL_304:
  v124[217] = v123;
  v131[217] = v130;
}