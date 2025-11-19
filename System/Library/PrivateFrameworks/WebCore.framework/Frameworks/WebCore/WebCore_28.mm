void webrtc::LibvpxVp8Decoder::~LibvpxVp8Decoder(webrtc::LibvpxVp8Decoder *this)
{
  *this = &unk_288295640;
  *(this + 80) = 1;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 && *(v2 + 48))
    {
      (*(v3 + 32))();
      *(v2 + 48) = 0;
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      v4 = *(this + 11);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v2 + 16) = 1;
      v4 = *(this + 11);
      if (!v4)
      {
LABEL_8:
        *(this + 11) = 0;
        goto LABEL_9;
      }
    }

    MEMORY[0x2743DA540](v4, 0x10F2C40209C4D79);
    goto LABEL_8;
  }

LABEL_9:
  v5 = this + 32;
  if (*(this + 6))
  {
    v6 = *(this + 5);
    v7 = *(*(this + 4) + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 6) = 0;
    if (v6 != v5)
    {
      do
      {
        v14 = *(v6 + 1);
        v13 = *(v6 + 2);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        operator delete(v6);
        v6 = v14;
      }

      while (v14 != v5);
    }
  }

  *(this + 80) = 0;
  v9 = *(this + 16);
  *(this + 16) = 0;
  if (v9)
  {
    MEMORY[0x2743DA540](v9, 0x1000C40361F1193);
  }

  if (*(this + 6))
  {
    v10 = *(this + 5);
    v11 = *(*(this + 4) + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    *(this + 6) = 0;
    if (v10 != v5)
    {
      do
      {
        v16 = *(v10 + 1);
        v15 = *(v10 + 2);
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        operator delete(v10);
        v10 = v16;
      }

      while (v16 != v5);
    }
  }
}

{
  *this = &unk_288295640;
  *(this + 80) = 1;
  v2 = *(this + 11);
  if (!v2)
  {
LABEL_9:
    v5 = this + 32;
    if (*(this + 6))
    {
      v6 = *(this + 5);
      v7 = *(*(this + 4) + 8);
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      *(this + 6) = 0;
      if (v6 != v5)
      {
        do
        {
          v14 = *(v6 + 1);
          v13 = *(v6 + 2);
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          operator delete(v6);
          v6 = v14;
        }

        while (v14 != v5);
      }
    }

    *(this + 80) = 0;
    v9 = *(this + 16);
    *(this + 16) = 0;
    if (v9)
    {
      MEMORY[0x2743DA540](v9, 0x1000C40361F1193);
    }

    if (*(this + 6))
    {
      v10 = *(this + 5);
      v11 = *(*(this + 4) + 8);
      v12 = *v10;
      *(v12 + 8) = v11;
      *v11 = v12;
      *(this + 6) = 0;
      if (v10 != v5)
      {
        do
        {
          v16 = *(v10 + 1);
          v15 = *(v10 + 2);
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          operator delete(v10);
          v10 = v16;
        }

        while (v16 != v5);
      }
    }

    JUMPOUT(0x2743DA540);
  }

  v3 = *(v2 + 8);
  if (v3 && *(v2 + 48))
  {
    (*(v3 + 32))();
    *(v2 + 48) = 0;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    v4 = *(this + 11);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v2 + 16) = 1;
    v4 = *(this + 11);
    if (!v4)
    {
LABEL_8:
      *(this + 11) = 0;
      goto LABEL_9;
    }
  }

  MEMORY[0x2743DA540](v4, 0x10F2C40209C4D79);
  goto LABEL_8;
}

uint64_t webrtc::LibvpxVp8Decoder::Configure(webrtc::LibvpxVp8Decoder *this, const webrtc::VideoDecoder::Settings *a2)
{
  if (((*(*this + 48))(this) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(this + 11);
  if (!v4)
  {
    operator new();
  }

  v13 = 1;
  v14 = 0;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (dword_2882A7710 != 5)
  {
    v7 = 3;
    goto LABEL_20;
  }

  if ((qword_2882A7718 & 0x40000) != 0)
  {
    v5 = 0;
  }

  v7 = 4;
  if ((v5 & 1) != 0 || (qword_2882A7718 & 1) == 0)
  {
LABEL_20:
    *(v4 + 16) = v7;
    v11 = *(this + 11);
    if (!v11)
    {
LABEL_22:
      result = 0;
      *(this + 11) = 0;
      return result;
    }

LABEL_21:
    MEMORY[0x2743DA540](v11, 0x10F2C40209C4D79);
    goto LABEL_22;
  }

  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *v4 = 0u;
  *v4 = vpx_codec_vp8_dx_algo;
  *(v4 + 8) = &vpx_codec_vp8_dx_algo;
  *(v4 + 32) = v6;
  *(v4 + 40) = &v13;
  v7 = (off_2882A7720[0])(v4);
  if (v7)
  {
    v8 = *(v4 + 48);
    if (!v8)
    {
      *(v4 + 24) = 0;
      *(v4 + 16) = v7;
      v11 = *(this + 11);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    *(v4 + 24) = *v8;
    v9 = *(v4 + 8);
    if (v9)
    {
      v10 = v7;
      (*(v9 + 32))(v8);
      *(v4 + 48) = 0;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = v10;
      v11 = *(this + 11);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v4 + 16) = 0;
  *(this + 80) = 1;
  *(this + 104) = 1;
  if ((*a2 & 0x100000000) == 0)
  {
    return 1;
  }

  result = webrtc::VideoFrameBufferPool::Resize((this + 16), *a2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t webrtc::LibvpxVp8Decoder::Decode(webrtc::LibvpxVp8Decoder *this, const webrtc::EncodedImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116 = *MEMORY[0x277D85DE8];
  if (*(this + 80) != 1 || !*(this + 9))
  {
    return 4294967289;
  }

  v8 = *(a2 + 17);
  if (v8)
  {
    v9 = this;
    v10 = a2;
    v11 = (*(*v8 + 40))(*(a2 + 17));
    a2 = v10;
    v12 = v11;
    this = v9;
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(v10 + 18) == 0;
    }

    if (!v13)
    {
      return 4294967292;
    }
  }

  else if (*(a2 + 18))
  {
    return 4294967292;
  }

  if (*(this + 8) == 1)
  {
    v86 = 8;
    v14 = *(this + 25) * *(this + 24);
    v15 = a2;
    if (*(this + 120) == 1)
    {
      if ((v14 - 1) >> 10 <= 0x4A)
      {
        v16 = *(*(this + 16) + 20);
        v17 = v16 == -1.0 ? 0 : v16;
        v18 = *(this + 29);
        if (v17 > v18)
        {
          v19 = *(this + 27);
          v20 = *(this + 28);
          if (v17 < v20)
          {
            v19 = v19 * (v17 - v18) / (v20 - v18);
          }

          if (v19 <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = v19;
          }

          v86 = 11;
          v87 = v21;
        }
      }
    }

    else
    {
      if (v14 >= 230401)
      {
        v23 = 9;
      }

      else
      {
        v23 = 11;
      }

      v86 = v23;
      v87 = 3;
    }

    v24 = this;
    vpx_codec_control_(*(this + 11), 3, a3, a4, a5, a6, a7, a8, &v86);
    this = v24;
    a2 = v15;
  }

  if (*(this + 104) == 1)
  {
    if (*(a2 + 6) != 3)
    {
      return 0xFFFFFFFFLL;
    }

    *(this + 104) = 0;
  }

  v25 = *(a2 + 17);
  if (v25)
  {
    v26 = this;
    v27 = a2;
    v28 = (*(*v25 + 40))(*(a2 + 17));
    a2 = v27;
    v25 = v28;
    this = v26;
  }

  v29 = *(a2 + 18);
  if (!v29)
  {
    v25 = 0;
  }

  v30 = *(this + 11);
  if (!v30)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v29 != 0) == (v25 == 0))
  {
    v44 = 8;
LABEL_48:
    *(v30 + 16) = v44;
    return 0xFFFFFFFFLL;
  }

  v31 = *(v30 + 8);
  if (!v31 || !*(v30 + 48))
  {
    v44 = 1;
    goto LABEL_48;
  }

  v32 = a2;
  v33 = this;
  v34 = (*(v31 + 64))(*(v30 + 48), v25);
  *(v30 + 16) = v34;
  if (v34)
  {
    return 0xFFFFFFFFLL;
  }

  v85 = 0;
  v41 = *(v33 + 11);
  if (v41 && (v42 = *(v41 + 8)) != 0 && *(v41 + 48))
  {
    v43 = (*(v42 + 72))(*(v41 + 48), &v85);
    v41 = *(v33 + 11);
  }

  else
  {
    v43 = 0;
  }

  v84 = 0;
  vpx_codec_control_(v41, 267, v35, v36, v37, v38, v39, v40, &v84);
  if (!v43)
  {
    return 1;
  }

  v45 = *(v32 + 38);
  v46 = v84;
  v47 = *(v32 + 292);
  v48 = v33;
  v49 = *(v33 + 16);
  if (v49)
  {
    if (*(v33 + 24) != *(v43 + 24) || *(v33 + 25) != *(v43 + 28))
    {
      *(v49 + 16) = *v49;
      *(v49 + 20) = -1082130432;
    }

    if (webrtc::g_clock)
    {
      v50 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v50 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v51 = v46;
    v52 = v50 / 1000000;
    v53 = *(v49 + 20);
    if (v53 != -1.0)
    {
      v54 = v52 - *(v49 + 8);
      v55 = *(v49 + 16);
      if (v54 != 1)
      {
        v55 = powf(v55, v54);
      }

      v51 = ((1.0 - v55) * v51) + (v55 * v53);
    }

    v48 = v33;
    v56 = *(v49 + 24);
    if (v51 <= v56 || v56 == -1.0)
    {
      v56 = v51;
    }

    *(v49 + 20) = v56;
    *(v49 + 8) = v52;
  }

  v58 = *(v43 + 24);
  *(v48 + 24) = v58;
  v59 = *(v43 + 28);
  *(v48 + 25) = v59;
  webrtc::VideoFrameBufferPool::CreateI420Buffer((v48 + 16), v58, v59, &v111);
  v60 = v111;
  if (!v111)
  {
    return 1;
  }

  v81 = v45;
  v83 = v46;
  (**v111)(v111);
  v79 = *(v43 + 56);
  v80 = *(v43 + 48);
  v82 = v47;
  v61 = *(v43 + 80);
  v78 = *(v43 + 84);
  v77 = *(v43 + 64);
  v76 = *(v43 + 88);
  v62 = (*(*v60 + 136))(v60);
  v63 = (*(*v60 + 112))(v60);
  v64 = (*(*v60 + 144))(v60);
  v65 = (*(*v60 + 120))(v60);
  v66 = (*(*v60 + 152))(v60);
  v67 = (*(*v60 + 128))(v60);
  I420Copy(v80, v61, v79, v78, v77, v76, v62, v63, v64, v65, v66, v67, *(v43 + 24), *(v43 + 28));
  (**v60)(v60);
  if (v82)
  {
    v68 = *(v32 + 224);
    v69 = *(v32 + 241);
    v112 = *(v32 + 225);
    v113 = v69;
    v70 = *(v32 + 273);
    v114 = *(v32 + 257);
    v115 = v70;
  }

  else
  {
    v68 = 0;
  }

  LOWORD(v86) = 0;
  v88 = v60;
  (**v60)(v60);
  v89 = v81;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v102 = 0;
  if (v82)
  {
    v97 = v68;
    v98 = v112;
    v99 = v113;
    v100 = v114;
    v101 = v115;
    v102 = 1;
  }

  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  (*(*v60 + 8))(v60);
  (*(**(v33 + 9) + 32))(*(v33 + 9), &v86, 0, v83 | 0x100);
  v71 = v108;
  if (v108 && atomic_fetch_add(v108, 0xFFFFFFFF) == 1)
  {
    v72 = *(v71 + 1);
    if (v72)
    {
      v73 = *(v71 + 2);
      v74 = *(v71 + 1);
      if (v73 != v72)
      {
        do
        {
          v75 = *(v73 - 96);
          if (v75)
          {
            *(v73 - 88) = v75;
            operator delete(v75);
          }

          v73 -= 104;
        }

        while (v73 != v72);
        v74 = *(v71 + 1);
      }

      *(v71 + 2) = v72;
      operator delete(v74);
    }

    MEMORY[0x2743DA540](v71, 0x1020C40E72D6CFBLL);
  }

  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  if (v111)
  {
    (*(*v111 + 8))(v111);
  }

  (*(*v60 + 8))(v60);
  return 0;
}

uint64_t webrtc::LibvpxVp8Decoder::Release(webrtc::LibvpxVp8Decoder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    if (*(this + 80) == 1)
    {
      v3 = *(v2 + 8);
      if (v3 && *(v2 + 48))
      {
        v4 = v2;
        (*(v3 + 32))(*(v2 + 48));
        v5 = 0;
        *(v4 + 48) = 0;
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        if (!*(this + 11))
        {
LABEL_12:
          *(this + 11) = 0;
          if (!*(this + 6))
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        *(v2 + 16) = 1;
        v5 = 4294967293;
        if (!*(this + 11))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x2743DA540]();
    goto LABEL_12;
  }

  v5 = 0;
  if (!*(this + 6))
  {
    goto LABEL_14;
  }

LABEL_13:
  v6 = *(this + 5);
  v7 = *(*(this + 4) + 8);
  v8 = *v6;
  *(v8 + 8) = v7;
  *v7 = v8;
  *(this + 6) = 0;
  if (v6 != (this + 32))
  {
    do
    {
      v11 = *(v6 + 1);
      v10 = *(v6 + 2);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      operator delete(v6);
      v6 = v11;
    }

    while (v11 != (this + 32));
  }

LABEL_14:
  *(this + 80) = 0;
  return v5;
}

void webrtc::LibvpxVp8Decoder::GetDecoderInfo(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = 6;
  *(a1 + 4) = 30832;
  *a1 = 1986161004;
  *(a1 + 24) = 0;
}

void webrtc::LibvpxVp8Encoder::LibvpxVp8Encoder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288295698;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 48) = v6;
  webrtc::RateControlSettings::RateControlSettings(a1 + 56, *(a1 + 16));
}

void webrtc::LibvpxVp8Encoder::~LibvpxVp8Encoder(void **this)
{
  *this = &unk_288295698;
  webrtc::LibvpxVp8Encoder::Release(this);
  v2 = this[147];
  this[147] = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C40E835E779);
  }

  webrtc::EncoderInfoSettings::~EncoderInfoSettings((this + 123));
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 109);
  v3 = this[103];
  if (v3)
  {
    this[104] = v3;
    operator delete(v3);
  }

  v4 = this[100];
  if (v4)
  {
    this[101] = v4;
    operator delete(v4);
  }

  v5 = this[97];
  if (v5)
  {
    this[98] = v5;
    operator delete(v5);
  }

  v6 = this[94];
  if (v6)
  {
    this[95] = v6;
    operator delete(v6);
  }

  v7 = this[91];
  if (v7)
  {
    this[92] = v7;
    operator delete(v7);
  }

  v8 = this[88];
  if (v8)
  {
    v9 = this[89];
    v10 = this[88];
    if (v9 != v8)
    {
      do
      {
        webrtc::EncodedImage::~EncodedImage((v9 - 344));
      }

      while (v9 != v8);
      v10 = this[88];
    }

    this[89] = v8;
    operator delete(v10);
  }

  v11 = this[85];
  if (v11)
  {
    this[86] = v11;
    operator delete(v11);
  }

  v12 = this[82];
  if (v12)
  {
    this[83] = v12;
    operator delete(v12);
  }

  v13 = this[79];
  if (v13)
  {
    operator delete(v13);
  }

  v14 = this[76];
  if (v14)
  {
    operator delete(v14);
  }

  v15 = this[73];
  if (v15)
  {
    this[74] = v15;
    operator delete(v15);
  }

  v16 = this[72];
  this[72] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = this[6];
  this[6] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = this[1];
  if (v18)
  {
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 8))(v18);
    }
  }
}

{
  webrtc::LibvpxVp8Encoder::~LibvpxVp8Encoder(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LibvpxVp8Encoder::Release(webrtc::LibvpxVp8Encoder *this)
{
  v2 = *(this + 89);
  v3 = *(this + 88);
  while (v2 != v3)
  {
    webrtc::EncodedImage::~EncodedImage((v2 - 344));
  }

  *(this + 89) = v3;
  if (*(this + 536))
  {
    v4 = *(this + 92);
    v5 = *(this + 91);
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      LODWORD(v6) = 0;
      do
      {
        v4 -= 56;
        if ((*(**(this + 6) + 72))(*(this + 6), v4))
        {
          v6 = 4294967293;
        }

        else
        {
          v6 = v6;
        }

        v5 = *(this + 91);
      }

      while (v4 != v5);
    }
  }

  else
  {
    v6 = 0;
    v5 = *(this + 91);
  }

  *(this + 92) = v5;
  *(this + 95) = *(this + 94);
  *(this + 98) = *(this + 97);
  *(this + 80) = 0;
  *(this + 83) = *(this + 82);
  v7 = *(this + 86);
  for (i = *(this + 85); v7 != i; i = *(this + 85))
  {
    v7 -= 136;
    (*(**(this + 6) + 32))(*(this + 6), v7);
  }

  *(this + 86) = i;
  v9 = *(this + 72);
  *(this + 72) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 536) = 0;
  return v6;
}

void webrtc::LibvpxVp8Encoder::SetRates(webrtc::LibvpxVp8Encoder *this, const webrtc::VideoEncoder::RateControlParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 536) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_7;
  }

  v10 = *(this + 92);
  v11 = *(this + 91);
  if (v10 != v11)
  {
    if (*(v11 + 16))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return;
      }

LABEL_7:
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
      return;
    }

    v20 = *(a2 + 43);
    if (v20 < 1.0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t\a", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
      }

      return;
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 3);
    if (*(a2 + 44))
    {
      *(this + 43) = (v20 + 0.5);
      v29 = 0xEFBEFBEFBEFBEFBFLL;
      if (v28 < 2)
      {
LABEL_26:
        v35 = 0;
        v36 = a2 + 180;
        v74 = a2 + 184;
        for (i = -1; ; --i)
        {
          v8 = v28 + ~v35;
          if (v8 >= 5)
          {
            goto LABEL_76;
          }

          v45 = &v36[32 * v8];
          v46 = v45[4];
          if (v46 == 1)
          {
            v47 = *v45;
            v48 = v45[12];
            if (v48 != 1)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v47 = 0;
            v48 = v45[12];
            if (v48 != 1)
            {
LABEL_32:
              v49 = 0;
              v50 = v45[20];
              if (v50 != 1)
              {
                goto LABEL_33;
              }

              goto LABEL_40;
            }
          }

          v49 = *(v45 + 2);
          v50 = v45[20];
          if (v50 != 1)
          {
LABEL_33:
            v51 = 0;
            v52 = v45[28];
            if (v52 != 1)
            {
              goto LABEL_34;
            }

            goto LABEL_41;
          }

LABEL_40:
          v51 = *(v45 + 4);
          v52 = v45[28];
          if (v52 != 1)
          {
LABEL_34:
            v53 = v49 + v47 + v51;
            if (v53 > 0x3E7)
            {
              goto LABEL_42;
            }

            goto LABEL_35;
          }

LABEL_41:
          v53 = v49 + v47 + v51 + *(v45 + 6);
          if (v53 > 0x3E7)
          {
LABEL_42:
            v56 = *(this + 80);
            if (v56 <= v8)
            {
              goto LABEL_75;
            }

            v54 = *(this + 79);
            v57 = 1 << v8;
            if ((*v54 & (1 << v8)) == 0)
            {
              if (*(this + 77) <= v8)
              {
                goto LABEL_75;
              }

              **(this + 76) |= v57;
              v56 = *(this + 80);
            }

            if (v56 <= v8)
            {
              goto LABEL_75;
            }

            v55 = *v54 | v57;
            goto LABEL_48;
          }

LABEL_35:
          if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 3)) > 1)
          {
            if (*(this + 80) <= v8)
            {
              goto LABEL_75;
            }

            v54 = *(this + 79);
            v55 = *v54 & ~(1 << v8);
LABEL_48:
            *v54 = v55;
          }

          v58 = *(this + 94);
          if (((*(this + 95) - v58) >> 3) * v29 <= v35)
          {
            goto LABEL_75;
          }

          *(v58 + 504 * v35 + 112) = v53 / 0x3E8;
          if (v53 >= 0x3E8)
          {
            v59 = v36;
            v60 = v29;
            v61 = *(this + 72);
            memset(&v76, 0, sizeof(v76));
            v62 = v52 | v50 | v48;
            if ((v62 & 1) != 0 || v46)
            {
              v63 = 2;
              if (v50)
              {
                v63 = 3;
              }

              if (v52)
              {
                v63 = 4;
              }

              v64 = v62 ? v63 : 1;
              std::vector<float>::__append(&v76, v64);
              begin = v76.__begin_;
              if (v76.__end_ != v76.__begin_)
              {
                v66 = v76.__end_ - v76.__begin_;
                if (v66 <= 1)
                {
                  v66 = 1;
                }

                v67 = &v74[32 * v28 + 32 * i];
                do
                {
                  while (*v67 == 1)
                  {
                    *begin++ = *(v67 - 1);
                    v67 += 8;
                    if (!--v66)
                    {
                      goto LABEL_67;
                    }
                  }

                  *begin++ = 0;
                  v67 += 8;
                  --v66;
                }

                while (v66);
              }
            }

LABEL_67:
            (*(*v61 + 40))(v61, v28 + ~v35, &v76, (*(a2 + 43) + 0.5));
            if (v76.__begin_)
            {
              v76.__end_ = v76.__begin_;
              operator delete(v76.__begin_);
            }

            v29 = v60;
            v36 = v59;
          }

          webrtc::LibvpxVp8Encoder::UpdateVpxConfiguration(this, v28 + ~v35);
          v68 = *(this + 91);
          if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v68) >> 3) <= v35)
          {
            goto LABEL_75;
          }

          v69 = *(this + 94);
          if (((*(this + 95) - v69) >> 3) * v29 <= v35)
          {
            goto LABEL_75;
          }

          v70 = (*(**(this + 6) + 40))(*(this + 6), v68 + 56 * v35, v69 + 504 * v35);
          if (v70)
          {
            v8 = v70;
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              v71 = *(this + 91);
              if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v71) >> 3) <= v35)
              {
                goto LABEL_75;
              }

              (*(**(this + 6) + 200))(*(this + 6), v71 + 56 * v35);
              v75 = v75 & 0xFFFFFFFF00000000 | 0xE32;
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
            }
          }

          ++v35;
          v10 = *(this + 92);
          v11 = *(this + 91);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 3);
          if (v35 >= v28)
          {
            return;
          }
        }
      }

      v30 = v28 - 1;
      v31 = *(this + 94);
      v32 = 0xEFBEFBEFBEFBEFBFLL * ((*(this + 95) - v31) >> 3);
      if (*(this + 136) == 1 && *(a2 + 43) > 20.0)
      {
        if (v32 > v30)
        {
          v33 = 45;
LABEL_25:
          *(v31 + 504 * v30 + 120) = v33;
          goto LABEL_26;
        }
      }

      else if (v32 > v30)
      {
        v33 = *(this + 138);
        goto LABEL_25;
      }
    }

    else
    {
      if (v28 < 1)
      {
        return;
      }

      v34 = 0;
      while (*(this + 80) > v34)
      {
        *(*(this + 79) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
        if ((v28 & 0x7FFFFFFF) == ++v34)
        {
          return;
        }
      }
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v8);
  webrtc::LibvpxVp8Encoder::UpdateVpxConfiguration(v72, v73);
}

