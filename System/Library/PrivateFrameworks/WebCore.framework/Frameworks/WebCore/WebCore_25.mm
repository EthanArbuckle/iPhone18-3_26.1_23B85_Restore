uint64_t webrtc::IfAddrsConverter::ConvertIfAddrsToIPAddress(webrtc::IfAddrsConverter *this, const ifaddrs *a2, webrtc::InterfaceAddress *a3, webrtc::IPAddress *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  ifa_addr = a2->ifa_addr;
  sa_family = ifa_addr->sa_family;
  if (sa_family == 30)
  {
    v14 = 0;
    result = (*(*this + 24))(this);
    if (result)
    {
      v12 = *&a2->ifa_addr->sa_data[6];
      *(a3 + 7) = v14;
      *(a3 + 2) = 30;
      *(a3 + 12) = v12;
      v13 = *&a2->ifa_netmask->sa_data[6];
      *(a4 + 2) = 30;
      *(a4 + 12) = v13;
    }
  }

  else if (sa_family == 2)
  {
    v16 = 0;
    v15 = 0;
    v6 = *&ifa_addr->sa_data[2];
    *(a3 + 2) = 2;
    *(a3 + 3) = v6;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v7 = *&a2->ifa_netmask->sa_data[2];
    *(a4 + 2) = 2;
    *(a4 + 3) = v7;
    *(a4 + 2) = 0;
    *(a4 + 6) = 0;
    return 1;
  }

  else
  {
    return 0;
  }

  return result;
}

unsigned __int8 *dcsctp::IForwardTsnChunk::Parse@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 8 || *v3 != 194 || ((v4 = v3[3], v5 = v4 | (v3[2] << 8), (v4 & 7) == 0) ? (v6 = v5 >= 8) : (v6 = 0), v6 ? (v7 = a2 >= v5) : (v7 = 0), v7 ? (v8 = a2 - v5 >= 4) : (v8 = 1), v8))
  {
    v9 = 0;
    *a3 = 0;
  }

  else
  {
    if (v5 - 8 >= 8)
    {
      if (v5 - 8 < 0xAAAAAAAAAAAAAAB0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    result = 0;
    *(a3 + 8) = bswap32(*(v3 + 1));
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *a3 = &unk_288294AB0;
    v9 = 1;
  }

  *(a3 + 40) = v9;
  return result;
}

void dcsctp::IForwardTsnChunk::~IForwardTsnChunk(dcsctp::IForwardTsnChunk *this)
{
  *this = &unk_288291358;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288291358;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::IForwardTsnChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = 0x5555555555555558 * ((v11 - v10) >> 2);
  v14 = *a2;
  v15 = a2[1] - *a2;
  v16 = v13 + 8;
  if (v15 >= v13 + 8 + v15)
  {
    if (v15 > v16 + v15)
    {
      a2[1] = v14 + v16 + v15;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 0x5555555555555558 * ((v11 - v10) >> 2) + 8);
    v14 = *a2;
  }

  v17 = (v14 + v15);
  *v17 = -62;
  v17[2] = BYTE1(v16);
  v17[3] = v16;
  if (v11 - v10 == -12)
  {
LABEL_19:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v25);
LABEL_20:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v25);
    dcsctp::IForwardTsnChunk::ToString(v24);
    return;
  }

  v18 = *a2 + v15;
  *(v18 + 4) = bswap32(*(a1 + 8));
  if (v11 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2);
    }

    v20 = (v12 + 8);
    for (i = 8; i + 8 <= v16; i += 8)
    {
      if (!v13 || v16 <= i)
      {
        goto LABEL_19;
      }

      v22 = v18 + i;
      *v22 = bswap32(*(v20 - 4)) >> 16;
      *(v22 + 3) = *(v20 - 4);
      v23 = *v20;
      v20 += 3;
      *(v22 + 4) = bswap32(v23);
      v13 -= 8;
      if (!--v19)
      {
        return;
      }
    }

    goto LABEL_20;
  }
}

unsigned __int16 *dcsctp::IncomingSSNResetRequestParameter::Parse@<X0>(unsigned __int16 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 8 || __rev16(*v3) != 14 || (v4 = *(v3 + 3), (v4 & 1) != 0) || ((v5 = v4 | (*(v3 + 2) << 8), v5 >= 8) ? (v6 = a2 >= v5) : (v6 = 0), v6 ? (v7 = a2 - v5 >= 4) : (v7 = 1), v7))
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v9 = *(v3 + 1);
    if (v5 - 8 >= 2)
    {
      operator new();
    }

    *a3 = &unk_288294AE0;
    *(a3 + 8) = bswap32(v9);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v8 = 1;
  }

  *(a3 + 40) = v8;
  return result;
}

void dcsctp::IncomingSSNResetRequestParameter::~IncomingSSNResetRequestParameter(dcsctp::IncomingSSNResetRequestParameter *this)
{
  *this = &unk_288294AE0;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288294AE0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::IncomingSSNResetRequestParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24) - *(a1 + 16);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 8;
  v14 = v12 + v10 + 8;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 8);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 3584;
  *(v15 + 2) = BYTE1(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_13:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
LABEL_14:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
    dcsctp::IncomingSSNResetRequestParameter::ToString(v20);
    return;
  }

  v16 = *a2 + v12;
  *(v16 + 4) = bswap32(*(a1 + 8));
  v17 = *(a1 + 16);
  if (*(a1 + 24) != v17)
  {
    v18 = 0;
    for (i = 8; i + 2 <= v13; i += 2)
    {
      if (v13 <= i || v10 <= 1)
      {
        goto LABEL_13;
      }

      *(v16 + i) = bswap32(*(v17 + 2 * v18++)) >> 16;
      v17 = *(a1 + 16);
      v10 -= 2;
      if (v18 >= (*(a1 + 24) - v17) >> 1)
      {
        return;
      }
    }

    goto LABEL_14;
  }
}

void webrtc::IncomingVideoStream::~IncomingVideoStream(webrtc::IncomingVideoStream *this)
{
  *this = &unk_288294B10;
  (***(this + 11))(*(this + 11));
  *(this + 11) = 0;
  webrtc::VideoRenderFrames::~VideoRenderFrames((this + 32));
}

{
  *this = &unk_288294B10;
  (***(this + 11))(*(this + 11));
  *(this + 11) = 0;
  webrtc::VideoRenderFrames::~VideoRenderFrames((this + 32));

  JUMPOUT(0x2743DA540);
}

void webrtc::IncomingVideoStream::OnFrame(webrtc::IncomingVideoStream *this, const webrtc::VideoFrame *a2)
{
  v4 = pthread_self();
  v5 = *(this + 4);
  *(this + 4) = v5 + 1;
  if (!v5)
  {
    *(this + 3) = v4;
  }

  if (!pthread_equal(*(this + 3), v4))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/render/incoming_video_stream.cc", 52, "!race_checker52.RaceDetected()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v12);
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    (**v10)(*(a2 + 1));
  }

  if (*(a2 + 144) == 1)
  {
    v11 = *(a2 + 23);
    if (!v11)
    {
LABEL_11:
      operator new();
    }
  }

  else
  {
    v11 = *(a2 + 23);
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
  goto LABEL_11;
}

void webrtc::IncomingVideoStream::Dequeue(webrtc::IncomingVideoStream *this)
{
  webrtc::VideoRenderFrames::FrameToRender((this + 32), v13);
  if (v16 == 1)
  {
    (*(**(this + 10) + 16))(*(this + 10), v13);
  }

  if (*(this + 6))
  {
    v2 = *(*(this + 5) + 48) / 1000;
    v3 = *(this + 14);
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

    v5 = (v2 - v3 + v4 / -1000000) & ~((v2 - v3 + v4 / -1000000) >> 63);
    v6 = *(this + 11);
    v20 = 1;
    v17.n128_u64[0] = this;
    v18 = absl::internal_any_invocable::LocalManagerTrivial;
    v19 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::IncomingVideoStream::Dequeue(void)::$_0 &&>;
    (*(*v6 + 16))(v6, &v17, 1000 * v5, &v20, &v12);
    v18(1, &v17, &v17);
  }

  if (v16 == 1)
  {
    v7 = v15;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      v8 = *(v7 + 1);
      if (v8)
      {
        v9 = *(v7 + 2);
        v10 = *(v7 + 1);
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 96);
            if (v11)
            {
              *(v9 - 88) = v11;
              operator delete(v11);
            }

            v9 -= 104;
          }

          while (v9 != v8);
          v10 = *(v7 + 1);
        }

        *(v7 + 2) = v8;
        operator delete(v10);
      }

      MEMORY[0x2743DA540](v7, 0x1020C40E72D6CFBLL);
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::IncomingVideoStream::OnFrame(webrtc::VideoFrame const&)::$_0 &&>(webrtc::IncomingVideoStream ***a1)
{
  v1 = **a1;
  if (webrtc::VideoRenderFrames::AddFrame(v1 + 4, (*a1 + 1)) == 1)
  {

    webrtc::IncomingVideoStream::Dequeue(v1);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::IncomingVideoStream::OnFrame(webrtc::VideoFrame const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 192);
      if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = *(v4 + 16);
          v7 = *(v4 + 8);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 96);
              if (v8)
              {
                *(v6 - 88) = v8;
                operator delete(v8);
              }

              v6 -= 104;
            }

            while (v6 != v5);
            v7 = *(v4 + 8);
          }

          *(v4 + 16) = v5;
          operator delete(v7);
        }

        MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      }

      v9 = *(v3 + 16);
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

