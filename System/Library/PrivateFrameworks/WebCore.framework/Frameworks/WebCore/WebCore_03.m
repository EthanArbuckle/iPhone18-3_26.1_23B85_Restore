uint64_t webrtc::AudioDecoderOpusImpl::GeneratePlc(uint64_t result, uint64_t a2, unint64_t *a3)
{
  if (*(result + 28) == 1)
  {
    v4 = *(result + 8);
    v5 = (10 * (*(v4 + 28) / 1000));
    v6 = v5 * *(result + 16);
    v7 = *a3;
    v8 = *a3 + v6;
    if (a3[1] < v8)
    {
      operator new[]();
    }

    *a3 = v8;
    if (v6)
    {
      v9 = (a3[2] + 2 * v7);
    }

    else
    {
      v9 = 0;
    }

    if (*v4)
    {
      result = opus_decode(*v4, 0, 0, v9, v5, 0);
      if (result >= 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = opus_multistream_decode(*(v4 + 8), 0, 0, v9, v5, 0);
      if (result >= 1)
      {
LABEL_9:
        if (*(v4 + 16) != 2)
        {
          goto LABEL_16;
        }

        if (*(v4 + 32) != 1)
        {
          goto LABEL_16;
        }

        v14 = (2 * result);
        if (v14 < 1)
        {
          goto LABEL_16;
        }

        if (v14 == 2)
        {
          v15 = 0;
        }

        else
        {
          v17 = ((v14 - 1) >> 1) + 1;
          v15 = 2 * (v17 & 0xFFFFFFFFFFFFFFFELL);
          v18 = &v9->i16[2];
          v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v20 = *v18;
            *(v18 - 1) = *(v18 - 2);
            v18[1] = v20;
            v18 += 4;
            v19 -= 2;
          }

          while (v19);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_16;
          }
        }

        do
        {
          v9->i16[v15 + 1] = v9->i16[v15];
          v15 += 2;
        }

        while (v15 < v14);
LABEL_16:
        v16 = result & ~(result >> 31);
        if (v16 > v6)
        {
          webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/buffer.h", 328, "written_elements <= max_elements", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v10, v11, v12, v13, result & ~(result >> 31));
          return webrtc::AudioDecoderOpus::SdpToConfig(v21, v22);
        }

        else
        {
          *a3 = v7 + v16;
        }

        return result;
      }
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  return result;
}

uint64_t webrtc::AudioDecoderOpus::SdpToConfig(uint64_t result)
{
  v1 = *(result + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(result + 8);
  }

  if (v1 != 4)
  {
    return 47872;
  }

  v3 = *v2;
  if (v3 != 111)
  {
    if ((v3 - 65) < 0x1A)
    {
      LOBYTE(v3) = v3 + 32;
    }

    if (v3 != 111)
    {
      return 47872;
    }
  }

  v4 = v2[1];
  if (v4 != 112)
  {
    if ((v4 - 65) < 0x1A)
    {
      LOBYTE(v4) = v4 + 32;
    }

    if (v4 != 112)
    {
      return 47872;
    }
  }

  v5 = v2[2];
  if (v5 != 117)
  {
    if ((v5 - 65) < 0x1A)
    {
      LOBYTE(v5) = v5 + 32;
    }

    if (v5 != 117)
    {
      return 47872;
    }
  }

  v6 = v2[3];
  if (v6 != 115)
  {
    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (v6 != 115)
    {
      return 47872;
    }
  }

  if (*(result + 24) != 48000 || *(result + 32) != 2)
  {
    return 47872;
  }

  v13 = 6;
  if (__p > "stereo" || __p + 6 <= "stereo")
  {
    strcpy(__p, "stereo");
    v7 = result;
    v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(result + 40, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v7 + 48) == v8)
    {
      v11 = 0;
      return v11 | 0xBB80;
    }

    v9 = *(v8 + 79);
    if (v9 < 0)
    {
      if (v8[8] == 1)
      {
        v10 = *v8[7];
        goto LABEL_37;
      }
    }

    else if (v9 == 1)
    {
      v10 = *(v8 + 56);
LABEL_37:
      if (v10 == 48)
      {
        v11 = 0x100000000;
        return v11 | 0xBB80;
      }

      if (v10 == 49)
      {
        v11 = 0x200000000;
        return v11 | 0xBB80;
      }
    }

    return 47872;
  }

  __break(1u);
  return result;
}

void webrtc::AudioDecoderOpus::AppendSupportedDecoders(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(v17, "minptime", "10");
  std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(&v21, "useinbandfec", "1");
  v9 = 0;
  v10 = 0;
  v8 = &v9;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v8, &v9, v17);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v8, &v9, &v21);
  HIBYTE(v12) = 4;
  if (v11 <= "opus" && v11 + 4 > "opus")
  {
LABEL_28:
    __break(1u);
    return;
  }

  strcpy(v11, "opus");
  LODWORD(v13) = 48000;
  *(&v13 + 1) = 2;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  if (v10)
  {
    v9[2] = &v15;
    v8 = &v9;
    v9 = 0;
    v10 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v8, 0);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = &v15;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v8, v9);
  if (SHIBYTE(v24) < 0)
  {
LABEL_5:
    operator delete(*(&v23 + 1));
  }

LABEL_6:
  if ((SBYTE7(v23) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    operator delete(v19[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  operator delete(v21);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  operator delete(v17[0]);
LABEL_9:
  *v17 = *v11;
  v18 = v12;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  *v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  if (v16)
  {
    v15[2] = &v21;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v20 = &v21;
  }

  LODWORD(v23) = 48000;
  *(&v23 + 1) = 1;
  *&v24 = 25769803840000;
  DWORD2(v24) = 510000;
  WORD6(v24) = 256;
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = *v17;
  *(v2 + 16) = v18;
  *v2 = v3;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  *(v2 + 24) = *v19;
  *(v2 + 40) = v20;
  v4 = v21;
  *(v2 + 48) = v21;
  v5 = v2 + 48;
  v6 = v22;
  *(v2 + 56) = v22;
  if (v6)
  {
    v4[2] = v5;
    v4 = 0;
    v20 = &v21;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    *(v2 + 40) = v5;
  }

  v7 = v24;
  *(v2 + 64) = v23;
  *(v2 + 80) = v7;
  a1[1] = v2 + 96;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v20, v4);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v14, v15);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

uint64_t webrtc::AudioDecoderOpus::MakeAudioDecoder@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if ((a2 == 48000 || a2 == 16000) && ((HIDWORD(a2) - 3) > 0xFFFFFFFD || (a3 & 1) == 0))
  {
    (*(**(a1 + 8) + 16))(__p, *(a1 + 8), "WebRTC-Audio-OpusDecodeStereoByDefault", 38);
    v5 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v5 = __p[1];
    }

    if (v5 >= 7)
    {
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(__p[0]);
LABEL_13:
    operator new();
  }

  result = 0;
  *a4 = 0;
  return result;
}

unint64_t webrtc::AudioDecoderPcmU::DecodeInternal(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, uint32x4_t a8, uint64_t a9, int16x8_t *a10, _DWORD *a11)
{
  v11 = *(a1 + 8);
  v12 = (a3 / v11);
  result = v12 * v11;
  if (!(v12 * v11))
  {
    goto LABEL_15;
  }

  if (result < 4 || ((v14 = &a10->i8[2 * v11 * v12], a2 + result > a10) ? (v15 = v14 > a2) : (v15 = 0), v15))
  {
    v16 = 0;
  }

  else
  {
    if (result >= 0x10)
    {
      v25 = 0;
      v16 = result & 0xFFFFFFFFFFFFFFF0;
      a8.i64[0] = 0x7800000078;
      a8.i64[1] = 0x7800000078;
      v26.i64[0] = 0x8400000084;
      v26.i64[1] = 0x8400000084;
      v27 = vdupq_n_s32(0xFF7Cu);
      v28 = a10;
      do
      {
        v29 = *(a2 + v25);
        v30 = vmvnq_s8(v29);
        v31 = vqtbl1q_s8(v30, xmmword_273B8E7A0);
        v32 = vqtbl1q_s8(v30, xmmword_273B8E7B0);
        v33 = vqtbl1q_s8(v30, xmmword_273B8E7C0);
        v34 = vqtbl1q_s8(v30, xmmword_273B8E7D0);
        v35 = vshlq_u32((*&vandq_s8(vshlq_n_s32(v31, 3uLL), a8) | __PAIR128__(0x8400000084, 0x8400000084)), (*&vshrq_n_u32(v31, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7)));
        v36 = vshlq_u32((*&vandq_s8(vshlq_n_s32(v32, 3uLL), a8) | __PAIR128__(0x8400000084, 0x8400000084)), (*&vshrq_n_u32(v32, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7)));
        v37 = vshlq_u32((*&vandq_s8(vshlq_n_s32(v33, 3uLL), a8) | __PAIR128__(0x8400000084, 0x8400000084)), (*&vshrq_n_u32(v33, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7)));
        v38 = vshlq_u32((*&vandq_s8(vshlq_n_s32(v34, 3uLL), a8) | __PAIR128__(0x8400000084, 0x8400000084)), (*&vshrq_n_u32(v34, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7)));
        v39 = vcltzq_s8(v29);
        v40 = vmovl_s8(*v39.i8);
        v41 = vmovl_high_s8(v39);
        *v28 = vuzp1q_s16(vbslq_s8(vmovl_s16(*v40.i8), vaddq_s32(v38, v27), vsubq_s32(v26, v38)), vbslq_s8(vmovl_high_s16(v40), vaddq_s32(v37, v27), vsubq_s32(v26, v37)));
        v28[1] = vuzp1q_s16(vbslq_s8(vmovl_s16(*v41.i8), vaddq_s32(v36, v27), vsubq_s32(v26, v36)), vbslq_s8(vmovl_high_s16(v41), vaddq_s32(v35, v27), vsubq_s32(v26, v35)));
        v28 += 2;
        v25 += 16;
      }

      while (v16 != v25);
      if (result == v16)
      {
        goto LABEL_15;
      }

      if ((result & 0xC) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = 0;
    }

    v42 = v16;
    v16 = result & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (a10->i64 + 2 * v42);
    v44.i64[0] = 0x7800000078;
    v44.i64[1] = 0x7800000078;
    v45.i64[0] = 0x8400000084;
    v45.i64[1] = 0x8400000084;
    v46 = vdupq_n_s32(0xFF7Cu);
    do
    {
      a8.i32[0] = *(a2 + v42);
      v47 = vmovl_u8(*a8.i8).u64[0];
      v48 = vshr_n_s16(vshl_n_s16(v47, 8uLL), 8uLL);
      v49 = veor_s8(v47, 0xFF00FF00FF00FFLL);
      a8 = vshlq_u32((*&vandq_s8(vmovl_u16(vshl_n_s16(v49, 3uLL)), v44) | __PAIR128__(0x8400000084, 0x8400000084)), (*&vshrq_n_u32(vmovl_u16(v49), 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7)));
      *a8.i8 = vmovn_s32(vbslq_s8(vmovl_s16(vcltz_s16(v48)), vaddq_s32(a8, v46), vsubq_s32(v45, a8)));
      *v43++ = a8.i64[0];
      v42 += 4;
    }

    while (v16 != v42);
    if (result == v16)
    {
      goto LABEL_15;
    }
  }

LABEL_10:
  v17 = result - v16;
  v18 = (a2 + v16);
  v19 = &a10->i16[v16];
  do
  {
    v20 = *v18++;
    v21 = ((8 * (~v20 & 0xF)) | 0x84) << ((~v20 >> 4) & 7);
    v22 = 132 - v21;
    v23 = v21 - 132;
    if (v20 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    *v19++ = v24;
    --v17;
  }

  while (v17);
LABEL_15:
  *a11 = 1;
  return result;
}

unint64_t webrtc::AudioDecoderPcmA::DecodeInternal(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, uint8x8_t a7, uint64_t a8, int16x8_t *a9, _DWORD *a10)
{
  v10 = *(a1 + 8);
  v11 = (a3 / v10);
  result = v11 * v10;
  if (!(v11 * v10))
  {
    goto LABEL_18;
  }

  if (result < 4 || ((v13 = &a9->i8[2 * v10 * v11], a2 + result > a9) ? (v14 = v13 > a2) : (v14 = 0), v14))
  {
    v15 = 0;
  }

  else
  {
    if (result >= 0x10)
    {
      v25 = 0;
      v15 = result & 0xFFFFFFFFFFFFFFF0;
      v26.i64[0] = 0x5555555555555555;
      v26.i64[1] = 0x5555555555555555;
      a7.i32[1] = -247;
      v27 = vdupq_n_s32(0x108u);
      v28.i64[0] = -1;
      v28.i64[1] = -1;
      v29 = a9;
      do
      {
        v30 = *(a2 + v25);
        v31 = veorq_s8(v30, v26);
        v32 = vqtbl1q_s8(v31, xmmword_273B8E7D0);
        v33 = vqtbl1q_s8(v31, xmmword_273B8E7C0);
        v34 = vqtbl1q_s8(v31, xmmword_273B8E7B0);
        v35 = vqtbl1q_s8(v31, xmmword_273B8E7A0);
        v36 = *&vshlq_n_s32(v32, 4uLL) & __PAIR128__(0xFFFFF0FFFFFFF0FFLL, 0xFFFFF0FFFFFFF0FFLL);
        v37 = *&vshlq_n_s32(v33, 4uLL) & __PAIR128__(0xFFFFF0FFFFFFF0FFLL, 0xFFFFF0FFFFFFF0FFLL);
        v38 = *&vshlq_n_s32(v34, 4uLL) & __PAIR128__(0xFFFFF0FFFFFFF0FFLL, 0xFFFFF0FFFFFFF0FFLL);
        v39 = *&vshlq_n_s32(v35, 4uLL) & __PAIR128__(0xFFFFF0FFFFFFF0FFLL, 0xFFFFF0FFFFFFF0FFLL);
        v40 = *&vshrq_n_u32(v35, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7);
        v41 = *&vshrq_n_u32(v34, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7);
        v42 = *&vshrq_n_u32(v33, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7);
        v43 = *&vshrq_n_u32(v32, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7);
        v44 = vbslq_s8(vceqzq_s32(v40), (v39 | __PAIR128__(0x800000008, 0x800000008)), vshlq_u32(vorrq_s8(v39, v27), vaddq_s32(v40, v28)));
        v45 = vbslq_s8(vceqzq_s32(v41), (v38 | __PAIR128__(0x800000008, 0x800000008)), vshlq_u32(vorrq_s8(v38, v27), vaddq_s32(v41, v28)));
        v46 = vbslq_s8(vceqzq_s32(v42), (v37 | __PAIR128__(0x800000008, 0x800000008)), vshlq_u32(vorrq_s8(v37, v27), vaddq_s32(v42, v28)));
        v47 = vbslq_s8(vceqzq_s32(v43), (v36 | __PAIR128__(0x800000008, 0x800000008)), vshlq_u32(vorrq_s8(v36, v27), vaddq_s32(v43, v28)));
        v48 = vcltzq_s8(v30);
        v49 = vmovl_s8(*v48.i8);
        v50 = vmovl_high_s8(v48);
        *v29 = vuzp1q_s16(vbslq_s8(vmovl_s16(*v49.i8), v47, vnegq_s32(v47)), vbslq_s8(vmovl_high_s16(v49), v46, vnegq_s32(v46)));
        v29[1] = vuzp1q_s16(vbslq_s8(vmovl_s16(*v50.i8), v45, vnegq_s32(v45)), vbslq_s8(vmovl_high_s16(v50), v44, vnegq_s32(v44)));
        v29 += 2;
        v25 += 16;
      }

      while (v15 != v25);
      if (result == v15)
      {
        goto LABEL_18;
      }

      if ((result & 0xC) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 0;
    }

    v51 = v15;
    v15 = result & 0xFFFFFFFFFFFFFFFCLL;
    v52 = (a9->i64 + 2 * v51);
    v53 = vdupq_n_s32(0x108u);
    v54.i64[0] = -1;
    v54.i64[1] = -1;
    do
    {
      a7.i32[0] = *(a2 + v51);
      v55 = vmovl_u8(a7).u64[0];
      v56 = vshr_n_s16(vshl_n_s16(v55, 8uLL), 8uLL);
      v57 = veor_s8(v55, 0x55005500550055);
      v58 = vmovl_u16(v57);
      v59 = *&vshll_n_u16(v57, 4uLL) & __PAIR128__(0xFFFFF0FFFFFFF0FFLL, 0xFFFFF0FFFFFFF0FFLL);
      v60 = *&vshrq_n_u32(v58, 4uLL) & __PAIR128__(0xFFFFFFF7FFFFFFF7, 0xFFFFFFF7FFFFFFF7);
      v61 = vbslq_s8(vceqzq_s32(v60), (v59 | __PAIR128__(0x800000008, 0x800000008)), vshlq_u32(vorrq_s8(v59, v53), vaddq_s32(v60, v54)));
      a7 = vmovn_s32(vbslq_s8(vmovl_s16(vcltz_s16(v56)), v61, vnegq_s32(v61)));
      *v52++ = *&a7;
      v51 += 4;
    }

    while (v15 != v51);
    if (result == v15)
    {
      goto LABEL_18;
    }
  }

LABEL_10:
  v16 = result - v15;
  v17 = (a2 + v15);
  v18 = &a9->i16[v15];
  do
  {
    v19 = *v17++;
    v20 = v19;
    v21 = ((16 * ((v19 ^ 0x55) & 0xF)) | 0x108) << ((((v19 ^ 0x55u) >> 4) & 7) - 1);
    v22 = (16 * ((v19 ^ 0x55) & 0xF)) | 8;
    if ((((v19 ^ 0x55u) >> 4) & 7) != 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v20 < 0)
    {
      LOWORD(v24) = v23;
    }

    else
    {
      v24 = -v23;
    }

    *v18++ = v24;
    --v16;
  }

  while (v16);
LABEL_18:
  *a10 = 1;
  return result;
}

unint64_t webrtc::AudioDecoderPcm16B::DecodeInternal(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int8x16_t *a5, _DWORD *a6)
{
  v6 = *(a1 + 16) * (2 * (a3 / (2 * *(a1 + 16))));
  result = v6 >> 1;
  if (!v6)
  {
    goto LABEL_12;
  }

  if (v6 < 0x10 || (a2 + v6 > a5 ? (v8 = a5->u64 + v6 > a2) : (v8 = 0), v8))
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (v6 >= 0x40)
  {
    v9 = result & 0x7FFFFFFFFFFFFFE0;
    v14 = (a2 + 32);
    v15 = a5 + 2;
    v16 = result & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v17 = v14 - 32;
      v29 = vld2q_s8(v17);
      v30 = vld2q_s8(v14);
      __asm
      {
        SHLL2           V4.8H, V0.16B, #8
        SHLL2           V6.8H, V2.16B, #8
      }

      v15[-2] = vorrq_s8(vshll_n_s8(*v29.val[0].i8, 8uLL), vmovl_u8(*v29.val[1].i8));
      v15[-1] = vorrq_s8(_Q4, vmovl_high_u8(v29.val[1]));
      *v15 = vorrq_s8(vshll_n_s8(*v30.val[0].i8, 8uLL), vmovl_u8(*v30.val[1].i8));
      v15[1] = vorrq_s8(_Q6, vmovl_high_u8(v30.val[1]));
      v15 += 4;
      v14 += 64;
      v16 -= 32;
    }

    while (v16);
    if (result == v9)
    {
      goto LABEL_12;
    }

    if ((v6 & 0x30) != 0)
    {
      goto LABEL_17;
    }

LABEL_10:
    v10 = result - v9;
    v11 = 2 * v9;
    v12 = &a5->i16[v9];
    v13 = v11 + a2 + 1;
    do
    {
      *v12++ = bswap32(*(v13 - 1)) >> 16;
      v13 += 2;
      --v10;
    }

    while (v10);
    goto LABEL_12;
  }

  v9 = 0;
LABEL_17:
  v24 = v9;
  v9 = result & 0x7FFFFFFFFFFFFFF8;
  v25 = (a2 + 2 * v24);
  v26 = (a5 + 2 * v24);
  v27 = (result & 0x7FFFFFFFFFFFFFF8) - v24;
  do
  {
    v28 = vld2_s8(v25);
    v25 += 16;
    *v26++ = vorrq_s8(vshll_n_s8(v28.val[0], 8uLL), vmovl_u8(v28.val[1]));
    v27 -= 8;
  }

  while (v27);
  if (result != v9)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a6 = 1;
  return result;
}

unint64_t webrtc::AudioDecoderPcm16B::ParsePayload@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v7 = *(a1 + 8);
  v8 = (v7 / 1000);
  if (!(v7 % 1000))
  {
    v9 = *(a1 + 16) * 2 * v8;

    webrtc::LegacyEncodedAudioFrame::SplitBySamples(a2, v9, a6);
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v8, a3, a4, a5, (v7 % 1000));
  return webrtc::AudioDecoderPcm16B::PacketDurationRedundant(v10, v11, v12);
}

__n128 absl::internal_any_invocable::LocalManagerTrivial(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t webrtc::AudioEncoder::Encode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = (*(*a1 + 24))(a1);
  v13 = (*(*a1 + 16))(a1);
  v14 = a4;
  if (a4 != v12 * v13 / 0x64uLL)
  {
    (*(*a1 + 24))(a1);
    (*(*a1 + 16))(a1);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio_codecs/audio_encoder.cc", 52, "audio.size() == static_cast<size_t>(NumChannels() * SampleRateHz() / 100)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v23, v24, v25, v26, a4);
LABEL_8:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio_codecs/audio_encoder.cc", 56, "encoded->size() - old_size == info.encoded_bytes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v22);
    return webrtc::AudioEncoder::SetFec(v27, v28);
  }

  v15 = *a5;
  if (v14)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0;
  }

  result = (*(*a1 + 232))(a1, a2, v16);
  v22 = *a5 - v15;
  if (v22 != *a6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t webrtc::AudioEncoder::OnReceivedUplinkAllocation(uint64_t a1, void *a2)
{
  v2 = a2[4];
  v3 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < 0)
  {
    v5 = v4 - -v2 / 0x3E8uLL;
  }

  else
  {
    v5 = v3;
  }

  return (*(*a1 + 168))(a1, *a2, v5, 1);
}

void webrtc::AudioEncoder::GetANAStats(_BYTE *a1@<X8>)
{
  *a1 = 0;
  a1[4] = 0;
  a1[8] = 0;
  a1[12] = 0;
  a1[16] = 0;
  a1[20] = 0;
  a1[24] = 0;
  a1[28] = 0;
  a1[32] = 0;
  a1[36] = 0;
  a1[40] = 0;
  a1[44] = 0;
  a1[48] = 0;
  a1[52] = 0;
}

char *std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::__assign_with_size[abi:sn200100]<webrtc::AudioEncoder::EncodedInfoLeaf*,webrtc::AudioEncoder::EncodedInfoLeaf*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - result) >> 3) >= a4)
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

void webrtc::anonymous namespace::AudioEncoderCng::~AudioEncoderCng(webrtc::_anonymous_namespace_::AudioEncoderCng *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4036225525);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4036225525);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::AudioEncoderCng::Reset(webrtc::_anonymous_namespace_::AudioEncoderCng *this)
{
  (*(**(this + 1) + 64))(*(this + 1));
  *(this + 5) = *(this + 4);
  *(this + 8) = *(this + 7);
  *(this + 80) = 1;
  (*(**(this + 11) + 24))(*(this + 11));
  operator new();
}

