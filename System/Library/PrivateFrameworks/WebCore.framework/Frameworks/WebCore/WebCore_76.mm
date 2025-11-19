uint64_t webrtc::Vp8TemporalLayers::SetQpLimits(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 16))(*(v2 + 8 * a2), 0);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::SupportsEncoderFrameDropping(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 32))(*(v2 + 8 * a2), 0);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnRatesUpdated(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (a2 < (*(result + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 40))(*(v2 + 8 * a2), 0);
  }

  __break(1u);
  return result;
}

uint64_t webrtc::Vp8TemporalLayers::UpdateConfiguration(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 48))(*(v2 + 8 * a2), 0);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::NextFrameConfig(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 56))(*(v2 + 8 * a2), 0);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnEncodeDone(uint64_t this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, webrtc::CodecSpecificInfo *a7)
{
  v7 = *(this + 8);
  if (a2 < (*(this + 16) - v7) >> 3)
  {
    return (*(**(v7 + 8 * a2) + 64))(*(v7 + 8 * a2), 0, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnFrameDropped(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return (*(**(v2 + 8 * a2) + 72))();
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnPacketLossRateUpdate(uint64_t this, float a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = (*(*v5 + 80))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnRttUpdate(uint64_t this, uint64_t a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = (*(*v5 + 88))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t webrtc::Vp8TemporalLayers::OnLossNotification(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 96))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

void webrtc::Vp8TemporalLayers::~Vp8TemporalLayers(webrtc::Vp8TemporalLayers *this)
{
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
          (*(*v5 + 8))(v5);
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
          (*(*v5 + 8))(v5);
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

void webrtc::Vp8TemporalLayersFactory::Create(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a2 + 32);
  }

  if (v2 >= 8)
  {
    v4 = v3 & 0xF8;
    v6 = (a2 + 160);
    v7 = 0uLL;
    v8 = v4;
    v9 = 0uLL;
    do
    {
      v10.i32[0] = *(v6 - 27);
      v10.i32[1] = *(v6 - 18);
      v10.i32[2] = *(v6 - 9);
      v10.i32[3] = *v6;
      v11.i32[0] = v6[9];
      v11.i32[1] = v6[18];
      v11.i32[2] = v6[27];
      v11.i32[3] = v6[36];
      v7 = vaddq_s32(v10, v7);
      v9 = vaddq_s32(v11, v9);
      v6 += 72;
      v8 -= 8;
    }

    while (v8);
    v5 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v4 == v3)
    {
LABEL_11:
      operator new();
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v12 = v3 - v4;
  v13 = (a2 + 36 * v4 + 52);
  do
  {
    v14 = *v13;
    v13 += 9;
    v5 += v14;
    --v12;
  }

  while (v12);
  goto LABEL_11;
}

void std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v1 <= 0x2AAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
    {
      v2 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

BOOL webrtc::Vp9FrameBufferPool::InitializeVpxUsePool(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (v2 && *(a2 + 48))
  {
    if ((*(v2 + 18) & 0x40) != 0)
    {
      v5 = (*(v2 + 80))();
      *(a2 + 16) = v5;
      return v5 == 0;
    }

    else
    {
      *(a2 + 16) = 4;
      return 0;
    }
  }

  else
  {
    *(a2 + 16) = 1;
    return 0;
  }
}

uint64_t webrtc::Vp9FrameBufferPool::VpxGetFrameBuffer(uint64_t a1, unint64_t a2, void *a3)
{
  pthread_mutex_lock(a1);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v6 == v7)
  {
    goto LABEL_4;
  }

  while (atomic_load_explicit(*v6, memory_order_acquire) != 1)
  {
    if (++v6 == v7)
    {
      goto LABEL_4;
    }
  }

  v8 = *v6;
  if (!*v6)
  {
LABEL_4:
    operator new();
  }

  atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
  pthread_mutex_unlock(a1);
  if (*(v8 + 2) < a2)
  {
    operator new[]();
  }

  *(v8 + 1) = a2;
  *a3 = *(v8 + 3);
  a3[1] = a2;
  a3[2] = v8;
  return 0;
}

uint64_t webrtc::Vp9FrameBufferPool::VpxReleaseFrameBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = a2;
      v4 = *(v2 + 24);
      *(v2 + 24) = 0;
      if (v4)
      {
        MEMORY[0x2743DA520](v4, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v2, 0x1010C40A70995B8);
      a2 = v3;
    }

    *(a2 + 16) = 0;
  }

  return 0;
}

uint64_t webrtc::Vp9FrameBufferPool::Resize(pthread_mutex_t *this, unint64_t a2)
{
  result = pthread_mutex_lock(this);
  sig = this[1].__sig;
  v5 = *this[1].__opaque;
  if (sig != v5)
  {
    v7 = 0;
    do
    {
      v8 = *sig++;
      if (atomic_load_explicit(v8, memory_order_acquire) != 1)
      {
        ++v7;
      }
    }

    while (sig != v5);
    if (v7 > a2)
    {
      v9 = 0;
LABEL_41:
      pthread_mutex_unlock(this);
      return v9;
    }

    sig = this[1].__sig;
    v5 = *this[1].__opaque;
  }

  v10 = v5 - sig;
  v11 = v10 - a2;
  *&this[1].__opaque[16] = a2;
  if (v5 == sig || v10 == a2)
  {
LABEL_40:
    v9 = 1;
    goto LABEL_41;
  }

  while (1)
  {
    while (atomic_load_explicit(*sig, memory_order_acquire) != 1)
    {
      if (++sig == *this[1].__opaque || v11 == 0)
      {
        goto LABEL_40;
      }
    }

    v14 = *this[1].__opaque;
    if (v14 == sig)
    {
      break;
    }

    v15 = sig + 1;
    if (sig + 1 == v14)
    {
      v16 = sig;
    }

    else
    {
      do
      {
        v17 = *(v15 - 1);
        *(v15 - 1) = *v15;
        *v15 = 0;
        if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
        {
          v18 = *(v17 + 24);
          *(v17 + 24) = 0;
          if (v18)
          {
            MEMORY[0x2743DA520](v18, 0x1000C8077774924);
          }

          result = MEMORY[0x2743DA540](v17, 0x1010C40A70995B8);
        }

        ++v15;
      }

      while (v15 != v14);
      v14 = *this[1].__opaque;
      v16 = v15 - 1;
    }

    while (v14 != v16)
    {
      v20 = *(v14-- - 1);
      v19 = v20;
      if (v20 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        v21 = *(v19 + 24);
        *(v19 + 24) = 0;
        if (v21)
        {
          MEMORY[0x2743DA520](v21, 0x1000C8077774924);
        }

        result = MEMORY[0x2743DA540](v19, 0x1010C40A70995B8);
      }
    }

    *this[1].__opaque = v16;
    --v11;
    if (sig == v16 || v11 == 0)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

uint64_t webrtc::ParseSdpForVP9Profile(uint64_t result)
{
  v1 = result;
  v21 = 10;
  if (__p <= "profile-id" && &__p[1] + 2 > "profile-id")
  {
    __break(1u);
  }

  else
  {
    strcpy(__p, "profile-id");
    v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(result, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = (v1 + 8);
    v4 = 0x100000000;
    if (v3 != v2)
    {
      v7 = v2[7];
      v6 = v2 + 7;
      v5 = v7;
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      v11 = webrtc::string_to_number_internal::ParseSigned(v9, v10, 0xAuLL);
      if ((v12 & ((v11 + 0x80000000) >> 32 == 0)) != 0)
      {
        v13 = v11 | 0x100000000;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = ((v13 & 0xFFFFFFFC) == 0) << 32;
      if ((v13 & 0xFFFFFFFC) != 0)
      {
        v14 = 0;
      }

      v16 = HIDWORD(v13);
      v17 = v16 == 0;
      if (v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v14;
      }

      return v18 | v19;
    }

    return v4;
  }

  return result;
}

void webrtc::Parse(uint8x16_t *this, uint64_t a2, char a3)
{
  v4 = this->i32[2];
  this->i8[12] = 0;
  if (v4 <= 1)
  {
    this->i32[2] = -1;
    goto LABEL_13;
  }

  v5 = v4 & 7;
  this->i32[2] = v4 - 2;
  v6 = this->i64[0];
  if (v5 >= 3)
  {
    v7 = (*v6 >> (v5 - 2)) & 3;
    goto LABEL_10;
  }

  if ((v4 & 7) != 0)
  {
    v8 = *v6++;
    v7 = (v8 & ~(-1 << v5)) << (2 - v5);
    this->i64[0] = v6;
    if (v5 == 2)
    {
      goto LABEL_10;
    }

    v9 = 7;
  }

  else
  {
    v7 = 0;
    v9 = 6;
  }

  v7 |= *v6 >> v9;
LABEL_10:
  if (v7 != 2)
  {
LABEL_13:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  this->i8[12] = 0;
  if (v4 == 2)
  {
    v10 = 0;
    this->i32[2] = -1;
LABEL_17:
    *a2 = v10;
    this->i8[12] = 0;
LABEL_18:
    this->i32[2] = -1;
    *(a2 + 6) = 1;
    *(a2 + 8) = 0;
LABEL_19:
    this->i8[12] = 0;
LABEL_20:
    this->i32[2] = -1;
    goto LABEL_21;
  }

  this->i32[2] = v4 - 3;
  if (((v4 - 3) & 7) != 0)
  {
    v10 = (*v6 >> ((v4 - 3) & 7)) & 1;
    *a2 = v10;
    this->i8[12] = 0;
    if (v4 < 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    this->i64[0] = (v6 + 1);
    v10 = *v6++ & 1;
    *a2 = v10;
    this->i8[12] = 0;
    if (v4 < 4)
    {
      goto LABEL_17;
    }
  }

  v18 = v4 - 4;
  this->i32[2] = v4 - 4;
  if (((v4 - 4) & 7) != 0)
  {
    v19 = v10 | (2 * ((*v6 >> ((v4 - 4) & 7)) & 1));
    *a2 = v19;
    if (v19 <= 2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    this->i64[0] = (v6 + 1);
    v20 = *v6++ & 1;
    v19 = v10 | (2 * v20);
    *a2 = v19;
    if (v19 <= 2)
    {
      goto LABEL_37;
    }
  }

  this->i8[12] = 0;
  if (v4 == 4)
  {
    goto LABEL_18;
  }

  v18 = v4 - 5;
  this->i32[2] = v4 - 5;
  if (((v4 - 5) & 7) != 0)
  {
    v21 = (*v6 >> ((v4 - 5) & 7)) & 1;
  }

  else
  {
    this->i64[0] = (v6 + 1);
    v21 = *v6++ & 1;
  }

  if (v21)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_37:
  this->i8[12] = 0;
  if (!v18)
  {
    goto LABEL_18;
  }

  this->i32[2] = v18 - 1;
  v22 = (v18 - 1) & 7;
  if (v22)
  {
    v23 = (*v6 >> v22) & 1;
  }

  else
  {
    this->i64[0] = (v6 + 1);
    v23 = *v6++ & 1;
  }

  this->i8[12] = 0;
  if (!v23)
  {
    if (v18 == 1)
    {
      goto LABEL_18;
    }

    this->i32[2] = v18 - 2;
    if (((v18 - 2) & 7) != 0)
    {
      v25 = *v6 >> ((v18 - 2) & 7);
    }

    else
    {
      this->i64[0] = (v6 + 1);
      LOBYTE(v25) = *v6++;
    }

    v28 = v25 & 1;
    *(a2 + 6) = !(v25 & 1);
    this->i8[12] = 0;
    v29 = a2;
    if (v18 <= 2)
    {
      *(a2 + 7) = 0;
      this->i32[2] = -1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }

      v30 = (a2 + 8);
      goto LABEL_56;
    }

    this->i32[2] = v18 - 3;
    if (((v18 - 3) & 7) != 0)
    {
      v37 = *v6 >> ((v18 - 3) & 7);
    }

    else
    {
      this->i64[0] = (v6 + 1);
      LOBYTE(v37) = *v6++;
    }

    *(a2 + 7) = v37 & 1;
    this->i8[12] = 0;
    if (v18 == 3)
    {
      this->i32[2] = -1;
      *(a2 + 8) = 0;
      v30 = (a2 + 8);
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }

      if ((v37 & 1) == 0)
      {
LABEL_56:
        v31 = 0;
        v32 = -1;
        this->i32[2] = -1;
LABEL_57:
        v33 = v6;
        goto LABEL_58;
      }

      this->i8[12] = 0;
LABEL_74:
      v31 = 0;
      v32 = -1;
      goto LABEL_57;
    }

    v39 = v18 - 4;
    this->i32[2] = v18 - 4;
    v40 = (v18 - 4) & 7;
    if (v40)
    {
      v41 = (*v6 >> v40) & 1;
      v42 = ((*v6 >> v40) & 1) == 0;
      *(a2 + 8) = v41;
      v30 = (a2 + 8);
      if (v25)
      {
        v33 = v6;
        goto LABEL_86;
      }
    }

    else
    {
      v33 = v6 + 1;
      this->i64[0] = (v6 + 1);
      v41 = *v6 & 1;
      v42 = v41 == 0;
      *(a2 + 8) = v41;
      v30 = (a2 + 8);
      if (v28)
      {
LABEL_86:
        if (v37)
        {
          if (v42)
          {
            if (v39 < 2)
            {
              v6 = v33;
              this->i8[12] = 0;
              goto LABEL_74;
            }

            LOBYTE(v39) = v18 - 6;
            v6 = &v33[((v18 + 3) >> 3) - ((v18 + 1) >> 3)];
            this->i64[0] = v6;
            this->i8[12] = 0;
            v32 = v18 - 14;
            if ((v18 - 6) < 8)
            {
              goto LABEL_74;
            }

            goto LABEL_244;
          }

LABEL_243:
          v6 = v33;
          this->i8[12] = 0;
          v32 = v39 - 8;
          if (v39 < 8)
          {
            goto LABEL_74;
          }

LABEL_244:
          this->i32[2] = v32;
          v31 = *v6;
          v139 = v39 & 7;
          v33 = v6 + 1;
          this->i64[0] = (v6 + 1);
          if (v139)
          {
            v31 = ((v31 & ~(-1 << v139)) << (8 - v139)) | (v6[1] >> v139);
          }

LABEL_58:
          *(a2 + 408) = *(a2 + 408) & 0xFFFFFFFFFFFFFF00 | (v31 >> 7) & 1 | (v31 >> 5) & 2 | (v31 >> 3) & 4 | (v31 >> 1) & 8 | (16 * ((v31 >> 3) & 1)) & 0xFFFFFFFFFFFFFFDFLL | (32 * ((v31 >> 2) & 1)) | (32 * v31) & 0x40 | ((v31 & 1) << 7);
          v34 = *(a2 + 392);
          *(a2 + 392) = v34 & 0xFFFFFFFFFFFFFFFELL;
          v35 = (a2 + 376);
          this->i8[12] = 0;
          if (v32 <= 2)
          {
            v36 = 0;
            this->i32[2] = -1;
            goto LABEL_99;
          }

          v38 = v32 & 7;
          this->i32[2] = v32 - 3;
          if (v38 >= 4)
          {
            v36 = (*v33 >> (v38 - 3)) & 7;
            goto LABEL_99;
          }

          v43 = 3;
          if ((v32 & 7) != 0)
          {
            v43 = 3 - v38;
            v44 = *v33++;
            v36 = (v44 << (3 - v38)) & 7;
            this->i64[0] = v33;
            if (v38 == 3)
            {
LABEL_99:
              *v35 = v36;
              this->i8[12] = 0;
              v54 = this->i32[2];
              if (v54 <= 0)
              {
                v57 = v34 & 0xFFFFFFFFFFFFFFFCLL;
                v55 = -1;
              }

              else
              {
                v55 = v54 - 1;
                this->i32[2] = v55;
                if ((v55 & 7) != 0)
                {
                  v56 = (*v33 >> (v55 & 7)) & 1;
                }

                else
                {
                  this->i64[0] = (v33 + 1);
                  v56 = *v33++ & 1;
                }

                v57 = v34 & 0xFFFFFFFFFFFFFFFCLL;
                if (v56)
                {
                  v58 = 2;
                  goto LABEL_107;
                }
              }

              v58 = 0;
LABEL_107:
              v59 = v58 | v57;
              *(a2 + 392) = v59;
              this->i8[12] = 0;
              if (v55 <= 2)
              {
                v60 = 0;
                this->i32[2] = -1;
                goto LABEL_116;
              }

              v61 = v55 & 7;
              this->i32[2] = v55 - 3;
              if (v61 >= 4)
              {
                v60 = (*v33 >> (v61 - 3)) & 7;
                goto LABEL_116;
              }

              v62 = 3;
              if ((v55 & 7) != 0)
              {
                v62 = 3 - v61;
                v63 = *v33++;
                v60 = (v63 << (3 - v61)) & 7;
                this->i64[0] = v33;
                if (v61 == 3)
                {
LABEL_116:
                  *(a2 + 380) = v60;
                  this->i8[12] = 0;
                  v64 = this->i32[2];
                  if (v64 <= 0)
                  {
                    v67 = v59 & 0xFFFFFFFFFFFFFFFBLL;
                    v65 = -1;
                  }

                  else
                  {
                    v65 = v64 - 1;
                    this->i32[2] = v65;
                    if ((v65 & 7) != 0)
                    {
                      v66 = (*v33 >> (v65 & 7)) & 1;
                    }

                    else
                    {
                      this->i64[0] = (v33 + 1);
                      v66 = *v33++ & 1;
                    }

                    v67 = v59 & 0xFFFFFFFFFFFFFFFBLL;
                    if (v66)
                    {
                      v68 = 4;
                      goto LABEL_124;
                    }
                  }

                  v68 = 0;
LABEL_124:
                  v69 = v68 | v67;
                  *(a2 + 392) = v69;
                  this->i8[12] = 0;
                  if (v65 <= 2)
                  {
                    v70 = 0;
                    this->i32[2] = -1;
                    goto LABEL_133;
                  }

                  v71 = v65 & 7;
                  this->i32[2] = v65 - 3;
                  if (v71 >= 4)
                  {
                    v70 = (*v33 >> (v71 - 3)) & 7;
                    goto LABEL_133;
                  }

                  v72 = 3;
                  if ((v65 & 7) != 0)
                  {
                    v72 = 3 - v71;
                    v73 = *v33++;
                    v70 = (v73 << (3 - v71)) & 7;
                    this->i64[0] = v33;
                    if (v71 == 3)
                    {
LABEL_133:
                      *(a2 + 384) = v70;
                      this->i8[12] = 0;
                      v74 = this->i32[2];
                      if (v74 <= 0)
                      {
                        v77 = v69 & 0xFFFFFFFFFFFFFFF7;
                        v75 = -1;
                      }

                      else
                      {
                        v75 = v74 - 1;
                        this->i32[2] = v75;
                        if ((v75 & 7) != 0)
                        {
                          v76 = (*v33 >> (v75 & 7)) & 1;
                        }

                        else
                        {
                          this->i64[0] = (v33 + 1);
                          v76 = *v33++ & 1;
                        }

                        v77 = v69 & 0xFFFFFFFFFFFFFFF7;
                        if (v76)
                        {
                          v78 = 8;
                          goto LABEL_141;
                        }
                      }

                      v78 = 0;
LABEL_141:
                      *(a2 + 392) = v78 | v77;
                      this->i8[12] = 0;
                      if (v75 <= 0)
                      {
                        this->i32[2] = -1;
                      }

                      else
                      {
                        this->i32[2] = v75 - 1;
                        if (((v75 - 1) & 7) != 0)
                        {
                          LODWORD(v33) = *v33 >> ((v75 - 1) & 7);
                        }

                        else
                        {
                          this->i64[0] = (v33 + 1);
                          LOBYTE(v33) = *v33;
                        }

                        if (v33)
                        {
                          v79 = 0;
                          goto LABEL_153;
                        }
                      }

                      v80 = a3;
                      if (webrtc::BitstreamReader::ReadBit(this))
                      {
                        v79 = 1;
                      }

                      else
                      {
                        if (!webrtc::BitstreamReader::ReadBit(this))
                        {
                          *(v29 + 28) = webrtc::BitstreamReader::ReadBits(this, 16) + 1;
                          Bits = webrtc::BitstreamReader::ReadBits(this, 16);
                          a2 = v29;
                          *(v29 + 32) = Bits + 1;
                          a3 = v80;
                          this->i8[12] = 0;
                          v81 = this->i32[2];
                          if (v81 > 0)
                          {
LABEL_154:
                            v82 = v81 - 1;
                            this->i32[2] = v82;
                            v83 = this->i64[0];
                            if ((v82 & 7) != 0)
                            {
                              LODWORD(v83) = *v83 >> (v82 & 7);
                            }

                            else
                            {
                              this->i64[0] = (v83 + 1);
                              LOBYTE(v83) = *v83;
                            }

                            if (v83)
                            {
                              *(a2 + 64) = v4 - v82;
                              *(a2 + 72) = 1;
                              this->i8[12] = 0;
                              v84 = this->i32[2];
                              if (v84 > 15)
                              {
                                this->i32[2] = v84 - 16;
                                v85 = this->i64[0];
                                v86 = v84 & 7;
                                if ((v84 & 7) != 0)
                                {
                                  v87 = 16 - v86;
                                  v88 = *v85++;
                                  v89 = (v88 & ~(-1 << v86)) << (16 - v86);
                                  this->i64[0] = v85;
                                }

                                else
                                {
                                  v89 = 0;
                                  v87 = 16;
                                }

                                v92 = v87 - 8;
                                v93 = v85 + 1;
                                v94 = (*v85 << (v87 - 8)) | v89;
                                this->i64[0] = (v85 + 1);
                                v95 = v87 >= 0x10;
                                v96 = v87 - 16;
                                if (v95)
                                {
                                  v94 |= v85[1] << v96;
                                  v93 = v85 + 2;
                                  this->i64[0] = (v85 + 2);
                                  v92 = v96;
                                }

                                if (v92)
                                {
                                  LODWORD(v94) = v94 | (*v93 >> (8 - v92));
                                }

                                *(a2 + 36) = v94 + 1;
                                this->i8[12] = 0;
                                if (v84 > 31)
                                {
                                  v82 = v84 - 32;
                                  this->i32[2] = v82;
                                  v119 = this->i64[0];
                                  v120 = 16;
                                  if (v86)
                                  {
                                    v120 = (16 - v86);
                                    v121 = *v119++;
                                    v122 = (v121 & ~(-1 << v86)) << (16 - v86);
                                    this->i64[0] = v119;
                                  }

                                  else
                                  {
                                    v122 = 0;
                                  }

                                  v126 = v120 - 8;
                                  v127 = v119 + 1;
                                  v97 = (*v119 << (v120 - 8)) | v122;
                                  this->i64[0] = (v119 + 1);
                                  v95 = v120 >= 0x10;
                                  v128 = v120 - 16;
                                  if (v95)
                                  {
                                    v97 |= v119[1] << v128;
                                    v127 = v119 + 2;
                                    this->i64[0] = (v119 + 2);
                                    v126 = v128;
                                  }

                                  if (v126)
                                  {
                                    LODWORD(v97) = v97 | (*v127 >> (8 - v126));
                                  }

                                  goto LABEL_173;
                                }
                              }

                              else
                              {
                                *(a2 + 36) = 1;
                              }

                              LOWORD(v97) = 0;
                              v82 = -1;
                              this->i32[2] = -1;
LABEL_173:
                              v91 = v97 + 1;
                              goto LABEL_174;
                            }

LABEL_164:
                            v91 = *(a2 + 32);
                            *(a2 + 36) = *(a2 + 28);
LABEL_174:
                            *(a2 + 40) = v91;
                            this->i8[12] = 0;
                            if (v82 <= 0)
                            {
                              *(a2 + 97) = 0;
LABEL_180:
                              this->i32[2] = -1;
LABEL_181:
                              v100 = a3;
                              v101 = webrtc::BitstreamReader::ReadBits(this, 2);
                              a3 = v100;
                              a2 = v29;
                              goto LABEL_182;
                            }

                            this->i32[2] = v82 - 1;
                            v98 = this->i64[0];
                            if (((v82 - 1) & 7) != 0)
                            {
                              v99 = *v98 >> ((v82 - 1) & 7);
                            }

                            else
                            {
                              this->i64[0] = (v98 + 1);
                              LOBYTE(v99) = *v98++;
                            }

                            *(a2 + 97) = v99 & 1;
                            this->i8[12] = 0;
                            if (v82 == 1)
                            {
                              goto LABEL_180;
                            }

                            v103 = v82 - 2;
                            this->i32[2] = v103;
                            v104 = v103 & 7;
                            if (v104)
                            {
                              v105 = *v98 >> v104;
                            }

                            else
                            {
                              this->i64[0] = (v98 + 1);
                              LOBYTE(v105) = *v98;
                            }

                            if ((v105 & 1) == 0)
                            {
                              goto LABEL_181;
                            }

                            *(a2 + 96) = 4;
LABEL_182:
                            v102 = this->i32[2];
                            if ((*v30 & 1) == 0)
                            {
                              if (v102 >= 2)
                              {
                                this->i64[0] += (((v102 + 7) >> 3) - ((v102 + 5) >> 3));
                                v102 -= 2;
                              }

                              else
                              {
                                v102 = -1;
                              }
                            }

                            this->i8[12] = 0;
                            if (v102 > 1)
                            {
                              v108 = v102 & 7;
                              v107 = v102 - 2;
                              this->i32[2] = v107;
                              v109 = this->i64[0];
                              if (v108 < 3)
                              {
                                if (v108)
                                {
                                  v110 = *v109++;
                                  v106 = (v110 & ~(-1 << v108)) << (2 - v108);
                                  this->i64[0] = v109;
                                  if (v108 == 2)
                                  {
                                    goto LABEL_200;
                                  }

                                  v111 = 7;
                                }

                                else
                                {
                                  LODWORD(v106) = 0;
                                  v111 = 6;
                                }

                                LODWORD(v106) = v106 | (*v109 >> v111);
                                goto LABEL_200;
                              }

                              LODWORD(v106) = (*v109 >> (v108 - 2)) & 3;
                            }

                            else
                            {
                              LOBYTE(v106) = 0;
                              v107 = -1;
                              this->i32[2] = -1;
                            }

LABEL_200:
                            *(a2 + 105) = v106;
                            *(a2 + 80) = v4 - v107;
                            *(a2 + 88) = 1;
                            v112 = this->i32[2];
                            if (v112 < 9)
                            {
LABEL_201:
                              LOBYTE(v113) = 0;
                              v114 = -1;
                              this->i32[2] = -1;
                              goto LABEL_361;
                            }

                            v115 = (this->i64[0] + (((v112 + 7) >> 3) - ((v112 - 2) >> 3)));
                            this->i64[0] = v115;
                            this->i8[12] = 0;
                            if (v112 == 9)
                            {
                              goto LABEL_360;
                            }

                            v116 = v112 - 10;
                            this->i32[2] = v112 - 10;
                            if (((v112 - 10) & 7) != 0)
                            {
                              v117 = (*v115 >> ((v112 - 10) & 7)) & 1;
                            }

                            else
                            {
                              this->i64[0] = (v115 + 1);
                              v117 = *v115++ & 1;
                            }

                            if (v117)
                            {
                              this->i8[12] = 0;
                              v116 = v112 - 11;
                              if (v112 < 0xB)
                              {
                                goto LABEL_360;
                              }

                              this->i32[2] = v116;
                              if ((v116 & 7) != 0)
                              {
                                v118 = (*v115 >> (v116 & 7)) & 1;
                              }

                              else
                              {
                                this->i64[0] = (v115 + 1);
                                v118 = *v115++ & 1;
                              }

                              if (v118)
                              {
                                this->i8[12] = 0;
                                if (v112 == 11)
                                {
                                  goto LABEL_270;
                                }

                                v137 = v112 - 12;
                                this->i32[2] = v112 - 12;
                                if (((v112 - 12) & 7) != 0)
                                {
                                  v138 = (*v115 >> ((v112 - 12) & 7)) & 1;
                                }

                                else
                                {
                                  this->i64[0] = (v115 + 1);
                                  v138 = *v115++ & 1;
                                }

                                if (v138)
                                {
                                  if (v112 >= 0x13)
                                  {
                                    v115 += (((v112 - 5) >> 3) - (v137 >> 3));
                                    this->i64[0] = v115;
                                    v137 = v112 - 19;
                                  }

                                  else
                                  {
                                    v137 = -1;
                                  }

                                  this->i32[2] = v137;
                                }

                                this->i8[12] = 0;
                                if (v137 <= 0)
                                {
LABEL_270:
                                  this->i32[2] = -1;
                                }

                                else
                                {
                                  v149 = v137 - 1;
                                  this->i32[2] = v137 - 1;
                                  if (((v137 - 1) & 7) != 0)
                                  {
                                    v150 = (*v115 >> ((v137 - 1) & 7)) & 1;
                                  }

                                  else
                                  {
                                    this->i64[0] = (v115 + 1);
                                    v150 = *v115++ & 1;
                                  }

                                  if (v150)
                                  {
                                    if (v137 >= 8)
                                    {
                                      v115 += (((v137 + 6) >> 3) - (v149 >> 3));
                                      this->i64[0] = v115;
                                      v149 = v137 - 8;
                                    }

                                    else
                                    {
                                      v149 = -1;
                                    }

                                    this->i32[2] = v149;
                                  }

                                  this->i8[12] = 0;
                                  v160 = v149 - 1;
                                  if (v149 >= 1)
                                  {
                                    this->i32[2] = v160;
                                    if ((v160 & 7) != 0)
                                    {
                                      v161 = (*v115 >> (v160 & 7)) & 1;
                                    }

                                    else
                                    {
                                      this->i64[0] = (v115 + 1);
                                      v161 = *v115++ & 1;
                                    }

                                    if (v161)
                                    {
                                      if (v149 >= 8)
                                      {
                                        v115 += (((v149 + 6) >> 3) - (v160 >> 3));
                                        this->i64[0] = v115;
                                        v160 = v149 - 8;
                                      }

                                      else
                                      {
                                        v160 = -1;
                                      }

                                      this->i32[2] = v160;
                                    }

                                    this->i8[12] = 0;
                                    if (v160 > 0)
                                    {
                                      v165 = v160 - 1;
                                      this->i32[2] = v160 - 1;
                                      if (((v160 - 1) & 7) != 0)
                                      {
                                        v166 = (*v115 >> ((v160 - 1) & 7)) & 1;
                                      }

                                      else
                                      {
                                        this->i64[0] = (v115 + 1);
                                        v166 = *v115++ & 1;
                                      }

                                      if (v166)
                                      {
                                        if (v160 >= 8)
                                        {
                                          v115 += (((v160 + 6) >> 3) - (v165 >> 3));
                                          this->i64[0] = v115;
                                          v165 = v160 - 8;
                                        }

                                        else
                                        {
                                          v165 = -1;
                                        }

                                        this->i32[2] = v165;
                                      }

                                      this->i8[12] = 0;
                                      v173 = v165 - 1;
                                      a2 = v29;
                                      if (v165 < 1)
                                      {
                                        goto LABEL_201;
                                      }

                                      this->i32[2] = v173;
                                      if ((v173 & 7) != 0)
                                      {
                                        v174 = (*v115 >> (v173 & 7)) & 1;
                                      }

                                      else
                                      {
                                        this->i64[0] = (v115 + 1);
                                        v174 = *v115++ & 1;
                                      }

                                      if (v174)
                                      {
                                        if (v165 >= 8)
                                        {
                                          v115 += (((v165 + 6) >> 3) - (v173 >> 3));
                                          this->i64[0] = v115;
                                          v173 = v165 - 8;
                                        }

                                        else
                                        {
                                          v173 = -1;
                                        }
                                      }

                                      this->i8[12] = 0;
                                      v116 = v173 - 1;
                                      if (v173 < 1)
                                      {
                                        LOBYTE(v113) = 0;
                                        v114 = -1;
                                        a2 = v29;
                                        goto LABEL_361;
                                      }

                                      this->i32[2] = v116;
                                      if ((v116 & 7) != 0)
                                      {
                                        v175 = (*v115 >> (v116 & 7)) & 1;
                                      }

                                      else
                                      {
                                        this->i64[0] = (v115 + 1);
                                        v175 = *v115++ & 1;
                                      }

                                      if (v175)
                                      {
                                        if (v173 >= 8)
                                        {
                                          v115 += (((v173 + 6) >> 3) - (v116 >> 3));
                                          this->i64[0] = v115;
                                          v116 = v173 - 8;
                                        }

                                        else
                                        {
                                          v116 = -1;
                                        }
                                      }

                                      a2 = v29;
                                      goto LABEL_359;
                                    }
                                  }
                                }

                                this->i8[12] = 0;
                                a2 = v29;
                                goto LABEL_201;
                              }
                            }

LABEL_359:
                            this->i8[12] = 0;
                            v114 = v116 - 8;
                            if (v116 >= 8)
                            {
                              this->i32[2] = v114;
                              LODWORD(v113) = *v115;
                              this->i64[0] = (v115 + 1);
                              if ((v116 & 7) != 0)
                              {
                                v113 = ((v113 & ~(-1 << (v116 & 7))) << (8 - (v116 & 7u))) | (v115[1] >> (v116 & 7));
                              }

LABEL_361:
                              *(a2 + 100) = v113;
                              *(a2 + 104) = v113 == 0;
                              this->i8[12] = 0;
                              v185 = v114 - 1;
                              if (v114 < 1)
                              {
                                goto LABEL_384;
                              }

                              this->i32[2] = v185;
                              v186 = this->i64[0];
                              v187 = v185 & 7;
                              if ((v185 & 7) != 0)
                              {
                                v188 = (*v186 >> v187) & 1;
                              }

                              else
                              {
                                this->i64[0] = (v186 + 1);
                                v188 = *v186++ & 1;
                              }

                              if (!v188)
                              {
LABEL_378:
                                this->i8[12] = 0;
                                if (v185)
                                {
                                  v192 = v185 - 1;
                                  this->i32[2] = v185 - 1;
                                  v193 = (v185 - 1) & 7;
                                  if (v193)
                                  {
                                    v194 = (*v186 >> v193) & 1;
                                  }

                                  else
                                  {
                                    this->i64[0] = (v186 + 1);
                                    v194 = *v186++ & 1;
                                  }

                                  if (!v194)
                                  {
                                    goto LABEL_449;
                                  }

                                  this->i8[12] = 0;
                                  v192 = v185 - 6;
                                  if (v185 < 6)
                                  {
                                    goto LABEL_384;
                                  }

                                  this->i32[2] = v192;
                                  if (v193 >= 6)
                                  {
                                    LODWORD(v200) = *v186 >> (v193 - 5);
                                    goto LABEL_447;
                                  }

                                  v201 = 5;
                                  if (v193)
                                  {
                                    v201 = 5 - v193;
                                    v202 = *v186++;
                                    v200 = (v202 & ~(-1 << v193)) << (5 - v193);
                                    this->i64[0] = v186;
                                    if (v193 == 5)
                                    {
LABEL_447:
                                      if ((v200 & 0x1E) != 0)
                                      {
                                        *(a2 + 104) = 0;
                                      }

LABEL_449:
                                      this->i8[12] = 0;
                                      if (!v192)
                                      {
                                        goto LABEL_385;
                                      }

                                      v195 = v192 - 1;
                                      this->i32[2] = v192 - 1;
                                      v219 = (v192 - 1) & 7;
                                      if (v219)
                                      {
                                        v220 = (*v186 >> v219) & 1;
                                      }

                                      else
                                      {
                                        this->i64[0] = (v186 + 1);
                                        v220 = *v186++ & 1;
                                      }

                                      if (!v220)
                                      {
LABEL_386:
                                        if (a3)
                                        {
                                          return;
                                        }

                                        this->i8[12] = 0;
                                        if (v195 <= 0)
                                        {
                                          this->i32[2] = -1;
                                          *(a2 + 106) = 0;
                                          goto LABEL_476;
                                        }

                                        this->i32[2] = v195 - 1;
                                        v196 = this->i64[0];
                                        if (((v195 - 1) & 7) != 0)
                                        {
                                          v197 = (*v196 >> ((v195 - 1) & 7)) & 1;
                                        }

                                        else
                                        {
                                          this->i64[0] = (v196 + 1);
                                          v197 = *v196++ & 1;
                                        }

                                        *(a2 + 106) = v197;
                                        if (!v197)
                                        {
LABEL_476:
                                          v231 = (((*(a2 + 28) + 7) >> 3) + 7) >> 3;
                                          v232 = -1;
                                          do
                                          {
                                            ++v232;
                                          }

                                          while (64 << v232 < v231);
                                          v233 = -1;
                                          do
                                          {
                                            v234 = v231 >> (v233++ + 2);
                                          }

                                          while (v234 > 3);
                                          *(a2 + 48) = v232;
                                          v235 = this->i32[2];
                                          if (v232 < v233)
                                          {
                                            v236 = this->i64[0];
                                            while (1)
                                            {
                                              this->i8[12] = 0;
                                              if (v235 <= 0)
                                              {
                                                break;
                                              }

                                              this->i32[2] = --v235;
                                              if ((v235 & 7) != 0)
                                              {
                                                v237 = (*v236 >> (v235 & 7)) & 1;
                                              }

                                              else
                                              {
                                                this->i64[0] = (v236 + 1);
                                                v237 = *v236++ & 1;
                                              }

                                              if (v237)
                                              {
                                                *(a2 + 48) = ++v232;
                                                if (v232 < v233)
                                                {
                                                  continue;
                                                }
                                              }

                                              goto LABEL_488;
                                            }

                                            *(a2 + 56) = 0;
                                            goto LABEL_501;
                                          }

LABEL_488:
                                          *(a2 + 56) = 0;
                                          this->i8[12] = 0;
                                          v238 = v235 - 1;
                                          if (v235 >= 1)
                                          {
                                            this->i32[2] = v238;
                                            v239 = this->i64[0];
                                            if ((v238 & 7) != 0)
                                            {
                                              v240 = (*v239 >> (v238 & 7)) & 1;
                                            }

                                            else
                                            {
                                              this->i64[0] = (v239 + 1);
                                              v240 = *v239++ & 1;
                                            }

                                            if (v240)
                                            {
                                              *(a2 + 56) = 1;
                                              this->i8[12] = 0;
                                              if (v235 == 1)
                                              {
                                                goto LABEL_501;
                                              }

                                              v238 = v235 - 2;
                                              this->i32[2] = v235 - 2;
                                              v241 = (v235 - 2) & 7;
                                              if ((v238 & 7) != 0)
                                              {
                                                v242 = (*v239 >> v241) & 1;
                                              }

                                              else
                                              {
                                                this->i64[0] = (v239 + 1);
                                                v242 = *v239++ & 1;
                                              }

                                              if (v242)
                                              {
                                                *(a2 + 56) = 2;
                                              }
                                            }

                                            this->i8[12] = 0;
                                            if (v238 > 0xF)
                                            {
                                              v244 = v238 - 16;
                                              this->i32[2] = v238 - 16;
                                              v245 = 16;
                                              v246 = v238 & 7;
                                              if (v246)
                                              {
                                                v245 = (16 - v246);
                                                v247 = *v239++;
                                                v248 = (v247 & ~(-1 << v246)) << (16 - v246);
                                                this->i64[0] = v239;
                                              }

                                              else
                                              {
                                                v248 = 0;
                                              }

                                              v249 = v245 - 8;
                                              v250 = v239 + 1;
                                              v243 = (*v239 << (v245 - 8)) | v248;
                                              this->i64[0] = (v239 + 1);
                                              v95 = v245 >= 0x10;
                                              v251 = v245 - 16;
                                              if (v95)
                                              {
                                                v243 |= v239[1] << v251;
                                                v250 = v239 + 2;
                                                this->i64[0] = (v239 + 2);
                                                v249 = v251;
                                              }

                                              if (v249)
                                              {
                                                LODWORD(v243) = v243 | (*v250 >> (8 - v249));
                                              }

                                              goto LABEL_502;
                                            }
                                          }

LABEL_501:
                                          LOWORD(v243) = 0;
                                          v244 = -1;
                                          this->i32[2] = -1;
LABEL_502:
                                          *(a2 + 420) = v243;
                                          this->i8[12] = 1;
                                          *(a2 + 416) = (v4 >> 3) - v244 / 8;
                                          return;
                                        }

                                        this->i8[12] = 0;
                                        if (v195 == 1)
                                        {
LABEL_475:
                                          this->i32[2] = -1;
                                          goto LABEL_476;
                                        }

                                        v198 = v195 - 2;
                                        this->i32[2] = v198;
                                        v199 = v198 & 7;
                                        if (v199)
                                        {
                                          LODWORD(v196) = *v196 >> v199;
                                        }

                                        else
                                        {
                                          this->i64[0] = (v196 + 1);
                                          LOBYTE(v196) = *v196;
                                        }

                                        if (v196)
                                        {
                                          *(a2 + 107) = 0;
                                          v203 = (a2 + 107);
                                          *(a2 + 110) = 0;
                                          *(a2 + 114) = 1;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v204 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if ((*(v29 + 114) & 1) == 0)
                                            {
                                              goto LABEL_599;
                                            }
                                          }

                                          else
                                          {
                                            if ((*(v29 + 114) & 1) == 0)
                                            {
                                              goto LABEL_599;
                                            }

                                            v204 = -1;
                                          }

                                          *v203 = v204;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v205 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v206 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v206 = v29;
                                            v205 = -1;
                                          }

                                          *(v206 + 108) = v205;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v207 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v208 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v208 = v29;
                                            v207 = -1;
                                          }

                                          *(v208 + 109) = v207;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v209 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v210 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v210 = v29;
                                            v209 = -1;
                                          }

                                          *(v210 + 110) = v209;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v211 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v212 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v212 = v29;
                                            v211 = -1;
                                          }

                                          *(v212 + 111) = v211;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v213 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v214 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v214 = v29;
                                            v213 = -1;
                                          }

                                          *(v214 + 112) = v213;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v215 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v216 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 114) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v216 = v29;
                                            v215 = -1;
                                          }

                                          *(v216 + 115) = 0x1000000;
                                          v217 = v216 + 115;
                                          *(v217 - 2) = v215;
                                          if (!webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            if (*(v29 + 118))
                                            {
                                              *(v217 + 2) = -1;
                                              *v217 = -1;
                                              a2 = v29;
                                              goto LABEL_472;
                                            }

                                            goto LABEL_599;
                                          }

                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v218 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if ((*(v29 + 118) & 1) == 0)
                                            {
                                              goto LABEL_599;
                                            }
                                          }

                                          else
                                          {
                                            if ((*(v29 + 118) & 1) == 0)
                                            {
                                              goto LABEL_599;
                                            }

                                            v218 = -1;
                                          }

                                          *v217 = v218;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v224 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 118) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v225 = v29;
                                          }

                                          else
                                          {
                                            if (*(v29 + 118) != 1)
                                            {
                                              goto LABEL_599;
                                            }

                                            v225 = v29;
                                            v224 = -1;
                                          }

                                          *(v225 + 116) = v224;
                                          if (webrtc::BitstreamReader::ReadBit(this))
                                          {
                                            v226 = webrtc::BitstreamReader::ReadBits(this, 8);
                                            if (*(v29 + 118) == 1)
                                            {
                                              a2 = v29;
                                              *(v29 + 117) = v226;
                                              goto LABEL_472;
                                            }

LABEL_599:
                                            __break(1u);
                                            return;
                                          }

                                          if (*(v29 + 118) != 1)
                                          {
                                            goto LABEL_599;
                                          }

                                          a2 = v29;
                                          *(v29 + 117) = -1;
                                        }

LABEL_472:
                                        v227 = this->i32[2];
                                        this->i8[12] = 0;
                                        if (v227 > 0)
                                        {
                                          v228 = v227 - 1;
                                          this->i32[2] = v227 - 1;
                                          v229 = this->i64[0];
                                          v230 = v228 & 7;
                                          if (v230)
                                          {
                                            LODWORD(v229) = *v229 >> v230;
                                          }

                                          else
                                          {
                                            this->i64[0] = (v229 + 1);
                                            LOBYTE(v229) = *v229;
                                          }

                                          if (v229)
                                          {
                                            Bit = webrtc::BitstreamReader::ReadBit(this);
                                            a2 = v29;
                                            *(v29 + 119) = Bit;
                                            v253 = v29 + 120;
                                            v254 = 8;
                                            while (1)
                                            {
                                              this->i8[12] = 0;
                                              v255 = this->i32[2];
                                              v256 = v255 - 1;
                                              if (v255 < 1)
                                              {
LABEL_529:
                                                this->i32[2] = -1;
LABEL_564:
                                                this->i8[12] = 0;
                                                goto LABEL_565;
                                              }

                                              this->i32[2] = v256;
                                              v257 = this->i64[0];
                                              v258 = v256 & 7;
                                              if ((v256 & 7) != 0)
                                              {
                                                v259 = (*v257 >> v258) & 1;
                                              }

                                              else
                                              {
                                                this->i64[0] = (v257 + 1);
                                                v259 = *v257++ & 1;
                                              }

                                              if (v259)
                                              {
                                                this->i8[12] = 0;
                                                if (v255 > 8)
                                                {
                                                  this->i32[2] = v255 - 9;
                                                  v260 = *v257;
                                                  if (v258)
                                                  {
                                                    this->i64[0] = (v257 + 1);
                                                    v260 = (v260 << (8 - v258)) & 0xFE | (*++v257 >> v258);
                                                  }

                                                  else
                                                  {
                                                    this->i64[0] = ++v257;
                                                  }
                                                }

                                                else
                                                {
                                                  v260 = 0;
                                                  this->i32[2] = -1;
                                                }

                                                v261 = *(v253 + 4);
                                                if ((v261 & 1) == 0)
                                                {
                                                  v261 = 1;
                                                  *(v253 + 4) = 1;
                                                }

                                                *v253 = v260;
                                                this->i8[12] = 0;
                                                v262 = this->i32[2];
                                                v263 = __OFSUB__(v262, 1);
                                                v256 = v262 - 1;
                                                if (v256 < 0 != v263)
                                                {
                                                  goto LABEL_529;
                                                }

                                                this->i32[2] = v256;
                                                if ((v256 & 7) != 0)
                                                {
                                                  v264 = (*v257 >> (v256 & 7)) & 1;
                                                }

                                                else
                                                {
                                                  this->i64[0] = (v257 + 1);
                                                  v264 = *v257++ & 1;
                                                }

                                                if (v264)
                                                {
                                                  if ((v261 & 1) == 0)
                                                  {
                                                    goto LABEL_599;
                                                  }

                                                  *v253 = -*v253;
                                                  v256 = this->i32[2];
                                                }
                                              }

                                              this->i8[12] = 0;
                                              v265 = v256 - 1;
                                              if (v256 < 1)
                                              {
                                                goto LABEL_564;
                                              }

                                              this->i32[2] = v265;
                                              v266 = v265 & 7;
                                              if ((v265 & 7) != 0)
                                              {
                                                v267 = (*v257 >> v266) & 1;
                                              }

                                              else
                                              {
                                                this->i64[0] = (v257 + 1);
                                                v267 = *v257++ & 1;
                                              }

                                              if (v267)
                                              {
                                                break;
                                              }

LABEL_561:
                                              this->i8[12] = 0;
                                              if (v265 <= 0)
                                              {
                                                goto LABEL_564;
                                              }

                                              v276 = v265 - 1;
                                              this->i32[2] = v265 - 1;
                                              v277 = (v265 - 1) & 7;
                                              if (v277)
                                              {
                                                v278 = (*v257 >> v277) & 1;
                                              }

                                              else
                                              {
                                                this->i64[0] = (v257 + 1);
                                                v278 = *v257++ & 1;
                                              }

                                              if (v278)
                                              {
                                                this->i8[12] = 0;
                                                if (v265 <= 2)
                                                {
                                                  v279 = 0;
                                                  this->i32[2] = -1;
LABEL_580:
                                                  if ((*(v253 + 20) & 1) == 0)
                                                  {
                                                    *(v253 + 20) = 1;
                                                  }

                                                  *(v253 + 16) = v279;
                                                  v276 = this->i32[2];
                                                  goto LABEL_583;
                                                }

                                                this->i32[2] = v265 - 3;
                                                if (v277 >= 3)
                                                {
                                                  v279 = (*v257 >> (v277 - 2)) & 3;
                                                  goto LABEL_580;
                                                }

                                                if (v277)
                                                {
                                                  v280 = *v257++;
                                                  v279 = (v280 << (2 - v277)) & 3;
                                                  this->i64[0] = v257;
                                                  if (v277 != 2)
                                                  {
                                                    v281 = 7;
                                                    goto LABEL_578;
                                                  }
                                                }

                                                else
                                                {
                                                  v279 = 0;
                                                  v281 = 6;
LABEL_578:
                                                  v279 |= *v257 >> v281;
                                                }

                                                a2 = v29;
                                                goto LABEL_580;
                                              }

LABEL_583:
                                              this->i8[12] = 0;
                                              if (v276 > 0)
                                              {
                                                v282 = v276 - 1;
                                                this->i32[2] = v282;
                                                v283 = v282 & 7;
                                                if (v283)
                                                {
                                                  LODWORD(v257) = *v257 >> v283;
                                                }

                                                else
                                                {
                                                  this->i64[0] = (v257 + 1);
                                                  LOBYTE(v257) = *v257;
                                                }

                                                if (v257)
                                                {
                                                  *(v253 + 24) = 1;
                                                  *(v253 + 28) = 1;
                                                }

                                                goto LABEL_566;
                                              }

LABEL_565:
                                              this->i32[2] = -1;
LABEL_566:
                                              v253 += 32;
                                              if (!--v254)
                                              {
                                                goto LABEL_476;
                                              }
                                            }

                                            this->i8[12] = 0;
                                            if (v256 <= 6)
                                            {
                                              v268 = 0;
                                              this->i32[2] = -1;
                                              v269 = *(v253 + 12);
                                              if ((v269 & 1) == 0)
                                              {
                                                goto LABEL_541;
                                              }

LABEL_552:
                                              *(v253 + 8) = v268;
                                              this->i8[12] = 0;
                                              v274 = this->i32[2];
                                              v263 = __OFSUB__(v274, 1);
                                              v265 = v274 - 1;
                                              if (v265 < 0 != v263)
                                              {
                                                goto LABEL_564;
                                              }

                                              goto LABEL_553;
                                            }

                                            this->i32[2] = v256 - 7;
                                            if ((v265 & 7) != 0)
                                            {
                                              if (v266 == 7)
                                              {
                                                v268 = (*v257 >> 1) & 0x3F;
                                                v269 = *(v253 + 12);
                                                if (v269)
                                                {
                                                  goto LABEL_552;
                                                }

                                                goto LABEL_541;
                                              }

                                              v272 = *v257++;
                                              v271 = 6 - v266;
                                              v268 = (v272 << (6 - v266)) & 0x3F;
                                              this->i64[0] = v257;
                                              v273 = v266 == 6;
                                              v266 = v268;
                                              if (v273)
                                              {
                                                v269 = *(v253 + 12);
                                                if (v269)
                                                {
                                                  goto LABEL_552;
                                                }

                                                goto LABEL_541;
                                              }
                                            }

                                            else
                                            {
                                              v271 = 6;
                                            }

                                            v268 = (*v257 >> (8 - v271)) | v266;
                                            v269 = *(v253 + 12);
                                            if (v269)
                                            {
                                              goto LABEL_552;
                                            }

LABEL_541:
                                            v269 = 1;
                                            *(v253 + 12) = 1;
                                            *(v253 + 8) = v268;
                                            this->i8[12] = 0;
                                            v270 = this->i32[2];
                                            v263 = __OFSUB__(v270, 1);
                                            v265 = v270 - 1;
                                            if (v265 < 0 != v263)
                                            {
                                              goto LABEL_564;
                                            }

LABEL_553:
                                            this->i32[2] = v265;
                                            if ((v265 & 7) != 0)
                                            {
                                              v275 = (*v257 >> (v265 & 7)) & 1;
                                            }

                                            else
                                            {
                                              this->i64[0] = (v257 + 1);
                                              v275 = *v257++ & 1;
                                            }

                                            if (v275)
                                            {
                                              if (!v269)
                                              {
                                                goto LABEL_599;
                                              }

                                              *(v253 + 8) = -*(v253 + 8);
                                              v265 = this->i32[2];
                                            }

                                            goto LABEL_561;
                                          }

                                          goto LABEL_476;
                                        }

                                        goto LABEL_475;
                                      }

                                      this->i8[12] = 0;
                                      if (v192 <= 5)
                                      {
                                        goto LABEL_385;
                                      }

                                      v195 = v192 - 6;
                                      this->i32[2] = v192 - 6;
                                      if (v219 >= 6)
                                      {
                                        LODWORD(v221) = *v186 >> (v219 - 5);
                                        goto LABEL_591;
                                      }

                                      v222 = 5;
                                      if (v219)
                                      {
                                        v222 = 5 - v219;
                                        v223 = *v186++;
                                        v221 = (v223 & ~(-1 << v219)) << (5 - v219);
                                        this->i64[0] = v186;
                                        if (v219 == 5)
                                        {
LABEL_591:
                                          a2 = v29;
                                          if ((v221 & 0x1E) != 0)
                                          {
                                            *(v29 + 104) = 0;
                                          }

                                          goto LABEL_386;
                                        }
                                      }

                                      else
                                      {
                                        LODWORD(v221) = 0;
                                      }

                                      LODWORD(v221) = v221 | (*v186 >> (8 - v222));
                                      goto LABEL_591;
                                    }
                                  }

                                  else
                                  {
                                    LODWORD(v200) = 0;
                                  }

                                  LODWORD(v200) = v200 | (*v186 >> (8 - v201));
                                  goto LABEL_447;
                                }

LABEL_384:
                                this->i8[12] = 0;
LABEL_385:
                                v195 = -1;
                                this->i32[2] = -1;
                                goto LABEL_386;
                              }

                              this->i8[12] = 0;
                              v185 = v114 - 6;
                              if (v114 < 6)
                              {
                                goto LABEL_384;
                              }

                              this->i32[2] = v185;
                              if (v187 >= 6)
                              {
                                LODWORD(v189) = *v186 >> (v187 - 5);
                                goto LABEL_376;
                              }

                              v190 = 5;
                              if (v187)
                              {
                                v190 = 5 - v187;
                                v191 = *v186++;
                                v189 = (v191 & ~(-1 << v187)) << (5 - v187);
                                this->i64[0] = v186;
                                if (v187 == 5)
                                {
LABEL_376:
                                  if ((v189 & 0x1E) != 0)
                                  {
                                    *(a2 + 104) = 0;
                                  }

                                  goto LABEL_378;
                                }
                              }

                              else
                              {
                                LODWORD(v189) = 0;
                              }

                              LODWORD(v189) = v189 | (*v186 >> (8 - v190));
                              goto LABEL_376;
                            }

LABEL_360:
                            LOBYTE(v113) = 0;
                            v114 = -1;
                            goto LABEL_361;
                          }

LABEL_163:
                          v82 = -1;
                          this->i32[2] = -1;
                          goto LABEL_164;
                        }

                        v79 = 2;
                      }

                      a2 = v29;
                      a3 = v80;
LABEL_153:
                      *(a2 + 400) = v35[v79];
                      *(a2 + 404) = 1;
                      this->i8[12] = 0;
                      v81 = this->i32[2];
                      if (v81 > 0)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_163;
                    }
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v70 |= *v33 >> (8 - v72);
                  goto LABEL_133;
                }
              }

              else
              {
                v60 = 0;
              }

              v60 |= *v33 >> (8 - v62);
              goto LABEL_116;
            }
          }

          else
          {
            v36 = 0;
          }

          v36 |= *v33 >> (8 - v43);
          goto LABEL_99;
        }

        this->i8[12] = 0;
        if (v18 == 4)
        {
          v31 = 0;
          v32 = -1;
          goto LABEL_58;
        }

        v39 = v18 - 5;
        this->i32[2] = v18 - 5;
        if (((v18 - 5) & 7) != 0)
        {
          v48 = (*v33 >> ((v18 - 5) & 7)) & 1;
          if (v41)
          {
            goto LABEL_93;
          }
        }

        else
        {
          this->i64[0] = (v33 + 1);
          v48 = *v33++ & 1;
          if (v41)
          {
LABEL_93:
            if (!v48)
            {
              goto LABEL_243;
            }

            goto LABEL_94;
          }
        }

        this->i8[12] = 0;
        if (v39 < 2)
        {
          v32 = -1;
          this->i32[2] = -1;
          if (!v48)
          {
            v31 = 0;
            goto LABEL_58;
          }

          goto LABEL_241;
        }

        v39 = v18 - 7;
        v33 += (((v18 + 2) >> 3) - (v18 >> 3));
        this->i64[0] = v33;
        this->i32[2] = v18 - 7;
        if (!v48)
        {
          goto LABEL_243;
        }

LABEL_94:
        this->i8[12] = 0;
        if (v39 > 0x17)
        {
          v49 = a3;
          this->i32[2] = v39 - 24;
          v50 = 24;
          v51 = v39 & 7;
          if ((v39 & 7) != 0)
          {
            v50 = (24 - v51);
            v52 = *v33++;
            v53 = (v52 & ~(-1 << v51)) << (24 - v51);
            this->i64[0] = v33;
          }

          else
          {
            v53 = 0;
          }

          v151 = v50 - 8;
          v152 = v33 + 1;
          v153 = (*v33 << (v50 - 8)) | v53;
          this->i64[0] = (v33 + 1);
          if (v50 >= 0x10)
          {
            v153 |= v33[1] << (v50 - 16);
            v152 = v33 + 2;
            this->i64[0] = (v33 + 2);
            if (v151 < 0x10)
            {
              v151 = v50 - 16;
            }

            else
            {
              v151 = v50 - 24;
              v153 |= v33[2] << (v50 - 24);
              v152 = v33 + 3;
              this->i64[0] = (v33 + 3);
            }
          }

          if (v151)
          {
            v153 |= *v152 >> (8 - v151);
          }

          if (v153 == 4817730)
          {
            if (v19)
            {
            }

            else
            {
              *(a2 + 10) = 257;
              *(a2 + 20) = 3;
              *(a2 + 24) = 1;
              *(a2 + 9) = 8;
            }

            *(v29 + 376) = -1;
            *(v29 + 384) = -1;
            v162 = webrtc::BitstreamReader::ReadBits(this, 8);
            *(v29 + 408) = *(v29 + 408) & 0xFFFFFFFFFFFFFF00 | (v162 >> 7) & 1 | (v162 >> 5) & 2 | (v162 >> 3) & 4 | (v162 >> 1) & 8 | (16 * ((v162 >> 3) & 1)) & 0xFFFFFFFFFFFFFFDFLL | (32 * ((v162 >> 2) & 1)) | (32 * v162) & 0x40 | ((v162 & 1) << 7);
            *(v29 + 28) = webrtc::BitstreamReader::ReadBits(this, 16) + 1;
            *(v29 + 32) = webrtc::BitstreamReader::ReadBits(this, 16) + 1;
            if (webrtc::BitstreamReader::ReadBit(this))
            {
              this->i8[12] = 1;
              *(v29 + 64) = v4 - this->i32[2];
              *(v29 + 72) = 1;
              *(v29 + 36) = webrtc::BitstreamReader::ReadBits(this, 16) + 1;
              v163 = webrtc::BitstreamReader::ReadBits(this, 16);
              a2 = v29;
              v164 = v163 + 1;
            }

            else
            {
              a2 = v29;
              v164 = *(v29 + 32);
              *(v29 + 36) = *(v29 + 28);
            }

            *(v29 + 40) = v164;
            a3 = v49;
            goto LABEL_182;
          }

LABEL_302:
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_241:
        this->i32[2] = -1;
        goto LABEL_302;
      }

      ++v6;
    }

    this->i8[12] = 0;
    if (v39 <= 0x17)
    {
      goto LABEL_20;
    }

    this->i32[2] = v18 - 28;
    v45 = 24;
    if (v40)
    {
      v45 = (24 - v40);
      v46 = *v6++;
      v47 = (v46 & ~(-1 << v40)) << (24 - v40);
      this->i64[0] = v6;
    }

    else
    {
      v47 = 0;
    }

    v123 = v45 - 8;
    v124 = v6 + 1;
    v125 = (*v6 << (v45 - 8)) | v47;
    this->i64[0] = (v6 + 1);
    if (v45 >= 0x10)
    {
      v125 |= v6[1] << (v45 - 16);
      v124 = v6 + 2;
      this->i64[0] = (v6 + 2);
      if (v123 < 0x10)
      {
        v123 = v45 - 16;
      }

      else
      {
        v123 = v45 - 24;
        v125 |= v6[2] << (v45 - 24);
        v124 = v6 + 3;
        this->i64[0] = (v6 + 3);
      }
    }

    if (v123)
    {
      v125 |= *v124 >> (8 - v123);
    }

    if (v125 != 4817730)
    {
LABEL_21:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
LABEL_22:
        webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/vp9_uncompressed_header_parser.cc");
      }

LABEL_23:
      this->i32[2] = -1;
      return;
    }

    v129 = a3;
    this->i8[12] = 0;
    v130 = this->i32[2];
    if (v130 <= 15)
    {
      v131 = 1;
      a2 = v29;
      *(v29 + 28) = 1;
LABEL_255:
      v144 = 1;
      *(a2 + 32) = 1;
      this->i8[12] = 0;
LABEL_256:
      a3 = v129;
      this->i32[2] = -1;
LABEL_257:
      *(a2 + 36) = v131;
LABEL_258:
      *(a2 + 40) = v144;
      *(a2 + 408) |= 0xFFuLL;
      goto LABEL_182;
    }

    this->i32[2] = v130 - 16;
    v132 = this->i64[0];
    v133 = v130 & 7;
    if ((v130 & 7) != 0)
    {
      v134 = 16 - v133;
      v135 = *v132++;
      v136 = (v135 & ~(-1 << v133)) << (16 - v133);
      this->i64[0] = v132;
    }

    else
    {
      v136 = 0;
      v134 = 16;
    }

    v140 = v134 - 8;
    v141 = v132 + 1;
    v142 = (*v132 << (v134 - 8)) | v136;
    this->i64[0] = (v132 + 1);
    v95 = v134 >= 0x10;
    v143 = v134 - 16;
    if (v95)
    {
      v142 |= v132[1] << v143;
      v141 = v132 + 2;
      this->i64[0] = (v132 + 2);
      v140 = v143;
    }

    if (v140)
    {
      LODWORD(v142) = v142 | (*v141 >> (8 - v140));
    }

    v131 = v142 + 1;
    *(v29 + 28) = v131;
    this->i8[12] = 0;
    if (v130 <= 31)
    {
      a2 = v29;
      goto LABEL_255;
    }

    this->i32[2] = v130 - 32;
    v145 = this->i64[0];
    v146 = 16;
    if ((v130 & 7) != 0)
    {
      v146 = (16 - v133);
      v147 = *v145++;
      v148 = (v147 & ~(-1 << v133)) << (16 - v133);
      this->i64[0] = v145;
    }

    else
    {
      v148 = 0;
    }

    v154 = v146 - 8;
    v155 = v145 + 1;
    v156 = (*v145 << (v146 - 8)) | v148;
    this->i64[0] = (v145 + 1);
    v95 = v146 >= 0x10;
    v157 = v146 - 16;
    if (v95)
    {
      v156 |= v145[1] << v157;
      v155 = v145 + 2;
      this->i64[0] = (v145 + 2);
      v154 = v157;
    }

    if (v154)
    {
      LODWORD(v156) = v156 | (*v155 >> (8 - v154));
    }

    v144 = v156 + 1;
    *(v29 + 32) = v144;
    this->i8[12] = 0;
    if (v130 == 32)
    {
      a2 = v29;
      goto LABEL_256;
    }

    v158 = v130 - 33;
    this->i32[2] = v158;
    v159 = this->i64[0];
    if ((v158 & 7) != 0)
    {
      LODWORD(v159) = *v159 >> (v158 & 7);
    }

    else
    {
      this->i64[0] = (v159 + 1);
      LOBYTE(v159) = *v159;
    }

    a2 = v29;
    a3 = v129;
    if ((v159 & 1) == 0)
    {
      goto LABEL_257;
    }

    *(v29 + 64) = v4 - v158;
    *(v29 + 72) = 1;
    this->i8[12] = 0;
    v167 = this->i32[2];
    if (v167 > 15)
    {
      this->i32[2] = v167 - 16;
      v168 = this->i64[0];
      v169 = v167 & 7;
      if ((v167 & 7) != 0)
      {
        v170 = 16 - v169;
        v171 = *v168++;
        v172 = (v171 & ~(-1 << v169)) << (16 - v169);
        this->i64[0] = v168;
      }

      else
      {
        v172 = 0;
        v170 = 16;
      }

      v176 = v170 - 8;
      v177 = v168 + 1;
      v178 = (*v168 << (v170 - 8)) | v172;
      this->i64[0] = (v168 + 1);
      v95 = v170 >= 0x10;
      v179 = v170 - 16;
      if (v95)
      {
        v178 |= v168[1] << v179;
        v177 = v168 + 2;
        this->i64[0] = (v168 + 2);
        v176 = v179;
      }

      if (v176)
      {
        LODWORD(v178) = v178 | (*v177 >> (8 - v176));
      }

      *(v29 + 36) = v178 + 1;
      this->i8[12] = 0;
      if (v167 > 31)
      {
        this->i32[2] = v167 - 32;
        v181 = this->i64[0];
        v182 = 16;
        if ((v167 & 7) != 0)
        {
          v182 = (16 - v169);
          v183 = *v181++;
          v184 = (v183 & ~(-1 << v169)) << (16 - v169);
          this->i64[0] = v181;
        }

        else
        {
          v184 = 0;
        }

        v284 = v182 - 8;
        v285 = v181 + 1;
        v180 = (*v181 << (v182 - 8)) | v184;
        this->i64[0] = (v181 + 1);
        v95 = v182 >= 0x10;
        v286 = v182 - 16;
        if (v95)
        {
          v180 |= v181[1] << v286;
          v285 = v181 + 2;
          this->i64[0] = (v181 + 2);
          v284 = v286;
        }

        if (v284)
        {
          LODWORD(v180) = v180 | (*v285 >> (8 - v284));
        }

        goto LABEL_350;
      }
    }

    else
    {
      *(v29 + 36) = 1;
    }

    LOWORD(v180) = 0;
    this->i32[2] = -1;