uint64_t dcsctp::InitAckChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 0x14 && *result == 2)
  {
    v3 = __rev16(*(result + 2));
    v4 = v3 >= 0x14 && a2 >= v3;
    if (v4 && a2 - v3 < 4)
    {
      v7 = *(result + 4);
      v8 = *(result + 5);
      v9 = *(result + 6);
      v10 = *(result + 7);
      v11 = *(result + 8);
      v12 = *(result + 9);
      v13 = *(result + 10);
      v14 = *(result + 11);
      v15 = *(result + 12);
      v16 = *(result + 13);
      v17 = *(result + 14);
      v18 = *(result + 15);
      v19 = *(result + 16);
      v20 = *(result + 17);
      v21 = result + 20;
      v22 = *(result + 18);
      result = *(result + 19);
      if (v3 >= 0x15)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      if (v3 < 0x15)
      {
        *a3 = &unk_288294B48;
        *(a3 + 8) = (v7 << 24) | (v8 << 16) | (v9 << 8) | v10;
        *(a3 + 12) = (v11 << 24) | (v12 << 16) | (v13 << 8) | v14;
        *(a3 + 16) = v16 | (v15 << 8);
        *(a3 + 18) = v18 | (v17 << 8);
        *(a3 + 20) = (v19 << 24) | (v20 << 16) | (v22 << 8) | result;
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        v6 = 1;
        goto LABEL_12;
      }

      v24 = v3 - 20;
      v25 = v3 - 20;
      v26 = v23;
      while (v25 >= 4)
      {
        v27 = __rev16(*(v26 + 2));
        if (v27 < 4 || v25 < v27)
        {
          break;
        }

        v29 = (v27 + 3) & 0xFFFC;
        v30 = v25 - v29;
        if (v25 >= v29)
        {
          if (v30 >= v25)
          {
            v30 = v25;
          }

          v26 += v29;
          v31 = v25 > v29;
          if (v25 <= v29)
          {
            v26 = 0;
          }

          v25 = v30;
          if (v31)
          {
            continue;
          }
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  v6 = 0;
  *a3 = 0;
LABEL_12:
  *(a3 + 48) = v6;
  return result;
}

void dcsctp::InitAckChunk::~InitAckChunk(dcsctp::InitAckChunk *this)
{
  *this = &unk_288294B48;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288294B48;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::InitAckChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v11 - v10;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  v14 = *a2;
  v15 = a2[1] - *a2;
  v16 = v12 + 20;
  v17 = v15 + v12 + 20;
  if (v15 >= v17)
  {
    if (v15 > v17)
    {
      a2[1] = v14 + v17;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v12 + 20);
    v14 = *a2;
  }

  v18 = (v14 + v15);
  *v18 = 2;
  v18[2] = HIBYTE(v16);
  v18[3] = v16;
  if (v12 >= 0xFFFFFFFFFFFFFFECLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
    dcsctp::InitAckChunk::ToString(v20);
  }

  else
  {
    v19 = *a2 + v15;
    *(v19 + 4) = bswap32(*(a1 + 8));
    *(v19 + 8) = bswap32(*(a1 + 12));
    *(v19 + 12) = bswap32(*(a1 + 16)) >> 16;
    *(v19 + 14) = bswap32(*(a1 + 18)) >> 16;
    *(v19 + 16) = bswap32(*(a1 + 20));
    if (v10 && v11 != v10)
    {

      memcpy((v19 + 20), v13, v11 - v10);
    }
  }
}

uint64_t dcsctp::InitChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 0x14 && *result == 1)
  {
    v3 = __rev16(*(result + 2));
    v4 = v3 >= 0x14 && a2 >= v3;
    if (v4 && a2 - v3 < 4)
    {
      v7 = *(result + 4);
      v8 = *(result + 5);
      v9 = *(result + 6);
      v10 = *(result + 7);
      v11 = *(result + 8);
      v12 = *(result + 9);
      v13 = *(result + 10);
      v14 = *(result + 11);
      v15 = *(result + 12);
      v16 = *(result + 13);
      v17 = *(result + 14);
      v18 = *(result + 15);
      v19 = *(result + 16);
      v20 = *(result + 17);
      v21 = result + 20;
      v22 = *(result + 18);
      result = *(result + 19);
      if (v3 >= 0x15)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      if (v3 < 0x15)
      {
        *a3 = &unk_288294B78;
        *(a3 + 8) = (v7 << 24) | (v8 << 16) | (v9 << 8) | v10;
        *(a3 + 12) = (v11 << 24) | (v12 << 16) | (v13 << 8) | v14;
        *(a3 + 16) = v16 | (v15 << 8);
        *(a3 + 18) = v18 | (v17 << 8);
        *(a3 + 20) = (v19 << 24) | (v20 << 16) | (v22 << 8) | result;
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        v6 = 1;
        goto LABEL_12;
      }

      v24 = v3 - 20;
      v25 = v3 - 20;
      v26 = v23;
      while (v25 >= 4)
      {
        v27 = __rev16(*(v26 + 2));
        if (v27 < 4 || v25 < v27)
        {
          break;
        }

        v29 = (v27 + 3) & 0xFFFC;
        v30 = v25 - v29;
        if (v25 >= v29)
        {
          if (v30 >= v25)
          {
            v30 = v25;
          }

          v26 += v29;
          v31 = v25 > v29;
          if (v25 <= v29)
          {
            v26 = 0;
          }

          v25 = v30;
          if (v31)
          {
            continue;
          }
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  v6 = 0;
  *a3 = 0;
LABEL_12:
  *(a3 + 48) = v6;
  return result;
}

void dcsctp::InitChunk::~InitChunk(dcsctp::InitChunk *this)
{
  *this = &unk_288294B78;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288294B78;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::InitChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v11 - v10;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  v14 = *a2;
  v15 = a2[1] - *a2;
  v16 = v12 + 20;
  v17 = v15 + v12 + 20;
  if (v15 >= v17)
  {
    if (v15 > v17)
    {
      a2[1] = v14 + v17;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v12 + 20);
    v14 = *a2;
  }

  v18 = (v14 + v15);
  *v18 = 1;
  v18[2] = HIBYTE(v16);
  v18[3] = v16;
  if (v12 >= 0xFFFFFFFFFFFFFFECLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
    dcsctp::InitChunk::ToString(v20);
  }

  else
  {
    v19 = *a2 + v15;
    *(v19 + 4) = bswap32(*(a1 + 8));
    *(v19 + 8) = bswap32(*(a1 + 12));
    *(v19 + 12) = bswap32(*(a1 + 16)) >> 16;
    *(v19 + 14) = bswap32(*(a1 + 18)) >> 16;
    *(v19 + 16) = bswap32(*(a1 + 20));
    if (v10 && v11 != v10)
    {

      memcpy((v19 + 20), v13, v11 - v10);
    }
  }
}

void webrtc::InputVolumeController::InputVolumeController(uint64_t a1, int a2, int *a3)
{
  v6 = *a3;
  *a1 = a2;
  *(a1 + 4) = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = a3[2];
  *(a1 + 28) = a3[3];
  *(a1 + 32) = a3[4];
  v7 = *(a3 + 20);
  v16 = xmmword_273B941F0;
  v17 = 0x40400000BF800000;
  v18 = 1;
  v15[0] = v7;
  webrtc::CreateClippingPredictor(v15, (a1 + 40));
  *(a1 + 48) = *(a1 + 40) != 0;
  *(a1 + 52) = a3[4];
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a3 + 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }
  }

  else
  {
    *(a1 + 96) = 0;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
    }

    if (*(a1 + 72) != *(a1 + 80))
    {
      operator new();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::InputVolumeController::AnalyzeInputAudio(uint64_t this, int a2, const webrtc::AudioBuffer *a3)
{
  *(this + 12) = a2;
  *(this + 16) = 1;
  v3 = *(this + 72);
  v4 = *(this + 80);
  if (v3 == v4)
  {
LABEL_118:
    __break(1u);
    return this;
  }

  v5 = this;
  v6 = *(this + 72);
  if (v4 - 1 == v3)
  {
    goto LABEL_121;
  }

  v7 = (((v4 - 1) - v3) >> 3) + 1;
  v6 = &v3[v7 & 0x3FFFFFFFFFFFFFFELL];
  v8 = v3 + 1;
  v9 = v7 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    v10 = *v8;
    *(*(v8 - 1) + 20) = a2;
    *(v10 + 20) = a2;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  if (v7 != (v7 & 0x3FFFFFFFFFFFFFFELL))
  {
LABEL_121:
    do
    {
      v11 = *v6++;
      *(v11 + 20) = a2;
    }

    while (v6 != v4);
  }

  v12 = v4 - v3;
  v13 = *(*v3 + 20);
  v14 = *(this + 12);
  if (v12 < 2)
  {
    v19 = (this + 8);
    v15 = *(*(a3 + 10) + 8);
    v16 = *(a3 + 3);
    *(this + 96) = 0;
    if (v14 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v15 = *(*(a3 + 10) + 8);
  v16 = *(a3 + 3);
  *(this + 96) = 0;
  for (i = 1; i != v12; ++i)
  {
    v18 = *(v3[i] + 20);
    if (v18 < v13)
    {
      *(this + 96) = i;
      v13 = v18;
    }
  }

  v19 = (this + 8);
  if (v14 >= 1)
  {
LABEL_13:
    if (v13 <= *(this + 4))
    {
      v13 = *(this + 4);
    }
  }

LABEL_15:
  *(this + 8) = v13;
  if (*(this + 20) == 1)
  {
    this = *(this + 40);
    if (this)
    {
      if (*v5)
      {
        v20 = v16 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      v81[0] = *v5;
      v81[1] = v16;
      v81[2] = v21;
      v82 = 0;
      this = (*(*this + 24))(this, v81);
    }

    v22 = 0.0;
    if (v16 && *v5)
    {
      v23 = 0;
      v24 = 0;
      v25 = vdupq_n_s32(0x46FFFE00u);
      v26.i64[0] = 0xC7000000C7000000;
      v26.i64[1] = 0xC7000000C7000000;
      while (1)
      {
        v27 = *(v15 + 8 * v23);
        if (v16 < 8)
        {
          break;
        }

        v30 = v27 + 1;
        v31 = 0uLL;
        v32 = v16 & 0xFFFFFFFFFFFFFFF8;
        v33 = 0uLL;
        do
        {
          v31 = vsubq_s32(v31, vorrq_s8(vcgeq_f32(v30[-1], v25), vcgeq_f32(v26, v30[-1])));
          v33 = vsubq_s32(v33, vorrq_s8(vcgeq_f32(*v30, v25), vcgeq_f32(v26, *v30)));
          v30 += 2;
          v32 -= 8;
        }

        while (v32);
        v29 = vaddvq_s32(vaddq_s32(v33, v31));
        v28 = v16 & 0xFFFFFFFFFFFFFFF8;
        if (v16 != (v16 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_35;
        }

LABEL_27:
        if (v24 <= v29)
        {
          v24 = v29;
        }

        if (++v23 == *v5)
        {
          v22 = v24;
          goto LABEL_43;
        }
      }

      v28 = 0;
      v29 = 0;
LABEL_35:
      v34 = v16 - v28;
      v35 = &v27->f32[v28];
      do
      {
        v36 = *v35++;
        v37 = v36 >= 32767.0;
        if (v36 <= -32768.0)
        {
          v37 = 1;
        }

        v29 += v37;
        --v34;
      }

      while (v34);
      goto LABEL_27;
    }

LABEL_43:
    v38 = v22 / v16;
    v39 = v5[15];
    if (v38 >= v39)
    {
      v39 = v38;
    }

    v5[15] = v39;
    v40 = *(v5 + 14) + 1;
    *(v5 + 14) = v40;
    if (v40 == 3000)
    {
      v41 = llroundf(v39 * 100.0);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
      }

      if (this)
      {
        this = webrtc::metrics::HistogramAdd(this, v41);
      }

      else
      {
        v49 = 0;
      }

      *(v5 + 7) = 0;
    }

    v50 = *(v5 + 13);
    if (v50 < *(v5 + 8))
    {
      *(v5 + 13) = v50 + 1;
      return this;
    }

    v51 = v5[7];
    if (*(v5 + 5) && *v5 >= 1)
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      while (1)
      {
        v55 = *(v5 + 9);
        if (v52 >= (*(v5 + 10) - v55) >> 3)
        {
          goto LABEL_118;
        }

        this = (*(**(v5 + 5) + 32))(*(v5 + 5), v52, *(v5 + 2), *(v5 + 6), *(*(v55 + 8 * v52) + 4), 255);
        if (v54 <= this)
        {
          v56 = this;
        }

        else
        {
          v56 = v54;
        }

        if ((this & 0x100000000) != 0)
        {
          v54 = v56;
        }

        v53 |= (this & 0x100000000uLL) >> 32;
        if (++v52 >= *v5)
        {
          v57 = *(v5 + 6);
          if (v53)
          {
            if (v54 <= v57)
            {
              v58 = *(v5 + 6);
            }

            else
            {
              v58 = v54;
            }

            if (*(v5 + 48))
            {
              v59 = v58;
            }

            else
            {
              v59 = *(v5 + 6);
            }

            if (v38 <= v51)
            {
              v57 = v58;
            }

            else
            {
              v57 = v59;
            }

            if (v38 <= v51 && (v5[12] & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else if (v38 <= v51)
          {
            goto LABEL_106;
          }

          goto LABEL_80;
        }
      }
    }

    if (v38 > v51)
    {
      v57 = *(v5 + 6);
LABEL_80:
      v60 = *(v5 + 9);
      for (j = *(v5 + 10); v60 != j; ++v60)
      {
        v62 = *v60;
        v63 = *(*v60 + 4);
        v64 = *(*v60 + 8) - v57;
        if (v63 > v64)
        {
          v64 = *(*v60 + 4);
        }

        *(v62 + 8) = v64;
        v65 = *(v62 + 12);
        if (v65 > v63)
        {
          if (v63 <= v65 - v57)
          {
            v63 = v65 - v57;
          }

          v66 = *(v62 + 20);
          if (v66)
          {
            if (v66 < 0x100)
            {
              if (v66 > v65 + 25 || v66 < v65 - 25)
              {
                *(v62 + 12) = v66;
                if (v66 > v64)
                {
                  *(v62 + 8) = v66;
                }
              }

              else
              {
                if (v64 >= v63)
                {
                  v64 = v63;
                }

                if (v64 != v65)
                {
                  *(v62 + 20) = v64;
                  *(v62 + 12) = v64;
                }
              }
            }

            else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
            }
          }

          *(v62 + 40) = 0;
          *(v62 + 32) = 0;
        }
      }

      v5[13] = 0.0;
      this = *(v5 + 5);
      if (this)
      {
        this = (*(*this + 16))(this);
      }
    }

LABEL_106:
    v75 = *(v5 + 9);
    v76 = *(v5 + 10) - v75;
    if (!v76)
    {
      goto LABEL_118;
    }

    v77 = v76 >> 3;
    v78 = *(*v75 + 20);
    v5[24] = 0.0;
    if (v77 >= 2)
    {
      for (k = 1; k != v77; ++k)
      {
        v80 = *(*(v75 + 8 * k) + 20);
        if (v80 < v78)
        {
          *(v5 + 24) = k;
          v78 = v80;
        }
      }
    }

    if ((v5[4] & 1) != 0 && *(v5 + 3) >= 1 && v78 <= *(v5 + 1))
    {
      v78 = *(v5 + 1);
    }

    *v19 = v78;
  }

  return this;
}

void webrtc::InputVolumeController::RecommendInputVolume(uint64_t a1, uint64_t a2, float a3)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
    }

    return;
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 72);
  if (v5 == v6)
  {
LABEL_91:
    __break(1u);
    return;
  }

  v8 = v5 - v6;
  v9 = (*v6)[5];
  *(a1 + 96) = 0;
  if (v8 >= 2)
  {
    for (i = 1; i != v8; ++i)
    {
      v11 = v6[i][5];
      if (v11 < v9)
      {
        *(a1 + 96) = i;
        v9 = v11;
      }
    }
  }

  if (*(a1 + 12) >= 1 && v9 <= *(a1 + 4))
  {
    v9 = *(a1 + 4);
  }

  *(a1 + 8) = v9;
  if ((*(a1 + 20) & 1) == 0)
  {
    return;
  }

  if ((a2 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

  v20 = 30.0;
  if (*&a2 < 30.0)
  {
    v20 = *&a2;
  }

  v21 = *&a2 > -90.0 ? v20 : -90.0;
  v22 = *(a1 + 64);
  if (v21 > v22 || (v22 = *(a1 + 68), v21 < v22))
  {
    v19 = llroundf(v22 - v21);
  }

  else
  {
LABEL_16:
    v19 = 0;
  }

  if (v19 >= 15)
  {
    v23 = 15;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= -15)
  {
    v24 = -15;
  }

  else
  {
    v24 = v23;
  }

  do
  {
    v25 = *v6;
    if (*(*v6 + 17) != 1)
    {
      goto LABEL_43;
    }

    *(v25 + 17) = 0;
    v26 = v25[5];
    if (v26)
    {
      if (v26 >= 0x100)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
        }

        goto LABEL_43;
      }
    }

    else if ((*(v25 + 18) & 1) == 0)
    {
      goto LABEL_43;
    }

    v34 = *v25;
    if (v26 < *v25)
    {
      v25[5] = v34;
      v26 = v34;
    }

    v25[3] = v26;
    *(v25 + 18) = 0;
    *(v25 + 4) = 0;
    *(v25 + 40) = 1;
LABEL_43:
    if (*(v25 + 11) <= a3)
    {
      ++v25[9];
    }

    v35 = v25[7];
    v36 = v25[8] + 1;
    v25[8] = v36;
    if (v36 >= v35)
    {
      v37 = v25[9];
      *(v25 + 4) = 0;
      if ((v25[10] & 1) == 0 && (a2 & 0x100000000) != 0 && (v37 / v35) >= *(v25 + 12) && v19 != 0)
      {
        v39 = v25[3];
        v40 = webrtc::kGainMap[v39];
        v41 = v39;
        if (v19 < 1)
        {
          v46 = v25[3];
          do
          {
            v47 = v46 - 1;
            if (v46 <= *v25)
            {
              break;
            }

            v48 = webrtc::kGainMap[v46--] - v40;
          }

          while (v48 > v24);
          v44 = v47 + 1;
          v45 = v25[5];
          if (!v45)
          {
            goto LABEL_33;
          }
        }

        else
        {
          do
          {
            v42 = v41 + 1;
            if (v41 > 254)
            {
              break;
            }

            v43 = webrtc::kGainMap[v41++] - v40;
          }

          while (v43 < v24);
          v44 = v42 - 1;
          v45 = v25[5];
          if (!v45)
          {
            goto LABEL_33;
          }
        }

        if (v45 < 0x100)
        {
          if (v45 > v39 + 25 || v45 < v39 - 25)
          {
            v25[3] = v45;
            if (v45 > v25[2])
            {
              v25[2] = v45;
            }

            *(v25 + 4) = 0;
          }

          else
          {
            if (v25[2] < v44)
            {
              v44 = v25[2];
            }

            if (v44 != v39)
            {
              v25[5] = v44;
              v25[3] = v44;
            }
          }
        }

        else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_controller.cc");
        }
      }
    }

LABEL_33:
    *(v25 + 40) = 0;
    ++v6;
  }

  while (v6 != v5);
  v56 = *(a1 + 72);
  v57 = *(a1 + 80) - v56;
  if (!v57)
  {
    goto LABEL_91;
  }

  v58 = v57 >> 3;
  v59 = *(*v56 + 20);
  *(a1 + 96) = 0;
  if (v58 >= 2)
  {
    for (j = 1; j != v58; ++j)
    {
      v61 = *(*(v56 + 8 * j) + 20);
      if (v61 < v59)
      {
        *(a1 + 96) = j;
        v59 = v61;
      }
    }
  }

  if (*(a1 + 16))
  {
    if (*(a1 + 12) >= 1 && v59 <= *(a1 + 4))
    {
      v59 = *(a1 + 4);
    }

    *(a1 + 8) = v59;
    if (v9 == v59)
    {
LABEL_87:
      *(a1 + 16) = 0;
      return;
    }
  }

  else
  {
    *(a1 + 8) = v59;
    if (v9 == v59)
    {
      return;
    }
  }

  explicit = atomic_load_explicit(&webrtc::UpdateHistogramOnRecommendedInputVolumeChangeToMatchTarget(int)::atomic_histogram_pointer, memory_order_acquire);
  if (explicit)
  {
    webrtc::metrics::HistogramAdd(explicit, v59);
    if (*(a1 + 16))
    {
      goto LABEL_87;
    }
  }

  else
  {
    v63 = 0;
    atomic_compare_exchange_strong(&webrtc::UpdateHistogramOnRecommendedInputVolumeChangeToMatchTarget(int)::atomic_histogram_pointer, &v63, 0);
    if (*(a1 + 16))
    {
      goto LABEL_87;
    }
  }
}

uint64_t webrtc::InputVolumeStatsReporter::InputVolumeStatsReporter(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\v\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc2/input_volume_stats_reporter.cc");
  }

  return a1;
}

uint64_t webrtc::InputVolumeStatsReporter::LogVolumeUpdateStats(webrtc::InputVolumeStatsReporter *this)
{
  webrtc::metrics::HistogramAdd(*(this + 3), *this);
  if (*this >= 1)
  {
    webrtc::metrics::HistogramAdd(*(this + 4), llroundf(*(this + 2) / *this));
  }

  webrtc::metrics::HistogramAdd(*(this + 5), *(this + 1));
  v2 = *(this + 1);
  if (v2 >= 1)
  {
    webrtc::metrics::HistogramAdd(*(this + 6), llroundf(*(this + 3) / v2));
    v2 = *(this + 1);
  }

  v3 = *this + v2;
  result = webrtc::metrics::HistogramAdd(*(this + 7), v3);
  if (v3 >= 1)
  {
    v5 = llroundf((*(this + 3) + *(this + 2)) / v3);
    v6 = *(this + 8);

    return webrtc::metrics::HistogramAdd(v6, v5);
  }

  return result;
}

BOOL webrtc::InterArrival::ComputeDeltas(webrtc::InterArrival *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t *a7, int *a8)
{
  v9 = *(this + 4);
  if (v9 == -1)
  {
    result = 0;
    *(this + 4) = a2;
    *(this + 5) = a2;
    *(this + 3) = a3;
LABEL_26:
    *(this + 1) += a5;
    *(this + 4) = a3;
    *(this + 5) = a4;
    return result;
  }

  v10 = a2 - *(this + 4);
  if (v10 >= 0)
  {
    v11 = *(this + 5);
    v12 = (*(this + 11) * (a2 - v11) + 0.5);
    if (!v12 || a3 - v9 <= 5 && a3 - v9 - v12 < 0 && a3 - *(this + 3) < 100 || v10 <= *this)
    {
      result = 0;
      v24 = v11 - a2;
      v26 = v11 != a2 && v24 >= 0;
      if (v24 == 0x80000000)
      {
        v27 = v11 > a2;
      }

      else
      {
        v27 = v26;
      }

      if (!v27)
      {
        v11 = a2;
      }

      *(this + 5) = v11;
      goto LABEL_26;
    }

    v13 = *(this + 9);
    if (v13 < 0)
    {
      goto LABEL_29;
    }

    *a6 = v11 - *(this + 15);
    *a7 = v9 - v13;
    if (v9 - v13 - (*(this + 5) - *(this + 10)) >= 3000)
    {
      v14 = this;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/inter_arrival.cc");
      }

LABEL_12:
      result = 0;
      *(v14 + 5) = v38;
      *&v37 = -1;
      *(&v37 + 1) = -1;
      v23 = v37;
      *(&v37 + 1) = -1;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0uLL;
      *(v14 + 24) = v23;
      *(v14 + 10) = v38;
      *(v14 + 3) = 0uLL;
      *(v14 + 4) = v37;
      return result;
    }

    if (((v9 - v13) & 0x8000000000000000) == 0)
    {
      *(this + 24) = 0;
      *a8 = *(this + 2) - *(this + 12);
LABEL_29:
      result = v13 >= 0;
      v28 = *(this + 24);
      *(this + 3) = *(this + 8);
      *(this + 4) = v28;
      *(this + 10) = *(this + 5);
      *(this + 4) = a2;
      *(this + 5) = a2;
      *(this + 3) = a3;
      *(this + 1) = 0;
      goto LABEL_26;
    }

    v29 = *(this + 24);
    *(this + 24) = v29 + 1;
    if (v29 >= 2)
    {
      v14 = this;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/inter_arrival.cc");
      }

      goto LABEL_12;
    }
  }

  return 0;
}

BOOL webrtc::InterArrivalDelta::ComputeDeltas(webrtc::InterArrivalDelta *this, Timestamp a2, Timestamp a3, Timestamp a4, uint64_t a5, TimeDelta *a6, TimeDelta *a7, int *a8)
{
  v8 = *(this + 5);
  if ((v8 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
    v9 = 0;
    *(this + 2) = a2;
    *(this + 3) = a2;
    *(this + 4) = a3;
LABEL_81:
    *(this + 1) += a5;
    *(this + 5) = a3;
    *(this + 6) = a4;
    return v9;
  }

  v10 = *(this + 2);
  v11 = a2.var0 - v10;
  if (a2.var0 < v10)
  {
    return 0;
  }

  v13 = a3.var0 - v8;
  if (a3.var0 == 0x8000000000000000)
  {
    v13 = 0x8000000000000000;
  }

  if (a3.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  var0 = *(this + 3);
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL && var0 != 0x8000000000000000)
  {
    if (a2.var0 == 0x8000000000000000 || var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    v16 = a2.var0 - var0;
    if (a2.var0 == var0)
    {
      goto LABEL_73;
    }
  }

  if (v14 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0x8000000000000000 && v14 <= 5000 && v14 < v16 && a3.var0 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = *(this + 4);
    if (v44 != 0x8000000000000000 && (a3.var0 == 0x8000000000000000 || v44 == 0x7FFFFFFFFFFFFFFFLL || a3.var0 - v44 < 100000))
    {
LABEL_73:
      v9 = 0;
      if (var0 <= a2.var0)
      {
        var0 = a2.var0;
      }

      *(this + 3) = var0;
      goto LABEL_81;
    }
  }

LABEL_25:
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
    {
      v11 = 0x8000000000000000;
    }

    if (v10 != 0x8000000000000000)
    {
      v20 = v11;
    }
  }

  if (v20 <= *this)
  {
    goto LABEL_73;
  }

  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = *(this + 11) + 0x7FFFFFFFFFFFFFFFLL;
  v9 = v23 < 0xFFFFFFFFFFFFFFFELL;
  if (v23 > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_80:
    *(this + 56) = *(this + 8);
    *(this + 72) = *(this + 24);
    *(this + 88) = *(this + 40);
    *(this + 3) = a2;
    *(this + 4) = a3;
    *(this + 1) = 0;
    *(this + 2) = a2;
    goto LABEL_81;
  }

  v24 = *(this + 9);
  v25 = var0 - v24;
  if (v24 == 0x7FFFFFFFFFFFFFFFLL || var0 == 0x8000000000000000)
  {
    v25 = 0x8000000000000000;
  }

  if (v24 == 0x8000000000000000 || var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v25;
  }

  a6->var0 = v28;
  v29 = *(this + 5);
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = *(this + 11);
    if (v30 != 0x8000000000000000)
    {
      v22 = v29 - v30;
      if (v30 == 0x7FFFFFFFFFFFFFFFLL || v29 == 0x8000000000000000)
      {
        v22 = 0x8000000000000000;
      }
    }
  }

  a7->var0 = v22;
  v32 = *(this + 6);
  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_66:
      v36 = this;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/inter_arrival_delta.cc");
      }

      goto LABEL_82;
    }
  }

  else
  {
    v33 = *(this + 12);
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    if (v33 != 0x8000000000000000)
    {
      if (v33 == 0x7FFFFFFFFFFFFFFFLL || v32 == 0x8000000000000000)
      {
        v34 = 0x8000000000000000;
      }

      else
      {
        v34 = v32 - v33;
      }
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_66;
    }
  }

  if (v34 == 0x8000000000000000 || v22 != 0x8000000000000000 && v34 != 0x7FFFFFFFFFFFFFFFLL && (v22 - v34) >= 3000000)
  {
    goto LABEL_66;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    *(this + 26) = 0;
    *a8 = *(this + 2) - *(this + 14);
    goto LABEL_80;
  }

  v46 = *(this + 26);
  *(this + 26) = v46 + 1;
  if (v46 < 2)
  {
    return 0;
  }

  v36 = this;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/inter_arrival_delta.cc");
  }

LABEL_82:
  *(v36 + 26) = 0;
  *(v36 + 8) = xmmword_273B920C0;
  v45 = vnegq_f64(0);
  *(v36 + 24) = v45;
  *(v36 + 40) = v45;
  *(v36 + 56) = xmmword_273B920C0;
  *(v36 + 72) = v45;
  *(v36 + 88) = v45;
  return 0;
}

uint64_t dcsctp::InterleavedReassemblyStreams::Stream::TryToAssembleMessage(void *a1, uint64_t a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 3);
  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  v4 = (a1 + 3);
  do
  {
    if (v2[4] >= a2)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < a2];
  }

  while (v2);
  if (v4 == v3)
  {
    return 0;
  }

  if (v4[4] > a2)
  {
    return 0;
  }

  v5 = v4[5];
  if (*(v5 + 88) != 1)
  {
    return 0;
  }

  v6 = v4[6];
  if (v6)
  {
    v7 = v4[6];
    do
    {
      v8 = v7;
      v7 = v7[1];
    }

    while (v7);
  }

  else
  {
    v9 = (v4 + 6);
    do
    {
      v8 = v9[2];
      v10 = *v8 == v9;
      v9 = v8;
    }

    while (v10);
  }

  if (*(v8 + 89) != 1)
  {
    return 0;
  }

  if (v6)
  {
    do
    {
      v11 = v6;
      v6 = v6[1];
    }

    while (v6);
  }

  else
  {
    v12 = (v4 + 6);
    do
    {
      v11 = v12[2];
      v10 = *v11 == v12;
      v12 = v11;
    }

    while (v10);
  }

  v13 = v4[7];
  if ((v13 - 1) != (*(v11 + 8) - *(v5 + 8)))
  {
    return 0;
  }

  if (v13 != 1)
  {
    operator new();
  }

  v14 = v5[5];
  v15 = v5[8];
  v16 = *(v5 + 24) | (*(v5 + 15) << 32);
  v17 = *(v5 + 9);
  v5[9] = 0;
  v5[10] = 0;
  v5[8] = 0;
  v35[0] = v14;
  v18 = a1[1];
  v32 = v16;
  __p = v15;
  v28 = v17;
  *__p_8 = v17;
  __dst[0] = v35;
  __dst[1] = 1;
  v19 = *(v18 + 48);
  if (!v19)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  (*(*v19 + 48))(v19, __dst, &v32);
  if (__p)
  {
    __p_8[0] = __p;
    operator delete(__p);
  }

  result = v28 - v15;
  v21 = *v3;
  if (*v3)
  {
    v22 = v3;
    v23 = *v3;
    do
    {
      if (v23[4] >= a2)
      {
        v22 = v23;
      }

      v23 = v23[v23[4] < a2];
    }

    while (v23);
    if (v22 != v3 && v22[4] <= a2)
    {
      v24 = v22[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        v26 = v22;
        do
        {
          v25 = v26[2];
          v10 = *v25 == v26;
          v26 = v25;
        }

        while (!v10);
      }

      v27 = result;
      if (a1[2] == v22)
      {
        a1[2] = v25;
      }

      --a1[4];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v21, v22);
      std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(v22[6]);
      operator delete(v22);
      return v27;
    }
  }

  return result;
}

uint64_t dcsctp::InterleavedReassemblyStreams::Add(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  LOBYTE(v44) = *(a3 + 42);
  HIWORD(v44) = v3;
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = HIWORD(v44);
  v6 = a1 + 64;
  do
  {
    v7 = *(v4 + 32);
    v9 = v44 > v7 || v5 > HIWORD(v7);
    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v6 = v4;
    }

    v4 = *(v4 + v11);
  }

  while (v4);
  if (v6 == a1 + 64 || ((v12 = *(v6 + 32), v44 >= v12) ? (v13 = v5 >= HIWORD(v12)) : (v13 = 0), !v13))
  {
LABEL_21:
    v49 = &v44;
    v51[0] = a1;
    v45 = &v44;
    __p = v51;
    std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&>,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&,dcsctp::InterleavedReassemblyStreams*&&>>();
  }

  v14 = *(a3 + 1);
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  v42 = *(a3 + 3);
  v43 = *(a3 + 2);
  v17 = *(a3 + 4);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *(a3 + 2) = 0;
  v41 = v17;
  if (*(v6 + 92) == 1)
  {
    v18 = *(v6 + 88);
    v13 = v14 >= v18;
    v19 = v14 - v18;
    v20 = v19 != 0 && v13;
    if (v19 != 0x80000000)
    {
      v20 = v19 >= 0;
    }

    if (!v20)
    {
      v19 |= 0xFFFFFFFF00000000;
    }

    v21 = v19 + *(v6 + 80);
  }

  else
  {
    v21 = v14;
  }

  v22 = *(a3 + 40);
  v23 = *(a3 + 41);
  *(v6 + 80) = v21;
  *(v6 + 88) = v14;
  *(v6 + 92) = 1;
  if (*(v6 + 40) != 1)
  {
    if (v21 == *(v6 + 96) && (v22 & 1) != 0 && (v23 & 1) != 0)
    {
      v51[0] = a2;
      v26 = *(v6 + 48);
      v45 = (v3 | (v16 << 32));
      __p = v43;
      v47 = v42;
      v48 = v41;
      v49 = v51;
      v50 = 1;
      v27 = *(v26 + 48);
      if (v27)
      {
        (*(*v27 + 48))(v27, &v49, &v45);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }

        v28 = 0;
        do
        {
          v29 = v28;
          v30 = *(v6 + 96) + 1;
          *(v6 + 96) = v30;
          v31 = dcsctp::InterleavedReassemblyStreams::Stream::TryToAssembleMessage((v6 + 40), v30);
          v28 = v31 + v29;
        }

        while (v31);
        return -v29;
      }

      goto LABEL_65;
    }

LABEL_47:
    v33 = *(v6 + 64);
    if (!v33)
    {
LABEL_53:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v34 = v33;
        v35 = v33[4];
        if (v21 >= v35)
        {
          break;
        }

        v33 = *v34;
        if (!*v34)
        {
          goto LABEL_53;
        }
      }

      if (v35 >= v21)
      {
        break;
      }

      v33 = v34[1];
      if (!v33)
      {
        goto LABEL_53;
      }
    }

    v36 = v34[6];
    if (!v36)
    {
LABEL_60:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v37 = v36;
        v38 = *(v36 + 32);
        if (v15 >= v38)
        {
          break;
        }

        v36 = *v37;
        if (!*v37)
        {
          goto LABEL_60;
        }
      }

      if (v38 >= v15)
      {
        break;
      }

      v36 = v37[1];
      if (!v36)
      {
        goto LABEL_60;
      }
    }

    if (v43)
    {
      operator delete(v43);
      return 0;
    }

    return 0;
  }

  if ((v22 & 1) == 0 || (v23 & 1) == 0)
  {
    goto LABEL_47;
  }

  v51[0] = a2;
  v24 = *(v6 + 48);
  v45 = (v3 | (v16 << 32));
  __p = v43;
  v47 = v42;
  v48 = v41;
  v49 = v51;
  v50 = 1;
  v25 = *(v24 + 48);
  if (v25)
  {
    (*(*v25 + 48))(v25, &v49, &v45);
    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    return 0;
  }

LABEL_65:
  v40 = std::__throw_bad_function_call[abi:sn200100]();
  return dcsctp::InterleavedReassemblyStreams::HandleForwardTsn(v40);
}