uint64_t webrtc::LibvpxVp8Encoder::UpdateVpxConfiguration(uint64_t this, uint64_t a2)
{
  v2 = ~a2 - 0x1041041041041041 * ((*(this + 760) - *(this + 752)) >> 3);
  v3 = *(this + 776);
  if (0x8E38E38E38E38E39 * ((*(this + 784) - v3) >> 4) <= v2)
  {
    goto LABEL_72;
  }

  v4 = this;
  v5 = v3 + 144 * v2;
  this = (*(**(this + 576) + 48))(v45);
  if (v51[28] == 1)
  {
    *v5 = *v45;
    v6 = *&v45[16];
    v7 = v46;
    v8 = v48;
    *(v5 + 48) = v47;
    *(v5 + 64) = v8;
    *(v5 + 16) = v6;
    *(v5 + 32) = v7;
    v9 = v49;
    v10 = v50;
    v11 = *v51;
    *(v5 + 125) = *&v51[13];
    *(v5 + 96) = v10;
    *(v5 + 112) = v11;
    *(v5 + 80) = v9;
    return 1;
  }

  if (v51[0] != 1 || *(v5 + 112) == 1 && *v45 == *v5 && (*&v45[4] == *(v5 + 4) ? (v12 = *&v45[12] == *(v5 + 12)) : (v12 = 0), v12 ? (v13 = *&v45[20] == *(v5 + 20)) : (v13 = 0), v13 && (*&v45[24] == *(v5 + 24) ? (v14 = v46 == *(v5 + 32)) : (v14 = 0), v14 ? (v15 = DWORD2(v46) == *(v5 + 40)) : (v15 = 0), v15 && HIDWORD(v46) == *(v5 + 44) && ((this = *(v5 + 80), v47 == *(v5 + 48)) ? (v16 = *(&v47 + 1) == *(v5 + 56)) : (v16 = 0), v16 ? (v17 = v48 == *(v5 + 64)) : (v17 = 0), v17 ? (v18 = *(&v48 + 1) == *(v5 + 72)) : (v18 = 0), v18 ? (v19 = v49 == this) : (v19 = 0), v19 ? (v20 = *(&v49 + 1) == *(v5 + 88)) : (v20 = 0), v20 ? (v21 = v50 == *(v5 + 96)) : (v21 = 0), v21 ? (v22 = *(&v50 + 1) == *(v5 + 104)) : (v22 = 0), v22))))
  {
    v29 = 0;
    if (v51[8] != 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v23 = *v45;
    v24 = *&v45[16];
    v25 = v47;
    *(v5 + 32) = v46;
    *(v5 + 48) = v25;
    *v5 = v23;
    *(v5 + 16) = v24;
    v26 = v48;
    v27 = v49;
    v28 = v50;
    *(v5 + 112) = v51[0];
    *(v5 + 80) = v27;
    *(v5 + 96) = v28;
    *(v5 + 64) = v26;
    v29 = 1;
    if (v51[8] != 1)
    {
      goto LABEL_50;
    }
  }

  if (__PAIR64__(*(v5 + 120), *(v5 + 116)) != (*&v51[4] | 0x100000000))
  {
    v31 = *&v51[4];
    *(v5 + 120) = v51[8];
    *(v5 + 116) = v31;
    v30 = 1;
    if (v51[16] != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_50:
  v30 = 0;
  if (v51[16] != 1)
  {
LABEL_54:
    v32 = 0;
    if (v51[24] != 1)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_53:
  if (__PAIR64__(*(v5 + 128), *(v5 + 124)) == (*&v51[12] | 0x100000000))
  {
    goto LABEL_54;
  }

  v33 = *&v51[12];
  *(v5 + 128) = v51[16];
  *(v5 + 124) = v33;
  v32 = 1;
  if (v51[24] != 1)
  {
LABEL_59:
    v34 = 0;
    goto LABEL_61;
  }

LABEL_57:
  if (*(v5 + 136) == 1 && *&v51[20] == *(v5 + 132))
  {
    goto LABEL_59;
  }

  v35 = *&v51[20];
  *(v5 + 136) = v51[24];
  *(v5 + 132) = v35;
  v34 = 1;
LABEL_61:
  v36 = *(v4 + 752);
  if (0xEFBEFBEFBEFBEFBFLL * ((*(v4 + 760) - v36) >> 3) <= v2)
  {
LABEL_72:
    __break(1u);
    return this;
  }

  v37 = v36 + 504 * v2;
  if (*(v5 + 112) != 1)
  {
    *(v37 + 216) = 1;
    *(v37 + 240) = 1;
    *(v37 + 260) = 1;
    v43 = v29 | v30;
    v44 = v32 | v34;
    if (*(v5 + 120) != 1)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  *(v37 + 216) = *v5;
  v38 = *(v5 + 4);
  *(v37 + 236) = *(v5 + 20);
  *(v37 + 220) = v38;
  v39 = *(v5 + 24);
  *(v37 + 256) = *(v5 + 40);
  *(v37 + 240) = v39;
  *(v37 + 260) = *(v5 + 44);
  v40 = *(v5 + 48);
  v41 = *(v5 + 64);
  v42 = *(v5 + 96);
  *(v37 + 296) = *(v5 + 80);
  *(v37 + 312) = v42;
  *(v37 + 264) = v40;
  *(v37 + 280) = v41;
  v43 = v29 | v30;
  v44 = v32 | v34;
  if (*(v5 + 120) == 1)
  {
LABEL_66:
    *(v37 + 112) = *(v5 + 116);
  }

LABEL_67:
  this = v43 | v44;
  if (*(v5 + 128) == 1)
  {
    *(v37 + 120) = *(v5 + 124);
    if (*(v5 + 136) != 1)
    {
      return this;
    }

LABEL_71:
    *(v37 + 36) = *(v5 + 132);
    return this;
  }

  if (*(v5 + 136) == 1)
  {
    goto LABEL_71;
  }

  return this;
}

uint64_t webrtc::LibvpxVp8Encoder::OnPacketLossRateUpdate(webrtc::LibvpxVp8Encoder *this, float a2)
{
  result = *(this + 72);
  if (result)
  {
    return (*(*result + 80))(a2);
  }

  return result;
}

uint64_t webrtc::LibvpxVp8Encoder::OnRttUpdate(webrtc::LibvpxVp8Encoder *this)
{
  result = *(this + 72);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

uint64_t webrtc::LibvpxVp8Encoder::OnLossNotification(uint64_t a1)
{
  result = *(a1 + 576);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t webrtc::LibvpxVp8Encoder::InitEncode(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 4294967292;
  }

  if (!*(a2 + 20))
  {
    return 4294967292;
  }

  v3 = *(a2 + 12);
  if (v3)
  {
    if (*(a2 + 8) > v3)
    {
      return 4294967292;
    }
  }

  if (!*(a2 + 4))
  {
    return 4294967292;
  }

  if (!*(a2 + 6))
  {
    return 4294967292;
  }

  if (*(a3 + 4) < 1)
  {
    return 4294967292;
  }

  v4 = *(a2 + 372);
  if ((v4 & 0x100) != 0 && v4 > 2u)
  {
    return 4294967292;
  }

  a1[142] = 0;
  v5 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v6 = 0;
    v7 = (a2 + 68);
    do
    {
      v8 = *v7;
      v7 += 36;
      if (v8 == 1)
      {
        a1[142] = ++v6;
      }

      --v5;
    }

    while (v5);
    v9 = v6 < 2;
  }

  else
  {
    v9 = 1;
    if (*(a2 + 24) == 1)
    {
      a1[142] = 1;
    }
  }

  if (*(a2 + 358) == 1 && !v9)
  {
    return 4294967292;
  }

  result = (*(*a1 + 48))();
  if ((result & 0x80000000) == 0)
  {
    v12 = a2;
    v13 = *(a2 + 32);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(a2 + 32);
    }

    if (v13 >= 8)
    {
      v15 = v14 & 0xF8;
      v17 = (a2 + 160);
      v18 = 0uLL;
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v21.i32[0] = *(v17 - 27);
        v21.i32[1] = *(v17 - 18);
        v21.i32[2] = *(v17 - 9);
        v21.i32[3] = *v17;
        v22.i32[0] = v17[9];
        v22.i32[1] = v17[18];
        v22.i32[2] = v17[27];
        v22.i32[3] = v17[36];
        v18 = vaddq_s32(v21, v18);
        v20 = vaddq_s32(v22, v20);
        v17 += 72;
        v19 -= 8;
      }

      while (v19);
      v16 = vaddvq_s32(vaddq_s32(v20, v18));
      if (v15 == v14)
      {
LABEL_36:
        if (v16)
        {
          v26 = v14;
        }

        else
        {
          v26 = 1;
        }

        if (v26 < 2 || (valid = webrtc::SimulcastUtility::ValidSimulcastParameters(a2, v26), v12 = a2, valid))
        {
          v29 = &unk_2882A3B78;
          webrtc::Vp8TemporalLayersFactory::Create(&v29, v12);
        }

        return 4294967281;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v23 = v14 - v15;
    v24 = (a2 + 36 * v15 + 52);
    do
    {
      v25 = *v24;
      v24 += 9;
      v16 += v25;
      --v23;
    }

    while (v23);
    goto LABEL_36;
  }

  return result;
}

void std::vector<webrtc::EncodedImage>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = 0x82FA0BE82FA0BE83 * ((v3 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = a1[2];
    if (0x82FA0BE82FA0BE83 * ((v7 - v3) >> 3) >= v6)
    {
      v12 = v3 + 344 * v6;
      while (v3)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *(v3 + 24) = 4;
        *(v3 + 32) = 0;
        *(v3 + 36) = -1;
        *(v3 + 40) = -1;
        *(v3 + 128) = 0;
        *(v3 + 160) = 0;
        *(v3 + 168) = 0;
        *(v3 + 176) = 0;
        *(v3 + 184) = 0;
        *(v3 + 188) = 0;
        *(v3 + 192) = 0;
        *(v3 + 196) = 0;
        *(v3 + 216) = 0;
        *(v3 + 208) = 0;
        *(v3 + 112) = 0;
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 149) = 0;
        *(v3 + 136) = 0;
        *(v3 + 144) = 0;
        *(v3 + 200) = v3 + 208;
        *(v3 + 224) = 0;
        *(v3 + 292) = 0;
        *(v3 + 296) = 0;
        *(v3 + 298) = 0;
        *(v3 + 304) = 0;
        *(v3 + 312) = 1;
        *(v3 + 314) = 0;
        *(v3 + 320) = 0;
        *(v3 + 336) = 0;
        v3 += 344;
        if (v3 == v12)
        {
          a1[1] = v12;
          return;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0xBE82FA0BE82FA0)
    {
      v8 = 0x82FA0BE82FA0BE83 * ((v7 - v4) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x5F417D05F417D0)
      {
        v10 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0xBE82FA0BE82FA0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v5)
  {
    v11 = v4 + 344 * a2;
    while (v3 != v11)
    {
      webrtc::EncodedImage::~EncodedImage((v3 - 344));
    }

    a1[1] = v11;
  }
}

uint64_t *std::vector<vpx_codec_ctx>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = result[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v7 - v2) >> 3) >= v6)
    {
      v11 = v2 + 56 * v6;
      v12 = 56 * a2 - 8 * (v4 >> 3);
      while (v2)
      {
        *(v2 + 48) = 0;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 0uLL;
        *v2 = 0uLL;
        v2 += 56;
        v12 -= 56;
        if (!v12)
        {
          result[1] = v11;
          return result;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0x492492492492492)
    {
      v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v3) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v5)
  {
    result[1] = v3 + 56 * a2;
  }

  return result;
}

uint64_t *std::vector<vpx_codec_enc_cfg>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0xEFBEFBEFBEFBEFBFLL * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = result[2];
    if (0xEFBEFBEFBEFBEFBFLL * ((v7 - v2) >> 3) >= v6)
    {
      v11 = v2 + 504 * v6;
      v12 = 504 * a2 - 8 * (v4 >> 3);
      while (v2)
      {
        *(v2 + 496) = 0;
        *(v2 + 464) = 0uLL;
        *(v2 + 480) = 0uLL;
        *(v2 + 432) = 0uLL;
        *(v2 + 448) = 0uLL;
        *(v2 + 400) = 0uLL;
        *(v2 + 416) = 0uLL;
        *(v2 + 368) = 0uLL;
        *(v2 + 384) = 0uLL;
        *(v2 + 336) = 0uLL;
        *(v2 + 352) = 0uLL;
        *(v2 + 304) = 0uLL;
        *(v2 + 320) = 0uLL;
        *(v2 + 272) = 0uLL;
        *(v2 + 288) = 0uLL;
        *(v2 + 240) = 0uLL;
        *(v2 + 256) = 0uLL;
        *(v2 + 208) = 0uLL;
        *(v2 + 224) = 0uLL;
        *(v2 + 176) = 0uLL;
        *(v2 + 192) = 0uLL;
        *(v2 + 144) = 0uLL;
        *(v2 + 160) = 0uLL;
        *(v2 + 112) = 0uLL;
        *(v2 + 128) = 0uLL;
        *(v2 + 80) = 0uLL;
        *(v2 + 96) = 0uLL;
        *(v2 + 48) = 0uLL;
        *(v2 + 64) = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 0uLL;
        *v2 = 0uLL;
        v2 += 504;
        v12 -= 504;
        if (!v12)
        {
          result[1] = v11;
          return result;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0x82082082082082)
    {
      v8 = 0xEFBEFBEFBEFBEFBFLL * ((v7 - v3) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x41041041041041)
      {
        v10 = 0x82082082082082;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x82082082082082)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v5)
  {
    result[1] = v3 + 504 * a2;
  }

  return result;
}

uint64_t *std::vector<webrtc::Vp8EncoderConfig>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0x8E38E38E38E38E39 * (v4 >> 4);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = result[2];
    if (0x8E38E38E38E38E39 * ((v7 - v2) >> 4) >= v6)
    {
      v11 = &v2[9 * v6];
      v12 = 144 * a2 - 16 * (v4 >> 4);
      while (v2)
      {
        v2[7] = 0uLL;
        v2[8] = 0uLL;
        v2[5] = 0uLL;
        v2[6] = 0uLL;
        v2[3] = 0uLL;
        v2[4] = 0uLL;
        v2[1] = 0uLL;
        v2[2] = 0uLL;
        *v2 = 0uLL;
        v2 += 9;
        v12 -= 144;
        if (!v12)
        {
          result[1] = v11;
          return result;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0x1C71C71C71C71C7)
    {
      v8 = 0x8E38E38E38E38E39 * ((v7 - v3) >> 4);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v5)
  {
    result[1] = v3 + 144 * a2;
  }

  return result;
}

uint64_t *std::vector<vpx_rational>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = a2 - (v4 >> 3);
  if (a2 > v4 >> 3)
  {
    v6 = result[2];
    if (v5 <= (v6 - v2) >> 3)
    {
      v11 = &v2[v5];
      v12 = 8 * a2 - 8 * (v4 >> 3);
      while (v2)
      {
        *v2++ = 0;
        v12 -= 8;
        if (!v12)
        {
          result[1] = v11;
          return result;
        }
      }

      __break(1u);
    }

    else if (!(a2 >> 61))
    {
      v7 = v6 - v3;
      v8 = (v6 - v3) >> 2;
      if (v8 <= a2)
      {
        v8 = a2;
      }

      v9 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v4 >> 3)
  {
    result[1] = v3 + 8 * a2;
  }

  return result;
}

uint64_t *std::vector<vpx_image>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0xF0F0F0F0F0F0F0F1 * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = result[2];
    if (0xF0F0F0F0F0F0F0F1 * ((v7 - v2) >> 3) >= v6)
    {
      v11 = v2 + 136 * v6;
      v12 = 136 * a2 - 8 * (v4 >> 3);
      while (v2)
      {
        *(v2 + 128) = 0;
        *(v2 + 96) = 0uLL;
        *(v2 + 112) = 0uLL;
        *(v2 + 64) = 0uLL;
        *(v2 + 80) = 0uLL;
        *(v2 + 32) = 0uLL;
        *(v2 + 48) = 0uLL;
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        v2 += 136;
        v12 -= 136;
        if (!v12)
        {
          result[1] = v11;
          return result;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0x1E1E1E1E1E1E1E1)
    {
      v8 = 0xF0F0F0F0F0F0F0F1 * ((v7 - v3) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0xF0F0F0F0F0F0F0)
      {
        v10 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x1E1E1E1E1E1E1E1)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v5)
  {
    result[1] = v3 + 136 * a2;
  }

  return result;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<float>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

uint64_t webrtc::LibvpxVp8Encoder::NumberOfThreads(webrtc::LibvpxVp8Encoder *this, int a2, int a3, int a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  (*(*this + 16))(v23);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = 10;
  if (__p <= "max_thread" && &__p[1] + 2 > "max_thread")
  {
    __break(1u);
  }

  strcpy(__p, "max_thread");
  v21 = 0;
  v15 = &unk_2882937F0;
  v22 = 0;
  v25[0] = &v15;
  if ((v24 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = v23[1];
  }

  webrtc::ParseFieldTrial(v25, 1, v7, v8);
  v9 = v22;
  v10 = a3 * a2;
  if (v22 < 1)
  {
    if (v10 >= 2073600 && a4 > 8)
    {
      v11 = 8;
      v15 = &unk_288293910;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v10 > 1228800 && a4 > 5)
    {
      v11 = 3;
      v15 = &unk_288293910;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (a4 <= 5)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    if (a4 <= 2 || v10 <= 307200)
    {
      v11 = 1;
    }

    else
    {
      v11 = v12;
    }

    v15 = &unk_288293910;
    if (v20 < 0)
    {
LABEL_35:
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v22 >= a4)
    {
      v9 = a4;
    }

    if (v10 < 57600)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    v15 = &unk_288293910;
    if (v20 < 0)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return v11;
}

uint64_t webrtc::LibvpxVp8Encoder::InitAndSetControlSettings(webrtc::LibvpxVp8Encoder *this)
{
  v2 = *(this + 92) - *(this + 91);
  result = *(this + 6);
  if ((0x6DB6DB6DB6DB6DB7 * (v2 >> 3)) < 2)
  {
    if (v2 != 56 || *(this + 95) == *(this + 94))
    {
      goto LABEL_27;
    }

    result = (*(*result + 56))(result);
    if (result)
    {
      return 4294967289;
    }
  }

  else
  {
    if (*(this + 95) == *(this + 94) || *(this + 101) == *(this + 100))
    {
      goto LABEL_27;
    }

    result = (*(*result + 64))(result);
    if (result)
    {
      return 4294967289;
    }
  }

  if (*(this + 92) != *(this + 91))
  {
    (*(**(this + 6) + 80))(*(this + 6));
    v4 = *(this + 92);
    v5 = *(this + 91);
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3)) >= 3)
    {
      if (*(this + 509))
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      (*(**(this + 6) + 80))(*(this + 6), v5 + 56, 15, v6);
      v4 = *(this + 92);
      v5 = *(this + 91);
    }

    if (v4 == v5)
    {
LABEL_26:
      result = 0;
      *(this + 536) = 1;
      return result;
    }

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(this + 119) == 1 ? 100 : 1;
      result = (*(**(this + 6) + 80))(*(this + 6), v5 + v7, 17, v9);
      v10 = *(this + 91);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v10) >> 3) <= v8)
      {
        break;
      }

      v11 = *(this + 82);
      if (v8 >= (*(this + 83) - v11) >> 2)
      {
        break;
      }

      result = (*(**(this + 6) + 88))(*(this + 6), v10 + v7, 13, *(v11 + 4 * v8));
      v12 = *(this + 91);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v12) >> 3) <= v8)
      {
        break;
      }

      result = (*(**(this + 6) + 88))(*(this + 6), v12 + v7, 18, 0);
      v13 = *(this + 91);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v13) >> 3) <= v8)
      {
        break;
      }

      result = (*(**(this + 6) + 80))(*(this + 6), v13 + v7, 26, *(this + 141));
      v14 = *(this + 91);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v14) >> 3) <= v8)
      {
        break;
      }

      (*(**(this + 6) + 80))(*(this + 6), v14 + v7, 31, 2 * (*(this + 119) == 1));
      ++v8;
      v5 = *(this + 91);
      v7 += 56;
      if (v8 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v5) >> 3))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t webrtc::LibvpxVp8Encoder::Encode(uint64_t a1, uint64_t a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  if (*(a1 + 536) != 1 || !*(a1 + 144))
  {
    return 4294967289;
  }

  v5 = *(a1 + 616);
  if (v5)
  {
    v6 = 0;
    while (*(a1 + 640) != v6)
    {
      if ((*(*(a1 + 608) + 8 * (v6 >> 6)) & (1 << v6)) != 0 && (*(*(a1 + 632) + 8 * (v6 >> 6)) & (1 << v6)) != 0)
      {
LABEL_20:
        v12 = 1;
        goto LABEL_22;
      }

      if (v5 == ++v6)
      {
        break;
      }
    }
  }

  if (a3)
  {
    v8 = a3[1];
    v9 = v8 - *a3;
    if (v8 != *a3)
    {
      v10 = 0;
      v11 = v9 >> 2;
      if ((v9 >> 2) <= 1)
      {
        v11 = 1;
      }

      while (*(a1 + 640) != v10)
      {
        if (*(*a3 + 4 * v10) == 3 && ((*(*(a1 + 632) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) != 0)
        {
          goto LABEL_20;
        }

        if (v11 == ++v10)
        {
          break;
        }
      }
    }
  }

  v12 = 0;
LABEL_22:
  if (*(a1 + 1160) == 1 && *(a1 + 640))
  {
    v13 = 0;
    v14 = *(a2 + 32);
    while (1)
    {
      if (((*(*(a1 + 632) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) != 0 && *(a1 + 532) == 1 && (*(**(a1 + 576) + 32))(*(a1 + 576), v13))
      {
        v25 = *(a1 + 824);
        if (v13 >= (*(a1 + 832) - v25) >> 3)
        {
          goto LABEL_153;
        }

        v26 = *(v25 + 8 * v13);
        if ((v26 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if ((*(a1 + 1160) & 1) == 0)
          {
            goto LABEL_153;
          }

          v27 = v14 - v26;
          if (v14 == 0x8000000000000000)
          {
            v27 = 0x8000000000000000;
          }

          if (v14 == 0x7FFFFFFFFFFFFFFFLL || v27 >= *(a1 + 1152))
          {
            break;
          }
        }
      }

      if (++v13 >= *(a1 + 640))
      {
        goto LABEL_25;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
    }

    v35 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 736) - *(a1 + 728)) >> 3);
    v36 = __CFADD__(v35, ~v13);
    v37 = v35 + ~v13;
    if (v36 && 0xEFBEFBEFBEFBEFBFLL * ((*(a1 + 760) - *(a1 + 752)) >> 3) > v37)
    {
      operator new();
    }

LABEL_153:
    __break(1u);
  }

LABEL_25:
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = (*(*v15 + 40))(v15);
    v17 = *(a2 + 8);
    if (v17)
    {
      v18 = (*(*v17 + 48))(v17) << 32;
      goto LABEL_30;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = 0;
LABEL_30:
  v19 = v18 | v16;
  if (*(a2 + 176))
  {
    v19 = *(a2 + 168);
  }

  if (!v19)
  {
    v20 = *(a1 + 968) < 3 ? 1 : v12;
    if ((v20 & 1) == 0)
    {
      v21 = *(a2 + 16) / 0x5Au;
      if (*(a1 + 860) != 1 || *(a1 + 856) <= v21)
      {
        v22 = v21;
        v23 = webrtc::RateStatistics::Rate((a1 + 872), v21);
        if ((*(a1 + 852) & 1) == 0)
        {
          goto LABEL_153;
        }

        if ((v24 & 1) != 0 && *(a1 + 848) < v23 || *(a1 + 860) == 1 && v22 - *(a1 + 856) < *(a1 + 864))
        {
          return 0;
        }
      }

      webrtc::FramerateControllerDeprecated::AddFrame((a1 + 848), *(a2 + 16) / 0x5Au);
    }
  }

  v105 = 1;
  v107[0] = 0;
  v106 = 0;
  v107[1] = 255;
  v108 = 1;
  v109 = 1;
  v111 = 0;
  v110 = 0;
  v112 = 255;
  v113 = 1;
  v114 = 1;
  v116 = 0;
  v115 = 0;
  v117 = 255;
  v118 = 1;
  if (*(a1 + 736) == *(a1 + 728))
  {
    goto LABEL_91;
  }

  v38 = 0;
  v39 = 0;
  v40 = &v105;
  do
  {
    (*(**(a1 + 576) + 56))(v121);
    *v40 = *v121;
    *(v40 + 13) = *&v121[13];
    v41 = *(v40 + 1) == 2 && *(v40 + 2) == 2 && *(v40 + 3) == 2;
    v12 |= v41;
    v42 = *v40;
    v40 += 32;
    v43 = v42 | v39 & 1;
    v39 = v42 & 1 | v39 & 1;
    ++v38;
    v44 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 736) - *(a1 + 728)) >> 3);
  }

  while (v38 < v44);
  if (!((v43 == 0) | v12 & 1))
  {
    return 0;
  }

  if (v44)
  {
    if (v12)
    {
      memset_pattern16(__b, &xmmword_273B91FD0, 0x6DB6DB6DB6DB6DB8 * ((*(a1 + 736) - *(a1 + 728)) >> 3));
    }

    else
    {
      v45 = v107;
      v46 = __b;
      do
      {
        v47 = *(v45 - 1);
        v48 = ~(*(v45 - 2) << 16) & 0x10000 | 0x40000;
        if ((*(v45 - 1) & 2) != 0)
        {
          v48 = ~(*(v45 - 2) << 16) & 0x10000;
        }

        if ((v47 & 1) == 0)
        {
          v48 |= 0x20000uLL;
        }

        if ((v47 & 2) == 0)
        {
          v48 |= 0x400000uLL;
        }

        if ((*v45 & 1) == 0)
        {
          v48 |= 0x200000uLL;
        }

        if ((*v45 & 2) == 0)
        {
          v48 |= 0x800000uLL;
        }

        if (*(v45 + 13))
        {
          v48 |= 0x100000uLL;
        }

        *v46++ = v48;
        v45 += 4;
        --v44;
      }

      while (v44);
    }
  }

LABEL_91:
  v49 = *(a2 + 8);
  if (v49)
  {
    (**v49)(*(a2 + 8));
  }

  *&v121[8] = 0x800000001;
  *v121 = 4;
  if ((*(*v49 + 32))(v49))
  {
    (**v49)(v49);
    v103 = v49;
    v50 = v49;
    v51 = v49;
  }

  else
  {
    v50 = v49;
    (*(*v49 + 80))(&v119, v49, &v121[8], 2);
    v51 = v119;
    v103 = v119;
    if (!v119)
    {
      v99 = 0;
      v59 = 1;
      v56 = v49;
      goto LABEL_109;
    }
  }

  v99 = v51;
  v52 = (*(*v51 + 32))();
  v53 = *&v121[8];
  if ((v121[0] & 1) == 0)
  {
    v53 = &v121[8];
  }

  v54 = *v121 >> 1;
  if (*v121 >= 2uLL)
  {
    v57 = 4 * v54;
    v55 = v53;
    v56 = v50;
    while (*v55 != v52)
    {
      ++v55;
      v57 -= 4;
      if (!v57)
      {
        goto LABEL_105;
      }
    }
  }

  else
  {
    v55 = v53;
    v56 = v50;
  }

  if (v55 != &v53[4 * v54])
  {
    goto LABEL_106;
  }

LABEL_105:
  if (((*v99)[4])(v99) == 2)
  {
LABEL_106:
    v58 = v99;
    goto LABEL_125;
  }

  v59 = 0;
LABEL_109:
  v60 = v56;
  (*(*v56 + 56))(&v119, v56);
  v61 = v119;
  if (!v119)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      ((*v60)[4])(v60);
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
    }

    goto LABEL_121;
  }

  if ((*(*v119 + 32))(v119) == 1 || (*(*v119 + 32))(v119) == 2)
  {
    v66 = v119;
    if (v119)
    {
      (**v119)(v119);
    }

    if ((v59 & 1) == 0)
    {
      (*v99)[1](v99);
    }

    v103 = v66;
    if (v66)
    {
      (**v66)(v66);
    }

    (*v60)[1](v60);
    v60 = v66;
    v99 = v66;
LABEL_121:
    if (v119)
    {
      (*(*v119 + 8))(v119);
    }

    if (v61)
    {
      v58 = v99;
LABEL_125:
      LODWORD(v120) = ((*v58)[4])(v58);
      v119 = 2;
      v74 = ((*v58)[4])(v58);
      if ((v74 - 1) >= 2)
      {
        if (v74 != 8)
        {
          v76 = *(a1 + 688);
          v77 = *(a1 + 680);
          goto LABEL_140;
        }

        v75 = 265;
        v76 = *(a1 + 688);
        v77 = *(a1 + 680);
        if (v76 == v77)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v75 = 258;
        v76 = *(a1 + 688);
        v77 = *(a1 + 680);
        if (v76 == v77)
        {
          goto LABEL_153;
        }
      }

      if (*v77 != v75)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v78, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc");
        }

        v76 = *(a1 + 688);
        v77 = *(a1 + 680);
        if (v76 != v77)
        {
          v85 = *(v77 + 6);
          v86 = *(v77 + 7);
          v87 = *(a1 + 680);
          (*(**(a1 + 48) + 32))(*(a1 + 48), v87);
          (*(**(a1 + 48) + 24))(*(a1 + 48), v87, v75, v85, v86, 1, 0);
          v77 = *(a1 + 680);
          v88 = *(a1 + 688);
          if (0xF0F0F0F0F0F0F0F1 * ((v88 - v77) >> 3) < 2)
          {
            __p = 0;
            v101 = 0;
            v102 = 0;
            if (v88 == v77)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v89 = 0;
            v90 = 1;
            do
            {
              v91 = &v77[v89];
              v92 = *&v77[v89 + 160];
              v93 = *&v77[v89 + 164];
              (*(**(a1 + 48) + 32))(*(a1 + 48), &v77[v89 + 136]);
              (*(**(a1 + 48) + 16))(*(a1 + 48), v91 + 34, v75, v92, v93, 32);
              v77 = *(a1 + 680);
              v94 = *(a1 + 688);
              ++v90;
              v89 += 136;
            }

            while (v90 < 0xF0F0F0F0F0F0F0F1 * ((v94 - v77) >> 3));
            __p = 0;
            v101 = 0;
            v102 = 0;
            if (v94 == v77)
            {
              goto LABEL_153;
            }
          }

LABEL_141:
          std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(&__p);
        }
      }