LABEL_350:
    v144 = v180 + 1;
    a2 = v29;
    a3 = v129;
    goto LABEL_258;
  }

  if (v18 > 3)
  {
    this->i32[2] = v18 - 4;
    if (v22 < 4)
    {
      v26 = 3;
      if (v22)
      {
        v26 = 3 - v22;
        v27 = *v6++;
        v24 = (v27 & ~(-1 << v22)) << (3 - v22);
        this->i64[0] = v6;
        if (v22 == 3)
        {
          goto LABEL_64;
        }
      }

      else
      {
        LODWORD(v24) = 0;
      }

      LODWORD(v24) = v24 | (*v6 >> (8 - v26));
    }

    else
    {
      LODWORD(v24) = (*v6 >> (v22 - 3)) & 7;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
    this->i32[2] = -1;
  }

LABEL_64:
  if ((*(a2 + 5) & 1) == 0)
  {
    *(a2 + 5) = 1;
  }

  *(a2 + 4) = v24;
}

void webrtc::anonymous namespace::Vp9ReadColorConfig(unsigned __int8 **a1, int *a2)
{
  v2 = *a2;
  if ((*a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 2);
    v7 = 8;
    goto LABEL_11;
  }

  *(a1 + 12) = 0;
  v3 = *(a1 + 2);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 != v4)
  {
    v5 = -1;
    goto LABEL_8;
  }

  *(a1 + 2) = v5;
  v6 = *a1;
  if ((v5 & 7) == 0)
  {
    *a1 = v6 + 1;
    if (*v6)
    {
      goto LABEL_10;
    }

LABEL_8:
    v7 = 10;
    goto LABEL_11;
  }

  if (((*v6 >> (v5 & 7)) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v7 = 12;
LABEL_11:
  *(a2 + 9) = v7;
  *(a1 + 12) = 0;
  if (v5 <= 2)
  {
    *(a1 + 2) = -1;
    *(a2 + 5) = 256;
    goto LABEL_26;
  }

  v8 = v5 & 7;
  *(a1 + 2) = v5 - 3;
  v9 = *a1;
  if (v8 < 4)
  {
    v11 = 3;
    if (v8)
    {
      v11 = 3 - v8;
      v12 = *v9++;
      v13 = (v12 & ~(-1 << v8)) << (3 - v8);
      *a1 = v9;
      if (v8 == 3)
      {
        *(a2 + 5) = v13 | 0x100;
        if (v13 != 7)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    v18 = v13 | (*v9 >> (8 - v11));
    *(a2 + 5) = v18 | 0x100;
    if (v18 != 7)
    {
      goto LABEL_26;
    }

LABEL_19:
    a2[3] = 1;
    *(a2 + 16) = 1;
    if ((v2 | 2) != 3)
    {
      v29 = a1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
LABEL_54:
        webrtc::webrtc_logging_impl::Log("\r\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/vp9_uncompressed_header_parser.cc");
      }

LABEL_55:
      *(v29 + 2) = -1;
      return;
    }

    a2[5] = 0;
    *(a2 + 24) = 1;
    *(a1 + 12) = 0;
    v14 = *(a1 + 2);
    if (v14 > 0)
    {
      v15 = v14 - 1;
      *(a1 + 2) = v14 - 1;
      v16 = *a1;
      v17 = v15 & 7;
      if (v17)
      {
        if (((*v16 >> v17) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        *a1 = v16 + 1;
        if ((*v16 & 1) == 0)
        {
          return;
        }
      }

      v29 = a1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

LABEL_48:
    *(a1 + 2) = -1;
    return;
  }

  v10 = (*v9 >> (v8 - 3)) & 7;
  *(a2 + 5) = (*v9 >> (v8 - 3)) & 7 | 0x100;
  if (v10 == 7)
  {
    goto LABEL_19;
  }

LABEL_26:
  *(a1 + 12) = 0;
  v19 = *(a1 + 2);
  if (v19 <= 0)
  {
    *(a1 + 2) = -1;
    a2[3] = 0;
    *(a2 + 16) = 1;
    if ((v2 | 2) == 3)
    {
      goto LABEL_33;
    }

LABEL_30:
    a2[5] = 3;
    *(a2 + 24) = 1;
    return;
  }

  v20 = v19 - 1;
  *(a1 + 2) = v19 - 1;
  v21 = *a1;
  v22 = v20 & 7;
  if (v22)
  {
    LODWORD(v21) = *v21 >> v22;
  }

  else
  {
    *a1 = v21 + 1;
    LOBYTE(v21) = *v21;
  }

  a2[3] = v21 & 1;
  *(a2 + 16) = 1;
  if ((v2 | 2) != 3)
  {
    goto LABEL_30;
  }

LABEL_33:
  *(a1 + 12) = 0;
  v23 = *(a1 + 2);
  if (v23 <= 1)
  {
    v24 = 0;
    *(a1 + 2) = -1;
    goto LABEL_44;
  }

  v25 = a1[1] & 7;
  *(a1 + 2) = v23 - 2;
  v26 = *a1;
  if ((v23 & 7u) >= 3)
  {
    v24 = (*v26 >> (v25 - 2)) & 3;
    goto LABEL_44;
  }

  if ((v23 & 7) != 0)
  {
    v27 = *v26++;
    v24 = (v27 & ~(-1 << v25)) << (2 - v25);
    *a1 = v26;
    if (v25 == 2)
    {
      goto LABEL_44;
    }

    v28 = 7;
  }

  else
  {
    v24 = 0;
    v28 = 6;
  }

  v24 |= *v26 >> v28;
LABEL_44:
  *(a2 + 24) = 1;
  *(a1 + 12) = 0;
  v37 = *(a1 + 2);
  if (v37 <= 0)
  {
    goto LABEL_48;
  }

  v38 = v37 - 1;
  *(a1 + 2) = v37 - 1;
  v39 = *a1;
  v40 = v38 & 7;
  if (!v40)
  {
    *a1 = v39 + 1;
    if ((*v39 & 1) == 0)
    {
      return;
    }

LABEL_50:
    v29 = a1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if ((*v39 >> v40))
  {
    goto LABEL_50;
  }
}

void webrtc::ParseUncompressedVp9Header(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v15.i64[0] = v8;
  if (((a2 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v13);
    webrtc::vp9::GetQp(v9, v10, v11, v12);
  }

  else
  {
    v15.i32[2] = 8 * a2;
    v15.i8[12] = 1;
    LOBYTE(__src[1]) = 0;
    __src[0] = 0;
    *(&__src[1] + 1) = 8;
    LOBYTE(__src[2]) = 0;
    BYTE4(__src[2]) = 0;
    LOBYTE(__src[3]) = 0;
    LOBYTE(__src[9]) = 0;
    LOBYTE(__src[10]) = 0;
    LOBYTE(__src[11]) = 0;
    LOWORD(__src[12]) = 0;
    WORD1(__src[14]) = 0;
    HIWORD(__src[14]) = 0;
    LOBYTE(__src[15]) = 0;
    BYTE4(__src[15]) = 0;
    LOBYTE(__src[16]) = 0;
    BYTE4(__src[16]) = 0;
    LOBYTE(__src[17]) = 0;
    BYTE4(__src[17]) = 0;
    LOBYTE(__src[18]) = 0;
    BYTE4(__src[18]) = 0;
    LOBYTE(__src[19]) = 0;
    BYTE4(__src[19]) = 0;
    LOBYTE(__src[20]) = 0;
    BYTE4(__src[20]) = 0;
    LOBYTE(__src[21]) = 0;
    BYTE4(__src[21]) = 0;
    LOBYTE(__src[22]) = 0;
    BYTE4(__src[22]) = 0;
    LOBYTE(__src[23]) = 0;
    BYTE4(__src[23]) = 0;
    LOBYTE(__src[24]) = 0;
    BYTE4(__src[24]) = 0;
    LOBYTE(__src[25]) = 0;
    BYTE4(__src[25]) = 0;
    LOBYTE(__src[26]) = 0;
    BYTE4(__src[26]) = 0;
    LOBYTE(__src[27]) = 0;
    BYTE4(__src[27]) = 0;
    LOBYTE(__src[28]) = 0;
    BYTE4(__src[28]) = 0;
    LOBYTE(__src[29]) = 0;
    BYTE4(__src[29]) = 0;
    LOBYTE(__src[30]) = 0;
    BYTE4(__src[30]) = 0;
    LOBYTE(__src[31]) = 0;
    BYTE4(__src[31]) = 0;
    LOBYTE(__src[32]) = 0;
    BYTE4(__src[32]) = 0;
    LOBYTE(__src[33]) = 0;
    BYTE4(__src[33]) = 0;
    LOBYTE(__src[34]) = 0;
    BYTE4(__src[34]) = 0;
    LOBYTE(__src[35]) = 0;
    BYTE4(__src[35]) = 0;
    LOBYTE(__src[36]) = 0;
    BYTE4(__src[36]) = 0;
    LOBYTE(__src[37]) = 0;
    BYTE4(__src[37]) = 0;
    LOBYTE(__src[38]) = 0;
    BYTE4(__src[38]) = 0;
    LOBYTE(__src[39]) = 0;
    BYTE4(__src[39]) = 0;
    LOBYTE(__src[40]) = 0;
    BYTE4(__src[40]) = 0;
    LOBYTE(__src[41]) = 0;
    BYTE4(__src[41]) = 0;
    LOBYTE(__src[42]) = 0;
    BYTE4(__src[42]) = 0;
    LOBYTE(__src[43]) = 0;
    BYTE4(__src[43]) = 0;
    LOBYTE(__src[44]) = 0;
    BYTE4(__src[44]) = 0;
    LOBYTE(__src[45]) = 0;
    BYTE4(__src[45]) = 0;
    LOBYTE(__src[46]) = 0;
    BYTE4(__src[46]) = 0;
    *(&__src[4] + 4) = 0;
    *(&__src[3] + 4) = 0;
    memset(&__src[6], 0, 17);
    *(&__src[12] + 4) = 0;
    __src[47] = -1;
    LODWORD(__src[48]) = -1;
    __src[49] = 0;
    LOBYTE(__src[50]) = 0;
    BYTE4(__src[50]) = 0;
    __src[51] = 0;
    __src[52] = 0;
    webrtc::Parse(&v15, __src, 0);
    if (v15.i32[2] < 0 || SHIDWORD(__src[3]) < 1)
    {
      *a7 = 0;
      a7[424] = 0;
    }

    else
    {
      memcpy(a7, __src, 0x1A8uLL);
      a7[424] = 1;
    }
  }
}

uint64_t webrtc::vp9::GetQp(webrtc::vp9 *this, unint64_t a2, _DWORD *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = this;
  }

  else
  {
    v8 = 0;
  }

  v104.i64[0] = v8;
  if (((a2 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v14);
    return webrtc::internal::WeakReferenceOwner::GetRef(v12, v13);
  }

  else
  {
    v104.i32[2] = 8 * a2;
    v104.i8[12] = 1;
    v16 = 0;
    v15 = 0;
    v17 = 8;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v22 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v30 = 0;
    v97 = -1;
    v98 = -1;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    webrtc::Parse(&v104, &v15, 1);
    v10 = v104.i32[2];
    if ((v104.i32[2] & 0x80000000) == 0)
    {
      *a3 = v30;
    }

    return v10 >= 0;
  }
}

uint64_t webrtc::internal::WeakReferenceOwner::GetRef@<X0>(webrtc::internal::WeakReferenceOwner *this@<X0>, void *a2@<X8>)
{
  if (!*this || atomic_load_explicit((*this + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  result = *this;
  *a2 = *this;
  if (result)
  {
    atomic_fetch_add_explicit((result + 4), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_27356B900(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27356BB2C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27356BD58(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void *webrtc::setVideoDecoderCallbacks(void *result, void *a2, void *a3, void *a4)
{
  _MergedGlobals_24 = result;
  off_28100BE90 = a2;
  off_28100BE98 = a3;
  off_28100BEA0 = a4;
  return result;
}

void webrtc::RemoteVideoDecoder::~RemoteVideoDecoder(webrtc::RemoteVideoDecoder *this)
{
  off_28100BE90(*(this + 1));
}

{
  off_28100BE90(*(this + 1));

  JUMPOUT(0x2743DA540);
}

void sub_27356C2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  webrtc::VideoFrame::Builder::~Builder(va);
  _Unwind_Resume(a1);
}

void sub_27356C598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  webrtc::VideoFrame::Builder::~Builder(va);
  _Unwind_Resume(a1);
}

uint64_t webrtc::RemoteVideoDecoder::Decode(webrtc::RemoteVideoDecoder *this, const webrtc::EncodedImage *a2)
{
  if (*(a2 + 6) == 3)
  {
    v4 = *a2;
    v3 = *(a2 + 1);
    if (*(this + 16) == 1)
    {
      v5 = *(a2 + 23);
      if ((v5 & 0x100000000) != 0 && v5 > 0)
      {
        return 4294967283;
      }
    }
  }

  else
  {
    LOWORD(v3) = 0;
    LOWORD(v4) = 0;
  }

  v7 = off_28100BE98;
  v8 = *(this + 1);
  v9 = *(a2 + 38);
  v10 = *(a2 + 17);
  if (v10)
  {
    v14 = off_28100BE98;
    v11 = (*(*v10 + 40))(v10);
    v7 = v14;
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 18);

  return (v7)(v8, v9, v12, v13, v4, v3);
}

void webrtc::RemoteVideoDecoderFactory::QueryCodecSupport(webrtc::RemoteVideoDecoderFactory *this, webrtc::SdpVideoFormat **a2)
{
  (*(**(this + 1) + 16))(&__p);
  v3 = __p;
  if (v11 == __p)
  {
    v4 = 0;
  }

  else
  {
    v4 = __p;
  }

  if (v11 == __p)
  {
    if (!__p)
    {
      return;
    }
  }

  else
  {
    v5 = &v4[v11 - __p];
    do
    {
      webrtc::SdpVideoFormat::IsSameCodec(a2, v3);
      if (v6)
      {
        break;
      }

      v3 += 12;
    }

    while (v3 != v5);
    v3 = __p;
    if (!__p)
    {
      return;
    }
  }

  v7 = v11;
  v8 = v3;
  if (v11 != v3)
  {
    do
    {
      while (1)
      {
        if (*(v7 - 6))
        {
          operator delete(*(v7 - 5));
        }

        v9 = (v7 - 12);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v7 - 9), *(v7 - 8));
        if (*(v7 - 73) < 0)
        {
          break;
        }

        v7 -= 12;
        if (v9 == v3)
        {
          goto LABEL_18;
        }
      }

      operator delete(*v9);
      v7 -= 12;
    }

    while (v9 != v3);
LABEL_18:
    v8 = __p;
  }

  v11 = v3;
  operator delete(v8);
}

uint64_t webrtc::RemoteVideoDecoderFactory::Create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (_MergedGlobals_24)
  {
    result = _MergedGlobals_24(a2);
    if (result)
    {
      if ((v6 & 1) == 0)
      {
        operator new();
      }

      *a3 = result;
      return result;
    }

    v7 = *(**(a1 + 8) + 32);
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);
  }

  return v7();
}

void sub_27356CA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id webrtc::createLocalH264Decoder(void *a1)
{
  v1 = a1;
  v2 = [[WK_RTCLocalVideoH264H265VP9Decoder alloc] initH264DecoderWithCallback:v1];

  return v2;
}

id webrtc::createLocalH265Decoder(void *a1)
{
  v1 = a1;
  v2 = [[WK_RTCLocalVideoH264H265VP9Decoder alloc] initH265DecoderWithCallback:v1];

  return v2;
}

id webrtc::createLocalVP9Decoder(void *a1)
{
  v1 = a1;
  v2 = [[WK_RTCLocalVideoH264H265VP9Decoder alloc] initVP9DecoderWithCallback:v1];

  return v2;
}

void webrtc::releaseLocalDecoder(webrtc *this, void *a2)
{
  [(webrtc *)this releaseDecoder];
}

void webrtc::RemoteVideoDecoderFactory::~RemoteVideoDecoderFactory(webrtc::RemoteVideoDecoderFactory *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::WebKitDecoderReceiver::~WebKitDecoderReceiver(CFTypeRef *this)
{
  if (this[6])
  {
    CFRelease(this[6]);
  }
}

{
  if (this[6])
  {
    CFRelease(this[6]);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebKitDecoderReceiver::initializeFromFormatDescription(webrtc::WebKitDecoderReceiver *this, CMFormatDescriptionRef desc)
{
  *(this + 44) = 0;
  *(this + 10) = 0;
  result = CMFormatDescriptionGetExtensions(desc);
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x277CC03B0]);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v5 == result)
      {
        result = CFDictionaryGetValue(v4, @"vpcC");
        if (result)
        {
          v6 = result;
          v7 = CFGetTypeID(result);
          result = CFDataGetTypeID();
          if (v7 == result)
          {
            result = CFDataGetLength(v6);
            if (result >= 12)
            {
              result = CFDataGetBytePtr(v6);
              v8 = *(result + 6);
              *(this + 44) = v8 & 1;
              if (v8 <= 0xF)
              {
                *(this + 10) = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::WebKitDecoderReceiver::Decoded(webrtc::WebKitDecoderReceiver *this, webrtc::VideoFrame *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_2882A3C70;
  v6[1] = this;
  v7 = v6;
  v3 = *(a2 + 1);
  if (v3)
  {
    (**v3)(*(a2 + 1));
  }

  PixelBufferFromFrameBuffer = webrtc::createPixelBufferFromFrameBuffer(v3, v6);
  (*(*v3 + 8))(v3);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  VTDecoderSessionEmitDecodedFrame();
  *(this + 2) = 0;
  if (PixelBufferFromFrameBuffer)
  {
    CFRelease(PixelBufferFromFrameBuffer);
  }

  return 0;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_2882A3C70;
  v6[1] = this;
  v7 = v6;
  v3 = *(a2 + 1);
  if (v3)
  {
    (**v3)(*(a2 + 1));
  }

  PixelBufferFromFrameBuffer = webrtc::createPixelBufferFromFrameBuffer(v3, v6);
  (*(*v3 + 8))(v3);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  VTDecoderSessionEmitDecodedFrame();
  *(this + 2) = 0;
  if (PixelBufferFromFrameBuffer)
  {
    CFRelease(PixelBufferFromFrameBuffer);
  }

  return 0;
}

void sub_27356D1A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27356D350(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void webrtc::WebKitDecoderReceiver::Decoded(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = &unk_2882A3C70;
  v5[1] = a1;
  v6 = v5;
  v3 = *(a2 + 8);
  if (v3)
  {
    (**v3)(*(a2 + 8));
  }

  PixelBufferFromFrameBuffer = webrtc::createPixelBufferFromFrameBuffer(v3, v5);
  (*(*v3 + 8))(v3);
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))();
  }

  VTDecoderSessionEmitDecodedFrame();
  *(a1 + 16) = 0;
  if (PixelBufferFromFrameBuffer)
  {
    CFRelease(PixelBufferFromFrameBuffer);
  }
}

void sub_27356D4FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<webrtc::WebKitDecoderReceiver::Decoded(webrtc::VideoFrame &)::$_0,std::allocator<webrtc::WebKitDecoderReceiver::Decoded(webrtc::VideoFrame &)::$_0>,__CVBuffer * ()(unsigned long,unsigned long,webrtc::BufferType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A3C70;
  a2[1] = v2;
  return result;
}

const void *std::__function::__func<webrtc::WebKitDecoderReceiver::Decoded(webrtc::VideoFrame &)::$_0,std::allocator<webrtc::WebKitDecoderReceiver::Decoded(webrtc::VideoFrame &)::$_0>,__CVBuffer * ()(unsigned long,unsigned long,webrtc::BufferType)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  valuePtr[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(v4 + 48);
  if (!v8 || *(v4 + 24) != v5 || *(v4 + 32) != v6 || *(v4 + 40) != v7)
  {
    if ((v7 & 0xFFFFFFFD) != 0)
    {
      if (v7 == 3)
      {
        if (*(v4 + 44))
        {
          v10 = 2019963442;
        }

        else
        {
          v10 = 2016686642;
        }
      }

      else
      {
        if (v7 != 1)
        {
          return 0;
        }

        if (*(v4 + 44))
        {
          v10 = 2019963440;
        }

        else
        {
          v10 = 2016686640;
        }
      }
    }

    else if (*(v4 + 44))
    {
      v10 = 875704422;
    }

    else
    {
      v10 = 875704438;
    }

    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
    LODWORD(valuePtr[0]) = v10;
    v12 = CFNumberCreate(v9, kCFNumberSInt32Type, valuePtr);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    LODWORD(valuePtr[0]) = 32;
    v13 = CFNumberCreate(v9, kCFNumberSInt32Type, valuePtr);
    v14 = *MEMORY[0x277CC4DB0];
    valuePtr[0] = *MEMORY[0x277CC4E30];
    valuePtr[1] = v14;
    v15 = *MEMORY[0x277CC4DC0];
    valuePtr[2] = *MEMORY[0x277CC4DB8];
    valuePtr[3] = v15;
    valuePtr[4] = *MEMORY[0x277CC4DA0];
    values[0] = Mutable;
    values[1] = v13;
    values[2] = v13;
    values[3] = v13;
    values[4] = v13;
    v16 = CFDictionaryCreate(v9, valuePtr, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(v13);
    CFRelease(Mutable);
    VTDecoderSessionSetPixelBufferAttributes();
    CFRelease(v16);
    v17 = *(v4 + 48);
    if (v17)
    {
      CFRelease(v17);
      *(v4 + 48) = 0;
    }

    result = VTDecoderSessionGetPixelBufferPool();
    *(v4 + 48) = result;
    if (!result)
    {
      *(v4 + 24) = v5;
      *(v4 + 32) = v6;
      *(v4 + 40) = v7;
      return result;
    }

    CFRetain(result);
    v8 = *(v4 + 48);
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(v4 + 40) = v7;
    if (v8)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v9 = *MEMORY[0x277CBECE8];
LABEL_22:
  valuePtr[0] = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(v9, v8, valuePtr))
  {
    return 0;
  }

  else
  {
    return valuePtr[0];
  }
}

void *webrtc::setVideoEncoderCallbacks(void *this, void *(*a2)(const webrtc::SdpVideoFormat *), int (*a3)(void *), int (*a4)(void *, const webrtc::VideoCodec *), int (*a5)(void *, const webrtc::VideoFrame *, BOOL), int (*a6)(void *, void *), void (*a7)(void *, const webrtc::VideoEncoder::RateControlParameters *))
{
  _MergedGlobals_25 = this;
  off_28100BEB0 = a2;
  off_28100BEB8 = a3;
  off_28100BEC0 = a4;
  off_28100BEC8 = a5;
  off_28100BED0 = a6;
  return this;
}

uint64_t webrtc::RemoteVideoEncoderFactory::Create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_25)
  {
    if (_MergedGlobals_25(a3))
    {
      operator new();
    }

    v4 = *(**(a1 + 8) + 24);
  }

  else
  {
    v4 = *(**(a1 + 8) + 24);
  }

  return v4();
}

void sub_27356E054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<webrtc::RemoteVideoEncoderFactory>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void webrtc::RemoteVideoEncoder::~RemoteVideoEncoder(webrtc::RemoteVideoEncoder *this)
{
  off_28100BEB0(*(this + 1));
}

{
  off_28100BEB0(*(this + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RemoteVideoEncoder::InitEncode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a2 + 32);
  }

  if (v2 < 8)
  {
    v4 = 0;
    v5 = 0;
LABEL_9:
    v12 = v3 - v4;
    v13 = (a2 + 36 * v4 + 52);
    do
    {
      v14 = *v13;
      v13 += 9;
      v5 += v14;
      --v12;
    }

    while (v12);
    goto LABEL_11;
  }

  v4 = v3 & 0xF8;
  v6 = (a2 + 160);
  v7 = 0uLL;
  v8 = v4;
  v9 = 0uLL;
  do
  {
    v10.i32[0] = *(v6 - 27);
    v10.i32[1] = *(v6 - 18);
    v10.i32[2] = *(v6 - 9);
    v10.i32[3] = *v6;
    v11.i32[0] = v6[9];
    v11.i32[1] = v6[18];
    v11.i32[2] = v6[27];
    v11.i32[3] = v6[36];
    v7 = vaddq_s32(v10, v7);
    v9 = vaddq_s32(v11, v9);
    v6 += 72;
    v8 -= 8;
  }

  while (v8);
  v5 = vaddvq_s32(vaddq_s32(v9, v7));
  if (v4 != v3)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v2 >= 2 && v5)
  {
    return 4294967281;
  }

  else
  {
    return off_28100BEB8(*(a1 + 8));
  }
}

uint64_t webrtc::RemoteVideoEncoder::Encode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8) - *a3;
  if (!v4)
  {
    return off_28100BEC0(*(a1 + 8), a2, 0);
  }

  v5 = v4 >> 2;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (*v3 == 3)
  {
    return off_28100BEC0(*(a1 + 8), a2, 1);
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (v6 == v8)
    {
      break;
    }

    v10 = v3[v8++];
  }

  while (v10 != 3);
  return off_28100BEC0(*(a1 + 8), a2, v9 < v5);
}

void webrtc::RemoteVideoEncoder::GetEncoderInfo(uint64_t a1@<X8>)
{
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  if (a1 + 24 <= "unknown" && a1 + 31 > "unknown")
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = -1;
    *(a1 + 56) = 2;
    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 176) = 0;
    *(a1 + 200) = 0;
    *(a1 + 216) = 1;
    *(a1 + 208) = 2;
    *(a1 + 240) = 0;
    *(a1 + 244) = 0;
    *(a1 + 248) = 0;
    *(a1 + 21) = 1;
    *(a1 + 47) = 18;
    strcpy((a1 + 24), "RemoteVideoToolBox");
    *(a1 + 49) = 1;
    *a1 = 0x270000001CLL;
    *(a1 + 8) = 1;
    *(a1 + 12) = 57600;
  }
}

void webrtc::encoderVideoTaskComplete()
{
  v32 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0uLL;
  v2 = 4;
  v3 = 0;
  v4 = -1;
  v5 = -1;
  v11 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v12 = 0;
  memset(v13, 0, 13);
  v21 = v22;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  operator new();
}

void sub_27356E834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  webrtc::EncodedImage::~EncodedImage(va);
  _Unwind_Resume(a1);
}

WK_RTCLocalVideoH264H265Encoder *webrtc::createLocalEncoder(const webrtc::SdpVideoFormat *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [WK_RTCVideoCodecInfo alloc];
  webrtc::SdpVideoFormat::SdpVideoFormat(&v23, a1);
  v15 = [(WK_RTCVideoCodecInfo *)v14 initWithNativeSdpVideoFormat:&v23];
  if (v25)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v24, v24[1]);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v16 = [[WK_RTCLocalVideoH264H265Encoder alloc] initWithCodecInfo:v15 scalabilityMode:a3];
  if (v16)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN6webrtc18createLocalEncoderERKNS_14SdpVideoFormatEbNS_27LocalEncoderScalabilityModeEU13block_pointerFvPKhmRKNS_22WebKitEncodedFrameInfoEEU13block_pointerFvS5_mEU13block_pointerFvbE_block_invoke;
    v21[3] = &unk_279E95CC8;
    v22 = v11;
    [(WK_RTCLocalVideoH264H265Encoder *)v16 setCallback:v21];
    [(WK_RTCLocalVideoH264H265Encoder *)v16 setUseAnnexB:a2];
    [(WK_RTCLocalVideoH264H265Encoder *)v16 setDescriptionCallback:v12];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN6webrtc18createLocalEncoderERKNS_14SdpVideoFormatEbNS_27LocalEncoderScalabilityModeEU13block_pointerFvPKhmRKNS_22WebKitEncodedFrameInfoEEU13block_pointerFvS5_mEU13block_pointerFvbE_block_invoke_2;
    v19[3] = &unk_279E95CF0;
    v20 = v13;
    [(WK_RTCLocalVideoH264H265Encoder *)v16 setErrorCallback:v19];
    v17 = v16;
  }

  return v16;
}

uint64_t ___ZN6webrtc18createLocalEncoderERKNS_14SdpVideoFormatEbNS_27LocalEncoderScalabilityModeEU13block_pointerFvPKhmRKNS_22WebKitEncodedFrameInfoEEU13block_pointerFvS5_mEU13block_pointerFvbE_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [v7 nativeEncodedImage];
    v10 = v30[0];
  }

  else
  {
    v10 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    v45 = 0;
  }

  v17 = 0;
  LOBYTE(v16) = 0;
  v22 = 0;
  v15[0] = v10;
  v15[1] = [v7 timeStamp];
  if ([v7 duration] != -1)
  {
    v16 = [v7 duration];
    v17 = 1;
  }

  v18 = *&v30[1];
  v19 = v30[3];
  if (HIDWORD(v30[3]) == 270)
  {
    v11 = 3;
  }

  else if (HIDWORD(v30[3]) == 180)
  {
    v11 = 2;
  }

  else
  {
    v11 = HIDWORD(v30[3]) == 90;
  }

  v20 = v11;
  v21 = v30[4];
  v23 = HIDWORD(v30[4]);
  v27 = *&v30[9];
  v28 = *&v30[11];
  v29 = v30[13];
  v25 = *&v30[5];
  v26 = *&v30[7];
  v24 = [v7 temporalIndex];
  v12 = *(a1 + 32);
  if (*(&v32 + 1))
  {
    v13 = (*(**(&v32 + 1) + 40))(*(&v32 + 1));
  }

  else
  {
    v13 = 0;
  }

  (*(v12 + 16))(v12, v13, v33, v15);
  webrtc::EncodedImage::~EncodedImage(v30);

  return 1;
}

void sub_27356ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  webrtc::EncodedImage::~EncodedImage(&a27);

  _Unwind_Resume(a1);
}

void webrtc::releaseLocalEncoder(webrtc *this, void *a2)
{
  [(webrtc *)this releaseEncoder];
}

void webrtc::initializeLocalEncoder(webrtc *this, void *a2, __int16 a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v12 = a2;
  v13 = this;
  LODWORD(v15) = 0;
  LOBYTE(v16) = 1;
  v17[0] = 0;
  memset(&v17[4], 0, 48);
  *&v17[52] = 1;
  memset(&v17[68], 0, 20);
  v18 = 0u;
  v19 = 0u;
  v17[16] = 1;
  v17[72] = 0;
  DWORD2(v18) = 0;
  BYTE12(v18) = 0;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  BYTE12(v19) = 1;
  BYTE8(v20) = 1;
  *(&v21 + 4) = 0;
  LODWORD(v21) = 0;
  BYTE12(v21) = 0;
  BYTE12(v22) = 1;
  LOBYTE(v23) = 0;
  LOWORD(v24) = 0;
  LOBYTE(v25) = 0;
  LODWORD(v27) = 0;
  BYTE4(v27) = 0;
  LODWORD(v26) = 0;
  WORD2(v26) = 0;
  WORD2(v15) = v12;
  HIWORD(v15) = a3;
  LODWORD(v15) = [(webrtc *)v13 codecType:v15];
  v14 = [[WK_RTCVideoEncoderSettings alloc] initWithNativeVideoCodec:&v15];
  [(webrtc *)v13 startEncodeWithSettings:v14 numberOfCores:1, v15];
}

void webrtc::encodeLocalEncoderFrame(uint64_t a1, webrtc *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = [MEMORY[0x277CBEB18] array];
  if (a8)
  {
    [v10 addObject:&unk_2882B0EC8];
  }

  webrtc::pixelBufferToFrame(a2, v11);
}

void sub_27356F08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

void webrtc::VideoEncoderFactoryWithSimulcast::~VideoEncoderFactoryWithSimulcast(webrtc::VideoEncoderFactoryWithSimulcast *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }
}