uint64_t dcsctp::InterleavedReassemblyStreams::HandleForwardTsn(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = 0;
    v41 = &a3[6 * a4];
    v6 = (a1 + 64);
    while (1)
    {
      v8 = *v4;
      LOBYTE(v42) = *(v4 + 4);
      HIWORD(v42) = v8;
      v9 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }

      v10 = HIWORD(v42);
      v11 = v6;
      do
      {
        v12 = *(v9 + 32);
        v14 = v42 > v12 || v10 > HIWORD(v12);
        v15 = !v14;
        if (v14)
        {
          v16 = 8;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v11 = v9;
        }

        v9 = *(v9 + v16);
      }

      while (v9);
      if (v11 == v6 || ((v17 = *(v11 + 8), v42 >= v17) ? (v18 = v10 >= HIWORD(v17)) : (v18 = 0), !v18))
      {
LABEL_25:
        v43[3] = &v42;
        v43[0] = a1;
        v43[1] = &v42;
        v43[2] = v43;
        std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&>,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&,dcsctp::InterleavedReassemblyStreams*&&>>();
      }

      v19 = *(v4 + 2);
      if (*(v11 + 92) == 1)
      {
        v20 = *(v11 + 22);
        v18 = v19 >= v20;
        v21 = v19 - v20;
        v22 = v21 != 0 && v18;
        if (v21 != 0x80000000)
        {
          v22 = v21 >= 0;
        }

        if (!v22)
        {
          v21 |= 0xFFFFFFFF00000000;
        }

        v23 = v21 + v11[10];
      }

      else
      {
        v23 = *(v4 + 2);
      }

      v11[10] = v23;
      *(v11 + 22) = v19;
      *(v11 + 92) = 1;
      v24 = v11[7];
      if (v24 != v11 + 8)
      {
        break;
      }

      v7 = 0;
LABEL_59:
      if ((v11[5] & 1) == 0)
      {
        v35 = v11[12];
        if (v23 >= v35)
        {
          v35 = v23 + 1;
          v11[12] = v23 + 1;
        }

        v36 = dcsctp::InterleavedReassemblyStreams::Stream::TryToAssembleMessage(v11 + 5, v35);
        for (i = 0; v36; v36 = dcsctp::InterleavedReassemblyStreams::Stream::TryToAssembleMessage(v11 + 5, v38))
        {
          i += v36;
          v38 = v11[12] + 1;
          v11[12] = v38;
        }

        v7 += i;
      }

      v5 += v7;
      v4 += 6;
      if (v4 == v41)
      {
        return v5;
      }
    }

    v7 = 0;
    while (1)
    {
      if (v24[4] > v23)
      {
        goto LABEL_59;
      }

      v26 = v24[5];
      if (v26 == v24 + 6)
      {
        v31 = 0;
        v32 = v24[1];
        v33 = v24;
        if (v32)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v27 = 0;
        do
        {
          v28 = v26[1];
          v29 = v26;
          if (v28)
          {
            do
            {
              v30 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v30 = v29[2];
              v15 = *v30 == v29;
              v29 = v30;
            }

            while (!v15);
          }

          v27 = v27 - v26[8] + v26[9];
          v26 = v30;
        }

        while (v30 != v24 + 6);
        v31 = v27;
        v32 = v24[1];
        v33 = v24;
        if (v32)
        {
          do
          {
LABEL_52:
            v34 = v32;
            v32 = *v32;
          }

          while (v32);
          goto LABEL_56;
        }
      }

      do
      {
        v34 = v33[2];
        v15 = *v34 == v33;
        v33 = v34;
      }

      while (!v15);
LABEL_56:
      if (v11[7] == v24)
      {
        v11[7] = v34;
      }

      v7 += v31;
      v25 = v11[8];
      --v11[9];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v25, v24);
      std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(v24[6]);
      operator delete(v24);
      v24 = v34;
      if (v34 == v11 + 8)
      {
        goto LABEL_59;
      }
    }
  }

  return 0;
}

uint64_t dcsctp::InterleavedReassemblyStreams::ResetStreams(uint64_t result, __int16 *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    v4 = a2;
    v5 = (result + 64);
    do
    {
      v6 = *v4;
      LOBYTE(v29) = 1;
      HIWORD(v29) = v6;
      v7 = *v5;
      if (!*v5)
      {
        goto LABEL_25;
      }

      v8 = HIWORD(v29);
      v9 = v3 + 64;
      do
      {
        v10 = *(v7 + 32);
        v12 = v29 > v10 || v8 > HIWORD(v10);
        v13 = !v12;
        if (v12)
        {
          v14 = 8;
        }

        else
        {
          v14 = 0;
        }

        if (v13)
        {
          v9 = v7;
        }

        v7 = *(v7 + v14);
      }

      while (v7);
      if (v9 == v5 || ((v15 = *(v9 + 32), v29 >= v15) ? (v16 = v8 >= HIWORD(v15)) : (v16 = 0), !v16))
      {
LABEL_25:
        v32 = &v30;
        v33 = &v29;
        v30 = v3;
        v31 = &v29;
        std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&>,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&,dcsctp::InterleavedReassemblyStreams*&&>>();
      }

      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 92) = 1;
      *(v9 + 96) = 0;
      LOBYTE(v29) = 0;
      HIWORD(v29) = v6;
      v17 = *v5;
      if (!*v5)
      {
        goto LABEL_3;
      }

      v18 = HIWORD(v29);
      result = v3 + 64;
      do
      {
        v19 = *(v17 + 32);
        v21 = v29 > v19 || v18 > HIWORD(v19);
        v22 = !v21;
        if (v21)
        {
          v23 = 8;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          result = v17;
        }

        v17 = *(v17 + v23);
      }

      while (v17);
      if (result == v5 || ((v24 = *(result + 32), v29 >= v24) ? (v25 = v18 >= HIWORD(v24)) : (v25 = 0), !v25))
      {
LABEL_3:
        v32 = &v30;
        v33 = &v29;
        v30 = v3;
        v31 = &v29;
        std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&>,std::tuple<dcsctp::InterleavedReassemblyStreams::FullStreamId const&,dcsctp::InterleavedReassemblyStreams*&&>>();
      }

      *(result + 80) = 0;
      *(result + 88) = 0;
      *(result + 92) = 1;
      *(result + 96) = 0;
      ++v4;
    }

    while (v4 != &a2[a3]);
  }

  else
  {
    v26 = *(result + 56);
    if (v26 != (result + 64))
    {
      do
      {
        v26[10] = 0;
        *(v26 + 22) = 0;
        *(v26 + 92) = 1;
        v26[12] = 0;
        v27 = v26[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v26[2];
            v13 = *v28 == v26;
            v26 = v28;
          }

          while (!v13);
        }

        v26 = v28;
      }

      while (v28 != (result + 64));
    }
  }

  return result;
}

uint64_t dcsctp::InterleavedReassemblyStreams::GetHandoverReadiness(dcsctp::InterleavedReassemblyStreams *this)
{
  v1 = *(this + 7);
  if (v1 == (this + 64))
  {
    return 0;
  }

  while (!*(v1 + 9))
  {
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
    if (v4 == (this + 64))
    {
      return 0;
    }
  }

  if (*(v1 + 32))
  {
    return 256;
  }

  else
  {
    return 128;
  }
}

void *dcsctp::InterleavedReassemblyStreams::AddHandoverState(void *result, uint64_t a2)
{
  v2 = result[7];
  v3 = result + 8;
  if (v2 != result + 8)
  {
    do
    {
      if (*(v2 + 40) == 1)
      {
        v10 = *(v2 + 21);
        result = std::vector<unsigned int>::push_back[abi:sn200100]((a2 + 136), &v10);
        v5 = v2[1];
        if (v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v6 = v2[12];
        LODWORD(v9) = *(v2 + 21);
        HIDWORD(v9) = v6;
        result = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a2 + 112), &v9);
        v5 = v2[1];
        if (v5)
        {
          do
          {
LABEL_8:
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
          goto LABEL_3;
        }
      }

      do
      {
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
LABEL_3:
      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

void dcsctp::InterleavedReassemblyStreams::RestoreFromState(uint64_t a1, void *a2)
{
  if (a2[14] != a2[15])
  {
    operator new();
  }

  if (a2[17] != a2[18])
  {
    operator new();
  }
}

void dcsctp::InterleavedReassemblyStreams::~InterleavedReassemblyStreams(dcsctp::InterleavedReassemblyStreams *this)
{
  *this = &unk_288294BA8;
  std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::destroy(*(this + 8));
  v2 = *(this + 6);
  if (v2 == (this + 24))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

{
  *this = &unk_288294BA8;
  std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::destroy(*(this + 8));
  v2 = *(this + 6);
  if (v2 == (this + 24))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

char *std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, _BYTE *__dst, _BYTE *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v6 - v7) < a5)
  {
    v8 = *a1;
    v9 = v7 - *a1 + a5;
    if (v9 >= 0)
    {
      v10 = (__dst - v8);
      v11 = v6 - v8;
      if (2 * v11 > v9)
      {
        v9 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        operator new();
      }

      v30 = (__dst - v8);
      v31 = &v10[a5];
      v32 = v8 - __dst;
      if (v8 - __dst >= (a5 - 1))
      {
        v32 = a5 - 1;
      }

      v33 = v32 + 1;
      if (v33 >= 0x21 && (__dst - __src - v8) >= 0x20)
      {
        v44 = v33 & 0x1F;
        if ((v33 & 0x1F) == 0)
        {
          v44 = 32;
        }

        v45 = v33 - v44;
        v34 = &v10[v33 - v44];
        v35 = &__src[v45];
        v46 = (__src + 16);
        v47 = v10 + 16;
        do
        {
          v48 = *v46;
          *(v47 - 1) = *(v46 - 1);
          *v47 = v48;
          v46 += 2;
          v47 += 2;
          v45 -= 32;
        }

        while (v45);
      }

      else
      {
        v34 = (__dst - v8);
        v35 = __src;
      }

      do
      {
        if (!v34)
        {
          goto LABEL_65;
        }

        v49 = *v35++;
        *v34++ = v49;
      }

      while (v34 != v31);
      v50 = *(a1 + 8) - __dst;
      memcpy(v31, __dst, v50);
      v52 = &v31[v50];
      *(a1 + 8) = v5;
      v53 = *a1;
      v54 = &v30[*a1 - v5];
      memcpy(v54, *a1, &v5[-*a1]);
      *a1 = v54;
      *(a1 + 8) = v52;
      *(a1 + 16) = 0;
      if (v53)
      {
        operator delete(v53);
      }

      return v30;
    }

LABEL_66:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = v7 - __dst;
  if ((v7 - __dst) >= a5)
  {
    v17 = &__dst[a5];
    v18 = (v7 - a5);
    v19 = *(a1 + 8);
    if (v7 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_69;
      }

      v18 += a5 & 0x7FFFFFFFFFFFFFE0;
      v19 = (v7 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v20 = (v7 + 16);
      v21 = (v7 + 16 - a5);
      v22 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v23 = *v21;
        *(v20 - 1) = *(v21 - 1);
        *v20 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 32;
      }

      while (v22);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_69:
        do
        {
          v24 = *v18++;
          *v19++ = v24;
        }

        while (v18 != v7);
      }
    }

    *(a1 + 8) = v19;
    if (v7 != v17)
    {
      v25 = __src;
      v26 = a5;
      memmove(v17, __dst, v7 - v17);
      a5 = v26;
      __src = v25;
    }

    v27 = v5;
    v28 = __src;
    v29 = a5;
    goto LABEL_63;
  }

  v14 = &__src[v13];
  if (&__src[v13] != a4)
  {
    v36 = &__src[v13];
    v37 = &a4[~v14];
    if (v37 >= -v7)
    {
      v37 = -v7;
    }

    v38 = (v37 + 1);
    if (v37 + 1 < 0x21)
    {
      v15 = *(a1 + 8);
    }

    else
    {
      v15 = *(a1 + 8);
      if (v7 - v14 >= 0x20)
      {
        v39 = v38 & 0x1F;
        if ((v38 & 0x1F) == 0)
        {
          v39 = 32;
        }

        v40 = &v38[-v39];
        v36 = &v40[v14];
        v15 = &v40[v7];
        v41 = (v7 + 16);
        v42 = (v14 + 16);
        do
        {
          v43 = *v42;
          *(v41 - 1) = *(v42 - 1);
          *v41 = v43;
          v41 += 2;
          v42 += 2;
          v40 -= 32;
        }

        while (v40);
      }
    }

    v16 = v15;
    while (v16)
    {
      v55 = *v36++;
      *v16++ = v55;
      ++v15;
      if (v36 == a4)
      {
        goto LABEL_50;
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v15 = *(a1 + 8);
  v16 = v15;
LABEL_50:
  *(a1 + 8) = v15;
  if (v13 >= 1)
  {
    v56 = &__dst[a5];
    v57 = &v15[-a5];
    if (&v15[-a5] >= v7)
    {
      v59 = v15;
    }

    else
    {
      v58 = v7 + a5 - v15;
      v59 = v15;
      if (v58 < 0x20)
      {
        goto LABEL_70;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_70;
      }

      v57 += v58 & 0xFFFFFFFFFFFFFFE0;
      v59 = &v15[v58 & 0xFFFFFFFFFFFFFFE0];
      v60 = v15 + 16;
      v61 = &v15[-a5 + 16];
      v62 = v58 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v63 = *v61;
        *(v60 - 1) = *(v61 - 1);
        *v60 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 32;
      }

      while (v62);
      if (v58 != (v58 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_70:
        do
        {
          v64 = *v57++;
          *v59++ = v64;
        }

        while (v57 != v7);
      }
    }

    *(a1 + 8) = v59;
    if (v16 != v56)
    {
      v65 = __src;
      memmove(&v5[a5], v5, v15 - v56);
      __src = v65;
    }

    v27 = v5;
    v28 = __src;
    v29 = v13;
LABEL_63:
    memmove(v27, v28, v29);
  }

  return v5;
}

void std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::destroy(*a1);
    std::__tree<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::__map_value_compare<dcsctp::InterleavedReassemblyStreams::FullStreamId,std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>,std::less<dcsctp::InterleavedReassemblyStreams::FullStreamId>,true>,std::allocator<std::__value_type<dcsctp::InterleavedReassemblyStreams::FullStreamId,dcsctp::InterleavedReassemblyStreams::Stream>>>::destroy(a1[1]);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>>::destroy(a1[8]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>>::destroy(*a1);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::MIDTag,unsigned int>>,std::map<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::FSNTag,unsigned int>,std::pair<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2)
    {
      a1[9] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t webrtc::InterpolatedGainCurve::InterpolatedGainCurve(uint64_t a1, uint64_t a2, char *__src, size_t __len)
{
  *(&v37.__r_.__value_.__s + 23) = 13;
  if (&v37 <= "WebRTC.Audio." && &v37.__r_.__value_.__r.__words[1] + 5 > "WebRTC.Audio.")
  {
    goto LABEL_117;
  }

  strcpy(&v37, "WebRTC.Audio.");
  if (!__src)
  {
    if (__len)
    {
      goto LABEL_117;
    }
  }

  if (__len > 9)
  {
    if (__len - 0x7FFFFFFFFFFFFFEALL > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_118:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len)
  {
    if (&v37.__r_.__value_.__r.__words[1] + 5 <= __src && &v37.__r_.__value_.__r.__words[1] + __len + 5 > __src)
    {
      goto LABEL_117;
    }

    memmove(&v37.__r_.__value_.__r.__words[1] + 5, __src, __len);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v37.__r_.__value_.__l.__size_ = __len + 13;
    }

    else
    {
      *(&v37.__r_.__value_.__s + 23) = __len + 13;
    }

    v37.__r_.__value_.__s.__data_[__len + 13] = 0;
  }

  v7 = v37.__r_.__value_.__r.__words[2];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = 22;
  }

  else
  {
    v8 = (v37.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  if (v8 - size >= 0x25)
  {
    v10 = v37.__r_.__value_.__r.__words[0];
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v37;
    }

    v11 = v10 + size;
    if (v10 + size <= ".FixedDigitalGainCurveRegion.Identity" && v11 + 37 > ".FixedDigitalGainCurveRegion.Identity")
    {
      goto LABEL_117;
    }

    qmemcpy(v11, ".FixedDigitalGainCurveRegion.Identity", 37);
    v12 = size + 37;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v37.__r_.__value_.__l.__size_ = size + 37;
    }

    else
    {
      *(&v37.__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v12] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v37, v8, size - v8 + 37, size, size, 0, 0x25uLL, ".FixedDigitalGainCurveRegion.Identity");
  }

  *(&v36.__r_.__value_.__s + 23) = 13;
  if (&v36 <= "WebRTC.Audio." && &v36.__r_.__value_.__r.__words[1] + 5 > "WebRTC.Audio.")
  {
    goto LABEL_117;
  }

  strcpy(&v36, "WebRTC.Audio.");
  if (__len > 9)
  {
    operator new();
  }

  if (__len)
  {
    if (&v36.__r_.__value_.__r.__words[1] + 5 <= __src && &v36.__r_.__value_.__r.__words[1] + __len + 5 > __src)
    {
      goto LABEL_117;
    }

    memmove(&v36.__r_.__value_.__r.__words[1] + 5, __src, __len);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v36.__r_.__value_.__l.__size_ = __len + 13;
    }

    else
    {
      *(&v36.__r_.__value_.__s + 23) = __len + 13;
    }

    v36.__r_.__value_.__s.__data_[__len + 13] = 0;
  }

  v13 = v36.__r_.__value_.__r.__words[2];
  v14 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v36.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v15 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v36.__r_.__value_.__r.__words[2]) : v36.__r_.__value_.__l.__size_;
  if (v14 - v15 >= 0x21)
  {
    v16 = v36.__r_.__value_.__r.__words[0];
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v36;
    }

    v17 = v16 + v15;
    if (v16 + v15 <= ".FixedDigitalGainCurveRegion.Knee" && v17 + 33 > ".FixedDigitalGainCurveRegion.Knee")
    {
      goto LABEL_117;
    }

    qmemcpy(v17, ".FixedDigitalGainCurveRegion.Knee", 33);
    v18 = v15 + 33;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v36.__r_.__value_.__l.__size_ = v15 + 33;
    }

    else
    {
      *(&v36.__r_.__value_.__s + 23) = v18 & 0x7F;
    }

    v16->__r_.__value_.__s.__data_[v18] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v36, v14, v15 - v14 + 33, v15, v15, 0, 0x21uLL, ".FixedDigitalGainCurveRegion.Knee");
  }

  *(&v35.__r_.__value_.__s + 23) = 13;
  if (&v35 <= "WebRTC.Audio." && &v35.__r_.__value_.__r.__words[1] + 5 > "WebRTC.Audio.")
  {
    goto LABEL_117;
  }

  strcpy(&v35, "WebRTC.Audio.");
  if (__len)
  {
    if (&v35.__r_.__value_.__r.__words[1] + 5 <= __src && &v35.__r_.__value_.__r.__words[1] + __len + 5 > __src)
    {
      goto LABEL_117;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 5, __src, __len);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      v35.__r_.__value_.__l.__size_ = __len + 13;
    }

    else
    {
      *(&v35.__r_.__value_.__s + 23) = __len + 13;
    }

    v35.__r_.__value_.__s.__data_[__len + 13] = 0;
  }

  v19 = v35.__r_.__value_.__r.__words[2];
  v20 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v35.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v21 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v35.__r_.__value_.__r.__words[2]) : v35.__r_.__value_.__l.__size_;
  if (v20 - v21 >= 0x24)
  {
    v22 = v35.__r_.__value_.__r.__words[0];
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v35;
    }

    v23 = v22 + v21;
    if (v22 + v21 <= ".FixedDigitalGainCurveRegion.Limiter" && v23 + 36 > ".FixedDigitalGainCurveRegion.Limiter")
    {
      goto LABEL_117;
    }

    qmemcpy(v23, ".FixedDigitalGainCurveRegion.Limiter", 36);
    v24 = v21 + 36;
    if ((v19 & 0x8000000000000000) != 0)
    {
      v35.__r_.__value_.__l.__size_ = v21 + 36;
    }

    else
    {
      *(&v35.__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    v22->__r_.__value_.__s.__data_[v24] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v35, v20, v21 - v20 + 36, v21, v21, 0, 0x24uLL, ".FixedDigitalGainCurveRegion.Limiter");
  }

  *(&v34.__r_.__value_.__s + 23) = 13;
  if (&v34 <= "WebRTC.Audio." && &v34.__r_.__value_.__r.__words[1] + 5 > "WebRTC.Audio.")
  {
    goto LABEL_117;
  }

  strcpy(&v34, "WebRTC.Audio.");
  if (__len)
  {
    if (&v34.__r_.__value_.__r.__words[1] + 5 <= __src && &v34.__r_.__value_.__r.__words[1] + __len + 5 > __src)
    {
      goto LABEL_117;
    }

    memmove(&v34.__r_.__value_.__r.__words[1] + 5, __src, __len);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v34.__r_.__value_.__l.__size_ = __len + 13;
    }

    else
    {
      *(&v34.__r_.__value_.__s + 23) = __len + 13;
    }

    v34.__r_.__value_.__s.__data_[__len + 13] = 0;
  }

  v25 = v34.__r_.__value_.__r.__words[2];
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = 22;
  }

  else
  {
    v26 = (v34.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v34.__r_.__value_.__l.__size_;
  }

  if (v26 - v27 < 0x27)
  {
    std::string::__grow_by_and_replace(&v34, v26, v27 - v26 + 39, v27, v27, 0, 0x27uLL, ".FixedDigitalGainCurveRegion.Saturation");
    v28 = a2;
    goto LABEL_108;
  }

  v28 = a2;
  v29 = v34.__r_.__value_.__r.__words[0];
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v34;
  }

  v30 = v29 + v27;
  if (v29 + v27 <= ".FixedDigitalGainCurveRegion.Saturation" && v30 + 39 > ".FixedDigitalGainCurveRegion.Saturation")
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  qmemcpy(v30, ".FixedDigitalGainCurveRegion.Saturation", 39);
  v31 = v27 + 39;
  if ((v25 & 0x8000000000000000) != 0)
  {
    v34.__r_.__value_.__l.__size_ = v27 + 39;
  }

  else
  {
    *(&v34.__r_.__value_.__s + 23) = v31 & 0x7F;
  }

  v29->__r_.__value_.__s.__data_[v31] = 0;
LABEL_108:
  *a1 = webrtc::metrics::HistogramFactoryGetCountsLinear();
  *(a1 + 8) = webrtc::metrics::HistogramFactoryGetCountsLinear();
  *(a1 + 16) = webrtc::metrics::HistogramFactoryGetCountsLinear();
  *(a1 + 24) = webrtc::metrics::HistogramFactoryGetCountsLinear();
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

LABEL_115:
      operator delete(v36.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_116:
      operator delete(v37.__r_.__value_.__l.__data_);
      goto LABEL_112;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_110;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_115;
  }

LABEL_111:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_116;
  }