void webrtc::anonymous namespace::AudioEncoderCng::EncodeImpl(uint64_t a1@<X0>, int a2@<W1>, __int16 *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v94 = *MEMORY[0x277D85DE8];
  v83 = a2;
  v10 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v15 = (10 * v10 % 1000);
  if (v15)
  {
    goto LABEL_78;
  }

  v16 = a1 + 32;
  v17 = (a1 + 56);
  v18 = (*(a1 + 40) - *(a1 + 32)) >> 1;
  v81 = v10 / 100;
  if (v18 != ((*(a1 + 64) - *(a1 + 56)) >> 2) * v81)
  {
    goto LABEL_79;
  }

  std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 56), &v83);
  std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(a1 + 32, *(a1 + 40), a3, &a3[a4], (2 * a4) >> 1);
  v19 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v19 > (*(a1 + 64) - *(a1 + 56)) >> 2)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 256;
    *(a6 + 20) = 0;
    *(a6 + 36) = 0;
    *(a6 + 28) = 0;
    *(a6 + 44) = 0;
    return;
  }

  v20 = v19;
  if (10 * v19 >= 0x3D)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/audio_encoder_cng.cc", 140, "frames_to_encode * 10 <= kMaxFrameSizeMs", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v11, v12, v13, v14, 10 * v19);
    goto LABEL_81;
  }

  v21 = 3;
  if (v19 < 3)
  {
    v21 = v19;
  }

  v15 = 2;
  if (v19 == 4)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 32);
  if (*(a1 + 40) == v23)
  {
    goto LABEL_77;
  }

  v80 = (a1 + 32);
  v24 = *(a1 + 88);
  v25 = v22 * v81;
  v26 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v27 = (*(*v24 + 16))(v24, v23, v22 * v81, v26);
  if (v20 != v22 && v27 == 0)
  {
    v15 = *(a1 + 32);
    if (v25 >= (*(a1 + 40) - v15) >> 1)
    {
      goto LABEL_77;
    }

    v29 = *(a1 + 88);
    v30 = v15 + 2 * v25;
    v31 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    v27 = (*(*v29 + 16))(v29, v30, (v20 - v22) * v81, v31);
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v27 != 1)
  {
    if (!v27)
    {
      v32 = *(a1 + 80);
      v33 = (*(**(a1 + 8) + 16))(*(a1 + 8));
      v15 = (10 * v33 % 1000);
      if (!v15)
      {
        v78 = v20;
        if (v20)
        {
          v34 = v33 / 100;
          if ((v33 + 99) >= 0xC7)
          {
            v68 = 0;
            v35 = 0;
            v69 = 0;
            v70 = v20;
            v71 = v33 / -100;
            while (1)
            {
              v72 = *(a1 + 32);
              v15 = *(a1 + 40) - v72;
              v71 += v34;
              if (v71 >= v15 >> 1)
              {
                goto LABEL_77;
              }

              v73 = webrtc::ComfortNoiseEncoder::Encode(*(a1 + 96), v68 + v72, v34, v32 & 1, a5, v12, v13, v14);
              if (v73)
              {
                if (((v69 ^ 1) & 1) == 0)
                {
                  break;
                }
              }

              v68 += 2 * v34;
              v32 &= v73 == 0;
              v69 |= v73 != 0;
              if (v73)
              {
                v35 = v73;
              }

              if (!--v70)
              {
                goto LABEL_45;
              }
            }

LABEL_76:
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/audio_encoder_cng.cc", 261, "!output_produced", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, v14, v76);
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = v33 / -100;
            while (1)
            {
              v15 = *(a1 + 32);
              v37 += v34;
              if (v37 >= (*(a1 + 40) - v15) >> 1)
              {
                break;
              }

              v38 = webrtc::ComfortNoiseEncoder::Encode(*(a1 + 96), 0, v34, v32 & 1, a5, v12, v13, v14);
              if (v38 && ((v36 ^ 1) & 1) == 0)
              {
                goto LABEL_76;
              }

              v32 &= v38 == 0;
              v36 |= v38 != 0;
              if (v38)
              {
                v35 = v38;
              }

              if (!--v20)
              {
                goto LABEL_45;
              }
            }
          }

          goto LABEL_77;
        }

        v35 = 0;
LABEL_45:
        v50 = *(a1 + 56);
        v15 = *(a1 + 64);
        if (v50 != v15)
        {
          v51 = *v50;
          v52 = *(a1 + 16);
          *a6 = v35;
          *(a6 + 8) = v51;
          *(a6 + 12) = v52;
          *(a6 + 16) = 1;
          *(a6 + 20) = 0;
          *(a6 + 36) = 0;
          *(a6 + 28) = 0;
          *(a6 + 44) = 0;
          *(a1 + 80) = 0;
          v17 = (a1 + 56);
          v20 = v78;
          goto LABEL_58;
        }

LABEL_77:
        __break(1u);
      }

LABEL_78:
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v11, v12, v13, v14, v15);
LABEL_79:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/audio_encoder_cng.cc", 132, "speech_buffer_.size() == rtp_timestamps_.size() * samples_per_10ms_frame", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v11, v12, v13, v14, v18);
    }

LABEL_81:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v27);
  }

  v39 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v15 = (10 * v39 % 1000);
  if (v15)
  {
    goto LABEL_78;
  }

  v93 = 0;
  v92 = 0;
  if (v20)
  {
    v79 = v20;
    v77 = a6;
    v40 = v39 / 100;
    if ((v39 + 99) < 0xC7)
    {
      v41 = 0;
      v42 = v39 / -100;
      v43 = v79;
      while (1)
      {
        v44 = *(a1 + 56);
        v15 = *(a1 + 64);
        if (v44 == v15)
        {
          goto LABEL_77;
        }

        v15 = *(a1 + 40) - *(a1 + 32);
        v42 += v40;
        if (v42 >= v15 >> 1)
        {
          goto LABEL_77;
        }

        webrtc::AudioEncoder::Encode(*(a1 + 8), *v44, 0, v40, a5, &v84);
        v45 = v84;
        v92 = v85;
        v93 = v86;
        v46 = v87;
        v16 = v88;
        v47 = v89;
        if (v41)
        {
          operator delete(v41);
        }

        v48 = v90;
        if (!--v43)
        {
          goto LABEL_55;
        }

        v41 = v90;
        if (v45)
        {
          goto LABEL_54;
        }
      }
    }

    v53 = 0;
    v54 = 0;
    v55 = v39 / -100;
    v56 = v79;
    do
    {
      v57 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v57 == v15)
      {
        goto LABEL_77;
      }

      v15 = *(a1 + 32);
      v55 += v40;
      if (v55 >= (*(a1 + 40) - v15) >> 1)
      {
        goto LABEL_77;
      }

      webrtc::AudioEncoder::Encode(*(a1 + 8), *v57, v53 + v15, v40, a5, &v84);
      v45 = v84;
      v92 = v85;
      v93 = v86;
      v46 = v87;
      v16 = v88;
      v47 = v89;
      if (v54)
      {
        operator delete(v54);
      }

      v48 = v90;
      if (!--v56)
      {
        goto LABEL_55;
      }

      v53 += 2 * v40;
      v54 = v90;
    }

    while (!v45);
LABEL_54:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/audio_encoder_cng.cc", 288, "info.encoded_bytes == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v11, v12, v13, v14, v45);
LABEL_55:
    if (!v45)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/audio_encoder_cng.cc", 286, "info.encoded_bytes > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, v11, v12, v13, v14, 0);
      std::vector<unsigned int>::push_back[abi:sn200100](v74, v75);
      return;
    }

    v49 = v91;
    a6 = v77;
    v17 = (a1 + 56);
    v20 = v79;
  }

  else
  {
    v47 = 0;
    v45 = 0;
    v49 = 0;
    v48 = 0uLL;
    v46 = 1;
  }

  v58 = v92;
  *a6 = v45;
  *(a6 + 8) = v58;
  *(a6 + 16) = v93;
  *(a6 + 17) = v46;
  *(a6 + 18) = v16;
  *(a6 + 20) = v47;
  *(a6 + 24) = v48;
  *(a6 + 40) = v49;
  *(a1 + 80) = 1;
LABEL_58:
  v59 = *v80;
  v15 = v20 * v81;
  v60 = 2 * v20 * v81;
  if (__CFADD__(*v80, v60))
  {
    goto LABEL_77;
  }

  if (v15)
  {
    v61 = &v59[v60];
    v62 = *(a1 + 40);
    v63 = v62 - v61;
    if (v62 != v61)
    {
      memmove(*v80, v61, v62 - v61);
    }

    *(a1 + 40) = &v59[v63];
  }

  v64 = *v17;
  if (__CFADD__(*v17, 4 * v20))
  {
    goto LABEL_77;
  }

  if (v20)
  {
    v65 = &v64[4 * v20];
    v66 = *(a1 + 64);
    v67 = v66 - v65;
    if (v66 != v65)
    {
      memmove(*v17, v65, v66 - v65);
    }

    *(a1 + 64) = &v64[v67];
  }
}

void *std::vector<unsigned int>::push_back[abi:sn200100](void *result, _DWORD *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 2) + 1;
    if (v5 >> 62)
    {
      goto LABEL_13;
    }

    v6 = v2 - *result;
    v7 = v6 >> 1;
    if (v6 >> 1 <= v5)
    {
      v7 = (v4 >> 2) + 1;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
    v9 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
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

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

char *std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(uint64_t a1, char *__dst, __int16 *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 1)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 1);
    if (v9 >= 0)
    {
      v10 = v6 - v8;
      if (v10 > v9)
      {
        v9 = v10;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v45 = 2 * ((__dst - v8) >> 1);
      v46 = 2 * a5;
      v47 = v45 + 2 * a5;
      v48 = v45;
      do
      {
        if (!v48)
        {
          goto LABEL_57;
        }

        v49 = *__src++;
        *v48++ = v49;
        v46 -= 2;
      }

      while (v46);
      v50 = *(a1 + 8) - __dst;
      memcpy((v45 + 2 * a5), __dst, v50);
      v52 = v47 + v50;
      *(a1 + 8) = v5;
      v53 = *a1;
      v54 = &v5[-*a1];
      v55 = v45 - v54;
      memcpy((v45 - v54), *a1, v54);
      *a1 = v55;
      *(a1 + 8) = v52;
      *(a1 + 16) = 0;
      if (v53)
      {
        operator delete(v53);
      }

      return v45;
    }

LABEL_58:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = v7 - __dst;
  v13 = (v7 - __dst) >> 1;
  if (v13 >= a5)
  {
    v12 = 2 * a5;
    v32 = &__dst[2 * a5];
    v33 = (v7 - 2 * a5);
    if (v33 >= v7)
    {
      v37 = *(a1 + 8);
    }

    else
    {
      v34 = v33 + 1;
      if (v7 > (v33 + 1))
      {
        v34 = *(a1 + 8);
      }

      v35 = v34 + v12 + ~v7;
      v36 = v35 >= 0x1E && a5 > 0xF;
      v37 = *(a1 + 8);
      if (!v36)
      {
        goto LABEL_62;
      }

      v38 = (v35 >> 1) + 1;
      v39 = 2 * (v38 & 0xFFFFFFFFFFFFFFF0);
      v33 = (v33 + v39);
      v37 = (v7 + v39);
      v40 = (v7 + 16);
      v41 = (v7 + 16 - v12);
      v42 = v38 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v43 = *v41;
        *(v40 - 1) = *(v41 - 1);
        *v40 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 16;
      }

      while (v42);
      if (v38 != (v38 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_62:
        do
        {
          v44 = *v33++;
          *v37++ = v44;
        }

        while (v33 < v7);
      }
    }

    *(a1 + 8) = v37;
    if (v7 != v32)
    {
      v57 = __src;
      memmove(v32, __dst, v7 - v32);
      __src = v57;
    }

    v58 = v5;
    v59 = __src;
    goto LABEL_56;
  }

  v14 = __src + v12;
  v15 = *(a1 + 8);
  v16 = v15;
  if (__src + v12 != a4)
  {
    while (v16)
    {
      v17 = *v14;
      v14 += 2;
      *v16 = v17;
      v16 += 2;
      v15 += 2;
      if (v14 == a4)
      {
        goto LABEL_16;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_16:
  *(a1 + 8) = v15;
  if (v13 < 1)
  {
    return v5;
  }

  v18 = a5;
  v19 = &__dst[2 * a5];
  v20 = (v15 - 2 * a5);
  if (v20 >= v7)
  {
    v23 = __src;
    v24 = v15;
  }

  else
  {
    v21 = v20 + 1;
    if (v7 > (v20 + 1))
    {
      v21 = v7;
    }

    v22 = &v21[v18] + ~v15;
    v23 = __src;
    v24 = v15;
    if (v22 < 0x1E)
    {
      goto LABEL_63;
    }

    if (a5 <= 0xF)
    {
      goto LABEL_63;
    }

    v25 = (v22 >> 1) + 1;
    v26 = 2 * (v25 & 0xFFFFFFFFFFFFFFF0);
    v20 = (v20 + v26);
    v24 = (v15 + v26);
    v27 = (v15 + 16);
    v28 = (v15 + 16 - v18 * 2);
    v29 = v25 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v30 = *v28;
      *(v27 - 1) = *(v28 - 1);
      *v27 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 16;
    }

    while (v29);
    if (v25 != (v25 & 0xFFFFFFFFFFFFFFF0))
    {
LABEL_63:
      do
      {
        v31 = *v20++;
        *v24++ = v31;
      }

      while (v20 < v7);
    }
  }

  *(a1 + 8) = v24;
  if (v16 != v19)
  {
    memmove(&__dst[2 * a5], __dst, v15 - v19);
  }

  if (v7 == v5)
  {
    return v5;
  }

  v58 = v5;
  v59 = v23;
LABEL_56:
  memmove(v58, v59, v12);
  return v5;
}

void webrtc::AudioEncoderCopyRed::AudioEncoderCopyRed(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *a1 = &unk_28828D980;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_273B8E820;
  operator new[]();
}

void webrtc::AudioEncoderCopyRed::~AudioEncoderCopyRed(webrtc::AudioEncoderCopyRed *this)
{
  if (*(this + 9))
  {
    v2 = this + 56;
    v3 = *(this + 8);
    v4 = *(*(this + 7) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 9) = 0;
    if (v3 != this + 56)
    {
      do
      {
        v8 = *(v3 + 1);
        v9 = *(v3 + 10);
        *(v3 + 10) = 0;
        if (v9)
        {
          MEMORY[0x2743DA520](v9, 0x1000C8077774924);
        }

        v10 = *(v3 + 5);
        if (v10)
        {
          *(v3 + 6) = v10;
          operator delete(v10);
        }

        operator delete(v3);
        v3 = v8;
      }

      while (v8 != v2);
    }
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    MEMORY[0x2743DA520](v6, 0x1000C8077774924);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

{
  webrtc::AudioEncoderCopyRed::~AudioEncoderCopyRed(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::AudioEncoderCopyRed::EncodeImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, __int128 *a6@<X8>)
{
  v7 = a2;
  *(a1 + 16) = 0;
  v10 = (a1 + 16);
  v11 = *(a1 + 8);
  if (!a4)
  {
    a3 = 0;
  }

  result = webrtc::AudioEncoder::Encode(v11, a2, a3, a4, v10, a6);
  v17 = a6 + 3;
  if (*(a6 + 3) == *(a6 + 4))
  {
    v18 = *a6;
    if (*a6)
    {
      if (v18 < 0x400)
      {
        v21 = *(a1 + 64);
        if (v21 == (a1 + 56))
        {
          v23 = 1;
          v24 = *(a1 + 64);
        }

        else
        {
          v22 = *(a1 + 40) - v18;
          v23 = 1;
          v24 = *(a1 + 64);
          do
          {
            v25 = v24[2];
            v26 = v25 + 4;
            if (v25)
            {
              v27 = v22 >= v26;
            }

            else
            {
              v27 = 0;
            }

            if (!v27)
            {
              break;
            }

            if ((v7 - *(v24 + 6)) >> 14)
            {
              break;
            }

            v22 -= v26;
            v23 += 4;
            v24 = v24[1];
          }

          while (v24 != (a1 + 56));
        }

        v47 = v23;
        if (a5[1] < v23)
        {
          operator new[]();
        }

        *a5 = v23;
        v28 = 0;
        if (v24 != v21)
        {
          do
          {
            v24 = *v24;
            v32 = v24[8];
            if (v32)
            {
              v33 = *a5 + v32;
              if (a5[1] < v33)
              {
                operator new[]();
              }

              memcpy((a5[2] + *a5), v24[10], v32);
              *a5 = v33;
            }

            v31 = *(a6 + 2) - *(v24 + 6);
            *(a5[2] + v28) = *(v24 + 28) | 0x80;
            *(a5[2] + v28 + 1) = bswap32(*(v24 + 17) | (4 * v31)) >> 16;
            *(a5[2] + v28 + 3) = v24[2];
            v28 += 4;
            result = std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::push_back[abi:sn200100](v17, v24 + 1);
          }

          while (v24 != *(a1 + 64));
        }

        if (v47 >= 5)
        {
          result = std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::push_back[abi:sn200100](v17, a6);
        }

        v29 = *(a1 + 16);
        if (v29)
        {
          v30 = *a5 + v29;
          if (a5[1] < v30)
          {
            operator new[]();
          }

          result = memcpy((a5[2] + *a5), *(a1 + 32), v29);
          *a5 = v30;
        }

        *(a5[2] + v28) = *(a6 + 3);
        v35 = *(a1 + 56);
        v34 = *(a1 + 64);
        if (v35 != v34)
        {
          v36 = (a1 + 56);
          do
          {
            v38 = *v35;
            v39 = *(*v35 + 32);
            v35[1] = *(*v35 + 16);
            *(v35 + 4) = v39;
            if (v35 != v38)
            {
              result = std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::__assign_with_size[abi:sn200100]<webrtc::AudioEncoder::EncodedInfoLeaf*,webrtc::AudioEncoder::EncodedInfoLeaf*>(v35 + 5, *(v38 + 40), *(v38 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v38 + 48) - *(v38 + 40)) >> 3));
              v38 = *v35;
            }

            v37 = *v36;
            v40 = *(v38 + 80);
            v41 = *(v38 + 64);
            *(*v36 + 64) = 0;
            if (v41)
            {
              if (v37[9] < v41)
              {
                operator new[]();
              }

              result = memcpy(v37[10], v40, v41);
              v37[8] = v41;
              v37 = *v36;
            }

            v35 = *v37;
            v34 = *(a1 + 64);
            v36 = v37;
          }

          while (*v37 != v34);
        }

        if (v34 != a1 + 56)
        {
          v42 = *a6;
          *(v34 + 32) = *(a6 + 2);
          *(v34 + 16) = v42;
          if ((v34 + 16) != a6)
          {
            result = std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::__assign_with_size[abi:sn200100]<webrtc::AudioEncoder::EncodedInfoLeaf*,webrtc::AudioEncoder::EncodedInfoLeaf*>((v34 + 40), *(a6 + 3), *(a6 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 4) - *(a6 + 3)) >> 3));
          }

          v43 = *(a1 + 32);
          v44 = *(a1 + 16);
          *(v34 + 64) = 0;
          if (v44)
          {
            if (*(v34 + 72) < v44)
            {
              operator new[]();
            }

            result = memcpy(*(v34 + 80), v43, v44);
            *(v34 + 64) = v44;
          }
        }

        *(a6 + 3) = *(a1 + 48);
        *a6 = *a5;
      }

      else
      {
        v19 = *(a1 + 16);
        if (v19)
        {
          v20 = *a5 + v19;
          if (a5[1] < v20)
          {
            operator new[]();
          }

          result = memcpy((a5[2] + *a5), *(a1 + 32), v19);
          *a5 = v20;
        }
      }
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/red/audio_encoder_copy_red.cc", 115, "info.redundant.empty()", "\t", v13, v14, v15, v16, "Cannot use nested redundant encoders.");
    return std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::push_back[abi:sn200100](v45, v46);
  }

  return result;
}

void *std::vector<webrtc::AudioEncoder::EncodedInfoLeaf>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5)
    {
      if (v5 <= 0xAAAAAAAAAAAAAAALL)
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
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

uint64_t webrtc::AudioEncoderCopyRed::Reset(webrtc::AudioEncoderCopyRed *this)
{
  result = (*(**(this + 1) + 64))(*(this + 1));
  if (*(this + 9))
  {
    v3 = *(this + 8);
    v4 = *(*(this + 7) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 9) = 0;
    if (v3 != (this + 56))
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 10);
        *(v3 + 10) = 0;
        if (v7)
        {
          MEMORY[0x2743DA520](v7, 0x1000C8077774924);
        }

        v8 = *(v3 + 5);
        if (v8)
        {
          *(v3 + 6) = v8;
          operator delete(v8);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 56));
    }

    operator new[]();
  }

  return result;
}

uint64_t webrtc::AudioEncoderCopyRed::OnReceivedUplinkAllocation(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return (*(*v2 + 176))(v2, v5);
}

uint64_t webrtc::AudioEncoderG711::SdpToConfig(uint64_t this, const webrtc::SdpAudioFormat *a2)
{
  v2 = *(this + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(this + 8);
  }

  if (v2 != 4)
  {
    v8 = 0;
    v10 = 0;
    if (*(this + 24) == 8000)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

  v4 = *v3;
  if (v4 != 80)
  {
    if ((v4 - 65) < 0x1A)
    {
      LOBYTE(v4) = v4 + 32;
    }

    if (v4 != 112)
    {
      goto LABEL_33;
    }
  }

  v5 = v3[1];
  if (v5 != 67)
  {
    if ((v5 - 65) < 0x1A)
    {
      LOBYTE(v5) = v5 + 32;
    }

    if (v5 != 99)
    {
      goto LABEL_33;
    }
  }

  v6 = v3[2];
  if (v6 != 77)
  {
    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (v6 != 109)
    {
      goto LABEL_33;
    }
  }

  v7 = v3[3];
  if (v7 == 85)
  {
    goto LABEL_23;
  }

  if ((v7 - 65) < 0x1A)
  {
    LOBYTE(v7) = v7 + 32;
  }

  if (v7 == 117)
  {
LABEL_23:
    v8 = 1;
    v9 = *v3;
    if (v9 == 80)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_33:
    v8 = 0;
    v9 = *v3;
    if (v9 == 80)
    {
      goto LABEL_37;
    }
  }

  if ((v9 - 65) < 0x1A)
  {
    LOBYTE(v9) = v9 + 32;
  }

  if (v9 != 112)
  {
LABEL_51:
    v10 = 0;
    if (*(this + 24) == 8000)
    {
      goto LABEL_26;
    }

LABEL_52:
    v11 = 0;
    v13 = 0;
    return v13 | (v11 << 32);
  }

LABEL_37:
  v17 = v3[1];
  if (v17 != 67)
  {
    if ((v17 - 65) < 0x1A)
    {
      LOBYTE(v17) = v17 + 32;
    }

    if (v17 != 99)
    {
      goto LABEL_51;
    }
  }

  v18 = v3[2];
  if (v18 != 77)
  {
    if ((v18 - 65) < 0x1A)
    {
      LOBYTE(v18) = v18 + 32;
    }

    if (v18 != 109)
    {
      goto LABEL_51;
    }
  }

  v19 = v3[3];
  if (v19 != 65)
  {
    if ((v19 - 65) < 0x1A)
    {
      LOBYTE(v19) = v19 + 32;
    }

    if (v19 != 97)
    {
      goto LABEL_51;
    }
  }

  v10 = 1;
  if (*(this + 24) != 8000)
  {
    goto LABEL_52;
  }

LABEL_26:
  v11 = 0;
  if ((v8 | v10) != 1)
  {
    v13 = 0;
    return v13 | (v11 << 32);
  }

  v12 = *(this + 32);
  v13 = 0;
  if (!v12)
  {
    return v13 | (v11 << 32);
  }

  v28 = 5;
  if (__p > "ptime" || __p + 5 <= "ptime")
  {
    strcpy(__p, "ptime");
    v14 = this;
    v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, __p);
    v16 = v15;
    if (v28 < 0)
    {
      operator delete(__p[0]);
      if ((v14 + 48) == v16)
      {
        goto LABEL_69;
      }
    }

    else if ((v14 + 48) == v15)
    {
      goto LABEL_69;
    }

    v20 = *(v16 + 79);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = v16[7];
      v20 = v16[8];
    }

    else
    {
      v21 = (v16 + 7);
    }

    v22 = webrtc::string_to_number_internal::ParseSigned(v21, v20, 0xAuLL);
    if ((v23 & ((v22 + 0x80000000) >> 32 == 0)) != 0)
    {
      v24 = v22 | 0x100000000;
    }

    else
    {
      v24 = 0;
    }

    if (BYTE4(v24) && v24 >= 1)
    {
      v25 = 10 * (v24 / 0xA);
      if (v25 >= 0x3C)
      {
        v25 = 60;
      }

      if (v25 <= 0xA)
      {
        v25 = 10;
      }

      HIDWORD(v26) = -858993459 * v25;
      LODWORD(v26) = -858993459 * v25;
      if ((v26 >> 1) > 0x19999999)
      {
        v13 = 0;
LABEL_72:
        v11 = v12;
        return v13 | (v11 << 32);
      }
    }

LABEL_69:
    if ((v12 - 1) < 0x18)
    {
      v13 = v8 ^ 1u;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_72;
  }

  __break(1u);
  return this;
}