LABEL_140:
      __p = 0;
      v101 = 0;
      v102 = 0;
      if (v76 == v77)
      {
        goto LABEL_153;
      }

      goto LABEL_141;
    }

    if (v99)
    {
      (*v99)[1](v99);
    }

    if (v121[0])
    {
      operator delete(*&v121[8]);
    }

    if (v60)
    {
      (*v60)[1](v60);
    }

    return 0xFFFFFFFFLL;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc", 1475, "converted_buffer->type() == VideoFrameBuffer::Type::kI420 || converted_buffer->type() == VideoFrameBuffer::Type::kI420A", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v62, v63, v64, v65, v98);
  return webrtc::LibvpxVp8Encoder::GetEncodedPartitions(v96, v97);
}

uint64_t webrtc::LibvpxVp8Encoder::GetEncodedPartitions(webrtc::LibvpxVp8Encoder *this, const webrtc::VideoFrame *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(this + 92);
  v4 = *(this + 91);
  if (v3 != v4)
  {
    v14 = 0;
    v6 = *(this + 88);
    if (0x82FA0BE82FA0BE83 * ((*(this + 89) - v6) >> 3))
    {
      *(v6 + 144) = 0;
      *(v6 + 24) = 4;
      v15 = 0;
      v16[1624] = 1;
      v16[1632] = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      bzero(v16, 0x658uLL);
      if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3))
      {
        v2 = 0;
        do
        {
          v7 = (*(**(this + 6) + 192))(*(this + 6), v4, &v14);
          if (!v7)
          {
            operator new();
          }

          if (!*v7)
          {
            v2 += *(v7 + 16);
          }

          v4 = *(this + 91);
        }

        while (0x6DB6DB6DB6DB6DB7 * ((*(this + 92) - v4) >> 3));
      }
    }

    __break(1u);
    v9 = *(v2 + 16) + v4;
    (*(MEMORY[0x158] + 48))(344);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/libvpx_vp8_encoder.cc", 1261, "encoded_pos + pkt->data.frame.sz <= buffer->size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v10, v11, v12, v13, v9);
  }

  return 0;
}

void webrtc::LibvpxVp8Encoder::GetEncoderInfo(webrtc::LibvpxVp8Encoder *this@<X0>, uint64_t a2@<X8>)
{
  v46[1] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0x10000E100;
  *(a2 + 20) = 0;
  v4 = a2 + 24;
  *(a2 + 47) = 7;
  if (v4 <= "unknown" && a2 + 31 > "unknown")
  {
    goto LABEL_60;
  }

  *(a2 + 56) = 2;
  *(a2 + 31) = 0;
  *(a2 + 64) = -1;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  *(a2 + 176) = 0;
  *(a2 + 152) = 0;
  *(a2 + 208) = 2;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 216) = 1;
  *(a2 + 240) = 0;
  *(a2 + 244) = 0;
  *(a2 + 248) = 0;
  *(a2 + 47) = 6;
  *v4 = 1986161004;
  *(v4 + 4) = 30832;
  *(a2 + 30) = 0;
  *(a2 + 48) = *(this + 132);
  *(a2 + 49) = 0;
  v45 = a2 + 56;
  *(a2 + 200) = 1;
  if ((a2 + 176) != (this + 584))
  {
    v5 = *(this + 73);
    v6 = *(this + 74);
    if (v5 != v6)
    {
      std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits>::__assign_with_size[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits*,webrtc::VideoEncoder::ResolutionBitrateLimits*>((a2 + 176), v5, v6, (v6 - v5) >> 4);
    }
  }

  if (*(this + 1056) != 1 || *(this + 263))
  {
    v7 = *(this + 1052);
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    if (v7)
    {
      *(a2 + 16) = v7;
      *(a2 + 20) = *(this + 1121);
      goto LABEL_11;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
    }

LABEL_60:
    __break(1u);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
  }

LABEL_11:
  v8 = *(this + 141);
  v9 = *(this + 142);
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(this + 142) == 1 && ((v10 = *(this + 94), v10 == *(this + 95)) || *(v10 + 48)) && (*(this + 510) & 1) != 0)
  {
    v11 = 1;
    v12 = 0x5F0000001DLL;
  }

  else
  {
    v11 = 0;
    v12 = 0x5F00000000;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 9) = v46[0];
  *(a2 + 11) = BYTE2(v46[0]);
  *(a2 + 12) = 57600;
  if (*(this + 128) != 1)
  {
    goto LABEL_25;
  }

  if (*(this + 31) >= 1)
  {
    v13 = *(this + 124);
    if ((v13 & 0x100000000) != 0)
    {
      if (v13 > 0)
      {
LABEL_26:
        *(a2 + 12) = v13;
        goto LABEL_27;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
LABEL_25:
      v13 = *(this + 124);
      if ((v13 & 0x100000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  v46[0] = 0x800000001;
  absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::VideoFrameBuffer::Type>,webrtc::VideoFrameBuffer::Type const*>>((a2 + 208), v46, 2uLL);
  if (*(this + 536) == 1)
  {
    v44 = a2;
    v14 = *(this + 92) - *(this + 91);
    if (v14)
    {
      v15 = 0;
      v16 = v14 >> 3;
      v17 = 0x6DB6DB6DB6DB6DB7;
      v18 = 0x6DB6DB6DB6DB6DB7 * v16;
      v19 = 72 * v16 - 264;
      do
      {
        v20 = (v45 + 24 * v15);
        if (*v20)
        {
          v21 = v17;
          operator delete(v20[1]);
          v17 = v21;
        }

        --v18;
        *v20 = 0;
        if (v15 >= *(this + 184) || *(this + 36 * v15 + 220) == 1)
        {
          if (v15 || *(this + 119) != 1 || *(this + 504) != 1 || (v22 = *(this + 38), v22 != 1) && v22 != 4)
          {
            v23 = *(this + 94);
            if (0xEFBEFBEFBEFBEFBFLL * ((*(this + 95) - v23) >> 3) <= v18)
            {
              goto LABEL_60;
            }

            if (*(v23 + 504 * v18 + 216) < 2u)
            {
              *(v20 + 8) = -1;
              *v20 = 2;
            }

            else
            {
              v24 = 0;
              v25 = v19;
              while (v24 < *(v23 + 504 * v18 + 216))
              {
                v26 = fmin((0xFFu / *(v23 + v25)) + 0.5, 255.0);
                LOBYTE(v46[0]) = v26;
                v27 = *v20;
                if (*v20)
                {
                  v28 = v20[1];
                  v29 = v27 >> 1;
                  if (v29 == v20[2])
                  {
LABEL_51:
                    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::EmplaceBackSlow<unsigned char>();
                  }
                }

                else
                {
                  v28 = v20 + 1;
                  v29 = v27 >> 1;
                  if (v29 == 16)
                  {
                    goto LABEL_51;
                  }
                }

                if (v28)
                {
                  *(v28 + v29) = v26;
                  *v20 += 2;
                  ++v24;
                  v23 = *(this + 94);
                  v25 += 4;
                  if (0xEFBEFBEFBEFBEFBFLL * ((*(this + 95) - v23) >> 3) > v18)
                  {
                    continue;
                  }
                }

                goto LABEL_60;
              }
            }
          }
        }

        ++v15;
        v19 -= 504;
      }

      while (v15 < ((*(this + 92) - *(this + 91)) >> 3) * v17);
    }

    if (*(this + 119) == 1)
    {
      *(v44 + 244) = 15;
      *(v44 + 248) = 1;
    }
  }
}

void *webrtc::anonymous namespace::SetRawImagePlanes(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2);
  if ((result - 1) >= 2)
  {
    if (result != 8)
    {
      return result;
    }

    if ((*(*a2 + 32))(a2) != 8)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 76, "type() == Type::kNV12", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v16);
      return std::__fill[abi:sn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,BOOL>(v11, v12, v13, v14, v15);
    }

    *(a1 + 48) = (*(*a2 + 128))(a2);
    v10 = (*(*a2 + 136))(a2);
    *(a1 + 56) = v10;
    *(a1 + 64) = v10 + 1;
    *(a1 + 80) = (*(*a2 + 112))(a2);
    *(a1 + 84) = (*(*a2 + 120))(a2);
    result = (*(*a2 + 120))(a2);
  }

  else
  {
    v5 = (*(*a2 + 64))(a2);
    *(a1 + 48) = (*(*v5 + 136))(v5);
    *(a1 + 56) = (*(*v5 + 144))(v5);
    *(a1 + 64) = (*(*v5 + 152))(v5);
    *(a1 + 80) = (*(*v5 + 112))(v5);
    *(a1 + 84) = (*(*v5 + 120))(v5);
    result = (*(*v5 + 128))(v5);
  }

  *(a1 + 88) = result;
  return result;
}

void *std::__fill[abi:sn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,BOOL>(void *result, unsigned int a2, uint64_t a3, unsigned int a4, char a5)
{
  v5 = a4 - a2 + 8 * (a3 - result);
  if (v5 >= 1)
  {
    if (a5)
    {
      if (a2)
      {
        if (64 - a2 >= v5)
        {
          v6 = a4 - a2 + 8 * (a3 - result);
        }

        else
        {
          v6 = 64 - a2;
        }

        *result++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2);
        v5 -= v6;
      }

      v7 = v5 >> 6;
      if (v5 >= 0x40)
      {
        v8 = result;
        memset(result, 255, 8 * v7);
        result = v8;
      }

      if ((v5 & 0x3F) != 0)
      {
        v9 = result[v7] | (0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
LABEL_21:
        result[v7] = v9;
      }
    }

    else
    {
      if (a2)
      {
        if (64 - a2 >= v5)
        {
          v10 = a4 - a2 + 8 * (a3 - result);
        }

        else
        {
          v10 = 64 - a2;
        }

        *result++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2));
        v5 -= v10;
      }

      v7 = v5 >> 6;
      if (v5 >= 0x40)
      {
        v11 = result;
        bzero(result, 8 * v7);
        result = v11;
      }

      if ((v5 & 0x3F) != 0)
      {
        v9 = result[v7] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
        goto LABEL_21;
      }
    }
  }

  return result;
}

void std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 3) + 1;
  if (!(v1 >> 61))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 2 > v1)
    {
      v1 = v2 >> 2;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::LibvpxVp9Decoder::~LibvpxVp9Decoder(webrtc::LibvpxVp9Decoder *this)
{
  *this = &unk_288295710;
  *(this + 112) = 1;
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 && *(v2 + 48))
    {
      (*(v3 + 32))();
      *(v2 + 48) = 0;
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      v4 = *(this + 15);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v2 + 16) = 1;
      v4 = *(this + 15);
      if (!v4)
      {
LABEL_8:
        *(this + 15) = 0;
        goto LABEL_9;
      }
    }

    MEMORY[0x2743DA540](v4, 0x10F2C40209C4D79);
    goto LABEL_8;
  }