LABEL_112:
  *(a1 + 32) = v28;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t webrtc::InterpolatedGainCurve::LookUpGainToApply(uint64_t this, float a2)
{
  *(this + 72) = 1;
  v2 = 40;
  v3 = 48;
  v4 = 64;
  if (a2 >= 36766.0)
  {
    v5 = 3;
  }

  else
  {
    v4 = 56;
    v5 = 2;
  }

  if (a2 < 33725.0)
  {
    v6 = 1;
  }

  else
  {
    v3 = v4;
    v6 = v5;
  }

  if (a2 < 30057.0)
  {
    v7 = 0;
  }

  else
  {
    v2 = v3;
    v7 = v6;
  }

  ++*(this + v2);
  v8 = *(this + 76);
  if (v7 != v8)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v9 = *(this + 16);
        if (!v9)
        {
          goto LABEL_22;
        }
      }

      else if (v8 != 3 || (v9 = *(this + 24)) == 0)
      {
LABEL_22:
        *(this + 80) = 0;
        *(this + 76) = v7;
        if (a2 <= 30057.0)
        {
          return this;
        }

        goto LABEL_23;
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_22;
      }

      v9 = *(this + 8);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = *this;
      if (!*this)
      {
        goto LABEL_22;
      }
    }

    v10 = this;
    v11 = a2;
    webrtc::metrics::HistogramAdd(v9, *(this + 80) / 100);
    this = v10;
    a2 = v11;
    goto LABEL_22;
  }

  ++*(this + 80);
  if (a2 <= 30057.0)
  {
    return this;
  }

LABEL_23:
  if (a2 < 36766.0)
  {
    v12 = 32;
    v13 = &webrtc::InterpolatedGainCurve::approximation_params_x_;
    do
    {
      v14 = v12 >> 1;
      v15 = &v13[v12 >> 1];
      v17 = *v15;
      v16 = v15 + 1;
      v12 += ~(v12 >> 1);
      if (v17 < a2)
      {
        v13 = v16;
      }

      else
      {
        v12 = v14;
      }
    }

    while (v12);
    if ((((v13 - &webrtc::InterpolatedGainCurve::approximation_params_x_) >> 2) - 1) >= 0x20)
    {
      __break(1u);
    }
  }

  return this;
}

double dcsctp::InvalidMandatoryParameterCause::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
    *&result = 67110656;
    *(v2 + v3) = 67110656;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    *&result = 67110656;
    *(*a2 + v3) = 67110656;
  }

  return result;
}

double dcsctp::InvalidStreamIdentifierCause::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1] = v4 + v5 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v4 = *a2;
  }

  *&result = 134217984;
  *(v4 + v5) = 134217984;
  *(*a2 + v5 + 4) = bswap32(*(a1 + 8)) >> 16;
  return result;
}

uint64_t webrtc::IPAddress::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  if (v2 != 30)
  {
    if (v2 == 2)
    {
      return *(a1 + 12) == *(a2 + 12);
    }

    return 0;
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20);
}

uint64_t webrtc::IPAddress::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  if (v2 != 30)
  {
    if (v2 == 2)
    {
      return *(a1 + 12) != *(a2 + 12);
    }

    return 1;
  }

  v5 = *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20);
  return !v5;
}