{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RemoteVideoEncoderFactory::~RemoteVideoEncoderFactory(webrtc::RemoteVideoEncoderFactory *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }
}

{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void *std::unique_ptr<webrtc::RemoteVideoEncoderFactory>::~unique_ptr[abi:sn200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 48))(v3);
    }

    MEMORY[0x2743DA540](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

void sub_27356F42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x2743DA540](v10, 0x10A1C40A31BA2F2);

  _Unwind_Resume(a1);
}

void sub_27356F58C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MEMORY[0x2743DA540](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t webrtc::videoFrameBufferProvider(webrtc *this, const webrtc::VideoFrame *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    (**v2)(*(this + 1), a2);
  }

  if ((*(*v2 + 32))(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[2];
  }

  (*(*v2 + 8))(v2);
  return v3;
}

CVPixelBufferRef webrtc::createPixelBufferFromI420Buffer(uint64_t a1, uint64_t a2, size_t width, size_t height, _OWORD *a5)
{
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x34323066u, 0, &pixelBufferOut))
  {
    v10 = 1;
  }

  else
  {
    v10 = pixelBufferOut == 0;
  }

  if (!v10 && !CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
  {
    v11 = a5[1];
    v14[0] = *a5;
    v14[1] = v11;
    v14[2] = a5[2];
    v12 = webrtc::copyI420BufferToPixelBuffer(pixelBufferOut, a1, a2, width, height, v14);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    result = pixelBufferOut;
    if (v12)
    {
      return result;
    }

    CFRelease(pixelBufferOut);
  }

  return 0;
}