LABEL_9:
  pthread_mutex_lock((this + 8));
  v5 = *(this + 9);
  for (i = *(this + 10); i != v5; i -= 8)
  {
    v8 = *(i - 8);
    v7 = v8;
    if (v8 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      v9 = *(v7 + 24);
      *(v7 + 24) = 0;
      if (v9)
      {
        MEMORY[0x2743DA520](v9, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v7, 0x1010C40A70995B8);
    }
  }

  *(this + 10) = v5;
  pthread_mutex_unlock((this + 8));
  *(this + 112) = 0;
  pthread_mutex_lock((this + 8));
  v10 = *(this + 9);
  v11 = *(this + 10);
  if (v10 == v11)
  {
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      if (atomic_load_explicit(v13, memory_order_acquire) != 1)
      {
        ++v12;
      }
    }

    while (v10 != v11);
    pthread_mutex_unlock((this + 8));
    if (v12 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_decoder.cc");
    }
  }

  v21 = *(this + 9);
  if (v21)
  {
    v22 = *(this + 10);
    v23 = *(this + 9);
    if (v22 != v21)
    {
      do
      {
        v25 = *(v22 - 8);
        v22 -= 8;
        v24 = v25;
        if (v25 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
        {
          v26 = *(v24 + 24);
          *(v24 + 24) = 0;
          if (v26)
          {
            MEMORY[0x2743DA520](v26, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v24, 0x1010C40A70995B8);
        }
      }

      while (v22 != v21);
      v23 = *(this + 9);
    }

    *(this + 10) = v21;
    operator delete(v23);
  }

  pthread_mutex_destroy((this + 8));
}

{
  webrtc::LibvpxVp9Decoder::~LibvpxVp9Decoder(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LibvpxVp9Decoder::Configure(webrtc::LibvpxVp9Decoder *this, const webrtc::VideoDecoder::Settings *a2)
{
  if (((*(*this + 48))(this) & 0x80000000) == 0)
  {
    v4 = *(this + 15);
    if (!v4)
    {
      operator new();
    }

    v30 = 0;
    v6 = *(a2 + 2);
    v5 = *(a2 + 3);
    if (v6 < 1 || v5 < 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * v6 * v5 / 0xE1000u;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      if (v8 >= *(a2 + 4))
      {
        v8 = *(a2 + 4);
      }
    }

    v29 = v8;
    v9 = *(a2 + 2);
    *(this + 132) = *a2;
    *(this + 148) = v9;
    if (dword_2882A7CD0 != 5)
    {
      v10 = 3;
      goto LABEL_18;
    }

    if ((byte_2882A7CD8 & 1) == 0)
    {
      v10 = 4;
LABEL_18:
      v11 = 0;
      *(v4 + 16) = v10;
      return v11;
    }

    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0;
    *v4 = 0u;
    *v4 = vpx_codec_vp9_dx_algo;
    *(v4 + 8) = &vpx_codec_vp9_dx_algo;
    *(v4 + 32) = 0;
    *(v4 + 40) = &v29;
    v10 = (off_2882A7CE0[0])(v4);
    if (v10)
    {
      v13 = *(v4 + 48);
      if (v13)
      {
        *(v4 + 24) = *v13;
        v14 = *(v4 + 8);
        if (v14)
        {
          v15 = v10;
          (*(v14 + 32))(v13);
          v10 = v15;
          *(v4 + 48) = 0;
          *v4 = 0;
          *(v4 + 8) = 0;
        }
      }

      else
      {
        *(v4 + 24) = 0;
      }

      goto LABEL_18;
    }

    *(v4 + 16) = 0;
    if (webrtc::Vp9FrameBufferPool::InitializeVpxUsePool(this + 8, *(this + 15)))
    {
      *(this + 112) = 1;
      *(this + 128) = 1;
      if ((*a2 & 0x100000000) == 0 || webrtc::Vp9FrameBufferPool::Resize((this + 8), *a2))
      {
        v11 = 1;
        if (!vpx_codec_control_(*(this + 15), 269, v16, v17, v18, v19, v20, v21, 1))
        {
          return v11;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_decoder.cc");
        }
      }
    }
  }

  return 0;
}

uint64_t webrtc::LibvpxVp9Decoder::Decode(webrtc::LibvpxVp9Decoder *this, const webrtc::EncodedImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(this + 112) != 1 || !*(this + 13))
  {
    return 4294967289;
  }

  if (*(a2 + 6) == 3)
  {
    v10 = *(a2 + 17);
    if (v10)
    {
      v10 = (*(*v10 + 40))(v10);
    }

    v11 = *(a2 + 18);
    if (!v11)
    {
      v10 = 0;
    }

    webrtc::ParseUncompressedVp9Header(v10, v11, a5, a6, a7, a8, &v57);
    if (v59 == 1)
    {
      v12 = v58;
      v13 = HIDWORD(v58);
      if (v58 != *(this + 140))
      {
        (*(*this + 48))(this);
        *(this + 140) = v12 | (v13 << 32);
        if (((*(*this + 16))(this, this + 132) & 1) == 0)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_decoder.cc");
          }

          return 4294967289;
        }
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_decoder.cc");
    }
  }

  if (*(this + 128) == 1)
  {
    if (*(a2 + 6) != 3)
    {
      return 0xFFFFFFFFLL;
    }

    *(this + 128) = 0;
  }

  v56 = 0;
  v29 = *(a2 + 17);
  if (v29)
  {
    v29 = (*(*v29 + 40))(v29);
  }

  v30 = *(a2 + 18);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = *(this + 15);
  if (!v32)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v30 != 0) == (v31 == 0))
  {
    v44 = 8;
LABEL_35:
    *(v32 + 16) = v44;
    return 0xFFFFFFFFLL;
  }

  v33 = *(v32 + 8);
  if (!v33 || !*(v32 + 48))
  {
    v44 = 1;
    goto LABEL_35;
  }

  v34 = (*(v33 + 64))();
  *(v32 + 16) = v34;
  if (v34)
  {
    return 0xFFFFFFFFLL;
  }

  v41 = *(this + 15);
  if (v41 && (v42 = *(v41 + 8)) != 0 && *(v41 + 48))
  {
    v43 = (*(v42 + 72))(*(v41 + 48), &v56);
    v41 = *(this + 15);
  }

  else
  {
    v43 = 0;
  }

  v55 = 0;
  vpx_codec_control_(v41, 267, v35, v36, v37, v38, v39, v40, &v55);
  if (!v43)
  {
    return 1;
  }

  v45 = *(v43 + 128);
  if (v45)
  {
    atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
  }

  v46 = *v43;
  if (*v43 > 2305)
  {
    switch(v46)
    {
      case 2306:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
      case 2309:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
      case 2310:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
    }
  }

  else
  {
    switch(v46)
    {
      case 258:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
      case 261:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
      case 262:
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 1u, memory_order_relaxed);
        }

        operator new();
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_decoder.cc");
  }

  result = 1;
  if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
  {
    v54 = *(v45 + 24);
    *(v45 + 24) = 0;
    if (v54)
    {
      MEMORY[0x2743DA520](v54, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v45, 0x1010C40A70995B8);
    return 1;
  }

  return result;
}

uint64_t webrtc::LibvpxVp9Decoder::Release(webrtc::LibvpxVp9Decoder *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    if (*(this + 112) == 1)
    {
      v3 = *(v2 + 8);
      if (v3 && *(v2 + 48))
      {
        v4 = v2;
        (*(v3 + 32))(*(v2 + 48));
        v5 = 0;
        *(v4 + 48) = 0;
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        if (!*(this + 15))
        {
LABEL_12:
          *(this + 15) = 0;
          pthread_mutex_lock((this + 8));
          v6 = *(this + 9);
          v7 = *(this + 10);
          if (v7 == v6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else
      {
        *(v2 + 16) = 1;
        v5 = 4294967293;
        if (!*(this + 15))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x2743DA540]();
    goto LABEL_12;
  }

  v5 = 0;
  pthread_mutex_lock((this + 8));
  v6 = *(this + 9);
  v7 = *(this + 10);
  if (v7 == v6)
  {
    goto LABEL_20;
  }

  do
  {
LABEL_16:
    v9 = *(v7 - 8);
    v7 -= 8;
    v8 = v9;
    if (v9 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      v10 = *(v8 + 24);
      *(v8 + 24) = 0;
      if (v10)
      {
        MEMORY[0x2743DA520](v10, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v8, 0x1010C40A70995B8);
    }
  }

  while (v7 != v6);
LABEL_20:
  *(this + 10) = v6;
  pthread_mutex_unlock((this + 8));
  *(this + 112) = 0;
  return v5;
}

void webrtc::LibvpxVp9Decoder::GetDecoderInfo(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = 6;
  *(a1 + 4) = 30832;
  *a1 = 1986161004;
  *(a1 + 24) = 0;
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0>,void ()(void)>::~__func(void *result)
{
  *result = &unk_288295768;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_288295768;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288295768;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1>,void ()(void)>::~__func(void *result)
{
  *result = &unk_2882957B0;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2882957B0;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882957B0;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_1>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2>,void ()(void)>::~__func(void *result)
{
  *result = &unk_2882957F8;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2882957F8;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882957F8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_2>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3>,void ()(void)>::~__func(void *result)
{
  *result = &unk_288295840;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_288295840;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288295840;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_3>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4>,void ()(void)>::~__func(void *result)
{
  *result = &unk_288295888;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_288295888;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288295888;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_4>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5>,void ()(void)>::~__func(void *result)
{
  *result = &unk_2882958D0;
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2882958D0;
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882958D0;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5>,void ()(void)>::destroy(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5,std::allocator<webrtc::LibvpxVp9Decoder::ReturnFrame(vpx_image const*,unsigned int,int,webrtc::ColorSpace const*)::$_5>,void ()(void)>::destroy_deallocate(void *a1)
{
  v1 = a1[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = a1;
    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A70995B8);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t webrtc::LibvpxVp9Encoder::EncoderOutputCodedPacketCallback(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(result + 16))
  {
    memset(v2, 0, sizeof(v2));
    v3 = 0;
    (*(**(a2 + 48) + 152))(*(a2 + 48), *(a2 + 2880), 44, v2);
    operator new();
  }

  return result;
}

void webrtc::LibvpxVp9Encoder::LibvpxVp9Encoder(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 2521);
  *a1 = &unk_288295918;
  v8 = *a2;
  *(a1 + 8) = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v9;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 4;
  *(a1 + 88) = 0;
  *(a1 + 92) = -1;
  *(a1 + 96) = -1;
  *(a1 + 184) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 205) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0;
  *(a1 + 348) = 0;
  *(a1 + 352) = 0;
  *(a1 + 354) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 1;
  *(a1 + 370) = 0;
  *(a1 + 376) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 2032) = 1;
  *(a1 + 2040) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2256) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2400) = 0;
  *(a1 + 2456) = 0;
  bzero((a1 + 408), 0x658uLL);
  *(a1 + 2480) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2496) = 1;
  *(a1 + 2500) = 0;
  *(a1 + 2504) = 0;
  *(a1 + 2508) = 0u;
  *(a1 + 2540) = 0u;
  *(a1 + 2556) = 0u;
  *(a1 + 2572) = 0u;
  *(a1 + 2588) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2520) = 1;
  *(a1 + 2524) = 0u;
  *(a1 + 2540) = 0;
  *(a1 + 2556) = 1;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0;
  *(a1 + 2592) = 1;
  *(a1 + 2596) = 0u;
  *(a1 + 2612) = 0;
  *(a1 + 2792) = 0;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2628) = 1;
  *(a1 + 2648) = 0;
  *(a1 + 2632) = 0u;
  *(a1 + 2664) = 1;
  *(a1 + 2684) = 0;
  *(a1 + 2668) = 0u;
  *(a1 + 2700) = 1;
  *(a1 + 2720) = 0;
  *(a1 + 2704) = 0u;
  *(a1 + 2736) = 1;
  *(a1 + 2756) = 0;
  *(a1 + 2740) = 0u;
  *(a1 + 2772) = 1;
  *(a1 + 2792) = 0;
  *(a1 + 2776) = 0u;
  *(a1 + 2796) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2808) = 0;
  *(a1 + 2816) = 0;
  *(a1 + 2824) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2852) = 0;
  *(a1 + 2844) = 0;
  *(a1 + 2828) = 0u;
  *(a1 + 2856) = a3;
  *(a1 + 2860) = 0;
  *(a1 + 2864) = 0;
  *(a1 + 2872) = 0;
  *(a1 + 3200) = 0;
  *(a1 + 2896) = 0;
  *(a1 + 2880) = 0u;
  v7[2231] = 1;
  *(a1 + 4768) = 0;
  *(a1 + 4760) = 0;
  (*(*a2[1] + 16))(__p);
  v11 = 0;
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12 >= 7)
  {
    v13 = __p[0];
    if ((v18 & 0x80u) == 0)
    {
      v13 = __p;
    }

    v14 = *v13;
    v15 = *(v13 + 3);
    v11 = v14 == 1650552389 && v15 == 1684368482;
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7[2252] = v11;
  v7[2253] = 0;
  *(a1 + 4776) = 1;
  webrtc::RateControlSettings::RateControlSettings(__p, a2[1]);
}

void webrtc::LibvpxVp9Encoder::~LibvpxVp9Encoder(webrtc::LibvpxVp9Encoder *this)
{
  *this = &unk_288295918;
  v2 = *(this + 360);
  if (v2)
  {
    if (*(this + 2860) != 1 || ((*(**(this + 6) + 72))(*(this + 6), v2), (v2 = *(this + 360)) != 0))
    {
      MEMORY[0x2743DA540](v2, 0x10F2C40209C4D79);
    }

    *(this + 360) = 0;
  }

  v3 = *(this + 361);
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1080C405D68748FLL);
    *(this + 361) = 0;
  }

  if (*(this + 362))
  {
    (*(**(this + 6) + 32))(*(this + 6));
    *(this + 362) = 0;
  }

  *(this + 2860) = 0;
  webrtc::EncoderInfoSettings::~EncoderInfoSettings((this + 5856));
  v4 = *(this + 728);
  if (v4)
  {
    *(this + 729) = v4;
    operator delete(v4);
  }

  v5 = *(this + 725);
  if (v5)
  {
    *(this + 726) = v5;
    operator delete(v5);
  }

  v6 = *(this + 719);
  if (v6)
  {
    *(this + 720) = v6;
    operator delete(v6);
  }

  v7 = *(this + 716);
  if (v7)
  {
    *(this + 717) = v7;
    operator delete(v7);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 704);
  v8 = *(this + 698);
  if (v8)
  {
    v9 = *(this + 699);
    v10 = *(this + 698);
    if (v9 != v8)
    {
      do
      {
        if (*(v9 - 72))
        {
          operator delete(*(v9 - 64));
        }

        v9 -= 88;
      }

      while (v9 != v8);
      v10 = *(this + 698);
    }

    *(this + 699) = v8;
    operator delete(v10);
  }

  v11 = *(this + 678);
  if (v11)
  {
    v12 = *(this + 679);
    v13 = *(this + 678);
    if (v12 != v11)
    {
      do
      {
        v14 = v12 - 120;
        std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v12 - 96));
        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(this + 678);
    }

    *(this + 679) = v11;
    operator delete(v13);
  }

  v15 = *(this + 676);
  *(this + 676) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (*(this + 5400) == 1)
  {
    v16 = *(this + 672);
    if (v16)
    {
      v17 = *(this + 673);
      v18 = *(this + 672);
      if (v17 != v16)
      {
        do
        {
          if (*(v17 - 10))
          {
            operator delete(*(v17 - 9));
          }

          v20 = *(v17 - 13);
          v17 -= 13;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            (*(*v19 + 8))(v19);
          }
        }

        while (v17 != v16);
        v18 = *(this + 672);
      }

      *(this + 673) = v16;
      operator delete(v18);
    }
  }

  if (*(this + 2456) == 1)
  {
    v23 = *(this + 612);
    if (v23 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v23])(&v24, this + 2400);
    }

    *(this + 612) = -1;
    if (*(this + 2384) != 1)
    {
LABEL_46:
      if (*(this + 2248) != 1)
      {
        goto LABEL_47;
      }

      goto LABEL_57;
    }
  }

  else if (*(this + 2384) != 1)
  {
    goto LABEL_46;
  }

  webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 2256));
  if (*(this + 2248) != 1)
  {
LABEL_47:
    webrtc::EncodedImage::~EncodedImage((this + 56));
    v21 = *(this + 6);
    *(this + 6) = 0;
    if (!v21)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_57:
  webrtc::GenericFrameInfo::~GenericFrameInfo((this + 2040));
  webrtc::EncodedImage::~EncodedImage((this + 56));
  v21 = *(this + 6);
  *(this + 6) = 0;
  if (v21)
  {
LABEL_48:
    (*(*v21 + 8))(v21);
  }

LABEL_49:
  v22 = *(this + 1);
  if (v22)
  {
    if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v22 + 8))(v22);
    }
  }
}