unint64_t webrtc::IPAddress::ToString@<X0>(unint64_t this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  v4 = v3 == 2 || v3 == 30;
  if (!v4 || (memset(v6, 0, 46), (this = inet_ntop(v3, (this + 12), v6, 0x2Eu)) == 0))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return this;
  }

  this = strlen(v6);
  if (this >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (this > 0x16)
  {
    operator new();
  }

  *(a2 + 23) = this;
  v5 = a2 + this;
  if (a2 <= v6 && (a2 + this) > v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (this)
  {
    this = memcpy(a2, v6, this);
  }

  *v5 = 0;
  return this;
}

void webrtc::IPAddress::ToSensitiveString(webrtc::IPAddress *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 == 30)
  {
    operator new();
  }

  if (v3 != 2)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  webrtc::IPAddress::ToString(this, &v22);
  v4 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  v5 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  size = v22.__r_.__value_.__l.__size_;
  v6 = v22.__r_.__value_.__r.__words[0];
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v22.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
LABEL_20:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    if (v5 < 0)
    {
      operator delete(v6);
    }

    return;
  }

  v10 = &v8[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v11 = v10[v9--];
  }

  while (v11 != 46);
  if (v9 == -1)
  {
    goto LABEL_20;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v22.__r_.__value_.__l.__size_ >= v9)
    {
      v22.__r_.__value_.__l.__size_ = v9;
      *(v22.__r_.__value_.__r.__words[0] + v9) = 0;
      v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    v13 = (v22.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v12 = v9 - v22.__r_.__value_.__l.__size_;
    if (v9 == v22.__r_.__value_.__l.__size_)
    {
      goto LABEL_33;
    }

    LOBYTE(v5) = *(&v22.__r_.__value_.__s + 23);
  }

  else
  {
    v12 = v9 - HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if (v9 <= HIBYTE(v22.__r_.__value_.__r.__words[2]))
    {
      *(&v22.__r_.__value_.__s + 23) = v9;
      v22.__r_.__value_.__s.__data_[v9] = 0;
      v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    v13 = 22;
    if (v9 == HIBYTE(v22.__r_.__value_.__r.__words[2]))
    {
      v17 = 0;
      if (22 - HIBYTE(v22.__r_.__value_.__r.__words[2]) < 2)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  if (v13 - size < v12)
  {
    std::string::__grow_by(&v22, v13, v12 - v13 + size, size, size, 0, 0);
    v22.__r_.__value_.__l.__size_ = size;
    LOBYTE(v5) = *(&v22.__r_.__value_.__s + 23);
    v6 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v6;
  }

  bzero(v14 + size, v12);
  v15 = size + v12;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    v22.__r_.__value_.__l.__size_ = size + v12;
    v14->__r_.__value_.__s.__data_[v15] = 0;
    v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *(&v22.__r_.__value_.__s + 23) = v15 & 0x7F;
    v14->__r_.__value_.__s.__data_[v15] = 0;
    v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_32:
      size = v22.__r_.__value_.__l.__size_;
      v13 = (v22.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_33:
      v17 = 1;
      v4 = size;
      if (v13 - size < 2)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

LABEL_36:
  v17 = 0;
  v4 = v16;
  v13 = 22;
  if (22 - v16 < 2)
  {
LABEL_37:
    std::string::__grow_by_and_replace(&v22, v13, v4 - v13 + 2, v4, v4, 0, 2uLL, ".x");
LABEL_49:
    *a2 = v22;
    return;
  }

LABEL_41:
  v18 = v17 == 0;
  v19 = &v22;
  if (!v18)
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  v20 = (v19 + v4);
  if (v19 + v4 > ".x" || v20 + 1 <= ".x")
  {
    *v20 = 30766;
    v21 = v4 + 2;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v22.__r_.__value_.__l.__size_ = v4 + 2;
    }

    else
    {
      *(&v22.__r_.__value_.__s + 23) = v21 & 0x7F;
    }

    v19->__r_.__value_.__s.__data_[v21] = 0;
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t webrtc::InterfaceAddress::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  if (v2 != 30)
  {
    if (v2 == 2)
    {
      return *(a1 + 12) == *(a2 + 12);
    }

    return 0;
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20);
}

__n128 webrtc::IPFromString(void **a1, size_t a2, uint64_t a3)
{
  if (a3)
  {
    if (webrtc::inet_pton(2, a1, a2, &v10))
    {
      v7 = v10;
      *(a3 + 8) = 2;
      *(a3 + 12) = v7;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
    }

    else if (webrtc::inet_pton(30, a1, a2, &v9))
    {
      *(a3 + 8) = 30;
      result.n128_u64[0] = v9;
      *(a3 + 12) = v9;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      *(a3 + 8) = 0;
      result = *&v8[4];
      *(a3 + 12) = *&v8[4];
    }
  }

  return result;
}

uint64_t webrtc::TruncateIP@<X0>(uint64_t this@<X0>, const webrtc::IPAddress *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  v3 = *(this + 8);
  if (v3 == 30)
  {
    if (a2 >= 0x80)
    {
      *a3 = &unk_28828CE50;
      *(a3 + 8) = 30;
      *(a3 + 12) = *(this + 12);
      return this;
    }

    if (!a2)
    {
      *a3 = &unk_28828CE50;
      *(a3 + 8) = 30;
      *(a3 + 12) = *MEMORY[0x277D85EE8];
      return this;
    }

    LODWORD(v5) = *(this + 16);
    v6 = *(this + 20);
    v7 = a2 >> 5;
    v8 = bswap32(0xFFFFFFFFLL << (32 - (a2 & 0x1Fu)));
    if (a2 >= 0x20)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 & *(this + 12);
    if (v7 == 1)
    {
      v5 = v8 & v5;
      if (a2 < 0x40)
      {
        v6 &= 0xFFFFFFFF00000000;
      }
    }

    else
    {
      if (a2 >= 0x20)
      {
        v5 = v5;
      }

      else
      {
        v5 = 0;
      }

      if (v7 == 2)
      {
        v6 = v6 & 0xFFFFFFFF00000000 | v8 & v6;
      }

      else
      {
        if (a2 < 0x40)
        {
          v6 &= 0xFFFFFFFF00000000;
        }

        if (v7 == 3)
        {
          v6 = v6 | ((v8 & HIDWORD(v6)) << 32);
LABEL_32:
          *a3 = &unk_28828CE50;
          *(a3 + 8) = 30;
          *(a3 + 12) = v10 | (v5 << 32);
          *(a3 + 20) = v6;
          return this;
        }
      }
    }

    if (a2 < 0x60)
    {
      v6 = v6;
    }

    goto LABEL_32;
  }

  if (v3 != 2)
  {
LABEL_6:
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = &unk_28828CE50;
    *(a3 + 24) = 0;
    return this;
  }

  if (a2 < 0x20)
  {
    if (a2)
    {
      v4 = *(this + 12);
      *a3 = &unk_28828CE50;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 2;
      *(a3 + 12) = v4 & bswap32(-1 << -a2);
    }

    else
    {
      *a3 = &unk_28828CE50;
      *(a3 + 8) = 2;
      *(a3 + 20) = 0;
      *(a3 + 12) = 0;
    }
  }

  else
  {
    *a3 = &unk_28828CE50;
    *(a3 + 8) = 2;
    *(a3 + 12) = *(this + 12);
  }

  return this;
}

uint64_t webrtc::CountIPMaskBits(webrtc *this, const webrtc::IPAddress *a2)
{
  v2 = *(this + 2);
  if (v2 != 30)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = this;
    result = 0;
    LODWORD(v4) = *(v4 + 12);
    if (!v4)
    {
      return result;
    }

    goto LABEL_14;
  }

  v4 = *(this + 12);
  if (v4 != -1)
  {
    result = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_14;
  }

  v4 >>= 32;
  if (v4 != 0xFFFFFFFF)
  {
    result = 32;
    if (!v4)
    {
      return result;
    }

    goto LABEL_14;
  }

  v5 = *(this + 20);
  if (v5 != -1)
  {
    v4 = *(this + 20);
    result = 64;
    if (!v5)
    {
      return result;
    }

    goto LABEL_14;
  }

  v4 = HIDWORD(v5);
  if (HIDWORD(v5) == 0xFFFFFFFF)
  {
    return 128;
  }

  result = 96;
  if (HIDWORD(v5))
  {
LABEL_14:
    v6 = bswap32(v4);
    v7 = v6 & -v6;
    if (v7)
    {
      v8 = 31;
    }

    else
    {
      v8 = 32;
    }

    if (v7)
    {
      v8 -= 16;
    }

    if ((v7 & 0xFF00FF) != 0)
    {
      v8 -= 8;
    }

    if ((v7 & 0xF0F0F0F) != 0)
    {
      v8 -= 4;
    }

    if ((v7 & 0x33333333) != 0)
    {
      v8 -= 2;
    }

    if ((v7 & 0x55555555) != 0)
    {
      v9 = result + 1;
    }

    else
    {
      v9 = result;
    }

    return (v9 - v8 + 32);
  }

  return result;
}

uint64_t webrtc::IPAddressPrecedence(webrtc *this, const webrtc::IPAddress *a2)
{
  v2 = *(this + 2);
  if (v2 == 2)
  {
    return 30;
  }

  if (v2 != 30)
  {
    return 0;
  }

  if (*(this + 12) == *MEMORY[0x277D85EF0] && *(this + 20) == *(MEMORY[0x277D85EF0] + 8))
  {
    return 60;
  }

  v4 = *(this + 12);
  if ((v4 & 0xFE) == 0xFC)
  {
    return 50;
  }

  v6 = *(this + 20);
  if (!(v4 | v6 ^ 0xFFFF0000))
  {
    return 30;
  }

  if (*(this + 12) == 544)
  {
    return 20;
  }

  if (v4 == 288)
  {
    return 10;
  }

  v7 = (v4 | v6) != 0;
  result = 1;
  if ((v4 & 0xC0FF) != 0xC0FE && v7)
  {
    if (v4 == 65087)
    {
      return 1;
    }

    else
    {
      return 40;
    }
  }

  return result;
}

uint64_t WebRtcIsac_SplitAndFilterFloat()
{
  result = MEMORY[0x28223BE20]();
  v6 = 0;
  v398[244] = *MEMORY[0x277D85DE8];
  v7 = v5[196];
  v8 = v5[197];
  do
  {
    v9 = *(result + v6);
    v10 = v7;
    *&v344[v6] = (v9 + (v7 * -0.051018)) + (v8 * 0.050155);
    v7 = (v9 + (v7 * 1.949)) + (v8 * -0.94985);
    v5[197] = v10;
    v5[196] = v7;
    v6 += 4;
    v8 = v10;
  }

  while (v6 != 1920);
  v11 = &v347;
  v12 = v397;
  v13 = 240;
  do
  {
    v14 = *(v11 - 2);
    *(v12 - 1) = *v11;
    *v12 = v14;
    v11 -= 4;
    v12 += 2;
    v13 -= 2;
  }

  while (v13);
  v15 = 0;
  v16 = 0.0;
  do
  {
    v17 = *&v396[v15];
    v18 = v16 + (v17 * 0.0347);
    v16 = v17 + (v18 * -0.0347);
    *&v396[v15] = v18;
    v15 += 4;
  }

  while (v15 != 960);
  v19 = 0;
  v20 = 0.0;
  do
  {
    v21 = *&v396[v19];
    v22 = v20 + (v21 * 0.1544);
    v20 = v21 + (v22 * -0.1544);
    *&v396[v19] = v22;
    v19 += 4;
  }

  while (v19 != 960);
  v23 = 0;
  v24 = 0.0;
  do
  {
    v25 = *&v396[v23];
    v26 = v24 + (v25 * 0.3826);
    v24 = v25 + (v26 * -0.3826);
    *&v396[v23] = v26;
    v23 += 4;
  }

  while (v23 != 960);
  v27 = 0;
  v28 = 0.0;
  do
  {
    v29 = *&v396[v27];
    v30 = v28 + (v29 * 0.744);
    v28 = v29 + (v30 * -0.744);
    *&v396[v27] = v30;
    v27 += 4;
  }

  while (v27 != 960);
  v31 = v398;
  v32 = 960;
  do
  {
    v33 = (&v372 + v32);
    v34 = vrev64q_s32(v31[-1]);
    v35 = vrev64q_s32(*v31);
    v33[4] = vextq_s8(v35, v35, 8uLL);
    v33[5] = vextq_s8(v34, v34, 8uLL);
    v31 += 2;
    v32 -= 32;
  }

  while (v32);
  v36 = v5[149];
  v37 = v5[150];
  v38 = v5[151];
  v39 = v5[152];
  v40 = v5[153];
  v41 = v5[154];
  v42 = v5[155];
  v43 = v5[156];
  v44 = v5[157];
  v45 = v5[158];
  v46 = v5[159];
  v47 = v5[160];
  v48 = v5[161];
  v49 = v5[162];
  v50 = v5[146];
  v51 = v5[147];
  v52 = v5[148];
  v53 = v5[144];
  v54 = v5[145];
  v55 = v5[163];
  v56 = v5[164];
  v57 = v5[165];
  v58 = v5[166];
  v59 = v16 + (v53 * 0.0347);
  v60 = (v53 + (v59 * -0.0347)) + (v54 * 0.0347);
  v61 = (v54 + (v60 * -0.0347)) + (v50 * 0.0347);
  v62 = (v50 + (v61 * -0.0347)) + (v51 * 0.0347);
  v63 = (v51 + (v62 * -0.0347)) + (v52 * 0.0347);
  v64 = (v52 + (v63 * -0.0347)) + (v36 * 0.0347);
  v65 = (v36 + (v64 * -0.0347)) + (v37 * 0.0347);
  v66 = (v37 + (v65 * -0.0347)) + (v38 * 0.0347);
  v67 = (v38 + (v66 * -0.0347)) + (v39 * 0.0347);
  v68 = (v39 + (v67 * -0.0347)) + (v40 * 0.0347);
  v69 = (v40 + (v68 * -0.0347)) + (v41 * 0.0347);
  v70 = (v41 + (v69 * -0.0347)) + (v42 * 0.0347);
  v71 = (v42 + (v70 * -0.0347)) + (v43 * 0.0347);
  v72 = (v43 + (v71 * -0.0347)) + (v44 * 0.0347);
  v73 = (v44 + (v72 * -0.0347)) + (v45 * 0.0347);
  v74 = (v45 + (v73 * -0.0347)) + (v46 * 0.0347);
  v75 = (v46 + (v74 * -0.0347)) + (v47 * 0.0347);
  v76 = (v47 + (v75 * -0.0347)) + (v48 * 0.0347);
  v77 = (v48 + (v76 * -0.0347)) + (v49 * 0.0347);
  v78 = (v49 + (v77 * -0.0347)) + (v55 * 0.0347);
  v79 = (v55 + (v78 * -0.0347)) + (v56 * 0.0347);
  v80 = (v56 + (v79 * -0.0347)) + (v57 * 0.0347);
  v81 = (v57 + (v80 * -0.0347)) + (v58 * 0.0347);
  v82 = v20 + (v59 * 0.1544);
  v83 = (v59 + (v82 * -0.1544)) + (v60 * 0.1544);
  v84 = (v60 + (v83 * -0.1544)) + (v61 * 0.1544);
  v85 = (v61 + (v84 * -0.1544)) + (v62 * 0.1544);
  v86 = (v62 + (v85 * -0.1544)) + (v63 * 0.1544);
  v87 = (v63 + (v86 * -0.1544)) + (v64 * 0.1544);
  v88 = (v64 + (v87 * -0.1544)) + (v65 * 0.1544);
  v89 = (v65 + (v88 * -0.1544)) + (v66 * 0.1544);
  v90 = (v66 + (v89 * -0.1544)) + (v67 * 0.1544);
  v91 = (v67 + (v90 * -0.1544)) + (v68 * 0.1544);
  v92 = (v68 + (v91 * -0.1544)) + (v69 * 0.1544);
  v93 = (v69 + (v92 * -0.1544)) + (v70 * 0.1544);
  v94 = (v70 + (v93 * -0.1544)) + (v71 * 0.1544);
  v95 = (v71 + (v94 * -0.1544)) + (v72 * 0.1544);
  v96 = (v72 + (v95 * -0.1544)) + (v73 * 0.1544);
  v97 = (v73 + (v96 * -0.1544)) + (v74 * 0.1544);
  v98 = (v74 + (v97 * -0.1544)) + (v75 * 0.1544);
  v99 = (v75 + (v98 * -0.1544)) + (v76 * 0.1544);
  v100 = (v76 + (v99 * -0.1544)) + (v77 * 0.1544);
  v101 = (v77 + (v100 * -0.1544)) + (v78 * 0.1544);
  v102 = (v78 + (v101 * -0.1544)) + (v79 * 0.1544);
  v103 = (v79 + (v102 * -0.1544)) + (v80 * 0.1544);
  v104 = (v80 + (v103 * -0.1544)) + (v81 * 0.1544);
  v321 = v24 + (v82 * 0.3826);
  v105 = (v82 + (v321 * -0.3826)) + (v83 * 0.3826);
  v328 = (v84 + (((v83 + (v105 * -0.3826)) + (v84 * 0.3826)) * -0.3826)) + (v85 * 0.3826);
  v332 = (v83 + (v105 * -0.3826)) + (v84 * 0.3826);
  v324 = (v86 + (((v85 + (v328 * -0.3826)) + (v86 * 0.3826)) * -0.3826)) + (v87 * 0.3826);
  v326 = (v85 + (v328 * -0.3826)) + (v86 * 0.3826);
  v323 = (v87 + (v324 * -0.3826)) + (v88 * 0.3826);
  v322 = (v88 + (v323 * -0.3826)) + (v89 * 0.3826);
  v106 = (v89 + (v322 * -0.3826)) + (v90 * 0.3826);
  v107 = (v90 + (v106 * -0.3826)) + (v91 * 0.3826);
  v108 = (v91 + (v107 * -0.3826)) + (v92 * 0.3826);
  v109 = (v92 + (v108 * -0.3826)) + (v93 * 0.3826);
  v110 = (v93 + (v109 * -0.3826)) + (v94 * 0.3826);
  v111 = (v94 + (v110 * -0.3826)) + (v95 * 0.3826);
  v112 = (v95 + (v111 * -0.3826)) + (v96 * 0.3826);
  v113 = (v96 + (v112 * -0.3826)) + (v97 * 0.3826);
  v114 = (v97 + (v113 * -0.3826)) + (v98 * 0.3826);
  v115 = (v98 + (v114 * -0.3826)) + (v99 * 0.3826);
  v116 = (v99 + (v115 * -0.3826)) + (v100 * 0.3826);
  v117 = (v100 + (v116 * -0.3826)) + (v101 * 0.3826);
  v118 = (v101 + (v117 * -0.3826)) + (v102 * 0.3826);
  v335 = (v102 + (v118 * -0.3826)) + (v103 * 0.3826);
  v340 = (v103 + (v335 * -0.3826)) + (v104 * 0.3826);
  v342 = (v104 + (v340 * -0.3826)) + (((v81 + (v104 * -0.1544)) + (((v58 + (v81 * -0.0347)) + (v5[167] * 0.0347)) * 0.1544)) * 0.3826);
  *(v5 + 144) = v347;
  v119 = (v321 + ((v28 + (v321 * 0.744)) * -0.744)) + (v105 * 0.744);
  v120 = (v105 + (v119 * -0.744)) + (v332 * 0.744);
  v121 = (v328 + (((v332 + (v120 * -0.744)) + (v328 * 0.744)) * -0.744)) + (v326 * 0.744);
  v122 = (v324 + (((v326 + (v121 * -0.744)) + (v324 * 0.744)) * -0.744)) + (v323 * 0.744);
  v123 = (v322 + (((v323 + (v122 * -0.744)) + (v322 * 0.744)) * -0.744)) + (v106 * 0.744);
  v124 = (v106 + (v123 * -0.744)) + (v107 * 0.744);
  v125 = (v107 + (v124 * -0.744)) + (v108 * 0.744);
  v126 = (v108 + (v125 * -0.744)) + (v109 * 0.744);
  v127 = (v109 + (v126 * -0.744)) + (v110 * 0.744);
  v128 = (v110 + (v127 * -0.744)) + (v111 * 0.744);
  v129 = (v111 + (v128 * -0.744)) + (v112 * 0.744);
  v130 = (v114 + (((v113 + (((v112 + (v129 * -0.744)) + (v113 * 0.744)) * -0.744)) + (v114 * 0.744)) * -0.744)) + (v115 * 0.744);
  v131 = (v116 + (((v115 + (v130 * -0.744)) + (v116 * 0.744)) * -0.744)) + (v117 * 0.744);
  v395 = v28 + (v321 * 0.744);
  v394 = v119;
  v5[145] = *&v345[469];
  v5[146] = *&v345[467];
  v393 = v120;
  v392 = (v332 + (v120 * -0.744)) + (v328 * 0.744);
  v5[147] = *&v345[465];
  v5[148] = *&v345[463];
  v132 = (v118 + (((v117 + (v131 * -0.744)) + (v118 * 0.744)) * -0.744)) + (v335 * 0.744);
  v391 = v121;
  v390 = (v326 + (v121 * -0.744)) + (v324 * 0.744);
  v5[149] = *&v345[461];
  v5[150] = *&v345[459];
  v389 = v122;
  v388 = (v323 + (v122 * -0.744)) + (v322 * 0.744);
  v5[151] = *&v345[457];
  v5[152] = *&v345[455];
  v387 = v123;
  v386 = v124;
  v5[153] = *&v345[453];
  v5[154] = *&v345[451];
  v385 = v125;
  v384 = v126;
  v5[155] = *&v345[449];
  v5[156] = *&v345[447];
  v383 = v127;
  v382 = v128;
  v5[157] = *&v345[445];
  v5[158] = *&v345[443];
  v381 = v129;
  v380 = (v112 + (v129 * -0.744)) + (v113 * 0.744);
  v5[159] = *&v345[441];
  v5[160] = *&v345[439];
  v379 = (v113 + (((v112 + (v129 * -0.744)) + (v113 * 0.744)) * -0.744)) + (v114 * 0.744);
  v378 = v130;
  v5[161] = *&v345[437];
  v5[162] = *&v345[435];
  v377 = (v115 + (v130 * -0.744)) + (v116 * 0.744);
  v376 = v131;
  v5[163] = *&v345[433];
  v5[164] = *&v345[431];
  v375 = (v117 + (v131 * -0.744)) + (v118 * 0.744);
  v374 = v132;
  v5[165] = *&v345[429];
  v5[166] = *&v345[427];
  v373 = (v335 + (v132 * -0.744)) + (v340 * 0.744);
  v372 = (v340 + (v373 * -0.744)) + (v342 * 0.744);
  v5[167] = *&v345[425];
  v133 = &v346;
  v134 = v397;
  v135 = 240;
  do
  {
    v136 = *(v133 - 2);
    *(v134 - 1) = *v133;
    *v134 = v136;
    v133 -= 4;
    v134 += 2;
    v135 -= 2;
  }

  while (v135);
  v137 = 0;
  v138 = 0.0;
  do
  {
    v139 = *&v396[v137];
    v140 = v138 + (v139 * 0.0347);
    v138 = v139 + (v140 * -0.0347);
    *&v396[v137] = v140;
    v137 += 4;
  }

  while (v137 != 960);
  v141 = 0;
  v142 = 0.0;
  do
  {
    v143 = *&v396[v141];
    v144 = v142 + (v143 * 0.1544);
    v142 = v143 + (v144 * -0.1544);
    *&v396[v141] = v144;
    v141 += 4;
  }

  while (v141 != 960);
  v145 = 0;
  v146 = 0.0;
  do
  {
    v147 = *&v396[v145];
    v148 = v146 + (v147 * 0.3826);
    v146 = v147 + (v148 * -0.3826);
    *&v396[v145] = v148;
    v145 += 4;
  }

  while (v145 != 960);
  v149 = 0;
  v150 = 0.0;
  do
  {
    v151 = *&v396[v149];
    v152 = v150 + (v151 * 0.744);
    v150 = v151 + (v152 * -0.744);
    *&v396[v149] = v152;
    v149 += 4;
  }

  while (v149 != 960);
  v343 = v28;
  v153 = v398;
  for (i = 1040; i != 80; i -= 32)
  {
    v155 = (&v348 + i);
    v156 = vrev64q_s32(v153[-1]);
    v157 = vrev64q_s32(*v153);
    v155[-1] = vextq_s8(v157, v157, 8uLL);
    *v155 = vextq_s8(v156, v156, 8uLL);
    v153 += 2;
  }

  v158 = 0;
  v159 = v5[173];
  v160 = v5[174];
  v161 = v5[175];
  v162 = v5[176];
  v163 = v5[177];
  v164 = v5[178];
  v165 = v5[179];
  v166 = v5[180];
  v167 = v5[181];
  v168 = v5[182];
  v169 = v5[183];
  v170 = v5[184];
  v171 = v5[185];
  v172 = v5[186];
  v173 = v5[170];
  v174 = v5[171];
  v175 = v5[172];
  v176 = v5[168];
  v177 = v5[169];
  v178 = v5[187];
  v179 = v5[188];
  v333 = v5[189];
  v336 = v5[190];
  v329 = v138 + (v176 * 0.0347);
  v180 = (v176 + (v329 * -0.0347)) + (v177 * 0.0347);
  v181 = (v177 + (v180 * -0.0347)) + (v173 * 0.0347);
  v182 = (v173 + (v181 * -0.0347)) + (v174 * 0.0347);
  v183 = (v174 + (v182 * -0.0347)) + (v175 * 0.0347);
  v184 = (v175 + (v183 * -0.0347)) + (v159 * 0.0347);
  v185 = (v159 + (v184 * -0.0347)) + (v160 * 0.0347);
  v186 = (v160 + (v185 * -0.0347)) + (v161 * 0.0347);
  v187 = (v161 + (v186 * -0.0347)) + (v162 * 0.0347);
  v188 = (v162 + (v187 * -0.0347)) + (v163 * 0.0347);
  v189 = (v163 + (v188 * -0.0347)) + (v164 * 0.0347);
  v190 = (v164 + (v189 * -0.0347)) + (v165 * 0.0347);
  v191 = (v165 + (v190 * -0.0347)) + (v166 * 0.0347);
  v192 = (v166 + (v191 * -0.0347)) + (v167 * 0.0347);
  v193 = (v167 + (v192 * -0.0347)) + (v168 * 0.0347);
  v194 = (v168 + (v193 * -0.0347)) + (v169 * 0.0347);
  v195 = (v169 + (v194 * -0.0347)) + (v170 * 0.0347);
  v196 = (v170 + (v195 * -0.0347)) + (v171 * 0.0347);
  v197 = (v171 + (v196 * -0.0347)) + (v172 * 0.0347);
  v198 = (v172 + (v197 * -0.0347)) + (v178 * 0.0347);
  v199 = (v178 + (v198 * -0.0347)) + (v179 * 0.0347);
  v200 = (v179 + (v199 * -0.0347)) + (v333 * 0.0347);
  v334 = (v333 + (v200 * -0.0347)) + (v336 * 0.0347);
  v201 = (v336 + (v334 * -0.0347)) + (v5[191] * 0.0347);
  v337 = v142 + (v329 * 0.1544);
  v330 = (v329 + (v337 * -0.1544)) + (v180 * 0.1544);
  v202 = (v180 + (v330 * -0.1544)) + (v181 * 0.1544);
  v203 = (v181 + (v202 * -0.1544)) + (v182 * 0.1544);
  v204 = (v182 + (v203 * -0.1544)) + (v183 * 0.1544);
  v205 = (v183 + (v204 * -0.1544)) + (v184 * 0.1544);
  v206 = (v184 + (v205 * -0.1544)) + (v185 * 0.1544);
  v207 = (v185 + (v206 * -0.1544)) + (v186 * 0.1544);
  v208 = (v186 + (v207 * -0.1544)) + (v187 * 0.1544);
  v209 = (v187 + (v208 * -0.1544)) + (v188 * 0.1544);
  v210 = (v188 + (v209 * -0.1544)) + (v189 * 0.1544);
  v211 = (v189 + (v210 * -0.1544)) + (v190 * 0.1544);
  v212 = (v190 + (v211 * -0.1544)) + (v191 * 0.1544);
  v213 = (v191 + (v212 * -0.1544)) + (v192 * 0.1544);
  v214 = (v192 + (v213 * -0.1544)) + (v193 * 0.1544);
  v215 = (v193 + (v214 * -0.1544)) + (v194 * 0.1544);
  v216 = (v194 + (v215 * -0.1544)) + (v195 * 0.1544);
  v217 = (v195 + (v216 * -0.1544)) + (v196 * 0.1544);
  v218 = (v196 + (v217 * -0.1544)) + (v197 * 0.1544);
  v219 = (v197 + (v218 * -0.1544)) + (v198 * 0.1544);
  v220 = (v198 + (v219 * -0.1544)) + (v199 * 0.1544);
  v221 = (v199 + (v220 * -0.1544)) + (v200 * 0.1544);
  v222 = (v200 + (v221 * -0.1544)) + (v334 * 0.1544);
  v325 = v146 + (v337 * 0.3826);
  v338 = (v337 + (v325 * -0.3826)) + (v330 * 0.3826);
  v327 = (v330 + (v338 * -0.3826)) + (v202 * 0.3826);
  v223 = (v202 + (v327 * -0.3826)) + (v203 * 0.3826);
  v224 = (v203 + (v223 * -0.3826)) + (v204 * 0.3826);
  v225 = (v204 + (v224 * -0.3826)) + (v205 * 0.3826);
  v226 = (v205 + (v225 * -0.3826)) + (v206 * 0.3826);
  v227 = (v206 + (v226 * -0.3826)) + (v207 * 0.3826);
  v228 = (v207 + (v227 * -0.3826)) + (v208 * 0.3826);
  v229 = (v208 + (v228 * -0.3826)) + (v209 * 0.3826);
  v230 = (v209 + (v229 * -0.3826)) + (v210 * 0.3826);
  v231 = (v210 + (v230 * -0.3826)) + (v211 * 0.3826);
  v232 = (v211 + (v231 * -0.3826)) + (v212 * 0.3826);
  v233 = (v212 + (v232 * -0.3826)) + (v213 * 0.3826);
  v234 = (v213 + (v233 * -0.3826)) + (v214 * 0.3826);
  v235 = (v214 + (v234 * -0.3826)) + (v215 * 0.3826);
  v236 = (v215 + (v235 * -0.3826)) + (v216 * 0.3826);
  v237 = (v216 + (v236 * -0.3826)) + (v217 * 0.3826);
  v238 = (v217 + (v237 * -0.3826)) + (v218 * 0.3826);
  v239 = (v218 + (v238 * -0.3826)) + (v219 * 0.3826);
  v240 = (v219 + (v239 * -0.3826)) + (v220 * 0.3826);
  v241 = (v220 + (v240 * -0.3826)) + (v221 * 0.3826);
  v242 = (v221 + (v241 * -0.3826)) + (v222 * 0.3826);
  v331 = (v222 + (v242 * -0.3826)) + (((v334 + (v222 * -0.1544)) + (v201 * 0.1544)) * 0.3826);
  v243 = (v325 + ((v150 + (v325 * 0.744)) * -0.744)) + (v338 * 0.744);
  v339 = (v338 + (v243 * -0.744)) + (v327 * 0.744);
  v244 = (v327 + (v339 * -0.744)) + (v223 * 0.744);
  v341 = (v223 + (v244 * -0.744)) + (v224 * 0.744);
  v245 = (v224 + (v341 * -0.744)) + (v225 * 0.744);
  v246 = (v225 + (v245 * -0.744)) + (v226 * 0.744);
  v247 = (v226 + (v246 * -0.744)) + (v227 * 0.744);
  v248 = (v227 + (v247 * -0.744)) + (v228 * 0.744);
  v249 = (v228 + (v248 * -0.744)) + (v229 * 0.744);
  v250 = (v229 + (v249 * -0.744)) + (v230 * 0.744);
  v251 = (v230 + (v250 * -0.744)) + (v231 * 0.744);
  v252 = (v231 + (v251 * -0.744)) + (v232 * 0.744);
  v253 = (v232 + (v252 * -0.744)) + (v233 * 0.744);
  v254 = (v233 + (v253 * -0.744)) + (v234 * 0.744);
  v255 = (v234 + (v254 * -0.744)) + (v235 * 0.744);
  v256 = (v235 + (v255 * -0.744)) + (v236 * 0.744);
  v257 = (v236 + (v256 * -0.744)) + (v237 * 0.744);
  v258 = (v237 + (v257 * -0.744)) + (v238 * 0.744);
  v259 = (v238 + (v258 * -0.744)) + (v239 * 0.744);
  v260 = (v239 + (v259 * -0.744)) + (v240 * 0.744);
  v261 = (v240 + (v260 * -0.744)) + (v241 * 0.744);
  v262 = v5[129] + (v16 * -0.0010481);
  v263 = ((v5[128] + (v16 * -0.0015868)) + (v20 * 0.0012716)) + (v24 * -0.0010481);
  v264 = (v262 + (v20 * 0.00084837)) + (v24 * 0.0013447);
  *(v5 + 168) = v346;
  v371 = v150 + (v325 * 0.744);
  v370 = v243;
  v5[169] = *&v345[468];
  v5[170] = *&v345[466];
  v369 = v339;
  v368 = v244;
  v5[171] = *&v345[464];
  v5[172] = *&v345[462];
  v367 = v341;
  v366 = v245;
  v5[173] = *&v345[460];
  v5[174] = *&v345[458];
  v365 = v246;
  v364 = v247;
  v5[175] = *&v345[456];
  v5[176] = *&v345[454];
  v363 = v248;
  v362 = v249;
  v5[177] = *&v345[452];
  v5[178] = *&v345[450];
  v361 = v250;
  v360 = v251;
  v5[179] = *&v345[448];
  v5[180] = *&v345[446];
  v359 = v252;
  v358 = v253;
  v5[181] = *&v345[444];
  v5[182] = *&v345[442];
  v357 = v254;
  v356 = v255;
  v5[183] = *&v345[440];
  v5[184] = *&v345[438];
  v355 = v256;
  v354 = v257;
  v5[185] = *&v345[436];
  v5[186] = *&v345[434];
  v353 = v258;
  v352 = v259;
  v5[187] = *&v345[432];
  v5[188] = *&v345[430];
  v351 = v260;
  v350 = v261;
  v5[189] = *&v345[428];
  v5[190] = *&v345[426];
  v349 = (v241 + (v261 * -0.744)) + (v242 * 0.744);
  v348 = (v242 + (v349 * -0.744)) + (v331 * 0.744);
  v5[191] = *&v345[424];
  v265 = v263 + (v343 * 0.00084837);
  v266 = v264 + (v343 * -0.0010776);
  v267 = v5[132];
  v268 = v5[133];
  do
  {
    v269 = *(&v372 + v158);
    v270 = v265 + (v269 * 0.0347);
    v265 = v269 + (v270 * -0.0347);
    *(&v372 + v158) = v270;
    v158 += 4;
  }

  while (v158 != 960);
  v271 = 0;
  v272 = ((v267 + (v138 * -0.0017069)) + (v142 * 0.0013678)) + (v146 * -0.0011274);
  v273 = ((v268 + (v138 * -0.0011274)) + (v142 * 0.00091257)) + (v146 * 0.0010309);
  v5[128] = v265;
  do
  {
    v274 = *(&v372 + v271);
    v275 = v266 + (v274 * 0.3826);
    v266 = v274 + (v275 * -0.3826);
    *(&v372 + v271) = v275;
    v271 += 4;
  }

  while (v271 != 960);
  v276 = 0;
  v277 = v272 + (v150 * 0.00091257);
  v5[129] = v266;
  do
  {
    v278 = *(&v348 + v276);
    v279 = v277 + (v278 * 0.1544);
    v277 = v278 + (v279 * -0.1544);
    *(&v348 + v276) = v279;
    v276 += 4;
  }

  while (v276 != 960);
  v280 = 0;
  v281 = v273 + (v150 * -0.00082615);
  v5[132] = v277;
  do
  {
    v282 = *(&v348 + v280);
    v283 = v281 + (v282 * 0.744);
    v281 = v282 + (v283 * -0.744);
    *(&v348 + v280) = v283;
    v280 += 4;
  }

  while (v280 != 960);
  v5[133] = v281;
  if ((v2 - v1) >= 0x10)
  {
    v287 = 0;
    v288.i64[0] = 0x3F0000003F000000;
    v288.i64[1] = 0x3F0000003F000000;
    do
    {
      v289 = *(&v372 + v287);
      v290 = *(&v348 + v287);
      *(v1 + v287) = vmulq_f32(vaddq_f32(v289, v290), v288);
      *(v2 + v287) = vmulq_f32(vsubq_f32(v289, v290), v288);
      v287 += 16;
    }

    while (v287 != 960);
  }

  else
  {
    for (j = 0; j != 960; j += 4)
    {
      v285 = *(&v372 + j);
      v286 = *(&v348 + j);
      *(v1 + j) = (v285 + v286) * 0.5;
      *(v2 + j) = (v285 - v286) * 0.5;
    }
  }

  v291 = 0;
  v292 = v345;
  do
  {
    v293 = v292 - 8;
    v399 = vld2q_f32(v293);
    v400 = vld2q_f32(v292);
    v294 = (&v372 + v291);
    *v294 = v399.val[1];
    v294[1] = v400.val[1];
    v295 = (&v348 + v291);
    *v295 = v399.val[0];
    v295[1] = v400.val[0];
    v292 += 16;
    v291 += 32;
  }

  while (v291 != 960);
  v296 = 0;
  v297 = v5[136];
  do
  {
    v298 = *(&v372 + v296);
    v299 = v297 + (v298 * 0.0347);
    v297 = v298 + (v299 * -0.0347);
    *(&v372 + v296) = v299;
    v296 += 4;
  }

  while (v296 != 960);
  v300 = 0;
  v5[136] = v297;
  v301 = v5[137];
  do
  {
    v302 = *(&v372 + v300);
    v303 = v301 + (v302 * 0.3826);
    v301 = v302 + (v303 * -0.3826);
    *(&v372 + v300) = v303;
    v300 += 4;
  }

  while (v300 != 960);
  v304 = 0;
  v5[137] = v301;
  v305 = v5[140];
  do
  {
    v306 = *(&v348 + v304);
    v307 = v305 + (v306 * 0.1544);
    v305 = v306 + (v307 * -0.1544);
    *(&v348 + v304) = v307;
    v304 += 4;
  }

  while (v304 != 960);
  v308 = 0;
  v5[140] = v305;
  v309 = v5[141];
  do
  {
    v310 = *(&v348 + v308);
    v311 = v309 + (v310 * 0.744);
    v309 = v310 + (v311 * -0.744);
    *(&v348 + v308) = v311;
    v308 += 4;
  }

  while (v308 != 960);
  v5[141] = v309;
  if ((v4 - v3) >= 0x20)
  {
    v315 = 0;
    v316.i64[0] = 0x3F0000003F000000;
    v316.i64[1] = 0x3F0000003F000000;
    do
    {
      v317 = *(&v372 + v315);
      v318 = *(&v348 + v315);
      v319 = vmulq_f32(vaddq_f32(v317, v318), v316);
      *v3 = vcvtq_f64_f32(*v319.f32);
      v3[1] = vcvt_hight_f64_f32(v319);
      v3 += 2;
      v320 = vmulq_f32(vsubq_f32(v317, v318), v316);
      *v4 = vcvtq_f64_f32(*v320.f32);
      v4[1] = vcvt_hight_f64_f32(v320);
      v4 += 2;
      v315 += 16;
    }

    while (v315 != 960);
  }

  else
  {
    for (k = 0; k != 240; ++k)
    {
      v313 = *(&v372 + k);
      v314 = *(&v348 + k);
      v3->f64[k] = ((v313 + v314) * 0.5);
      v4->f64[k] = ((v313 - v314) * 0.5);
    }
  }

  return result;
}

uint64_t webrtc::IvfFileWriter::WriteHeader(FILE **this)
{
  v35 = *MEMORY[0x277D85DE8];
  if (fseek(this[9], 0, 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
    }

    return 0;
  }

  v25 = 0;
  __ptr = 0x20000046494B44;
  v10 = *this;
  if (*this <= 2)
  {
    if (v10 == 1)
    {
      v25 = 808996950;
      goto LABEL_17;
    }

    if (v10 == 2)
    {
      v25 = 809062486;
      goto LABEL_17;
    }
  }

  else
  {
    switch(v10)
    {
      case 3:
        v25 = 825251393;
        goto LABEL_17;
      case 4:
        v25 = 875967048;
        goto LABEL_17;
      case 5:
        v25 = 892744264;
        goto LABEL_17;
    }
  }

  v25 = 707406378;
LABEL_17:
  v26 = *(this + 8);
  if (*(this + 48))
  {
    v11 = 1000;
  }

  else
  {
    v11 = 90000;
  }

  v27 = v11;
  v28 = BYTE2(v11);
  v29 = 256;
  v30 = 0;
  v12 = this[3];
  v31 = v12;
  v32 = BYTE2(v12);
  v33 = BYTE3(v12);
  v34 = 0;
  v13 = fwrite(&__ptr, 1uLL, 0x20uLL, this[9]) == 32;
  result = v13;
  if (v13)
  {
    if (this[1] <= 0x1F)
    {
      this[1] = 32;
    }
  }

  else
  {
    v14 = v13;
    v15 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    v23 = v15;
    result = v14;
    if ((v23 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
      return v14;
    }
  }

  return result;
}

uint64_t webrtc::IvfFileWriter::WriteFrame(webrtc::IvfFileWriter *this, uint64_t a2, int a3)
{
  if (!*(this + 9))
  {
    return 0;
  }

  if (!*(this + 3))
  {
    if (*a2 && (v13 = *(a2 + 4)) != 0)
    {
      *(this + 16) = *a2;
    }

    else
    {
      *(this + 16) = 1280;
      LOWORD(v13) = 720;
    }

    *(this + 17) = v13;
    *(this + 48) = *(a2 + 152) == 0;
    *this = a3;
    result = webrtc::IvfFileWriter::WriteHeader(this);
    if (!result)
    {
      return result;
    }

    if (*this >= 6u)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
    }
  }

  if (*(this + 48) == 1)
  {
    v5 = *(a2 + 16);
    v6 = *(this + 5);
    if (v6 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v8 = *(a2 + 152);
  if (*(this + 68))
  {
    v9 = *(this + 16);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    v12 = v11 != 0 && v10;
    if (v11 != 0x80000000)
    {
      v12 = v11 >= 0;
    }

    if (!v12)
    {
      v11 |= 0xFFFFFFFF00000000;
    }

    v5 = v11 + *(this + 7);
  }

  else
  {
    v5 = *(a2 + 152);
  }

  *(this + 7) = v5;
  *(this + 16) = v8;
  *(this + 68) = 1;
  v6 = *(this + 5);
  if (v6 != -1)
  {
LABEL_26:
    if (v5 < v6 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
    }
  }

LABEL_29:
  *(this + 5) = v5;
  v28 = *(a2 + 184);
  v29 = v28 << 31;
  v30 = v28;
  v31 = *(a2 + 136);
  if (v31)
  {
    v32 = (*(*v31 + 40))(v31);
  }

  else
  {
    v32 = 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = (a2 + 208);
  v36 = v30 & (v29 >> 63);
  while (*v35)
  {
    while (1)
    {
      v37 = a2 + 208;
      v38 = *v35;
      do
      {
        if (*(v38 + 32) >= v34)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < v34));
      }

      while (v38);
      if (v37 != v35 && *(v37 + 32) <= v34)
      {
        v39 = *(v37 + 40);
        if (v39)
        {
          break;
        }
      }

      if (++v34 > v36)
      {
        goto LABEL_49;
      }
    }

    result = webrtc::IvfFileWriter::WriteOneSpatialLayer(this, v5, v32, *(v37 + 40));
    v32 += v39;
    ++v34;
    v33 = 1;
    if (result)
    {
      v40 = v34 > v36;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      return result;
    }
  }

LABEL_49:
  if (v33)
  {
    return 1;
  }

  v41 = *(a2 + 144);

  return webrtc::IvfFileWriter::WriteOneSpatialLayer(this, v5, v32, v41);
}

uint64_t webrtc::IvfFileWriter::WriteOneSpatialLayer(webrtc::IvfFileWriter *this, uint64_t a2, const unsigned __int8 *a3, size_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(this + 2);
  if (v7 && a4 + *(this + 1) + 12 > v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
    }

    result = *(this + 9);
    if (result)
    {
      if (!*(this + 3) || (webrtc::IvfFileWriter::WriteHeader(this), (result = *(this + 9)) != 0))
      {
        fclose(result);
        result = 0;
        *(this + 9) = 0;
      }
    }
  }

  else
  {
    __ptr = a4;
    v24 = BYTE2(a4);
    v25 = BYTE3(a4);
    v26 = a2;
    if (fwrite(&__ptr, 1uLL, 0xCuLL, *(this + 9)) == 12 && fwrite(a3, 1uLL, a4, *(this + 9)) == a4)
    {
      *(this + 1) += a4 + 12;
      ++*(this + 3);
      return 1;
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/ivf_file_writer.cc");
      }

      return 0;
    }
  }

  return result;
}

void webrtc::JitterEstimator::JitterEstimator(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 16))(&__p, a3, "WebRTC-JitterEstimatorConfig", 28);
  *a1 = 0;
  a1[8] = 0;
  a1[16] = 0;
  a1[24] = 0;
  a1[32] = 0;
  a1[28] = 0;
  a1[40] = 0;
  a1[48] = 0;
  a1[56] = 0;
  a1[64] = 0;
  a1[80] = 0;
  a1[72] = 0;
  a1[88] = 0;
  a1[96] = 1;
  operator new();
}