BOOL webrtc::copyI420BufferToPixelBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v15 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  result = 0;
  if (WidthOfPlane == a4 && HeightOfPlane == a5 && (a4 + 1) >> 1 == v14)
  {
    v17 = (a5 + 1) >> 1;
    if (v17 == v15)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      v20 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      v21 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      result = 0;
      v22 = a6[1];
      if (v22)
      {
        v23 = a6[3];
        if (v23)
        {
          v24 = a6[5];
          if (v24)
          {
            if (is_mul_ok(v17, v23) && is_mul_ok(v17, v24) && is_mul_ok(a5, v22))
            {
              result = 0;
              v25 = (a2 + *a6);
              v26 = a2 + a3;
              if (a2 + a3 >= &v25[a5 * v22])
              {
                v27 = a2 + a6[2];
                if (v26 >= v27 + v17 * v23)
                {
                  v28 = a2 + a6[4];
                  if (v26 >= v28 + v17 * v24)
                  {
                    return I420ToNV12(v25, v22, v27, v23, v28, v24, BaseAddressOfPlane, BytesPerRowOfPlane, v20, v21, a4, a5) == 0;
                  }
                }
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

CVPixelBufferRef webrtc::createPixelBufferFromI420ABuffer(uint64_t a1, uint64_t a2, size_t width, size_t height, uint64_t a5)
{
  v6 = height;
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x76306138u, 0, &pixelBufferOut))
  {
    v10 = 1;
  }

  else
  {
    v10 = pixelBufferOut == 0;
  }

  if (!v10 && !CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
  {
    v11 = *(a5 + 16);
    v21[0] = *a5;
    v21[1] = v11;
    v21[2] = *(a5 + 32);
    v12 = webrtc::copyI420BufferToPixelBuffer(pixelBufferOut, a1, a2, width, v6, v21);
    v13 = pixelBufferOut;
    if (v12)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 2uLL);
      if (!v6)
      {
LABEL_11:
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        return pixelBufferOut;
      }

      v16 = a1 + a2;
      v17 = *(a5 + 56);
      v18 = (a1 + *(a5 + 48));
      v19 = BytesPerRowOfPlane;
      while (&v18[width] <= v16)
      {
        memcpy(BaseAddressOfPlane, v18, width);
        v18 += v17;
        BaseAddressOfPlane += v19;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v13 = pixelBufferOut;
    }

    CVPixelBufferUnlockBaseAddress(v13, 0);
    CFRelease(pixelBufferOut);
  }

  return 0;
}

__CVBuffer *webrtc::createPixelBufferFromFrame(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a2;
    (**v2)(*(a1 + 8));
    a2 = v3;
  }

  PixelBufferFromFrameBuffer = webrtc::createPixelBufferFromFrameBuffer(v2, a2);
  (*(*v2 + 8))(v2);
  return PixelBufferFromFrameBuffer;
}

void sub_27356FB54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *webrtc::createPixelBufferFromFrameBuffer(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 32))(a1))
  {
    v4 = (*(*a1 + 32))(a1) - 1;
    if (v4 < 6 && ((0x35u >> v4) & 1) != 0)
    {
      v5 = dword_273BA64E8[v4];
      v6 = (*(*a1 + 40))(a1);
      v7 = (*(*a1 + 48))(a1);
      v121 = v6;
      v120 = v7;
      v119 = v5;
      v8 = *(a2 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:sn200100]();
        goto LABEL_55;
      }

      v9 = (*(*v8 + 48))(v8, &v121, &v120, &v119);
      if (v9)
      {
        v10 = v9;
        v11 = *a1;
        if (v5 <= 1)
        {
          if (!v5)
          {
            v12 = (*(v11 + 64))(a1);
            if (CVPixelBufferLockBaseAddress(v10, 0))
            {
              return v10;
            }

            v13 = (*(*v12 + 40))(v12);
            v14 = (*(*v12 + 48))(v12);
            v15 = (*(*v12 + 40))(v12);
            v16 = v15 + 1 + ((v15 + 1) >> 31);
            v17 = (*(*v12 + 48))(v12);
            v18 = v17 + 1 + ((v17 + 1) >> 31);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(v10, 0);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(v10, 0);
            v107 = CVPixelBufferGetBaseAddressOfPlane(v10, 1uLL);
            v21 = CVPixelBufferGetBytesPerRowOfPlane(v10, 1uLL);
            v22 = CVPixelBufferGetWidthOfPlane(v10, 1uLL);
            v23 = CVPixelBufferGetHeightOfPlane(v10, 1uLL);
            v24 = WidthOfPlane == v13 && HeightOfPlane == v14;
            v25 = v24 && v22 == v16 >> 1;
            if (!v25 || v23 != v18 >> 1)
            {
              return v10;
            }

            v27 = (*(*v12 + 136))(v12);
            v28 = (*(*v12 + 112))(v12);
            v29 = (*(*v12 + 144))(v12);
            v30 = (*(*v12 + 120))(v12);
            v31 = (*(*v12 + 152))(v12);
            v32 = (*(*v12 + 128))(v12);
            v33 = (*(*v12 + 40))(v12);
            v34 = (*(*v12 + 48))(v12);
            I420ToNV12(v27, v28, v29, v30, v31, v32, BaseAddressOfPlane, BytesPerRowOfPlane, v107, v21, v33, v34);
LABEL_53:
            CVPixelBufferUnlockBaseAddress(v10, 0);
            return v10;
          }

          if ((*(v11 + 32))(a1) == 5)
          {
            if (CVPixelBufferLockBaseAddress(v10, 0))
            {
              return v10;
            }

            v117 = (*(*a1 + 136))(a1);
            v113 = (*(*a1 + 144))(a1);
            v109 = (*(*a1 + 152))(a1);
            v70 = (*(*a1 + 40))(a1);
            v71 = (*(*a1 + 48))(a1);
            v105 = (*(*a1 + 112))(a1);
            v72 = (*(*a1 + 40))(a1);
            v73 = (*(*a1 + 48))(a1);
            v103 = (*(*a1 + 120))(a1);
            v101 = (*(*a1 + 128))(a1);
            v99 = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
            v97 = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
            v74 = CVPixelBufferGetWidthOfPlane(v10, 0);
            v75 = CVPixelBufferGetHeightOfPlane(v10, 0);
            v76 = CVPixelBufferGetBaseAddressOfPlane(v10, 1uLL);
            v77 = CVPixelBufferGetBytesPerRowOfPlane(v10, 1uLL);
            v78 = CVPixelBufferGetWidthOfPlane(v10, 1uLL);
            v79 = CVPixelBufferGetHeightOfPlane(v10, 1uLL);
            if (v74 != v70 || v75 != v71 || v78 != (v72 + 1 + ((v72 + 1) >> 31)) >> 1 || v79 != (v73 + 1 + ((v73 + 1) >> 31)) >> 1)
            {
              return v10;
            }

            I010ToP010(v117, v105, v113, v103, v109, v101, v99, v97 >> 1, v76, v77 >> 1, v70, v71);
            goto LABEL_53;
          }

          goto LABEL_56;
        }

        if (v5 != 2)
        {
          if ((*(v11 + 32))(a1) == 6)
          {
            if (CVPixelBufferLockBaseAddress(v10, 0))
            {
              return v10;
            }

            v114 = (*(*a1 + 136))(a1);
            v110 = (*(*a1 + 144))(a1);
            v106 = (*(*a1 + 152))(a1);
            v118 = (*(*a1 + 40))(a1);
            v84 = (*(*a1 + 48))(a1);
            v104 = (*(*a1 + 112))(a1);
            v85 = (*(*a1 + 40))(a1);
            v86 = (*(*a1 + 48))(a1);
            v102 = (*(*a1 + 120))(a1);
            v100 = (*(*a1 + 128))(a1);
            v98 = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
            v87 = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
            v88 = CVPixelBufferGetWidthOfPlane(v10, 0);
            v89 = CVPixelBufferGetHeightOfPlane(v10, 0);
            v90 = CVPixelBufferGetBaseAddressOfPlane(v10, 1uLL);
            v91 = CVPixelBufferGetBytesPerRowOfPlane(v10, 1uLL);
            v92 = CVPixelBufferGetWidthOfPlane(v10, 1uLL);
            v93 = CVPixelBufferGetHeightOfPlane(v10, 1uLL);
            if (v88 != v118 || v89 != v84 || v92 != (v85 + 1 + ((v85 + 1) >> 31)) >> 1 || v93 != v86)
            {
              return v10;
            }

            I210ToP210(v114, v104, v110, v102, v106, v100, v98, v87 >> 1, v90, v91 >> 1, v118, v84);
            goto LABEL_53;
          }

LABEL_57:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 66, "type() == Type::kI210", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v80, v81, v82, v83, v96);
          v95 = v94;

          _Unwind_Resume(v95);
        }

        if ((*(v11 + 32))(a1) == 3)
        {
          if (CVPixelBufferLockBaseAddress(v10, 0))
          {
            return v10;
          }

          v49 = (*(*a1 + 40))(a1);
          v50 = (*(*a1 + 48))(a1);
          v51 = (*(*a1 + 40))(a1);
          v52 = (*(*a1 + 48))(a1);
          v116 = CVPixelBufferGetBaseAddressOfPlane(v10, 0);
          v112 = CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
          v53 = CVPixelBufferGetWidthOfPlane(v10, 0);
          v54 = CVPixelBufferGetHeightOfPlane(v10, 0);
          v108 = CVPixelBufferGetBaseAddressOfPlane(v10, 1uLL);
          v55 = CVPixelBufferGetBytesPerRowOfPlane(v10, 1uLL);
          v56 = CVPixelBufferGetWidthOfPlane(v10, 1uLL);
          v57 = CVPixelBufferGetHeightOfPlane(v10, 1uLL);
          if (v53 != v49 || v54 != v50 || v56 != (v51 + 1 + ((v51 + 1) >> 31)) >> 1 || v57 != v52 / 2)
          {
            return v10;
          }

          v58 = (*(*a1 + 136))(a1);
          v59 = (*(*a1 + 112))(a1);
          v60 = (*(*a1 + 144))(a1);
          v61 = (*(*a1 + 120))(a1);
          v62 = (*(*a1 + 152))(a1);
          v63 = (*(*a1 + 128))(a1);
          v64 = (*(*a1 + 40))(a1);
          v65 = (*(*a1 + 48))(a1);
          I422ToNV21(v58, v59, v60, v61, v62, v63, v116, v112, v108, SHIDWORD(v108), v55, v64, v65);
          goto LABEL_53;
        }

LABEL_55:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 56, "type() == Type::kI422", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v45, v46, v47, v48, v96);
LABEL_56:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 61, "type() == Type::kI010", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v66, v67, v68, v69, v96);
        goto LABEL_57;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