{
  webrtc::LibvpxVp9Encoder::~LibvpxVp9Encoder(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LibvpxVp9Encoder::Release(webrtc::LibvpxVp9Encoder *this)
{
  v2 = *(this + 360);
  if (v2)
  {
    if (*(this + 2860) == 1)
    {
      if ((*(**(this + 6) + 72))(*(this + 6), v2))
      {
        v3 = 4294967293;
      }

      else
      {
        v3 = 0;
      }

      v2 = *(this + 360);
      if (!v2)
      {
LABEL_12:
        *(this + 360) = 0;
        v4 = *(this + 361);
        if (!v4)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x2743DA540](v2, 0x10F2C40209C4D79);
    goto LABEL_12;
  }

  v3 = 0;
  v4 = *(this + 361);
  if (v4)
  {
LABEL_13:
    MEMORY[0x2743DA540](v4, 0x1080C405D68748FLL);
    *(this + 361) = 0;
  }

LABEL_14:
  if (*(this + 362))
  {
    (*(**(this + 6) + 32))(*(this + 6));
    *(this + 362) = 0;
  }

  *(this + 2860) = 0;
  return v3;
}

uint64_t webrtc::LibvpxVp9Encoder::SetSvcRates(webrtc::LibvpxVp9Encoder *this, const webrtc::VideoBitrateAllocation *a2)
{
  v4 = this + 4816;
  v7 = v6;
  v14 = v8 > ActiveLayers;
  if (v9 < v7)
  {
    v14 = 1;
  }

  if (v8 < ActiveLayers || v9 > v7 && (*(this + 1194) | 2) == 2 || v14 && *(this + 4773) == 1)
  {
    *(this + 4752) = 1;
  }

  if (ActiveLayers != v8 || v7 != v9)
  {
    *(this + 4984) = 1;
  }

  *(*(this + 361) + 112) = *a2 / 0x3E8u;
  if (!*(this + 4769))
  {
    *(this + 2385) = 0;
    goto LABEL_83;
  }

  v83 = v9;
  v84 = v7;
  v85 = a2;
  v86 = v4;
  v15 = 0;
  v16 = a2 + 32;
  v17 = (this + 2624);
  v18 = 49;
  do
  {
    v21 = v18 - 49;
    if (!*(*(this + 361) + 4 * v18))
    {
      v22 = *(this + 678);
      if (0xEEEEEEEEEEEEEEEFLL * ((*(this + 679) - v22) >> 3) <= v21)
      {
        goto LABEL_122;
      }

      v23 = v22 + v15;
      webrtc::RateStatistics::Reset((v22 + v15 + 24));
      if (*(v23 + 12) == 1)
      {
        *(v23 + 12) = 0;
      }
    }

    if (v15 == 600)
    {
      goto LABEL_123;
    }

    v24 = *(v16 - 24);
    if (v24 == 1)
    {
      v25 = *(v16 - 7);
      v26 = *(v16 - 16);
      if (v26 != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      v26 = *(v16 - 16);
      if (v26 != 1)
      {
LABEL_23:
        v27 = 0;
        v28 = *(v16 - 8);
        if (v28 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    v27 = *(v16 - 5);
    v28 = *(v16 - 8);
    if (v28 != 1)
    {
LABEL_24:
      v29 = 0;
      v30 = *v16;
      if (v30 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

LABEL_28:
    v29 = *(v16 - 3);
    v30 = *v16;
    if (v30 != 1)
    {
LABEL_25:
      v31 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v31 = *(v16 - 1);
LABEL_30:
    v32 = (v27 + v25 + v29 + v31) / 0x3E8u;
    v33 = *(this + 361);
    *(v33 + 4 * v18) = v32;
    v34 = *(this + 4768);
    if (!*(this + 4768))
    {
      goto LABEL_53;
    }

    v35 = v33 + 328;
    v36 = v21 * v34;
    if (v24)
    {
      *(v35 + 4 * v36) = *(v16 - 7) / 0x3E8u;
      if (v34 == 1)
      {
        goto LABEL_53;
      }

      v37 = *(v16 - 7);
    }

    else
    {
      v37 = 0;
      *(v35 + 4 * v36) = 0;
      if (v34 == 1)
      {
        goto LABEL_53;
      }
    }

    if (v26)
    {
      v38 = *(v16 - 5);
    }

    else
    {
      v38 = 0;
    }

    v39 = (v35 + 4 * v36);
    v39[1] = (v38 + v37) / 0x3E8u;
    if (v34 != 2)
    {
      if (v24)
      {
        v40 = *(v16 - 7);
        if (!v26)
        {
          goto LABEL_41;
        }

LABEL_44:
        v41 = *(v16 - 5);
        if (v28)
        {
          goto LABEL_45;
        }

LABEL_42:
        v42 = 0;
      }

      else
      {
        v40 = 0;
        if (v26)
        {
          goto LABEL_44;
        }

LABEL_41:
        v41 = 0;
        if (!v28)
        {
          goto LABEL_42;
        }

LABEL_45:
        v42 = *(v16 - 3);
      }

      v39[2] = (v42 + v41 + v40) / 0x3E8u;
      if (v34 == 3)
      {
        goto LABEL_53;
      }

      if (v24)
      {
        v24 = *(v16 - 7);
        if (v26)
        {
          goto LABEL_62;
        }

LABEL_49:
        if (!v28)
        {
          goto LABEL_50;
        }

LABEL_63:
        v28 = *(v16 - 3);
        if (v30)
        {
LABEL_51:
          v30 = *(v16 - 1);
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_49;
        }

LABEL_62:
        v26 = *(v16 - 5);
        if (v28)
        {
          goto LABEL_63;
        }

LABEL_50:
        if (v30)
        {
          goto LABEL_51;
        }
      }

      v39[3] = (v30 + v28 + v26 + v24) / 0x3E8u;
      if (v34 != 4)
      {
        goto LABEL_125;
      }
    }

LABEL_53:
    v43 = *(this + 678);
    if (0xEEEEEEEEEEEEEEEFLL * ((*(this + 679) - v43) >> 3) <= v21)
    {
      goto LABEL_122;
    }

    v20 = *(this + 4769);
    if (v20 <= 1)
    {
      v44 = *(this + 623);
      v45 = v43 + v15;
      if (*(v43 + v15 + 4) == 1)
      {
LABEL_58:
        if (*v45 == v44)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v44 = *v17;
      v45 = v43 + v15;
      if (*(v43 + v15 + 4) == 1)
      {
        goto LABEL_58;
      }
    }

    webrtc::RateStatistics::Reset((v45 + 24));
    if (*(v45 + 12) == 1)
    {
      webrtc::RateStatistics::Update((v45 + 24), 1, *(v43 + v15 + 8));
    }

    v19 = v43 + v15;
    *v19 = v44;
    *(v45 + 4) = 1;
    *(v19 + 16) = 85 * (1000.0 / v44) / 0x64;
    v20 = *(this + 4769);
LABEL_15:
    ++v18;
    v15 += 120;
    v16 += 32;
    v17 += 9;
  }

  while (v18 - 49 < v20);
  *(this + 2385) = 0;
  a2 = v85;
  v4 = v86;
  v9 = v83;
  v7 = v84;
  if (!v20)
  {
    goto LABEL_83;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = *(this + 361) + 196;
LABEL_67:
  v50 = v47;
  do
  {
    if (*(v49 + 4 * v50))
    {
      if ((v48 & 1) == 0)
      {
        *(this + 4771) = v50;
      }

      v46 = v50 + 1;
      *(this + 4770) = v50 + 1;
      v47 = v50 + 1;
      v48 = 1;
      if (v20 - 1 == v50)
      {
LABEL_77:
        if (*(this + 5792) != 1)
        {
          goto LABEL_83;
        }

        if (*(this + 2829) != 1)
        {
          v53 = v83;
          v54 = 0;
          goto LABEL_82;
        }

        v51 = v46 - 1;
        v52 = *(this + 728);
        if (v51 < (*(this + 729) - v52) >> 4)
        {
          v53 = v83;
          v54 = *(v52 + 16 * v51 + 12);
LABEL_82:
          (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 38, v54);
          v9 = v53;
          goto LABEL_83;
        }

LABEL_122:
        __break(1u);
LABEL_123:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, 5);
LABEL_124:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 32, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, v57);
LABEL_125:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 86, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, 4);
LABEL_126:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 33, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, 4);
      }

      goto LABEL_67;
    }

    ++v50;
  }

  while (v20 != v50);
  if (v48)
  {
    goto LABEL_77;
  }

LABEL_83:
  if (v9 > v7 && (*(this + 4752) & 1) == 0)
  {
    if (*(this + 4769))
    {
      bzero(this + 4784, 4 * *(this + 4769));
    }

    *(this + 4985) = 1;
  }

  result = *(this + 676);
  if (!result)
  {
    v74 = *a2;
    v75 = *(a2 + 2);
    *(v4 + 1) = *(a2 + 1);
    *(v4 + 2) = v75;
    *v4 = v74;
    v76 = *(a2 + 3);
    v77 = *(a2 + 4);
    v78 = *(a2 + 6);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 6) = v78;
    *(v4 + 3) = v76;
    *(v4 + 4) = v77;
    v79 = *(a2 + 7);
    v80 = *(a2 + 8);
    v81 = *(a2 + 9);
    *(v4 + 157) = *(a2 + 157);
    *(v4 + 8) = v80;
    *(v4 + 9) = v81;
    *(v4 + 7) = v79;
    goto LABEL_121;
  }

  v56 = *(this + 4769);
  if (!*(this + 4769))
  {
    goto LABEL_119;
  }

  v57 = 0;
  v58 = *(this + 4768);
  v59 = this + 4848;
  v60 = 332;
  v61 = v58;
  while (2)
  {
    if (v61)
    {
      if (v57 > 4)
      {
        goto LABEL_124;
      }

      v62 = *(this + 1204);
      v63 = v62;
      if (*(v59 - 24))
      {
        v63 = v62 - *(v59 - 7);
      }

      v64 = *(this + 361);
      v65 = *(v64 + 4 * v57 * v61 + 328);
      v10 = (1000 * v65);
      v66 = v63 + v10;
      if (v66 <= 0xFFFFFFFFLL)
      {
        *(v59 - 7) = v10;
        *(v59 - 24) = 1;
        v62 = v66;
        *v4 = v66;
      }

      v61 = v58;
      if (v58 >= 2)
      {
        if (*(v59 - 16) == 1)
        {
          v67 = *(v64 + v60);
          v10 = (1000 * (v67 - v65));
          v68 = v62 - *(v59 - 5) + v10;
          if (v68 <= 0xFFFFFFFFLL)
          {
            goto LABEL_105;
          }

LABEL_102:
          if (v58 == 2)
          {
            goto LABEL_91;
          }

LABEL_106:
          v69 = v62;
          if (*(v59 - 8) == 1)
          {
            v69 = v62 - *(v59 - 3);
          }

          v70 = *(v64 + v60 + 4);
          v10 = (1000 * (v70 - v67));
          v71 = v69 + v10;
          if (v71 <= 0xFFFFFFFFLL)
          {
            *(v59 - 3) = v10;
            *(v59 - 8) = 1;
            v62 = v71;
            *v4 = v71;
          }

          if (v58 < 4)
          {
            v61 = 3;
          }

          else
          {
            if (*v59 == 1)
            {
              v62 -= *(v59 - 1);
            }

            v72 = 1000 * (*(v64 + v60 + 8) - v70);
            v73 = v62 + v72;
            if (v73 <= 0xFFFFFFFFLL)
            {
              *(v59 - 1) = v72;
              *v59 = 1;
              *v4 = v73;
            }

            if (v58 != 4)
            {
              goto LABEL_126;
            }

            v61 = 4;
          }
        }

        else
        {
          v67 = *(v64 + v60);
          v10 = (1000 * (v67 - v65));
          v68 = v62 + v10;
          if (v68 > 0xFFFFFFFFLL)
          {
            goto LABEL_102;
          }

LABEL_105:
          *(v59 - 5) = v10;
          *(v59 - 16) = 1;
          v62 = v68;
          *v4 = v68;
          if (v58 != 2)
          {
            goto LABEL_106;
          }

LABEL_91:
          v61 = 2;
        }
      }
    }

    ++v57;
    v59 += 32;
    v60 += 4 * v58;
    if (v56 != v57)
    {
      continue;
    }

    break;
  }

  result = *(this + 676);
LABEL_119:
  result = (*(*result + 32))(result, v4);
LABEL_121:
  *(this + 5852) = 1;
  return result;
}

uint64_t webrtc::anonymous namespace::GetActiveLayers(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 8))
  {
    v1 = 0;
  }

  v2 = *(a1 + 12);
  if (!*(a1 + 16))
  {
    v2 = 0;
  }

  v3 = *(a1 + 20);
  if (!*(a1 + 24))
  {
    v3 = 0;
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 28);
  }

  else
  {
    v4 = 0;
  }

  if (v2 + v1 + v3 + v4)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 36);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 48))
  {
    v6 = *(a1 + 44);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56))
  {
    v7 = *(a1 + 52);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 64))
  {
    v8 = *(a1 + 60);
  }

  else
  {
    v8 = 0;
  }

  if (v6 + v5 + v7 + v8)
  {
    return 1;
  }

  if (*(a1 + 72))
  {
    v9 = *(a1 + 68);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 80))
  {
    v10 = *(a1 + 76);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 88))
  {
    v11 = *(a1 + 84);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 96))
  {
    v12 = *(a1 + 92);
  }

  else
  {
    v12 = 0;
  }

  if (v10 + v9 + v11 + v12)
  {
    return 2;
  }

  if (*(a1 + 104))
  {
    v13 = *(a1 + 100);
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 112))
  {
    v14 = *(a1 + 108);
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 120))
  {
    v15 = *(a1 + 116);
  }

  else
  {
    v15 = 0;
  }

  if (*(a1 + 128))
  {
    v16 = *(a1 + 124);
  }

  else
  {
    v16 = 0;
  }

  if (v14 + v13 + v15 + v16)
  {
    return 3;
  }

  if (*(a1 + 136))
  {
    v17 = *(a1 + 132);
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 144))
  {
    v18 = *(a1 + 140);
  }

  else
  {
    v18 = 0;
  }

  if (*(a1 + 152))
  {
    v19 = *(a1 + 148);
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 160))
  {
    v20 = *(a1 + 156);
  }

  else
  {
    v20 = 0;
  }

  if (v18 + v17 + v19 + v20)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::LibvpxVp9Encoder::AdjustScalingFactorsForTopActiveLayer(uint64_t this)
{
  v1 = this + 4096;
  v2 = *(this + 4770);
  if (*(this + 4770))
  {
    v3 = *(this + 4769);
    if (v3 >= 2 && *(this + 4774) == 1)
    {
      v4 = *(this + 2888);
      v5 = *(this + 2616 + 36 * (v2 - 1));
      if (*(v4 + 12) != v5)
      {
        v6 = v2 - 1;
        v7 = *(this + 2616 + 36 * *(this + 4770) - 32);
        *(v4 + 12) = v5;
        *(v4 + 16) = v7;
        v8 = *(this + 5728);
        v9 = (*(this + 5736) - v8) >> 2;
        if (v9 > v2 - 1)
        {
          v10 = 0;
          do
          {
            if (v10 == v9)
            {
              goto LABEL_48;
            }

            v12 = *(this + 5752);
            v13 = (*(this + 5760) - v12) >> 2;
            if (v13 <= v6 || v13 <= v10)
            {
              goto LABEL_48;
            }

            v14 = *(v12 + 4 * v6) * *(v8 + 4 * v10);
            v15 = *(v8 + 4 * v6) * *(v12 + 4 * v10);
            if (v14 == 0x80000000)
            {
              v16 = 0;
            }

            else
            {
              v16 = -v14;
            }

            if (v14 >= 0)
            {
              v17 = v14;
            }

            else
            {
              v17 = v16;
            }

            if (v15 == 0x80000000)
            {
              v18 = 0;
            }

            else
            {
              v18 = -v15;
            }

            if (v15 >= 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = v18;
            }

            if (v17 >= v19)
            {
              v11 = v19;
            }

            else
            {
              v11 = v17;
            }

            if (v17 <= v19)
            {
              v17 = v19;
            }

            if (v11)
            {
              v20 = v17 % v11;
              if (v20)
              {
                v21 = v20 >> __clz(__rbit32(v20));
                v22 = v11;
                do
                {
                  v23 = v22 >> __clz(__rbit32(v22));
                  v22 = v23 - v21;
                  if (v21 > v23)
                  {
                    v22 = v21 - v23;
                  }

                  if (v21 >= v23)
                  {
                    v21 = v23;
                  }
                }

                while (v22);
                v11 = v21 << __clz(__rbit32(v20 | v11));
              }
            }

            else
            {
              v11 = v17;
            }

            *(this + 3000 + 4 * v10) = v14 / v11;
            *(this + 3048 + 4 * v10++) = v15 / v11;
          }

          while (v10 != v2);
          if (v2 < v3)
          {
            v24 = v3 - v2;
            if ((v3 - v2) > 3)
            {
              v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v2;
              v26 = (this + 4 * v2 + 3000);
              *&v27 = 0x100000001;
              *(&v27 + 1) = 0x100000001;
              v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                *v26 = v27;
                v26[3] = v27;
                ++v26;
                v28 -= 4;
              }

              while (v28);
              if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_46;
              }
            }

            else
            {
              v25 = v2;
            }

            v29 = v3 - v25;
            v30 = (this + 4 * v25 + 3048);
            do
            {
              *(v30 - 12) = 1;
              *v30++ = 1;
              --v29;
            }

            while (v29);
          }

LABEL_46:
          this = (*(**(this + 48) + 128))(*(this + 48), *(this + 2880), 41, this + 2904);
          *(v1 + 1756) = 1;
          return this;
        }

LABEL_48:
        __break(1u);
      }
    }
  }

  return this;
}

void webrtc::LibvpxVp9Encoder::SetRates(webrtc::LibvpxVp9Encoder *this, const webrtc::VideoEncoder::RateControlParameters *a2)
{
  if (*(this + 2860))
  {
    if (*(*(this + 360) + 16))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
      }
    }

    else
    {
      v16 = *(a2 + 43);
      if (v16 >= 1.0)
      {
        *(this + 623) = (v16 + 0.5);
        webrtc::LibvpxVp9Encoder::SetSvcRates(this, (a2 + 176));
        webrtc::LibvpxVp9Encoder::AdjustScalingFactorsForTopActiveLayer(this);
        *(this + 5852) = 1;
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t\a", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
      }
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
  }
}

uint64_t webrtc::LibvpxVp9Encoder::InitEncode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[90] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294967292;
  }

  if (!*(a2 + 20))
  {
    return 4294967292;
  }

  v3 = *(a2 + 12);
  if (v3)
  {
    if (*(a2 + 8) > v3)
    {
      return 4294967292;
    }
  }

  if (!*(a2 + 4) || !*(a2 + 6) || *(a3 + 4) < 1 || *(a2 + 356) > 3u || *(a2 + 366) > 3u)
  {
    return 4294967292;
  }

  result = (*(*a1 + 48))(a1);
  if ((result & 0x80000000) == 0)
  {
    v8 = a1;
    if (!*(a1 + 2880))
    {
      operator new();
    }

    if (!*(a1 + 2888))
    {
      operator new();
    }

    *(a1 + 2864) = 0;
    v9 = (a1 + 2472);
    if (a1 + 2472 != a2)
    {
      memcpy(v9, a2, 0x17DuLL);
      v8 = a1;
    }

    if (*(a1 + 4986) != 1 || *(v8 + 2504) < 2u)
    {
      webrtc::SvcRateAllocator::SvcRateAllocator(v17, v9);
    }

    if (webrtc::SimulcastToSvcConverter::IsConfigSupported(v9, v7))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
      }

      webrtc::SimulcastRateAllocator::SimulcastRateAllocator(v17, a1 + 8, v9);
    }

    return 4294967281;
  }

  return result;
}

webrtc::SimulcastToSvcConverter *std::optional<webrtc::SimulcastToSvcConverter>::emplace[abi:sn200100]<webrtc::VideoCodec &,void>(webrtc::SimulcastToSvcConverter *this, const webrtc::VideoCodec *a2)
{
  if (*(this + 408) == 1)
  {
    v3 = *(this + 48);
    if (v3)
    {
      v4 = a2;
      v5 = *(this + 49);
      v6 = *(this + 48);
      if (v5 != v3)
      {
        do
        {
          if (*(v5 - 10))
          {
            operator delete(*(v5 - 9));
          }

          v8 = *(v5 - 13);
          v5 -= 13;
          v7 = v8;
          *v5 = 0;
          if (v8)
          {
            (*(*v7 + 8))(v7);
          }
        }

        while (v5 != v3);
        v6 = *(this + 48);
      }

      *(this + 49) = v3;
      operator delete(v6);
      a2 = v4;
    }

    *(this + 408) = 0;
  }

  result = webrtc::SimulcastToSvcConverter::SimulcastToSvcConverter(this, a2);
  *(this + 408) = 1;
  return result;
}

void webrtc::anonymous namespace::CreateVp9ScalabilityStructure(webrtc::_anonymous_namespace_ *this, const webrtc::VideoCodec *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 366);
  v4 = *(a2 + 356);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2 + 356);
  }

  if (v3 == 1 && v4 <= 1)
  {
    operator new();
  }

  v61 = __s;
  v62 = 20;
  if (*(a2 + 81) == 1)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 92);
  if (v3 == 1 || v7 == 1)
  {
    v10 = 76;
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    v10 = 83;
LABEL_27:
    *__s = v10;
    v63 = 1;
    webrtc::SimpleStringBuilder::AppendFormat(&v61, "%d", v3);
    v15 = v62;
    v16 = v63 + 1;
    memcpy(&v61[v63], "T", v62 != v63 + 1);
    v17 = v63;
    if (v15 != v16)
    {
      v17 = v63 + 1;
    }

    v63 = v17;
    v61[v17] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v61, "%d", v5);
    if (v3 < 2)
    {
      goto LABEL_44;
    }

    goto LABEL_30;
  }

  strcpy(__s, "L");
  v63 = 1;
  webrtc::SimpleStringBuilder::AppendFormat(&v61, "%d", v3);
  v11 = v62;
  v12 = v63 + 1;
  memcpy(&v61[v63], "T", v62 != v63 + 1);
  v13 = v63;
  if (v11 != v12)
  {
    v13 = v63 + 1;
  }

  v63 = v13;
  v61[v13] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v61, "%d", v5);
  if ((v62 + ~v63) >= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v62 + ~v63;
  }

  memcpy(&v61[v63], "_KEY", v14);
  v63 += v14;
  v61[v63] = 0;
  if (v3 < 2)
  {
LABEL_44:
    v36 = strlen(__s);
    v37 = &qword_279E94B78;
    v38 = 1632;
    while (*v37 != v36 || memcmp(*(v37 - 1), __s, v36))
    {
      v37 += 6;
      v38 -= 48;
      if (!v38)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
        }

        goto LABEL_10;
      }
    }

    v39 = *(v37 - 16);
    if (v39 >= 0x22)
    {
      *this = 0;
    }

    else
    {
      (*(*(&off_279E940D8 + v39) + 1))();
      if (*this)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          return;
        }

LABEL_58:
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
        return;
      }
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_58;
  }

LABEL_30:
  v18 = (a2 + 36 * (v3 - 1) + 144);
  if (*v18 != *(a2 + 2) || v18[1] != *(a2 + 3))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
    }

    goto LABEL_10;
  }

  v19 = *(a2 + 45);
  v20 = *(a2 + 36);
  if (v19 == 2 * v20)
  {
    v21 = 1;
    v22 = 2;
  }

  else
  {
    if (3 * v20 != 2 * v19)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_10;
      }

      goto LABEL_55;
    }

    v30 = v62;
    v31 = v63 + 1;
    memcpy(&v61[v63], "h", v62 != v63 + 1);
    v32 = v63;
    if (v30 != v31)
    {
      v32 = v63 + 1;
    }

    v63 = v32;
    v61[v32] = 0;
    v20 = *(a2 + 36);
    v21 = 2;
    v22 = 3;
  }

  v33 = (a2 + 184);
  v34 = v3 - 1;
  while (1)
  {
    v35 = *(v33 - 1);
    if (v35 * v21 != v20 * v22 || *v33 * v21 != *(v33 - 9) * v22)
    {
      break;
    }

    v33 += 9;
    v20 = v35;
    if (!--v34)
    {
      goto LABEL_44;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_55:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
  }

LABEL_10:
  *this = 0;
}

double webrtc::GofInfoVP9::SetGofInfoVP9(uint64_t a1)
{
  *a1 = 4;
  *(a1 + 773) = 4;
  *(a1 + 776) = 1;
  *(a1 + 779) = 2;
  *(a1 + 8) = 33620480;
  result = 7.74860419e-304;
  *(a1 + 263) = 16843009;
  *(a1 + 518) = 16843009;
  *(a1 + 782) = 1;
  return result;
}

uint64_t webrtc::LibvpxVp9Encoder::InitAndSetControlSettings(webrtc::LibvpxVp9Encoder *this, __n128 a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = this + 2904;
  v11 = *(this + 4769);
  v12 = *(this + 4768) * v11;
  v13 = *(this + 716);
  v14 = (*(this + 717) - v13) >> 2;
  if (v11 <= v14)
  {
    if (v11 < v14)
    {
      *(this + 717) = v13 + 4 * v11;
    }
  }

  else
  {
    std::vector<float>::__append((this + 5728), v11 - v14);
    v11 = v10[1865];
  }

  v15 = *(this + 719);
  v16 = (*(this + 720) - v15) >> 2;
  if (v11 <= v16)
  {
    if (v11 < v16)
    {
      *(this + 720) = v15 + 4 * v11;
    }
  }

  else
  {
    std::vector<float>::__append((this + 5752), v11 - v16);
  }

  v17 = *(this + 361);
  if (v12)
  {
    if (v12 <= 7 || v10 < v17 + 124 && v17 + 29 < this + v12 + 738)
    {
      v18 = 0;
LABEL_14:
      v19 = v12 - v18;
      v20 = (this + 4 * v18 + 2952);
      do
      {
        *(v20 - 12) = v17[30];
        *v20++ = v17[29];
        --v19;
      }

      while (v19);
      goto LABEL_16;
    }

    v58 = (v17 + 30);
    a2 = vld1q_dup_f32(v58);
    v18 = v12 & 0xFFFC;
    v59 = (v17 + 29);
    v60 = vld1q_dup_f32(v59);
    v61 = v18;
    v62 = v10;
    do
    {
      *v62 = a2;
      *(v62 + 3) = v60;
      v62 += 16;
      v61 -= 4;
    }

    while (v61);
    if (v18 != v12)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  v21 = v10[1865];
  v17[43] = v21;
  v22 = *(this + 676);
  if (v22)
  {
    (*(*v22 + 16))(&__p);
    if (__p >= 1)
    {
      v23 = 0;
      v21 = *(this + 716);
      v24 = (*(this + 717) - v21) >> 2;
      v25 = &v116;
      do
      {
        v26 = *(v25 - 4);
        *(this + v23 + 750) = v26;
        if (v24 == v23)
        {
          goto LABEL_139;
        }

        *(v21 + 4 * v23) = v26;
        v27 = *v25;
        *(this + v23 + 762) = *v25;
        v28 = *(this + 719);
        if (v23 >= (*(this + 720) - v28) >> 2)
        {
          goto LABEL_139;
        }

        *(v28 + 4 * v23++) = v27;
        ++v25;
      }

      while (v23 < __p);
    }
  }

  else if (v21 >= 2)
  {
    v23 = 0;
    v29 = 2616;
    while (1)
    {
      v30 = *(this + v29);
      if (v30 <= 0)
      {
        break;
      }

      v31 = *(this + 1238);
      v32 = v31 / v30;
      if (v31 / v30 * v30 != v31)
      {
        return 4294967292;
      }

      a2.n128_u32[0] = v31 / v30;
      a2.n128_u64[0] = vcnt_s8(a2.n128_u64[0]);
      a2.n128_u16[0] = vaddlv_u8(a2.n128_u64[0]);
      if (*(this + v29 + 4) * v32 != *(this + 1239) || a2.n128_u32[0] > 1)
      {
        return 4294967292;
      }

      *(this + v23 + 750) = 1;
      v34 = *(this + 716);
      if (v23 >= (*(this + 717) - v34) >> 2)
      {
        goto LABEL_139;
      }

      *(v34 + 4 * v23) = 1;
      *(this + v23 + 762) = v32;
      v35 = *(this + 719);
      if (v23 >= (*(this + 720) - v35) >> 2)
      {
        goto LABEL_139;
      }

      *(v35 + 4 * v23++) = v32;
      v29 += 36;
      if (v21 == v23)
      {
        goto LABEL_34;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc", 799, "layer.width > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a6, a7, a8, a9, *(this + v29));
LABEL_147:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_34:
  __p = 0;
  v114 = 0;
  v115 = 0;
  if (*(this + 712) != -1)
  {
    v36 = *(this + 725);
    v37 = *(this + 726);
    if (v37 != v36)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 2) < 0xCCCCCCCCCCCCCCDLL)
      {
        operator new();
      }

      goto LABEL_147;
    }

    *(this + 729) = *(this + 728);
    if (v10[1870] == 1)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

  v117 = 0;
  v118 = xmmword_273B94B80;
  v50 = std::vector<std::pair<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>>::emplace<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>(&__p, 0, &v117, &v118);
  v51 = __p;
  v52 = v114;
  *(v50 + 4) = 0x900000009;
  *(v50 + 12) = 1;
  *(v50 + 16) = 1;
  v117 = 101376;
  if (v52 == v51)
  {
    v51 = v52;
LABEL_65:
    v118 = xmmword_273B94B80;
    v51 = std::vector<std::pair<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>>::emplace<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>(&__p, v51, &v117, &v118);
    goto LABEL_66;
  }

  v53 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v51) >> 2);
  do
  {
    v54 = v53 >> 1;
    v55 = (v51 + 20 * (v53 >> 1));
    v57 = *v55;
    v56 = v55 + 5;
    v53 += ~(v53 >> 1);
    if (v57 < 101376)
    {
      v51 = v56;
    }

    else
    {
      v53 = v54;
    }
  }

  while (v53);
  if (v52 == v51 || *v51 > 101376)
  {
    goto LABEL_65;
  }