double webrtc::JitterEstimator::Reset(webrtc::JitterEstimator *this)
{
  v3 = (this + 208);
  v2 = *(this + 26);
  *(this + 23) = 0x407F400000000000;
  *(this + 168) = xmmword_273B94820;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 200, v2);
  *(v3 - 1) = v3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = v3;
  v3[3] = 0;
  if (v3[6])
  {
    v4 = v3 + 4;
    v5 = *(this + 31);
    v6 = *(*(this + 30) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 32) = 0;
    if (v5 != v4)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v4);
    }
  }

  *(this + 33) = 0;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 288, *(this + 37));
  *(this + 36) = this + 296;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = this + 296;
  *(this + 40) = 0;
  if (*(this + 43))
  {
    v9 = *(this + 42);
    v10 = *(*(this + 41) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(this + 43) = 0;
    if (v9 != (this + 328))
    {
      do
      {
        v12 = *(v9 + 1);
        operator delete(v9);
        v9 = v12;
      }

      while (v12 != (this + 328));
    }
  }

  *(this + 44) = 0;
  if (*(this + 392) == 1)
  {
    *(this + 392) = 0;
    if (*(this + 408) != 1)
    {
LABEL_9:
      if (*(this + 424) != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (*(this + 408) != 1)
  {
    goto LABEL_9;
  }

  *(this + 408) = 0;
  if (*(this + 424) == 1)
  {
LABEL_10:
    *(this + 424) = 0;
  }

LABEL_11:
  *(this + 27) = xmmword_273B94830;
  *(this + 56) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 62) = 0;
  *(this + 488) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 130) = 1;
  v13 = *(this + 66);
  if (v13 >= 2)
  {
    if (v13)
    {
      v14 = *(this + 67);
    }

    else
    {
      v14 = this + 536;
    }

    bzero(v14, (4 * v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v15 = *(this + 72);
  if (v15 >= 2)
  {
    if (v15)
    {
      v16 = *(this + 73);
    }

    else
    {
      v16 = this + 584;
    }

    bzero(v16, (4 * v15) & 0xFFFFFFFFFFFFFFF8);
  }

  *(this + 87) = 0;
  *(this + 704) = 0;
  *(this + 39) = xmmword_273B92200;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 688) = 0;
  *(this + 104) = xmmword_273B93680;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0x3F1A36E2EB1C432DLL;
  result = 100.0;
  *(this + 9) = xmmword_273B93690;
  *(this + 20) = 0x3DDB7CDFD9D7BDBBLL;
  return result;
}

void webrtc::JitterEstimator::~JitterEstimator(webrtc::JitterEstimator *this)
{
  v2 = *(this + 89);
  if (v2)
  {
    *(this + 90) = v2;
    operator delete(v2);
  }

  if ((*(this + 576) & 1) == 0)
  {
    if ((*(this + 528) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(this + 67));
    if (!*(this + 43))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  operator delete(*(this + 73));
  if (*(this + 528))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(this + 43))
  {
    goto LABEL_11;
  }

LABEL_9:
  v3 = *(this + 42);
  v4 = *(*(this + 41) + 8);
  v5 = *v3;
  *(v5 + 8) = v4;
  *v4 = v5;
  *(this + 43) = 0;
  if (v3 != (this + 328))
  {
    do
    {
      v6 = *(v3 + 1);
      operator delete(v3);
      v3 = v6;
    }

    while (v6 != (this + 328));
  }

LABEL_11:
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 288, *(this + 37));
  if (*(this + 32))
  {
    v7 = *(this + 31);
    v8 = *(*(this + 30) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 32) = 0;
    if (v7 != (this + 240))
    {
      do
      {
        v10 = *(v7 + 1);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (this + 240));
    }
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 200, *(this + 26));
}

void webrtc::JitterEstimator::UpdateEstimate(webrtc::JitterEstimator *this, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  if (*(this + 424) != 1)
  {
    v4 = 0;
    v5 = *(this + 47);
    v6 = a3;
    if (v5 > 4)
    {
      goto LABEL_4;
    }

LABEL_7:
    *(this + 46) = *(this + 46) + v6;
    v7 = v5 + 1;
    goto LABEL_8;
  }

  v4 = *(this + 52);
  v5 = *(this + 47);
  v6 = a3;
  if (v5 <= 4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v5 != 5)
  {
    goto LABEL_9;
  }

  *(this + 21) = *(this + 46) / 5.0;
  v7 = 6;
LABEL_8:
  *(this + 47) = v7;
LABEL_9:
  v9 = *(this + 21);
  v8 = *(this + 22);
  v10 = v6 * 0.03 + v9 * 0.97;
  v11 = sqrt(v8);
  if (v9 + v11 + v11 > v6)
  {
    *(this + 21) = v10;
  }

  v12 = (v6 - v10) * (v6 - v10) * 0.03 + v8 * 0.97;
  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  v13 = *(this + 23) * 0.9999;
  if (v13 < v6)
  {
    v13 = v6;
  }

  *(this + 22) = v12;
  *(this + 23) = v13;
  if (*this == 1)
  {
    webrtc::MovingPercentileFilter<long long>::Insert();
  }

  if (*(this + 16) == 1)
  {
    webrtc::MovingPercentileFilter<long long>::Insert();
  }

  if ((*(this + 424) & 1) == 0)
  {
    *(this + 424) = 1;
    *(this + 52) = a3;
    return;
  }

  v14 = (a3 - v4);
  *(this + 52) = a3;
  v15 = (this + 32);
  if (!*(this + 40))
  {
  }

  v16 = sqrt(*(this + 55));
  v17 = (*v15 * v16 + 0.5) * 1000.0;
  v18 = 0x8000000000000000;
  if (v17 == INFINITY)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
    if (v17 == -INFINITY || v19 == 0x8000000000000000)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x8000000000000000;
    }

    else if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = -v19;
    }
  }

  if (a2 < v19)
  {
    v19 = a2;
  }

  if (v19 <= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 / 0x3E8;
  if (v21 % 0x3E8 <= 0x1F3)
  {
    v23 = v21 / 0x3E8;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (-v21 % 0x3E8uLL <= 0x1F4)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 - -v21 / 0x3E8uLL;
  if ((v21 & 0x8000000000000000) != 0)
  {
    v23 = v25;
  }

  v26 = v23;
  v27 = *(this + 13) * v14 + *(this + 14);
  v28 = v23 - v27;
  v29 = (this + 48);
  if (!*(this + 56))
  {
  }

  v30 = *v29;
  if (vabdd_f64(v26, v27) >= v16 * *v29)
  {
    if (*(this + 21) + *v31 * sqrt(*(this + 22)) >= v6)
    {
      if (v28 < 0.0)
      {
        v38 = -v30;
      }

      else
      {
        v38 = v30;
      }

      v28 = v16 * v38;
LABEL_73:
      webrtc::JitterEstimator::EstimateRandomJitter(this, v28);
      goto LABEL_74;
    }
  }

  v32 = (this + 80);
  if (!*(this + 88))
  {
  }

  v33 = *v32;
  if (*(this + 16) == 1)
  {
    if (*(this + 38))
    {
      v34 = *(*(this + 39) + 32);
      if (v33 * v34 >= v14)
      {
LABEL_72:
        if (*(this + 96) != 1)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v34 = 0.0;
      if (v33 * 0.0 >= v14)
      {
        goto LABEL_72;
      }
    }
  }

  else
  {
    v34 = *(this + 23);
    if (v33 * v34 >= v14)
    {
      goto LABEL_72;
    }
  }

  webrtc::JitterEstimator::EstimateRandomJitter(this, v28);
  if (v21 % 0x3E8 <= 0x1F3)
  {
    v35 = v21 / 0x3E8;
  }

  else
  {
    v35 = v22 + 1;
  }

  if (-v21 % 0x3E8uLL <= 0x1F4)
  {
    v36 = 0;
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 - -v21 / 0x3E8uLL;
  if ((v21 & 0x8000000000000000) != 0)
  {
    v35 = v37;
  }

  webrtc::FrameDelayVariationKalmanFilter::PredictAndUpdate((this + 104), v35, v14, v34, *(this + 55));
LABEL_74:
  v39 = *(this + 58);
  if (v39 < 0x1E)
  {
    *(this + 58) = v39 + 1;
    return;
  }

  if (*this == 1)
  {
    if (*(this + 27))
    {
      v40 = *(*(this + 28) + 32);
      if (*(this + 16) != 1)
      {
        goto LABEL_86;
      }

LABEL_81:
      if (*(this + 38))
      {
        v41 = *(*(this + 39) + 32);
      }

      else
      {
        v41 = 0.0;
      }

      goto LABEL_88;
    }

    v40 = 0.0;
    if (*(this + 16) == 1)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v40 = *(this + 21);
    if (*(this + 16) == 1)
    {
      goto LABEL_81;
    }
  }

LABEL_86:
  v41 = *(this + 23);
LABEL_88:
  v42 = *(this + 13) * (v41 - v40);
  v43 = sqrt(*(this + 55)) * 2.33 + -30.0;
  if (v43 < 1.0)
  {
    v43 = 1.0;
  }

  v44 = (v42 + v43) * 1000.0;
  if (v44 == INFINITY)
  {
    goto LABEL_91;
  }

  if (v44 == -INFINITY || (v45 = v44, v44 <= 999))
  {
    v46 = (this + 400);
    if (!*(this + 408))
    {
    }

    v45 = *v46;
    goto LABEL_97;
  }

  if (v45 > 0x989680)
  {
LABEL_91:
    v45 = 10000000;
  }

LABEL_97:
  if ((*(this + 408) & 1) == 0)
  {
    *(this + 408) = 1;
  }

  *(this + 50) = v45;
  *(this + 57) = v45;
}

void webrtc::JitterEstimator::EstimateRandomJitter(webrtc::JitterEstimator *this, double a2)
{
  v4 = (*(**(this + 92) + 16))(*(this + 92));
  if (*(this + 392) != 1)
  {
    *(this + 392) = 1;
    *(this + 48) = v4;
    v23 = *(this + 56);
    if (!v23)
    {
      return;
    }

LABEL_33:
    v29 = (v23 - 1) / v23;
    v30 = v23 + 1;
    if (v23 + 1 < 0x190)
    {
      v31 = v23 + 1;
    }

    else
    {
      v31 = 400;
    }

    *(this + 56) = v31;
    if (*(this + 78))
    {
      v32 = *(this + 81);
      if (v32 == INFINITY)
      {
        goto LABEL_53;
      }

      if (v32 == -INFINITY || (v33 = v32, v32 < 1))
      {
LABEL_49:
        v36 = *(this + 54);
        v37 = (1.0 - v29) * a2 + v29 * v36;
        v38 = (a2 - v36) * ((1.0 - v29) * (a2 - v36)) + v29 * *(this + 55);
        if (v38 < 1.0)
        {
          v38 = 1.0;
        }

        *(this + 54) = v37;
        *(this + 55) = v38;
        return;
      }
    }

    else
    {
      v33 = 0.0;
      if (0.0 < 1)
      {
        goto LABEL_49;
      }
    }

    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v33 <= 0x3B9ACA00)
      {
        v34 = 0x3B9ACA00 / v33;
        if (v34 >= 0x30D40)
        {
          v34 = 200000;
        }

        v35 = 30000.0 / v34;
        if (v30 <= 0x1D)
        {
          v35 = ((30 - v31) + v31 * v35) / 30.0;
        }

        v29 = pow(v29, v35);
      }

      goto LABEL_49;
    }

LABEL_53:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/api/units/frequency.h", 68, "interval.IsFinite()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v39);
    webrtc::JitterEstimator::GetJitterEstimate();
    return;
  }

  v9 = *(this + 48);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x8000000000000000)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0x8000000000000000)
    {
      v10 = 0x8000000000000000;
    }

    else
    {
      v10 = v4 - v9;
    }
  }

  v13 = *(this + 78);
  v14 = *(this + 89);
  v15 = (*(this + 90) - v14) >> 3;
  v16 = *(this + 84);
  if (v13 == v15)
  {
    if (v13 <= v16)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = *(v14 + 8 * v16);
    v18 = v13 - 1;
    *(this + 78) = v18;
    v19 = *(this + 81);
    v20 = v17 - v19;
    v21 = v19 - v20 / v18;
    *(this + 81) = v21;
    *(this + 82) = *(this + 82) - v20 * (v17 - v21);
    if (v17 >= *(this + 85))
    {
      *(this + 688) = 1;
    }

    if (v17 <= *(this + 87))
    {
      *(this + 704) = 1;
    }
  }

  if (v15 <= v16)
  {
    goto LABEL_52;
  }

  *(v14 + 8 * v16) = v10;
  v22 = *(this + 78);
  if (!v22)
  {
    *(this + 85) = v10;
    *(this + 688) = 0;
LABEL_27:
    *(this + 87) = v10;
    *(this + 704) = 0;
    goto LABEL_28;
  }

  if (*(this + 85) <= v10)
  {
    *(this + 85) = v10;
    *(this + 688) = 0;
  }

  if (*(this + 87) >= v10)
  {
    goto LABEL_27;
  }

LABEL_28:
  v24 = *(this + 80);
  if (v24 <= v10)
  {
    v24 = v10;
  }

  *(this + 80) = v24;
  v25 = *(this + 79);
  if (v25 >= v10)
  {
    v25 = v10;
  }

  *(this + 79) = v25;
  *(this + 83) = *(this + 83) + v10;
  *(this + 78) = v22 + 1;
  v26 = *(this + 81);
  v27 = v10 - v26;
  v28 = v26 + v27 / (v22 + 1);
  *(this + 81) = v28;
  *(this + 82) = *(this + 82) + v27 * (v10 - v28);
  *(this + 84) = (v16 + 1) % v15;
  *(this + 48) = v4;
  v23 = *(this + 56);
  if (v23)
  {
    goto LABEL_33;
  }
}

void webrtc::JitterEstimator::GetJitterEstimate(uint64_t a1)
{
  if (*a1 != 1)
  {
    v2 = *(a1 + 168);
    if (*(a1 + 16) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (!*(a1 + 216))
  {
    v2 = 0.0;
    if (*(a1 + 16) == 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v3 = *(a1 + 184);
    goto LABEL_11;
  }

  v2 = *(*(a1 + 224) + 32);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(a1 + 304))
  {
    v3 = *(*(a1 + 312) + 32);
  }

  else
  {
    v3 = 0.0;
  }

LABEL_11:
  v4 = *(a1 + 104) * (v3 - v2);
  v5 = sqrt(*(a1 + 440)) * 2.33 + -30.0;
  if (v5 < 1.0)
  {
    v5 = 1.0;
  }

  v6 = (v4 + v5) * 1000.0;
  if (v6 == INFINITY)
  {
    goto LABEL_14;
  }

  if (v6 == -INFINITY || (v7 = v6, v6 <= 999))
  {
    v8 = (a1 + 400);
    if (!*(a1 + 408))
    {
    }

    v7 = *v8;
  }

  else if (v7 > 0x989680)
  {
LABEL_14:
    v7 = 10000000;
  }

  if ((*(a1 + 408) & 1) == 0)
  {
    *(a1 + 408) = 1;
  }

  *(a1 + 400) = v7;
  v9 = (*(**(a1 + 736) + 16))(*(a1 + 736));
  v14 = *(a1 + 472);
  v15 = v9 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x8000000000000000;
  if (v15 || (v9 != 0x8000000000000000 ? (v16 = v14 == 0x7FFFFFFFFFFFFFFFLL) : (v16 = 1), !v16 ? (v17 = v9 - v14 < 60000001) : (v17 = 1), !v17))
  {
    *(a1 + 480) = 0;
  }

  if (!*(a1 + 624))
  {
    v19 = 0.0;
    if (0.0 < 1)
    {
      return;
    }

    goto LABEL_42;
  }

  v18 = *(a1 + 648);
  if (v18 == INFINITY)
  {
    goto LABEL_47;
  }

  if (v18 != -INFINITY)
  {
    v19 = v18;
    if (v18 >= 1)
    {
LABEL_42:
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

LABEL_47:
      webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/api/units/frequency.h", 68, "interval.IsFinite()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v10, v11, v12, v13, v21);
      webrtc::IceCandidateInterface::server_url(v20);
    }
  }
}

uint64_t webrtc::SdpTypeFromString(_DWORD *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *(a1 + 1);
    if (v2 != 5)
    {
      if (v2 != 6)
      {
        if (v2 != 8)
        {
          return 0;
        }

        a1 = *a1;
LABEL_10:
        if (*a1 == 0x726577736E617270)
        {
          return 0x100000001;
        }

        if (*a1 == 0x6B6361626C6C6F72)
        {
          return 0x100000003;
        }

        return 0;
      }

      if (**a1 != 2004053601 || *(*a1 + 4) != 29285)
      {
        return 0;
      }

      return 0x100000002;
    }

    if (**a1 != 1701209711 || *(*a1 + 4) != 114)
    {
      return 0;
    }
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 != 5)
    {
      if (v1 != 6)
      {
        if (v1 != 8)
        {
          return 0;
        }

        goto LABEL_10;
      }

      if (*a1 != 2004053601 || *(a1 + 2) != 29285)
      {
        return 0;
      }

      return 0x100000002;
    }

    if (*a1 != 1701209711 || *(a1 + 4) != 114)
    {
      return 0;
    }
  }

  return 0x100000000;
}

void webrtc::JsepIceCandidate::~JsepIceCandidate(void **this)
{
  *this = &unk_288294CA0;
  webrtc::Candidate::~Candidate(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_288294CA0;
  webrtc::Candidate::~Candidate(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::JsepCandidateCollection::Clone@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = &unk_288294CE8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  v2 = *(this + 8);
  if (v2 != *(this + 16))
  {
    (*(**v2 + 16))(__p);
    (*(**v2 + 24))();
    (*(**v2 + 32))();
    operator new();
  }

  return this;
}

uint64_t webrtc::JsepIceCandidate::ToString(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a1 + 32))(a1);
    webrtc::SdpSerializeCandidate(&v3);
  }

  return 0;
}

void webrtc::JsepIceCandidate::sdp_mid(webrtc::JsepIceCandidate *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void webrtc::JsepIceCandidate::server_url(webrtc::JsepIceCandidate *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 471) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 56), *(this + 57));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 28);
    a2->__r_.__value_.__r.__words[2] = *(this + 58);
  }
}

webrtc::JsepIceCandidate *webrtc::JsepCandidateCollection::add(webrtc::JsepCandidateCollection *this, webrtc::JsepIceCandidate *a2)
{
  v3 = a2;
  std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](this + 1, &v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t webrtc::JsepCandidateCollection::at(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (a2 < (*(this + 16) - v2) >> 3)
  {
    return *(v2 + 8 * a2);
  }

  __break(1u);
  return this;
}

BOOL webrtc::JsepCandidateCollection::HasCandidate(webrtc::JsepCandidateCollection *this, const webrtc::IceCandidateInterface *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    for (i = v2 + 8; ; i += 8)
    {
      while (1)
      {
        (*(**(i - 8) + 16))(v19);
        (*(*a2 + 16))(__p, a2);
        if ((v20 & 0x80u) == 0)
        {
          v7 = v20;
        }

        else
        {
          v7 = v19[1];
        }

        v8 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v8 = __p[1];
        }

        if (v7 == v8)
        {
          v9 = (v20 & 0x80u) == 0 ? v19 : v19[0];
          v10 = (v18 & 0x80u) == 0 ? __p : __p[0];
          if (!memcmp(v9, v10, v7))
          {
            v11 = (*(**(i - 8) + 24))(*(i - 8));
            if (v11 == (*(*a2 + 24))(a2))
            {
              break;
            }
          }
        }

        IsEquivalent = 0;
        if (v18 < 0)
        {
          goto LABEL_3;
        }

LABEL_25:
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

LABEL_26:
        operator delete(v19[0]);
        v15 = i == v3 || IsEquivalent;
        i += 8;
        if (v15 == 1)
        {
          return IsEquivalent;
        }
      }

      v12 = (*(**(i - 8) + 32))(*(i - 8));
      v13 = (*(*a2 + 32))(a2);
      IsEquivalent = webrtc::Candidate::IsEquivalent(v12, v13);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_3:
      operator delete(__p[0]);
      if (v20 < 0)
      {
        goto LABEL_26;
      }

LABEL_4:
      v6 = i == v3 || IsEquivalent;
      if (v6 == 1)
      {
        return IsEquivalent;
      }
    }
  }

  return 0;
}