LABEL_25:
        webrtc::webrtc_logging_impl::Log("\r\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitUtilities.mm");
        return 0;
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v42 = webrtc::ObjCFrameBuffer::wrapped_frame_buffer(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
    v10 = CVPixelBufferRetain([v43 pixelBuffer]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

CVPixelBufferRef webrtc::copyPixelBufferForFrame(webrtc *this, const webrtc::VideoFrame *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    (**v2)(*(this + 1), a2);
  }

  if ((*(*v2 + 32))(v2))
  {
    v3 = 0;
  }

  else
  {
    v4 = webrtc::ObjCFrameBuffer::wrapped_frame_buffer(v2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v3 = CVPixelBufferRetain([v5 pixelBuffer]);
    }

    else
    {
      v3 = 0;
    }
  }

  (*(*v2 + 8))(v2);
  return v3;
}

uint64_t webrtc::copyVideoFrameBuffer(webrtc *this, webrtc::VideoFrameBuffer *a2, unsigned __int8 *a3)
{
  result = (*(*this + 32))(this, a2, a3);
  if (result)
  {
    v6 = (*(*this + 32))(this);
    if (v6 == 5)
    {
      if ((*(*this + 32))(this) == 5)
      {
        v34 = (*(*this + 40))(this);
        v35 = (*(*this + 40))(this);
        v54 = (*(*this + 40))(this);
        v36 = (*(*this + 48))(this);
        v52 = (*(*this + 136))(this);
        v48 = (*(*this + 112))(this);
        v50 = (*(*this + 144))(this);
        v37 = (*(*this + 120))(this);
        v38 = (*(*this + 152))(this);
        v39 = (*(*this + 128))(this);
        v40 = (*(*this + 40))(this);
        v41 = (*(*this + 48))(this);
        result = 0;
        if (v40 < 0)
        {
          v42 = -((1 - v40) >> 1);
        }

        else
        {
          v42 = (v40 + 1) >> 1;
        }

        if (v41 < 0)
        {
          v43 = -((1 - v41) >> 1);
        }

        else
        {
          v43 = (v41 + 1) >> 1;
        }

        if (v40 >= 1 && v41)
        {
          ConvertToMSBPlane_16(v52, v48, a2, v34, v40, v41, 10);
          MergeUVPlane_16(v50, v37, v38, v39, a2 + 2 * v36 * v54, v35, v42, v43, 10);
          return 1;
        }
      }

      else
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 61, "type() == Type::kI010", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v30, v31, v32, v33, v47);
        return webrtc::convertBGRAToYUV(v44, v45, v46);
      }
    }

    else if (v6 == 1)
    {
      v7 = (*(*this + 64))(this);
      v51 = (*(*v7 + 40))(v7);
      v53 = (*(*v7 + 40))(v7);
      v49 = (*(*v7 + 40))(v7);
      v8 = (*(*v7 + 48))(v7);
      v9 = (*(*v7 + 136))(v7);
      v10 = (*(*v7 + 112))(v7);
      v11 = (*(*v7 + 144))(v7);
      v12 = (*(*v7 + 120))(v7);
      v13 = (*(*v7 + 152))(v7);
      v14 = (*(*v7 + 128))(v7);
      v15 = (*(*v7 + 40))(v7);
      v16 = (*(*v7 + 48))(v7);
      result = 0;
      if (a2)
      {
        v17 = v9 == 0;
      }

      else
      {
        v17 = 0;
      }

      v18 = !v17;
      if (a2)
      {
        v19 = !v18 || v11 == 0;
        v20 = v19 || v13 == 0;
        v21 = v20 || v15 < 1;
        if (!v21 && v16 != 0)
        {
          v23 = (1 - v16) >> 1;
          v24 = v11 + (v23 - 1) * v12;
          v25 = v13 + (v23 - 1) * v14;
          if (v16 >= 0)
          {
            v26 = v10;
          }

          else
          {
            v14 = -v14;
            v13 = v25;
            v12 = -v12;
            v11 = v24;
            v26 = -v10;
          }

          if (v16 < 0)
          {
            v27 = (v9 + v10 * ~v16);
          }

          else
          {
            v27 = v9;
          }

          if (v16 >= 0)
          {
            v28 = v16;
          }

          else
          {
            v28 = -v16;
          }

          if (v16 < 0)
          {
            v29 = (1 - v16) >> 1;
          }

          else
          {
            v29 = (v16 + 1) / 2;
          }

          CopyPlane(v27, v26, a2, v51, v15, v28);
          MergeUVPlane(v11, v12, v13, v14, a2 + v8 * v49, v53, (v15 + 1) / 2, v29);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL webrtc::convertBGRAToYUV(webrtc *this, __CVBuffer *a2, __CVBuffer *a3)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v10 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v13 = ARGBToNV12(BaseAddress, BytesPerRow, BaseAddressOfPlane, BytesPerRowOfPlane, v8, v10, Width, Height);
  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return v13 == 0;
}

uint64_t webrtc::createWebKitVP9Decoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    VTVideoDecoderGetClassID();
    CMDerivedObjectCreate();
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
    }

    return 4294954392;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
    }

    return 4294954394;
  }
}

uint64_t webrtc::invalidateVP9Decoder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      v4 = *(v3 + 48);
      if (v4)
      {
        CFRelease(v4);
      }

      MEMORY[0x2743DA540](v3, 0x10A1C40AC1A4D10);
    }

    return 0;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return 0;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
  return 0;
}

void webrtc::finalizeVP9Decoder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      v4 = *(v3 + 48);
      if (v4)
      {
        CFRelease(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
  }
}

uint64_t webrtc::startVP9DecoderSession()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v0, v1, v2, v3, v4, v5, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
  }

  return 4294954394;
}

uint64_t webrtc::decodeVP9DecoderFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !*DerivedStorage || !DerivedStorage[1])
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 4294954394;
    }

LABEL_10:
    webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
    return 4294954394;
  }

  v6 = DerivedStorage;
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  if (!DataBuffer)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 4294954394;
    }

    goto LABEL_10;
  }

  v8 = DataBuffer;
  blockBufferOut[0] = 0;
  if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
  {
LABEL_6:
    CMBlockBufferGetDataLength(v8);
    dataPointerOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(v8, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      *(v6[1] + 16) = a2;
      memset(&blockBufferOut[1], 0, 24);
      blockBufferOut[4] = 4;
      v34 = 0;
      v35 = -1;
      v36 = -1;
      v42 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v53[0] = 0;
      v53[1] = 0;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
      v43 = 0;
      v44[0] = 0;
      *(v44 + 5) = 0;
      v52 = v53;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 1;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      operator new();
    }

    v10 = DataPointer;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
    }

    if (blockBufferOut[0])
    {
      CFRelease(blockBufferOut[0]);
    }

    return v10;
  }

  if (!CMBlockBufferCreateContiguous(0, v8, 0, 0, 0, 0, 0, blockBufferOut))
  {
    v8 = blockBufferOut[0];
    goto LABEL_6;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/WebKit/WebKitVP9Decoder.cpp");
  }

  return 4294954392;
}