LABEL_66:
  *(v51 + 4) = 0x900000009;
  *(v51 + 12) = 0;
  *(v51 + 16) = 1;
  *(this + 729) = *(this + 728);
  if (v10[1870] == 1)
  {
LABEL_39:
    v38 = __p;
    if (v10[1865])
    {
      v39 = 0;
      v40 = v114;
      v41 = 0xCCCCCCCCCCCCCCCDLL * ((v114 - __p) >> 2);
      do
      {
        if (v40 == v38)
        {
          v42 = v40;
        }

        else
        {
          v45 = v41;
          v42 = v38;
          do
          {
            v46 = v45 >> 1;
            v47 = (v42 + 20 * (v45 >> 1));
            v49 = *v47;
            v48 = (v47 + 5);
            v45 += ~(v45 >> 1);
            if (v49 > *(this + 9 * v39 + 655) * *(this + 9 * v39 + 654))
            {
              v45 = v46;
            }

            else
            {
              v42 = v48;
            }
          }

          while (v45);
        }

        v44 = *(v42 - 2);
        v43 = *(v42 - 1);
        *&v118 = v44;
        DWORD2(v118) = v43;
        BYTE12(v118) = BYTE4(v43);
        std::vector<webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>::push_back[abi:sn200100](this + 728, &v118);
        ++v39;
      }

      while (v39 < v10[1865]);
    }

    goto LABEL_74;
  }

LABEL_67:
  v38 = __p;
  v64 = v114;
  if (v114 != __p)
  {
    v65 = 0xCCCCCCCCCCCCCCCDLL * ((v114 - __p) >> 2);
    v64 = __p;
    do
    {
      v66 = v65 >> 1;
      v67 = v64 + 5 * (v65 >> 1);
      v69 = *v67;
      v68 = v67 + 5;
      v65 += ~(v65 >> 1);
      if (v69 > *(this + 1239) * *(this + 1238))
      {
        v65 = v66;
      }

      else
      {
        v64 = v68;
      }
    }

    while (v65);
  }

  v71 = *(v64 - 2);
  v70 = *(v64 - 1);
  *&v118 = v71;
  DWORD2(v118) = v70;
  BYTE12(v118) = BYTE4(v70);
  std::vector<webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>::push_back[abi:sn200100](this + 728, &v118);
LABEL_74:
  if (v38)
  {
    operator delete(v38);
  }

  webrtc::LibvpxVp9Encoder::SetSvcRates(this, (this + 4816));
  v72 = (*(**(this + 6) + 56))(*(this + 6), *(this + 360), &vpx_codec_vp9_cx_algo);
  if (v72)
  {
    v73 = v72;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      (*(**(this + 6) + 216))(*(this + 6), v73);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v81, v82, v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
    }

    return 4294967289;
  }

  if (v10[2888] == 1)
  {
    v23 = v10[1865];
    if (v10[1865])
    {
      v74 = *(this + 728);
      v75 = (*(this + 729) - v74) >> 4;
      v76 = v23 - 1;
      if (v75 >= v23 - 1)
      {
        v77 = v23 - 1;
      }

      else
      {
        v77 = (*(this + 729) - v74) >> 4;
      }

      v78 = v77 + 1;
      if ((v77 + 1) <= 0xC)
      {
        goto LABEL_90;
      }

      v79 = (v10 + 192);
      if (v75 < v76)
      {
        v76 = (*(this + 729) - v74) >> 4;
      }

      if (v79 >= v74 + 16 * v76 + 12 || v74 >= this + 4 * v76 + 3152)
      {
        v88 = v78 & 3;
        if ((v78 & 3) == 0)
        {
          v88 = 4;
        }

        v80 = v78 - v88;
        v89 = v80;
        v90 = *(this + 728);
        do
        {
          v119 = vld4q_f32(v90);
          v90 += 16;
          *v79 = v119.val[0];
          *(v79 + 52) = v119.val[2];
          v79 += 16;
          v89 -= 4;
        }

        while (v89);
      }

      else
      {
LABEL_90:
        v80 = 0;
      }

      v91 = v75 - v80;
      v21 = v74 + 16 * v80 + 8;
      v92 = v23 - v80;
      v93 = (this + 4 * v80 + 3148);
      while (v91)
      {
        *(v93 - 13) = *(v21 - 8);
        v94 = *v21;
        v21 += 16;
        *v93++ = v94;
        --v91;
        if (!--v92)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_139;
    }

LABEL_98:
    if (*(this + 2829))
    {
      --v23;
      v21 = *(this + 728);
      if (v23 >= (*(this + 729) - v21) >> 4)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v95 = *(v21 + 16 * v23 + 12);
    }

    else
    {
      v95 = 0;
    }

    (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 38, v95);
  }

  (*(**(this + 6) + 80))(*(this + 6), *(this + 360), 26, *(this + 718));
  if (*(this + 2836))
  {
    v96 = 3;
  }

  else
  {
    v96 = 0;
  }

  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 36, v96);
  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 35, 0);
  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 63, 0);
  if (v10[1870] != 1 || ((*(**(this + 6) + 88))(*(this + 6), *(this + 360), 39, 1), (*(**(this + 6) + 128))(*(this + 6), *(this + 360), 41, this + 2904), (v10[1870] & 1) == 0) || (v10[2888] & 1) == 0)
  {
    (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 13, *(*(this + 729) - 16));
  }

  if (v10[1865] < 2u)
  {
    goto LABEL_134;
  }

  v97 = *(this + 1194);
  if (v97 >= 3)
  {
    a5 = this + 4784;
    *(this + 600) = 0;
    *(this + 299) = 0u;
LABEL_118:
    v99 = 2;
    if (v10[2544] != 1)
    {
      goto LABEL_125;
    }

LABEL_119:
    if (*(this + 676))
    {
      if ((v97 & 0xFFFFFFFD) != 0)
      {
        v99 = 2;
      }

      else
      {
        v99 = 1;
      }
    }

    else
    {
      v99 = 2;
    }

LABEL_125:
    *(this + 1201) = v99;
    *(this + 1202) = 2;
    v100 = v10[1865];
    if (v10[1865])
    {
      v101 = *(*(this + 361) + 48);
      if (v100 >= 8)
      {
        v102 = v100 & 0xF8;
        v103 = vdupq_n_s32(v101);
        v104 = (this + 4800);
        v105 = v102;
        do
        {
          v104[-1] = v103;
          *v104 = v103;
          v104 += 2;
          v105 -= 8;
        }

        while (v105);
        if (v102 == v100)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v102 = 0;
      }

      v106 = v100 - v102;
      v107 = (this + 4 * v102 + 4784);
      do
      {
        *v107++ = v101;
        --v106;
      }

      while (v106);
    }

    goto LABEL_133;
  }

  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 60, dword_273B94BE8[v97]);
  v97 = *(this + 1194);
  a5 = this + 4784;
  *(this + 598) = 0;
  *(this + 600) = 0;
  *(this + 599) = 0;
  *(this + 1202) = 0;
  if (v97 != 1)
  {
    goto LABEL_118;
  }

  if (*(this + 699) != 1)
  {
    v97 = 1;
    v99 = 2;
    if (v10[2544] != 1)
    {
      goto LABEL_125;
    }

    goto LABEL_119;
  }

  *(this + 4804) = 0x500000003;
  v21 = v10[1865];
  if (v10[1865])
  {
    LODWORD(v23) = *(*(this + 361) + 48);
    if (v21 < 8)
    {
      v98 = 0;
LABEL_143:
      v111 = v21 - v98;
      v112 = (this + 4 * v98 + 4784);
      do
      {
        *v112++ = v23;
        --v111;
      }

      while (v111);
      goto LABEL_133;
    }

LABEL_140:
    v98 = v21 & 0xF8;
    v108 = vdupq_n_s32(v23);
    v109 = (this + 4800);
    v110 = v98;
    do
    {
      v109[-1] = v108;
      *v109 = v108;
      v109 += 2;
      v110 -= 8;
    }

    while (v110);
    if (v98 == v21)
    {
      goto LABEL_133;
    }

    goto LABEL_143;
  }

LABEL_133:
  (*(**(this + 6) + 136))(*(this + 6), *(this + 360), 61, a5);
LABEL_134:
  __p = webrtc::LibvpxVp9Encoder::EncoderOutputCodedPacketCallback;
  v114 = this;
  (*(**(this + 6) + 144))(*(this + 6), *(this + 360), 45, &__p);
  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 33, *(*(this + 361) + 4) >> 1);
  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 55, 1);
  if ((v10[2888] & 1) == 0)
  {
    (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 38, *(this + 2829));
  }

  if (*(this + 699) == 1)
  {
    (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 43, 1);
  }

  (*(**(this + 6) + 88))(*(this + 6), *(this + 360), 17, 1);
  webrtc::LibvpxVp9Encoder::AdjustScalingFactorsForTopActiveLayer(this);
  result = 0;
  *(this + 2860) = 1;
  v10[2948] = 1;
  return result;
}