void webrtc::AudioEncoderG711::AppendSupportedEncoders(void *a1)
{
  HIBYTE(v15) = 4;
  if (__p <= "PCMU" && __p + 4 > "PCMU")
  {
    goto LABEL_22;
  }

  strcpy(__p, "PCMU");
  LODWORD(v16) = 8000;
  v18 = 0;
  v19 = 0;
  *(&v16 + 1) = 1;
  v17 = &v18;
  LODWORD(v20) = 8000;
  *(&v20 + 1) = 1;
  *&v21 = 0xFA000000FA00;
  DWORD2(v21) = 64000;
  WORD6(v21) = 1;
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = *__p;
  *(v2 + 16) = v15;
  *v2 = v3;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  *(v2 + 24) = v16;
  v4 = v19;
  *(v2 + 40) = v17;
  v5 = v18;
  *(v2 + 48) = v18;
  *(v2 + 56) = v4;
  v6 = v2 + 48;
  if (v4)
  {
    *(v5 + 16) = v6;
    v5 = 0;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    *(v2 + 40) = v6;
  }

  v12 = v21;
  *(v2 + 64) = v20;
  *(v2 + 80) = v12;
  a1[1] = v2 + 96;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v17, v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v15) = 4;
  if (__p <= "PCMA" && __p + 4 > "PCMA")
  {
    goto LABEL_22;
  }

  strcpy(__p, "PCMA");
  LODWORD(v16) = 8000;
  v18 = 0;
  v19 = 0;
  *(&v16 + 1) = 1;
  v17 = &v18;
  LODWORD(v20) = 8000;
  *(&v20 + 1) = 1;
  *&v21 = 0xFA000000FA00;
  DWORD2(v21) = 64000;
  WORD6(v21) = 1;
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (v7)
  {
    v8 = *__p;
    *(v7 + 16) = v15;
    *v7 = v8;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    *(v7 + 24) = v16;
    v9 = v19;
    *(v7 + 40) = v17;
    v10 = v18;
    *(v7 + 48) = v18;
    *(v7 + 56) = v9;
    v11 = v7 + 48;
    if (v9)
    {
      *(v10 + 16) = v11;
      v10 = 0;
      v17 = &v18;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      *(v7 + 40) = v11;
    }

    v13 = v21;
    *(v7 + 64) = v20;
    *(v7 + 80) = v13;
    a1[1] = v7 + 96;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v17, v10);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }
}

int *webrtc::AudioEncoderG711::MakeAudioEncoder@<X0>(int *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7 = *result;
  if (*result <= 1)
  {
    v8 = result[2];
    if (v8 >= 1 && v8 % 0xAu == 0)
    {
      v10 = result[1];
      if ((v10 - 1) < 0x18)
      {
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = v6;
        if (v7)
        {
          v12 = v10;
          v11 = v8;
          v13 = a2;
          operator new();
        }

        v12 = v10;
        v11 = v8;
        v13 = a2;
        operator new();
      }
    }
  }

  *a3 = 0;
  return result;
}

void webrtc::AudioEncoderG722Impl::AudioEncoderG722Impl(uint64_t a1, int *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = &unk_28828DA80;
  *(a1 + 8) = v4;
  *(a1 + 16) = a3;
  *(a1 + 24) = v3 / 10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  is_mul_ok(v4, 0x28uLL);
  operator new[]();
}

void webrtc::AudioEncoderG722Impl::Reset(webrtc::AudioEncoderG722Impl *this)
{
  *(this + 4) = 0;
  if (*(this + 1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0uLL;
    while (1)
    {
      v5 = *(this + 6);
      if (*(v5 - 8) <= v3)
      {
        break;
      }

      v6 = *(v5 + v2);
      if (!v6)
      {
        v6 = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
        v4 = 0uLL;
        if (!v6)
        {
          v7 = *(this + 6);
          if (*(v7 - 8) > v3)
          {
            WebRtcG722_EncoderInit(*(v7 + v2));
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g722/audio_encoder_g722.cc", 86, "0 == WebRtcG722_EncoderInit(encoders_[i].encoder)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v8, v9, v10, v11, 0);
            return;
          }

          break;
        }
      }

      v6[60] = 0;
      *(v6 + 28) = v4;
      *(v6 + 29) = v4;
      *(v6 + 26) = v4;
      *(v6 + 27) = v4;
      *(v6 + 24) = v4;
      *(v6 + 25) = v4;
      *(v6 + 22) = v4;
      *(v6 + 23) = v4;
      *(v6 + 20) = v4;
      *(v6 + 21) = v4;
      *(v6 + 18) = v4;
      *(v6 + 19) = v4;
      *(v6 + 16) = v4;
      *(v6 + 17) = v4;
      *(v6 + 14) = v4;
      *(v6 + 15) = v4;
      *(v6 + 12) = v4;
      *(v6 + 13) = v4;
      *(v6 + 10) = v4;
      *(v6 + 11) = v4;
      *(v6 + 8) = v4;
      *(v6 + 9) = v4;
      *(v6 + 6) = v4;
      *(v6 + 7) = v4;
      *(v6 + 4) = v4;
      *(v6 + 5) = v4;
      *(v6 + 2) = v4;
      *(v6 + 3) = v4;
      *v6 = v4;
      *(v6 + 1) = v4;
      *(v6 + 3) = 8;
      *(v6 + 1) = 0;
      *(v6 + 72) = 32;
      *(v6 + 117) = 8;
      ++v3;
      v2 += 40;
      if (v3 >= *(this + 1))
      {
        return;
      }
    }

    __break(1u);
  }
}

void webrtc::AudioEncoderG722Impl::~AudioEncoderG722Impl(webrtc::AudioEncoderG722Impl *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + 40 * v5 - 8);
      v7 = -40 * v5;
      do
      {
        free(*(v6 - 4));
        v8 = *v6;
        *v6 = 0;
        if (v8)
        {
          MEMORY[0x2743DA520](v8, 0x1000C8077774924);
        }

        v9 = *(v6 - 3);
        *(v6 - 3) = 0;
        if (v9)
        {
          MEMORY[0x2743DA520](v9, 0x1000C80BDFB0063);
        }

        v6 -= 5;
        v7 += 40;
      }

      while (v7);
    }

    MEMORY[0x2743DA520](v4, 0x1030C80A4690949);
  }
}

{
  webrtc::AudioEncoderG722Impl::~AudioEncoderG722Impl(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioEncoderG722Impl::GetFrameLengthRange@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = 10000 * *(this + 24);
  *a2 = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  return this;
}

uint64_t webrtc::AudioEncoderG722Impl::EncodeImpl@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, int8x16_t a11@<Q2>)
{
  v12 = result;
  v14 = *(result + 32);
  if (v14)
  {
    v15 = *(result + 8);
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_5:
    v16 = 0;
    v17 = *(result + 48);
    v18 = *(v17 - 8);
    v19 = (v17 + 8);
LABEL_6:
    v20 = v18;
    v21 = v15;
    v22 = v19;
    result = a3;
    while (v20)
    {
      v24 = *result;
      result += 2;
      v23 = v24;
      v25 = *v22;
      v22 += 5;
      *(v25 + 320 * v14 + 2 * v16) = v23;
      --v20;
      if (!--v21)
      {
        ++v16;
        a3 += 2 * v15;
        if (v16 != 160)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }
    }

    goto LABEL_38;
  }

  *(result + 40) = a2;
  v15 = *(result + 8);
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_10:
  v26 = v14 + 1;
  *(v12 + 32) = v26;
  v27 = *(v12 + 24);
  if (v26 < v27)
  {
    *a8 = 0;
    *(a8 + 8) = 0;
    *(a8 + 16) = 256;
    *(a8 + 20) = 0;
    *(a8 + 36) = 0;
    *(a8 + 28) = 0;
    *(a8 + 44) = 0;
    return result;
  }

  if (v26 != v27)
  {
    goto LABEL_40;
  }

  *(v12 + 32) = 0;
  v28 = 160 * v26;
  if (v15)
  {
    v29 = 0;
    v30 = 0;
    v31 = v28 >> 1;
    while (1)
    {
      v32 = *(v12 + 48);
      if (*(v32 - 8) <= v30)
      {
        break;
      }

      result = WebRtc_g722_encode(*(v32 + v29), *(v32 + v29 + 32), *(v32 + v29 + 8), v28, a9, a10, a11);
      if (result != v31)
      {
        goto LABEL_39;
      }

      ++v30;
      v15 = *(v12 + 8);
      v29 += 40;
      if (v30 >= v15)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v31 = v28 >> 1;
LABEL_20:
    v33 = v15 * v31;
    *(a8 + 16) = 256;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 24) = 0;
    v34 = *a4;
    v35 = *a4 + v15 * v31;
    if (a4[1] < v35)
    {
      operator new[]();
    }

    *a4 = v35;
    v36 = a4[2] + v34;
    if (!v33)
    {
      v36 = 0;
    }

    if (!v28)
    {
LABEL_37:
      *a4 = v35;
      *a8 = v33;
      v46 = *(v12 + 16);
      *(a8 + 8) = *(v12 + 40);
      *(a8 + 12) = v46;
      *(a8 + 20) = 5;
      return result;
    }

    v37 = 0;
    v38 = *(v12 + 8);
    if (v31 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v31;
    }

    while (!v38)
    {
LABEL_28:
      if (++v37 == v39)
      {
        goto LABEL_37;
      }
    }

    v40 = 0;
    v41 = 32;
    while (1)
    {
      v42 = *(v12 + 48);
      if (*(v42 - 8) <= v40)
      {
        break;
      }

      v43 = *(*(v42 + v41) + v37);
      *(*(v12 + 72) + v40) = v43 >> 4;
      *(*(v12 + 72) + *(v12 + 8) + v40++) = v43 & 0xF;
      v38 = *(v12 + 8);
      v41 += 40;
      if (v40 >= v38)
      {
        if (v38)
        {
          v44 = 0;
          for (i = 0; i < v38; ++i)
          {
            *(v36 + v37 * v38 + i) = *(*(v12 + 72) + v44 + 1) | (16 * *(*(v12 + 72) + v44));
            v38 = *(v12 + 8);
            v44 += 2;
          }
        }

        goto LABEL_28;
      }
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g722/audio_encoder_g722.cc", 121, "bytes_encoded == samples_per_channel / 2", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a4, a5, a6, a7, result);
LABEL_40:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g722/audio_encoder_g722.cc", 114, "num_10ms_frames_buffered_ == num_10ms_frames_per_packet_", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a4, a5, a6, a7, v26);
  return webrtc::AudioEncoderG722::SdpToConfig(v47, v48);
}

uint64_t webrtc::AudioEncoderG722::SdpToConfig(webrtc::AudioEncoderG722 *this, const webrtc::SdpAudioFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = *this;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(this + 1);
  }

  if (v8 != 4)
  {
    return 0;
  }

  v10 = *v9;
  if (v10 != 103)
  {
    if ((v10 - 65) < 0x1A)
    {
      LOBYTE(v10) = v10 + 32;
    }

    if (v10 != 103)
    {
      return 0;
    }
  }

  v11 = v9[1];
  if (v11 != 55)
  {
    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (v11 != 55)
    {
      return 0;
    }
  }

  v12 = v9[2];
  if (v12 != 50)
  {
    if ((v12 - 65) < 0x1A)
    {
      LOBYTE(v12) = v12 + 32;
    }

    if (v12 != 50)
    {
      return 0;
    }
  }

  v13 = v9[3];
  if (v13 == 50)
  {
    if (*(this + 6) != 8000)
    {
      return 0;
    }
  }

  else
  {
    if ((v13 - 65) < 0x1A)
    {
      LOBYTE(v13) = v13 + 32;
    }

    if (v13 != 50 || *(this + 6) != 8000)
    {
      return 0;
    }
  }

  v16 = *(this + 4);
  if (v16 >> 31)
  {
    goto LABEL_54;
  }

  v29 = 5;
  if (__p <= "ptime" && __p + 5 > "ptime")
  {
    __break(1u);
LABEL_54:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v27);
    return webrtc::AudioEncoderG722::AppendSupportedEncoders();
  }

  strcpy(__p, "ptime");
  v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, __p);
  if (v29 < 0)
  {
    v19 = v18;
    operator delete(__p[0]);
    v18 = v19;
  }

  if ((this + 48) == v18 || ((v20 = *(v18 + 79), (v20 & 0x8000000000000000) != 0) ? (v21 = v18[7], v20 = v18[8]) : (v21 = (v18 + 7)), (v22 = webrtc::string_to_number_internal::ParseSigned(v21, v20, 0xAuLL), (v23 & ((v22 + 0x80000000) >> 32 == 0)) == 0) ? (v24 = 0) : (v24 = v22 | 0x100000000), !BYTE4(v24) || v24 < 1))
  {
    LODWORD(v24) = 20;
  }

  else
  {
    LODWORD(v24) = 10 * (v24 / 0xA);
    if (v24 >= 0x3C)
    {
      LODWORD(v24) = 60;
    }

    if (v24 <= 0xA)
    {
      LODWORD(v24) = 10;
    }

    HIDWORD(v25) = -858993459 * v24;
    LODWORD(v25) = -858993459 * v24;
    if ((v25 >> 1) > 0x19999999)
    {
      return 0;
    }
  }

  v26 = v16 << 32;
  v24 = v24;
  if ((v16 - 1) > 0x17)
  {
    v24 = 0;
    v26 = 0;
  }

  return v26 | v24;
}

void webrtc::AudioEncoderG722::AppendSupportedEncoders(void *a1, const webrtc::SdpAudioFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v31.__r_.__value_.__s + 23) = 4;
  if (&v31 <= "G722" && v31.__r_.__value_.__r.__words + 4 > "G722")
  {
    goto LABEL_26;
  }

  strcpy(&v31, "G722");
  LODWORD(v32) = 8000;
  v34[0] = 0;
  v34[1] = 0;
  *(&v32 + 1) = 1;
  v33 = v34;
  v9 = webrtc::AudioEncoderG722::SdpToConfig(&v31, a2, a3, a4, a5, a6, a7, a8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

  v11 = HIDWORD(v9);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v9;
    std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    v9 = v12;
  }

  else
  {
    __p = v31;
  }

  v13 = v9 >> 32;
  v25 = v32;
  v27 = 0;
  v28 = 0;
  v26 = &v27;
  v14 = v33;
  if (v33 != v34)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v26, &v27, v14 + 4);
      v20 = v14[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v14[2];
          v22 = *v21 == v14;
          v14 = v21;
        }

        while (!v22);
      }

      v14 = v21;
    }

    while (v21 != v34);
  }

  LODWORD(v29) = 16000;
  *(&v29 + 1) = v13;
  LODWORD(v30) = 64000 * v11;
  DWORD1(v30) = 64000 * v11;
  DWORD2(v30) = 64000 * v11;
  WORD6(v30) = 1;
  v15 = a1[1];
  if (v15 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (v15)
  {
    v16 = *&__p.__r_.__value_.__l.__data_;
    *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v15 = v16;
    memset(&__p, 0, sizeof(__p));
    *(v15 + 24) = v25;
    v17 = v28;
    *(v15 + 40) = v26;
    v18 = v27;
    *(v15 + 48) = v27;
    *(v15 + 56) = v17;
    v19 = v15 + 48;
    if (v17)
    {
      *(v18 + 16) = v19;
      v18 = 0;
      v26 = &v27;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      *(v15 + 40) = v19;
    }

    v23 = v30;
    *(v15 + 64) = v29;
    *(v15 + 80) = v23;
    a1[1] = v15 + 96;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v26, v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v33, v34[0]);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_26:
    __break(1u);
  }
}

uint64_t webrtc::AudioEncoderL16::SdpToConfig(uint64_t this, const webrtc::SdpAudioFormat *a2)
{
  v2 = *(this + 32);
  if (v2 >> 31)
  {
    v2 = 0;
    v9 = 0;
    v10 = 0;
    return v10 | v9 | (v2 << 32);
  }

  v3 = this;
  v4 = *(this + 24);
  v21 = 5;
  if (__p > "ptime" || __p + 5 <= "ptime")
  {
    strcpy(__p, "ptime");
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, __p);
    v6 = v5;
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v3 + 48) != v6)
      {
LABEL_6:
        v7 = *(v6 + 79);
        if ((v7 & 0x8000000000000000) != 0)
        {
          v8 = v6[7];
          v7 = v6[8];
        }

        else
        {
          v8 = (v6 + 7);
        }

        LOBYTE(v6) = 10;
        v11 = webrtc::string_to_number_internal::ParseSigned(v8, v7, 0xAuLL);
        if ((v12 & ((v11 + 0x80000000) >> 32 == 0)) != 0)
        {
          v13 = v11 | 0x100000000;
        }

        else
        {
          v13 = 0;
        }

        if (BYTE4(v13))
        {
          LOBYTE(v6) = 10;
          if (v13 >= 1)
          {
            v14 = 10 * (v13 / 0xA);
            if (v14 >= 0x3C)
            {
              v14 = 60;
            }

            if (v14 <= 0xA)
            {
              LOBYTE(v6) = 10;
            }

            else
            {
              LOBYTE(v6) = v14;
            }
          }
        }

LABEL_22:
        v15 = *(v3 + 23);
        if ((v15 & 0x80u) == 0)
        {
          v16 = v3;
        }

        else
        {
          v16 = *v3;
        }

        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v3 + 8);
        }

        if (v15 != 3)
        {
          goto LABEL_44;
        }

        v17 = *v16;
        if (v17 != 76)
        {
          if ((v17 - 65) < 0x1A)
          {
            LOBYTE(v17) = v17 + 32;
          }

          if (v17 != 108)
          {
            goto LABEL_44;
          }
        }

        v18 = v16[1];
        if (v18 != 49)
        {
          if ((v18 - 65) < 0x1A)
          {
            LOBYTE(v18) = v18 + 32;
          }

          if (v18 != 49)
          {
            goto LABEL_44;
          }
        }

        v19 = v16[2];
        if (v19 == 54)
        {
          goto LABEL_40;
        }

        if ((v19 - 65) < 0x1A)
        {
          LOBYTE(v19) = v19 + 32;
        }

        if (v19 == 54)
        {
LABEL_40:
          v9 = 0;
          if (v4 > 31999)
          {
            if (v4 != 48000 && v4 != 32000)
            {
              goto LABEL_51;
            }
          }

          else if (v4 != 8000 && v4 != 16000)
          {
            goto LABEL_51;
          }

          v9 = 0;
          if ((v2 - 1) > 0x17 || v6 % 0xAu)
          {
LABEL_51:
            v10 = 0;
            return v10 | v9 | (v2 << 32);
          }

          v10 = v4 & 0xFF00;
          v9 = v4;
        }

        else
        {
LABEL_44:
          v9 = 0;
          v10 = 0;
        }

        return v10 | v9 | (v2 << 32);
      }
    }

    else if ((v3 + 48) != v5)
    {
      goto LABEL_6;
    }

    LOBYTE(v6) = 10;
    goto LABEL_22;
  }

  __break(1u);
  return this;
}