uint64_t webrtc::JsepCandidateCollection::remove(webrtc::JsepCandidateCollection *this, const webrtc::Candidate *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 != v3)
  {
    v6 = (a2 + 32);
    while (1)
    {
      v7 = (*(**v4 + 32))();
      if (*(a2 + 6) == *(v7 + 24))
      {
        v8 = *(a2 + 55);
        if (v8 >= 0)
        {
          v9 = *(a2 + 55);
        }

        else
        {
          v9 = *(a2 + 5);
        }

        v10 = *(v7 + 55);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v7 + 40);
        }

        if (v9 == v10)
        {
          v12 = v8 >= 0 ? v6 : *v6;
          v13 = v11 >= 0 ? (v7 + 32) : *(v7 + 32);
          v14 = v7;
          if (!memcmp(v12, v13, v9) && webrtc::SocketAddress::operator==(a2 + 80, v14 + 80))
          {
            break;
          }
        }
      }

      if (++v4 == v3)
      {
        v4 = v3;
        break;
      }
    }

    v3 = *(this + 2);
  }

  if (v4 == v3)
  {
    return 0;
  }

  v15 = v4 + 1;
  if (v4 + 1 != v3)
  {
    do
    {
      v16 = *(v15 - 1);
      *(v15 - 1) = *v15;
      *v15 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      ++v15;
    }

    while (v15 != v3);
    v3 = *(this + 2);
    v4 = v15 - 1;
  }

  while (v3 != v4)
  {
    v18 = *--v3;
    v17 = v18;
    *v3 = 0;
    if (v18)
    {
      (*(*v17 + 8))(v17);
    }
  }

  *(this + 2) = v4;
  return 1;
}

void webrtc::JsepCandidateCollection::~JsepCandidateCollection(webrtc::JsepCandidateCollection *this)
{
  *this = &unk_288294CE8;
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
  *this = &unk_288294CE8;
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

uint64_t webrtc::SessionDescriptionInterface::GetType(webrtc::SessionDescriptionInterface *this)
{
  (*(*this + 64))(__p);
  v1 = webrtc::SdpTypeFromString(__p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if ((v1 & 0x100000000) != 0)
    {
      return v1;
    }
  }

  else if ((v1 & 0x100000000) != 0)
  {
    return v1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/jsep_session_description.cc");
  }

  return 0;
}

BOOL webrtc::JsepSessionDescription::Initialize(uint64_t a1, uint64_t *a2, std::string *a3, _BYTE **a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return v4 != 0;
  }

  v7 = (a1 + 16);
  if (v7 != a3)
  {
    v8 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (*(a1 + 39) < 0)
    {
      if (v8 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = a3->__r_.__value_.__r.__words[0];
      }

      if (v8 >= 0)
      {
        size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      v12 = a4;
      std::string::__assign_no_alias<false>(v7, v10, size);
    }

    else
    {
      if ((*(&a3->__r_.__value_.__s + 23) & 0x80) == 0)
      {
        v9 = *&a3->__r_.__value_.__l.__data_;
        v7->__r_.__value_.__r.__words[2] = a3->__r_.__value_.__r.__words[2];
        *&v7->__r_.__value_.__l.__data_ = v9;
        goto LABEL_15;
      }

      v12 = a4;
      std::string::__assign_no_alias<true>(v7, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    a4 = v12;
  }

LABEL_15:
  v13 = (a1 + 40);
  if ((a1 + 40) == a4)
  {
    goto LABEL_27;
  }

  v14 = *(a4 + 23);
  if (*(a1 + 63) < 0)
  {
    if (v14 >= 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = *a4;
    }

    if (v14 >= 0)
    {
      v19 = *(a4 + 23);
    }

    else
    {
      v19 = a4[1];
    }

    std::string::__assign_no_alias<false>(v13, v18, v19);
LABEL_27:
    v20 = *a2;
    *a2 = 0;
    v17 = *(a1 + 8);
    *(a1 + 8) = v20;
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((*(a4 + 23) & 0x80) == 0)
  {
    v15 = *a4;
    *(a1 + 56) = a4[2];
    *&v13->__r_.__value_.__l.__data_ = v15;
    v16 = *a2;
    *a2 = 0;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    if (!v17)
    {
      goto LABEL_29;
    }

LABEL_28:
    webrtc::SessionDescription::~SessionDescription(v17);
    MEMORY[0x2743DA540]();
    goto LABEL_29;
  }

  std::string::__assign_no_alias<true>(v13, *a4, a4[1]);
  v33 = *a2;
  *a2 = 0;
  v17 = *(a1 + 8);
  *(a1 + 8) = v33;
  if (v17)
  {
    goto LABEL_28;
  }

LABEL_29:
  v21 = (*(*a1 + 88))(a1);
  v23 = *(a1 + 72);
  v22 = *(a1 + 80);
  v24 = (v22 - v23) >> 5;
  v25 = v21 - v24;
  if (v21 <= v24)
  {
    if (v21 < v24)
    {
      v26 = (v23 + 32 * v21);
      if (v22 != v26)
      {
        v27 = v22 - 4;
        v28 = v22 - 4;
        v29 = v22 - 4;
        do
        {
          v30 = *v29;
          v29 -= 4;
          (*v30)(v28, v25);
          v27 -= 4;
          v31 = v28 == v26;
          v28 = v29;
        }

        while (!v31);
      }

      *(a1 + 80) = v26;
    }
  }

  else
  {
    std::vector<webrtc::JsepCandidateCollection>::__append((a1 + 72), v25);
  }

  return v4 != 0;
}

uint64_t webrtc::JsepSessionDescription::JsepSessionDescription(uint64_t a1, int a2, uint64_t *a3, _BYTE *__src, size_t __len, _BYTE *a6, size_t a7)
{
  v7 = *a3;
  *a3 = 0;
  *a1 = &unk_288294D28;
  *(a1 + 8) = v7;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v12 = (a1 + 16);
  *(a1 + 39) = __len;
  v13 = (a1 + 16 + __len);
  if (a1 + 16 <= __src && v13 > __src)
  {
    goto LABEL_26;
  }

  if (__len)
  {
    memmove(v12, __src, __len);
  }

  *v13 = 0;
  if (a7 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a7 > 0x16)
  {
    operator new();
  }

  *(a1 + 63) = a7;
  v14 = (a1 + 40 + a7);
  if (a1 + 40 <= a6 && v14 > a6)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a7)
  {
    memmove((a1 + 40), a6, a7);
  }

  *v14 = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = (*(*a1 + 88))(a1);
  v16 = *(a1 + 80);
  v17 = (v16 - *(a1 + 72)) >> 5;
  v18 = v15 - v17;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      v19 = *(a1 + 72) + 32 * v15;
      if (v16 != v19)
      {
        v20 = v16 - 32;
        v21 = (v16 - 32);
        v22 = (v16 - 32);
        do
        {
          v23 = *v22;
          v22 -= 4;
          (*v23)(v21, v18);
          v20 -= 32;
          v24 = v21 == v19;
          v21 = v22;
        }

        while (!v24);
      }

      *(a1 + 80) = v19;
    }
  }

  else
  {
    std::vector<webrtc::JsepCandidateCollection>::__append((a1 + 72), v18);
  }

  return a1;
}

void webrtc::JsepSessionDescription::~JsepSessionDescription(webrtc::JsepSessionDescription *this)
{
  *this = &unk_288294D28;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
    if (v3 != v2)
    {
      v5 = v3 - 4;
      v6 = v3 - 4;
      v7 = v3 - 4;
      do
      {
        v8 = *v7;
        v7 -= 4;
        (*v8)(v6);
        v5 -= 4;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
    if ((*(this + 39) & 0x80000000) == 0)
    {
LABEL_10:
      v10 = *(this + 1);
      *(this + 1) = 0;
      if (!v10)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(this + 2));
  v10 = *(this + 1);
  *(this + 1) = 0;
  if (!v10)
  {
    return;
  }

LABEL_11:
  webrtc::SessionDescription::~SessionDescription(v10);
  MEMORY[0x2743DA540]();
}

{
  webrtc::JsepSessionDescription::~JsepSessionDescription(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::JsepSessionDescription::AddCandidate(webrtc::JsepSessionDescription *this, const webrtc::IceCandidateInterface *a2)
{
  if (!a2)
  {
    return 0;
  }

  (*(*a2 + 16))(__p, a2);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p[0].__r_.__value_.__l.__size_)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      goto LABEL_14;
    }
  }

  else if (*(&__p[0].__r_.__value_.__s + 23))
  {
    goto LABEL_14;
  }

  if (((*(*a2 + 24))(a2) & 0x80000000) != 0)
  {
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    return 0;
  }

  v4 = (*(*a2 + 24))(a2);
  v5 = v4;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(this + 1) + 8) - **(this + 1)) >> 3);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v6 <= v5)
    {
      return 0;
    }
  }

  else if (v6 <= v4)
  {
    return 0;
  }

LABEL_14:
  if (((*(*a2 + 24))(a2) & 0x80000000) != 0)
  {
    v7 = 0;
    if (!*(this + 1))
    {
      goto LABEL_47;
    }
  }

  else
  {
    v7 = (*(*a2 + 24))(a2);
    if (!*(this + 1))
    {
      goto LABEL_47;
    }
  }

  (*(*a2 + 16))(__p, a2);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p[0].__r_.__value_.__l.__size_;
  }

  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (size)
  {
LABEL_25:
    if (*(*(this + 1) + 8) == **(this + 1))
    {
      return 0;
    }

    v9 = 0;
    v7 = 0;
    while (1)
    {
      (*(*a2 + 16))(__p, a2);
      v10 = **(this + 1);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(*(this + 1) + 8) - v10) >> 3) <= v7)
      {
        goto LABEL_83;
      }

      v11 = v10 + v9;
      v12 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __p[0].__r_.__value_.__l.__size_;
      }

      v14 = *(v11 + 31);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v11 + 16);
      }

      if (v13 == v14)
      {
        break;
      }

      v21 = 0;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }

LABEL_44:
      if (v21)
      {
        goto LABEL_47;
      }

      ++v7;
      v9 += 40;
      if (v7 >= 0xCCCCCCCCCCCCCCCDLL * ((*(*(this + 1) + 8) - **(this + 1)) >> 3))
      {
        return 0;
      }
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0].__r_.__value_.__r.__words[0];
    }

    v19 = *(v11 + 8);
    v17 = (v11 + 8);
    v18 = v19;
    if (v15 >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    v21 = memcmp(v16, v20, v13) == 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_43:
    operator delete(__p[0].__r_.__value_.__l.__data_);
    goto LABEL_44;
  }

LABEL_47:
  if (v7 < (*(*this + 88))(this))
  {
    v22 = *(this + 1);
    if (0xCCCCCCCCCCCCCCCDLL * ((v22[1] - *v22) >> 3) <= v7)
    {
      goto LABEL_82;
    }

    v23 = v22[3];
    v24 = v22[4];
    if (v23 != v24)
    {
      v25 = *v22 + 40 * v7;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = *(v26 + 8);
      }

      if (v29 >= 0)
      {
        v31 = v26;
      }

      else
      {
        v31 = v27;
      }

      for (i = v23 + 95; ; i += 112)
      {
        v34 = *(i - 72);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(i - 87);
        }

        if (v34 == v30)
        {
          v36 = v35 >= 0 ? i - 95 : *(i - 95);
          if (!memcmp(v36, v31, v30))
          {
            break;
          }
        }

        v33 = i + 17;
        if (v33 == v24)
        {
          return 0;
        }
      }

      v37 = (*(*a2 + 32))(a2);
      webrtc::Candidate::Candidate(__p, v37);
      v38 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v46.__r_.__value_.__l.__size_;
      }

      if (!v38)
      {
        v39 = *(i - 24);
        if ((v39 & 0x8000000000000000) != 0)
        {
          v40 = *(i - 47);
          v39 = *(i - 39);
          if (!v40 && v39)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v40 = i - 47;
        }

        std::string::__assign_external(&v46, v40, v39);
      }

      v42 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v47.__r_.__value_.__l.__size_;
      }

      if (v42)
      {
LABEL_81:
        operator new();
      }

      v43 = i - 23;
      v44 = *i;
      if ((v44 & 0x8000000000000000) == 0 || (v43 = *(i - 23), v44 = *(i - 15), v43) || !v44)
      {
        std::string::__assign_external(&v47, v43, v44);
        goto LABEL_81;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return 0;
}

void webrtc::anonymous namespace::UpdateConnectionAddress(webrtc::_anonymous_namespace_ *this, const webrtc::JsepCandidateCollection *a2, webrtc::MediaContentDescription *a3)
{
  *(&v46.__r_.__value_.__s + 23) = 7;
  if (&v46 <= "0.0.0.0" && v46.__r_.__value_.__r.__words + 7 > "0.0.0.0")
  {
    goto LABEL_97;
  }

  strcpy(&v46, "0.0.0.0");
  memset(&__dst, 0, sizeof(__dst));
  if ((*(*this + 16))(this, a2, a3))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 9;
    while (1)
    {
      v9 = (*(*this + 32))(this, v7);
      if (*((*(*v9 + 32))(v9) + 24) == 1)
      {
        v10 = (*(*v9 + 32))(v9);
        v11 = (v10 + 32);
        v12 = *(v10 + 55);
        if (v12 < 0)
        {
          if (*(v10 + 40) != 3)
          {
            goto LABEL_26;
          }

          v11 = *v11;
        }

        else if (v12 != 3)
        {
          goto LABEL_26;
        }

        v13 = *v11;
        v14 = *(v11 + 2);
        if (v13 == webrtc::UDP_PROTOCOL_NAME && v14 == 112)
        {
          v16 = *((*(*v9 + 32))(v9) + 208);
          if (v16 == 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = 0;
          }

          if (v16 == 1)
          {
            v17 = 2;
          }

          v18 = v16 ? v17 : 1;
          v19 = *((*(*v9 + 32))(v9) + 112);
          if (v18 > v5 || v6 != v19)
          {
            if (v6 == 2 && v19 == 30)
            {
              v19 = 2;
            }

            else
            {
              v20 = (*(*v9 + 32))(v9);
              v8 = *(v20 + 136);
              webrtc::IPAddress::ToString(v20 + 104, &__p);
              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v46.__r_.__value_.__l.__data_);
              }

              v46 = __p;
              if (&__dst != (v20 + 80))
              {
                v21 = *(v20 + 103);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v21 >= 0)
                  {
                    v22 = (v20 + 80);
                  }

                  else
                  {
                    v22 = *(v20 + 80);
                  }

                  if (v21 >= 0)
                  {
                    v23 = *(v20 + 103);
                  }

                  else
                  {
                    v23 = *(v20 + 88);
                  }

                  std::string::__assign_no_alias<false>(&__dst, v22, v23);
                }

                else if ((*(v20 + 103) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(&__dst, *(v20 + 80), *(v20 + 88));
                }

                else
                {
                  __dst = *(v20 + 80);
                }
              }

              v5 = v18;
            }

            goto LABEL_27;
          }
        }
      }

LABEL_26:
      v19 = v6;
LABEL_27:
      ++v7;
      v6 = v19;
      if (v7 >= (*(*this + 16))(this))
      {
        goto LABEL_48;
      }
    }
  }

  v8 = 9;
LABEL_48:
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v46;
  }

  else
  {
    v24 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  memset(&__p, 0, sizeof(__p));
  memset(v41, 0, sizeof(v41));
  v40 = &unk_28828CE50;
  webrtc::SocketAddress::SetIP(&__p, v24, size);
  v42 = v8;
  if (!*v41)
  {
    v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = __dst.__r_.__value_.__l.__size_;
    }

    if (v27)
    {
      memset(v35, 0, 20);
      v34 = &unk_28828CE50;
      *(&v47.__r_.__value_.__s + 23) = 7;
      if (&v47 > "0.0.0.0" || v47.__r_.__value_.__r.__words + 7 <= "0.0.0.0")
      {
        strcpy(&v47, "0.0.0.0");
        v33 = v47;
        if (webrtc::inet_pton(2, "0.0.0.0", 7uLL, v49))
        {
          LODWORD(v35[0]) = 2;
          HIDWORD(v35[0]) = v49[0];
          v35[1] = 0;
          LODWORD(v35[2]) = 0;
        }

        else
        {
          if (!webrtc::inet_pton(30, "0.0.0.0", 7uLL, &v47))
          {
            v38 = 0;
            *&v47.__r_.__value_.__r.__words[1] = 0uLL;
            v48 = 0;
            memset(v35, 0, 20);
            v37 = 0;
            v36 = 9;
            v30 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_84:
              if ((v30 & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = v33;
              }

              goto LABEL_95;
            }

LABEL_88:
            if ((v30 & 0x80u) == 0)
            {
              v31 = &v33;
            }

            else
            {
              v31 = v33.__r_.__value_.__r.__words[0];
            }

            if ((v30 & 0x80u) == 0)
            {
              v32 = v30;
            }

            else
            {
              v32 = v33.__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(&__p, v31, v32);
LABEL_95:
            *v41 = v35[0];
            *&v41[4] = *(v35 + 4);
            v42 = v36;
            v44 = v38;
            v43 = v37;
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }

            goto LABEL_55;
          }

          LODWORD(v35[0]) = 30;
          *(v35 + 4) = *&v47.__r_.__value_.__l.__data_;
        }

        v38 = 1;
        v37 = 0;
        v36 = 9;
        v30 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_88;
      }

LABEL_97:
      __break(1u);
      return;
    }
  }

LABEL_55:
  v26 = (a2 + 128);
  if ((a2 + 128) != &__p)
  {
    if (*(a2 + 151) < 0)
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

      std::string::__assign_no_alias<false>(v26, p_p, v29);
    }

    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v26->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
      *(a2 + 18) = *(&__p.__r_.__value_.__l + 2);
    }
  }

  *(a2 + 40) = *v41;
  *(a2 + 164) = *&v41[4];
  *(a2 + 92) = v42;
  *(a2 + 192) = v44;
  *(a2 + 47) = v43;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_76:
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_80:
      operator delete(v46.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_80;
  }
}

uint64_t webrtc::JsepSessionDescription::RemoveCandidates(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3 || *(a1[1] + 8) == *a1[1])
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *a1[1];
    v7 = *(a1[1] + 8) - v6;
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
    v10 = *(v2 + 399);
    v11 = v10 >= 0 ? *(v2 + 399) : *(v2 + 384);
    v12 = v10 >= 0 ? (v2 + 376) : *(v2 + 376);
    v13 = v9 <= 1 ? 1 : v9;
    v14 = (v6 + 16);
    while (1)
    {
      v15 = *(v14 + 15);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *v14;
      }

      if (v11 == v15)
      {
        v17 = v16 >= 0 ? v14 - 1 : *(v14 - 1);
        if (!memcmp(v12, v17, v11))
        {
          break;
        }
      }

      ++v8;
      v14 += 5;
      if (v13 == v8)
      {
        goto LABEL_5;
      }
    }

    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    v18 = v8 & 0x7FFFFFFF;
    v19 = a1[9];
    if (v18 >= (a1[10] - v19) >> 5)
    {
      break;
    }

    v20 = webrtc::JsepCandidateCollection::remove((v19 + 32 * v18), v2);
    v22 = a1[9];
    if (v18 >= (a1[10] - v22) >> 5)
    {
      break;
    }

    v23 = *a1[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1[1] + 8) - v23) >> 3) <= v18)
    {
      break;
    }

    v5 += v20;
LABEL_5:
    v2 += 432;
    if (v2 == v3)
    {
      return v5;
    }
  }

  __break(1u);
  return 0;
}