uint64_t webrtc::LibvpxVp9Encoder::Encode(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v251 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2860) != 1 || !*(a1 + 2464))
  {
    return 4294967289;
  }

  if (!*(a1 + 4770))
  {
    return 0;
  }

  if (a3 && *a3 != a3[1] && **a3 == 3)
  {
    *(a1 + 4752) = 1;
  }

  if (*(a1 + 4760) + 1 == *(a1 + 2832))
  {
    *(a1 + 4752) = 1;
  }

  v17 = *(a1 + 5408);
  if (v17)
  {
    v14 = a2;
    (*(*v17 + 40))(__p);
    v20 = *(a1 + 5584);
    if (v20)
    {
      v13 = *(a1 + 5592);
      v21 = *(a1 + 5584);
      if (v13 != v20)
      {
        do
        {
          if (*(v13 - 72))
          {
            operator delete(*(v13 - 64));
          }

          v13 -= 88;
        }

        while (v13 != v20);
        v21 = *(a1 + 5584);
      }

      *(a1 + 5592) = v20;
      operator delete(v21);
    }

    v23 = __p[0];
    *(a1 + 5584) = __p[0];
    v24 = __p[1];
    *(a1 + 5592) = *&__p[1];
    if (*(a1 + 5400) == 1)
    {
      webrtc::SimulcastToSvcConverter::EncodeStarted((a1 + 4992), *(a1 + 4752), v18, v19, a5, a6, a7, a8);
      v23 = *(a1 + 5584);
      a2 = v14;
      if (v23 == *(a1 + 5592))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      a2 = v14;
      if (v23 == v24)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v23[4] == 1)
    {
      *(a1 + 4752) = 1;
    }
  }

  v228 = a2;
  v25 = 0;
  v234 = 0;
  v235[0] = 0;
  v236 = 0;
  v235[1] = 0;
  if ((*(a1 + 4752) & 1) == 0)
  {
    v28 = *(a1 + 4760) + 1;
    v29 = *(a1 + 3208);
    v8 = v28 / v29;
    HIDWORD(v234) = *(a1 + v28 % v29 + 3216);
    if (*(a1 + 2796) != 1)
    {
      goto LABEL_237;
    }

    v229 = 1000 * *(a2 + 16) / 0x15F90u;
    v30 = *(a2 + 8);
    if (v30)
    {
      v14 = (*(*v30 + 40))(v30);
      v31 = *(v228 + 8);
      if (v31)
      {
        v32 = (*(*v31 + 48))(v31) << 32;
        goto LABEL_160;
      }
    }

    else
    {
      v14 = 0;
    }

    v32 = 0;
LABEL_160:
    v8 = *(v228 + 168);
    v9 = v14;
    v78 = v32 | v14;
    if (*(v228 + 176))
    {
      v78 = *(v228 + 168);
    }

    if (v78)
    {
      if (!*(a1 + 4770))
      {
        goto LABEL_237;
      }

      v15 = (a1 + 5424);
      v79 = (a1 + 5432);
      LODWORD(v35) = v234;
      goto LABEL_183;
    }

    v80 = *(a1 + 5848);
    if (*(a1 + 4770))
    {
      v15 = (a1 + 5424);
      v79 = (a1 + 5432);
      LODWORD(v35) = v234;
      if (v80 <= 4)
      {
LABEL_183:
        v86 = 0;
        v87 = 0;
        v26 = 120;
        v14 = v229;
        do
        {
          v35 = v35;
          v88 = *v15;
          LODWORD(v8) = -286331153;
          v34 = 0xEEEEEEEEEEEEEEEFLL * ((*v79 - *v15) >> 3);
          if (v34 <= v35)
          {
            goto LABEL_430;
          }

          v35 = *(v88 + 120 * v35 + 4);
          if ((v35 & 1) == 0 || v34 <= v87)
          {
            goto LABEL_430;
          }

          v13 = v88 + v86;
          if (*(v88 + v86 + 12) == 1 && *(v88 + v86 + 8) > v229)
          {
            break;
          }

          v90 = webrtc::RateStatistics::Rate((v13 + 24), v229);
          v35 = *(v13 + 4);
          if ((v35 & 1) == 0)
          {
            goto LABEL_430;
          }

          if (((v91 & 1) == 0 || *v13 >= v90) && (*(v13 + 12) != 1 || (v229 - *(v13 + 8)) >= *(v88 + v86 + 16)))
          {
            break;
          }

          LODWORD(v35) = v234 + 1;
          LODWORD(v234) = v234 + 1;
          ++v87;
          v86 += 120;
        }

        while (v87 < *(a1 + 4770));
LABEL_237:
        if (*(a1 + 4985))
        {
          v25 = *(a1 + 4771);
          LODWORD(v234) = v25;
          *(a1 + 4985) = 0;
          if (v25 < *(a1 + 4770))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v25 = v234;
          if (v234 < *(a1 + 4770))
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

      v81 = 0;
      v82 = 0;
      v14 = v229;
      while (1)
      {
        v34 = v35;
        v26 = *v15;
        LODWORD(v8) = -286331153;
        v35 = 0xEEEEEEEEEEEEEEEFLL * ((*v79 - *v15) >> 3);
        if (v35 <= v34)
        {
          goto LABEL_430;
        }

        v34 = v26 + 120 * v34;
        LODWORD(v8) = *(v34 + 4);
        if ((v8 & 1) == 0)
        {
          goto LABEL_430;
        }

        if (*v34 > 5.0)
        {
          break;
        }

        if (v35 <= v82)
        {
          goto LABEL_430;
        }

        v13 = v26 + v81;
        if (*(v26 + v81 + 12) != 1 || *(v26 + v81 + 8) <= v229)
        {
          v84 = webrtc::RateStatistics::Rate((v13 + 24), v229);
          v35 = *(v13 + 4);
          if ((v35 & 1) == 0)
          {
            goto LABEL_430;
          }

          if ((v85 & 1) != 0 && *v13 < v84 || *(v13 + 12) == 1 && (v229 - *(v13 + 8)) < *(v26 + v81 + 16))
          {
            LODWORD(v35) = v234 + 1;
            LODWORD(v234) = v234 + 1;
            ++v82;
            v81 += 120;
            if (v82 < *(a1 + 4770))
            {
              continue;
            }
          }
        }

        goto LABEL_234;
      }

      if (webrtc::FramerateControllerDeprecated::DropFrame((a1 + 5608), v229))
      {
        LODWORD(v234) = *(a1 + 4770);
        goto LABEL_237;
      }
    }

LABEL_234:
    if (v80 >= 5 && v234 < *(a1 + 4770))
    {
      webrtc::FramerateControllerDeprecated::AddFrame((a1 + 5608), v229);
    }

    goto LABEL_237;
  }

LABEL_28:
  v26 = *(a1 + 4769);
  if (*(a1 + 4769))
  {
    v27 = HIDWORD(v234);
    if (v26 > 7)
    {
      v8 = v26 & 0xF8;
      v33 = vdupq_n_s32(HIDWORD(v234));
      v9 = &v236;
      v10 = v8;
      do
      {
        *(v9 - 16) = v33;
        *v9 = v33;
        v9 += 32;
        v10 -= 8;
      }

      while (v10);
      if (v8 == v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v26 - v8;
    v10 = &v234;
    v8 = v235 + 4 * v8;
    do
    {
      *v8 = v27;
      v8 += 4;
      --v9;
    }

    while (v9);
  }

LABEL_40:
  LODWORD(v34) = *(a1 + 4771);
  if (v25 < v34)
  {
    LODWORD(v234) = *(a1 + 4771);
  }

  v35 = *(a1 + 5408);
  if (!v35)
  {
    goto LABEL_103;
  }

  v14 = *(a1 + 5592);
  v15 = *(a1 + 5584);
  if (v15 == v14)
  {
    goto LABEL_430;
  }

  v234 = v15[1];
  v36 = v15;
  do
  {
    *(v235 + *(v36 + 2)) = *(v36 + 3);
    v36 += 11;
  }

  while (v36 != v14);
  if (!v26)
  {
LABEL_103:
    if (*(a1 + 4774) == 1 && v26 && (*(a1 + 5792) & 1) != 0)
    {
      v35 = 0;
      v9 = 0;
      v34 = v235;
      v8 = a1 + 3096;
      v10 = *(a1 + 5824);
      v11 = (*(a1 + 5832) - v10) >> 4;
      v12 = v26 - 1;
LABEL_107:
      v62 = (v10 + 4 + 16 * v35);
      do
      {
        if (*(v235 + v35))
        {
          if (v11 <= v35)
          {
            goto LABEL_430;
          }

          v63 = *v62;
          if (*(v8 + 4 * v35) != *v62)
          {
LABEL_116:
            *(v8 + 4 * v35) = v63;
            v9 = 1;
            v141 = v12 == v35++;
            if (!v141)
            {
              goto LABEL_107;
            }

            goto LABEL_120;
          }
        }

        else
        {
          if (v11 <= v35)
          {
            goto LABEL_430;
          }

          v63 = *(v10 + 16 * v35);
          if (*(v8 + 4 * v35) != v63)
          {
            goto LABEL_116;
          }
        }

        ++v35;
        v62 += 4;
      }

      while (v26 != v35);
      if ((v9 & 1) == 0)
      {
        goto LABEL_121;
      }

LABEL_120:
      (*(**(a1 + 48) + 128))(*(a1 + 48), *(a1 + 2880), 41, a1 + 2904);
    }

LABEL_121:
    (*(**(a1 + 48) + 152))(*(a1 + 48), *(a1 + 2880), 42, &v234);
    if (*(a1 + 4769) >= 2u)
    {
      (*(**(a1 + 48) + 136))(*(a1 + 48), *(a1 + 2880), 61, a1 + 4784);
    }

    if (*(a1 + 5852) == 1)
    {
      if ((*(**(a1 + 48) + 40))(*(a1 + 48), *(a1 + 2880), *(a1 + 2888)))
      {
        return 0xFFFFFFFFLL;
      }

      if ((*(a1 + 5792) & 1) == 0)
      {
        v64 = *(a1 + 4769);
        while (1)
        {
          v34 = v64 - 1;
          if (v64 < 1)
          {
            break;
          }

          if (*(*(a1 + 2888) + 4 * v64-- + 192))
          {
            v8 = *(a1 + 5728);
            v35 = *(a1 + 5736) - v8;
            if (v34 >= v35 >> 2)
            {
              goto LABEL_430;
            }

            v9 = *(a1 + 5752);
            v35 = *(a1 + 5760) - v9;
            if (v34 >= v35 >> 2)
            {
              goto LABEL_430;
            }

            v66 = *(a1 + 5800);
            v67 = *(a1 + 5808);
            if (v67 != v66)
            {
              v68 = *(v8 + 4 * v34) * *(a1 + 2478) / *(v9 + 4 * v34) * (*(v8 + 4 * v34) * *(a1 + 2476) / *(v9 + 4 * v34));
              v69 = 0xCCCCCCCCCCCCCCCDLL * (v67 - v66);
              do
              {
                v70 = v69 >> 1;
                v71 = &v66[5 * (v69 >> 1)];
                v73 = *v71;
                v72 = v71 + 5;
                v69 += ~(v69 >> 1);
                if (v73 < v68)
                {
                  v66 = v72;
                }

                else
                {
                  v69 = v70;
                }
              }

              while (v69);
              v67 = v66;
            }

            (*(**(a1 + 48) + 88))(*(a1 + 48), *(a1 + 2880), 13, *(v67 - 4));
            break;
          }
        }
      }

      *(a1 + 5852) = 0;
    }

    *(a1 + 3200) = v228;
    if (*(a1 + 4774) == 1 && (v74 = *(a1 + 4770), v74 != *(a1 + 4769)))
    {
      v75 = *(v228 + 8);
      if (v75)
      {
        (**v75)(*(v228 + 8));
        v74 = *(a1 + 4770);
      }

      webrtc::VideoFrameBuffer::Scale(v75, *(a1 + 36 * v74 + 2580), *(a1 + 36 * v74 + 2584));
      v26 = __p[0];
      __p[0] = 0;
      if (v75)
      {
        (*(*v75 + 8))(v75);
      }
    }

    else
    {
      v26 = *(v228 + 8);
      if (v26)
      {
        (**v26)(*(v228 + 8));
      }
    }

    v76 = *(a1 + 2856);
    if (v76 == 2)
    {
      v77 = *(v228 + 8);
      if (v77)
      {
        (**v77)(*(v228 + 8));
      }

      v103 = (*(*v77 + 32))(v77);
      (*(*v77 + 8))(v77);
      if (v103 != 5)
      {
        (*(*v26 + 56))(__p, v26);
        if (__p[0])
        {
          webrtc::I010Buffer::Copy(__p[0], v105);
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          v106 = *(v228 + 8);
          if (v106)
          {
            (**v106)(*(v228 + 8));
          }

          v107 = (*(*v106 + 32))(v106);
          webrtc::VideoFrameBufferTypeToString(v107);
          webrtc::webrtc_logging_impl::Log("\r\t\t\t", v108, v109, v110, v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
          (*(*v106 + 8))(v106);
        }

        result = 0xFFFFFFFFLL;
        if (__p[0])
        {
          (*(*__p[0] + 8))(__p[0]);
          result = 0xFFFFFFFFLL;
        }

        v13 = 0;
        goto LABEL_424;
      }

      webrtc::VideoFrameBuffer::GetI010(v26);
      v14 = 0;
      v104 = v26;
      v115 = (*(*v104 + 40))(v104);
      v116 = (*(*v104 + 48))(v104);
      webrtc::LibvpxVp9Encoder::MaybeRewrapRawWithFormat(a1, 2306, v115, v116);
      *(*(a1 + 2896) + 48) = (*(*v26 + 136))(v26);
      *(*(a1 + 2896) + 56) = (*(*v26 + 144))(v26);
      *(*(a1 + 2896) + 64) = (*(*v26 + 152))(v26);
      *(*(a1 + 2896) + 80) = 2 * (*(*v26 + 112))(v26);
      *(*(a1 + 2896) + 84) = 2 * (*(*v26 + 120))(v26);
      v117 = (*(*v104 + 128))(v104);
      v13 = 0;
      *(*(a1 + 2896) + 88) = 2 * v117;
      goto LABEL_258;
    }

    if (v76)
    {
      v14 = 0;
      v13 = 0;
LABEL_258:
      v15 = *(a1 + 4752);
      if (*(a1 + 5408))
      {
        v139 = *(a1 + 5584);
        v140 = *(a1 + 5592);
        memset(__p, 0, sizeof(__p));
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        v241 = 0u;
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v249 = 0u;
        v250 = 0u;
        v142 = v140 - v139;
        v141 = v140 == v139;
        if (v140 == v139)
        {
          v143 = 0;
        }

        else
        {
          v143 = v139;
        }

        if (!v141)
        {
          v144 = v143 + v142;
          while (1)
          {
            v145 = *(v139 + 16);
            if (v145 >= 2)
            {
              v146 = *(v139 + 8);
              if (v145)
              {
                v150 = *(v139 + 24);
                v151 = *v150;
                *(__p + v146) = *v150;
                *(&v244 + v146 + 3) = *(v150 + 4);
                a5 = *(v150 + 5);
                if (a5)
                {
                  a5 = *(&v239 + v146 + 3);
                  *(&v239 + v146 + 3) = a5 | (1 << v151);
                }

                if (v145 <= 3)
                {
                  goto LABEL_265;
                }

                v152 = v150[2];
                *(&__p[2] + v146 + 1) = v152;
                *(&v246 + v146) = *(v150 + 12);
                a5 = *(v150 + 13);
                if (a5)
                {
                  a5 = *(&v239 + v146 + 3);
                  *(&v239 + v146 + 3) = a5 | (1 << v152);
                }

                if (v145 <= 5)
                {
                  goto LABEL_265;
                }

                v149 = v150[4];
                *(&v238 + v146 + 2) = v149;
                *(&v247 + v146 + 1) = *(v150 + 20);
                if (*(v150 + 21) != 1)
                {
                  goto LABEL_265;
                }
              }

              else
              {
                v147 = *(v139 + 24);
                *(__p + v146) = v147;
                *(&v244 + v146 + 3) = *(v139 + 28);
                if (*(v139 + 29))
                {
                  *(&v239 + v146 + 3) |= 1 << v147;
                }

                if (v145 <= 3)
                {
                  goto LABEL_265;
                }

                v148 = *(v139 + 32);
                *(&__p[2] + v146 + 1) = v148;
                *(&v246 + v146) = *(v139 + 36);
                if (*(v139 + 37))
                {
                  *(&v239 + v146 + 3) |= 1 << v148;
                }

                if (v145 <= 5)
                {
                  goto LABEL_265;
                }

                v149 = *(v139 + 40);
                *(&v238 + v146 + 2) = v149;
                *(&v247 + v146 + 1) = *(v139 + 44);
                if ((*(v139 + 45) & 1) == 0)
                {
                  goto LABEL_265;
                }
              }

              *(&v239 + v146 + 3) |= 1 << v149;
            }

LABEL_265:
            v139 += 88;
            if (v139 == v144)
            {
              goto LABEL_412;
            }
          }
        }

        while (1)
        {
LABEL_412:
          (*(**(a1 + 48) + 160))(*(a1 + 48), *(a1 + 2880), 52, __p, a5, a6, a7);
          *(a1 + 4812) = 1;
          if (*(a1 + 2796) != 1)
          {
            v208 = *(a1 + 2492);
            goto LABEL_419;
          }

          v35 = *(a1 + 4770) - 1;
          v34 = *(a1 + 5424);
          v9 = 0xEEEEEEEEEEEEEEEFLL;
          v8 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 5432) - v34) >> 3);
          if (v8 > v35)
          {
            LODWORD(v8) = 120;
            v35 = v34 + 120 * v35;
            LODWORD(v34) = *(v35 + 4);
            if (v34)
            {
              break;
            }
          }

LABEL_430:
          while (1)
          {
            __break(1u);
LABEL_431:
            v221 = &v246 + v9 + 2;
            v222 = v35 - v8 - 2;
            do
            {
              if (v10 > v9)
              {
                *(v221 - 35) = v34;
                *v221 = v11;
              }

              *(v221 - 25) = v12;
              ++v10;
              ++v221;
              --v222;
            }

            while (v222);
LABEL_404:
            if (!v35 || *(a1 + 2796) != 1)
            {
              break;
            }

            v34 = &v248 + 8;
            v206 = *(a1 + 5424);
            v8 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 5432) - v206) >> 3);
            v9 = v206 + 4;
            v10 = 1202702336;
            while (v8)
            {
              LODWORD(v11) = *v9;
              if ((v11 & 1) == 0)
              {
                break;
              }

              v207 = *(a1 + 2492);
              if (*(v9 - 4) < v207)
              {
                v207 = *(v9 - 4);
              }

              v11 = (90000.0 / v207);
              *v34 = v11;
              v34 += 8;
              --v8;
              v9 += 120;
              if (!--v35)
              {
                goto LABEL_412;
              }
            }
          }
        }

        v208 = *(a1 + 2492);
        if (*v35 < v208)
        {
          v208 = *v35;
        }

LABEL_419:
        v209 = (90000.0 / v208);
        result = (*(**(a1 + 48) + 184))(*(a1 + 48), *(a1 + 2880), *(a1 + 2896), *(a1 + 2864), v209, v15, 1);
        if (result)
        {
          v210 = result;
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            __p[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc";
            __p[1] = 10219;
            __p[2] = &v231;
            v232 = "Encoding error: ";
            v233 = __p;
            (*(**(a1 + 48) + 216))(*(a1 + 48), v210);
            (*(**(a1 + 48) + 208))(*(a1 + 48), *(a1 + 2880));
            (*(**(a1 + 48) + 200))(*(a1 + 48), *(a1 + 2880));
            webrtc::webrtc_logging_impl::Log("\r\t\t\t\t\t\t", v211, v212, v213, v214, v215, v216, v217, *v233);
          }

          result = 0xFFFFFFFFLL;
          if (!v14)
          {
            goto LABEL_424;
          }
        }

        else
        {
          *(a1 + 2864) += v209;
          if (!v14)
          {
LABEL_424:
            if (v13)
            {
              v219 = result;
              (*(*v13 + 8))(v13);
              result = v219;
            }

            goto LABEL_426;
          }
        }

        v218 = result;
        (*(*v14 + 8))(v14);
        result = v218;
        goto LABEL_424;
      }

      LODWORD(v8) = v234;
      memset(__p, 0, sizeof(__p));
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      v153 = *(a1 + 4768);
      LODWORD(v12) = v153 - 1;
      v249 = 0u;
      v250 = 0u;
      if (v12 <= 1)
      {
        LODWORD(v34) = 1;
      }

      else
      {
        LODWORD(v34) = v153 - 1;
      }

      v154 = *(a1 + 4776);
      if (v154 == 1)
      {
        v155 = 1;
      }

      else if (v154 == 2)
      {
        v155 = v15;
      }

      else
      {
        v155 = 0;
      }

      v35 = *(a1 + 4770);
      if (v234 >= v35)
      {
        goto LABEL_404;
      }

      v9 = v234;
      v156 = (a1 + 3216);
      if (v15)
      {
        if (v155)
        {
          if (v153 == 1)
          {
            v157 = v34 * v234;
            LODWORD(v11) = 1;
            *(&v239 + v234 + 3) = 1 << (v34 * v234);
            v12 = v8 + 1;
            if (v8 + 1 != v35)
            {
              v158 = &v246 + v8 + 1;
              v159 = ~v8 + v35;
              v160 = v34 * v12;
              do
              {
                if (v12 > v9)
                {
                  *(v158 - 35) = v157;
                  *v158 = 1;
                }

                ++v12;
                *(v158 - 25) = 1 << v160;
                ++v158;
                v160 += v34;
                v157 += v34;
                --v159;
              }

              while (v159);
            }
          }

          else
          {
            v178 = v12 <= *v156;
            LODWORD(v12) = v12 > *v156;
            LODWORD(v11) = v34 * v234;
            v179 = 1 << (v34 * v234);
            if (v178)
            {
              v179 = 128;
            }

            *(&v239 + v234 + 3) = v179;
            v180 = v8 + 1;
            if (v8 + 1 != v35)
            {
              if (v12)
              {
                v12 = &v246 + 4 * v8 + 4;
                v181 = ~v8 + v35;
                v182 = v34 * v180;
                do
                {
                  if (v180 > v9)
                  {
                    *(v12 - 140) = v11;
                    *v12 = 1;
                  }

                  ++v180;
                  *(v12 - 100) = 1 << v182;
                  v12 += 4;
                  v182 += v34;
                  LODWORD(v11) = v11 + v34;
                  --v181;
                }

                while (v181);
              }

              else
              {
                LODWORD(v34) = 7;
                *(&__p[2] + v180 + 1) = 7;
                LODWORD(v11) = 1;
                *(&v246 + v180) = 1;
                LODWORD(v12) = 128;
                *(&v239 + v180 + 3) = 128;
                v10 = v8 + 2;
                if (v8 + 2 != v35)
                {
                  goto LABEL_431;
                }
              }
            }
          }
        }

        else if (v153 == 1 || v12 > *v156)
        {
          v167 = 0;
          v11 = &v239 + 4 * v234 + 12;
          v168 = v234 * v34;
          v169 = v35 - v234;
          LODWORD(v12) = 1;
          do
          {
            if (v167)
            {
              v167 = 0;
            }

            if ((v167 & 1) == 0)
            {
              v167 = 1;
            }

            if (v167)
            {
              *v11 = 1 << v168;
            }

            v11 += 4;
            v168 += v34;
            --v169;
          }

          while (v169);
        }

        goto LABEL_404;
      }

      v10 = *(a1 + 4760) + 1;
      v161 = v10 % *(a1 + 3208);
      v11 = a1 + 3 * v161;
      if (v155)
      {
        a6 = a1 + 5456;
        v163 = v34 * v234;
        a5 = (v34 * v234 + v162);
        if (v153 == 1)
        {
          if (a5 <= 7)
          {
            v12 = a6 + 16 * a5;
            v164 = v10 - *v12;
            v165 = *(v12 + 8);
            LODWORD(v12) = *(a1 + 5448);
            if (v12)
            {
              v166 = (v164 - 1) < 0x1D;
            }

            else
            {
              a6 = *(v11 + 3981);
              v166 = v164 == a6;
            }

            if (v165 == v234 && v166)
            {
              *(__p + v234) = a5;
              *(&v244 + v8 + 3) = 1;
            }

            v187 = v163 + v186;
            *(&v239 + v8 + 3) = 1 << (v163 + v186);
            v188 = v8 + 1;
            if (v8 + 1 == v35)
            {
              goto LABEL_404;
            }

            v189 = 0;
            v190 = 0;
            v191 = v34 * v188 + v162;
            v192 = (a1 + 16 * v191 + 5464);
            a5 = 16 * v34;
            a6 = &v245 + 4 * v8;
            a7 = (~v8 + v35);
            v193 = v34 * v188 + v186;
            while (v191 + v190 <= 7)
            {
              v194 = v10 - *(v192 - 2);
              if (v12)
              {
                v195 = (v194 - 1) < 0x1D;
              }

              else
              {
                v195 = v194 == *(v11 + 3981);
              }

              if (v8 + v189 + 1 == *v192 && v195)
              {
                *(a6 - 140) = v191 + v190;
                *a6 = 1;
              }

              if (v188 + v189 > v8)
              {
                *(a6 - 120) = v187 + v190;
                *(a6 + 20) = 1;
              }

              *(a6 - 80) = 1 << (v193 + v190);
              v192 = (v192 + a5);
              a6 += 4;
              v190 += v34;
              if (a7 == ++v189)
              {
                goto LABEL_404;
              }
            }
          }

          goto LABEL_430;
        }

        if (a5 > 7)
        {
          goto LABEL_430;
        }

        v183 = (a6 + 16 * a5);
        v184 = v10 - *v183;
        a6 = v183[2];
        v230 = *(a1 + 5448);
        if (v230)
        {
          a7 = (v184 - 1) < 0x1D;
        }

        else
        {
          a7 = v184 == *(v11 + 3981);
        }

        if (a6 == v234 && a7 != 0)
        {
          a6 = __p;
          *(__p + v234) = a5;
          *(&v244 + v8 + 3) = 1;
        }

        v198 = v156[v161];
        if (v12 <= v198)
        {
          v199 = 7;
        }

        else
        {
        }

        a5 = (1 << v199);
        *(&v239 + v8 + 3) = a5;
        v200 = v8 + 1;
        if (v8 + 1 == v35)
        {
          goto LABEL_404;
        }

        a5 = 0;
        a6 = (v34 * v200);
        a7 = a1 + 16 * (a6 + v162) + 5464;
        v201 = &v245 + v8;
        v202 = v15;
        while (1)
        {
          if ((v162 + a6) >= 8)
          {
            goto LABEL_430;
          }

          v203 = v10 - *(a7 - 8);
          if (v230)
          {
            v204 = (v203 - 1) < 0x1D;
          }

          else
          {
            v204 = v203 == *(v11 + 3981);
          }

          if (v8 + a5 + 1 != *a7 || !v204)
          {
            if (v200 + a5 > v8)
            {
              goto LABEL_398;
            }
          }

          else
          {
            *(v201 - 35) = v162 + a6;
            *v201 = 1;
            if (v200 + a5 > v8)
            {
LABEL_398:
              *(v201 - 30) = v199;
              v201[5] = 1;
              if (v12 <= v198)
              {
                goto LABEL_402;
              }

              goto LABEL_386;
            }
          }

          if (v12 <= v198)
          {
LABEL_402:
            v199 = 7;
            goto LABEL_387;
          }

LABEL_386:
LABEL_387:
          *(v201 - 20) = 1 << v199;
          a7 += 16 * v34;
          ++v201;
          a6 = (a6 + v34);
          ++a5;
          v15 = v202;
          if (~v8 + v35 == a5)
          {
            goto LABEL_404;
          }
        }
      }

      v170 = 0;
      v171 = 0;
      v172 = v234 * v34;
      a5 = a1 + 16 * (v234 * v34 + v162) + 5464;
      a6 = 16 * v34;
      v9 = __p + 4 * v234;
      while (1)
      {
        if ((v162 + v172) > 7)
        {
          goto LABEL_430;
        }

        v173 = v10 - *(a5 - 8);
        if (*(a1 + 5448))
        {
          v174 = (v173 - 1) < 0x1D;
          if (v8 != *a5 || !v174)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v176 = v173 == *(v11 + 3981);
          if (v8 != *a5 || !v176)
          {
            goto LABEL_335;
          }
        }

        *v9 = v162 + v172;
        *(v9 + 140) = 1;
LABEL_335:
        if (v170)
        {
          v170 = 0;
        }

        if (v153 == 1 || v12 > v156[v161])
        {
          if ((v170 & 1) == 0)
          {
            v170 = 1;
          }
        }

        if (v170)
        {
          *(v9 + 60) = 1 << v171;
        }

        a5 += a6;
        v9 += 4;
        LODWORD(v8) = v8 + 1;
        v172 += v34;
        if (v35 == v8)
        {
          goto LABEL_404;
        }
      }
    }

    if (v26)
    {
      (**v26)(v26);
    }

    __p[1] = 0x800000001;
    __p[0] = 4;
    if ((*(*v26 + 32))(v26))
    {
      (**v26)(v26);
      v13 = v26;
    }

    else
    {
      (*(*v26 + 80))(&v232, v26, &__p[1], 2);
      v13 = v232;
      if (!v232)
      {
        goto LABEL_209;
      }
    }

    v92 = (*(*v13 + 32))(v13);
    v93 = __p[1];
    if ((__p[0] & 1) == 0)
    {
      v93 = &__p[1];
    }

    v94 = __p[0] >> 1;
    if (__p[0] >= 2)
    {
      v97 = 4 * v94;
      v95 = v93;
      while (*v95 != v92)
      {
        v95 = (v95 + 4);
        v97 -= 4;
        if (!v97)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      v95 = v93;
    }

    if (v95 != (v93 + 4 * v94))
    {
      v96 = v26;
      goto LABEL_246;
    }

LABEL_208:
    v96 = v26;
    if ((*(*v13 + 32))(v13) == 2)
    {
LABEL_246:
      v125 = (*(*v13 + 32))(v13);
      if ((v125 - 1) >= 2)
      {
        if (v125 != 8)
        {
LABEL_252:
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if (v96)
          {
            (*(*v96 + 8))(v96);
          }

          if (!v13)
          {
            result = 0xFFFFFFFFLL;
LABEL_426:
            if (v26)
            {
              v220 = result;
              (*(*v26 + 8))(v26);
              return v220;
            }

            return result;
          }

          v14 = 0;
          goto LABEL_258;
        }

        v131 = (*(*v13 + 40))(v13);
        v132 = (*(*v13 + 48))(v13);
        webrtc::LibvpxVp9Encoder::MaybeRewrapRawWithFormat(a1, 265, v131, v132);
        if ((*(*v13 + 32))(v13) != 8)
        {
          goto LABEL_438;
        }

        v129 = a1 + 2896;
        *(*(a1 + 2896) + 48) = (*(*v13 + 128))(v13);
        v137 = (*(*v13 + 136))(v13);
        v138 = *(a1 + 2896);
        *(v138 + 56) = v137;
        *(v138 + 64) = v137 + 1;
        *(*(a1 + 2896) + 80) = (*(*v13 + 112))(v13);
        *(*(a1 + 2896) + 84) = (*(*v13 + 120))(v13);
        v130 = (*(*v13 + 120))(v13);
      }

      else
      {
        v126 = (*(*v13 + 40))(v13);
        v127 = (*(*v13 + 48))(v13);
        webrtc::LibvpxVp9Encoder::MaybeRewrapRawWithFormat(a1, 258, v126, v127);
        v128 = (*(*v13 + 64))(v13);
        v129 = a1 + 2896;
        *(*(a1 + 2896) + 48) = (*(*v128 + 136))(v128);
        *(*(a1 + 2896) + 56) = (*(*v128 + 144))(v128);
        *(*(a1 + 2896) + 64) = (*(*v128 + 152))(v128);
        *(*(a1 + 2896) + 80) = (*(*v128 + 112))(v128);
        *(*(a1 + 2896) + 84) = (*(*v128 + 120))(v128);
        v130 = (*(*v128 + 128))(v128);
      }

      *(*v129 + 88) = v130;
      goto LABEL_252;
    }

LABEL_209:
    (*(*v26 + 56))(&v232, v26);
    v98 = v232;
    if (v232)
    {
      if ((*(*v232 + 32))(v232) != 1 && (*(*v232 + 32))(v232) != 2)
      {
        goto LABEL_439;
      }

      v96 = v232;
      if (v232)
      {
        (**v232)(v232);
      }

      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v96)
      {
        (**v96)(v96);
      }

      (*(*v26 + 8))(v26);
      v13 = v96;
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*v26 + 32))(v26);
        webrtc::webrtc_logging_impl::Log("\r\t\t\t", v118, v119, v120, v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
      }

      v96 = v26;
    }

    if (v232)
    {
      (*(*v232 + 8))(v232);
    }

    if (!v98)
    {
      if (v13)
      {
        (*(*v13 + 8))(v13);
        v13 = 0;
      }

      goto LABEL_252;
    }

    goto LABEL_246;
  }

  v37 = 0;
  v38 = a1 + 4820;
  while (v15 == v14)
  {
    v40 = *(a1 + 2888);
    v41 = v40 + 196;
    if (*(v40 + 196 + 4 * v37))
    {
LABEL_56:
      *(v41 + 4 * v37) = 0;
      if (*(a1 + 4768))
      {
        bzero((v40 + 4 * v37 * *(a1 + 4768) + 328), 4 * *(a1 + 4768));
      }

      *(a1 + 5852) = 1;
    }

LABEL_50:
    if (++v37 == v26)
    {
      goto LABEL_103;
    }
  }

  v40 = *(a1 + 2888);
  if (v37 != *(v15 + 2))
  {
    v41 = v40 + 196;
    if (*(v40 + 196 + 4 * v37))
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v39 = v40 + 196;
  if (*(v40 + 196 + 4 * v37))
  {
LABEL_49:
    v15 += 11;
    goto LABEL_50;
  }

  v42 = *(a1 + 4768);
  v43 = v38 + 32 * v37;
  if (!*(a1 + 4768))
  {
    if (v37 > 4)
    {
      goto LABEL_436;
    }

    if (*(v43 + 4))
    {
      goto LABEL_66;
    }

    goto LABEL_98;
  }

  if (v37 <= 4)
  {
    v44 = v40 + 328;
    v45 = v37 * v42;
    v46 = *(v43 + 4);
    if (v46)
    {
      *(v44 + 4 * v45) = *v43 / 0x3E8u;
      if (v42 != 1)
      {
        v47 = *v43;
        goto LABEL_72;
      }

LABEL_66:
      v48 = *(v38 + 32 * v37);
LABEL_68:
      if (*(v43 + 12) == 1)
      {
LABEL_69:
        v49 = *(v43 + 8);
        if (*(v43 + 20) != 1)
        {
          goto LABEL_70;
        }

LABEL_100:
        v50 = *(v43 + 16);
        if (*(v43 + 28) == 1)
        {
          goto LABEL_101;
        }

LABEL_71:
        v51 = 0;
        goto LABEL_102;
      }

LABEL_99:
      v49 = 0;
      if (*(v43 + 20) == 1)
      {
        goto LABEL_100;
      }

LABEL_70:
      v50 = 0;
      if (*(v43 + 28) != 1)
      {
        goto LABEL_71;
      }

LABEL_101:
      v51 = *(v43 + 24);
LABEL_102:
      *(v39 + 4 * v37) = (v49 + v48 + v50 + v51) / 0x3E8u;
      *(a1 + 5852) = 1;
      goto LABEL_49;
    }

    v48 = 0;
    v47 = 0;
    *(v44 + 4 * v45) = 0;
    if (v42 == 1)
    {
      goto LABEL_68;
    }

LABEL_72:
    v52 = *(v43 + 12);
    if (v52 == 1)
    {
      v53 = *(v43 + 8);
    }

    else
    {
      v53 = 0;
    }

    v54 = (v53 + v47) / 0x3E8u;
    v55 = (v44 + 4 * v45);
    v55[1] = v54;
    if (v42 != 2)
    {
      v56 = v46 ? *v43 : 0;
      v57 = v52 ? *(v43 + 8) : 0;
      v58 = *(v43 + 20);
      v59 = v58 == 1 ? *(v43 + 16) : 0;
      v55[2] = (v57 + v56 + v59) / 0x3E8u;
      if (v42 != 3)
      {
        if (v46)
        {
          v60 = *v43;
        }

        else
        {
          v60 = 0;
        }

        if (v52)
        {
          v52 = *(v43 + 8);
          if (!v58)
          {
            goto LABEL_91;
          }

LABEL_94:
          v58 = *(v43 + 16);
          if (*(v43 + 28) != 1)
          {
            goto LABEL_95;
          }

LABEL_92:
          v61 = *(v43 + 24);
        }

        else
        {
          if (v58)
          {
            goto LABEL_94;
          }

LABEL_91:
          if (*(v43 + 28) == 1)
          {
            goto LABEL_92;
          }

LABEL_95:
          v61 = 0;
        }

        v55[3] = (v52 + v60 + v58 + v61) / 0x3E8u;
        if (v42 != 4)
        {
          goto LABEL_437;
        }
      }
    }

    if (v46)
    {
      goto LABEL_66;
    }

LABEL_98:
    v48 = 0;
    if (*(v43 + 12) == 1)
    {
      goto LABEL_69;
    }

    goto LABEL_99;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 85, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v37);
LABEL_436:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v37);
LABEL_437:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 86, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 4);
LABEL_438:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 76, "type() == Type::kNV12", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v133, v134, v135, v136, v227);
LABEL_439:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc", 2101, "converted_buffer->type() == VideoFrameBuffer::Type::kI420 || converted_buffer->type() == VideoFrameBuffer::Type::kI420A", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v99, v100, v101, v102, v227);
  return webrtc::LibvpxVp9Encoder::MaybeRewrapRawWithFormat(v223, v224, v225, v226);
}