uint64_t webrtc::AudioEncoderMultiChannelOpusConfig::IsOk(webrtc::AudioEncoderMultiChannelOpusConfig *this)
{
  if (*this < 1 || *this % 0xAu != 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (v3 > 0x18)
  {
    return 0;
  }

  if ((*(this + 5) - 510001) < 0xFFF84F3F)
  {
    return 0;
  }

  if (*(this + 14) > 0xAu)
  {
    return 0;
  }

  v4 = *(this + 15);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *(this + 16);
  if (v5 > v4)
  {
    return 0;
  }

  v7 = *(this + 9);
  v6 = *(this + 10);
  if (v6 - v7 != v3)
  {
    return 0;
  }

  v8 = v5 + v4;
  if (v7 != v6)
  {
    do
    {
      v9 = *v7;
      if (v9 != 255 && v8 <= v9)
      {
        return 0;
      }
    }

    while (++v7 != v6);
  }

  v26 = -1;
  result = std::vector<int>::vector[abi:sn200100](&__p, v8);
  v12 = *(this + 1);
  if (v12)
  {
    v13 = 0;
    v14 = *(this + 9);
    v15 = *(this + 10) - v14;
    v16 = __p;
    v17 = (v25 - __p) >> 2;
    while (v15 != v13)
    {
      v18 = *(v14 + v13);
      if (v18 != 255)
      {
        if (v17 <= v18)
        {
          goto LABEL_42;
        }

        if (v16[v18] != -1)
        {
LABEL_28:
          result = 0;
          goto LABEL_40;
        }

        v16[v18] = v13;
      }

      if (v12 == ++v13)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_42;
  }

LABEL_29:
  if (v8 >= 1)
  {
    v19 = __p;
    v20 = (v25 - __p) >> 2;
    v21 = v8;
    while (v20)
    {
      if (*v19 == -1)
      {
        goto LABEL_28;
      }

      ++v19;
      --v20;
      if (!--v21)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    __break(1u);
    return result;
  }

LABEL_34:
  result = v8 < 255 && v12 < 0x100;
LABEL_40:
  if (__p)
  {
    v25 = __p;
    v23 = result;
    operator delete(__p);
    return v23;
  }

  return result;
}

char *std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
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

    if (!(a4 >> 62))
    {
      v10 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 2)
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

char *std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (v7 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a4)
  {
    v14 = a3 - __src;
    if (a3 != __src)
    {
      v15 = result;
      memmove(result, __src, v14);
      result = v15;
    }

    a1[1] = &result[v14];
  }

  else
  {
    if (v10 != result)
    {
      result = memmove(result, __src, v10 - result);
      v10 = a1[1];
    }

    v12 = &__src[v11];
    v13 = a3 - &__src[v11];
    if (v13)
    {
      result = memmove(v10, v12, v13);
    }

    a1[1] = &v10[v13];
  }

  return result;
}

void *std::vector<int>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::AudioEncoderMultiChannelOpusImpl::RecreateEncoderInstance(webrtc::AudioEncoderMultiChannelOpusImpl *this, const webrtc::AudioEncoderMultiChannelOpusConfig *a2)
{
  if (!webrtc::AudioEncoderMultiChannelOpusConfig::IsOk(a2))
  {
    return;
  }

  v8 = *a2;
  *(this + 24) = *(a2 + 1);
  *(this + 8) = v8;
  if ((this + 8) == a2)
  {
    v12 = *(a2 + 7);
    *(this + 18) = *(a2 + 16);
    *(this + 8) = v12;
    v10 = (this + 136);
    v11 = *(this + 17);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(this + 5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    v9 = *(a2 + 7);
    *(this + 18) = *(a2 + 16);
    *(this + 8) = v9;
    std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>(this + 10, *(a2 + 9), *(a2 + 10), *(a2 + 10) - *(a2 + 9));
    v10 = (this + 136);
    v11 = *(this + 17);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v13 = *v11;
  if (!*v11)
  {
    v13 = *(v11 + 8);
  }

  free(v13);
  free(v11);
LABEL_9:
  v14 = *(this + 14);
  *(this + 15) = v14;
  v15 = *(this + 2);
  if (v15 % 10)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v4, v5, v6, v7, (v15 % 10));
LABEL_95:
    WebRtcOpus_MultistreamEncoderCreate(v10, *(a2 + 1), *(a2 + 4) != 0, *(a2 + 15), *(a2 + 16), *(a2 + 9));
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 207, "0 == WebRtcOpus_MultistreamEncoderCreate( &inst_, config.num_channels, config.application == AudioEncoderMultiChannelOpusConfig::ApplicationMode::kVoip ? 0 : 1, config.num_streams, config.coupled_streams, config.channel_mapping.data())", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v90, v91, v92, v93, 0);
    goto LABEL_96;
  }

  v16 = 480 * v15 / 10 * *(this + 2);
  if (v16 > (*(this + 16) - v14) >> 1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_102:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (WebRtcOpus_MultistreamEncoderCreate(v10, *(a2 + 1), *(a2 + 4) != 0, *(a2 + 15), *(a2 + 16), *(a2 + 9)))
  {
    goto LABEL_95;
  }

  v11 = *(a2 + 5);
  v23 = *v10;
  if (!*v10)
  {
LABEL_96:
    v43 = 0;
    goto LABEL_97;
  }

  if (*v23)
  {
    if (!opus_encoder_ctl(*v23, 4002, v17, v18, v19, v20, v21, v22, *(a2 + 5)))
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  if (opus_multistream_encoder_ctl(v23[1], 4002, v17, v18, v19, v20, v21, v22, *(a2 + 5)))
  {
LABEL_38:
    v43 = *v10;
LABEL_97:
    WebRtcOpus_SetBitRate(v43, v11, v17, v18, v19, v20, v21, v22);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 209, "0 == WebRtcOpus_SetBitRate(inst_, bitrate)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v94, v95, v96, v97, 0);
    goto LABEL_98;
  }

LABEL_17:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
  }

  v31 = *v10;
  if (*(a2 + 24) != 1)
  {
    if (!v31)
    {
LABEL_105:
      v84 = 0;
      goto LABEL_106;
    }

    if (*v31)
    {
      if (!opus_encoder_ctl(*v31, 4012, v25, v26, v27, v28, v29, v30, 0))
      {
        goto LABEL_28;
      }
    }

    else if (!opus_multistream_encoder_ctl(v31[1], 4012, v25, v26, v27, v28, v29, v30, 0))
    {
LABEL_28:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v84 = *v10;
LABEL_106:
    WebRtcOpus_DisableFec(v84, v24, v25, v26, v27, v28, v29, v30);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 215, "0 == WebRtcOpus_DisableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v110, v111, v112, v113, 0);
    goto LABEL_107;
  }

  if (!v31)
  {
    v83 = 0;
    goto LABEL_104;
  }

  if (*v31)
  {
    if (!opus_encoder_ctl(*v31, 4012, v25, v26, v27, v28, v29, v30, 1))
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

  if (opus_multistream_encoder_ctl(v31[1], 4012, v25, v26, v27, v28, v29, v30, 1))
  {
LABEL_77:
    v83 = *v10;
LABEL_104:
    WebRtcOpus_EnableFec(v83, v24, v25, v26, v27, v28, v29, v30);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 212, "0 == WebRtcOpus_EnableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v106, v107, v108, v109, 0);
    goto LABEL_105;
  }

LABEL_23:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    goto LABEL_30;
  }

LABEL_29:
  webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
LABEL_30:
  v39 = *v10;
  v40 = *(a2 + 7);
  if (!*v10)
  {
LABEL_98:
    v89 = 0;
    goto LABEL_99;
  }

  if (v40 >= 8001)
  {
    if (v40 >= 0x2EE1)
    {
      if (v40 < 0x3E81)
      {
        v41 = 1103;
        v42 = *v39;
        if (!*v39)
        {
          goto LABEL_92;
        }

        goto LABEL_41;
      }

      if (v40 < 0x5DC1)
      {
        v41 = 1104;
      }

      else
      {
        v41 = 1105;
      }

      v42 = *v39;
      if (*v39)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v41 = 1102;
      v42 = *v39;
      if (*v39)
      {
        goto LABEL_41;
      }
    }

LABEL_92:
    if (opus_multistream_encoder_ctl(v39[1], 4004, v33, v34, v35, v36, v37, v38, v41))
    {
      goto LABEL_93;
    }

    goto LABEL_42;
  }

  v41 = 1101;
  v42 = *v39;
  if (!*v39)
  {
    goto LABEL_92;
  }

LABEL_41:
  if (opus_encoder_ctl(v42, 4004, v33, v34, v35, v36, v37, v38, v41))
  {
LABEL_93:
    v89 = *v10;
    v40 = *(a2 + 7);
LABEL_99:
    WebRtcOpus_SetMaxPlaybackRate(v89, v40, v33, v34, v35, v36, v37, v38);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 219, "0 == WebRtcOpus_SetMaxPlaybackRate(inst_, config.max_playback_rate_hz)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v98, v99, v100, v101, 0);
LABEL_100:
    v82 = 0;
    goto LABEL_101;
  }

LABEL_42:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
  }

  v51 = *v10;
  if (!*v10)
  {
    goto LABEL_100;
  }

  if (*v51)
  {
    if (!opus_encoder_ctl(*v51, 4010, v45, v46, v47, v48, v49, v50, 5))
    {
      goto LABEL_47;
    }

LABEL_75:
    v82 = *v10;
LABEL_101:
    WebRtcOpus_SetComplexity(v82, 5, v45, v46, v47, v48, v49, v50);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 225, "0 == WebRtcOpus_SetComplexity(inst_, AudioEncoderOpusConfig().complexity)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v102, v103, v104, v105, 0);
    goto LABEL_102;
  }

  if (opus_multistream_encoder_ctl(v51[1], 4010, v45, v46, v47, v48, v49, v50, 5))
  {
    goto LABEL_75;
  }

LABEL_47:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
  }

  v59 = *v10;
  if (*(a2 + 26) != 1)
  {
    if (!v59)
    {
LABEL_109:
      v86 = 0;
      goto LABEL_110;
    }

    if (*v59)
    {
      if (!opus_encoder_ctl(*v59, 4016, v53, v54, v55, v56, v57, v58, 0))
      {
        goto LABEL_58;
      }
    }

    else if (!opus_multistream_encoder_ctl(v59[1], 4016, v53, v54, v55, v56, v57, v58, 0))
    {
LABEL_58:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v86 = *v10;
LABEL_110:
    WebRtcOpus_DisableDtx(v86, v52, v53, v54, v55, v56, v57, v58);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 233, "0 == WebRtcOpus_DisableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v118, v119, v120, v121, 0);
    goto LABEL_111;
  }

  if (!v59)
  {
LABEL_107:
    v85 = 0;
    goto LABEL_108;
  }

  if (*v59)
  {
    if (!opus_encoder_ctl(*v59, 4016, v53, v54, v55, v56, v57, v58, 1))
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

  if (opus_multistream_encoder_ctl(v59[1], 4016, v53, v54, v55, v56, v57, v58, 1))
  {
LABEL_81:
    v85 = *v10;
LABEL_108:
    WebRtcOpus_EnableDtx(v85, v52, v53, v54, v55, v56, v57, v58);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 230, "0 == WebRtcOpus_EnableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v114, v115, v116, v117, 0);
    goto LABEL_109;
  }

LABEL_53:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    goto LABEL_60;
  }

LABEL_59:
  webrtc::webrtc_logging_impl::Log("\r\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
LABEL_60:
  v67 = *v10;
  if (*(a2 + 25) != 1)
  {
    if (!v67)
    {
LABEL_113:
      v88 = 0;
      goto LABEL_114;
    }

    if (*v67)
    {
      if (!opus_encoder_ctl(*v67, 4006, v61, v62, v63, v64, v65, v66, 1))
      {
        goto LABEL_69;
      }
    }

    else if (!opus_multistream_encoder_ctl(v67[1], 4006, v61, v62, v63, v64, v65, v66, 1))
    {
LABEL_69:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v88 = *v10;
LABEL_114:
    WebRtcOpus_DisableCbr(v88, v60, v61, v62, v63, v64, v65, v66);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 241, "0 == WebRtcOpus_DisableCbr(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v126, v127, v128, v129, 0);
    webrtc::AudioEncoderMultiChannelOpusImpl::~AudioEncoderMultiChannelOpusImpl(v130);
    return;
  }

  if (!v67)
  {
LABEL_111:
    v87 = 0;
    goto LABEL_112;
  }

  if (*v67)
  {
    if (!opus_encoder_ctl(*v67, 4006, v61, v62, v63, v64, v65, v66, 0))
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

  if (opus_multistream_encoder_ctl(v67[1], 4006, v61, v62, v63, v64, v65, v66, 0))
  {
LABEL_85:
    v87 = *v10;
LABEL_112:
    WebRtcOpus_EnableCbr(v87, v60, v61, v62, v63, v64, v65, v66);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 238, "0 == WebRtcOpus_EnableCbr(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v122, v123, v124, v125, 0);
    goto LABEL_113;
  }

LABEL_64:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    goto LABEL_71;
  }

LABEL_70:
  webrtc::webrtc_logging_impl::Log("\r\t", v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
LABEL_71:
  *(this + 19) = *(this + 2);
  *(this + 40) = *(this + 2);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v75, v76, v77, v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
  }
}

void webrtc::AudioEncoderMultiChannelOpusImpl::~AudioEncoderMultiChannelOpusImpl(webrtc::AudioEncoderMultiChannelOpusImpl *this)
{
  v1 = *(this + 17);
  if (v1)
  {
    v3 = *v1;
    if (!*v1)
    {
      v3 = v1[1];
    }

    free(v3);
    free(v1);
    v4 = *(this + 14);
    if (v4)
    {
      *(this + 15) = v4;
      operator delete(v4);
    }

    v5 = *(this + 10);
    if (v5)
    {
      *(this + 11) = v5;
      operator delete(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      *(this + 6) = v6;
      operator delete(v6);
    }
  }

  else
  {
    WebRtcOpus_EncoderFree(0);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 164, "0 == WebRtcOpus_EncoderFree(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v7, v8, v9, v10, 0);
    webrtc::AudioEncoderMultiChannelOpusImpl::~AudioEncoderMultiChannelOpusImpl(v11);
  }
}

{
  v1 = *(this + 17);
  if (v1)
  {
    v3 = *v1;
    if (!*v1)
    {
      v3 = v1[1];
    }

    free(v3);
    free(v1);
    v4 = *(this + 14);
    if (v4)
    {
      *(this + 15) = v4;
      operator delete(v4);
    }

    v5 = *(this + 10);
    if (v5)
    {
      *(this + 11) = v5;
      operator delete(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      *(this + 6) = v6;
      operator delete(v6);
    }

    JUMPOUT(0x2743DA540);
  }

  WebRtcOpus_EncoderFree(0);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 164, "0 == WebRtcOpus_EncoderFree(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v7, v8, v9, v10, 0);
  webrtc::AudioEncoderMultiChannelOpusImpl::Num10msFramesPerPacket(v11);
}

void webrtc::AudioEncoderMultiChannelOpusImpl::Num10msFramesPerPacket(webrtc::AudioEncoderMultiChannelOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this % 10)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (this % 10));
    webrtc::AudioEncoderMultiChannelOpusImpl::Reset(v8);
  }
}

void webrtc::AudioEncoderMultiChannelOpusImpl::Reset(webrtc::AudioEncoderMultiChannelOpusImpl *this)
{
  webrtc::AudioEncoderMultiChannelOpusImpl::RecreateEncoderInstance(this, (this + 8));
  if ((v5 & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 178, "RecreateEncoderInstance(config_)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v1, v2, v3, v4, vars0);
    webrtc::AudioEncoderMultiChannelOpusImpl::GetFrameLengthRange(v6, v7);
  }
}

uint64_t webrtc::AudioEncoderMultiChannelOpusImpl::GetFrameLengthRange@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = 1000 * *(this + 8);
  *a2 = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  return this;
}

uint64_t webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>()
{
  {
    return 0;
  }

  else
  {
    return webrtc::LogMessage::streams_empty_ & 1;
  }
}

void webrtc::AudioEncoderMultiChannelOpusImpl::SdpToConfig(webrtc::AudioEncoderMultiChannelOpusImpl *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = this;
  }

  else
  {
    v4 = *this;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 1);
  }

  if (v3 != 9)
  {
    goto LABEL_49;
  }

  v5 = *v4;
  if (v5 != 109)
  {
    if ((v5 - 65) < 0x1A)
    {
      LOBYTE(v5) = v5 + 32;
    }

    if (v5 != 109)
    {
      goto LABEL_49;
    }
  }

  v6 = v4[1];
  if (v6 != 117)
  {
    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (v6 != 117)
    {
      goto LABEL_49;
    }
  }

  v7 = v4[2];
  if (v7 != 108)
  {
    if ((v7 - 65) < 0x1A)
    {
      LOBYTE(v7) = v7 + 32;
    }

    if (v7 != 108)
    {
      goto LABEL_49;
    }
  }

  v8 = v4[3];
  if (v8 != 116)
  {
    if ((v8 - 65) < 0x1A)
    {
      LOBYTE(v8) = v8 + 32;
    }

    if (v8 != 116)
    {
      goto LABEL_49;
    }
  }

  v9 = v4[4];
  if (v9 != 105)
  {
    if ((v9 - 65) < 0x1A)
    {
      LOBYTE(v9) = v9 + 32;
    }

    if (v9 != 105)
    {
      goto LABEL_49;
    }
  }

  v10 = v4[5];
  if (v10 != 111)
  {
    if ((v10 - 65) < 0x1A)
    {
      LOBYTE(v10) = v10 + 32;
    }

    if (v10 != 111)
    {
      goto LABEL_49;
    }
  }

  v11 = v4[6];
  if (v11 != 112)
  {
    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (v11 != 112)
    {
      goto LABEL_49;
    }
  }

  v12 = v4[7];
  if (v12 != 117)
  {
    if ((v12 - 65) < 0x1A)
    {
      LOBYTE(v12) = v12 + 32;
    }

    if (v12 != 117)
    {
      goto LABEL_49;
    }
  }

  v13 = v4[8];
  if (v13 == 115)
  {
    if (*(this + 6) == 48000)
    {
      goto LABEL_41;
    }

LABEL_49:
    *a2 = 0;
    *(a2 + 96) = 0;
    return;
  }

  if ((v13 - 65) < 0x1A)
  {
    LOBYTE(v13) = v13 + 32;
  }

  if (v13 != 115 || *(this + 6) != 48000)
  {
    goto LABEL_49;
  }

LABEL_41:
  *&v77 = 0x7D0000000000;
  WORD4(v77) = 0;
  BYTE10(v77) = 0;
  v78 = 0;
  v79 = 0u;
  v80 = -4294967287;
  v81 = -1;
  v83 = 0;
  v84 = 0;
  __dst = 0;
  *(&v76 + 1) = *(this + 4);
  Format = webrtc::GetFormatParameter<int>(this, "ptime", 5uLL);
  if ((Format & 0x100000000) != 0)
  {
    v18 = this;
    if (Format < 11)
    {
      v17 = 10;
    }

    else if (Format < 0x15)
    {
      v17 = 20;
    }

    else if (Format <= 0x28)
    {
      v17 = 40;
    }

    else
    {
      v17 = 60;
    }
  }

  else
  {
    v17 = 20;
    v18 = this;
  }

  LODWORD(v76) = v17;
  v20 = webrtc::GetFormatParameter<int>(v18, "maxplaybackrate", 0xFuLL);
  if (v20 >= 0xBB80)
  {
    v21 = 48000;
  }

  else
  {
    v21 = v20;
  }

  if ((BYTE4(v20) & (v20 > 7999)) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 48000;
  }

  HIDWORD(v77) = v22;
  *(&__p.__r_.__value_.__s + 23) = 12;
  if (&__p <= "useinbandfec" && &__p.__r_.__value_.__r.__words[1] + 4 > "useinbandfec")
  {
    goto LABEL_192;
  }

  strcpy(&__p, "useinbandfec");
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = this;
  v25 = (this + 48);
  if ((this + 48) == v23)
  {
    goto LABEL_75;
  }

  if (*(v23 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v23[7], v23[8]);
    v24 = this;
  }

  else
  {
    __p = *(v23 + 7);
  }

  v75 = 1;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      BYTE8(v77) = __p.__r_.__value_.__s.__data_[0] == 49;
      goto LABEL_80;
    }

LABEL_75:
    BYTE8(v77) = 0;
    goto LABEL_80;
  }

  v26 = __p.__r_.__value_.__l.__size_ == 1 && *__p.__r_.__value_.__l.__data_ == 49;
  BYTE8(v77) = v26;
  operator delete(__p.__r_.__value_.__l.__data_);
  v24 = this;
LABEL_80:
  *(&__p.__r_.__value_.__s + 23) = 6;
  if (&__p <= "usedtx" && __p.__r_.__value_.__r.__words + 6 > "usedtx")
  {
    goto LABEL_192;
  }

  strcpy(&__p, "usedtx");
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v24 + 40, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = v27;
    operator delete(__p.__r_.__value_.__l.__data_);
    v27 = v28;
  }

  if (v25 == v27)
  {
    BYTE10(v77) = 0;
LABEL_97:
    v29 = this;
    goto LABEL_98;
  }

  if (*(v27 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v27[7], v27[8]);
    v29 = this;
  }

  else
  {
    v29 = this;
    __p = *(v27 + 7);
  }

  v75 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v30 = __p.__r_.__value_.__l.__size_ == 1 && *__p.__r_.__value_.__l.__data_ == 49;
    BYTE10(v77) = v30;
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_97;
  }

  BYTE10(v77) = SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1 && __p.__r_.__value_.__s.__data_[0] == 49;
LABEL_98:
  *(&__p.__r_.__value_.__s + 23) = 3;
  if (&__p <= "cbr" && __p.__r_.__value_.__r.__words + 3 > "cbr")
  {
    goto LABEL_192;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 7496291;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v29 + 40, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v32 = v31;
    operator delete(__p.__r_.__value_.__l.__data_);
    v31 = v32;
  }

  if (v25 == v31)
  {
    BYTE9(v77) = 0;
LABEL_115:
    v33 = this;
    goto LABEL_116;
  }

  if (*(v31 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31[7], v31[8]);
    v33 = this;
  }

  else
  {
    v33 = this;
    __p = *(v31 + 7);
  }

  v75 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v34 = __p.__r_.__value_.__l.__size_ == 1 && *__p.__r_.__value_.__l.__data_ == 49;
    BYTE9(v77) = v34;
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_115;
  }

  BYTE9(v77) = SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1 && __p.__r_.__value_.__s.__data_[0] == 49;
LABEL_116:
  v35 = HIDWORD(v77);
  v36 = DWORD2(v76);
  *(&__p.__r_.__value_.__s + 23) = 17;
  if (&__p <= "maxaveragebitrate" && &__p.__r_.__value_.__r.__words[2] + 1 > "maxaveragebitrate")
  {
    goto LABEL_192;
  }

  strcpy(&__p, "maxaveragebitrate");
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v33 + 40, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v25 == v37)
  {
    v38 = 0;
    v72.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (*(v37 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, v37[7], v37[8]);
    }

    else
    {
      v72 = *(v37 + 7);
    }

    v38 = 1;
  }

  v73 = v38;
  if (v35 > 8000)
  {
    if (v35 > 0x3E80)
    {
      v39 = 32000;
    }

    else
    {
      v39 = 20000;
    }
  }

  else
  {
    v39 = 12000;
  }

  v40 = v36 * v39;
  if (v38)
  {
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v72;
    }

    else
    {
      v41 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v72.__r_.__value_.__l.__size_;
    }

    v43 = webrtc::string_to_number_internal::ParseSigned(&v41->__r_.__value_.__l.__data_, size, 0xAuLL);
    if ((v44 & ((v43 + 0x80000000) >> 32 == 0)) != 0)
    {
      v45 = v43 | 0x100000000;
    }

    else
    {
      v45 = 0;
    }

    if (HIDWORD(v45))
    {
      if (v45 <= 6000)
      {
        v53 = 6000;
      }

      else
      {
        v53 = v45;
      }

      if (v53 >= 510000)
      {
        v40 = 510000;
      }

      else
      {
        v40 = v53;
      }

      if (v40 == v45)
      {
        v40 = v45;
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      if (v73)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v46, v47, v48, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc");
        goto LABEL_155;
      }

LABEL_192:
      __break(1u);
      goto LABEL_193;
    }
  }

LABEL_155:
  DWORD1(v77) = v40;
  if (v73 == 1 && SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  LODWORD(v77) = *(&v76 + 1) != 1;
  *&v79 = v78;
  v61 = webrtc::GetFormatParameter<int>(this, "num_streams", 0xBuLL);
  if ((v61 & 0x100000000) != 0)
  {
    HIDWORD(v80) = v61;
    v62 = webrtc::GetFormatParameter<int>(this, "coupled_streams", 0xFuLL);
    if ((v62 & 0x100000000) != 0)
    {
      v81 = v62;
      webrtc::GetFormatParameter<std::vector<unsigned char>>(this, "channel_mapping", 0xFuLL, &__p);
      if ((v75 & 1) == 0)
      {
        goto LABEL_188;
      }

      v63 = *&__p.__r_.__value_.__l.__data_;
      v64 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
      v65 = __dst;
      if (v84 - __dst < __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])
      {
        if (__dst)
        {
          v83 = __dst;
          operator delete(__dst);
          __dst = 0;
          v83 = 0;
          v84 = 0;
        }

        if ((v64 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_193;
      }

      v66 = v83;
      v67 = v83 - __dst;
      if (v83 - __dst >= v64)
      {
        if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
        {
          v70 = __dst;
          memmove(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
          v65 = v70;
        }

        v69 = &v65[v64];
      }

      else
      {
        if (v83 != __dst)
        {
          memmove(__dst, __p.__r_.__value_.__l.__data_, v83 - __dst);
          v66 = v83;
        }

        v68 = *(&v63 + 1) - (v63 + v67);
        if (v68)
        {
          memmove(v66, (v63 + v67), v68);
        }

        v69 = &v66[v68];
      }

      v83 = v69;
      if (webrtc::AudioEncoderMultiChannelOpusConfig::IsOk(&v76))
      {
        v71 = v77;
        *a2 = v76;
        *(a2 + 16) = v71;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 32) = 0;
        if (v79 != v78)
        {
          if (((v79 - v78) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(a2 + 56) = v80;
        *(a2 + 64) = v81;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 72) = 0;
        if (v83 != __dst)
        {
          if (((v83 - __dst) & 0x8000000000000000) == 0)
          {
            operator new();
          }

LABEL_193:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(a2 + 96) = 1;
      }

      else
      {
LABEL_188:
        *a2 = 0;
        *(a2 + 96) = 0;
      }

      if (v75 == 1 && __p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_161;
    }
  }

  *a2 = 0;
  *(a2 + 96) = 0;
LABEL_161:
  if (__dst)
  {
    v83 = __dst;
    operator delete(__dst);
  }

  if (v78)
  {
    *&v79 = v78;
    operator delete(v78);
  }
}

uint64_t webrtc::AudioEncoderMultiChannelOpusImpl::Num10MsFramesInNextPacket(webrtc::AudioEncoderMultiChannelOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 2);
  if (!(v8 % 10))
  {
    return v8 / 10;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v8 % 10));
  return webrtc::AudioEncoderMultiChannelOpusImpl::Max10MsFramesInAPacket(v10);
}

uint64_t webrtc::AudioEncoderMultiChannelOpusImpl::Max10MsFramesInAPacket(webrtc::AudioEncoderMultiChannelOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 2);
  if (!(v8 % 10))
  {
    return v8 / 10;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v8 % 10));
  return webrtc::AudioEncoderMultiChannelOpusImpl::GetTargetBitrate(v10);
}

void webrtc::AudioEncoderMultiChannelOpusImpl::EncodeImpl(uint64_t a1@<X0>, int a2@<W1>, __int16 *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  v11 = a1 + 112;
  if (v13 == v12)
  {
    *(a1 + 144) = a2;
  }

  std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(v11, v12, a3, &a3[a4], (2 * a4) >> 1);
  v20 = *(a1 + 8);
  v21 = v20 / 10;
  v22 = (v20 % 10);
  if (v22)
  {
    goto LABEL_27;
  }

  v23 = *(a1 + 112);
  v22 = *(a1 + 120);
  v6 = (v22 - v23) >> 1;
  v24 = 480 * v21 * *(a1 + 16);
  if (v6 < v24)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 256;
    *(a6 + 20) = 0;
    *(a6 + 36) = 0;
    *(a6 + 28) = 0;
    *(a6 + 44) = 0;
    return;
  }

  if (v6 != v24)
  {
    goto LABEL_28;
  }

  v25 = 20 * v21 * (*(a1 + 28) / 8000 + 1);
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 24) = 0;
  v26 = *a5;
  v27 = v25 + *a5;
  if (a5[1] < v27)
  {
    operator new[]();
  }

  *a5 = v27;
  if (v22 == v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v16, v17, v18, v19, v22);
LABEL_28:
    webrtc::AudioEncoderMultiChannelOpusImpl::Num10msFramesPerPacket(v20, v23, v14, v15, v16, v17, v18, v19);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 349, "input_buffer_.size() == Num10msFramesPerPacket() * SamplesPer10msFrame()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v35, v36, v37, v38, v6);
    goto LABEL_29;
  }

  v28 = *(a1 + 16);
  v29 = v6 / v28;
  v30 = v6 % v28;
  if (!(v6 % v28))
  {
    if (v25 >= 0x7FFF)
    {
      v31 = 0x7FFFLL;
    }

    else
    {
      v31 = v25;
    }

    if (v29 <= 0xB40)
    {
      v6 = *(a1 + 136);
      if (*v6)
      {
        v32 = opus_encode(*v6, v23, v29);
        if (v32 >= 1)
        {
LABEL_17:
          if (v32 > 2)
          {
            *(v6 + 24) = 0;
            v33 = v32;
            if (v25 >= v32)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }

          if (*(v6 + 24))
          {
            v33 = 0;
LABEL_21:
            *a5 = v33 + v26;
            *a6 = v33;
            *(a1 + 120) = *(a1 + 112);
            *(a1 + 8) = *(a1 + 160);
            v34 = *(a1 + 104);
            *(a6 + 8) = *(a1 + 144);
            *(a6 + 12) = v34;
            *(a6 + 16) = 257;
            *(a6 + 20) = 0;
            return;
          }

LABEL_24:
          *(v6 + 24) = 1;
          v33 = v32;
          if (v25 >= v32)
          {
            goto LABEL_21;
          }

LABEL_25:
          webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/buffer.h", 328, "written_elements <= max_elements", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v31, v17, v18, v19, v33);
          goto LABEL_26;
        }
      }

      else
      {
        v32 = opus_multistream_encode(*(v6 + 8));
        if (v32 >= 1)
        {
          goto LABEL_17;
        }
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_multi_channel_opus_impl.cc", 360, "status >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v31, v17, v18, v19, 0xFFFFFFFFLL);
    goto LABEL_24;
  }

LABEL_29:
  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v30);
  webrtc::AudioEncoderOpusImpl::AppendSupportedEncoders();
}