BOOL webrtc::RefCountedObject<webrtc::WebKitEncodedImageBufferWrapper>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::WebKitEncodedImageBufferWrapper::data(webrtc::WebKitEncodedImageBufferWrapper *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

unint64_t webrtc::ComfortNoiseDecoder::Generate(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int32x2_t a9)
{
  v131[158] = *MEMORY[0x277D85DE8];
  if (a3 > 0x280)
  {
    return a3 < 0x281;
  }

  if (a4)
  {
    v11 = *(a1 + 118);
    *(a1 + 120) = v11;
    v12 = 0x4CCD00003333;
    a9 = vdup_n_s32(v11);
  }

  else
  {
    a9.i16[0] = *(a1 + 118);
    a9.i16[2] = *(a1 + 120);
    v12 = 0x666600001999;
  }

  v13 = vmul_s32(vshr_n_u32(v12, 2uLL), vshr_n_s32(vshl_n_s32(a9, 0x10uLL), 0x10uLL));
  v14 = vsra_n_s32(vdup_lane_s32(vshr_n_s32(v13, 0xDuLL), 1), v13, 0xDuLL).u32[0];
  if (!((v14 < -32768) | (2 * (v14 >= 0x8000))))
  {
    v15 = *(a1 + 38);
    v16 = vmulq_lane_s32(vmovl_s16(*v15.i8), v12, 1);
    v17 = vmulq_lane_s32(vmovl_high_s16(v15), v12, 1);
    v18 = *(a1 + 12);
    v19 = vsraq_n_u32(vshrq_n_u32(vmulq_n_s32(vmovl_high_s16(v18), v12.i32[0]), 0xFuLL), v17, 0xFuLL);
    v20 = vsraq_n_u32(vshrq_n_u32(vmulq_n_s32(vmovl_s16(*v18.i8), v12.i32[0]), 0xFuLL), v16, 0xFuLL);
    v21 = vsraq_n_u32(vshrq_n_u32(vmulq_n_s32(vmovl_s16(*(a1 + 28)), v12.i32[0]), 0xFuLL), vmulq_lane_s32(vmovl_s16(*(a1 + 54)), v12, 1), 0xFuLL);
    v22 = v20.i16[2] + 4;
    v23 = 2 * v20.i16[2];
    v24 = ((((v20.i16[0] + 4) >> 3) * v23 + 0x8000) >> 16) + ((v20.i16[0] + 4) >> 3);
    v25 = 2 * v20.i16[4];
    v26 = v24 + (((v22 >> 3) * v25 + 0x8000) >> 16);
    v27 = ((v25 * v24 + 0x8000) >> 16) + (v22 >> 3);
    v28 = 2 * v20.i16[6];
    v29 = v26 + ((((v20.i16[4] + 4) >> 3) * v28 + 0x8000) >> 16);
    v30 = v27 + ((v28 * v27 + 0x8000) >> 16);
    v31 = ((v28 * v26 + 0x8000) >> 16) + ((v20.i16[4] + 4) >> 3);
    v16.i32[0] = vdup_laneq_s32(v19, 3).u32[0];
    v32 = 2 * v19.i16[0];
    v33 = v30 + ((v32 * v31 + 0x8000) >> 16);
    v34 = 2 * v19.i16[2];
    v35 = 2 * v19.i16[4];
    v17.i32[0] = v20.i16[6];
    v17.i32[1] = v32 * v30;
    *v17.i8 = vshl_u32(vadd_s32(*v17.i8, 0x800000000004), 0xFFFFFFF0FFFFFFFDLL);
    v36.i32[0] = (v32 * v29 + 0x8000) >> 16;
    v36.i32[1] = v31;
    v37 = vadd_s32(v36, *v17.i8);
    v38 = v29 + ((v17.i16[0] * v32 + 0x8000) >> 16);
    v39 = v38 + ((((v19.i16[0] + 4) >> 3) * v34 + 0x8000) >> 16);
    v40 = v33 + ((v34 * v37.i16[0] + 0x8000) >> 16);
    *v41.i8 = vsra_n_u32(v37, vmla_s32(0x800000008000, vdup_n_s32(v34), vshr_n_s32(vshl_n_s32(__PAIR64__(v37.u32[1], v33), 0x10uLL), 0x10uLL)), 0x10uLL);
    v42 = v40 + ((v35 * (((v34 * v38 + 0x8000) >> 16) + ((v19.i16[0] + 4) >> 3)) + 0x8000) >> 16);
    *v17.i8 = vadd_s32(*v41.i8, vrev64_s32(vshr_n_u32(vmla_s32(0x800000008000, vdup_n_s32(v35), vshr_n_s32(vshl_n_s32(*v41.i8, 0x10uLL), 0x10uLL)), 0x10uLL)));
    v41.i32[0] = v19.i16[2];
    v41.i32[1] = v35 * v40;
    v43 = vshl_u32(vadd_s32(*v41.i8, 0x800000000004), 0xFFFFFFF0FFFFFFFDLL);
    v44.i32[0] = (v35 * v39 + 0x8000) >> 16;
    v44.i32[1] = ((v34 * v38 + 0x8000) >> 16) + ((v19.i16[0] + 4) >> 3);
    v45 = vadd_s32(v44, v43);
    LOWORD(v40) = v39 + ((v43.i16[0] * v35 + 0x8000) >> 16);
    v16.i32[1] = v21.i32[0] << 16;
    v41.i32[0] = vshl_u32(*v16.i8, 0xF00000010).u32[0];
    *v16.i8 = vshl_s32(*v16.i8, 0xFFFFFFF1FFFFFFF0);
    v41.i32[1] = v16.i32[1];
    v41.i64[1] = vdupq_lane_s32(*v16.i8, 1).u64[0];
    v46 = v41.i32[0] >> 15;
    v47 = vdup_n_s32(v41.i32[0] >> 15);
    *v48.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v17.u32[1], v42), 0x10uLL), 0x10uLL);
    v49 = v40;
    v50 = v40 + ((((v19.i16[4] + 4) >> 3) * (v41.i32[0] >> 15) + 0x8000) >> 16);
    v51 = 2 * v21.i16[2];
    LOWORD(v42) = v42 + (((v41.i32[0] >> 15) * v45.i16[0] + 0x8000) >> 16);
    *v17.i8 = vsra_n_u32(*v17.i8, vmla_s32(0x800000008000, v47, vshr_n_s32(vshl_n_s32(__PAIR64__(v45.u32[1], v17.u32[0]), 0x10uLL), 0x10uLL)), 0x10uLL);
    v52 = vsra_n_u32(v45, vmla_s32(0x800000008000, v47, *v48.i8), 0x10uLL);
    LOWORD(v49) = (((v41.i32[0] >> 15) * v49 + 0x8000) >> 16) + ((v19.i16[4] + 4) >> 3);
    v48.i32[0] = 16;
    v48.i32[1] = v42;
    v48.u64[1] = vrev64_s32(vshr_n_s32(vshl_n_s32(*v17.i8, 0x10uLL), 0x10uLL));
    v36.i32[0] = vshlq_s32(v41, vnegq_s32(v48)).u32[0];
    v53 = vmulq_s32(v41, v48);
    v53.i32[0] = v36.i32[0];
    v54 = vshlq_u32(vaddq_s32(v53, xmmword_273BA6530), xmmword_273BA6540);
    *v41.i8 = vrev64_s32(vshr_n_s32(vshl_n_s32(v52, 0x10uLL), 0x10uLL));
    v41.i32[2] = v49;
    v55 = vmovn_s32(v54);
    v41.i32[3] = v54.i16[0];
    v54.i16[0] = (v16.i32[1] * v50 + 0x8000) >> 16;
    v56 = 2 * v21.i16[4];
    v54.i16[1] = v49;
    v54.i16[2] = v52.i16[0];
    v54.i16[3] = v52.i16[2];
    v54.i16[4] = v17.i16[0];
    v54.i16[5] = v17.i16[2];
    v54.i16[6] = v42;
    v54.i16[7] = v50;
    v57 = vaddq_s16(v54, vraddhn_high_s32(v55, vmulq_lane_s32(v41, *v16.i8, 1), 0));
    v58 = v57.u16[7];
    v59 = vdupq_n_s32(v51);
    v60 = vraddhn_high_s32(vraddhn_s32(vmulq_s32(v59, vmovl_s16(*v57.i8)), 0), vmulq_s32(v59, vmovl_high_s16(v57)), 0);
    v61 = vqtbl1q_s8(v57, xmmword_273BA6550);
    v61.i16[7] = (v21.i16[0] + 4) >> 3;
    v62 = vaddq_s16(v61, v60);
    v63 = vdupq_n_s32(v56);
    *(a1 + 120) = v14;
    v64 = (*(a1 + 4) >> 1) + (*(a1 + 8) >> 1);
    v65 = v21.i16[4] + 4;
    v124[0] = 4096;
    v66 = v58 + ((((v21.i16[0] + 4) >> 3) * v51 + 0x8000) >> 16);
    v67 = 2 * v21.i16[6];
    v68 = v66 + ((((v21.i16[2] + 4) >> 3) * v56 + 0x8000) >> 16);
    v69 = vrev64q_s16(vraddhn_high_s32(vraddhn_s32(vmulq_s32(v63, vmovl_s16(*v62.i8)), 0), vmulq_s32(v63, vmovl_high_s16(v62)), 0));
    v70 = vaddq_s16(v62, vextq_s8(v69, v69, 8uLL));
    v71 = *v70.i8;
    v71.i16[0] = ((v56 * v66 + 0x8000) >> 16) + ((v21.i16[2] + 4) >> 3);
    v124[1] = v68 + (((v65 >> 3) * v67 + 0x8000) >> 16);
    v126 = v71.i16[0] + ((v67 * v70.i16[0] + 0x8000) >> 16);
    v127 = ((v67 * v68 + 0x8000) >> 16) + (v65 >> 3);
    v128 = (v21.i16[6] + 4) >> 3;
    *(a1 + 8) = v64;
    *(a1 + 38) = vuzp1q_s16(v20, v19);
    *(a1 + 54) = vmovn_s32(v21);
    v72 = ((((((((((((((((((v34 * v19.i16[2]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * (((((v32 * v19.i16[0]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * (((((v28 * v20.i16[6]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * (((((v25 * v20.i16[4]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * (((((v23 * v20.i16[2]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * (((2 * v20.i16[0] * v20.i16[0]) ^ 0x7FFC0000) >> 18)) >> 15)) >> 15)) >> 15)) >> 15)) >> 14) & 0xFFFFFFFE) * (((v35 * v19.i16[4]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16)) >> 15) & 0xFFFFFFFE) * (((v46 * v36.i32[0]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16)) >> 15) & 0xFFFFFFFE) * (((v16.i32[1] * v21.i16[0]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16)) >> 15) & 0xFFFFFFFE) * (((v51 * v21.i16[2]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16)) >> 15) & 0xFFFFFFFE) * (((v56 * v21.i16[4]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16);
    v73 = vdupq_n_s32(v67);
    v125 = vaddq_s16(v70, vqtbl1q_s8(vraddhn_high_s32(vraddhn_s32(vmulq_s32(v73, vmovl_s16(v71)), 0), vmulq_s32(v73, vmovl_high_s16(v70)), 0), xmmword_273BA6560));
    v74 = ((v67 * v21.i16[6]) & 0xFFFF0000 ^ 0x7FFF0000) >> 16;
    if (v64 < 0)
    {
      if (v64 == 0x80000000)
      {
        v64 = 0x7FFFFFFF;
      }

      else
      {
        v64 = -v64;
      }
    }

    else if (!v64)
    {
      v75 = a2;
      v76 = ((v72 >> 15) & 0xFFFFFFFE) * v74;
      v77 = v76 >> 16;
      if (v76 >> 16 < 0)
      {
LABEL_9:
        v77 = -v77;
        goto LABEL_24;
      }

LABEL_22:
      if (v76 < 0x10000)
      {
        LOWORD(v88) = 0;
        goto LABEL_32;
      }

LABEL_24:
      v89 = __clz(v77) - 1;
      v90 = v89;
      v91 = v77 << v89;
      if (v91 >= 2147450880)
      {
        v92 = 2147418112;
      }

      else
      {
        v92 = (v91 + 0x8000) & 0xFFFF0000;
      }

      v93 = v89 >> 1;
      if ((v92 & 0x80000000) != 0)
      {
        v92 = -v92;
      }

      v94 = (v92 >> 17) | 0xFFFFC000;
      v95 = -2 * v94 * v94;
      v96 = (v92 >> 1) + 1073774592 + (v95 >> 1) + ((v94 * v94) >> 15) * v94 - 40960 * (((v95 >> 16) * (v95 >> 16)) >> 15) + 57344 * (((((v95 >> 16) * (v95 >> 16)) >> 15) * v94) >> 15);
      v97 = ((46340 * (v96 >> 16) + 0x8000) >> 15) & 0xFFFE;
      if (v90 != 2 * v93)
      {
        v97 = HIWORD(v96);
      }

      v88 = v97 >> v93 << 6;
LABEL_32:
      v98 = (v64 * (v88 + ((v88 & 0xFFFE) >> 1))) >> 12;
      *(a1 + 120) = v98;
      if (!a3)
      {
LABEL_50:
        WebRtcSpl_FilterAR(v124, 0xDuLL, v130, a3, (a1 + 64), 0xCuLL, (a1 + 90), v75, v129);
        return a3 < 0x281;
      }

      v99 = 0;
      v100 = *a1;
      do
      {
        v101 = 69069 * v100 + 1;
        v102 = kRandNTable[(v101 >> 23)];
        v100 = v101 & 0x7FFFFFFF;
        v130[v99++] = v102 >> 1;
      }

      while (a3 != v99);
      *a1 = v100;
      if (a3 < 4)
      {
        v103 = 0;
        v104 = v130;
        goto LABEL_48;
      }

      v105 = vdupq_n_s32(v98);
      if (a3 >= 0x10)
      {
        v103 = a3 & 0x3F0;
        v106 = v131;
        v107 = v103;
        do
        {
          v108 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v105, vmovl_s16(*v106)), 0xDuLL), vmulq_s32(v105, vmovl_high_s16(*v106->i8)), 0xDuLL);
          *v106[-2].i8 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v105, vmovl_s16(v106[-2])), 0xDuLL), vmulq_s32(v105, vmovl_high_s16(*v106[-2].i8)), 0xDuLL);
          *v106->i8 = v108;
          v106 += 4;
          v107 -= 16;
        }

        while (v107);
        if (a3 == v103)
        {
          goto LABEL_50;
        }

        if ((a3 & 0xC) == 0)
        {
          v104 = &v130[v103];
LABEL_48:
          v112 = a3 - v103;
          do
          {
            *v104 = (v98 * *v104) >> 13;
            ++v104;
            --v112;
          }

          while (v112);
          goto LABEL_50;
        }
      }

      else
      {
        v103 = 0;
      }

      v109 = v103;
      v103 = a3 & 0x3FC;
      v104 = &v130[v103];
      v110 = &v130[v109];
      v111 = v109 - v103;
      do
      {
        *v110 = vshrn_n_s32(vmulq_s32(v105, vmovl_s16(*v110)), 0xDuLL);
        ++v110;
        v111 += 4;
      }

      while (v111);
      if (a3 == v103)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v78 = __clz(v64) - 1;
    v79 = v78;
    v80 = v64 << v78;
    v81 = (v80 + 0x8000) & 0xFFFF0000;
    if (v80 >= 2147450880)
    {
      v81 = 2147418112;
    }

    v82 = v78 >> 1;
    if (v81 >= 0)
    {
      v83 = v81;
    }

    else
    {
      v83 = -v81;
    }

    v84 = (v83 >> 17) | 0xFFFFC000;
    v85 = -2 * v84 * v84;
    v86 = (v83 >> 1) + 1073774592 + (v85 >> 1) + ((v84 * v84) >> 15) * v84 - 40960 * (((v85 >> 16) * (v85 >> 16)) >> 15) + 57344 * (((((v85 >> 16) * (v85 >> 16)) >> 15) * v84) >> 15);
    if (v79 == 2 * v82)
    {
      v87 = ((46340 * (v86 >> 16) + 0x8000) >> 15) & 0xFFFE;
    }

    else
    {
      v87 = HIWORD(v86);
    }

    v75 = a2;
    v64 = v87 >> v82;
    v76 = ((v72 >> 15) & 0xFFFFFFFE) * v74;
    v77 = v76 >> 16;
    if (v76 >> 16 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v122);
  return webrtc::ComfortNoiseEncoder::Encode(v114, v115, v116, v117, v118, v119, v120, v121);
}

unint64_t webrtc::ComfortNoiseEncoder::Encode(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v158 = *MEMORY[0x277D85DE8];
  if (a3 > 0x280)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/codecs/cng/webrtc_cng.cc", 262, "num_samples <= kCngMaxOutsizeOrder", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
  }

  v149 = 0;
  if (!a3)
  {
    LOWORD(v13) = -1;
    goto LABEL_35;
  }

  v12 = 0;
  if (a3 < 4 || &v150 - a2 < 0x20)
  {
    goto LABEL_15;
  }

  if (a3 >= 0x10)
  {
    v12 = a3 & 0x3F0;
    v14 = (a2 + 16);
    v15 = v151;
    v16 = v12;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 16;
    }

    while (v16);
    if (a3 == v12)
    {
      goto LABEL_17;
    }

    if ((a3 & 0xC) == 0)
    {
LABEL_15:
      v23 = a3 - v12;
      v24 = v12;
      v25 = &v150.i16[v24];
      v26 = (a2 + v24 * 2);
      do
      {
        v27 = *v26++;
        *v25++ = v27;
        --v23;
      }

      while (v23);
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = v12;
  v12 = a3 & 0x3FC;
  v19 = (a2 + 2 * v18);
  v20 = (v150.i64 + 2 * v18);
  v21 = v18 - v12;
  do
  {
    v22 = *v19++;
    *v20++ = v22;
    v21 += 4;
  }

  while (v21);
  if (a3 != v12)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (a3 < 4)
  {
    LOWORD(v13) = -1;
    v28 = &v150;
    v29 = a3;
    goto LABEL_30;
  }

  if (a3 < 0x10)
  {
    v30 = 0;
    v13 = 0xFFFF;
LABEL_25:
    v28 = (&v150 + 2 * (a3 & 0x3FC));
    v29 = a3 & 3;
    v36 = vdup_n_s16(v13);
    v37 = (&v150 + 2 * v30);
    v38 = v30 - (a3 & 0x3FC);
    do
    {
      v39 = *v37++;
      v36 = vmax_s16(vabs_s16(v39), v36);
      v38 += 4;
    }

    while (v38);
    LOWORD(v13) = vmaxv_s16(v36);
    if (a3 == (a3 & 0x3FC))
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v30 = a3 & 0x3F0;
  v31 = v151;
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  v33 = v30;
  v34.i64[0] = -1;
  v34.i64[1] = -1;
  do
  {
    v32 = vmaxq_s16(vabsq_s16(v31[-1]), v32);
    v34 = vmaxq_s16(vabsq_s16(*v31), v34);
    v31 += 2;
    v33 -= 16;
  }

  while (v33);
  v35 = vmaxq_s16(v32, v34);
  v35.i16[0] = vmaxvq_s16(v35);
  v13 = v35.i32[0];
  if (a3 == v30)
  {
    goto LABEL_35;
  }

  if ((a3 & 0xC) != 0)
  {
    goto LABEL_25;
  }

  v29 = a3 & 0xF;
  v28 = (&v150 + 2 * v30);
  do
  {
LABEL_30:
    v41 = v28->i16[0];
    v28 = (v28 + 2);
    v40 = v41;
    if (v41 < 0)
    {
      v40 = -v40;
    }

    if (v40 > v13)
    {
      LOWORD(v13) = v40;
    }

    --v29;
  }

  while (v29);
LABEL_35:
  v42 = 32 - __clz(a3);
  v43 = v42;
  v44 = __clz(v13 * v13) - 1;
  if (!v13)
  {
    LOWORD(v44) = 0;
  }

  LOWORD(v42) = v42 - v44;
  v45 = v43 < v44 || v13 == 0;
  v46 = v42;
  if (v45)
  {
    v42 = 0;
  }

  else
  {
    v42 = v42;
  }

  if (!a3)
  {
    v47 = 0;
    goto LABEL_60;
  }

  if (a3 < 4)
  {
    v47 = 0;
    v48 = 0;
    v49 = &v150;
    goto LABEL_58;
  }

  v50 = vdupq_n_s32(v42);
  if (a3 >= 0x10)
  {
    v48 = a3 & 0x3F0;
    v51 = v151;
    v52 = 0uLL;
    v53 = vnegq_s32(v50);
    v54 = v48;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    do
    {
      v58 = v51[-1];
      v59 = *v51;
      v55 = vaddq_s32(vshlq_u32(vmull_high_s16(v58, v58), v53), v55);
      v52 = vaddq_s32(vshlq_u32(vmull_s16(*v58.i8, *v58.i8), v53), v52);
      v57 = vaddq_s32(vshlq_u32(vmull_high_s16(v59, v59), v53), v57);
      v56 = vaddq_s32(vshlq_u32(vmull_s16(*v59.i8, *v59.i8), v53), v56);
      v51 += 2;
      v54 -= 16;
    }

    while (v54);
    v47 = vaddvq_s32(vaddq_s32(vaddq_s32(v56, v52), vaddq_s32(v57, v55)));
    if (a3 == v48)
    {
      goto LABEL_60;
    }

    if ((a3 & 0xC) == 0)
    {
      v49 = (&v150 + 2 * v48);
LABEL_58:
      v66 = a3 - v48;
      do
      {
        v67 = v49->i16[0];
        v49 = (v49 + 2);
        v47 += (v67 * v67) >> v42;
        --v66;
      }

      while (v66);
      goto LABEL_60;
    }
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v60 = v48;
  v48 = a3 & 0x3FC;
  v49 = (&v150 + 2 * v48);
  v61 = v47;
  v62 = (&v150 + 2 * v60);
  v63 = v60 - v48;
  v64 = vnegq_s32(v50);
  do
  {
    v65 = *v62++;
    v61 = vaddq_s32(vshlq_u32(vmull_s16(v65, v65), v64), v61);
    v63 += 4;
  }

  while (v63);
  v47 = vaddvq_s32(v61);
  if (a3 != v48)
  {
    goto LABEL_58;
  }

LABEL_60:
  if (v42 < 1)
  {
    LOWORD(v68) = a3;
    if (a3)
    {
      goto LABEL_68;
    }

LABEL_78:
    v73 = 0x7FFFFFFF;
    goto LABEL_79;
  }

  v68 = a3;
  do
  {
    v69 = v46 - 1;
    v70 = v46 < 6;
    if (v46 >= 6)
    {
      v69 = 5;
    }

    v71 = v46 >= 5;
    v72 = v46 - 5;
    if (!v71)
    {
      v72 = 0;
    }

    v47 <<= v72;
    v68 >>= v70;
    v46 = v69;
  }

  while (v69 > 0);
  if (!v68)
  {
    goto LABEL_78;
  }

LABEL_68:
  v73 = v47 / v68;
  if (v73 <= 1)
  {
    v74 = *a1;
    if (*a1)
    {
      bzero(__src, 2 * v74);
    }

    if (a4)
    {
      goto LABEL_72;
    }

LABEL_121:
    if (!v74)
    {
      goto LABEL_130;
    }

    if (v74 > 7)
    {
      v132 = (a1 + 20);
      v130 = v74 & 0xFFFFFFFFFFFFFFF8;
      v133 = __src;
      v134 = vdupq_n_s16(0x4CCDu);
      v135.i64[0] = 0x6666666666666666;
      v135.i64[1] = 0x6666666666666666;
      v136 = v74 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v137 = *v133++;
        *v132->i8 = vaddq_s16(vuzp2q_s16(vmull_s16(*v137.i8, *v135.i8), vmull_high_s16(v137, v135)), vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v132, *v134.i8), 0xFuLL), vmull_high_s16(*v132->i8, v134), 0xFuLL));
        v132 += 2;
        v136 -= 8;
      }

      while (v136);
      if (v74 == v130)
      {
LABEL_130:
        v73 = (*(a1 + 16) >> 1) + (v73 >> 2) + (*(a1 + 16) >> 2);
        *(a1 + 16) = v73;
        if (v73 > 0)
        {
          goto LABEL_75;
        }

LABEL_131:
        v73 = 1;
        *(a1 + 16) = 1;
        LODWORD(v75) = *(a1 + 14);
        if (*(a1 + 12) <= v75)
        {
          goto LABEL_134;
        }

        goto LABEL_132;
      }
    }

    else
    {
      v130 = 0;
    }

    v138 = v74 - v130;
    v139 = 2 * v130;
    v140 = &__src[v130];
    v141 = (v139 + a1 + 20);
    do
    {
      v142 = *v140++;
      *v141 = ((26214 * v142) >> 16) + ((19661 * *v141) >> 15);
      ++v141;
      --v138;
    }

    while (v138);
    goto LABEL_130;
  }

LABEL_79:
  if (a3 < 2)
  {
    goto LABEL_89;
  }

  v76 = a3 >> 1;
  v77 = 0x40000000 / (a3 >> 1);
  if (a3 >= 4)
  {
    v81 = 0;
    v78 = (a3 >> 1) & 0x1FE;
    v79 = v77 * (v76 & 0x1FE) - 0x200000;
    v82 = &v153;
    v83 = v78;
    v80 = &v152[2 * v78];
    do
    {
      v84 = v77 * v81 - 0x200000;
      v85 = kHanningTable[(v84 + v77) >> 22];
      LOWORD(v84) = kHanningTable[(v84 + 2 * v77) >> 22];
      *(v82 - 1) = v85;
      *v82 = v84;
      v82 = (v82 + 4);
      v81 += 2;
      v83 -= 2;
    }

    while (v83);
    if (v76 == v78)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v78 = 0;
    v79 = -2097152;
    v80 = v152;
  }

  v86 = v76 - v78;
  do
  {
    v79 += v77;
    *v80 = kHanningTable[v79 >> 22];
    v80 += 2;
    --v86;
  }

  while (v86);
LABEL_87:
  v87 = v152;
  v88 = &v152[2 * a3 - 2];
  do
  {
    v89 = *v87++;
    *v88-- = v89;
    --v76;
  }

  while (v76);
LABEL_89:
  if (!a3)
  {
    goto LABEL_105;
  }

  if (a3 < 4)
  {
    v90 = 0;
    v91 = v152;
    v92 = &v150;
    goto LABEL_103;
  }

  if (a3 >= 0x10)
  {
    v90 = a3 & 0x3F0;
    v93 = &v154;
    v94 = v151;
    v95 = v90;
    do
    {
      v96 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v94, *v93), 0xEuLL), vmull_high_s16(*v94->i8, *v93->i8), 0xEuLL);
      *v94[-2].i8 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(v94[-2], v93[-2]), 0xEuLL), vmull_high_s16(*v94[-2].i8, *v93[-2].i8), 0xEuLL);
      *v94->i8 = v96;
      v93 += 4;
      v94 += 4;
      v95 -= 16;
    }

    while (v95);
    if (a3 == v90)
    {
      goto LABEL_105;
    }

    if ((a3 & 0xC) == 0)
    {
      v91 = &v152[2 * v90];
      v92 = (&v150 + 2 * v90);
LABEL_103:
      v102 = a3 - v90;
      do
      {
        v103 = *v91;
        v91 += 2;
        v92->i16[0] = (v92->i16[0] * v103) >> 14;
        v92 = (v92 + 2);
        --v102;
      }

      while (v102);
      goto LABEL_105;
    }
  }

  else
  {
    v90 = 0;
  }

  v97 = v90;
  v90 = a3 & 0x3FC;
  v92 = (&v150 + 2 * v90);
  v91 = &v152[2 * v90];
  v98 = &v152[2 * v97];
  v99 = (&v150 + 2 * v97);
  v100 = v97 - v90;
  do
  {
    v101 = *v98++;
    *v99 = vshrn_n_s32(vmull_s16(*v99, v101), 0xEuLL);
    ++v99;
    v100 += 4;
  }

  while (v100);
  if (a3 != v90)
  {
    goto LABEL_103;
  }

LABEL_105:
  WebRtcSpl_AutoCorrelation(&v150, a3, *a1, v156, &v149);
  if (!v156[0].i32[0])
  {
    v156[0].i32[0] = 0x7FFF;
  }

  v104 = *a1;
  if (*a1)
  {
    v105 = v156;
    if (v104 >= 8)
    {
      v107 = v104 & 0xFFFFFFFFFFFFFFF8;
      v105 = (v156 + 4 * (v104 & 0xFFFFFFFFFFFFFFF8));
      v109 = v156;
      v110.i64[0] = 0xFFFF0000FFFFLL;
      v110.i64[1] = 0xFFFF0000FFFFLL;
      v111.i64[0] = 0x800000008000;
      v111.i64[1] = 0x800000008000;
      v112 = v104 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v113 = v109[1];
        v114 = vcltzq_s32(v113);
        v115 = vabsq_s32(v113);
        v116 = vabsq_s32(*v109);
        v117 = *v106++;
        v118 = vmovl_s16(*v117.i8);
        v119 = vmovl_high_s16(v117);
        v120 = vmulq_s32(vandq_s8(v115, v110), v119);
        v121 = vmulq_s32(vandq_s8(v116, v110), v118);
        v122 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(v116, 0x10uLL), v118), v121, 0x10uLL);
        v123 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(v115, 0x10uLL), v119), v120, 0x10uLL);
        v124 = vsriq_n_s32(vaddq_s32(v123, v123), vorrq_s8(vshlq_n_s32(v123, 0x10uLL), vandq_s8(v120, v111)), 0xFuLL);
        v125 = vsriq_n_s32(vaddq_s32(v122, v122), vorrq_s8(vshlq_n_s32(v122, 0x10uLL), vandq_s8(v121, v111)), 0xFuLL);
        *v109 = vbslq_s8(vcltzq_s32(*v109), vnegq_s32(v125), v125);
        v109[1] = vbslq_s8(v114, vnegq_s32(v124), v124);
        v109 += 2;
        v112 -= 8;
      }

      while (v112);
      if (v104 == v107)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v107 = 0;
    }

    v126 = v104 - v107;
    do
    {
      v127 = v105->i32[0];
      if (v105->i32[0] < 0)
      {
        v127 = -v127;
      }

      v128 = *v108;
      v108 = (v108 + 2);
      v129 = (2 * (HIWORD(v127) * v128 + ((v127 * v128) >> 16))) & 0xFFFE0000 | (((v127 * v128) & 0x8000 | ((HIWORD(v127) * v128 + ((v127 * v128) >> 16)) << 16)) >> 15);
      if (v105->i32[0] < 0)
      {
        v129 = -v129;
      }

      v105->i32[0] = v129;
      v105 = (v105 + 4);
      --v126;
    }

    while (v126);
  }

LABEL_119:
  if (!WebRtcSpl_LevinsonDurbin(v156, v157, __src, v104))
  {
    return 0;
  }

  v74 = *a1;
  if ((a4 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_72:
  if (v74)
  {
    memcpy((a1 + 20), __src, 2 * v74);
  }

  *(a1 + 16) = v73;
  if (v73 <= 0)
  {
    goto LABEL_131;
  }

LABEL_75:
  LODWORD(v75) = *(a1 + 14);
  if (*(a1 + 12) <= v75)
  {
LABEL_134:
    v143 = 1;
    {
      if (++v143 == 93)
      {
        LOBYTE(v143) = 94;
        break;
      }
    }

    result = v74 + 1;
    v144 = *a5 + v74 + 1;
    if (a5[1] < v144)
    {
      operator new[]();
    }

    v145 = (a5[2] + *a5);
    if (v74 == -1)
    {
      v145 = 0;
    }

    *v145 = v143;
    v146 = v145 + 1;
    if (*a1)
    {
      if (*a1 == 12)
      {
        v147 = 0;
        do
        {
          v146[v147] = (*(a1 + 2 * v147 + 20) + 128) >> 8;
          ++v147;
        }

        while (v147 < *a1);
      }

      else
      {
        v148 = 0;
        do
        {
          v146[v148] = ((*(a1 + 2 * v148 + 20) + 128) >> 8) + 127;
          ++v148;
        }

        while (v148 < *a1);
      }
    }

    *a5 = v144;
    v75 = 1000 * a3 / *(a1 + 8);
    goto LABEL_150;
  }

LABEL_132:
  if (a4)
  {
    goto LABEL_134;
  }

  result = 0;
  LOWORD(v75) = v75 + 1000 * a3 / *(a1 + 8);
LABEL_150:
  *(a1 + 14) = v75;
  return result;
}

uint64_t webrtc::ConvertVideoType(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_273BA6700[a1 - 1];
  }
}

char *webrtc::NV12Scale(int8x16_t *this, char *a2, const unsigned __int8 *a3, char *a4, const unsigned __int8 *a5, libyuv *a6, uint64_t a7, int8x16_t *a8, unsigned __int8 *a9, _BYTE *a10, unsigned __int8 *a11, int a12, int a13, int a14)
{
  v16 = (a6 + 1) / 2;
  v17 = (a7 + 1) / 2;
  if (a6 == HIDWORD(a11) && a7 == a12)
  {
    v25 = a5;
    CopyPlane(a2, a3, a8, a9, a6, a7);

    return CopyPlane(a4, v25, a10, a11, 2 * v16, v17);
  }

  else
  {
    v19 = (HIDWORD(a11) + 1) / 2;
    v29 = a3;
    v20 = v17 * v16;
    v21 = &this->i8[v20];
    v22 = (this + v20 + v20);
    SplitUVPlane(a4, a5, this, (a6 + 1) / 2, (this + v20), (a6 + 1) / 2, v16, v17);
    I420Scale(a2, v29, this->i8, v16, v21, v16, a6, a7, a8, a9, v22, v19, (v22 + (a12 + 1) / 2 * v19), v19, SHIDWORD(a11), a12, 3);

    return MergeUVPlane(v22, (HIDWORD(a11) + 1) / 2, v22->u64 + (a12 + 1) / 2 * v19, (HIDWORD(a11) + 1) / 2, a10, a11, (HIDWORD(a11) + 1) / 2, (a12 + 1) / 2);
  }
}

uint64_t webrtc::NV12ToI420Scaler::NV12ToI420Scale(webrtc::NV12ToI420Scaler *this, char *a2, int a3, const char *a4, int a5, libyuv *a6, uint64_t a7, int8x16_t *a8, uint64_t a9, int8x16_t *a10, int a11, int8x16_t *a12, int a13, int a14, int a15)
{
  v17 = a5;
  v18 = a4;
  v20 = a13;
  v21 = a12;
  v22 = a9;
  if (a6 == a14 && a7 == a15)
  {
    v28 = *this;
    *(this + 1) = *this;
    if (*(this + 2) != v28)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (v28)
      {
        v29 = a3;
        v30 = a2;
        operator delete(v28);
        v20 = a13;
        v17 = a5;
        v18 = a4;
        v21 = a12;
        v22 = a9;
        a2 = v30;
        a3 = v29;
      }
    }

    return NV12ToI420(a2, a3, v18, v17, a8, v22, a10, a11, v21, v20, a6, a7);
  }

  else
  {
    v42 = a2;
    v43 = a3;
    v41 = (a7 + 1) / 2;
    v40 = v41 * ((a6 + 1) / 2);
    v24 = 2 * v40;
    v26 = *this;
    v25 = *(this + 1);
    v27 = &v25->i8[-*this];
    if (v24 <= v27)
    {
      if (v24 < v27)
      {
        v25 = (v26 + v24);
        *(this + 1) = v26 + v24;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this, v24 - v27);
      v26 = *this;
      v25 = *(this + 1);
    }

    v33 = *(this + 2) - v26;
    v34 = v25 - v26;
    if (v33 <= v25 - v26)
    {
      v37 = v26;
    }

    else
    {
      if (v25 != v26)
      {
        operator new();
      }

      if (v34 < v33)
      {
        v39 = v18;
        v35 = v25 - v26;
        v36 = *(this + 1);
        v37 = (v26 + v34 - v36);
        memcpy(v37, v26, v36 - v26);
        *this = v37;
        *(this + 1) = v35;
        *(this + 2) = v35;
        v18 = v39;
        if (v26)
        {
          operator delete(v26);
          v37 = *this;
        }
      }

      else
      {
        v37 = v26;
      }
    }

    SplitUVPlane(v18, v17, v37, (a6 + 1) / 2, (v37 + v40), (a6 + 1) / 2, (a6 + 1) / 2, v41);
    return I420Scale(v42, v43, v37->i8, (a6 + 1) / 2, &v37->i8[v40], (a6 + 1) / 2, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, 3);
  }
}

uint64_t webrtc::ValidateRtpExtensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = v6;
  v76 = *MEMORY[0x277D85DE8];
  memset(v75, 0, 256);
  if (v4)
  {
    v8 = 32 * v4;
    v9 = v3;
    while (1)
    {
      v10 = v9[6];
      if ((v10 - 256) <= 0xFFFFFF00)
      {
        break;
      }

      if (v75[v10] == 1)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::RtpExtension::ToString(v9, __p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_media_engine.cc");
          if (v74 < 0)
          {
            goto LABEL_65;
          }
        }

        return 0;
      }

      v75[v10] = 1;
      v9 += 8;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::RtpExtension::ToString(v9, __p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_media_engine.cc");
      if (v74 < 0)
      {
LABEL_65:
        operator delete(__p[0]);
      }
    }

    return 0;
  }

LABEL_6:
  if (!v5)
  {
    return 1;
  }

  v69 = v3;
  v70 = v4;
  v71 = v3 + 32 * v4;
  v11 = v5;
  bzero(__p, 0x1000uLL);
  v72[0] = 0;
  v72[1] = 0;
  v12 = &v7[8 * v11];
  while (2)
  {
    v13 = *(v7 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *v7;
      v13 = *(v7 + 1);
    }

    else
    {
      v14 = v7;
    }

    v15 = v7[6];
    v16 = &__p[2 * v15];
    *v16 = v14;
    v16[1] = v13;
    v17 = v72[0];
    if (!v72[0])
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v20 = v17[4];
        v19 = v17[5];
        v21 = v19 >= v13 ? v13 : v17[5];
        v22 = memcmp(v14, v17[4], v21);
        if (v22)
        {
          break;
        }

        if (v19 <= v13)
        {
          goto LABEL_22;
        }

LABEL_14:
        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_27;
        }
      }

      if (v22 < 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      v23 = memcmp(v20, v14, v21);
      if (v23)
      {
        if ((v23 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_26;
      }

      if (v19 >= v13)
      {
        break;
      }

LABEL_26:
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    *(v18 + 12) = v15;
    v7 += 8;
    if (v7 != v12)
    {
      continue;
    }

    break;
  }

  v24 = v72[0];
  v25 = v69;
  if (!v70)
  {
    goto LABEL_78;
  }

  if (!v72[0])
  {
    v55 = 32 * v70;
    while (1)
    {
      v56 = &__p[2 * *(v25 + 6)];
      v57 = v56[1];
      if (v57)
      {
        v58 = *(v25 + 23);
        v59 = v25;
        if ((v58 & 0x8000000000000000) != 0)
        {
          v59 = *v25;
          v58 = v25[1];
        }

        if (v57 != v58 || memcmp(*v56, v59, v57))
        {
          break;
        }
      }

      v25 += 4;
      v55 -= 32;
      if (!v55)
      {
        goto LABEL_78;
      }
    }

LABEL_73:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
LABEL_76:
      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v72[0]);
      return 0;
    }

    v67 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t;
LABEL_75:
    webrtc::webrtc_logging_impl::Log(v67, v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_media_engine.cc");
    goto LABEL_76;
  }

  while (2)
  {
    v26 = *(v25 + 6);
    v27 = &__p[2 * v26];
    v28 = v27[1];
    if (!v28)
    {
      v29 = *(v25 + 23);
      v32 = v25;
      if ((v29 & 0x80) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_39;
    }

    v29 = *(v25 + 23);
    v30 = v25;
    v31 = v29;
    if (*(v25 + 23) < 0)
    {
      v30 = *v25;
      v31 = v25[1];
    }

    if (v28 != v31 || memcmp(*v27, v30, v28))
    {
      goto LABEL_73;
    }

    v32 = v25;
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_57:
    v32 = *v25;
    v29 = v25[1];
LABEL_39:
    v33 = v72;
    v34 = v24;
    while (2)
    {
      while (2)
      {
        v35 = v34[5];
        if (v29 >= v35)
        {
          v36 = v34[5];
        }

        else
        {
          v36 = v29;
        }

        v37 = memcmp(v34[4], v32, v36);
        if (v37)
        {
          if ((v37 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_40;
        }

        if (v35 < v29)
        {
LABEL_40:
          v34 = v34[1];
          if (!v34)
          {
            goto LABEL_49;
          }

          continue;
        }

        break;
      }

      v33 = v34;
      v34 = *v34;
      if (v34)
      {
        continue;
      }

      break;
    }

LABEL_49:
    if (v33 == v72)
    {
      goto LABEL_32;
    }

    v38 = v33[5];
    if (v38 >= v29)
    {
      v39 = v29;
    }

    else
    {
      v39 = v33[5];
    }

    v40 = memcmp(v32, v33[4], v39);
    if (!v40)
    {
      if (v29 < v38)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if ((v40 & 0x80000000) == 0)
    {
LABEL_31:
      if (*(v33 + 12) == v26)
      {
        goto LABEL_32;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        goto LABEL_76;
      }

      v67 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t;
      goto LABEL_75;
    }

LABEL_32:
    v25 += 4;
    if (v25 != v71)
    {
      continue;
    }

    break;
  }

LABEL_78:
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v24);
  return 1;
}

void webrtc::FilterRtpExtensions(webrtc::RtpExtension **a1@<X0>, unsigned int (*a2)(void)@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_19;
  }

  do
  {
    if ((*(v8 + 23) & 0x8000000000000000) != 0)
    {
      if (!(a2)(*v8, *(v8 + 1)))
      {
LABEL_12:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v5 = v5 & 0xFFFFFFFF00000000 | 0x3E2;
          webrtc::RtpExtension::ToString(v8, __p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_media_engine.cc");
          if (v71 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_4;
      }
    }

    else if (!a2(v8))
    {
      goto LABEL_12;
    }

    v11 = a5[1];
    if (v11 >= a5[2])
    {
      std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a5);
    }

    if (!v11)
    {
      goto LABEL_127;
    }

    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a5[1], *v8, *(v8 + 1));
    }

    else
    {
      v12 = *v8;
      *(v11 + 16) = *(v8 + 2);
      *v11 = v12;
    }

    v20 = *(v8 + 6);
    *(v11 + 28) = *(v8 + 28);
    *(v11 + 24) = v20;
    a5[1] = v11 + 32;
LABEL_4:
    v8 = (v8 + 32);
  }

  while (v8 != v9);
  v21 = *a5;
  v22 = a5[1];
  v6 = a3;
LABEL_19:
  v23 = 126 - 2 * __clz((v22 - v21) >> 5);
  if (v22 == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,false>(v21, v22, v24, 1);
  if ((v6 & 1) == 0)
  {
    return;
  }

  v25 = *a5;
  v26 = a5[1];
  if (*a5 == v26)
  {
    goto LABEL_47;
  }

  v27 = v25 + 32;
  if ((v25 + 32) == v26)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v28 = *(v27 - 9);
    if (v28 >= 0)
    {
      v29 = *(v27 - 9);
    }

    else
    {
      v29 = *(v27 - 24);
    }

    v30 = *(v27 + 23);
    v31 = v30;
    if ((v30 & 0x80u) != 0)
    {
      v30 = *(v27 + 8);
    }

    if (v29 == v30)
    {
      v32 = v27 - 32;
      v33 = v28 >= 0 ? (v27 - 32) : *(v27 - 32);
      v34 = v31 >= 0 ? v27 : *v27;
      if (!memcmp(v33, v34, v29) && *(v27 - 4) == *(v27 + 28))
      {
        break;
      }
    }

    v27 += 32;
    if (v27 == v26)
    {
      goto LABEL_47;
    }
  }

  if (v32 == v26)
  {
LABEL_47:
    v38 = v26;
  }

  else
  {
    v36 = (v27 + 32);
    if (v36 == v26)
    {
      v37 = v32;
    }

    else
    {
      do
      {
        while (1)
        {
          v59 = *(v32 + 23);
          v60 = v59 >= 0 ? *(v32 + 23) : *(v32 + 8);
          v61 = *(v36 + 23);
          v62 = v36[1];
          v63 = v61 >= 0 ? *(v36 + 23) : v36[1];
          if (v60 != v63)
          {
            break;
          }

          v64 = v59 >= 0 ? v32 : *v32;
          v65 = v61 >= 0 ? v36 : *v36;
          if (memcmp(v64, v65, v60) || *(v32 + 28) != *(v36 + 28))
          {
            break;
          }

          v37 = v32;
          v36 += 4;
          if (v36 == v26)
          {
            goto LABEL_125;
          }
        }

        v37 = (v32 + 32);
        if (v36 - 4 != v32)
        {
          if (*(v32 + 55) < 0)
          {
            if (v61 >= 0)
            {
              v57 = v36;
            }

            else
            {
              v57 = *v36;
            }

            std::string::__assign_no_alias<false>((v32 + 32), v57, v63);
          }

          else if (v61 < 0)
          {
            std::string::__assign_no_alias<true>((v32 + 32), *v36, v62);
          }

          else
          {
            v67 = *v36;
            *(v32 + 48) = v36[2];
            *v37 = v67;
          }
        }

        v58 = *(v36 + 6);
        *(v32 + 60) = *(v36 + 28);
        *(v32 + 56) = v58;
        v32 += 32;
        v36 += 4;
      }

      while (v36 != v26);
LABEL_125:
      v26 = a5[1];
    }

    v38 = (v37 + 2);
  }

  std::vector<webrtc::RtpExtension>::erase(a5, v38, v26);
  (*(*a4 + 16))(__p);
  v39 = v71;
  if ((v71 & 0x80u) != 0)
  {
    v39 = __p[1];
  }

  v40 = webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::kBweExtensionPriorities;
  if (v39 >= 7)
  {
    v42 = __p[0];
    if ((v71 & 0x80u) == 0)
    {
      v42 = __p;
    }

    if (*v42 ^ 0x62616E45 | *(v42 + 3) ^ 0x64656C62)
    {
      v41 = 2;
    }

    else
    {
      v40 = webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::kBweExtensionPriorities;
      v41 = 3;
    }

    if (v71 < 0)
    {
LABEL_59:
      operator delete(__p[0]);
    }
  }

  else
  {
    v41 = 2;
    if (v71 < 0)
    {
      goto LABEL_59;
    }
  }

  v43 = 0;
  v44 = &v40[v41];
  v45 = a5[1];
  while (2)
  {
    v46 = *a5;
    if (*a5 == v45)
    {
      goto LABEL_63;
    }

    v47 = *v40;
    if (!*v40)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v48 = strlen(*v40);
    while (2)
    {
      v49 = *(v46 + 23);
      if (v49 < 0)
      {
        if (v48 != *(v46 + 8))
        {
          goto LABEL_68;
        }

        if (v48 == -1)
        {
          goto LABEL_128;
        }

        v50 = *v46;
      }

      else
      {
        v50 = v46;
        if (v48 != v49)
        {
LABEL_68:
          v46 += 32;
          if (v46 == v45)
          {
            goto LABEL_63;
          }

          continue;
        }
      }

      break;
    }

    if (memcmp(v50, v47, v48))
    {
      goto LABEL_68;
    }

    if (v43)
    {
      if ((v46 + 32) == v45)
      {
        v51 = v45;
      }

      else
      {
        do
        {
          v54 = v46;
          v55 = *(v46 + 55);
          if (*(v46 + 23) < 0)
          {
            if (v55 >= 0)
            {
              v52 = (v46 + 32);
            }

            else
            {
              v52 = *(v46 + 32);
            }

            if (v55 >= 0)
            {
              v53 = *(v46 + 55);
            }

            else
            {
              v53 = *(v46 + 40);
            }

            std::string::__assign_no_alias<false>(v46, v52, v53);
          }

          else if ((*(v46 + 55) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v46, *(v46 + 32), *(v46 + 40));
          }

          else
          {
            *v46 = *(v46 + 32);
            *(v46 + 16) = *(v46 + 48);
          }

          *(v46 + 24) = *(v46 + 56);
          *(v46 + 28) = *(v46 + 60);
          v46 += 32;
        }

        while ((v54 + 64) != v45);
        v51 = a5[1];
      }

      v45 = v46;
      while (v51 != v46)
      {
        v56 = *(v51 - 9);
        v51 -= 4;
        if (v56 < 0)
        {
          operator delete(*v51);
        }
      }

      a5[1] = v46;
    }

    v43 = 1;
LABEL_63:
    if (++v40 != v44)
    {
      continue;
    }

    break;
  }
}

void webrtc::GetBitrateConfigForCodec(webrtc *this, const webrtc::Codec *a2)
{
  v18 = 20;
  if (__p <= "x-google-min-bitrate" && &__p[20] > "x-google-min-bitrate")
  {
    goto LABEL_34;
  }

  strcpy(__p, "x-google-min-bitrate");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 168, __p);
  v5 = (this + 176);
  if ((this + 176) == v4)
  {
    if (v18 < 0)
    {
LABEL_12:
      operator delete(*__p);
    }
  }

  else
  {
    v6 = *(v4 + 79);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = v4;
      v7 = v4[7];
      v6 = v8[8];
    }

    else
    {
      v7 = (v4 + 7);
    }

    webrtc::string_to_number_internal::ParseSigned(v7, v6, 0xAuLL);
    if (v18 < 0)
    {
      goto LABEL_12;
    }
  }

  v18 = 22;
  if (__p <= "x-google-start-bitrate" && &__p[22] > "x-google-start-bitrate")
  {
    goto LABEL_34;
  }

  strcpy(__p, "x-google-start-bitrate");
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 168, __p);
  if (v5 == v9)
  {
    if (v18 < 0)
    {
LABEL_22:
      operator delete(*__p);
    }
  }

  else
  {
    v10 = *(v9 + 79);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v12 = v9;
      v11 = v9[7];
      v10 = v12[8];
    }

    else
    {
      v11 = (v9 + 7);
    }

    webrtc::string_to_number_internal::ParseSigned(v11, v10, 0xAuLL);
    if (v18 < 0)
    {
      goto LABEL_22;
    }
  }

  v18 = 20;
  if (__p <= "x-google-max-bitrate" && &__p[20] > "x-google-max-bitrate")
  {
LABEL_34:
    __break(1u);
    return;
  }

  strcpy(__p, "x-google-max-bitrate");
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 168, __p);
  if (v5 == v13)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  v14 = *(v13 + 79);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v16 = v13;
    v15 = v13[7];
    v14 = v16[8];
  }

  else
  {
    v15 = (v13 + 7);
  }

  webrtc::string_to_number_internal::ParseSigned(v15, v14, 0xAuLL);
  if (v18 < 0)
  {
LABEL_32:
    operator delete(*__p);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 32;
  v9 = a1;
  while (1)
  {
    while (1)
    {
      a1 = v9;
      v10 = (a2 - v9) >> 5;
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:
            std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(v9, v9 + 32, v8);
            return;
          case 4:
            std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(v9, v9 + 32, v9 + 64, v8);
            return;
          case 5:
            std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(v9, v9 + 32, v9 + 64, v9 + 96, v8);
            return;
        }
      }

      else
      {
        if (v10 < 2)
        {
          return;
        }

        if (v10 == 2)
        {
          v131 = *(a2 - 4);
          v132 = *(v9 + 28);
          if (v131 == v132)
          {
            v133 = *(a2 - 9);
            if (v133 >= 0)
            {
              v134 = v8;
            }

            else
            {
              v134 = *(a2 - 32);
            }

            if (v133 >= 0)
            {
              j = *(a2 - 9);
            }

            else
            {
              j = *(a2 - 24);
            }

            v135 = *(v9 + 23);
            if (v135 >= 0)
            {
              v136 = v9;
            }

            else
            {
              v136 = *v9;
            }

            if (v135 >= 0)
            {
              v4 = *(v9 + 23);
            }

            else
            {
              v4 = *(v9 + 8);
            }

            if (v4 >= j)
            {
              v137 = j;
            }

            else
            {
              v137 = v4;
            }

            v138 = memcmp(v134, v136, v137);
            if (!v138)
            {
              goto LABEL_835;
            }

            if (v138 < 0)
            {
              goto LABEL_836;
            }
          }

          else if (v131 > v132)
          {
            goto LABEL_836;
          }

          return;
        }
      }

      if (v10 <= 23)
      {
        if ((a4 & 1) == 0)
        {
          if (v9 == a2)
          {
            return;
          }

          v316 = v9 + 32;
          if (a1 + 32 == a2)
          {
            return;
          }

          v317 = 0;
          j = &v360;
          v318 = 32;
          v319 = a1;
          while (1)
          {
            v4 = v317;
            v317 = v318;
            v323 = *(v319 + 60);
            v324 = *(v319 + 28);
            if (v323 == v324)
            {
              v8 = *(v319 + 55);
              if ((v8 & 0x80000000) == 0)
              {
                v325 = v316;
              }

              else
              {
                v325 = *v316;
              }

              if ((v8 & 0x80000000) == 0)
              {
                v326 = *(v319 + 55);
              }

              else
              {
                v326 = v319[5];
              }

              v327 = *(v319 + 23);
              if (v327 >= 0)
              {
                v328 = v319;
              }

              else
              {
                v328 = *v319;
              }

              if (v327 >= 0)
              {
                v329 = *(v319 + 23);
              }

              else
              {
                v329 = v319[1];
              }

              if (v329 >= v326)
              {
                v330 = v326;
              }

              else
              {
                v330 = v329;
              }

              v331 = memcmp(v325, v328, v330);
              if (v331)
              {
                if (v331 < 0)
                {
                  goto LABEL_791;
                }
              }

              else if (v326 < v329)
              {
                goto LABEL_791;
              }
            }

            else if (v323 > v324)
            {
              v8 = *(v319 + 55);
LABEL_791:
              if ((v8 & 0x80) != 0)
              {
                std::string::__init_copy_ctor_external(&v360, *v316, v319[5]);
              }

              else
              {
                v332 = *v316;
                v360.__r_.__value_.__r.__words[2] = *(v316 + 16);
                *&v360.__r_.__value_.__l.__data_ = v332;
              }

              v361 = *(v319 + 14);
              v362 = *(v319 + 60);
              while (1)
              {
                v333 = a1 + v4;
                v334 = *(a1 + v4 + 23);
                if (*(a1 + v4 + 55) < 0)
                {
                  if (v334 >= 0)
                  {
                    v335 = (a1 + v4);
                  }

                  else
                  {
                    v335 = *v333;
                  }

                  if (v334 >= 0)
                  {
                    v336 = *(a1 + v4 + 23);
                  }

                  else
                  {
                    v336 = *(v333 + 8);
                  }

                  std::string::__assign_no_alias<false>((v333 + 32), v335, v336);
                }

                else if ((*(a1 + v4 + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>((v333 + 32), *(a1 + v4), *(a1 + v4 + 8));
                }

                else
                {
                  *(v333 + 32) = *v333;
                  *(v333 + 48) = *(v333 + 16);
                }

                v337 = a1 + v4;
                *(v337 + 56) = *(a1 + v4 + 24);
                *(v337 + 60) = *(a1 + v4 + 28);
                if (v4 == -32)
                {
                  goto LABEL_834;
                }

                v338 = *(v337 - 4);
                if (v362 == v338)
                {
                  if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v339 = &v360;
                  }

                  else
                  {
                    v339 = v360.__r_.__value_.__r.__words[0];
                  }

                  if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v360.__r_.__value_.__l.__size_;
                  }

                  v341 = *(a1 + v4 - 9);
                  v344 = *(v337 - 32);
                  v342 = (v337 - 32);
                  v343 = v344;
                  if (v341 >= 0)
                  {
                    v345 = v342;
                  }

                  else
                  {
                    v345 = v343;
                  }

                  if (v341 >= 0)
                  {
                    v346 = *(a1 + v4 - 9);
                  }

                  else
                  {
                    v346 = *(a1 + v4 - 24);
                  }

                  if (v346 >= size)
                  {
                    v347 = size;
                  }

                  else
                  {
                    v347 = v346;
                  }

                  v348 = memcmp(v339, v345, v347);
                  if (v348)
                  {
                    if ((v348 & 0x80000000) == 0)
                    {
                      goto LABEL_829;
                    }
                  }

                  else if (size >= v346)
                  {
LABEL_829:
                    v349 = a1 + v4;
                    if (v349 != &v360)
                    {
                      if (*(v349 + 23) < 0)
                      {
                        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v320 = &v360;
                        }

                        else
                        {
                          v320 = v360.__r_.__value_.__r.__words[0];
                        }

                        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v321 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v321 = v360.__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(v349, v320, v321);
                      }

                      else if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
                      {
                        std::string::__assign_no_alias<true>(v349, v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v350 = *&v360.__r_.__value_.__l.__data_;
                        *(v349 + 16) = *(&v360.__r_.__value_.__l + 2);
                        *v349 = v350;
                      }
                    }

                    v322 = v361;
                    *(v349 + 28) = v362;
                    *(v349 + 24) = v322;
                    if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v360.__r_.__value_.__l.__data_);
                    }

                    break;
                  }
                }

                else if (v362 <= v338)
                {
                  goto LABEL_829;
                }

                v4 -= 32;
              }
            }

            v319 = (a1 + v317);
            v318 = v317 + 32;
            v316 = a1 + v317 + 32;
            if (v316 == a2)
            {
              return;
            }
          }
        }

        if (v9 == a2)
        {
          return;
        }

        v139 = v9 + 32;
        if (v9 + 32 == a2)
        {
          return;
        }

        v140 = 0;
        v141 = v9;
LABEL_524:
        v207 = v141;
        v141 = v139;
        v208 = *(v207 + 60);
        v209 = *(v207 + 28);
        if (v208 == v209)
        {
          v210 = *(v207 + 55);
          if (v210 >= 0)
          {
            v211 = v141;
          }

          else
          {
            v211 = *v141;
          }

          if (v210 >= 0)
          {
            v212 = *(v207 + 55);
          }

          else
          {
            v212 = v207[5];
          }

          v213 = *(v207 + 23);
          if (v213 >= 0)
          {
            v214 = v207;
          }

          else
          {
            v214 = *v207;
          }

          if (v213 >= 0)
          {
            v215 = *(v207 + 23);
          }

          else
          {
            v215 = v207[1];
          }

          if (v215 >= v212)
          {
            v216 = v212;
          }

          else
          {
            v216 = v215;
          }

          v217 = memcmp(v211, v214, v216);
          if (v217)
          {
            if ((v217 & 0x80000000) == 0)
            {
              goto LABEL_523;
            }
          }

          else if (v212 >= v215)
          {
            goto LABEL_523;
          }

          if ((v210 & 0x80) == 0)
          {
LABEL_543:
            v218 = *v141;
            v360.__r_.__value_.__r.__words[2] = *(v141 + 16);
            *&v360.__r_.__value_.__l.__data_ = v218;
LABEL_547:
            v361 = *(v207 + 14);
            v362 = *(v207 + 60);
            for (i = v140; ; i -= 32)
            {
              v220 = a1 + i;
              v221 = *(a1 + i + 23);
              if (*(a1 + i + 55) < 0)
              {
                if (v221 >= 0)
                {
                  v223 = (a1 + i);
                }

                else
                {
                  v223 = *v220;
                }

                if (v221 >= 0)
                {
                  v224 = *(a1 + i + 23);
                }

                else
                {
                  v224 = *(v220 + 8);
                }

                std::string::__assign_no_alias<false>((v220 + 32), v223, v224);
                v222 = a1 + i;
                *(v222 + 56) = *(a1 + i + 24);
                *(v222 + 60) = *(a1 + i + 28);
                if (!i)
                {
LABEL_585:
                  v233 = a1;
                  if (a1 != &v360)
                  {
                    goto LABEL_586;
                  }

                  goto LABEL_521;
                }
              }

              else if ((*(a1 + i + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>((v220 + 32), *(a1 + i), *(a1 + i + 8));
                v222 = a1 + i;
                *(v222 + 56) = *(a1 + i + 24);
                *(v222 + 60) = *(a1 + i + 28);
                if (!i)
                {
                  goto LABEL_585;
                }
              }

              else
              {
                *(v220 + 32) = *v220;
                *(v220 + 48) = *(v220 + 16);
                v222 = a1 + i;
                *(v222 + 56) = *(a1 + i + 24);
                *(v222 + 60) = *(a1 + i + 28);
                if (!i)
                {
                  goto LABEL_585;
                }
              }

              v225 = *(v222 - 4);
              if (v362 == v225)
              {
                if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v226 = &v360;
                }

                else
                {
                  v226 = v360.__r_.__value_.__r.__words[0];
                }

                if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v227 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v227 = v360.__r_.__value_.__l.__size_;
                }

                v228 = *(a1 + i - 9);
                if (v228 >= 0)
                {
                  v229 = (v222 - 32);
                }

                else
                {
                  v229 = *(v222 - 32);
                }

                if (v228 >= 0)
                {
                  v230 = *(a1 + i - 9);
                }

                else
                {
                  v230 = *(a1 + i - 24);
                }

                if (v230 >= v227)
                {
                  v231 = v227;
                }

                else
                {
                  v231 = v230;
                }

                v232 = memcmp(v226, v229, v231);
                if (v232)
                {
                  if ((v232 & 0x80000000) == 0)
                  {
                    goto LABEL_583;
                  }
                }

                else if (v227 >= v230)
                {
LABEL_583:
                  v233 = a1 + i;
                  if ((a1 + i) != &v360)
                  {
LABEL_586:
                    if (*(v233 + 23) < 0)
                    {
                      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v204 = &v360;
                      }

                      else
                      {
                        v204 = v360.__r_.__value_.__r.__words[0];
                      }

                      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v205 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v205 = v360.__r_.__value_.__l.__size_;
                      }

                      std::string::__assign_no_alias<false>(v233, v204, v205);
                    }

                    else if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__assign_no_alias<true>(v233, v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v234 = *&v360.__r_.__value_.__l.__data_;
                      *(v233 + 16) = *(&v360.__r_.__value_.__l + 2);
                      *v233 = v234;
                    }
                  }

LABEL_521:
                  v206 = v361;
                  *(v222 + 28) = v362;
                  *(v222 + 24) = v206;
                  if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v360.__r_.__value_.__l.__data_);
                  }

LABEL_523:
                  v139 = v141 + 32;
                  v140 += 32;
                  if (v141 + 32 == a2)
                  {
                    return;
                  }

                  goto LABEL_524;
                }
              }

              else if (v362 <= v225)
              {
                goto LABEL_583;
              }
            }
          }
        }

        else
        {
          if (v208 <= v209)
          {
            goto LABEL_523;
          }

          if ((*(v207 + 55) & 0x80) == 0)
          {
            goto LABEL_543;
          }
        }

        std::string::__init_copy_ctor_external(&v360, *v141, v207[5]);
        goto LABEL_547;
      }

      if (!a3)
      {
        if (v9 == a2)
        {
          return;
        }

        v142 = (v10 - 2) >> 1;
        v354 = v142;
        *v356 = v9;
        while (1)
        {
          v146 = v142;
          if (v354 < v142)
          {
            goto LABEL_395;
          }

          v147 = (2 * v142) | 1;
          v148 = a1 + 32 * v147;
          v149 = 2 * v142 + 2;
          if (v149 < v10)
          {
            v150 = *(v148 + 28);
            v151 = *(v148 + 60);
            if (v150 != v151)
            {
              if (v150 <= v151)
              {
                goto LABEL_419;
              }

              goto LABEL_418;
            }

            v152 = v146;
            v153 = *(v148 + 23);
            if (v153 >= 0)
            {
              v154 = (a1 + 32 * v147);
            }

            else
            {
              v154 = *v148;
            }

            if (v153 >= 0)
            {
              v155 = *(v148 + 23);
            }

            else
            {
              v155 = *(v148 + 8);
            }

            v156 = *(v148 + 55);
            if (v156 >= 0)
            {
              v157 = (v148 + 32);
            }

            else
            {
              v157 = *(v148 + 32);
            }

            if (v156 >= 0)
            {
              v158 = *(v148 + 55);
            }

            else
            {
              v158 = *(v148 + 40);
            }

            if (v158 >= v155)
            {
              v159 = v155;
            }

            else
            {
              v159 = v158;
            }

            v160 = memcmp(v154, v157, v159);
            if (v160)
            {
              v146 = v152;
              if ((v160 & 0x80000000) == 0)
              {
                goto LABEL_419;
              }

LABEL_418:
              v148 += 32;
              v147 = v149;
              goto LABEL_419;
            }

            v43 = v155 >= v158;
            v146 = v152;
            if (!v43)
            {
              goto LABEL_418;
            }
          }

LABEL_419:
          v161 = a1 + 32 * v146;
          v162 = *(v148 + 28);
          v163 = *(v161 + 28);
          if (v162 == v163)
          {
            v164 = v146;
            v165 = *(v148 + 23);
            if (v165 >= 0)
            {
              v166 = v148;
            }

            else
            {
              v166 = *v148;
            }

            if (v165 >= 0)
            {
              v167 = *(v148 + 23);
            }

            else
            {
              v167 = *(v148 + 8);
            }

            v168 = *(v161 + 23);
            if (v168 >= 0)
            {
              v169 = (a1 + 32 * v146);
            }

            else
            {
              v169 = *v161;
            }

            if (v168 >= 0)
            {
              v170 = *(v161 + 23);
            }

            else
            {
              v170 = *(v161 + 8);
            }

            if (v170 >= v167)
            {
              v171 = v167;
            }

            else
            {
              v171 = v170;
            }

            v172 = memcmp(v166, v169, v171);
            if (v172)
            {
              v146 = v164;
              if (v172 < 0)
              {
                goto LABEL_395;
              }
            }

            else
            {
              v43 = v167 >= v170;
              v146 = v164;
              if (!v43)
              {
                goto LABEL_395;
              }
            }

            if ((v168 & 0x80) == 0)
            {
LABEL_438:
              v173 = *v161;
              v360.__r_.__value_.__r.__words[2] = *(v161 + 16);
              *&v360.__r_.__value_.__l.__data_ = v173;
              goto LABEL_442;
            }
          }

          else
          {
            if (v162 > v163)
            {
              goto LABEL_395;
            }

            if ((*(v161 + 23) & 0x80) == 0)
            {
              goto LABEL_438;
            }
          }

          std::string::__init_copy_ctor_external(&v360, *v161, *(v161 + 8));
LABEL_442:
          v352 = v146;
          v174 = *(v161 + 24);
          v362 = *(v161 + 28);
          v361 = v174;
          while (1)
          {
            v175 = v148;
            if (v161 != v148)
            {
              v176 = *(v148 + 23);
              if (*(v161 + 23) < 0)
              {
                if (v176 >= 0)
                {
                  v178 = v148;
                }

                else
                {
                  v178 = *v148;
                }

                if (v176 >= 0)
                {
                  v179 = *(v148 + 23);
                }

                else
                {
                  v179 = *(v148 + 8);
                }

                std::string::__assign_no_alias<false>(v161, v178, v179);
              }

              else if ((*(v148 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(v161, *v148, *(v148 + 8));
              }

              else
              {
                v177 = *v148;
                *(v161 + 16) = *(v148 + 16);
                *v161 = v177;
              }
            }

            v180 = *(v148 + 24);
            *(v161 + 28) = *(v148 + 28);
            *(v161 + 24) = v180;
            if (v354 < v147)
            {
              break;
            }

            v181 = 2 * v147;
            v147 = (2 * v147) | 1;
            v148 = a1 + 32 * v147;
            v182 = v181 + 2;
            if (v181 + 2 < v10)
            {
              v183 = *(v148 + 28);
              v184 = *(v148 + 60);
              if (v183 == v184)
              {
                v185 = a2;
                v186 = v10;
                v187 = *(v148 + 23);
                if (v187 >= 0)
                {
                  v188 = v148;
                }

                else
                {
                  v188 = *v148;
                }

                if (v187 >= 0)
                {
                  v189 = *(v148 + 23);
                }

                else
                {
                  v189 = *(v148 + 8);
                }

                v190 = *(v148 + 55);
                if (v190 >= 0)
                {
                  v191 = (v148 + 32);
                }

                else
                {
                  v191 = *(v148 + 32);
                }

                if (v190 >= 0)
                {
                  v192 = *(v148 + 55);
                }

                else
                {
                  v192 = *(v148 + 40);
                }

                if (v192 >= v189)
                {
                  v193 = v189;
                }

                else
                {
                  v193 = v192;
                }

                v194 = memcmp(v188, v191, v193);
                if (!v194)
                {
                  v43 = v189 >= v192;
                  v10 = v186;
                  a2 = v185;
                  a1 = *v356;
                  if (v43)
                  {
                    goto LABEL_479;
                  }

LABEL_478:
                  v148 += 32;
                  v147 = v182;
                  goto LABEL_479;
                }

                v10 = v186;
                a2 = v185;
                a1 = *v356;
                if (v194 < 0)
                {
                  goto LABEL_478;
                }
              }

              else if (v183 > v184)
              {
                goto LABEL_478;
              }
            }

LABEL_479:
            v195 = *(v148 + 28);
            if (v195 == v362)
            {
              v196 = *(v148 + 23);
              if (v196 >= 0)
              {
                v197 = v148;
              }

              else
              {
                v197 = *v148;
              }

              if (v196 >= 0)
              {
                v198 = *(v148 + 23);
              }

              else
              {
                v198 = *(v148 + 8);
              }

              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v199 = &v360;
              }

              else
              {
                v199 = v360.__r_.__value_.__r.__words[0];
              }

              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v200 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v200 = v360.__r_.__value_.__l.__size_;
              }

              if (v200 >= v198)
              {
                v201 = v198;
              }

              else
              {
                v201 = v200;
              }

              v202 = memcmp(v197, v199, v201);
              v161 = v175;
              if (v202)
              {
                if (v202 < 0)
                {
                  break;
                }
              }

              else if (v198 < v200)
              {
                break;
              }
            }

            else
            {
              v161 = v175;
              if (v195 > v362)
              {
                break;
              }
            }
          }

          if (v175 != &v360)
          {
            if (*(v175 + 23) < 0)
            {
              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v143 = &v360;
              }

              else
              {
                v143 = v360.__r_.__value_.__r.__words[0];
              }

              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v144 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v144 = v360.__r_.__value_.__l.__size_;
              }

              std::string::__assign_no_alias<false>(v175, v143, v144);
            }

            else if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v175, v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
            }

            else
            {
              v203 = *&v360.__r_.__value_.__l.__data_;
              *(v175 + 16) = *(&v360.__r_.__value_.__l + 2);
              *v175 = v203;
            }
          }

          v145 = v361;
          *(v175 + 28) = v362;
          *(v175 + 24) = v145;
          if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v360.__r_.__value_.__l.__data_);
          }

          v146 = v352;