unint64_t webrtc::JsepSessionDescription::number_of_mediasections(webrtc::JsepSessionDescription *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return 0xCCCCCCCCCCCCCCCDLL * ((v1[1] - *v1) >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::JsepSessionDescription::candidates(webrtc::JsepSessionDescription *this, unint64_t a2)
{
  v2 = *(this + 9);
  v3 = *(this + 10) - v2;
  v4 = v2 + 32 * a2;
  if (a2 >= v3 >> 5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL webrtc::JsepSessionDescription::ToString(webrtc *this, uint64_t a2)
{
  result = 0;
  if (a2 && *(this + 1))
  {
    webrtc::SdpSerialize(this, a2, &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      *a2 = v6;
      *(a2 + 16) = v7;
      v5 = *(a2 + 23);
      if ((v5 & 0x8000000000000000) == 0)
      {
        return v5 != 0;
      }
    }

    else
    {
      *a2 = v6;
      *(a2 + 16) = v7;
      v5 = *(a2 + 23);
      if ((v5 & 0x8000000000000000) == 0)
      {
        return v5 != 0;
      }
    }

    v5 = *(a2 + 8);
    return v5 != 0;
  }

  return result;
}

uint64_t webrtc::JsepSessionDescription::description(webrtc::JsepSessionDescription *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

void webrtc::JsepSessionDescription::session_id(webrtc::JsepSessionDescription *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 1);
    a2->__r_.__value_.__r.__words[2] = *(this + 4);
  }
}

void webrtc::JsepSessionDescription::session_version(webrtc::JsepSessionDescription *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

unint64_t webrtc::JsepSessionDescription::type@<X0>(webrtc::JsepSessionDescription *this@<X0>, char *a2@<X8>)
{
  v3 = *(this + 16);
  if (v3 > 3)
  {
    v4 = &str_65;
  }

  else
  {
    v4 = off_279E93F28[v3];
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_16:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v6 = &a2[result];
  if (a2 <= v4 && v6 > v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result)
  {
    result = memcpy(a2, v4, result);
  }

  *v6 = 0;
  return result;
}

void std::vector<webrtc::JsepCandidateCollection>::__append(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 > (v4 - v3) >> 5)
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if (!((v5 + a2) >> 59))
    {
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

      v11 = 32 * v5;
      v12 = 32 * v5 + 32 * a2;
      v13 = 32 * v5;
      v14 = (32 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_33;
        }

        *v14 = &unk_288294CE8;
        v14[1] = 0;
        v14[2] = 0;
        v14[3] = 0;
        v14 += 4;
        v13 += 32;
      }

      while (v14 != v12);
      v15 = *a1;
      v16 = a1[1];
      v17 = (v11 - (v16 - *a1));
      if (v16 != *a1)
      {
        v18 = v11 - 32 * ((v16 - *a1) >> 5);
        v19 = *a1;
        v20 = v17;
        do
        {
          if (!v20)
          {
            goto LABEL_33;
          }

          *v20 = &unk_288294CE8;
          v20[1] = 0;
          v20[2] = 0;
          v20[3] = 0;
          *(v20 + 1) = *(v19 + 1);
          v20[3] = v19[3];
          v19[1] = 0;
          v19[2] = 0;
          v19[3] = 0;
          v19 += 4;
          v20 += 4;
          v18 += 32;
        }

        while (v19 != v16);
        v21 = v15;
        do
        {
          if (!v15)
          {
            goto LABEL_33;
          }

          v22 = v15 + 4;
          (**v15)(v15);
          v21 += 4;
          v15 = v22;
        }

        while (v22 != v16);
        v15 = *a1;
      }

      *a1 = v17;
      a1[1] = v12;
      a1[2] = 0;
      if (v15)
      {

        operator delete(v15);
      }

      return;
    }

LABEL_34:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = &v3[4 * a2];
  v10 = a1[1];
  do
  {
    if (!v3)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *v3 = &unk_288294CE8;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    v3 += 4;
    v10 += 32;
  }

  while (v3 != v9);
  v3 = v9;
LABEL_16:
  a1[1] = v3;
}

uint64_t webrtc::JsepTransport::JsepTransport(uint64_t a1, __int128 *a2, atomic_uint **a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  {
    operator new();
  }

  *a1 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v21 = (a1 + 8);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v22 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *&v21->__r_.__value_.__l.__data_ = v22;
    v23 = a10;
    *(a1 + 32) = 0;
    v24 = *a3;
    *(a1 + 40) = *a3;
    if (!v24)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  std::string::__init_copy_ctor_external(v21, *a2, *(a2 + 1));
  v23 = a10;
  *(a1 + 32) = 0;
  v24 = *a3;
  *(a1 + 40) = *a3;
  if (v24)
  {
LABEL_4:
    atomic_fetch_add_explicit(v24, 1u, memory_order_relaxed);
  }

LABEL_5:
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v25 = *a4;
  *a4 = 0;
  *(a1 + 64) = v25;
  v26 = *a5;
  *a5 = 0;
  *(a1 + 72) = v26;
  v27 = *a6;
  *a6 = 0;
  *(a1 + 80) = v27;
  v28 = *a7;
  *a7 = 0;
  *(a1 + 88) = v28;
  v29 = *a8;
  *a8 = 0;
  *(a1 + 96) = v29;
  if (*a9)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if (*v23)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if (*a11)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v30 = *(a12 + 24);
  if (v30)
  {
    if (v30 == a12)
    {
      *(a1 + 224) = a1 + 200;
      (*(**(a12 + 24) + 24))(*(a12 + 24));
    }

    else
    {
      *(a1 + 224) = v30;
      *(a12 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 224) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 232) = a13;
  *(a1 + 240) = a1 + 248;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a13;
  *(a1 + 328) = a1 + 336;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a1 + 360;
  *(a1 + 376) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = a1 + 392;
  return a1;
}

void webrtc::JsepTransport::~JsepTransport(webrtc::JsepTransport *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(v2 + 80) = 0;
    v4 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    webrtc::SctpTransport::UpdateInformation(v2, 3);
  }

  webrtc::DtlsTransport::Clear(*(this + 13));
  v5 = *(this + 14);
  if (v5)
  {
    webrtc::DtlsTransport::Clear(v5);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 384, *(this + 49));
  std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(this + 352, *(this + 45));
  std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(this + 328, *(this + 42));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 296, *(this + 38));
  std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(this + 264, *(this + 34));
  std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(this + 240, *(this + 31));
  v6 = *(this + 28);
  if (v6 == (this + 200))
  {
    (*(*v6 + 32))(v6);
    if (*(this + 192) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  if (*(this + 192) == 1)
  {
LABEL_15:
    v7 = *(this + 21);
    if (v7)
    {
      *(this + 22) = v7;
      operator delete(v7);
    }
  }

LABEL_17:
  if (*(this + 160) == 1)
  {
    v8 = *(this + 17);
    if (v8)
    {
      *(this + 18) = v8;
      operator delete(v8);
    }
  }

  v9 = *(this + 15);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 9);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 8);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 7);
  *(this + 7) = 0;
  if (v17)
  {
    webrtc::TransportDescription::~TransportDescription((v17 + 5));
    v18 = v17[1];
    if (v18)
    {
      v17[2] = v18;
      operator delete(v18);
    }

    MEMORY[0x2743DA540](v17, 0x1032C40A0916259);
  }

  v19 = *(this + 6);
  *(this + 6) = 0;
  if (v19)
  {
    webrtc::TransportDescription::~TransportDescription((v19 + 5));
    v20 = v19[1];
    if (v20)
    {
      v19[2] = v20;
      operator delete(v20);
    }

    MEMORY[0x2743DA540](v19, 0x1032C40A0916259);
  }

  v21 = *(this + 5);
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    v22 = *(v21 + 8);
    *(v21 + 8) = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    MEMORY[0x2743DA540](v21, 0x1020C40D5A9D86FLL);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void webrtc::JsepTransport::SetLocalJsepTransportDescription(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  *(v45 + 7) = 0;
  v43 = 0;
  LOBYTE(v44) = 0;
  v8 = a2 + 64;
  v9 = a2[87];
  v10 = *(a2 + 9);
  if ((v9 & 0x80u) == 0)
  {
    v11 = a2 + 64;
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = v8[47];
  v13 = *(v8 - 2);
  v14 = *(v8 - 3);
  if ((v9 & 0x80u) == 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (v12 >= 0)
  {
    v16 = v8 + 24;
  }

  else
  {
    v16 = *(v8 + 3);
  }

  if (v12 >= 0)
  {
    v17 = v8[47];
  }

  else
  {
    v17 = *(v8 + 4);
  }

  if (v14 != v13)
  {
    for (i = *(v8 - 3); i != v13; i += 3)
    {
      v19 = *(i + 23);
      if (v19 < 0)
      {
        v20 = *i;
        if (i[1] != 12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = i;
        if (v19 != 12)
        {
          goto LABEL_15;
        }
      }

      v21 = *v20;
      v22 = *(v20 + 2);
      if (v21 == 0x616E696D6F6E6572 && v22 == 1852795252)
      {
        goto LABEL_27;
      }

LABEL_15:
      v14 += 3;
    }
  }

  v14 = *(v8 - 2);
LABEL_27:
  webrtc::IceParameters::IceParameters(v39, v11, v15, v16, v17, v14 != v13);
  webrtc::IceParameters::Validate(v39, &v38);
  if (v38)
  {
    operator new();
  }

  if ((webrtc::JsepTransport::SetRtcpMux(a1, *a2, a3, 0, v24, v25, v26, v27) & 1) == 0)
  {
    *a4 = 3;
    operator new();
  }

  v28 = *(a1 + 96);
  if (v28)
  {
    webrtc::DtlsSrtpTransport::UpdateRecvEncryptedHeaderExtensionIds(v28, (a2 + 8));
  }

  v29 = *(a1 + 48);
  if (!v29)
  {
LABEL_55:
    operator new();
  }

  v30 = *(v29 + 87);
  if ((v30 & 0x8000000000000000) != 0)
  {
    v31 = *(v29 + 64);
    v30 = *(v29 + 72);
    v32 = *(v29 + 111);
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v31 = (v29 + 64);
    v32 = *(v29 + 111);
    if ((v32 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v33 = (v29 + 88);
      goto LABEL_39;
    }
  }

  v33 = *(v29 + 88);
  v32 = *(v29 + 96);
LABEL_39:
  if ((v40 & 0x80u) == 0)
  {
    v34 = v40;
  }

  else
  {
    v34 = v39[1];
  }

  if ((v42 & 0x80u) == 0)
  {
    v35 = v41;
  }

  else
  {
    v35 = v41[0];
  }

  if (v30 == v34)
  {
    if ((v42 & 0x80u) == 0)
    {
      v36 = v42;
    }

    else
    {
      v36 = v41[1];
    }

    if ((v40 & 0x80u) == 0)
    {
      v37 = v39;
    }

    else
    {
      v37 = v39[0];
    }

    if (!memcmp(v31, v37, v30) && v32 == v36)
    {
      memcmp(v33, v35, v32);
    }
  }

  goto LABEL_55;
}

uint64_t webrtc::JsepTransport::SetRtcpMux(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    v11 = *(a1 + 128);
    if (v11)
    {
      if (v11 == 5)
      {
        if (a2)
        {
          goto LABEL_77;
        }

        return 0;
      }

      if ((a4 || v11 != 2) && (a4 != 1 || v11 != 1))
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          return 0;
        }

        goto LABEL_91;
      }
    }

    *(a1 + 132) = a2;
    if (a4)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    goto LABEL_34;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v8 = *(a1 + 128);
      if (v8 == 5)
      {
        if ((a2 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_77;
      }

      if (a4 != 1 || v8 != 2)
      {
        v30 = !a4 && (v8 & 0xFFFFFFFD) == 1;
        v31 = v30;
        v32 = v8 == 4 && a4 == 1;
        if (!v32 && !v31)
        {
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
            return 0;
          }

          goto LABEL_91;
        }
      }

      if (*(a1 + 132) == 1)
      {
        if (a2)
        {
          if (a4 == 1)
          {
            v43 = 4;
          }

          else
          {
            v43 = 3;
          }
        }

        else if (a4 == 1)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

LABEL_34:
        *(a1 + 128) = v43;
        goto LABEL_77;
      }

      if (a2)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          return 0;
        }

        goto LABEL_91;
      }

LABEL_77:
      v40 = *(a1 + 96);
      if (!v40)
      {
        v40 = *(a1 + 88);
        if (!v40)
        {
          v40 = *(a1 + 80);
        }
      }

      (*(*v40 + 16))(v40, (*(a1 + 128) - 3) < 3);
      return 1;
    }

    return 0;
  }

  v10 = *(a1 + 128);
  if (v10 == 5)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (a4 == 1 && v10 == 2 || (!a4 ? (v20 = (v10 & 0xFFFFFFFD) == 1) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), v10 == 4 ? (v22 = a4 == 1) : (v22 = 0), v22 || (v21 & 1) != 0))
  {
    v12 = *(a1 + 132);
    if (a2 && (v12 & 1) == 0)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }

LABEL_91:
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtcp_mux_filter.cc");
      return 0;
    }

    if ((v12 & a2) != 0)
    {
      v33 = 5;
    }

    else
    {
      v33 = 0;
    }

    *(a1 + 128) = v33;
    if ((v33 - 3) > 2)
    {
      goto LABEL_77;
    }

LABEL_66:
    v34 = *(a1 + 80);
    if (v34 || (v34 = *(a1 + 88)) != 0)
    {
      v35 = a1;
      webrtc::RtpTransport::SetRtcpPacketTransport(v34, 0, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (!*(a1 + 96))
      {
        goto LABEL_70;
      }

      v41 = *(a1 + 104);
      v35 = a1;
      if (v41)
      {
        v42 = *(v41 + 144);
      }

      else
      {
        v42 = 0;
      }

      webrtc::DtlsSrtpTransport::SetDtlsTransports(*(a1 + 96), v42, 0);
    }

    a1 = v35;
LABEL_70:
    v36 = *(a1 + 112);
    if (v36)
    {
      v37 = a1;
      (*(*v36 + 8))(*(a1 + 112));
      a1 = v37;
    }

    *(a1 + 112) = 0;
    v38 = a1;
    v39 = *(a1 + 224);
    if (!v39)
    {
      v44 = std::__throw_bad_function_call[abi:sn200100]();
      return webrtc::JsepTransport::NegotiateAndSetDtlsParameters(v44);
    }

    (*(*v39 + 48))(v39);
    a1 = v38;
    goto LABEL_77;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtcp_mux_filter.cc");
  }

  return 0;
}

void webrtc::JsepTransport::NegotiateAndSetDtlsParameters(_DWORD *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = *(v3 + 120);
      if (*(v4 + 120))
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        operator new();
      }

      if (a3 == 2)
      {
        if (v5)
        {
          *a1 = 3;
          operator new();
        }
      }

      operator new();
    }
  }

  *a1 = 6;
  operator new();
}

void webrtc::JsepTransport::SetRemoteJsepTransportDescription(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  *(v35 + 7) = 0;
  v33 = 0;
  LOBYTE(v34) = 0;
  v8 = a2 + 64;
  v9 = a2[87];
  v10 = *(a2 + 9);
  if ((v9 & 0x80u) == 0)
  {
    v11 = a2 + 64;
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = v8[47];
  v13 = *(v8 - 2);
  v14 = *(v8 - 3);
  if ((v9 & 0x80u) == 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (v12 >= 0)
  {
    v16 = v8 + 24;
  }

  else
  {
    v16 = *(v8 + 3);
  }

  if (v12 >= 0)
  {
    v17 = v8[47];
  }

  else
  {
    v17 = *(v8 + 4);
  }

  if (v14 == v13)
  {
LABEL_26:
    v14 = *(v8 - 2);
LABEL_27:
    webrtc::IceParameters::IceParameters(v32, v11, v15, v16, v17, v14 != v13);
    webrtc::IceParameters::Validate(v32, &v31);
    if (v31)
    {
      v28 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v28)
      {
        webrtc::TransportDescription::~TransportDescription((v28 + 5));
        v29 = v28[1];
        if (v29)
        {
          v28[2] = v29;
          operator delete(v29);
        }

        MEMORY[0x2743DA540](v28, 0x1032C40A0916259);
      }

      operator new();
    }

    if (webrtc::JsepTransport::SetRtcpMux(a1, *a2, a3, 1, v24, v25, v26, v27))
    {
      v30 = *(a1 + 96);
      if (v30)
      {
        webrtc::DtlsSrtpTransport::UpdateSendEncryptedHeaderExtensionIds(v30, (a2 + 8));
        *(*(a1 + 96) + 644) = *(a2 + 8);
      }

      operator new();
    }

    *a4 = 3;
    operator new();
  }

  v18 = *(v8 - 3);
  while (1)
  {
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      v20 = *v18;
      if (v18[1] != 12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = v18;
      if (v19 != 12)
      {
        goto LABEL_15;
      }
    }

    v21 = *v20;
    v22 = *(v20 + 2);
    if (v21 == 0x616E696D6F6E6572 && v22 == 1852795252)
    {
      goto LABEL_27;
    }

LABEL_15:
    v18 += 3;
    v14 += 3;
    if (v18 == v13)
    {
      goto LABEL_26;
    }
  }
}

void webrtc::JsepTransport::AddRemoteCandidates(uint64_t a1@<X0>, webrtc::Candidate **a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 48) || !*(a1 + 56))
  {
    if (*(a1 + 31) >= 0)
    {
      v10 = *(a1 + 31);
    }

    else
    {
      v10 = *(a1 + 16);
    }

    if ((v10 + 93) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_104:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((v10 + 93) >= 0x17)
    {
      operator new();
    }

    goto LABEL_103;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    return;
  }

  while (1)
  {
    v7 = *(v5 + 6) == 1 ? 104 : 112;
    v8 = *(a1 + v7);
    if (!v8)
    {
      break;
    }

    (**v8)(v8);
    v9 = (*(*v8[18] + 216))(v8[18]);
    (*(*v9 + 208))(v9, v5);
    ((*v8)[1])(v8);
    v5 = (v5 + 432);
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  p_p = &__p;
  webrtc::Candidate::ToStringInternal(v5, 1, &__p);
  v12 = __p.__r_.__value_.__r.__words[2];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v14 - size < 0x24)
  {
    if (0x7FFFFFFFFFFFFFF6 - v14 >= size + 36 - v14)
    {
      operator new();
    }

    goto LABEL_104;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v15 = "Candidate has an unknown component: ";
  if (size)
  {
    if ((size & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    v16 = p_p + size <= "Candidate has an unknown component: " || p_p > "Candidate has an unknown component: ";
    v17 = 36;
    if (v16)
    {
      v17 = 0;
    }

    v15 = &aCandidateHasAn[v17];
    v18 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v18[1].__r_.__value_.__r.__words[1] + 4, p_p, size);
  }

  *&p_p->__r_.__value_.__l.__data_ = *v15;
  *&p_p->__r_.__value_.__r.__words[2] = *(v15 + 1);
  LODWORD(p_p[1].__r_.__value_.__r.__words[1]) = *(v15 + 8);
  v19 = size + 36;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __p.__r_.__value_.__l.__size_ = size + 36;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v19] = 0;
  v42 = __p;
  memset(&__p, 0, sizeof(__p));
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v42.__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= 9)
  {
    v22 = &v42;
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v42.__r_.__value_.__r.__words[0];
    }

    v23 = v22 + v21;
    if (v22 + v21 <= " for mid " && v23 + 9 > " for mid ")
    {
      goto LABEL_103;
    }

    v23[8] = 32;
    *v23 = *" for mid ";
    v24 = v21 + 9;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      v42.__r_.__value_.__l.__size_ = v21 + 9;
    }

    else
    {
      *(&v42.__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    v22->__r_.__value_.__s.__data_[v24] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v42, v20, v21 - v20 + 9, v21, v21, 0, 9uLL, " for mid ");
  }

  v43 = v42;
  memset(&v42, 0, sizeof(v42));
  v27 = *(a1 + 8);
  v26 = a1 + 8;
  v25 = v27;
  v28 = *(v26 + 23);
  if (v28 >= 0)
  {
    v29 = v26;
  }

  else
  {
    v29 = v25;
  }

  if (v28 >= 0)
  {
    v30 = *(v26 + 23);
  }

  else
  {
    v30 = *(v26 + 8);
  }

  if (!v29 && v30)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (v43.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v43.__r_.__value_.__l.__size_;
  }

  if (v31 - v32 < v30)
  {
    std::string::__grow_by_and_replace(&v43, v31, v32 + v30 - v31, v32, v32, 0, v30, v29);
    goto LABEL_84;
  }

  if (v30)
  {
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v43;
    }

    else
    {
      v33 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v30 & 0x8000000000000000) == 0)
    {
      v34 = v33 + v32;
      if (v33 + v32 > v29 || &v34[v30] <= v29)
      {
        v35 = v30;
        memmove(v34, v29, v30);
        v36 = v32 + v35;
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          v43.__r_.__value_.__l.__size_ = v32 + v35;
        }

        else
        {
          *(&v43.__r_.__value_.__s + 23) = v36 & 0x7F;
        }

        v33->__r_.__value_.__s.__data_[v36] = 0;
        goto LABEL_84;
      }
    }

    goto LABEL_103;
  }

LABEL_84:
  __len = v43.__r_.__value_.__r.__words[2];
  __src = *&v43.__r_.__value_.__l.__data_;
  memset(&v43, 0, sizeof(v43));
  v37 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    v39 = *(&__src + 1);
    p_src = __src;
    *a3 = 3;
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_104;
    }
  }

  else
  {
    *a3 = 3;
    p_src = &__src;
    v39 = v37;
  }

  if (v39 > 0x16)
  {
    operator new();
  }

  *(a3 + 31) = v39;
  v40 = (a3 + 8 + v39);
  if (a3 + 8 <= p_src && v40 > p_src)
  {
    goto LABEL_103;
  }

  if (v39)
  {
    memmove((a3 + 8), p_src, v39);
  }

  *v40 = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 38) = 0;
  if ((v37 & 0x80000000) != 0)
  {
    operator delete(__src);
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_101;
    }
  }

  else if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(v43.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_97:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_102:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

LABEL_101:
  operator delete(v42.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_102;
  }
}

uint64_t webrtc::JsepTransport::GetStats(uint64_t a1, std::string *__dst)
{
  if ((a1 + 8) == __dst)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 31);
  if ((SHIBYTE(__dst->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((*(a1 + 31) & 0x80) == 0)
    {
      v5 = *(a1 + 8);
      __dst->__r_.__value_.__r.__words[2] = *(a1 + 24);
      *&__dst->__r_.__value_.__l.__data_ = v5;
      data = __dst[1].__r_.__value_.__l.__data_;
      size = __dst[1].__r_.__value_.__l.__size_;
      if (size == data)
      {
        goto LABEL_17;
      }

      do
      {
LABEL_16:
        webrtc::TransportChannelStats::~TransportChannelStats((size - 192));
      }

      while (size != data);
      goto LABEL_17;
    }

    std::string::__assign_no_alias<true>(__dst, *(a1 + 8), *(a1 + 16));
LABEL_15:
    data = __dst[1].__r_.__value_.__l.__data_;
    size = __dst[1].__r_.__value_.__l.__size_;
    if (size == data)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v4 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  std::string::__assign_no_alias<false>(__dst, v8, v9);
  data = __dst[1].__r_.__value_.__l.__data_;
  size = __dst[1].__r_.__value_.__l.__size_;
  if (size != data)
  {
    goto LABEL_16;
  }

LABEL_17:
  __dst[1].__r_.__value_.__l.__size_ = data;
  result = webrtc::JsepTransport::GetTransportStats(size, *(*(a1 + 104) + 144), 1u, __dst);
  v11 = *(a1 + 112);
  if (v11)
  {
    return result & webrtc::JsepTransport::GetTransportStats(result, *(v11 + 144), 2u, __dst);
  }

  return result;
}

uint64_t webrtc::JsepTransport::GetTransportStats(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  BYTE12(v28) = 0;
  v29 = 0;
  *v30 = 0u;
  *v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  LOBYTE(v27) = 0;
  v33 = 0;
  v36 = 2;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v26 = a3;
  (*(*a2 + 120))(a2, &v26 + 4);
  (*(*a2 + 136))(a2, &v26 + 8);
  (*(*a2 + 144))(a2, &v26 + 12);
  (*(*a2 + 152))(&v24, a2);
  v27 = v24;
  LOBYTE(v28) = v25;
  v29 = (*(*a2 + 80))(a2);
  LODWORD(v24) = 0;
  if ((*(*a2 + 104))(a2, &v24))
  {
    DWORD2(v28) = v24;
    BYTE12(v28) = 1;
  }

  v6 = (*(*a2 + 216))(a2);
  v7 = (*(*v6 + 240))(v6, v30);
  if (v7)
  {
    v41 = (*(*a2 + 160))(a2);
    v9 = a4[4];
    v8 = a4[5];
    if (v9 >= v8)
    {
      v13 = a4[3];
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v13) >> 6) + 1;
      if (v14 > 0x155555555555555)
      {
        goto LABEL_30;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v13) >> 6);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0xAAAAAAAAAAAAAALL)
      {
        v16 = 0x155555555555555;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0x155555555555555)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v9)
    {
      v10 = v26;
      v11 = v27;
      v12 = v28;
      *(v9 + 48) = v29;
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
      *v9 = v10;
      webrtc::IceTransportStats::IceTransportStats(v9 + 56, v30);
      *(v9 + 184) = v41;
      a4[4] = v9 + 192;
      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_16:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  v17 = v31[1];
  if (v31[1])
  {
    v18 = v32;
    v19 = v31[1];
    if (v32 != v31[1])
    {
      do
      {
        webrtc::Candidate::~Candidate(v18 - 64);
        webrtc::Candidate::~Candidate(v18 - 118);
        v18 -= 133;
      }

      while (v18 != v17);
      v19 = v31[1];
    }

    *&v32 = v17;
    operator delete(v19);
  }

  v20 = v30[0];
  if (v30[0])
  {
    v21 = v30[1];
    v22 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        webrtc::Candidate::~Candidate(v21 - 58);
      }

      while (v21 != v20);
      v22 = v30[0];
    }

    v30[1] = v20;
    operator delete(v22);
  }

  return v7;
}