void webrtc::AudioEncoderOpusImpl::AppendSupportedEncoders(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(&v22, "minptime", "10");
  std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(&v25, "useinbandfec", "1");
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v15, &v16, &v22.__r_.__value_.__l.__data_);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v15, &v16, &v25);
  *(&v18.__r_.__value_.__s + 23) = 4;
  if (&v18 <= "opus" && v18.__r_.__value_.__r.__words + 4 > "opus")
  {
    goto LABEL_41;
  }

  strcpy(&v18, "opus");
  LODWORD(v19) = 48000;
  *(&v19 + 1) = 2;
  v20 = v15;
  v21[0] = v16;
  v21[1] = v17;
  if (v17)
  {
    *(v16 + 16) = v21;
    v15 = &v16;
    v16 = 0;
    v17 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, 0);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20 = v21;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, v16);
  if (SHIBYTE(v28) < 0)
  {
LABEL_5:
    operator delete(*(&v27 + 1));
  }

LABEL_6:
  if (SBYTE7(v27) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v23[0]);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    webrtc::AudioEncoderOpusImpl::SdpToConfig(&v18, &v22);
    if ((BYTE8(v28) & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v22.__r_.__value_.__l.__data_);
  webrtc::AudioEncoderOpusImpl::SdpToConfig(&v18, &v22);
  if ((BYTE8(v28) & 1) == 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

LABEL_16:
  if ((v23[0] & 1) == 0)
  {
    goto LABEL_41;
  }

  size = v22.__r_.__value_.__l.__size_;
  v3 = HIDWORD(v22.__r_.__value_.__r.__words[0]);
  v4 = HIDWORD(v22.__r_.__value_.__r.__words[2]);
  if (v26)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v18;
  }

  *v23 = v19;
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  v5 = v20;
  if (v20 != v21)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v24, &v25, v5 + 4);
      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v21);
  }

  LODWORD(v27) = v3;
  *(&v27 + 1) = size;
  LODWORD(v28) = v4;
  *(&v28 + 4) = 0x7C83000001770;
  WORD6(v28) = 256;
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  v7 = *&v22.__r_.__value_.__l.__data_;
  *(v6 + 16) = *(&v22.__r_.__value_.__l + 2);
  *v6 = v7;
  memset(&v22, 0, sizeof(v22));
  *(v6 + 24) = *v23;
  *(v6 + 40) = v24;
  v8 = v25;
  *(v6 + 48) = v25;
  v9 = v6 + 48;
  v10 = v26;
  *(v6 + 56) = v26;
  if (v10)
  {
    v8[2] = v9;
    v8 = 0;
    v24 = &v25;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    *(v6 + 40) = v9;
  }

  v14 = v28;
  *(v6 + 64) = v27;
  *(v6 + 80) = v14;
  a1[1] = v6 + 96;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v24, v8);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v20, v21[0]);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void webrtc::AudioEncoderOpusImpl::SdpToConfig(webrtc::AudioEncoderOpusImpl *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = this;
  }

  else
  {
    v4 = *this;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 1);
  }

  if (v3 != 4)
  {
    goto LABEL_36;
  }

  v6 = *v4;
  if (v6 != 111)
  {
    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (v6 != 111)
    {
      goto LABEL_36;
    }
  }

  v7 = v4[1];
  if (v7 != 112)
  {
    if ((v7 - 65) < 0x1A)
    {
      LOBYTE(v7) = v7 + 32;
    }

    if (v7 != 112)
    {
      goto LABEL_36;
    }
  }

  v8 = v4[2];
  if (v8 != 117)
  {
    if ((v8 - 65) < 0x1A)
    {
      LOBYTE(v8) = v8 + 32;
    }

    if (v8 != 117)
    {
      goto LABEL_36;
    }
  }

  v9 = v4[3];
  if (v9 != 115)
  {
    if ((v9 - 65) < 0x1A)
    {
      LOBYTE(v9) = v9 + 32;
    }

    if (v9 != 115)
    {
      goto LABEL_36;
    }
  }

  if (*(this + 6) != 48000 || *(this + 4) != 2)
  {
LABEL_36:
    *a2 = 0;
    *(a2 + 88) = 0;
    return;
  }

  *&v64 = 0xBB8000000014;
  *&v65 = 0x7D0000000000;
  *v66 = xmmword_273B8E890;
  *(&v64 + 1) = 1;
  BYTE8(v65) = 1;
  WORD6(v65) = 0;
  *&v66[16] = 1500;
  v66[20] = 0;
  __p = 0;
  v68 = 0u;
  v69 = -4294967096;
  *(&v70.__r_.__value_.__s + 23) = 6;
  if (&v70 <= "stereo" && v70.__r_.__value_.__r.__words + 6 > "stereo")
  {
    goto LABEL_177;
  }

  strcpy(&v70, "stereo");
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v12 = (this + 48);
  if ((this + 48) == v11)
  {
    goto LABEL_38;
  }

  if (*(v11 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v11[7], v11[8]);
    v71 = 1;
    v13 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if (v13 == 1)
      {
        if (v70.__r_.__value_.__s.__data_[0] == 49)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_46;
      }

LABEL_38:
      v14 = 1;
      goto LABEL_46;
    }
  }

  else
  {
    v70 = *(v11 + 7);
    v71 = 1;
    v13 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v70.__r_.__value_.__l.__size_ == 1)
  {
    if (*v70.__r_.__value_.__l.__data_ == 49)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  operator delete(v70.__r_.__value_.__l.__data_);
LABEL_46:
  *(&v64 + 1) = v14;
  Format = webrtc::GetFormatParameter<int>(this, "ptime", 5uLL);
  if ((Format & 0x100000000) == 0)
  {
LABEL_47:
    v16 = 20;
    goto LABEL_54;
  }

  if (Format >= 11)
  {
    if (Format >= 0x15)
    {
      if (Format <= 0x28)
      {
        v16 = 40;
      }

      else
      {
        v16 = 60;
      }

      goto LABEL_54;
    }

    goto LABEL_47;
  }

  v16 = 10;
LABEL_54:
  LODWORD(v64) = v16;
  v17 = webrtc::GetFormatParameter<int>(this, "maxplaybackrate", 0xFuLL);
  if (v17 >= 0xBB80)
  {
    v18 = 48000;
  }

  else
  {
    v18 = v17;
  }

  if ((BYTE4(v17) & (v17 > 7999)) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 48000;
  }

  *v66 = v19;
  *(&v70.__r_.__value_.__s + 23) = 12;
  if (&v70 <= "useinbandfec" && &v70.__r_.__value_.__r.__words[1] + 4 > "useinbandfec")
  {
    goto LABEL_177;
  }

  strcpy(&v70, "useinbandfec");
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v12 == v20)
  {
    goto LABEL_69;
  }

  if (*(v20 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v20[7], v20[8]);
    v71 = 1;
    v21 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_67:
      if (v21 == 1)
      {
        BYTE12(v65) = v70.__r_.__value_.__s.__data_[0] == 49;
        goto LABEL_75;
      }

LABEL_69:
      BYTE12(v65) = 0;
      goto LABEL_75;
    }
  }

  else
  {
    v70 = *(v20 + 7);
    v71 = 1;
    v21 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }
  }

  v22 = v70.__r_.__value_.__l.__size_ == 1 && *v70.__r_.__value_.__l.__data_ == 49;
  BYTE12(v65) = v22;
  operator delete(v70.__r_.__value_.__l.__data_);
LABEL_75:
  *(&v70.__r_.__value_.__s + 23) = 6;
  if (&v70 <= "usedtx" && v70.__r_.__value_.__r.__words + 6 > "usedtx")
  {
    goto LABEL_177;
  }

  strcpy(&v70, "usedtx");
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v12 == v23)
  {
    goto LABEL_84;
  }

  if (*(v23 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v23[7], v23[8]);
    v71 = 1;
    v24 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_82:
      if (v24 == 1)
      {
        v66[20] = v70.__r_.__value_.__s.__data_[0] == 49;
        goto LABEL_90;
      }

LABEL_84:
      v66[20] = 0;
      goto LABEL_90;
    }
  }

  else
  {
    v70 = *(v23 + 7);
    v71 = 1;
    v24 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }
  }

  v25 = v70.__r_.__value_.__l.__size_ == 1 && *v70.__r_.__value_.__l.__data_ == 49;
  v66[20] = v25;
  operator delete(v70.__r_.__value_.__l.__data_);
LABEL_90:
  *(&v70.__r_.__value_.__s + 23) = 3;
  if (&v70 <= "cbr" && v70.__r_.__value_.__r.__words + 3 > "cbr")
  {
    goto LABEL_177;
  }

  LODWORD(v70.__r_.__value_.__l.__data_) = 7496291;
  v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    v27 = v26;
    operator delete(v70.__r_.__value_.__l.__data_);
    v26 = v27;
  }

  if (v12 == v26)
  {
    goto LABEL_99;
  }

  if (*(v26 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v26[7], v26[8]);
    v71 = 1;
    v28 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_97:
      if (v28 == 1)
      {
        BYTE13(v65) = v70.__r_.__value_.__s.__data_[0] == 49;
        goto LABEL_105;
      }

LABEL_99:
      BYTE13(v65) = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v70 = *(v26 + 7);
    v71 = 1;
    v28 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }
  }

  v29 = v70.__r_.__value_.__l.__size_ == 1 && *v70.__r_.__value_.__l.__data_ == 49;
  BYTE13(v65) = v29;
  operator delete(v70.__r_.__value_.__l.__data_);
LABEL_105:
  *(&v70.__r_.__value_.__s + 23) = 17;
  if (&v70 <= "maxaveragebitrate" && &v70.__r_.__value_.__r.__words[2] + 1 > "maxaveragebitrate")
  {
    goto LABEL_177;
  }

  strcpy(&v70, "maxaveragebitrate");
  v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 40, &v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    v31 = v30;
    operator delete(v70.__r_.__value_.__l.__data_);
    v30 = v31;
  }

  if (v12 == v30)
  {
    v32 = 0;
    v62.__r_.__value_.__s.__data_[0] = 0;
    v63 = 0;
    if (v19 <= 0x1F40)
    {
      goto LABEL_112;
    }

LABEL_114:
    if (v19 > 0x3E80)
    {
      v33 = 32000;
    }

    else
    {
      v33 = 20000;
    }

    goto LABEL_117;
  }

  if (*(v30 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v30[7], v30[8]);
    v32 = 1;
    v63 = 1;
    if (v19 <= 0x1F40)
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  v62 = *(v30 + 7);
  v32 = 1;
  v63 = 1;
  if (v19 > 0x1F40)
  {
    goto LABEL_114;
  }

LABEL_112:
  v33 = 12000;
LABEL_117:
  v34 = v14 * v33;
  if (v32)
  {
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v62;
    }

    else
    {
      v35 = v62.__r_.__value_.__r.__words[0];
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v62.__r_.__value_.__l.__size_;
    }

    v37 = webrtc::string_to_number_internal::ParseSigned(&v35->__r_.__value_.__l.__data_, size, 0xAuLL);
    if ((v38 & ((v37 + 0x80000000) >> 32 == 0)) != 0)
    {
      v39 = v37 | 0x100000000;
    }

    else
    {
      v39 = 0;
    }

    if (HIDWORD(v39))
    {
      if (v39 <= 6000)
      {
        v47 = 6000;
      }

      else
      {
        v47 = v39;
      }

      if (v47 >= 510000)
      {
        v34 = 510000;
      }

      else
      {
        v34 = v47;
      }

      if (v34 == v39)
      {
        v34 = v39;
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
      }

      goto LABEL_143;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      if (v63)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
        goto LABEL_143;
      }

LABEL_177:
      __break(1u);
      goto LABEL_178;
    }
  }

LABEL_143:
  DWORD1(v65) = v34;
  BYTE8(v65) = 1;
  if (v63 == 1 && SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  LODWORD(v65) = v14 != 1;
  v55 = webrtc::GetFormatParameter<int>(this, "minptime", 8uLL);
  if ((v55 & 0x100000000) != 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 20;
  }

  v57 = webrtc::GetFormatParameter<int>(this, "maxptime", 8uLL);
  if ((v57 & 0x100000000) != 0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 60;
  }

  *&v68 = 0;
  if (v56 <= 20 && v58 >= 20)
  {
  }

  if (v56 <= 40 && v58 >= 40)
  {
    std::vector<unsigned int>::push_back[abi:sn200100](&__p, &dword_273B8E8A4);
  }

  if (v56 <= 60 && v58 >= 60)
  {
    std::vector<unsigned int>::push_back[abi:sn200100](&__p, &dword_273B8E8A8);
  }

  if (v64 >= 1 && !(v64 % 0xA) && (DWORD1(v64) == 48000 || DWORD1(v64) == 16000) && *(&v64 + 1) <= 0x18uLL && BYTE8(v65) == 1 && (DWORD1(v65) - 6000) <= 0x7B0C0 && *&v66[4] <= 0xAu && *&v66[8] < 0xBu)
  {
    v59 = v65;
    v60 = a2;
    *a2 = v64;
    *(a2 + 16) = v59;
    *(a2 + 32) = *v66;
    *(a2 + 45) = *&v66[13];
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    if (v68 != __p)
    {
      if (((v68 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_178:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a2 + 80) = v69;
    v61 = 1;
  }

  else
  {
    v61 = 0;
    v60 = a2;
    *a2 = 0;
  }

  *(v60 + 88) = v61;
  if (__p)
  {
    *&v68 = __p;
    operator delete(__p);
  }
}

void webrtc::AudioEncoderOpusImpl::AudioEncoderOpusImpl(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p[6] = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828DC80;
  *(a1 + 8) = 0xBB8000000014;
  v6 = 1;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0x7D0000000000;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *(a1 + 40) = xmmword_273B8E890;
  *(a1 + 56) = 1500;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -4294967096;
  *(a1 + 96) = a4;
  (*(**(a2 + 8) + 16))(__p);
  v7 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v7 = __p[1];
  }

  if (v7 >= 8)
  {
    v8 = __p[0];
    if (SHIBYTE(__p[2]) >= 0)
    {
      v8 = __p;
    }

    v6 = *v8 != 0x64656C6261736944;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 100) = v6;
  (*(**(a2 + 8) + 16))(__p);
  v9 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v9 = __p[1];
  }

  if (v9 >= 7)
  {
    v11 = __p[0];
    if (SHIBYTE(__p[2]) >= 0)
    {
      v11 = __p;
    }

    v12 = *v11;
    v13 = *(v11 + 3);
    v10 = v12 == 1650552389 && v13 == 1684368482;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
LABEL_24:
      *(a1 + 101) = v10;
      *(a1 + 102) = 1;
      v15 = *(a2 + 8);
      strcpy(__p, "WebRTC-Audio-OpusBitrateMultipliers");
      v16 = strlen(__p);
      (*(*v15 + 16))(&v44, v15, __p, v16);
      v17 = v46;
      if ((v46 & 0x80u) != 0)
      {
        v17 = v45;
      }

      if (v17 >= 7)
      {
        v19 = v44;
        if ((v46 & 0x80u) == 0)
        {
          v19 = &v44;
        }

        v20 = *v19;
        v21 = *(v19 + 3);
        v18 = v20 == 1650552389 && v21 == 1684368482;
        if (v46 < 0)
        {
LABEL_54:
          operator delete(v44);
          if (!v18)
          {
            goto LABEL_55;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v18 = 0;
        if (v46 < 0)
        {
          goto LABEL_54;
        }
      }

      if (!v18)
      {
LABEL_55:
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        goto LABEL_73;
      }

LABEL_39:
      v23 = strlen(__p);
      (*(*v15 + 16))(&v44, v15, __p, v23);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      if ((v46 & 0x80u) == 0)
      {
        v24 = &v44;
      }

      else
      {
        v24 = v44;
      }

      if ((v46 & 0x80u) == 0)
      {
        v25 = v46;
      }

      else
      {
        v25 = v45;
      }

      webrtc::tokenize(v24, v25, 0x2Du, &v41);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3);
      if (v26 < 2)
      {
        goto LABEL_61;
      }

      v27 = *(v41 + 23);
      if (v27 < 0)
      {
        if (*(v41 + 1) != 7)
        {
          goto LABEL_61;
        }

        if (**v41 != 1650552389 || *(*v41 + 3) != 1684368482)
        {
          goto LABEL_61;
        }
      }

      else if (v27 != 7 || (*v41 == 1650552389 ? (v28 = *(v41 + 3) == 1684368482) : (v28 = 0), !v28))
      {
LABEL_61:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t\t\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
        }

        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v37 = v41;
        if (v41)
        {
          v38 = v42;
          v39 = v41;
          if (v42 != v41)
          {
            do
            {
              v40 = *(v38 - 1);
              v38 -= 3;
              if (v40 < 0)
              {
                operator delete(*v38);
              }
            }

            while (v38 != v37);
            v39 = v41;
          }

          v42 = v37;
          operator delete(v39);
        }

        if (v46 < 0)
        {
          operator delete(v44);
        }

LABEL_73:
        *(a1 + 128) = 0;
        *(a1 + 136) = 0u;
        *(a1 + 152) = 0u;
        operator new();
      }

      if (!((v26 - 1) >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v10 = 0;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(__p[0]);
  goto LABEL_24;
}

void webrtc::AudioEncoderOpusImpl::AudioEncoderOpusImpl(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_28828DD80;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void webrtc::AudioEncoderOpusImpl::RecreateEncoderInstance(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 >= 1 && *a2 % 0xAu == 0)
  {
    v9 = *(a2 + 1);
    v10 = v9 == 48000 || v9 == 16000;
    if (v10 && *(a2 + 1) <= 0x18uLL && *(a2 + 24) == 1 && (*(a2 + 5) - 6000) <= 0x7B0C0 && *(a2 + 9) <= 0xAu && *(a2 + 10) <= 0xAu)
    {
      v11 = *a2;
      v12 = a2[1];
      v13 = a2[2];
      *(a1 + 53) = *(a2 + 45);
      *(a1 + 40) = v13;
      *(a1 + 24) = v12;
      *(a1 + 8) = v11;
      v14 = a1;
      v15 = a2;
      if ((a1 + 8) != a2)
      {
        std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>((a1 + 64), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
        a2 = v15;
        a1 = v14;
      }

      v16 = (a1 + 160);
      v17 = *(a1 + 160);
      *(a1 + 88) = *(a2 + 10);
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          v18 = *(v17 + 8);
        }

        free(v18);
        free(v17);
        a1 = v14;
        a2 = v15;
      }

      v19 = *(a1 + 136);
      *(a1 + 144) = v19;
      v20 = *(a1 + 8);
      v21 = v20 / 10;
      v22 = (v20 % 10);
      if (!v22)
      {
        v23 = *(a1 + 12);
        v22 = (v23 % 100);
        if (!v22)
        {
          v24 = v23 / 100 * v21 * *(a1 + 16);
          if (v24 > (*(a1 + 152) - v19) >> 1)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_125:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (WebRtcOpus_EncoderCreate(v16, *(a2 + 1), *(a2 + 4) != 0, *(a2 + 1)))
          {
            goto LABEL_113;
          }

          if (*(v15 + 24))
          {
            v17 = *(v15 + 5);
            v27 = *v16;
            if (!*v16)
            {
LABEL_114:
              v77 = 0;
LABEL_116:
              WebRtcOpus_SetBitRate(v77, v17, v25, v26, a5, a6, a7, a8);
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 685, "0 == WebRtcOpus_SetBitRate(inst_, bitrate)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v78, v79, v80, v81, 0);
LABEL_117:
              v82 = 0;
LABEL_119:
              WebRtcOpus_SetMaxPlaybackRate(v82, v38, v30, v31, a5, a6, a7, a8);
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 693, "0 == WebRtcOpus_SetMaxPlaybackRate(inst_, config.max_playback_rate_hz)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v83, v84, v85, v86, 0);
              goto LABEL_120;
            }

            if (*v27)
            {
              v28 = opus_encoder_ctl(*v27, 4002, v25, v26, a5, a6, a7, a8, *(v15 + 5));
            }

            else
            {
              v28 = opus_multistream_encoder_ctl(v27[1], 4002, v25, v26, a5, a6, a7, a8, *(v15 + 5));
            }

            if (v28)
            {
              v77 = *v16;
              goto LABEL_116;
            }

            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v29, v30, v31, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
            }

            v32 = *v16;
            if (*(v15 + 28) == 1)
            {
              if (!v32)
              {
                v36 = 0;
                goto LABEL_127;
              }

              if (*v32)
              {
                v33 = opus_encoder_ctl(*v32, 4012, v30, v31, a5, a6, a7, a8, 1);
              }

              else
              {
                v33 = opus_multistream_encoder_ctl(v32[1], 4012, v30, v31, a5, a6, a7, a8, 1);
              }

              v35 = v15;
              if (v33)
              {
                v36 = *v16;
LABEL_127:
                WebRtcOpus_EnableFec(v36, v29, v30, v31, a5, a6, a7, a8);
                webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 688, "0 == WebRtcOpus_EnableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v95, v96, v97, v98, 0);
                goto LABEL_128;
              }
            }

            else
            {
              if (!v32)
              {
LABEL_128:
                v99 = 0;
LABEL_130:
                WebRtcOpus_DisableFec(v99, v29, v30, v31, a5, a6, a7, a8);
                webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 690, "0 == WebRtcOpus_DisableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v100, v101, v102, v103, 0);
                goto LABEL_131;
              }

              if (*v32)
              {
                v34 = opus_encoder_ctl(*v32, 4012, v30, v31, a5, a6, a7, a8, 0);
              }

              else
              {
                v34 = opus_multistream_encoder_ctl(v32[1], 4012, v30, v31, a5, a6, a7, a8, 0);
              }

              v35 = v15;
              if (v34)
              {
                v99 = *v16;
                goto LABEL_130;
              }
            }

            v37 = *v16;
            v38 = *(v35 + 8);
            if (!*v16)
            {
              goto LABEL_117;
            }

            if (v38 >= 8001)
            {
              if (v38 >= 0x2EE1)
              {
                if (v38 >= 0x3E81)
                {
                  if (v38 < 0x5DC1)
                  {
                    v39 = 1104;
                  }

                  else
                  {
                    v39 = 1105;
                  }
                }

                else
                {
                  v39 = 1103;
                }
              }

              else
              {
                v39 = 1102;
              }
            }

            else
            {
              v39 = 1101;
            }

            if (*v37)
            {
              v40 = opus_encoder_ctl(*v37, 4004, v30, v31, a5, a6, a7, a8, v39);
            }

            else
            {
              v40 = opus_multistream_encoder_ctl(v37[1], 4004, v30, v31, a5, a6, a7, a8, v39);
            }

            if (v40)
            {
              v82 = *v16;
              v38 = *(v15 + 8);
              goto LABEL_119;
            }

            if (*(v15 + 24))
            {
              v41 = *(v15 + 5);
              v42 = *(v15 + 11);
              v43 = *(v15 + 12);
              if (v41 < v42 - v43 || v41 > v43 + v42)
              {
                v45 = v41 <= v42;
                v46 = 40;
                if (!v45)
                {
                  v46 = 36;
                }

                v44 = *(v15 + v46) | 0x100000000;
              }

              else
              {
                v44 = 0;
              }

              if ((v44 & 0x100000000) != 0)
              {
                v47 = v44;
              }

              else
              {
                v47 = *(v15 + 9);
              }

              *(v14 + 188) = v47;
              v48 = *(v14 + 160);
              if (v48)
              {
                if (*v48)
                {
                  v49 = opus_encoder_ctl(*v48, 4010, v30, v31, a5, a6, a7, a8, v47);
                }

                else
                {
                  v49 = opus_multistream_encoder_ctl(v48[1], 4010, v30, v31, a5, a6, a7, a8, v47);
                }

                v51 = v49;
                v52 = *v16;
                if (v51)
                {
                  v47 = *(v14 + 188);
LABEL_121:
                  WebRtcOpus_SetComplexity(v52, v47, v30, v31, a5, a6, a7, a8);
                  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 697, "0 == WebRtcOpus_SetComplexity(inst_, complexity_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v87, v88, v89, v90, 0);
                  goto LABEL_122;
                }

                *(v14 + 102) = 1;
                if (*(v15 + 52) == 1)
                {
                  if (v52)
                  {
                    if (*v52)
                    {
                      v53 = opus_encoder_ctl(*v52, 4016, v30, v31, a5, a6, a7, a8, 1);
                    }

                    else
                    {
                      v53 = opus_multistream_encoder_ctl(v52[1], 4016, v30, v31, a5, a6, a7, a8, 1);
                    }

                    v55 = v14;
                    if (!v53)
                    {
                      goto LABEL_92;
                    }

                    v52 = *v16;
                  }

                  WebRtcOpus_EnableDtx(v52, v50, v30, v31, a5, a6, a7, a8);
                  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 700, "0 == WebRtcOpus_EnableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v56, v57, v58, v59, 0);
                }

                else
                {
                  if (!v52)
                  {
LABEL_132:
                    WebRtcOpus_DisableDtx(v52, v50, v30, v31, a5, a6, a7, a8);
                    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 702, "0 == WebRtcOpus_DisableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v104, v105, v106, v107, 0);
                    goto LABEL_133;
                  }

                  if (*v52)
                  {
                    v54 = opus_encoder_ctl(*v52, 4016, v30, v31, a5, a6, a7, a8, 0);
                    goto LABEL_91;
                  }
                }

                v54 = opus_multistream_encoder_ctl(v52[1], 4016, v30, v31, a5, a6, a7, a8, 0);
LABEL_91:
                v55 = v14;
                if (v54)
                {
LABEL_131:
                  v52 = *v16;
                  goto LABEL_132;
                }

LABEL_92:
                v60 = *(v55 + 160);
                v61 = (*(v55 + 128) * 100.0) + 0.5;
                v62 = v61;
                if (!v60)
                {
LABEL_122:
                  v66 = 0;
LABEL_124:
                  WebRtcOpus_SetPacketLossRate(v66, v62, v30, v31, a5, a6, a7, a8);
                  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 706, "0 == WebRtcOpus_SetPacketLossRate( inst_, static_cast<int32_t>(packet_loss_rate_ * 100 + .5))", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v91, v92, v93, v94, 0);
                  goto LABEL_125;
                }

                if (*v60)
                {
                  v63 = opus_encoder_ctl(*v60, 4014, v30, v31, a5, a6, a7, a8, v61);
                }

                else
                {
                  v63 = opus_multistream_encoder_ctl(v60[1], 4014, v30, v31, a5, a6, a7, a8, v61);
                }

                v65 = v63;
                v66 = *v16;
                if (v65)
                {
                  v62 = ((*(v14 + 128) * 100.0) + 0.5);
                  goto LABEL_124;
                }

                if (*(v15 + 29) == 1)
                {
                  if (v66)
                  {
                    if (*v66)
                    {
                      v67 = opus_encoder_ctl(*v66, 4006, v30, v31, a5, a6, a7, a8, 0);
                    }

                    else
                    {
                      v67 = opus_multistream_encoder_ctl(v66[1], 4006, v30, v31, a5, a6, a7, a8, 0);
                    }

                    if (!v67)
                    {
                      goto LABEL_110;
                    }

                    v66 = *v16;
                  }

                  WebRtcOpus_EnableCbr(v66, v64, v30, v31, a5, a6, a7, a8);
                  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 708, "0 == WebRtcOpus_EnableCbr(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v69, v70, v71, v72, 0);
                }

                else
                {
                  if (!v66)
                  {
LABEL_134:
                    WebRtcOpus_DisableCbr(v66, v64, v30, v31, a5, a6, a7, a8);
                    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 710, "0 == WebRtcOpus_DisableCbr(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v108, v109, v110, v111, 0);
                    webrtc::AudioEncoderOpusImpl::~AudioEncoderOpusImpl(v112);
                    return;
                  }

                  if (*v66)
                  {
                    v68 = opus_encoder_ctl(*v66, 4006, v30, v31, a5, a6, a7, a8, 1);
                    goto LABEL_109;
                  }
                }

                v68 = opus_multistream_encoder_ctl(v66[1], 4006, v30, v31, a5, a6, a7, a8, 1);
LABEL_109:
                if (v68)
                {
LABEL_133:
                  v66 = *v16;
                  goto LABEL_134;
                }

LABEL_110:
                *(v14 + 176) = *(v14 + 16);
                *(v14 + 184) = *(v14 + 8);
                return;
              }

LABEL_120:
              v52 = 0;
              goto LABEL_121;
            }
          }

          __break(1u);
        }
      }

      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v22);
LABEL_113:
      WebRtcOpus_EncoderCreate(v16, *(v15 + 1), *(v15 + 4) != 0, *(v15 + 1));
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 683, "0 == WebRtcOpus_EncoderCreate( &inst_, config.num_channels, config.application == AudioEncoderOpusConfig::ApplicationMode::kVoip ? 0 : 1, config.sample_rate_hz)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v73, v74, v75, v76, 0);
      goto LABEL_114;
    }
  }
}