_DWORD *webrtc::LibvpxVp9Encoder::MaybeRewrapRawWithFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 2896);
  if (result)
  {
    if (*result != a2 || result[6] != a3 || result[7] != a4)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
      }

      (*(**(a1 + 48) + 32))(*(a1 + 48), *(a1 + 2896));
      result = (*(**(a1 + 48) + 24))(*(a1 + 48), 0, a2, a3, a4, 1, 0);
      *(a1 + 2896) = result;
    }
  }

  else
  {
    *(a1 + 2896) = (*(**(a1 + 48) + 24))(*(a1 + 48), 0, a2, a3, a4, 1, 0);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp9/libvpx_vp9_encoder.cc");
    }

    result = *(a1 + 2896);
  }

  if (a2 == 2306)
  {
    v23 = 16;
  }

  else
  {
    v23 = 8;
  }

  result[5] = v23;
  return result;
}

uint64_t webrtc::CodecSpecificInfo::operator=(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x661uLL);
  if (*(a1 + 1848) != *(a2 + 1848))
  {
    v7 = (a1 + 1640);
    if (!*(a1 + 1848))
    {
      webrtc::GenericFrameInfo::GenericFrameInfo(v7, (a2 + 1640));
      *(a1 + 1848) = 1;
      v4 = (a1 + 1856);
      v5 = (a2 + 1856);
      v6 = *(a1 + 1984);
      if (v6 != *(a2 + 1984))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    webrtc::GenericFrameInfo::~GenericFrameInfo(v7);
    *(a1 + 1848) = 0;
LABEL_7:
    v4 = (a1 + 1856);
    v5 = (a2 + 1856);
    v6 = *(a1 + 1984);
    if (v6 != *(a2 + 1984))
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (!*(a1 + 1848))
  {
    goto LABEL_7;
  }

  webrtc::GenericFrameInfo::operator=((a1 + 1640), a2 + 1640);
  v4 = (a1 + 1856);
  v5 = (a2 + 1856);
  v6 = *(a1 + 1984);
  if (v6 != *(a2 + 1984))
  {
LABEL_18:
    if (v6)
    {
      webrtc::FrameDependencyStructure::~FrameDependencyStructure(v4);
      *(a1 + 1984) = 0;
      goto LABEL_33;
    }

    v13 = *v5;
    *(v4 + 2) = *(v5 + 2);
    *v4 = v13;
    *(a1 + 1872) = 0;
    v14 = *(a2 + 1872);
    if (v14 >= 2)
    {
      if (v14)
      {
        absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom((a1 + 1872), (a2 + 1872));
        *(a1 + 1920) = 0;
        v17 = *(a2 + 1920);
        if (v17 >= 2)
        {
LABEL_24:
          if (v17)
          {
            absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::InitFrom((a1 + 1920), (a2 + 1920));
          }

          else
          {
            *(a1 + 1920) = v17;
            v18 = *(a2 + 1944);
            *(a1 + 1928) = *(a2 + 1928);
            *(a1 + 1944) = v18;
          }
        }

LABEL_29:
        *(a1 + 1976) = 0;
        *(a1 + 1960) = 0u;
        v19 = *(a2 + 1960);
        v20 = *(a2 + 1968);
        if (v20 != v19)
        {
          if ((0x4EC4EC4EC4EC4EC5 * ((v20 - v19) >> 3)) < 0x276276276276277)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(a1 + 1984) = 1;
        goto LABEL_33;
      }

      *(a1 + 1872) = v14;
      v15 = *(a2 + 1880);
      v16 = *(a2 + 1896);
      *(a1 + 1912) = *(a2 + 1912);
      *(a1 + 1880) = v15;
      *(a1 + 1896) = v16;
    }

    *(a1 + 1920) = 0;
    v17 = *(a2 + 1920);
    if (v17 >= 2)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_8:
  if (v6)
  {
    v8 = *v5;
    *(v4 + 2) = *(v5 + 2);
    *v4 = v8;
    if (a1 != a2)
    {
      v9 = *(a2 + 1872);
      if (v9)
      {
        v10 = *(a2 + 1880);
      }

      else
      {
        v10 = a2 + 1880;
      }

      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 1872), v10, v9 >> 1);
      v11 = *(a2 + 1920);
      if (v11)
      {
        v12 = *(a2 + 1928);
      }

      else
      {
        v12 = a2 + 1928;
      }

      absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::RenderResolution>,webrtc::RenderResolution const*>>((a1 + 1920), v12, v11 >> 1);
      std::vector<webrtc::FrameDependencyTemplate>::__assign_with_size[abi:sn200100]<webrtc::FrameDependencyTemplate*,webrtc::FrameDependencyTemplate*>((a1 + 1960), *(a2 + 1960), *(a2 + 1968), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1968) - *(a2 + 1960)) >> 3));
    }
  }

LABEL_33:
  *(a1 + 1992) = *(a2 + 1992);
  v21 = a1 + 2000;
  if (*(a1 + 2056) == *(a2 + 2056))
  {
    if (*(a1 + 2056))
    {
      v22 = *(a1 + 2048);
      v23 = *(a2 + 2048);
      if (v22 == -1)
      {
        if (v23 == -1)
        {
          return a1;
        }
      }

      else if (v23 == -1)
      {
        (off_288295980[v22])(&v27, v21);
        *(a1 + 2048) = -1;
        return a1;
      }

      v27 = a1 + 2000;
      (off_288295990[v23])(&v27);
    }
  }

  else if (*(a1 + 2056))
  {
    v24 = *(a1 + 2048);
    if (v24 != -1)
    {
      (off_288295980[v24])(&v27, v21);
    }

    *(a1 + 2048) = -1;
    *(a1 + 2056) = 0;
  }

  else
  {
    *(a1 + 2000) = 0;
    *(a1 + 2048) = -1;
    v25 = *(a2 + 2048);
    if (v25 != -1)
    {
      v27 = a1 + 2000;
      (off_2882959A0[v25])(&v27, a2 + 2000);
      *(a1 + 2048) = v25;
    }

    *(a1 + 2056) = 1;
  }

  return a1;
}

uint64_t webrtc::LibvpxVp9Encoder::GetEncoderInfo@<X0>(webrtc::LibvpxVp9Encoder *this@<X0>, uint64_t a2@<X8>)
{
  v29[1] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0x10000E100;
  *(a2 + 20) = 0;
  v4 = a2 + 24;
  if (v4 <= "unknown" && a2 + 31 > "unknown")
  {
LABEL_48:
    __break(1u);
LABEL_49:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
  }

  *(a2 + 56) = 2;
  *(a2 + 31) = 0;
  *(a2 + 48) = 256;
  *(a2 + 64) = -1;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 0;
  *(a2 + 208) = 2;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 216) = 1;
  *(a2 + 240) = 0;
  *(a2 + 244) = 0;
  *(a2 + 248) = 0;
  *(a2 + 21) = 0;
  *(a2 + 200) = 1;
  *(a2 + 47) = 6;
  *v4 = 1986161004;
  *(v4 + 4) = 30832;
  *(a2 + 30) = 0;
  v5 = *(this + 2860);
  if (*(this + 5784) == 1 && (*(this + 2860) & 1) != 0)
  {
    if (*(this + 2837))
    {
      *a2 = *(this + 722);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }

    *(a2 + 8) = v6;
    *(a2 + 12) = 57600;
    *(a2 + 48) = *(this + 4780);
    *(a2 + 49) = 0;
    v27 = (a2 + 208);
    v28 = a2;
    v7 = *(this + 4769);
    if (*(this + 4769))
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 12) = 57600;
    *(a2 + 48) = *(this + 4780);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    v27 = (a2 + 208);
    v28 = a2;
    v7 = *(this + 4769);
    if (*(this + 4769))
    {
LABEL_12:
      v8 = (this + 2624);
      v9 = 0.0;
      do
      {
        if (*(v8 + 24) == 1 && *v8 > v9)
        {
          v9 = *v8;
        }

        v8 += 9;
        --v7;
      }

      while (v7);
      v10 = 0;
      while (1)
      {
        v11 = a2 + 56 + 24 * v10;
        if (*v11)
        {
          operator delete(*(v11 + 8));
        }

        *v11 = 0;
        v12 = (this + 36 * v10 + 2616);
        if (*(v12 + 32) == 1)
        {
          LODWORD(v13) = *(this + 4768);
          if (*(this + 4768))
          {
            break;
          }
        }

LABEL_18:
        if (++v10 >= *(this + 4769))
        {
          goto LABEL_39;
        }
      }

      v14 = 0;
      v15 = v12[2] / v9;
      while (1)
      {
        v16 = 1.0;
        if (v13 >= 2)
        {
          v16 = *(*(this + 361) + 4 * v14 + 240);
        }

        v17 = (v15 / v16) * 255.0;
        v18 = (v17 < 0.0) | (2 * (v17 > 255.0));
        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_49;
          }

          LOBYTE(v19) = -1;
          LOBYTE(v29[0]) = -1;
          v20 = *v11;
          if ((*v11 & 1) == 0)
          {
LABEL_37:
            v21 = v11 + 8;
            v22 = v20 >> 1;
            if (v22 == 16)
            {
LABEL_38:
              absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::EmplaceBackSlow<unsigned char>();
            }

            goto LABEL_33;
          }
        }

        else if (v18)
        {
          LOBYTE(v19) = 0;
          LOBYTE(v29[0]) = 0;
          v20 = *v11;
          if ((*v11 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v19 = v17;
          LOBYTE(v29[0]) = v17;
          v20 = *v11;
          if ((*v11 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v21 = *(v11 + 8);
        v22 = v20 >> 1;
        if (v22 == *(v11 + 16))
        {
          goto LABEL_38;
        }

LABEL_33:
        if (!v21)
        {
          goto LABEL_48;
        }

        *(v21 + v22) = v19;
        *v11 += 2;
        ++v14;
        v13 = *(this + 4768);
        if (v14 >= v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

LABEL_39:
  if (*(this + 714))
  {
    v23 = v28;
    if (*(this + 699) != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v29[0] = 0x800000001;
  absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::VideoFrameBuffer::Type>,webrtc::VideoFrameBuffer::Type const*>>(v27, v29, 2uLL);
  v23 = v28;
  if (*(this + 699) == 1)
  {
LABEL_41:
    *(v23 + 244) = 32;
    *(v23 + 248) = 1;
  }

LABEL_42:
  v24 = *(this + 750);
  v25 = *(this + 751);
  result = v25 - v24;
  if (v25 != v24)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *std::vector<webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>::push_back[abi:sn200100](void *result, _OWORD *a2)
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

uint64_t webrtc::FieldTrialStructList<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::Params>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_2882959C0;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  return a1;
}

void **std::vector<webrtc::FramerateControllerDeprecated>::~vector[abi:sn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 15;
        std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](v3 - 12);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__optional_destruct_base<webrtc::SimulcastToSvcConverter,false>::reset[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 408) == 1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      v3 = *(a1 + 392);
      v4 = *(a1 + 384);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 10))
          {
            operator delete(*(v3 - 9));
          }

          v6 = *(v3 - 13);
          v3 -= 13;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 384);
      }

      *(a1 + 392) = v2;
      operator delete(v4);
    }

    *(a1 + 408) = 0;
  }
}

void webrtc::SvcRateAllocator::~SvcRateAllocator(void **this)
{
  *this = &unk_2882A0970;
  if (this[77])
  {
    operator delete(this[78]);
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[69];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[72]);
  v2 = this[69];
  if (v2)
  {
LABEL_4:
    this[70] = v2;
    operator delete(v2);
  }

LABEL_5:
  this[59] = &unk_288293910;
  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  v3 = this[60];
  if (v3)
  {
    this[61] = v3;
    operator delete(v3);
  }

  this[51] = &unk_288293910;
  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
  }

  v4 = this[52];
  if (v4)
  {
    this[53] = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A0970;
  if (this[77])
  {
    operator delete(this[78]);
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[69];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[72]);
  v2 = this[69];
  if (v2)
  {
LABEL_4:
    this[70] = v2;
    operator delete(v2);
  }

LABEL_5:
  this[59] = &unk_288293910;
  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  v3 = this[60];
  if (v3)
  {
    this[61] = v3;
    operator delete(v3);
  }

  this[51] = &unk_288293910;
  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
  }

  v4 = this[52];
  if (v4)
  {
    this[53] = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A0970;
  if (this[77])
  {
    operator delete(this[78]);
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[69];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    this[68] = &unk_288293910;
    if ((*(this + 599) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[72]);
  v2 = this[69];
  if (!v2)
  {
LABEL_5:
    this[59] = &unk_288293910;
    if (*(this + 527) < 0)
    {
      operator delete(this[63]);
    }

    v3 = this[60];
    if (v3)
    {
      this[61] = v3;
      operator delete(v3);
    }

    this[51] = &unk_288293910;
    if (*(this + 463) < 0)
    {
      operator delete(this[55]);
    }

    v4 = this[52];
    if (v4)
    {
      this[53] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x2743DA540);
  }

LABEL_4:
  this[70] = v2;
  operator delete(v2);
  goto LABEL_5;
}

void *std::vector<webrtc::FramerateControllerDeprecated>::vector[abi:sn200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

__n128 std::vector<webrtc::FramerateControllerDeprecated>::__move_assign(void **a1, __n128 *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = v5 - 15;
        std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](v5 - 12);
        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  result = *a2;
  *a1 = *a2;
  a1[2] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<webrtc::FrameDependencyTemplate>::__assign_with_size[abi:sn200100]<webrtc::FrameDependencyTemplate*,webrtc::FrameDependencyTemplate*>(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_56;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_55:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_56:
      if (a4 <= 0x276276276276276)
      {
        v38 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
        v39 = 2 * v38;
        if (2 * v38 <= a4)
        {
          v39 = a4;
        }

        if (v38 >= 0x13B13B13B13B13BLL)
        {
          v40 = 0x276276276276276;
        }

        else
        {
          v40 = v39;
        }

        if (v40 <= 0x276276276276276)
        {
          operator new();
        }
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    while (1)
    {
      if (*(v10 - 24))
      {
        operator delete(*(v10 - 16));
        if ((*(v10 - 48) & 1) == 0)
        {
LABEL_8:
          if (*(v10 - 96))
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if ((*(v10 - 48) & 1) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 40));
      if (*(v10 - 96))
      {
LABEL_12:
        operator delete(*(v10 - 88));
      }

LABEL_5:
      v10 -= 104;
      if (v10 == v8)
      {
        v11 = *a1;
        goto LABEL_55;
      }
    }
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v12 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        *(v8 + v26) = *(v5 + v26);
        if (v5 != v8)
        {
          v27 = (v5 + v26);
          v28 = (v8 + v26);
          v29 = *(v5 + v26 + 8);
          if (v29)
          {
            v30 = *(v5 + v26 + 16);
          }

          else
          {
            v30 = v5 + v26 + 16;
          }

          absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v28 + 1, v30, v29 >> 1);
          v31 = v27[7];
          if (v31)
          {
            v32 = v27[8];
          }

          else
          {
            v32 = (v27 + 8);
          }

          absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v28 + 7, v32, v31 >> 1);
          v35 = v27[11];
          v34 = v27 + 11;
          v33 = v35;
          v36 = *(v34 - 1);
          if (v36)
          {
            v37 = v33;
          }

          else
          {
            v37 = v34;
          }

          absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v28 + 10, v37, v36 >> 1);
        }

        v26 += 104;
      }

      while (v5 + v26 != a3);
      v12 = a1[1];
      v8 += v26;
    }

    while (1)
    {
      if (v12 == v8)
      {
        a1[1] = v8;
        return;
      }

      if (*(v12 - 24))
      {
        operator delete(*(v12 - 16));
        if (*(v12 - 48))
        {
LABEL_51:
          operator delete(*(v12 - 40));
          if ((*(v12 - 96) & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }

      else if (*(v12 - 48))
      {
        goto LABEL_51;
      }

      if ((*(v12 - 96) & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_52:
      operator delete(*(v12 - 88));
LABEL_44:
      v12 -= 104;
    }
  }

  if (v12 != v8)
  {
    v14 = 0;
    do
    {
      *(v8 + v14) = *(v5 + v14);
      if (v5 != v8)
      {
        v15 = (v5 + v14);
        v16 = (v8 + v14);
        v17 = *(v5 + v14 + 8);
        if (v17)
        {
          v18 = *(v5 + v14 + 16);
        }

        else
        {
          v18 = v5 + v14 + 16;
        }

        absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v16 + 1, v18, v17 >> 1);
        v19 = v15[7];
        if (v19)
        {
          v20 = v15[8];
        }

        else
        {
          v20 = (v15 + 8);
        }

        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v16 + 7, v20, v19 >> 1);
        v23 = v15[11];
        v22 = v15 + 11;
        v21 = v23;
        v24 = *(v22 - 1);
        if (v24)
        {
          v25 = v21;
        }

        else
        {
          v25 = v22;
        }

        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v16 + 10, v25, v24 >> 1);
      }

      v14 += 104;
    }

    while (v13 != v14);
    v5 += v13;
  }

  std::vector<webrtc::FrameDependencyTemplate>::__construct_at_end<webrtc::FrameDependencyTemplate*,webrtc::FrameDependencyTemplate*>(a1, v5, a3);
}