LABEL_395:
          v142 = v146 - 1;
          if (!v146)
          {
LABEL_594:
            if (*(a1 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v357, *a1, *(a1 + 8));
            }

            else
            {
              v236 = *a1;
              v357.__r_.__value_.__r.__words[2] = *(a1 + 16);
              *&v357.__r_.__value_.__l.__data_ = v236;
            }

            v237 = 0;
            v238 = *(a1 + 24);
            v359 = *(a1 + 28);
            v358 = v238;
            v239 = (v10 - 2) >> 1;
            v240 = a1;
            while (1)
            {
              v245 = v240;
              v246 = &v240->__r_.__value_.__l.__data_ + 4 * v237;
              v240 = (v246 + 4);
              v247 = 2 * v237;
              v237 = (2 * v237) | 1;
              v248 = v247 + 2;
              if (v247 + 2 < v10)
              {
                v249 = *(v246 + 60);
                v250 = *(v246 + 92);
                if (v249 == v250)
                {
                  v251 = a2;
                  v252 = v10;
                  v253 = *(v246 + 55);
                  if (v253 >= 0)
                  {
                    v254 = (v246 + 4);
                  }

                  else
                  {
                    v254 = v246[4];
                  }

                  if (v253 >= 0)
                  {
                    v255 = *(v246 + 55);
                  }

                  else
                  {
                    v255 = v246[5];
                  }

                  v256 = *(v246 + 87);
                  if (v256 >= 0)
                  {
                    v257 = (v246 + 8);
                  }

                  else
                  {
                    v257 = v246[8];
                  }

                  if (v256 >= 0)
                  {
                    v258 = *(v246 + 87);
                  }

                  else
                  {
                    v258 = v246[9];
                  }

                  if (v258 >= v255)
                  {
                    v259 = v255;
                  }

                  else
                  {
                    v259 = v258;
                  }

                  v260 = memcmp(v254, v257, v259);
                  if (!v260)
                  {
                    v43 = v255 >= v258;
                    v10 = v252;
                    a2 = v251;
                    a1 = *v356;
                    if (v43)
                    {
                      goto LABEL_628;
                    }

LABEL_627:
                    v240 = (v246 + 8);
                    v237 = v248;
                    goto LABEL_628;
                  }

                  v10 = v252;
                  a2 = v251;
                  a1 = *v356;
                  if (v260 < 0)
                  {
                    goto LABEL_627;
                  }
                }

                else if (v249 > v250)
                {
                  goto LABEL_627;
                }
              }

LABEL_628:
              if (v245 != v240)
              {
                v261 = HIBYTE(v240->__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v245->__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v261 >= 0)
                  {
                    v241 = v240;
                  }

                  else
                  {
                    v241 = v240->__r_.__value_.__r.__words[0];
                  }

                  if (v261 >= 0)
                  {
                    v242 = HIBYTE(v240->__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v242 = v240->__r_.__value_.__l.__size_;
                  }

                  std::string::__assign_no_alias<false>(v245, v241, v242);
                }

                else if ((*(&v240->__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v245, v240->__r_.__value_.__l.__data_, v240->__r_.__value_.__l.__size_);
                }

                else
                {
                  v262 = *&v240->__r_.__value_.__l.__data_;
                  v245->__r_.__value_.__r.__words[2] = v240->__r_.__value_.__r.__words[2];
                  *&v245->__r_.__value_.__l.__data_ = v262;
                }
              }

              v244 = v240 + 1;
              data = v240[1].__r_.__value_.__l.__data_;
              v245[1].__r_.__value_.__s.__data_[4] = v240[1].__r_.__value_.__s.__data_[4];
              LODWORD(v245[1].__r_.__value_.__l.__data_) = data;
              if (v237 > v239)
              {
                v263 = (a2 - 32);
                if (v240 == (a2 - 32))
                {
                  if (v240 != &v357)
                  {
                    if (SHIBYTE(v240->__r_.__value_.__r.__words[2]) < 0)
                    {
                      if ((v357.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v309 = &v357;
                      }

                      else
                      {
                        v309 = v357.__r_.__value_.__r.__words[0];
                      }

                      if ((v357.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v310 = HIBYTE(v357.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v310 = v357.__r_.__value_.__l.__size_;
                      }

                      std::string::__assign_no_alias<false>(v240, v309, v310);
                    }

                    else if ((*(&v357.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__assign_no_alias<true>(v240, v357.__r_.__value_.__l.__data_, v357.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v266 = *&v357.__r_.__value_.__l.__data_;
                      v240->__r_.__value_.__r.__words[2] = v357.__r_.__value_.__r.__words[2];
                      *&v240->__r_.__value_.__l.__data_ = v266;
                    }
                  }

                  v311 = v358;
                  v240[1].__r_.__value_.__s.__data_[4] = v359;
                  LODWORD(v244->__r_.__value_.__l.__data_) = v311;
                  goto LABEL_741;
                }

                v264 = *(a2 - 9);
                if (SHIBYTE(v240->__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v264 >= 0)
                  {
                    v267 = (a2 - 32);
                  }

                  else
                  {
                    v267 = *(a2 - 32);
                  }

                  if (v264 >= 0)
                  {
                    v268 = *(a2 - 9);
                  }

                  else
                  {
                    v268 = *(a2 - 24);
                  }

                  std::string::__assign_no_alias<false>(v240, v267, v268);
                }

                else if ((*(a2 - 9) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v240, *(a2 - 32), *(a2 - 24));
                }

                else
                {
                  v265 = *&v263->__r_.__value_.__l.__data_;
                  v240->__r_.__value_.__r.__words[2] = *(a2 - 16);
                  *&v240->__r_.__value_.__l.__data_ = v265;
                }

                v269 = *(a2 - 8);
                v240[1].__r_.__value_.__s.__data_[4] = *(a2 - 4);
                LODWORD(v244->__r_.__value_.__l.__data_) = v269;
                if (v263 != &v357)
                {
                  if (*(a2 - 9) < 0)
                  {
                    if ((v357.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v271 = &v357;
                    }

                    else
                    {
                      v271 = v357.__r_.__value_.__r.__words[0];
                    }

                    if ((v357.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v272 = HIBYTE(v357.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v272 = v357.__r_.__value_.__l.__size_;
                    }

                    std::string::__assign_no_alias<false>((a2 - 32), v271, v272);
                  }

                  else if ((*(&v357.__r_.__value_.__s + 23) & 0x80) != 0)
                  {
                    std::string::__assign_no_alias<true>((a2 - 32), v357.__r_.__value_.__l.__data_, v357.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v270 = *&v357.__r_.__value_.__l.__data_;
                    *(a2 - 16) = *(&v357.__r_.__value_.__l + 2);
                    *&v263->__r_.__value_.__l.__data_ = v270;
                  }
                }

                v273 = v358;
                *(a2 - 4) = v359;
                *(a2 - 8) = v273;
                v274 = (&v240[1].__r_.__value_.__r.__words[1] - a1) >> 5;
                v235 = v274 < 2;
                v275 = v274 - 2;
                if (!v235)
                {
                  v276 = v275 >> 1;
                  v277 = (a1 + 32 * (v275 >> 1));
                  v278 = v277[1].__r_.__value_.__s.__data_[4];
                  v279 = v240[1].__r_.__value_.__s.__data_[4];
                  if (v278 == v279)
                  {
                    v280 = SHIBYTE(v277->__r_.__value_.__r.__words[2]);
                    if (v280 >= 0)
                    {
                      v281 = v277;
                    }

                    else
                    {
                      v281 = v277->__r_.__value_.__r.__words[0];
                    }

                    if (v280 >= 0)
                    {
                      v282 = HIBYTE(v277->__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v282 = v277->__r_.__value_.__l.__size_;
                    }

                    v283 = SHIBYTE(v240->__r_.__value_.__r.__words[2]);
                    if (v283 >= 0)
                    {
                      v284 = v240;
                    }

                    else
                    {
                      v284 = v240->__r_.__value_.__r.__words[0];
                    }

                    if (v283 >= 0)
                    {
                      v285 = HIBYTE(v240->__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v285 = v240->__r_.__value_.__l.__size_;
                    }

                    if (v285 >= v282)
                    {
                      v286 = v282;
                    }

                    else
                    {
                      v286 = v285;
                    }

                    v287 = memcmp(v281, v284, v286);
                    if (v287)
                    {
                      if ((v287 & 0x80000000) == 0)
                      {
                        goto LABEL_741;
                      }
                    }

                    else if (v282 >= v285)
                    {
                      goto LABEL_741;
                    }

                    if ((v283 & 0x80) == 0)
                    {
LABEL_684:
                      v288 = *&v240->__r_.__value_.__l.__data_;
                      v360.__r_.__value_.__r.__words[2] = v240->__r_.__value_.__r.__words[2];
                      *&v360.__r_.__value_.__l.__data_ = v288;
                      goto LABEL_688;
                    }
                  }

                  else
                  {
                    if (v278 <= v279)
                    {
                      goto LABEL_741;
                    }

                    if ((*(&v240->__r_.__value_.__s + 23) & 0x80) == 0)
                    {
                      goto LABEL_684;
                    }
                  }

                  std::string::__init_copy_ctor_external(&v360, v240->__r_.__value_.__l.__data_, v240->__r_.__value_.__l.__size_);
LABEL_688:
                  v289 = v244->__r_.__value_.__l.__data_;
                  v362 = v240[1].__r_.__value_.__s.__data_[4];
                  v361 = v289;
                  while (2)
                  {
                    v290 = v277;
                    if (v240 != v277)
                    {
                      v291 = HIBYTE(v277->__r_.__value_.__r.__words[2]);
                      if ((SHIBYTE(v240->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        if ((*(&v277->__r_.__value_.__s + 23) & 0x80) != 0)
                        {
                          std::string::__assign_no_alias<true>(v240, v277->__r_.__value_.__l.__data_, v277->__r_.__value_.__l.__size_);
                          v294 = v277 + 1;
                          v306 = v277[1].__r_.__value_.__l.__data_;
                          v240[1].__r_.__value_.__s.__data_[4] = v277[1].__r_.__value_.__s.__data_[4];
                          LODWORD(v240[1].__r_.__value_.__l.__data_) = v306;
                          if (!v276)
                          {
LABEL_725:
                            if (v290 != &v360)
                            {
                              if ((SHIBYTE(v290->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
                                {
                                  std::string::__assign_no_alias<true>(v290, v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
                                  v315 = v361;
                                  v294->__r_.__value_.__s.__data_[4] = v362;
                                  LODWORD(v294->__r_.__value_.__l.__data_) = v315;
                                  if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
                                  {
LABEL_751:
                                    operator delete(v360.__r_.__value_.__l.__data_);
                                  }
                                }

                                else
                                {
                                  v307 = *&v360.__r_.__value_.__l.__data_;
                                  v290->__r_.__value_.__r.__words[2] = v360.__r_.__value_.__r.__words[2];
                                  *&v290->__r_.__value_.__l.__data_ = v307;
                                  v308 = v361;
                                  v294->__r_.__value_.__s.__data_[4] = v362;
                                  LODWORD(v294->__r_.__value_.__l.__data_) = v308;
                                  if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    goto LABEL_751;
                                  }
                                }

                                break;
                              }

                              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v312 = &v360;
                              }

                              else
                              {
                                v312 = v360.__r_.__value_.__r.__words[0];
                              }

                              if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v313 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                              }

                              else
                              {
                                v313 = v360.__r_.__value_.__l.__size_;
                              }

                              std::string::__assign_no_alias<false>(v290, v312, v313);
                            }

                            v314 = v361;
                            v294->__r_.__value_.__s.__data_[4] = v362;
                            LODWORD(v294->__r_.__value_.__l.__data_) = v314;
                            if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_751;
                            }

                            break;
                          }
                        }

                        else
                        {
                          v292 = *&v277->__r_.__value_.__l.__data_;
                          v240->__r_.__value_.__r.__words[2] = v277->__r_.__value_.__r.__words[2];
                          *&v240->__r_.__value_.__l.__data_ = v292;
                          v294 = v277 + 1;
                          v293 = v277[1].__r_.__value_.__l.__data_;
                          v240[1].__r_.__value_.__s.__data_[4] = v277[1].__r_.__value_.__s.__data_[4];
                          LODWORD(v240[1].__r_.__value_.__l.__data_) = v293;
                          if (!v276)
                          {
                            goto LABEL_725;
                          }
                        }

                        goto LABEL_703;
                      }

                      if (v291 >= 0)
                      {
                        v295 = v277;
                      }

                      else
                      {
                        v295 = v277->__r_.__value_.__r.__words[0];
                      }

                      if (v291 >= 0)
                      {
                        v296 = HIBYTE(v277->__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v296 = v277->__r_.__value_.__l.__size_;
                      }

                      std::string::__assign_no_alias<false>(v240, v295, v296);
                    }

                    v294 = v277 + 1;
                    v297 = v277[1].__r_.__value_.__l.__data_;
                    v240[1].__r_.__value_.__s.__data_[4] = v277[1].__r_.__value_.__s.__data_[4];
                    LODWORD(v240[1].__r_.__value_.__l.__data_) = v297;
                    if (!v276)
                    {
                      goto LABEL_725;
                    }

LABEL_703:
                    v276 = (v276 - 1) >> 1;
                    v277 = (a1 + 32 * v276);
                    v298 = v277[1].__r_.__value_.__s.__data_[4];
                    if (v298 == v362)
                    {
                      v299 = SHIBYTE(v277->__r_.__value_.__r.__words[2]);
                      if (v299 >= 0)
                      {
                        v300 = (a1 + 32 * v276);
                      }

                      else
                      {
                        v300 = v277->__r_.__value_.__r.__words[0];
                      }

                      if (v299 >= 0)
                      {
                        v301 = HIBYTE(v277->__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v301 = v277->__r_.__value_.__l.__size_;
                      }

                      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v302 = &v360;
                      }

                      else
                      {
                        v302 = v360.__r_.__value_.__r.__words[0];
                      }

                      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v303 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v303 = v360.__r_.__value_.__l.__size_;
                      }

                      if (v303 >= v301)
                      {
                        v304 = v301;
                      }

                      else
                      {
                        v304 = v303;
                      }

                      v305 = memcmp(v300, v302, v304);
                      v240 = v290;
                      if (v305)
                      {
                        if ((v305 & 0x80000000) == 0)
                        {
                          goto LABEL_725;
                        }
                      }

                      else if (v301 >= v303)
                      {
                        goto LABEL_725;
                      }
                    }

                    else
                    {
                      v240 = v290;
                      if (v298 <= v362)
                      {
                        goto LABEL_725;
                      }
                    }

                    continue;
                  }
                }

LABEL_741:
                if (SHIBYTE(v357.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v357.__r_.__value_.__l.__data_);
                }

                a2 = v263;
                v235 = v10-- <= 2;
                if (v235)
                {
                  return;
                }

                goto LABEL_594;
              }
            }
          }
        }
      }

      j = v10 >> 1;
      v12 = (v9 + 32 * (v10 >> 1));
      if (v10 < 0x81)
      {
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1 + 32 * (v10 >> 1), a1, v8);
        v351 = a3 - 1;
        if (a4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1, a1 + 32 * (v10 >> 1), v8);
        j *= 32;
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1 + 32, j + a1 - 32, (a2 - 64));
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(a1 + 64, a1 + 32 + j, (a2 - 96));
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,0>(j + a1 - 32, v12, (a1 + 32 + j));
        std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, v12);
        v351 = a3 - 1;
        if (a4)
        {
          goto LABEL_37;
        }
      }

      v13 = *(a1 - 4);
      v14 = *(a1 + 28);
      if (v13 != v14)
      {
        if (v13 <= v14)
        {
          LOBYTE(j) = *(a1 + 23);
          goto LABEL_188;
        }

        goto LABEL_37;
      }

      v15 = *(a1 - 9);
      v16 = v15 >= 0 ? (a1 - 32) : *(a1 - 32);
      v4 = v15 >= 0 ? *(a1 - 9) : *(a1 - 24);
      j = *(a1 + 23);
      v17 = (j & 0x80000000) == 0 ? a1 : *a1;
      v18 = (j & 0x80000000) == 0 ? *(a1 + 23) : *(a1 + 8);
      v19 = v18 >= v4 ? v4 : v18;
      v20 = memcmp(v16, v17, v19);
      if (!v20)
      {
        break;
      }

      if (v20 < 0)
      {
        goto LABEL_37;
      }

LABEL_188:
      if ((j & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v360, *a1, *(a1 + 8));
      }

      else
      {
        v77 = *a1;
        v360.__r_.__value_.__r.__words[2] = *(a1 + 16);
        *&v360.__r_.__value_.__l.__data_ = v77;
      }

      v78 = *(a1 + 24);
      v362 = *(a1 + 28);
      v361 = v78;
      j = v362;
      v79 = *(a2 - 4);
      if (v362 == v79)
      {
        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v360;
        }

        else
        {
          v80 = v360.__r_.__value_.__r.__words[0];
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v4 = v360.__r_.__value_.__l.__size_;
        }

        v81 = *(a2 - 9);
        if (v81 >= 0)
        {
          v82 = v8;
        }

        else
        {
          v82 = *(a2 - 32);
        }

        if (v81 >= 0)
        {
          v83 = *(a2 - 9);
        }

        else
        {
          v83 = *(a2 - 24);
        }

        if (v83 >= v4)
        {
          v84 = v4;
        }

        else
        {
          v84 = v83;
        }

        v85 = memcmp(v80, v82, v84);
        if (v85)
        {
          if (v85 < 0)
          {
            goto LABEL_234;
          }
        }

        else if (v4 < v83)
        {
LABEL_234:
          v9 = a1 + 32;
          if (a1 + 32 == a2)
          {
            goto LABEL_834;
          }

          v86 = v8;
          if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v360;
          }

          else
          {
            v8 = v360.__r_.__value_.__r.__words[0];
          }

          if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v4 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v4 = v360.__r_.__value_.__l.__size_;
          }

          while (1)
          {
            v94 = *(v9 + 28);
            if (j == v94)
            {
              v95 = *(v9 + 23);
              if (v95 >= 0)
              {
                v96 = v9;
              }

              else
              {
                v96 = *v9;
              }

              if (v95 >= 0)
              {
                v97 = *(v9 + 23);
              }

              else
              {
                v97 = *(v9 + 8);
              }

              if (v97 >= v4)
              {
                v98 = v4;
              }

              else
              {
                v98 = v97;
              }

              v99 = memcmp(v8, v96, v98);
              if (v99)
              {
                if (v99 < 0)
                {
                  goto LABEL_257;
                }
              }

              else if (v4 < v97)
              {
                goto LABEL_257;
              }
            }

            else if (j > v94)
            {
              goto LABEL_257;
            }

            v9 += 32;
            if (v9 == a2)
            {
              goto LABEL_834;
            }
          }
        }
      }

      else if (v362 > v79)
      {
        goto LABEL_234;
      }

      v86 = v8;
      v9 = a1 + 32;
      if (a1 + 32 < a2)
      {
        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v360;
        }

        else
        {
          v87 = v360.__r_.__value_.__r.__words[0];
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v4 = v360.__r_.__value_.__l.__size_;
        }

        do
        {
          v88 = *(v9 + 28);
          if (j == v88)
          {
            v89 = *(v9 + 23);
            if (v89 >= 0)
            {
              v90 = v9;
            }

            else
            {
              v90 = *v9;
            }

            if (v89 >= 0)
            {
              v91 = *(v9 + 23);
            }

            else
            {
              v91 = *(v9 + 8);
            }

            if (v91 >= v4)
            {
              v92 = v4;
            }

            else
            {
              v92 = v91;
            }

            v93 = memcmp(v87, v90, v92);
            if (v93)
            {
              if (v93 < 0)
              {
                break;
              }
            }

            else if (v4 < v91)
            {
              break;
            }
          }

          else if (j > v88)
          {
            break;
          }

          v9 += 32;
        }

        while (v9 < a2);
      }

LABEL_257:
      v8 = a2;
      if (v9 < a2)
      {
        if (a2 == a1)
        {
          goto LABEL_834;
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v100 = &v360;
        }

        else
        {
          v100 = v360.__r_.__value_.__r.__words[0];
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v4 = v360.__r_.__value_.__l.__size_;
        }

        v8 = v86;
        while (1)
        {
          v101 = *(v8 + 28);
          if (j == v101)
          {
            v102 = *(v8 + 23);
            if (v102 >= 0)
            {
              v103 = v8;
            }

            else
            {
              v103 = *v8;
            }

            if (v102 >= 0)
            {
              v104 = *(v8 + 23);
            }

            else
            {
              v104 = *(v8 + 8);
            }

            if (v104 >= v4)
            {
              v105 = v4;
            }

            else
            {
              v105 = v104;
            }

            v106 = memcmp(v100, v103, v105);
            if (v106)
            {
              if ((v106 & 0x80000000) == 0)
              {
                break;
              }
            }

            else if (v4 >= v104)
            {
              break;
            }
          }

          else if (j <= v101)
          {
            break;
          }

          v36 = v8 == a1;
          v8 -= 32;
          if (v36)
          {
            goto LABEL_834;
          }
        }
      }

LABEL_324:
      if (v9 < v8)
      {
        std::swap[abi:sn200100]<webrtc::RtpExtension>(v9, v8);
        v9 += 32;
        if (v9 == a2)
        {
          goto LABEL_834;
        }

        j = v362;
        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = &v360;
        }

        else
        {
          v107 = v360.__r_.__value_.__r.__words[0];
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v4 = v360.__r_.__value_.__l.__size_;
        }

        while (1)
        {
          v108 = *(v9 + 28);
          if (j == v108)
          {
            v109 = *(v9 + 23);
            if (v109 >= 0)
            {
              v110 = v9;
            }

            else
            {
              v110 = *v9;
            }

            if (v109 >= 0)
            {
              v111 = *(v9 + 23);
            }

            else
            {
              v111 = *(v9 + 8);
            }

            if (v111 >= v4)
            {
              v112 = v4;
            }

            else
            {
              v112 = v111;
            }

            v113 = memcmp(v107, v110, v112);
            if (v113)
            {
              if (v113 < 0)
              {
                goto LABEL_306;
              }
            }

            else if (v4 < v111)
            {
LABEL_306:
              if (v8 == a1)
              {
                goto LABEL_834;
              }

              v8 -= 32;
              while (1)
              {
                v114 = *(v8 + 28);
                if (j == v114)
                {
                  v115 = *(v8 + 23);
                  if (v115 >= 0)
                  {
                    v116 = v8;
                  }

                  else
                  {
                    v116 = *v8;
                  }

                  if (v115 >= 0)
                  {
                    v117 = *(v8 + 23);
                  }

                  else
                  {
                    v117 = *(v8 + 8);
                  }

                  if (v117 >= v4)
                  {
                    v118 = v4;
                  }

                  else
                  {
                    v118 = v117;
                  }

                  v119 = memcmp(v107, v116, v118);
                  if (v119)
                  {
                    if ((v119 & 0x80000000) == 0)
                    {
                      goto LABEL_324;
                    }
                  }

                  else if (v4 >= v117)
                  {
                    goto LABEL_324;
                  }
                }

                else if (j <= v114)
                {
                  goto LABEL_324;
                }

                v36 = v8 == a1;
                v8 -= 32;
                if (v36)
                {
                  goto LABEL_834;
                }
              }
            }
          }

          else if (j > v108)
          {
            goto LABEL_306;
          }

          v9 += 32;
          if (v9 == a2)
          {
            goto LABEL_834;
          }
        }
      }

      v120 = (v9 - 32);
      if (v9 - 32 != a1)
      {
        v121 = *(v9 - 9);
        if (*(a1 + 23) < 0)
        {
          if (v121 >= 0)
          {
            v124 = (v9 - 32);
          }

          else
          {
            v124 = *(v9 - 32);
          }

          if (v121 >= 0)
          {
            v125 = *(v9 - 9);
          }

          else
          {
            v125 = *(v9 - 24);
          }

          std::string::__assign_no_alias<false>(a1, v124, v125);
          v122 = a1 + 24;
        }

        else
        {
          v122 = a1 + 24;
          if ((*(v9 - 9) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(a1, *(v9 - 32), *(v9 - 24));
          }

          else
          {
            v123 = *&v120->__r_.__value_.__l.__data_;
            *(a1 + 16) = *(v9 - 16);
            *a1 = v123;
          }
        }

        v126 = *(v9 - 8);
        *(v122 + 4) = *(v9 - 4);
        *v122 = v126;
      }

      if (v120 != &v360)
      {
        if (*(v9 - 9) < 0)
        {
          if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v128 = &v360;
          }

          else
          {
            v128 = v360.__r_.__value_.__r.__words[0];
          }

          if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v129 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v129 = v360.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>((v9 - 32), v128, v129);
        }

        else if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>((v9 - 32), v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
        }

        else
        {
          v127 = *&v360.__r_.__value_.__l.__data_;
          *(v9 - 16) = *(&v360.__r_.__value_.__l + 2);
          *&v120->__r_.__value_.__l.__data_ = v127;
        }
      }

      v130 = v361;
      *(v9 - 4) = v362;
      *(v9 - 8) = v130;
      if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v360.__r_.__value_.__l.__data_);
      }

      a4 = 0;
      v8 = v86;
      a3 = v351;
    }

    if (v4 >= v18)
    {
      goto LABEL_188;
    }

LABEL_37:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v360, *a1, *(a1 + 8));
    }

    else
    {
      v21 = *a1;
      v360.__r_.__value_.__r.__words[2] = *(a1 + 16);
      *&v360.__r_.__value_.__l.__data_ = v21;
    }

    v22 = *(a1 + 24);
    v362 = *(a1 + 28);
    v361 = v22;
    if (a1 + 32 == a2)
    {
      goto LABEL_834;
    }

    j = 0;
    v23 = v362;
    v24 = (v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v360 : v360.__r_.__value_.__r.__words[0];
    v25 = (v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v360.__r_.__value_.__r.__words[2]) : v360.__r_.__value_.__l.__size_;
    while (1)
    {
      v26 = (a1 + j);
      v27 = *(a1 + j + 60);
      if (v27 != v23)
      {
        if (v27 <= v23)
        {
          goto LABEL_63;
        }

        goto LABEL_48;
      }

      v28 = v26 + 32;
      v29 = v26[55];
      v30 = *(v26 + 4);
      v31 = *(v26 + 5);
      v32 = (v29 & 0x80u) == 0 ? v28 : v30;
      v4 = (v29 & 0x80u) == 0 ? v29 : v31;
      v33 = v25 >= v4 ? v4 : v25;
      v34 = memcmp(v32, v24, v33);
      if (!v34)
      {
        break;
      }

      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

LABEL_48:
      j += 32;
      if (a1 + j + 32 == a2)
      {
        goto LABEL_834;
      }
    }

    if (v4 < v25)
    {
      goto LABEL_48;
    }

LABEL_63:
    v35 = a1 + j + 32;
    *v355 = v35;
    if (j)
    {
      break;
    }

    j = a2;
    if (v35 < a2)
    {
      for (j = v8; ; j -= 32)
      {
        v44 = *(j + 28);
        if (v44 == v23)
        {
          v45 = *(j + 23);
          if (v45 >= 0)
          {
            v46 = j;
          }

          else
          {
            v46 = *j;
          }

          if (v45 >= 0)
          {
            v47 = *(j + 23);
          }

          else
          {
            v47 = *(j + 8);
          }

          if (v25 >= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = v25;
          }

          v49 = memcmp(v46, v24, v48);
          if (v49)
          {
            if (v49 < 0)
            {
LABEL_82:
              v35 = *v355;
              break;
            }

            v35 = *v355;
            if (*v355 >= j)
            {
              break;
            }
          }

          else
          {
            v35 = *v355;
            if (v47 < v25 || *v355 >= j)
            {
              break;
            }
          }
        }

        else
        {
          v43 = v44 > v23 || v35 >= j;
          if (v43)
          {
            break;
          }
        }
      }
    }

    v9 = v35;
    if (v35 < j)
    {
      v51 = j;
      do
      {
        std::swap[abi:sn200100]<webrtc::RtpExtension>(v9, v51);
        v9 += 32;
        if (v9 == a2)
        {
          goto LABEL_834;
        }

        v8 = v362;
        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v360;
        }

        else
        {
          v52 = v360.__r_.__value_.__r.__words[0];
        }

        if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v53 = v360.__r_.__value_.__l.__size_;
        }

        while (1)
        {
          v54 = *(v9 + 28);
          if (v54 != v8)
          {
            if (v54 <= v8)
            {
              goto LABEL_135;
            }

            goto LABEL_120;
          }

          v55 = *(v9 + 23);
          v56 = v55 >= 0 ? v9 : *v9;
          v4 = v55 >= 0 ? *(v9 + 23) : *(v9 + 8);
          v57 = v53 >= v4 ? v4 : v53;
          v58 = memcmp(v56, v52, v57);
          if (!v58)
          {
            break;
          }

          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_135;
          }

LABEL_120:
          v9 += 32;
          if (v9 == a2)
          {
            goto LABEL_834;
          }
        }

        if (v4 < v53)
        {
          goto LABEL_120;
        }