void webrtc::AudioEncoderOpusImpl::~AudioEncoderOpusImpl(webrtc::AudioEncoderOpusImpl *this)
{
  v1 = *(this + 20);
  if (!v1)
  {
    WebRtcOpus_EncoderFree(0);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 409, "0 == WebRtcOpus_EncoderFree(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v11, v12, v13, v14, 0);
    webrtc::AudioEncoderOpusImpl::~AudioEncoderOpusImpl(v15);
    return;
  }

  v3 = *v1;
  if (!*v1)
  {
    v3 = v1[1];
  }

  free(v3);
  free(v1);
  v4 = *(this + 32);
  *(this + 32) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 29);
  *(this + 29) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 28);
  if (v6 == (this + 200))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 24);
    *(this + 24) = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = *(this + 24);
    *(this + 24) = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  MEMORY[0x2743DA540](v7, 0x1000C400CE834B2);
LABEL_13:
  v8 = *(this + 17);
  if (v8)
  {
    *(this + 18) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 8);
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
  }
}

{
  webrtc::AudioEncoderOpusImpl::~AudioEncoderOpusImpl(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioEncoderOpusImpl::Num10MsFramesInNextPacket(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 2);
  if (!(v8 % 10))
  {
    return v8 / 10;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v8 % 10));
  return webrtc::AudioEncoderOpusImpl::Max10MsFramesInAPacket(v10);
}

uint64_t webrtc::AudioEncoderOpusImpl::Max10MsFramesInAPacket(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 2);
  if (!(v8 % 10))
  {
    return v8 / 10;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v8 % 10));
  return webrtc::AudioEncoderOpusImpl::GetTargetBitrate(v10);
}

uint64_t webrtc::AudioEncoderOpusImpl::GetTargetBitrate(uint64_t this)
{
  if (*(this + 32))
  {
    return *(this + 28);
  }

  __break(1u);
  return this;
}

void webrtc::AudioEncoderOpusImpl::Reset(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::AudioEncoderOpusImpl::RecreateEncoderInstance(this, (this + 8), a3, a4, a5, a6, a7, a8);
  if ((v12 & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 437, "RecreateEncoderInstance(config_)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v8, v9, v10, v11, vars0);
    webrtc::AudioEncoderOpusImpl::SetFec(v13, v14);
  }
}

uint64_t webrtc::AudioEncoderOpusImpl::SetFec(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(this + 20);
  if (a2)
  {
    if (!v10)
    {
      v11 = 0;
      goto LABEL_15;
    }

    if (*v10)
    {
      if (opus_encoder_ctl(*v10, 4012, a3, a4, a5, a6, a7, a8, 1))
      {
        goto LABEL_11;
      }
    }

    else if (opus_multistream_encoder_ctl(v10[1], 4012, a3, a4, a5, a6, a7, a8, 1))
    {
LABEL_11:
      v11 = *(this + 20);
LABEL_15:
      WebRtcOpus_EnableFec(v11, a2, a3, a4, a5, a6, a7, a8);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 442, "0 == WebRtcOpus_EnableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v13, v14, v15, v16, 0);
      goto LABEL_16;
    }

LABEL_13:
    *(this + 36) = v8;
    return 1;
  }

  if (v10)
  {
    if (*v10)
    {
      if (!opus_encoder_ctl(*v10, 4012, a3, a4, a5, a6, a7, a8, 0))
      {
        goto LABEL_13;
      }
    }

    else if (!opus_multistream_encoder_ctl(v10[1], 4012, a3, a4, a5, a6, a7, a8, 0))
    {
      goto LABEL_13;
    }

    v17 = *(this + 20);
    goto LABEL_18;
  }

LABEL_16:
  v17 = 0;
LABEL_18:
  WebRtcOpus_DisableFec(v17, a2, a3, a4, a5, a6, a7, a8);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 444, "0 == WebRtcOpus_DisableFec(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v18, v19, v20, v21, 0);
  return webrtc::AudioEncoderOpusImpl::SetDtx(v22, v23);
}

uint64_t webrtc::AudioEncoderOpusImpl::SetDtx(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(this + 20);
  if (a2)
  {
    if (!v10)
    {
      v11 = 0;
      goto LABEL_15;
    }

    if (*v10)
    {
      if (opus_encoder_ctl(*v10, 4016, a3, a4, a5, a6, a7, a8, 1))
      {
        goto LABEL_11;
      }
    }

    else if (opus_multistream_encoder_ctl(v10[1], 4016, a3, a4, a5, a6, a7, a8, 1))
    {
LABEL_11:
      v11 = *(this + 20);
LABEL_15:
      WebRtcOpus_EnableDtx(v11, a2, a3, a4, a5, a6, a7, a8);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 452, "0 == WebRtcOpus_EnableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v13, v14, v15, v16, 0);
      goto LABEL_16;
    }

LABEL_13:
    *(this + 60) = v8;
    return 1;
  }

  if (v10)
  {
    if (*v10)
    {
      if (!opus_encoder_ctl(*v10, 4016, a3, a4, a5, a6, a7, a8, 0))
      {
        goto LABEL_13;
      }
    }

    else if (!opus_multistream_encoder_ctl(v10[1], 4016, a3, a4, a5, a6, a7, a8, 0))
    {
      goto LABEL_13;
    }

    v17 = *(this + 20);
    goto LABEL_18;
  }

LABEL_16:
  v17 = 0;
LABEL_18:
  WebRtcOpus_DisableDtx(v17, a2, a3, a4, a5, a6, a7, a8);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 454, "0 == WebRtcOpus_DisableDtx(inst_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v18, v19, v20, v21, 0);
  return webrtc::AudioEncoderOpusImpl::GetDtx(v22);
}

void webrtc::AudioEncoderOpusImpl::SetApplication(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v11 = *(a1 + 8);
  v12 = v8;
  *v13 = *(a1 + 40);
  *&v13[13] = *(a1 + 53);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v17 = *(a1 + 88);
  if (a2 <= 1)
  {
    LODWORD(v12) = a2;
  }

  webrtc::AudioEncoderOpusImpl::RecreateEncoderInstance(a1, &v11, a3, a4, a5, a6, a7, a8);
}

void webrtc::AudioEncoderOpusImpl::SetMaxPlaybackRate(webrtc::AudioEncoderOpusImpl *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 24);
  v16[0] = *(this + 8);
  v16[1] = v8;
  *v17 = *(this + 40);
  *&v17[13] = *(this + 53);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v10 = *(this + 8);
  v9 = *(this + 9);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v21 = *(this + 11);
  *v17 = a2;
  webrtc::AudioEncoderOpusImpl::RecreateEncoderInstance(this, v16, a3, a4, a5, a6, a7, a8);
  if ((v15 & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 480, "RecreateEncoderInstance(conf)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, v14, *&v16[0]);
    goto LABEL_7;
  }
}

uint64_t webrtc::AudioEncoderOpusImpl::EnableAudioNetworkAdaptor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  v12[2] = v5;
  v12[3] = v4;
  v12[1] = a3;
  v6 = *(a1 + 224);
  if (v6)
  {
    (*(*v6 + 48))(v12);
    v7 = v12[0];
    v12[0] = 0;
    v8 = *(a1 + 232);
    *(a1 + 232) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v12[0];
      v12[0] = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    return *(a1 + 232) != 0;
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::AudioEncoderOpusImpl::DisableAudioNetworkAdaptor(v11);
  }
}

uint64_t webrtc::AudioEncoderOpusImpl::DisableAudioNetworkAdaptor(webrtc::AudioEncoderOpusImpl *this)
{
  result = *(this + 29);
  *(this + 29) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void webrtc::AudioEncoderOpusImpl::OnReceivedUplinkPacketLossFraction(webrtc::AudioEncoderOpusImpl *this, float a2)
{
  v2 = a2;
  v4 = *(this + 29);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
    webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(this);
  }

  v5 = *(this + 24);
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

  v13 = v6 / 1000000;
  v14 = *(v5 + 12);
  if (v14 != -1.0)
  {
    v15 = v13 - *v5;
    v16 = *(v5 + 8);
    if (v15 != 1)
    {
      v16 = powf(v16, v15);
    }

    v2 = ((1.0 - v16) * v2) + (v16 * v14);
  }

  v17 = *(v5 + 16);
  if (v2 <= v17 || v17 == -1.0)
  {
    v17 = v2;
  }

  *(v5 + 12) = v17;
  *v5 = v13;
  v19 = *(*(this + 24) + 12);
  if (v19 == -1.0)
  {
    v19 = 0.0;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v19 > 0.2)
  {
    v19 = 0.2;
  }

  if (*(this + 32) != v19)
  {
    *(this + 32) = v19;
    v20 = *(this + 20);
    v21 = (v19 * 100.0) + 0.5;
    v22 = v21;
    if (!v20)
    {
      v23 = 0;
      goto LABEL_32;
    }

    if (*v20)
    {
      if (!opus_encoder_ctl(*v20, 4014, v7, v8, v9, v10, v11, v12, v21))
      {
        return;
      }

      goto LABEL_30;
    }

    if (opus_multistream_encoder_ctl(v20[1], 4014, v7, v8, v9, v10, v11, v12, v21))
    {
LABEL_30:
      v23 = *(this + 20);
      v22 = ((*(this + 32) * 100.0) + 0.5);
LABEL_32:
      WebRtcOpus_SetPacketLossRate(v23, v22, v7, v8, v9, v10, v11, v12);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 744, "0 == WebRtcOpus_SetPacketLossRate( inst_, static_cast<int32_t>(packet_loss_rate_ * 100 + .5))", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v24, v25, v26, v27, 0);
      webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(v28);
    }
  }
}

void webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(webrtc::AudioEncoderOpusImpl *this)
{
  (*(**(this + 29) + 56))(&v16);
  if (BYTE4(v16) == 1)
  {
    webrtc::AudioEncoderOpusImpl::SetTargetBitrate(this, v16, v2, v3, v4, v5, v6, v7);
    if (v18 != 1)
    {
LABEL_3:
      if (v20 != 1)
      {
        goto LABEL_4;
      }

LABEL_11:
      webrtc::AudioEncoderOpusImpl::SetDtx(this, v19, v2, v3, v4, v5, v6, v7);
      if (v22 != 1)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if (v18 != 1)
  {
    goto LABEL_3;
  }

  v8 = v17;
  if (*(this + 46) != v17 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
  }

  *(this + 46) = v8;
  if (v20 == 1)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v22 != 1)
  {
    return;
  }

LABEL_12:
  v10 = v21;
  if (*(this + 22) != v21)
  {
    v11 = *(this + 20);
    if (!v11)
    {
      goto LABEL_22;
    }

    if (v21)
    {
      if (v21 > 2)
      {
        goto LABEL_22;
      }

      if (!*v11)
      {
        goto LABEL_23;
      }

      if (opus_encoder_ctl(*v11, 4022, v2, v3, v4, v5, v6, v7, v21))
      {
        goto LABEL_21;
      }

LABEL_26:
      *(this + 22) = v10;
      return;
    }

    if (*v11)
    {
      if (!opus_encoder_ctl(*v11, 4022, v2, v3, v4, v5, v6, v7, 4294966296))
      {
        goto LABEL_26;
      }
    }

    else if (!opus_multistream_encoder_ctl(v11[1], 4022, v2, v3, v4, v5, v6, v7, 4294966296))
    {
      goto LABEL_26;
    }

    do
    {
LABEL_21:
      v11 = *(this + 20);
LABEL_22:
      WebRtcOpus_SetForceChannels(v11, v10, v2, v3, v4, v5, v6, v7);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 734, "0 == WebRtcOpus_SetForceChannels(inst_, num_channels_to_encode)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v12, v13, v14, v15, 0);
LABEL_23:
      ;
    }

    while (opus_multistream_encoder_ctl(v11[1], 4022, v2, v3, v4, v5, v6, v7, v10));
    goto LABEL_26;
  }
}

void webrtc::AudioEncoderOpusImpl::SetTargetBitrate(webrtc::AudioEncoderOpusImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0x7C830)
  {
    v9 = 510000;
  }

  else
  {
    v9 = a2;
  }

  if (a2 <= 6000)
  {
    v10 = 6000;
  }

  else
  {
    v10 = v9;
  }

  if (*(this + 32) != 1)
  {
    goto LABEL_35;
  }

  v8 = this;
  if (*(this + 7) == v10)
  {
    goto LABEL_20;
  }

  *(this + 7) = v10;
  *(this + 32) = 1;
  v11 = *(this + 20);
  a2 = *(this + 13);
  if (v10 >> 3 >= 0x271)
  {
    v12 = v10 / 0x3E8uLL;
    v13 = (*(this + 14) - a2) >> 2;
    v9 = v10;
    if (v13 + 5 > v12)
    {
      if (v13 > v12 - 5)
      {
        v9 = (*(a2 + 4 * (v12 - 5)) * v10);
        goto LABEL_13;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

LABEL_13:
  if (!v11)
  {
LABEL_36:
    v22 = 0;
    goto LABEL_37;
  }

  if (*v11)
  {
    if (!opus_encoder_ctl(*v11, 4002, a3, a4, a5, a6, a7, a8, v9))
    {
      goto LABEL_16;
    }

LABEL_32:
    v22 = *(v8 + 20);
    a2 = *(v8 + 13);
LABEL_37:
    WebRtcOpus_SetBitRate(v22, MultipliedBitrate, v25, v26, v27, v28, v29, v30);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 758, "0 == WebRtcOpus_SetBitRate( inst_, GetMultipliedBitrate(bitrate, bitrate_multipliers_))", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v31, v32, v33, v34, 0);
    goto LABEL_38;
  }

  if (opus_multistream_encoder_ctl(v11[1], 4002, a3, a4, a5, a6, a7, a8, v9))
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
  }

  *(v8 + 102) = 1;
  if ((*(v8 + 32) & 1) == 0)
  {
    goto LABEL_35;
  }

  LODWORD(v10) = *(v8 + 7);
LABEL_20:
  v14 = *(v8 + 13);
  v15 = *(v8 + 14);
  v16 = v14 - v15;
  v17 = v15 + v14;
  v18 = v10 >= v16 && v10 <= v17;
  if (v18)
  {
    return;
  }

  v18 = v10 <= v14;
  v19 = 40;
  if (!v18)
  {
    v19 = 36;
  }

  v20 = *(v8 + v19 + 8);
  if (*(v8 + 47) == v20)
  {
    return;
  }

  *(v8 + 47) = v20;
  v21 = *(v8 + 20);
  if (!v21)
  {
LABEL_38:
    v23 = 0;
    goto LABEL_39;
  }

  if (*v21)
  {
    if (!opus_encoder_ctl(*v21, 4010, a3, a4, a5, a6, a7, a8, v20))
    {
      return;
    }

    goto LABEL_34;
  }

  if (opus_multistream_encoder_ctl(v21[1], 4010, a3, a4, a5, a6, a7, a8, v20))
  {
LABEL_34:
    v23 = *(v8 + 20);
    v20 = *(v8 + 47);
LABEL_39:
    WebRtcOpus_SetComplexity(v23, v20, a3, a4, a5, a6, a7, a8);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 766, "0 == WebRtcOpus_SetComplexity(inst_, complexity_)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v35, v36, v37, v38, 0);
    webrtc::AudioEncoderOpusImpl::OnReceivedUplinkBandwidth(v39);
  }
}

void webrtc::AudioEncoderOpusImpl::OnReceivedUplinkBandwidth(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(this + 29);
  if (v10)
  {
    v11 = a6;
    v13 = a4;
    v14 = a3;
    (*(*v10 + 40))(v10, a2);
    if (*(this + 100) == 1)
    {
      if (v11)
      {
        (*(**(this + 29) + 16))(*(this + 29), a5);
      }
    }

    else
    {
      if (v13)
      {
        (*(**(this + 32) + 32))(*(this + 32), (4 * v14));
      }

      (*(**(this + 32) + 16))(*(this + 32), v8);
    }

    webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(this);
  }

  else if (*(this + 248))
  {
    v15 = *(this + 2);
    if (v15 % 10)
    {
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v15 % 10));
      webrtc::AudioEncoderOpusImpl::OnReceivedUplinkBandwidth();
    }

    else
    {
      v16 = a2 - 800 * *(this + 30) / (v15 / 10);
      if (v16 <= 6000)
      {
        v16 = 6000;
      }

      if (v16 >= 510000)
      {
        v17 = 510000;
      }

      else
      {
        v17 = v16;
      }

      webrtc::AudioEncoderOpusImpl::SetTargetBitrate(this, v17, a3, a4, a5, a6, a7, a8);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc");
  }
}

void webrtc::AudioEncoderOpusImpl::OnReceivedUplinkAllocation(webrtc::AudioEncoderOpusImpl *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[4];
  v9 = v8 / 0x3E8uLL;
  if (v8 % 0x3E8uLL > 0x1F3)
  {
    ++v9;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8 < 0)
  {
    v11 = (v10 - -v8 / 0x3E8uLL);
  }

  else
  {
    v11 = v9;
  }

  webrtc::AudioEncoderOpusImpl::OnReceivedUplinkBandwidth(a1, *a2, v11, 1, a2[1], 1, a7, a8);
}

void webrtc::AudioEncoderOpusImpl::OnReceivedRtt(webrtc::AudioEncoderOpusImpl *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 32))(v2);

    webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(this);
  }
}

void webrtc::AudioEncoderOpusImpl::OnReceivedOverhead(webrtc::AudioEncoderOpusImpl *this, uint64_t a2)
{
  v3 = *(this + 29);
  if (v3)
  {
    (*(*v3 + 48))(v3);

    webrtc::AudioEncoderOpusImpl::ApplyAudioNetworkAdaptor(this);
  }

  else
  {
    *(this + 30) = a2;
    *(this + 248) = 1;
  }
}

void *webrtc::AudioEncoderOpusImpl::SetReceiverFrameLengthRange(void *this, int a2, int a3)
{
  v5 = this + 8;
  this[9] = this[8];
  if (a2 <= 20 && a3 >= 20)
  {
  }

  if (a2 <= 40 && a3 >= 40)
  {
    this = std::vector<unsigned int>::push_back[abi:sn200100](v5, &dword_273B8E8A4);
  }

  if (a2 <= 60 && a3 >= 60)
  {

    return std::vector<unsigned int>::push_back[abi:sn200100](v5, &dword_273B8E8A8);
  }

  return this;
}

void webrtc::AudioEncoderOpusImpl::EncodeImpl(uint64_t a1@<X0>, int a2@<W1>, __int16 *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 232) && (*(a1 + 100) & 1) == 0)
  {
    v11 = a3;
    if (webrtc::g_clock)
    {
      v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v13 = v12 / 1000000;
    if (*(a1 + 272) != 1 || (a3 = v11, v13 - *(a1 + 264) >= *(a1 + 88)))
    {
      v14 = (*(**(a1 + 256) + 24))(*(a1 + 256));
      if ((v14 & 0x100000000) != 0)
      {
        (*(**(a1 + 232) + 16))(*(a1 + 232), *&v14);
      }

      *(a1 + 264) = v13;
      *(a1 + 272) = 1;
      a3 = v11;
    }
  }

  v15 = *(a1 + 144);
  if (*(a1 + 136) == v15)
  {
    *(a1 + 168) = a2;
  }

  std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(a1 + 136, v15, a3, &a3[a4], (2 * a4) >> 1);
  v22 = *(a1 + 8);
  v23 = v22 / 10;
  v24 = (v22 % 10);
  if (v24)
  {
    goto LABEL_71;
  }

  v25 = *(a1 + 12);
  v26 = v25 / 100;
  if (v25 % 100)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v18, v19, v20, v21, (v25 % 100));
    goto LABEL_73;
  }

  v27 = *(a1 + 136);
  v24 = *(a1 + 144);
  a4 = (v24 - v27) >> 1;
  v28 = v23 * v26 * *(a1 + 16);
  if (a4 < v28)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 256;
    *(a6 + 20) = 0;
    *(a6 + 36) = 0;
    *(a6 + 28) = 0;
    *(a6 + 44) = 0;
    return;
  }

  if (a4 != v28)
  {
    goto LABEL_73;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_70;
  }

  v29 = 20 * v23 * (*(a1 + 28) / 8000 + 1);
  *(a6 + 8) = 0;
  *(a6 + 16) = 256;
  *(a6 + 20) = 0;
  *(a6 + 36) = 0;
  *(a6 + 28) = 0;
  *(a6 + 44) = 0;
  v30 = *a5;
  v31 = v29 + *a5;
  if (*(a5 + 8) < v31)
  {
    operator new[]();
  }

  *a5 = v31;
  if (v24 == v27)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v18, v19, v20, v21, v24);
LABEL_73:
    webrtc::AudioEncoderMultiChannelOpusImpl::Num10msFramesPerPacket(v22, v27, v16, v17, v18, v19, v20, v21);
    webrtc::AudioEncoderOpusImpl::SamplesPer10msFrame(a1, v49, v50, v51, v52, v53, v54, v55);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 610, "input_buffer_.size() == Num10msFramesPerPacket() * SamplesPer10msFrame()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v56, v57, v58, v59, a4);
    goto LABEL_74;
  }

  v32 = *(a1 + 16);
  v33 = a4 / v32;
  v34 = a4 % v32;
  if (a4 % v32)
  {
LABEL_74:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v34);
    goto LABEL_75;
  }

  if (v29 >= 0x7FFF)
  {
    v18 = 0x7FFFLL;
  }

  else
  {
    v18 = v29;
  }

  if (v33 > 0xB40)
  {
    goto LABEL_41;
  }

  a4 = *(a1 + 160);
  if (*a4)
  {
    v35 = opus_encode(*a4, v27, v33);
    if (v35 >= 1)
    {
      goto LABEL_31;
    }

LABEL_41:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 621, "status >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v18, v19, v20, v21, 0xFFFFFFFFLL);
    goto LABEL_42;
  }

  v35 = opus_multistream_encode(*(a4 + 8));
  if (v35 < 1)
  {
    goto LABEL_41;
  }

LABEL_31:
  if (v35 > 2)
  {
    *(a4 + 24) = 0;
    v38 = v35;
    if (v29 >= v35)
    {
      goto LABEL_35;
    }

LABEL_43:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/buffer.h", 328, "written_elements <= max_elements", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v38);
    goto LABEL_44;
  }

  if (!*(a4 + 24))
  {
LABEL_42:
    *(a4 + 24) = 1;
    v38 = v35;
    if (v29 >= v35)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  v38 = 0;
LABEL_35:
  *a5 = v38 + v30;
  *a6 = v38;
  *(a1 + 144) = *(a1 + 136);
  *(a1 + 8) = *(a1 + 184);
  if (*(a1 + 101) != 1 || *(a1 + 102) != 1)
  {
LABEL_61:
    v45 = *(a1 + 96);
    *(a6 + 8) = *(a1 + 168);
    *(a6 + 12) = v45;
    *(a6 + 16) = 1;
    v46 = *(a1 + 160);
    if (v46)
    {
      v73 = 0;
      if (*v46)
      {
        if (opus_encoder_ctl(*v46, 4049, v36, v37, v18, v19, v20, v21, &v73))
        {
          goto LABEL_64;
        }
      }

      else if (opus_multistream_encoder_ctl(v46[1], 4049, v36, v37, v18, v19, v20, v21, &v73))
      {
        goto LABEL_64;
      }

      v47 = v73;
      goto LABEL_67;
    }

LABEL_64:
    v47 = 0xFFFF;
LABEL_67:
    *(a6 + 17) = v47 == 0;
    *(a6 + 20) = 1;
    return;
  }

  v24 = *(a1 + 32);
  if ((v24 & 1) == 0)
  {
    goto LABEL_70;
  }

  LODWORD(a5) = *(a1 + 28);
  if (a5 > 11000)
  {
    v39 = -1024;
    v40 = 24;
    goto LABEL_57;
  }

LABEL_44:
  v41 = *(a1 + 160);
  if (v41)
  {
    v72 = 0;
    if (*v41)
    {
      v42 = opus_encoder_ctl(*v41, 4009, v36, v37, v18, v19, v20, v21, &v72);
    }

    else
    {
      v42 = opus_multistream_encoder_ctl(v41[1], 4009, v36, v37, v18, v19, v20, v21, &v72);
    }

    v43 = v72;
    if (v42)
    {
      v43 = -1;
    }
  }

  else
  {
    v43 = -1;
  }

  if (a5 < 9001 || v43 >= 1103)
  {
    if (a5 > 7999 || v43 < 1102)
    {
      goto LABEL_60;
    }

    v39 = 1024;
    v40 = 77;
  }

  else
  {
    v39 = 1024;
    v40 = 79;
  }

LABEL_57:
  a5 = v39 | v40;
  v44 = *(a1 + 160);
  if (!v44)
  {
LABEL_75:
    v48 = 0;
    goto LABEL_76;
  }

  if (*v44)
  {
    if (!opus_encoder_ctl(*v44, 4008, v36, v37, v18, v19, v20, v21, a5))
    {
LABEL_60:
      *(a1 + 102) = 0;
      goto LABEL_61;
    }
  }

  else if (!opus_multistream_encoder_ctl(v44[1], 4008, v36, v37, v18, v19, v20, v21, a5))
  {
    goto LABEL_60;
  }

  v48 = *(a1 + 160);
LABEL_76:
  WebRtcOpus_SetBandwidth(v48, a5, v36, v37, v18, v19, v20, v21);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/opus/audio_encoder_opus.cc", 633, "0 == WebRtcOpus_SetBandwidth(inst_, *bandwidth)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v60, v61, v62, v63, 0);
  webrtc::AudioEncoderOpusImpl::SamplesPer10msFrame(v64, v65, v66, v67, v68, v69, v70, v71);
}

uint64_t webrtc::AudioEncoderOpusImpl::SamplesPer10msFrame(webrtc::AudioEncoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 3);
  if (!(v8 % 100))
  {
    return *(this + 2) * (v8 / 100);
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, (v8 % 100));
}

uint64_t webrtc::anonymous namespace::GetMultipliedBitrate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 3 >= 0x271)
  {
    v3 = result / 0x3E8uLL;
    v4 = (a3 - a2) >> 2;
    if (v4 + 5 > v3)
    {
      v5 = v3 - 5;
      if (v4 <= v5)
      {
        __break(1u);
      }

      else
      {
        return (*(a2 + 4 * v5) * result);
      }
    }
  }

  return result;
}

uint64_t webrtc::AudioEncoderOpusImpl::GetANAStats@<X0>(webrtc::AudioEncoderOpusImpl *this@<X0>, _BYTE *a2@<X8>)
{
  result = *(this + 29);
  if (result)
  {
    return (*(*result + 80))();
  }

  *a2 = 0;
  a2[4] = 0;
  a2[8] = 0;
  a2[12] = 0;
  a2[16] = 0;
  a2[20] = 0;
  a2[24] = 0;
  a2[28] = 0;
  a2[32] = 0;
  a2[36] = 0;
  a2[40] = 0;
  a2[44] = 0;
  a2[48] = 0;
  a2[52] = 0;
  return result;
}

uint64_t webrtc::AudioEncoderOpusImpl::GetFrameLengthRange@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 232))
  {
    v3 = *(this + 64);
    v2 = *(this + 72);
    if (v3 == v2)
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      v4 = 1000 * *(v2 - 1);
      *a2 = 1000 * *v3;
      *(a2 + 8) = v4;
      *(a2 + 16) = 1;
    }
  }

  else
  {
    v5 = 1000 * *(this + 8);
    *a2 = v5;
    *(a2 + 8) = v5;
    *(a2 + 16) = 1;
  }

  return this;
}

uint64_t std::__function::__func<webrtc::AudioEncoderOpusImpl::AudioEncoderOpusImpl(webrtc::Environment const&,webrtc::AudioEncoderOpusConfig const&,int)::$_0,std::allocator<webrtc::AudioEncoderOpusImpl::AudioEncoderOpusImpl(webrtc::Environment const&,webrtc::AudioEncoderOpusConfig const&,int)::$_0>,std::unique_ptr<webrtc::AudioNetworkAdaptor> ()(std::string_view,webrtc::RtcEventLog *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828DD80;
  a2[1] = v2;
  return result;
}

uint64_t webrtc::AudioEncoderPcm::AudioEncoderPcm(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = &unk_28828DDC8;
  *(result + 8) = a3;
  v8 = *(a2 + 1);
  *(result + 16) = v8;
  *(result + 24) = a2[4];
  v9 = *a2;
  v10 = v8 * a3 * v9;
  *(result + 32) = v9 / 10;
  *(result + 40) = v10 / 0x3E8;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  if (a3 <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g711/audio_encoder_pcm.cc", 41, "sample_rate_hz > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, a3);
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g711/audio_encoder_pcm.cc", 42, "config.frame_size_ms % 10 == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, v11);
    webrtc::AudioEncoderPcm::~AudioEncoderPcm(v12);
  }

  v11 = (*a2 % 10);
  if (v11)
  {
    goto LABEL_7;
  }

  if (v10 >= 0x3E8)
  {
    operator new();
  }

  return result;
}

uint64_t webrtc::AudioEncoderPcm::GetTargetBitrate(webrtc::AudioEncoderPcm *this)
{
  v2 = (*(*this + 248))(this);
  v3 = v2 * (*(*this + 16))(this);
  return 8 * v3 * (*(*this + 24))(this);
}

char *webrtc::AudioEncoderPcm::EncodeImpl@<X0>(void *a1@<X0>, int a2@<W1>, __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a1[6];
  v11 = a1[7];
  v10 = (a1 + 6);
  if (v12 == v11)
  {
    *(a1 + 18) = a2;
  }

  result = std::vector<short>::__insert_with_size[abi:sn200100]<short const*,short const*>(v10, v11, a3, &a3[a4], (2 * a4) >> 1);
  v18 = a1[5];
  v19 = (a1[7] - a1[6]) >> 1;
  if (v19 < v18)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 256;
    *(a6 + 20) = 0;
    *(a6 + 36) = 0;
    *(a6 + 28) = 0;
    *(a6 + 44) = 0;
    return result;
  }

  if (v19 != v18)
  {
    goto LABEL_12;
  }

  *(a6 + 16) = 256;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 24) = 0;
  v20 = *(a1 + 6);
  *(a6 + 8) = *(a1 + 18);
  *(a6 + 12) = v20;
  v21 = (*(*a1 + 248))(a1) * v19;
  v22 = *a5;
  v23 = *a5 + v21;
  if (a5[1] < v23)
  {
    operator new[]();
  }

  *a5 = v23;
  if (a1[7] == a1[6])
  {
    __break(1u);
LABEL_12:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/g711/audio_encoder_pcm.cc", 81, "speech_buffer_.size() == full_frame_samples_", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v14, v15, v16, v17, v19);
    goto LABEL_13;
  }

  v24 = (*(*a1 + 240))(a1);
  if (v24 <= v21)
  {
    *a5 = v24 + v22;
    *a6 = v24;
    a1[7] = a1[6];
    result = (*(*a1 + 256))(a1);
    *(a6 + 20) = result;
    return result;
  }

LABEL_13:
  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/buffer.h", 328, "written_elements <= max_elements", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v25, v26, v27, v28, v24);
  return webrtc::AudioEncoderPcm::Reset(v29);
}

uint64_t webrtc::AudioEncoderPcm::GetFrameLengthRange@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = 10000 * *(this + 32);
  *a2 = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  return this;
}