LABEL_135:
        if (v51 == a1)
        {
          goto LABEL_834;
        }

        v51 -= 32;
LABEL_139:
        v59 = *(v51 + 28);
        if (v59 != v8)
        {
          if (v59 > v8)
          {
            continue;
          }

LABEL_138:
          v36 = v51 == a1;
          v51 -= 32;
          if (v36)
          {
            goto LABEL_834;
          }

          goto LABEL_139;
        }

        v60 = *(v51 + 23);
        if (v60 >= 0)
        {
          v61 = v51;
        }

        else
        {
          v61 = *v51;
        }

        if (v60 >= 0)
        {
          v4 = *(v51 + 23);
        }

        else
        {
          v4 = *(v51 + 8);
        }

        if (v53 >= v4)
        {
          v62 = v4;
        }

        else
        {
          v62 = v53;
        }

        v63 = memcmp(v61, v52, v62);
        if (v63)
        {
          if (v63 < 0)
          {
            continue;
          }

          goto LABEL_138;
        }

        if (v4 >= v53)
        {
          goto LABEL_138;
        }
      }

      while (v9 < v51);
    }

    v64 = (v9 - 32);
    v8 = a2 - 32;
    v4 = &v360;
    v65 = *v355;
    if (v9 - 32 != a1)
    {
      v66 = *(v9 - 9);
      if (*(a1 + 23) < 0)
      {
        if (v66 >= 0)
        {
          v68 = (v9 - 32);
        }

        else
        {
          v68 = *(v9 - 32);
        }

        if (v66 >= 0)
        {
          v69 = *(v9 - 9);
        }

        else
        {
          v69 = *(v9 - 24);
        }

        std::string::__assign_no_alias<false>(a1, v68, v69);
      }

      else
      {
        if ((*(v9 - 9) & 0x80) == 0)
        {
          v67 = *&v64->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(v9 - 16);
          *a1 = v67;
LABEL_167:
          v70 = *(v9 - 8);
          *(a1 + 28) = *(v9 - 4);
          *(a1 + 24) = v70;
          goto LABEL_168;
        }

        std::string::__assign_no_alias<true>(a1, *(v9 - 32), *(v9 - 24));
      }

      v65 = *v355;
      goto LABEL_167;
    }

LABEL_168:
    a3 = v351;
    if (v64 == &v360)
    {
      goto LABEL_172;
    }

    if (*(v9 - 9) < 0)
    {
      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v360;
      }

      else
      {
        v73 = v360.__r_.__value_.__r.__words[0];
      }

      if ((v360.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v360.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v360.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>((v9 - 32), v73, v74);
LABEL_183:
      v65 = *v355;
      v75 = v361;
      *(v9 - 4) = v362;
      *(v9 - 8) = v75;
      if (SHIBYTE(v360.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_184;
      }

LABEL_173:
      if (v65 >= j)
      {
        goto LABEL_185;
      }

LABEL_187:
      std::__introsort<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*,false>(a1, v9 - 32, v351, a4 & 1);
      a4 = 0;
    }

    else
    {
      if ((*(&v360.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((v9 - 32), v360.__r_.__value_.__l.__data_, v360.__r_.__value_.__l.__size_);
        goto LABEL_183;
      }

      v71 = *&v360.__r_.__value_.__l.__data_;
      *(v9 - 16) = *(&v360.__r_.__value_.__l + 2);
      *&v64->__r_.__value_.__l.__data_ = v71;
LABEL_172:
      v72 = v361;
      *(v9 - 4) = v362;
      *(v9 - 8) = v72;
      if ((SHIBYTE(v360.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_173;
      }

LABEL_184:
      operator delete(v360.__r_.__value_.__l.__data_);
      if (*v355 < j)
      {
        goto LABEL_187;
      }

LABEL_185:
      v76 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*>(a1, v9 - 32);
      if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::FilterRtpExtensions(std::vector<webrtc::RtpExtension> const&,BOOL (*)(std::string_view),BOOL,webrtc::FieldTrialsView const&)::$_1 &,webrtc::RtpExtension*>(v9, a2))
      {
        a2 = v9 - 32;
        if (v76)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v76)
      {
        goto LABEL_187;
      }
    }
  }

  j = v8;
  if (a2 != a1)
  {
    do
    {
      v37 = *(j + 28);
      if (v37 == v23)
      {
        v38 = *(j + 23);
        if (v38 >= 0)
        {
          v39 = j;
        }

        else
        {
          v39 = *j;
        }

        if (v38 >= 0)
        {
          v40 = *(j + 23);
        }

        else
        {
          v40 = *(j + 8);
        }

        if (v25 >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v25;
        }

        v42 = memcmp(v39, v24, v41);
        if (v42)
        {
          if (v42 < 0)
          {
            goto LABEL_82;
          }
        }

        else if (v40 < v25)
        {
          goto LABEL_82;
        }
      }

      else if (v37 > v23)
      {
        goto LABEL_82;
      }

      v36 = j == a1;
      j -= 32;
    }

    while (!v36);
  }

LABEL_834:
  __break(1u);
LABEL_835:
  if (j < v4)
  {
LABEL_836:
    std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, v8);
  }
}