unint64_t webrtc::AudioEncoderPcmA::EncodeCall(webrtc::AudioEncoderPcmA *this, unsigned __int8 *a2, unint64_t a3, int8x16_t *a4)
{
  result = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 4 && (&a2[2 * a3] <= a4 || &a4->i8[a3] <= a2))
  {
    if (a3 >= 0x10)
    {
      v5 = a3 & 0xFFFFFFFFFFFFFFF0;
      v18.i64[0] = 0xD5000000D5;
      v18.i64[1] = 0xD5000000D5;
      v19.i64[0] = 0x5500000055;
      v19.i64[1] = 0x5500000055;
      v20.i64[0] = 0x800000008;
      v20.i64[1] = 0x800000008;
      v21.i64[0] = 0xF0F0F0F0F0F0F0F0;
      v21.i64[1] = 0xF0F0F0F0F0F0F0F0;
      v22.i64[0] = 0x400000004;
      v22.i64[1] = 0x400000004;
      v23.i64[0] = 0xCCCCCCCCCCCCCCCCLL;
      v23.i64[1] = 0xCCCCCCCCCCCCCCCCLL;
      v24.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v24.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v25.i64[0] = 0xF0000000FLL;
      v25.i64[1] = 0xF0000000FLL;
      v26.i64[0] = 0x600000006;
      v26.i64[1] = 0x600000006;
      v27 = a3 & 0xFFFFFFFFFFFFFFF0;
      v28.i64[0] = 0x300000003;
      v28.i64[1] = 0x300000003;
      v29 = a4;
      v30 = a2;
      do
      {
        v31 = *(v30 + 1);
        v32 = vmovl_s16(*v30);
        v33 = vmovl_high_s16(*v30);
        v34 = vmovl_s16(*v31.i8);
        v35 = vmovl_high_s16(v31);
        v36 = vcltzq_s32(v35);
        v37 = vcltzq_s32(v34);
        v38 = vcltzq_s32(v33);
        v39 = vcltzq_s32(v32);
        v40 = veorq_s8(v39, v32);
        v41 = veorq_s8(v38, v33);
        v42 = veorq_s8(v37, v34);
        v43 = veorq_s8(v36, v35);
        v122.val[0] = vbslq_s8(v39, v19, v18);
        v122.val[2] = vbslq_s8(v37, v19, v18);
        v122.val[1] = vbslq_s8(v38, v19, v18);
        v122.val[3] = vbslq_s8(v36, v19, v18);
        v44 = vceqzq_s32((*&v43 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v45 = vceqzq_s32((*&v42 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v46 = vceqzq_s32((*&v41 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v47 = vceqzq_s32((*&v40 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v48 = vbslq_s8(v47, (*&v40 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v40 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v49 = vbslq_s8(v46, (*&v41 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v41 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v50 = vbslq_s8(v45, (*&v42 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v42 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v51 = vbslq_s8(v44, (*&v43 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v43 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v52 = vbicq_s8(v20, v44);
        v53 = vbicq_s8(v20, v45);
        v54 = vbicq_s8(v20, v46);
        v55 = vbicq_s8(v20, v47);
        v56 = vandq_s8(v51, v21);
        v57 = vandq_s8(v50, v21);
        v58 = vandq_s8(v49, v21);
        v59 = vandq_s8(v48, v21);
        v60 = vceqzq_s32(v56);
        v61 = vbslq_s8(v60, v51, v56);
        v62 = vbslq_s8(v60, v52, (*&v52 | __PAIR128__(0x400000004, 0x400000004)));
        v63 = vceqzq_s32(v57);
        v64 = vbslq_s8(v63, v50, v57);
        v65 = vceqzq_s32(v59);
        v66 = vbslq_s8(v63, v53, (*&v53 | __PAIR128__(0x400000004, 0x400000004)));
        v67 = vceqzq_s32(v58);
        v68 = vbslq_s8(v67, v49, v58);
        v69 = vbslq_s8(v65, v48, v59);
        v70 = vbslq_s8(v67, v54, (*&v54 | __PAIR128__(0x400000004, 0x400000004)));
        v71 = vbslq_s8(v65, v55, (*&v55 | __PAIR128__(0x400000004, 0x400000004)));
        v72 = vandq_s8(v69, v23);
        v73 = vandq_s8(v68, v23);
        v74 = vandq_s8(v64, v23);
        v75 = vandq_s8(v61, v23);
        v76 = vceqzq_s32(v75);
        v77 = vbslq_s8(v76, v61, v75);
        v78 = vceqzq_s32(v74);
        v79 = vbslq_s8(v78, v64, v74);
        v80 = vceqzq_s32(v73);
        v81 = vbslq_s8(v78, v66, (*&v66 | __PAIR128__(0x200000002, 0x200000002)));
        v82 = vceqzq_s32(v72);
        v83 = vsubq_s32(vbslq_s8(v82, v71, (*&v71 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(vbslq_s8(v82, v69, v72), v24));
        v84 = vsubq_s32(vbslq_s8(v80, v70, (*&v70 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(vbslq_s8(v80, v68, v73), v24));
        v85 = vsubq_s32(v81, vtstq_s32(v79, v24));
        v86 = vsubq_s32(vbslq_s8(v76, v62, (*&v62 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(v77, v24));
        v87 = vaddq_s32(v83, v26);
        v88 = vaddq_s32(v85, v26);
        v89 = vaddq_s32(v84, v26);
        v90 = vaddq_s32(v86, v26);
        v121.val[3] = veorq_s8(vsliq_n_s32(vshlq_u32(v43, vnegq_s32(vbslq_s8(vceqzq_s32(v90), v22, vaddq_s32(v86, v28)))), v90, 4uLL), v122.val[3]);
        v121.val[1] = veorq_s8(vsliq_n_s32(vshlq_u32(v41, vnegq_s32(vbslq_s8(vceqzq_s32(v89), v22, vaddq_s32(v84, v28)))), v89, 4uLL), v122.val[1]);
        v121.val[2] = veorq_s8(vsliq_n_s32(vshlq_u32(v42, vnegq_s32(vbslq_s8(vceqzq_s32(v88), v22, vaddq_s32(v85, v28)))), v88, 4uLL), v122.val[2]);
        v121.val[0] = veorq_s8(vsliq_n_s32(vshlq_u32(v40, vnegq_s32(vbslq_s8(vceqzq_s32(v87), v22, vaddq_s32(v83, v28)))), v87, 4uLL), v122.val[0]);
        v122.val[0] = vqtbl4q_s8(v122, xmmword_273B8E8C0);
        v122.val[1].i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v122.val[1].i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        *v29++ = vbslq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_s32(v83, v25), vceqq_s32(v84, v25)), vuzp1q_s16(vceqq_s32(v85, v25), vceqq_s32(v86, v25))), veorq_s8(v122.val[0], v122.val[1]), vqtbl4q_s8(v121, xmmword_273B8E8C0));
        v30 += 32;
        v27 -= 16;
      }

      while (v27);
      if (v5 == a3)
      {
        return result;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v91.i64[0] = 0xD5000000D5;
    v91.i64[1] = 0xD5000000D5;
    v92 = v5;
    v93.i64[0] = 0x5500000055;
    v93.i64[1] = 0x5500000055;
    v5 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v94.i64[0] = 0x800000008;
    v94.i64[1] = 0x800000008;
    v95 = &a2[2 * v92];
    v96.i64[0] = 0xF0F0F0F0F0F0F0F0;
    v96.i64[1] = 0xF0F0F0F0F0F0F0F0;
    v97 = &a4->u8[v92];
    v98.i64[0] = 0x400000004;
    v98.i64[1] = 0x400000004;
    v99 = v92 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v100.i64[0] = 0xCCCCCCCCCCCCCCCCLL;
    v100.i64[1] = 0xCCCCCCCCCCCCCCCCLL;
    v101.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v101.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v102.i64[0] = 0xF0000000FLL;
    v102.i64[1] = 0xF0000000FLL;
    v103.i64[0] = 0x600000006;
    v103.i64[1] = 0x600000006;
    v104.i64[0] = 0x300000003;
    v104.i64[1] = 0x300000003;
    do
    {
      v105 = *v95;
      v95 += 4;
      v106 = vmovl_s16(v105);
      v107 = vcltzq_s32(v106);
      v108 = veorq_s8(v107, v106);
      v109 = vceqzq_s32((*&v108 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
      v110 = vbslq_s8(v109, (*&v108 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v108 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
      v111 = vbicq_s8(v94, v109);
      v112 = vandq_s8(v110, v96);
      v113 = vceqzq_s32(v112);
      v114 = vbslq_s8(v113, v110, v112);
      v115 = vbslq_s8(v113, v111, (*&v111 | __PAIR128__(0x400000004, 0x400000004)));
      v116 = vandq_s8(v114, v100);
      v117 = vceqzq_s32(v116);
      v118 = vbslq_s8(v107, v93, v91);
      v119 = vsubq_s32(vbslq_s8(v117, v115, (*&v115 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(vbslq_s8(v117, v114, v116), v101));
      v120 = vaddq_s32(v119, v103);
      *v97 = vuzp1_s8(vbsl_s8(vmovn_s32(vceqq_s32(v119, v102)), veor_s8(vmovn_s32(v118), 0x7F007F007F007FLL), vmovn_s32(veorq_s8(vsliq_n_s32(vshlq_u32(v108, vnegq_s32(vbslq_s8(vceqzq_s32(v120), v98, vaddq_s32(v119, v104)))), v120, 4uLL), v118))), *v91.i8).u32[0];
      v97 += 4;
      v99 += 4;
    }

    while (v99);
    if (v5 == a3)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  v6 = a3 - v5;
  v7 = &a4->u8[v5];
  v8 = &a2[2 * v5];
  do
  {
    v9 = *v8++;
    v10 = v9 ^ (v9 >> 31);
    if (v9 >= 0)
    {
      v11 = 213;
    }

    else
    {
      v11 = 85;
    }

    v12 = v10 | 0xFF;
    if ((v10 & 0xFF00FF00) != 0)
    {
      v12 = v10 & 0xFF00FF00;
    }

    v13 = 8 * ((v10 & 0xFF00FF00) != 0);
    if ((v12 & 0xF0F0F0F0) != 0)
    {
      v12 &= 0xF0F0F0F0;
      v13 = (8 * ((v10 & 0xFF00FF00) != 0)) | 4;
    }

    if ((v12 & 0xCCCCCCCC) != 0)
    {
      v12 &= 0xCCCCCCCC;
      v13 |= 2u;
    }

    if ((v12 & 0xAAAAAAAA) != 0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 - 4;
    if (v14 == 7)
    {
      v15 = 4;
    }

    v16 = ((v10 >> v15) & 0xF | (16 * (v14 - 7))) ^ v11;
    v17 = v11 ^ 0x7F;
    if (v14 != 15)
    {
      v17 = v16;
    }

    *v7++ = v17;
    --v6;
  }

  while (v6);
  return result;
}

unint64_t webrtc::AudioEncoderPcmU::EncodeCall(webrtc::AudioEncoderPcmU *this, unsigned __int8 *a2, unint64_t a3, int8x16_t *a4)
{
  result = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 4 && (&a2[2 * a3] <= a4 || &a4->i8[a3] <= a2))
  {
    if (a3 >= 0x10)
    {
      v5 = a3 & 0xFFFFFFFFFFFFFFF0;
      v20.i64[0] = 0x8300000083;
      v20.i64[1] = 0x8300000083;
      v21.i64[0] = 0x800000008;
      v21.i64[1] = 0x800000008;
      v22.i64[0] = 0xF0F0F0F0F0F0F0F0;
      v22.i64[1] = 0xF0F0F0F0F0F0F0F0;
      v23.i64[0] = 0xCCCCCCCCCCCCCCCCLL;
      v23.i64[1] = 0xCCCCCCCCCCCCCCCCLL;
      v24.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v24.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v25.i64[0] = 0xF0000000FLL;
      v25.i64[1] = 0xF0000000FLL;
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      v27 = a3 & 0xFFFFFFFFFFFFFFF0;
      v28.i64[0] = 0x9000000090;
      v28.i64[1] = 0x9000000090;
      v29 = a4;
      v30 = a2;
      do
      {
        v31 = *(v30 + 1);
        v32 = vcltzq_s32(vmovl_high_s16(v31));
        v33 = vcltzq_s32(vmovl_s16(*v31.i8));
        v34 = vcltzq_s32(vmovl_high_s16(*v30));
        v35 = vcltzq_s32(vmovl_s16(*v30));
        v36 = vsubw_high_s16(v20, v31);
        v37 = vsubw_s16(v20, *v31.i8);
        v38.i64[0] = 0x8400000084;
        v38.i64[1] = 0x8400000084;
        v39 = vaddw_high_s16(v38, v31);
        v40 = vaddw_s16(v38, *v31.i8);
        v41 = vbslq_s8(v35, vsubw_s16(v20, *v30), vaddw_s16(v38, *v30));
        v42 = vbslq_s8(v34, vsubw_high_s16(v20, *v30), vaddw_high_s16(v38, *v30));
        v43 = vbslq_s8(v33, v37, v40);
        v44 = vbslq_s8(v32, v36, v39);
        v45 = vceqzq_s32((*&v44 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v46 = vceqzq_s32((*&v43 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v47 = vceqzq_s32((*&v41 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v48 = vbslq_s8(v47, (*&v41 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v41 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v49 = vceqzq_s32((*&v42 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v50 = vbslq_s8(v49, (*&v42 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v42 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v51 = vbslq_s8(v46, (*&v43 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v43 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v52 = vbslq_s8(v45, (*&v44 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v44 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
        v53 = vbicq_s8(v21, v45);
        v54 = vbicq_s8(v21, v46);
        v55 = vbicq_s8(v21, v49);
        v56 = vbicq_s8(v21, v47);
        v57 = vandq_s8(v52, v22);
        v58 = vandq_s8(v51, v22);
        v59 = vceqzq_s32(v57);
        v60 = vbslq_s8(v59, v52, v57);
        v61 = vbslq_s8(v59, v53, (*&v53 | __PAIR128__(0x400000004, 0x400000004)));
        v62 = vandq_s8(v50, v22);
        v63 = vceqzq_s32(v58);
        v64 = vbslq_s8(v63, v51, v58);
        v65 = vbslq_s8(v63, v54, (*&v54 | __PAIR128__(0x400000004, 0x400000004)));
        v66 = vandq_s8(v48, v22);
        v67 = vceqzq_s32(v62);
        v68 = vbslq_s8(v67, v50, v62);
        v69 = vbslq_s8(v67, v55, (*&v55 | __PAIR128__(0x400000004, 0x400000004)));
        v70 = vceqzq_s32(v66);
        v71 = vbslq_s8(v70, v48, v66);
        v72 = vbslq_s8(v70, v56, (*&v56 | __PAIR128__(0x400000004, 0x400000004)));
        v73 = vandq_s8(v71, v23);
        v74 = vandq_s8(v60, v23);
        v75 = vceqzq_s32(v74);
        v76 = vbslq_s8(v75, v60, v74);
        v77 = vbslq_s8(v75, v61, (*&v61 | __PAIR128__(0x200000002, 0x200000002)));
        v78 = vandq_s8(v64, v23);
        v79 = vceqzq_s32(v78);
        v80 = vbslq_s8(v79, v64, v78);
        v81 = vbslq_s8(v79, v65, (*&v65 | __PAIR128__(0x200000002, 0x200000002)));
        v82 = vandq_s8(v68, v23);
        v83 = vceqzq_s32(v82);
        v84 = vbslq_s8(v83, v68, v82);
        v85 = vceqzq_s32(v73);
        v86 = vbslq_s8(v85, v71, v73);
        v87 = vbslq_s8(v85, v72, (*&v72 | __PAIR128__(0x200000002, 0x200000002)));
        v73.i64[0] = 0xFF000000FFLL;
        v73.i64[1] = 0xFF000000FFLL;
        v85.i64[0] = 0x7F0000007FLL;
        v85.i64[1] = 0x7F0000007FLL;
        v121.val[0] = vbslq_s8(v35, v85, v73);
        v121.val[2] = vbslq_s8(v33, v85, v73);
        v121.val[1] = vbslq_s8(v34, v85, v73);
        v121.val[3] = vbslq_s8(v32, v85, v73);
        v88 = vsubq_s32(v87, vtstq_s32(v86, v24));
        v89 = vsubq_s32(vbslq_s8(v83, v69, (*&v69 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(v84, v24));
        v90 = vsubq_s32(v81, vtstq_s32(v80, v24));
        v91 = vsubq_s32(v77, vtstq_s32(v76, v24));
        v122.val[3] = veorq_s8(vaddq_s32(vsliq_n_s32(vshlq_u32(v44, vsubq_s32(v26, v91)), v91, 4uLL), v28), v121.val[3]);
        v122.val[1] = veorq_s8(vaddq_s32(vsliq_n_s32(vshlq_u32(v42, vsubq_s32(v26, v89)), v89, 4uLL), v28), v121.val[1]);
        v122.val[2] = veorq_s8(vaddq_s32(vsliq_n_s32(vshlq_u32(v43, vsubq_s32(v26, v90)), v90, 4uLL), v28), v121.val[2]);
        v122.val[0] = veorq_s8(vaddq_s32(vsliq_n_s32(vshlq_u32(v41, vsubq_s32(v26, v88)), v88, 4uLL), v28), v121.val[0]);
        v121.val[0] = vqtbl4q_s8(v121, xmmword_273B8E8C0);
        v121.val[1] = vuzp1q_s8(vuzp1q_s16(vceqq_s32(v88, v25), vceqq_s32(v89, v25)), vuzp1q_s16(vceqq_s32(v90, v25), vceqq_s32(v91, v25)));
        v121.val[2].i64[0] = 0x8080808080808080;
        v121.val[2].i64[1] = 0x8080808080808080;
        *v29++ = vorrq_s8(vandq_s8(vandq_s8(v121.val[0], v121.val[2]), v121.val[1]), vbicq_s8(vqtbl4q_s8(v122, xmmword_273B8E8C0), v121.val[1]));
        v30 += 32;
        v27 -= 16;
      }

      while (v27);
      if (v5 == a3)
      {
        return result;
      }

      if ((a3 & 0xC) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v92.i64[0] = 0x8300000083;
    v92.i64[1] = 0x8300000083;
    v93 = v5;
    v94.i64[0] = 0x8400000084;
    v94.i64[1] = 0x8400000084;
    v5 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v95.i64[0] = 0xFF000000FFLL;
    v95.i64[1] = 0xFF000000FFLL;
    v96 = &a2[2 * v93];
    v97.i64[0] = 0x7F0000007FLL;
    v97.i64[1] = 0x7F0000007FLL;
    v98 = &a4->u8[v93];
    v99.i64[0] = 0x800000008;
    v99.i64[1] = 0x800000008;
    v100 = v93 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v101.i64[0] = 0xF0F0F0F0F0F0F0F0;
    v101.i64[1] = 0xF0F0F0F0F0F0F0F0;
    v102.i64[0] = 0xCCCCCCCCCCCCCCCCLL;
    v102.i64[1] = 0xCCCCCCCCCCCCCCCCLL;
    v103.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v103.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v104.i64[0] = 0xF0000000FLL;
    v104.i64[1] = 0xF0000000FLL;
    v105.i64[0] = 0x400000004;
    v105.i64[1] = 0x400000004;
    v106.i64[0] = 0x9000000090;
    v106.i64[1] = 0x9000000090;
    do
    {
      v107 = *v96;
      v96 += 4;
      v108 = vcltzq_s32(vmovl_s16(v107));
      v109 = vbslq_s8(v108, vsubw_s16(v92, v107), vaddw_s16(v94, v107));
      v110 = vbslq_s8(v108, v97, v95);
      v111 = vceqzq_s32((*&v109 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
      v112 = vbslq_s8(v111, (*&v109 | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL)), (*&v109 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)));
      v113 = vbicq_s8(v99, v111);
      v114 = vandq_s8(v112, v101);
      v115 = vceqzq_s32(v114);
      v116 = vbslq_s8(v115, v112, v114);
      v117 = vbslq_s8(v115, v113, (*&v113 | __PAIR128__(0x400000004, 0x400000004)));
      v118 = vandq_s8(v116, v102);
      v119 = vceqzq_s32(v118);
      v120 = vsubq_s32(vbslq_s8(v119, v117, (*&v117 | __PAIR128__(0x200000002, 0x200000002))), vtstq_s32(vbslq_s8(v119, v116, v118), v103));
      *v98 = vuzp1_s8(vbsl_s8(vmovn_s32(vceqq_s32(v120, v104)), (*&vmovn_s32(v110) & 0xFF80FF80FF80FF80), vmovn_s32(veorq_s8(vaddq_s32(vsliq_n_s32(vshlq_u32(v109, vsubq_s32(v105, v120)), v120, 4uLL), v106), v110))), *v92.i8).u32[0];
      v98 += 4;
      v100 += 4;
    }

    while (v100);
    if (v5 == a3)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  v6 = a3 - v5;
  v7 = &a4->u8[v5];
  v8 = &a2[2 * v5];
  do
  {
    v9 = *v8++;
    v10 = 131 - v9;
    v11 = v9 + 132;
    v12 = v9 < 0;
    if (v9 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    if (v12)
    {
      v14 = 127;
    }

    else
    {
      v14 = 255;
    }

    v15 = v13 | 0xFF;
    if ((v13 & 0xFF00FF00) != 0)
    {
      v15 = v13 & 0xFF00FF00;
    }

    v16 = 8 * ((v13 & 0xFF00FF00) != 0);
    if ((v15 & 0xF0F0F0F0) != 0)
    {
      v15 &= 0xF0F0F0F0;
      v16 = (8 * ((v13 & 0xFF00FF00) != 0)) | 4;
    }

    if ((v15 & 0xCCCCCCCC) != 0)
    {
      v15 &= 0xCCCCCCCC;
      v16 |= 2u;
    }

    if ((v15 & 0xAAAAAAAA) != 0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = (((v13 >> (v17 - 4)) & 0xF | (16 * v17)) + 144) ^ v14;
    v19 = v14 & 0x80;
    if (v17 == 15)
    {
      LOBYTE(v18) = v19;
    }

    *v7++ = v18;
    --v6;
  }

  while (v6);
  return result;
}

void webrtc::AudioEncoderPcmA::~AudioEncoderPcmA(webrtc::AudioEncoderPcmA *this)
{
  *this = &unk_28828DDC8;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28828DDC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioEncoderPcmU::~AudioEncoderPcmU(webrtc::AudioEncoderPcmU *this)
{
  *this = &unk_28828DDC8;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28828DDC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

unint64_t webrtc::AudioEncoderPcm16B::EncodeCall(webrtc::AudioEncoderPcm16B *this, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  result = 2 * a3;
  if (!a3)
  {
    return result;
  }

  if (a3 < 8)
  {
    goto LABEL_3;
  }

  v5 = 0;
  v6 = 2 * (a3 - 1);
  v7 = &a4[v6];
  v8 = &a4[v6 + 1];
  v9 = v7 >= a4 && v8 >= a4 + 1;
  if (!v9 || ((a3 - 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (&a2[result] > a4 && &a4[result] > a2)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_21;
  }

  if (a3 >= 0x20)
  {
    v5 = a3 & 0xFFFFFFFFFFFFFFE0;
    v10 = (a4 + 32);
    v11 = (a2 + 32);
    v12 = a3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *(v11 - 2);
      v13 = *(v11 - 1);
      v16 = *v11;
      v15 = *(v11 + 1);
      v11 += 32;
      v30.val[0] = vuzp2q_s8(v14, v13);
      v30.val[1] = vuzp1q_s8(v14, v13);
      v17 = v10 - 32;
      vst2q_s8(v17, v30);
      v29.val[0] = vuzp2q_s8(v16, v15);
      v29.val[1] = vuzp1q_s8(v16, v15);
      vst2q_s8(v10, v29);
      v10 += 64;
      v12 -= 32;
    }

    while (v12);
    if (v5 == a3)
    {
      return result;
    }

    if ((a3 & 0x18) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = a3 - v5;
    v25 = 2 * v5;
    v26 = &a4[2 * v5 + 1];
    v27 = &a2[v25];
    do
    {
      v28 = *v27++;
      *(v26 - 1) = bswap32(v28) >> 16;
      v26 += 2;
      --v24;
    }

    while (v24);
    return result;
  }

  v5 = 0;
LABEL_18:
  v18 = v5;
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v19 = &a2[2 * v18];
  v20 = &a4[2 * v18];
  v21 = v18 - (a3 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v22 = *v19;
    v19 += 8;
    v23 = vshrq_n_u16(v22, 8uLL);
    *v20++ = vuzp1q_s8(vzip1q_s16(v23, v22), vzip2q_s16(v23, v22));
    v21 += 8;
  }

  while (v21);
  if (v5 != a3)
  {
    goto LABEL_21;
  }

  return result;
}

void webrtc::AudioEncoderPcm16B::~AudioEncoderPcm16B(webrtc::AudioEncoderPcm16B *this)
{
  *this = &unk_28828DDC8;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28828DDC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

std::string *webrtc::SdpAudioFormat::SdpAudioFormat(std::string *this, const webrtc::SdpAudioFormat *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = &this[2];
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__l.__size_ = 0;
  v6 = *(a2 + 5);
  v7 = a2 + 48;
  if (v6 != v7)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&this[1].__r_.__value_.__r.__words[2], &this[2], v6 + 4);
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  return this;
}

unint64_t webrtc::SdpAudioFormat::SdpAudioFormat(unint64_t a1, _BYTE *a2, size_t a3, int a4, uint64_t a5, const void ***a6)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  v10 = (a1 + a3);
  if (a1 <= a2 && v10 > a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v10 = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 56) = 0;
  v13 = *a6;
  v11 = a6 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>((a1 + 40), (a1 + 48), v12 + 4);
      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v11);
  }

  return a1;
}

void webrtc::SdpAudioFormat::~SdpAudioFormat(webrtc::SdpAudioFormat *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::SdpAudioFormat::operator=(uint64_t __dst, _BYTE **a2)
{
  v2 = a2;
  v3 = __dst;
  if (__dst == a2)
  {
    *(__dst + 24) = *(a2 + 3);
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

    *(v3 + 24) = *(v2 + 3);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v3 + 40, v2[5], v2 + 6);
    return v3;
  }

  return __dst;
}

uint64_t webrtc::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = a2[23];
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v2 != v4)
  {
    return 0;
  }

  if (v2)
  {
    while (1)
    {
      v10 = *v3++;
      v9 = v10;
      v12 = *v5++;
      v11 = v12;
      if (v9 != v12)
      {
        if ((v9 - 65) < 0x1A)
        {
          LOBYTE(v9) = v9 + 32;
        }

        if ((v11 - 65) < 0x1A)
        {
          LOBYTE(v11) = v11 + 32;
        }

        if (v9 != v11)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 6) != *(a2 + 6) || *(a1 + 4) != *(a2 + 4) || *(a1 + 7) != *(a2 + 7))
    {
      return 0;
    }

    v6 = *(a1 + 5);
    v7 = a1 + 48;
    if (v6 != a1 + 48)
    {
      v8 = *(a2 + 5);
      while (1)
      {
        v14 = v6[55];
        if (v14 >= 0)
        {
          v15 = v6[55];
        }

        else
        {
          v15 = *(v6 + 5);
        }

        v16 = *(v8 + 55);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = v8[5];
        }

        if (v15 != v16)
        {
          break;
        }

        v18 = v14 >= 0 ? v6 + 32 : *(v6 + 4);
        v19 = v17 >= 0 ? v8 + 4 : v8[4];
        if (memcmp(v18, v19, v15))
        {
          break;
        }

        v20 = v6[79];
        if (v20 >= 0)
        {
          v21 = v6[79];
        }

        else
        {
          v21 = *(v6 + 8);
        }

        v22 = *(v8 + 79);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = v8[8];
        }

        if (v21 != v22)
        {
          break;
        }

        v24 = v20 >= 0 ? v6 + 56 : *(v6 + 7);
        v25 = v23 >= 0 ? v8 + 7 : v8[7];
        if (memcmp(v24, v25, v21))
        {
          break;
        }

        v26 = *(v6 + 1);
        v27 = v6;
        if (v26)
        {
          do
          {
            v6 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v6 = *(v27 + 2);
            v28 = *v6 == v27;
            v27 = v6;
          }

          while (!v28);
        }

        v29 = v8[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v8[2];
            v28 = *v30 == v8;
            v8 = v30;
          }

          while (!v28);
        }

        result = 1;
        v8 = v30;
        if (v6 == v7)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t a1, const std::string::value_type **a2, const std::string::value_type **a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v33 = v10[1];
        if (!v33)
        {
          break;
        }

        do
        {
          v10 = v33;
          v33 = *v33;
        }

        while (v33);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 == a3)
  {
    v12 = v9;
    goto LABEL_13;
  }

  v14 = a2;
  do
  {
    v12 = v10;
    v15 = v9 + 4;
    v34[0] = (v9 + 4);
    v34[1] = (v9 + 7);
    std::pair<std::string &,std::string &>::operator=[abi:sn200100]<std::string const,std::string,0>(v34, v14 + 32);
    v16 = *v8;
    v17 = (a1 + 8);
    v18 = (a1 + 8);
    if (!*v8)
    {
      goto LABEL_40;
    }

    if (*(v9 + 55) >= 0)
    {
      v19 = *(v9 + 55);
    }

    else
    {
      v15 = v9[4];
      v19 = v9[5];
    }

    do
    {
      while (1)
      {
        v17 = v16;
        v22 = v16[4];
        v20 = v16 + 4;
        v21 = v22;
        v23 = *(v20 + 23);
        v24 = v23 >= 0 ? v20 : v21;
        v25 = v23 >= 0 ? *(v20 + 23) : v20[1];
        v26 = v25 >= v19 ? v19 : v25;
        v27 = memcmp(v15, v24, v26);
        if (v27)
        {
          break;
        }

        if (v19 >= v25)
        {
          goto LABEL_38;
        }

LABEL_24:
        v16 = *v17;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_40;
        }
      }

      if (v27 < 0)
      {
        goto LABEL_24;
      }

LABEL_38:
      v16 = v17[1];
    }

    while (v16);
    v18 = v17 + 1;
LABEL_40:
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    *v18 = v9;
    v28 = **a1;
    if (v28)
    {
      *a1 = v28;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
    ++*(a1 + 16);
    if (v12)
    {
      v10 = *(v12 + 16);
      if (v10)
      {
        v31 = *v10;
        if (*v10 == v12)
        {
          *v10 = 0;
          while (1)
          {
            v32 = v10[1];
            if (!v32)
            {
              break;
            }

            do
            {
              v10 = v32;
              v32 = *v32;
            }

            while (v32);
          }
        }

        else
        {
          for (v10[1] = 0; v31; v31 = v10[1])
          {
            do
            {
              v10 = v31;
              v31 = *v31;
            }

            while (v31);
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = *(v14 + 1);
    if (v29)
    {
      do
      {
        v4 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v4 = *(v14 + 2);
        v30 = *v4 == v14;
        v14 = v4;
      }

      while (!v30);
    }

    if (!v12)
    {
      break;
    }

    v14 = v4;
    v9 = v12;
  }

  while (v4 != a3);
LABEL_13:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }
}

uint64_t *std::pair<std::string &,std::string &>::operator=[abi:sn200100]<std::string const,std::string,0>(uint64_t *a1, const std::string::value_type *a2)
{
  v2 = a2;
  v4 = *a1;
  if (v4 != a2)
  {
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      if (a2[23] < 0)
      {
        std::string::__assign_no_alias<true>(v4, *a2, *(a2 + 1));
        v6 = v2 + 24;
        v7 = a1[1];
        if (v7 == (v2 + 24))
        {
          return a1;
        }
      }

      else
      {
        v5 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v5;
        v6 = a2 + 24;
        v7 = a1[1];
        if (v7 == (a2 + 24))
        {
          return a1;
        }
      }

      goto LABEL_11;
    }

    if (a2[23] >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = *(v2 + 1);
    }

    std::string::__assign_no_alias<false>(v4, a2, v8);
  }

  v6 = v2 + 24;
  v7 = a1[1];
  if (v7 == (v2 + 24))
  {
    return a1;
  }

LABEL_11:
  v9 = v2[47];
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    if (v9 >= 0)
    {
      v12 = v6;
    }

    else
    {
      v12 = *(v2 + 3);
    }

    if (v9 >= 0)
    {
      v13 = *(v2 + 47);
    }

    else
    {
      v13 = *(v2 + 4);
    }

    std::string::__assign_no_alias<false>(v7, v12, v13);
    return a1;
  }

  else
  {
    if ((v2[47] & 0x80) == 0)
    {
      v10 = *v6;
      v7->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v7->__r_.__value_.__l.__data_ = v10;
      return a1;
    }

    std::string::__assign_no_alias<true>(v7, *(v2 + 3), *(v2 + 4));
    return a1;
  }
}

char *webrtc::AudioFrame::UpdateFrame(char *result, int a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a8 >= 0x19)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 75, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a8);
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 88, "length <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v10);
    return webrtc::AudioFrame::CopyFrom(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v8 = result;
  *result = a2;
  *(result + 3) = a4;
  *(result + 8) = a5;
  *(result + 12) = a6;
  *(result + 13) = a7;
  *(result + 5) = a8;
  if ((a8 - 1) > 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = dword_273B8E8D0[(a8 - 1)];
  }

  *(result + 3859) = v9;
  v10 = a8 * a4;
  if (a8 * a4 >= 0x1E01)
  {
    goto LABEL_10;
  }

  if (__src)
  {
    result = memcpy(result + 72, __src, 2 * v10);
    v8[15432] = 0;
  }

  else
  {
    result[15432] = 1;
  }

  return result;
}

char *webrtc::AudioFrame::CopyFrom(char *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result != a2)
  {
    v8 = result + 12288;
    if (result[15432] == 1 && (a2[15432] & 1) == 0)
    {
      v9 = result;
      v10 = a2;
      bzero(result + 72, 0x3C00uLL);
      a2 = v10;
      result = v9;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v11 = *(a2 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
    }

    v12 = *(result + 8);
    if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      v13 = a2;
      v14 = result;
      v15 = *(v12 + 8);
      if (v15)
      {
        v16 = *(v12 + 16);
        v17 = *(v12 + 8);
        if (v16 != v15)
        {
          do
          {
            v18 = *(v16 - 96);
            if (v18)
            {
              *(v16 - 88) = v18;
              operator delete(v18);
            }

            v16 -= 104;
          }

          while (v16 != v15);
          v17 = *(v12 + 8);
        }

        *(v12 + 16) = v15;
        operator delete(v17);
      }

      MEMORY[0x2743DA540](v12, 0x1020C40E72D6CFBLL);
      result = v14;
      a2 = v13;
    }

    *(result + 8) = v11;
    v8[3144] = a2[15432];
    *(result + 3) = *(a2 + 3);
    *(result + 8) = *(a2 + 8);
    *(result + 6) = *(a2 + 6);
    *(result + 5) = *(a2 + 5);
    *(result + 3859) = *(a2 + 3859);
    v19 = *(a2 + 1931);
    *(result + 1930) = *(a2 + 1930);
    v8[3160] = v19;
    if (a2[15432] != 1)
    {
      v20 = a2 + 72;
      goto LABEL_22;
    }

    v11 = &unk_280905000;
    {
      goto LABEL_30;
    }

    while (1)
    {
      v20 = *(v11 + 257);
LABEL_22:
      v21 = *(a2 + 5) * *(a2 + 3);
      if (v21 < 0x1E01)
      {
        break;
      }

      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 125, "data.size() <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, *(a2 + 5) * *(a2 + 3));
LABEL_30:
      v23 = result;
      v24 = a2;
      a2 = v24;
      v26 = v25;
      result = v23;
      if (v26)
      {
        operator new[]();
      }
    }

    if (v21 && (v8[3144] & 1) == 0)
    {
      v22 = result + 72;

      return memcpy(v22, v20, 2 * v21);
    }
  }

  return result;
}

void webrtc::AudioFrame::mutable_data(webrtc::AudioFrame *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = a3 * a2;
  if (a3 * a2 >= 0x1E01)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a4, a5, a6, a7, a3 * a2);
    goto LABEL_10;
  }

  v8 = a3;
  if (a3 >= 0x19)
  {
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 175, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a4, a5, a6, a7, v8);
    webrtc::RemixFrame(v15, v16, v17);
    return;
  }

  v13 = this + 72;
  if (*(this + 15432) == 1)
  {
    bzero(this + 72, 2 * v10);
    *(this + 15432) = 0;
  }

  *(this + 3) = a2;
  *(this + 5) = v8;
  *a8 = v8;
  a8[1] = a2;
  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a8[2] = v14;
  a8[3] = v10;
}

void webrtc::RemixFrame(uint64_t this, uint64_t a2, webrtc::AudioFrame *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 40);
  if (v8 == this)
  {
    return;
  }

  if (this <= 2 && v8 <= 2)
  {
    if (v8 <= this)
    {
      if (v8 == 1)
      {
        v30 = *(a2 + 24);
        if ((v30 * this) <= 0x1E00)
        {
          if (*(a2 + 15432))
          {
            *(a2 + 40) = this;
          }

          else
          {
            v31 = a2 + 72;
            *(a2 + 40) = this;
            if (!(v30 * this))
            {
              v31 = 0;
            }

            v32 = (v30 - 1);
            if (v30 - 1 >= 0)
            {
              v33 = v31 + 2 * this * v32;
              v34 = v33 + 16;
              do
              {
                v35 = *(v31 + 2 * v32);
                v36 = 0;
                do
                {
                  *(v33 + 2 * v36) = v35;
                  v36 = (v36 + 1);
                }

                while (this != v36);
                v33 -= 2 * this;
                v34 -= 2 * this;
              }

              while (v32-- > 0);
            }
          }
        }
      }
    }

    else
    {

      webrtc::AudioFrameOperations::DownmixChannels(this, a2, v8, a4, this, a6, a7, a8);
    }

    return;
  }

  if ((this - 1) > 7)
  {
    v9 = 1;
    v10 = v8 - 1;
    v11 = a2;
    if ((v8 - 1) > 7)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = dword_273B8E8F0[v10];
    goto LABEL_13;
  }

  v9 = dword_273B8E8F0[(this - 1)];
  v10 = v8 - 1;
  v11 = a2;
  if ((v8 - 1) <= 7)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 1;
LABEL_13:
  webrtc::ChannelMixer::ChannelMixer(v38, v12, v8, v9, this, a6, a7, a8);
  webrtc::ChannelMixer::Transform(v38, v11, v19, v20, v21, v22, v13, v14, v15, v16, v17, v18);
  v23 = v41;
  v41 = 0;
  if (v23)
  {
    MEMORY[0x2743DA520](v23, 0x1000C80BDFB0063);
  }

  v24 = __p;
  if (__p)
  {
    v25 = v40;
    v26 = __p;
    if (v40 != __p)
    {
      v27 = v40;
      do
      {
        v29 = *(v27 - 3);
        v27 -= 24;
        v28 = v29;
        if (v29)
        {
          *(v25 - 2) = v28;
          operator delete(v28);
        }

        v25 = v27;
      }

      while (v27 != v24);
      v26 = __p;
    }

    v40 = v24;
    operator delete(v26);
  }
}