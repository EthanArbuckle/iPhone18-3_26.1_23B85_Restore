void non-virtual thunk towebrtc::SendStatisticsProxy::~SendStatisticsProxy(webrtc::SendStatisticsProxy *this)
{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 8));
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 16));
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 24));
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 32));
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 40));
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 24));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 32));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this - 40));

  JUMPOUT(0x2743DA540);
}

void webrtc::SendStatisticsProxy::UmaSamplesContainer::UmaSamplesContainer(unint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (__s)
  {
    v7 = strlen(__s);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }

    if (v7 > 0x16)
    {
      operator new();
    }

    *(a1 + 23) = v7;
    v8 = (a1 + v7);
    if (a1 > __s || v8 <= __s)
    {
      if (v7)
      {
        memmove(a1, __s, v7);
      }

      *v8 = 0;
      *(a1 + 24) = a4;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = &unk_28829A088;
      *(a1 + 248) = xmmword_273BA1B20;
      operator new[]();
    }
  }

  __break(1u);
LABEL_14:
  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::SendStatisticsProxy::UmaSamplesContainer::~UmaSamplesContainer(webrtc::SendStatisticsProxy::UmaSamplesContainer *this)
{
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 180));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 176));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1344, *(this + 169));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1304, *(this + 164));
  if (*(this + 1208) == 1 && *(this + 1207) < 0)
  {
    operator delete(*(this + 148));
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1160, *(this + 146));
  *(this + 115) = &unk_2882A00F0;
  v2 = *(this + 121);
  *(this + 121) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 119);
  *(this + 119) = 0;
  if (v3)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 8, *(v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1020C40C0D28DD2);
  }

  v4 = *(this + 118);
  *(this + 118) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C407607B2BCLL);
  }

  *(this + 104) = &unk_2882A00F0;
  v5 = *(this + 110);
  *(this + 110) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 108);
  *(this + 108) = 0;
  if (v6)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v6 + 8, *(v6 + 16));
    MEMORY[0x2743DA540](v6, 0x1020C40C0D28DD2);
  }

  v7 = *(this + 107);
  *(this + 107) = 0;
  if (v7)
  {
    MEMORY[0x2743DA540](v7, 0x1000C407607B2BCLL);
  }

  *(this + 93) = &unk_2882A00F0;
  v8 = *(this + 99);
  *(this + 99) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 97);
  *(this + 97) = 0;
  if (v9)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v9 + 8, *(v9 + 16));
    MEMORY[0x2743DA540](v9, 0x1020C40C0D28DD2);
  }

  v10 = *(this + 96);
  *(this + 96) = 0;
  if (v10)
  {
    MEMORY[0x2743DA540](v10, 0x1000C407607B2BCLL);
  }

  *(this + 82) = &unk_2882A00F0;
  v11 = *(this + 88);
  *(this + 88) = 0;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = *(this + 86);
  *(this + 86) = 0;
  if (v12)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v12 + 8, *(v12 + 16));
    MEMORY[0x2743DA540](v12, 0x1020C40C0D28DD2);
  }

  v13 = *(this + 85);
  *(this + 85) = 0;
  if (v13)
  {
    MEMORY[0x2743DA540](v13, 0x1000C407607B2BCLL);
  }

  *(this + 71) = &unk_2882A00F0;
  v14 = *(this + 77);
  *(this + 77) = 0;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  v15 = *(this + 75);
  *(this + 75) = 0;
  if (v15)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v15 + 8, *(v15 + 16));
    MEMORY[0x2743DA540](v15, 0x1020C40C0D28DD2);
  }

  v16 = *(this + 74);
  *(this + 74) = 0;
  if (v16)
  {
    MEMORY[0x2743DA540](v16, 0x1000C407607B2BCLL);
  }

  *(this + 60) = &unk_2882A00F0;
  v17 = *(this + 66);
  *(this + 66) = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  v18 = *(this + 64);
  *(this + 64) = 0;
  if (v18)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v18 + 8, *(v18 + 16));
    MEMORY[0x2743DA540](v18, 0x1020C40C0D28DD2);
  }

  v19 = *(this + 63);
  *(this + 63) = 0;
  if (v19)
  {
    MEMORY[0x2743DA540](v19, 0x1000C407607B2BCLL);
  }

  *(this + 49) = &unk_2882A00F0;
  v20 = *(this + 55);
  *(this + 55) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(this + 53);
  *(this + 53) = 0;
  if (v21)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v21 + 8, *(v21 + 16));
    MEMORY[0x2743DA540](v21, 0x1020C40C0D28DD2);
  }

  v22 = *(this + 52);
  *(this + 52) = 0;
  if (v22)
  {
    MEMORY[0x2743DA540](v22, 0x1000C407607B2BCLL);
  }

  *(this + 38) = &unk_2882A00F0;
  v23 = *(this + 44);
  *(this + 44) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  v24 = *(this + 42);
  *(this + 42) = 0;
  if (v24)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v24 + 8, *(v24 + 16));
    MEMORY[0x2743DA540](v24, 0x1020C40C0D28DD2);
  }

  v25 = *(this + 41);
  *(this + 41) = 0;
  if (v25)
  {
    MEMORY[0x2743DA540](v25, 0x1000C407607B2BCLL);
  }

  *(this + 30) = &unk_28829A088;
  v26 = *(this + 33);
  if (v26)
  {
    MEMORY[0x2743DA520](v26, 0x1000C8000313F17);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::SendStatisticsProxy::OnEncoderReconfigured(uint64_t a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock((a1 + 392));
  if (*(a1 + 456) != *(a2 + 136))
  {
    webrtc::SendStatisticsProxy::UmaSamplesContainer::UpdateHistograms(*(a1 + 1000), (a1 + 80), (a1 + 472));
    operator new();
  }

  v6 = *(a1 + 1000);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v6 + 1408));
  *(v6 + 1400) = v6 + 1408;
  *(v6 + 1408) = 0u;
  v7 = a3[1];
  v8 = v7 == *a3;
  v9 = *(a1 + 1000);
  *(v9 + 1384) = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 5);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v7 - 88) * *(v7 - 96);
  }

  *(v9 + 1392) = v10;

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnEncodedFrameTimeMeasured(webrtc::SendStatisticsProxy *this, int a2, int a3)
{
  pthread_mutex_lock((this + 392));
  v6 = vdupq_n_s64(1uLL);
  v6.i64[0] = a2;
  *(*(this + 125) + 96) = vaddq_s64(*(*(this + 125) + 96), v6);
  v7 = a2;
  v8 = *(this + 169);
  if (v8 != -1.0)
  {
    v7 = ((1.0 - *(this + 168)) * v7) + (*(this + 168) * v8);
  }

  v9 = *(this + 170);
  if (v7 > v9 && v9 != -1.0)
  {
    v7 = *(this + 170);
  }

  *(this + 169) = v7;
  *(this + 129) = llroundf(v7);
  *(this + 66) += a2;
  *(this + 130) = a3;

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnSuspendChange(webrtc::SendStatisticsProxy *this, int a2)
{
  v4 = (*(**(this + 6) + 16))(*(this + 6));
  v5 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v5;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 - -v4 / 0x3E8uLL;
  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  pthread_mutex_lock((this + 392));
  *(this + 580) = a2;
  if (!a2)
  {
    v18 = *(this + 125);
    if (*(this + 928) == 1 && *(v18 + 1024) == -1)
    {
      *(v18 + 1024) = v8;
    }

    if (*(this + 940) == 1 && *(v18 + 1040) == -1)
    {
      *(v18 + 1040) = v8;
    }

    v19 = v18;
    if (*(v18 + 712) != -1)
    {
      webrtc::StatsCounter::TryProcess((v18 + 656));
      v19 = *(this + 125);
    }

    *(v18 + 720) = 0;
    *(v18 + 736) = 0;
    v20 = v19;
    if (*(v19 + 800) != -1)
    {
      webrtc::StatsCounter::TryProcess((v19 + 744));
      v20 = *(this + 125);
    }

    *(v19 + 808) = 0;
    *(v19 + 824) = 0;
    v21 = v20;
    if (*(v20 + 888) != -1)
    {
      webrtc::StatsCounter::TryProcess((v20 + 832));
      v21 = *(this + 125);
    }

    *(v20 + 896) = 0;
    *(v20 + 912) = 0;
    if (*(v21 + 976) != -1)
    {
      webrtc::StatsCounter::TryProcess((v21 + 920));
    }

    *(v21 + 984) = 0;
    *(v21 + 1000) = 0;
    goto LABEL_41;
  }

  v9 = *(this + 125);
  if (*(v9 + 360) != -1)
  {
    webrtc::StatsCounter::TryProcess((v9 + 304));
  }

  *(v9 + 368) = 1;
  v10 = (*(**(v9 + 344) + 16))(*(v9 + 344));
  if ((v10 & 0x8000000000000000) != 0)
  {
    if (-v10 % 0x3E8uLL <= 0x1F4)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    *(v9 + 376) = v24 - -v10 / 0x3E8uLL;
    *(v9 + 384) = 500;
    v12 = *(this + 125);
    if (*(v12 + 448) != -1)
    {
LABEL_16:
      webrtc::StatsCounter::TryProcess((v12 + 392));
    }
  }

  else
  {
    v11 = v10 / 0x3E8;
    if (v10 % 0x3E8 > 0x1F3)
    {
      ++v11;
    }

    *(v9 + 376) = v11;
    *(v9 + 384) = 500;
    v12 = *(this + 125);
    if (*(v12 + 448) != -1)
    {
      goto LABEL_16;
    }
  }

  *(v12 + 456) = 1;
  v13 = (*(**(v12 + 432) + 16))(*(v12 + 432));
  if ((v13 & 0x8000000000000000) != 0)
  {
    if (-v13 % 0x3E8uLL <= 0x1F4)
    {
      v25 = 0;
    }

    else
    {
      v25 = -1;
    }

    *(v12 + 464) = v25 - -v13 / 0x3E8uLL;
    *(v12 + 472) = 500;
    v15 = *(this + 125);
    if (*(v15 + 536) != -1)
    {
LABEL_21:
      webrtc::StatsCounter::TryProcess((v15 + 480));
    }
  }

  else
  {
    v14 = v13 / 0x3E8;
    if (v13 % 0x3E8 > 0x1F3)
    {
      ++v14;
    }

    *(v12 + 464) = v14;
    *(v12 + 472) = 500;
    v15 = *(this + 125);
    if (*(v15 + 536) != -1)
    {
      goto LABEL_21;
    }
  }

  *(v15 + 544) = 1;
  v16 = (*(**(v15 + 520) + 16))(*(v15 + 520));
  if ((v16 & 0x8000000000000000) != 0)
  {
    if (-v16 % 0x3E8uLL <= 0x1F4)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    v17 = v26 - -v16 / 0x3E8uLL;
  }

  else
  {
    v17 = v16 / 0x3E8;
    if (v16 % 0x3E8 > 0x1F3)
    {
      ++v17;
    }
  }

  *(v15 + 552) = v17;
  *(v15 + 560) = 500;
  v27 = *(this + 125);
  if (*(v27 + 624) != -1)
  {
    webrtc::StatsCounter::TryProcess((v27 + 568));
  }

  *(v27 + 632) = 1;
  v28 = (*(**(v27 + 608) + 16))(*(v27 + 608));
  if ((v28 & 0x8000000000000000) != 0)
  {
    if (-v28 % 0x3E8uLL <= 0x1F4)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    v29 = v30 - -v28 / 0x3E8uLL;
  }

  else
  {
    v29 = v28 / 0x3E8;
    if (v28 % 0x3E8 > 0x1F3)
    {
      ++v29;
    }
  }

  *(v27 + 640) = v29;
  *(v27 + 648) = 500;
  v31 = *(this + 125);
  if (*(v31 + 712) != -1)
  {
    webrtc::StatsCounter::TryProcess((v31 + 656));
  }

  *(v31 + 720) = 1;
  v32 = (*(**(v31 + 696) + 16))(*(v31 + 696));
  if ((v32 & 0x8000000000000000) != 0)
  {
    if (-v32 % 0x3E8uLL <= 0x1F4)
    {
      v34 = 0;
    }

    else
    {
      v34 = -1;
    }

    v33 = v34 - -v32 / 0x3E8uLL;
  }

  else
  {
    v33 = v32 / 0x3E8;
    if (v32 % 0x3E8 > 0x1F3)
    {
      ++v33;
    }
  }

  *(v31 + 728) = v33;
  *(v31 + 736) = 500;
  v35 = *(this + 125);
  if (*(v35 + 800) != -1)
  {
    webrtc::StatsCounter::TryProcess((v35 + 744));
  }

  *(v35 + 808) = 1;
  v36 = (*(**(v35 + 784) + 16))(*(v35 + 784));
  if ((v36 & 0x8000000000000000) != 0)
  {
    if (-v36 % 0x3E8uLL <= 0x1F4)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    v37 = v38 - -v36 / 0x3E8uLL;
  }

  else
  {
    v37 = v36 / 0x3E8;
    if (v36 % 0x3E8 > 0x1F3)
    {
      ++v37;
    }
  }

  *(v35 + 816) = v37;
  *(v35 + 824) = 500;
  v39 = *(this + 125);
  if (*(v39 + 888) != -1)
  {
    webrtc::StatsCounter::TryProcess((v39 + 832));
  }

  *(v39 + 896) = 1;
  v40 = (*(**(v39 + 872) + 16))(*(v39 + 872));
  if ((v40 & 0x8000000000000000) != 0)
  {
    if (-v40 % 0x3E8uLL <= 0x1F4)
    {
      v42 = 0;
    }

    else
    {
      v42 = -1;
    }

    v41 = v42 - -v40 / 0x3E8uLL;
  }

  else
  {
    v41 = v40 / 0x3E8;
    if (v40 % 0x3E8 > 0x1F3)
    {
      ++v41;
    }
  }

  *(v39 + 904) = v41;
  *(v39 + 912) = 500;
  v43 = *(this + 125);
  if (*(v43 + 976) != -1)
  {
    webrtc::StatsCounter::TryProcess((v43 + 920));
  }

  *(v43 + 984) = 1;
  v44 = (*(**(v43 + 960) + 16))(*(v43 + 960));
  if ((v44 & 0x8000000000000000) != 0)
  {
    if (-v44 % 0x3E8uLL <= 0x1F4)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    v45 = v46 - -v44 / 0x3E8uLL;
  }

  else
  {
    v45 = v44 / 0x3E8;
    if (v44 % 0x3E8 > 0x1F3)
    {
      ++v45;
    }
  }

  *(v43 + 992) = v45;
  *(v43 + 1000) = 500;
  v47 = *(this + 125);
  v48 = v47[128];
  if (v48 != -1)
  {
    v47[129] += v8 - v48;
    v47[128] = -1;
  }

  v49 = v47[130];
  if (v49 != -1)
  {
    v47[131] += v8 - v49;
    v47[130] = -1;
    v22 = (this + 392);

    return pthread_mutex_unlock(v22);
  }

LABEL_41:
  v22 = (this + 392);

  return pthread_mutex_unlock(v22);
}

uint64_t webrtc::SendStatisticsProxy::GetStats@<X0>(webrtc::SendStatisticsProxy *this@<X0>, std::string *a2@<X8>)
{
  pthread_mutex_lock((this + 392));
  v3 = (*(**(this + 6) + 16))(*(this + 6));
  v4 = *(this + 79);
  v5 = this + 640;
  if (v4 != this + 640)
  {
    v6 = (this + 872);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
LABEL_10:
        operator new();
      }

      v8 = *(v4 + 8);
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v7 + 32);
          if (v8 >= v10)
          {
            break;
          }

          v7 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = v9[1];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v9[5], v11 == 0x8000000000000000) || v3 != 0x8000000000000000 && v11 != 0x7FFFFFFFFFFFFFFFLL && v3 - v11 >= 5000000)
      {
        *(v4 + 15) = 0;
        *(v4 + 16) = 0;
      }

      v12 = *(v4 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v4 + 2);
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
    }

    while (v13 != v5);
  }

  *(this + 63) = webrtc::RateTracker::ComputeRateForInterval((*(this + 125) + 240), *(*(this + 125) + 256) * *(*(this + 125) + 248));
  *(this + 136) = *(*(this + 125) + 272);
  *(this + 656) = *(this + 114) != 0;
  *(this + 128) = llround(webrtc::RateTracker::ComputeRateForInterval((this + 800), *(this + 102) * *(this + 101)));
  *(this + 144) = vcvtd_n_s64_f64(webrtc::RateTracker::ComputeRateForInterval((this + 736), *(this + 94) * *(this + 93)), 3uLL);
  webrtc::QualityLimitationReasonTracker::DurationsMs((this + 688), &v30);
  v15 = this + 600;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 592, *(this + 75));
  v16 = v31;
  *(this + 74) = v30;
  *(this + 75) = v16;
  v17 = v32;
  *(this + 76) = v32;
  if (v17)
  {
    v16[2] = v15;
    v30 = &v31;
    v31 = 0;
    v32 = 0;
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v30, 0);
    v18 = *(this + 79);
    if (v18 == v5)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(this + 74) = v15;
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v30, v16);
    v18 = *(this + 79);
    if (v18 == v5)
    {
      goto LABEL_45;
    }
  }

  v19 = *(this + 109);
  if (v19)
  {
    v20 = (this + 872);
LABEL_29:
    v21 = *(v18 + 8);
    v22 = (this + 872);
    do
    {
      v23 = *(v19 + 8);
      v24 = v23 >= v21;
      v25 = v23 < v21;
      if (v24)
      {
        v22 = v19;
      }

      v19 = *&v19[8 * v25];
    }

    while (v19);
    if (v22 != v20 && v21 >= *(v22 + 8))
    {
      *(v18 + 39) = webrtc::RateTracker::ComputeRateForInterval((v22 + 6), v22[8] * v22[7]);
    }

    while (1)
    {
      v26 = *(v18 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v18 + 2);
          v14 = *v27 == v18;
          v18 = v27;
        }

        while (!v14);
      }

      if (v27 == v5)
      {
        break;
      }

      v19 = *v20;
      v18 = v27;
      if (*v20)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_45:
  webrtc::VideoSendStream::Stats::Stats(a2, (this + 472));
  return pthread_mutex_unlock((this + 392));
}

_DWORD *webrtc::SendStatisticsProxy::GetStatsEntry(webrtc::SendStatisticsProxy *this, unsigned int a2)
{
  v3 = *(this + 80);
  if (v3)
  {
    v4 = (this + 640);
    v5 = *(this + 80);
    do
    {
      v6 = v5[8];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v4 = v5;
      }

      v5 = *&v5[2 * v8];
    }

    while (v5);
    if (v4 != (this + 640) && v4[8] <= a2)
    {
      return v4 + 10;
    }
  }

  v10 = *(this + 10);
  v9 = *(this + 11);
  if (v10 == v9)
  {
LABEL_13:
    v10 = *(this + 11);
  }

  else
  {
    v11 = *(this + 10);
    while (*v11 != a2)
    {
      ++v11;
      ++v10;
      if (v11 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  if (*(this + 70) == -1)
  {
    v12 = 0;
    v14 = *(this + 39);
    v13 = *(this + 40);
    if (v14 == v13)
    {
LABEL_21:
      v14 = v13;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *(this + 71) == a2;
    v14 = *(this + 39);
    v13 = *(this + 40);
    if (v14 == v13)
    {
      goto LABEL_21;
    }
  }

  v15 = v14;
  while (*v15 != a2)
  {
    ++v15;
    ++v14;
    if (v15 == v13)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v10 == v9 && !v12 && v14 == v13)
  {
    return 0;
  }

  if (!v3)
  {
LABEL_31:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v3;
      v18 = *(v3 + 8);
      if (v18 <= a2)
      {
        break;
      }

      v3 = *v17;
      if (!*v17)
      {
        goto LABEL_31;
      }
    }

    if (v18 >= a2)
    {
      break;
    }

    v3 = v17[1];
    if (!v3)
    {
      goto LABEL_31;
    }
  }

  result = v17 + 5;
  if (v10 != v9)
  {
    *result = 0;
    return result;
  }

  if (v14 != v13)
  {
    *result = 1;
LABEL_36:
    v20 = *(this + 39);
    v19 = *(this + 40);
    v21 = v19 - v20;
    if (v19 != v20)
    {
      v22 = 0;
      v23 = *(this + 10);
      v24 = v21 >> 2;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      while (*(v20 + 4 * v22) != a2)
      {
        if (v24 == ++v22)
        {
          goto LABEL_41;
        }
      }

      if (v22 < (*(this + 11) - v23) >> 2)
      {
        v25 = *(v23 + 4 * v22);
        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_41:
    v25 = 0;
    goto LABEL_52;
  }

  if (v12)
  {
    *result = 2;
LABEL_48:
    v26 = *(this + 36);
    if (*(this + 37) == v26)
    {
LABEL_53:
      __break(1u);
      return result;
    }

    v25 = *v26;
LABEL_52:
    *(v17 + 11) = v25;
    *(v17 + 48) = 1;
    return result;
  }

  if (*result == 2)
  {
    goto LABEL_48;
  }

  if (*result == 1)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t webrtc::SendStatisticsProxy::OnSetEncoderTargetRate(webrtc::SendStatisticsProxy *this, int a2)
{
  pthread_mutex_lock((this + 392));
  if (a2 || *(*(this + 125) + 1080) != -1)
  {
    v6 = (*(**(this + 6) + 16))(*(this + 6));
    v7 = v6 / 0x3E8uLL;
    if (v6 % 0x3E8uLL > 0x1F3)
    {
      ++v7;
    }

    if (-v6 % 0x3E8uLL <= 0x1F4)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 < 0)
    {
      v7 = v8 - -v6 / 0x3E8uLL;
    }

    v9 = *(this + 125);
    v10 = *(v9 + 1080);
    if (v10 != -1)
    {
      v11 = *(this + 143);
      v12 = v7 - v10;
      if (!v11)
      {
        *(v9 + 1056) += v12;
      }

      *(v9 + 1064) += v12;
      if (*(v9 + 1076) == 1)
      {
        ++*(v9 + 1072);
      }

      *(v9 + 1076) = (a2 == 0) ^ (v11 == 0);
    }

    *(v9 + 1080) = v7;
    *(this + 143) = a2;
    v4 = (this + 392);
  }

  else
  {
    v4 = (this + 392);
  }

  return pthread_mutex_unlock(v4);
}

uint64_t webrtc::SendStatisticsProxy::OnMinPixelLimitReached(webrtc::SendStatisticsProxy *this)
{
  pthread_mutex_lock((this + 392));
  *(*(this + 125) + 1145) = 1;

  return pthread_mutex_unlock((this + 392));
}

void webrtc::SendStatisticsProxy::OnSendEncodedImage(webrtc::SendStatisticsProxy *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  if ((*(a2 + 156) & 0x100000000) != 0)
  {
    v6 = *(a2 + 156);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_lock((this + 392));
  ++*(this + 131);
  v7 = this + 800;
  v8 = webrtc::RateTracker::ComputeRateForInterval((this + 800), *(this + 102) * *(this + 101));
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  *(this + 67) = (round(*(this + 143) / (v8 * 8.0)) + *(this + 67));
  if (!a3)
  {
LABEL_79:
    v33 = v6;
    v34 = *(this + 10);
    if (v6 < ((*(this + 11) - v34) >> 2))
    {
      goto LABEL_80;
    }

LABEL_254:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v130, v131, v132, v133, v134, v135, v136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/send_statistics_proxy.cc");
    }

    goto LABEL_256;
  }

  v9 = *(a2 + 1) * *a2;
  if (*(this + 388) == 1)
  {
    v10 = *(this + 125);
    if (*(v10 + 1144) == 1 && (*(this + 628) & 1) == 0)
    {
      if (!v6 && *a3 == 1 && *(a3 + 9) - 255 <= 0xFFFFFF01)
      {
        if (*(this + 496) != 1)
        {
          goto LABEL_23;
        }

        v11 = this + 472;
        v12 = *(this + 495);
        if (v12 < 0)
        {
          if (*(this + 60) != 6)
          {
            goto LABEL_23;
          }

          v11 = *v11;
        }

        else if (v12 != 6)
        {
          goto LABEL_23;
        }

        v13 = *v11;
        v14 = *(v11 + 2);
        v15 = v13 == 1986161004 && v14 == 30832;
        if (!v15)
        {
LABEL_23:
          if (*(this + 96) >= v9 || *(v10 + 1145) == 1)
          {
            *(this + 628) = 1;
          }

          goto LABEL_27;
        }
      }

      *(v10 + 1144) = 0;
    }
  }

LABEL_27:
  if (*(this + 380) != 1)
  {
    goto LABEL_79;
  }

  v16 = *(this + 125);
  if (*(v16 + 1104) != 1)
  {
    goto LABEL_79;
  }

  if (v6 || *a3 != 1 || *(a3 + 9) - 255 >= 0xFFFFFF02)
  {
LABEL_78:
    *(v16 + 1104) = 0;
    goto LABEL_79;
  }

  v17 = (*(**(this + 6) + 16))(*(this + 6));
  v18 = v17 / 0x3E8uLL;
  if (v17 % 0x3E8uLL > 0x1F3)
  {
    ++v18;
  }

  if (-v17 % 0x3E8uLL <= 0x1F4)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  if (v17 < 0)
  {
    v20 = v19 - -v17 / 0x3E8uLL;
  }

  else
  {
    v20 = v18;
  }

  if (*(this + 992) != 1)
  {
    LOBYTE(v24) = *(v16 + 1105);
    goto LABEL_248;
  }

  v21 = (this + 944);
  v22 = *(this + 967);
  if (v22 < 0)
  {
    if (*(this + 119) != 6)
    {
LABEL_53:
      v28 = 0;
      goto LABEL_54;
    }

    v23 = *v21;
  }

  else
  {
    v23 = this + 944;
    if (v22 != 6)
    {
      goto LABEL_53;
    }
  }

  v25 = *v23;
  v26 = *(v23 + 2);
  v28 = v25 == 1986161004 && v26 == 30832;
LABEL_54:
  v29 = *(this + 991);
  if (v29 < 0)
  {
    v31 = *(this + 121);
    v24 = *(this + 122) == 6 && *v31 == 1986161004 && v31[2] == 30832;
    operator delete(v31);
    LOBYTE(v22) = *(this + 967);
  }

  else
  {
    v24 = v29 == 6 && *(this + 242) == 1986161004 && *(this + 486) == 30832;
  }

  if ((v22 & 0x80) != 0)
  {
    operator delete(*v21);
  }

  *(this + 992) = 0;
  v7 = this + 800;
  if (((v24 | v28) & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v24)
  {
    if ((*(this + 380) & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (*(this + 94) < v9)
    {
      goto LABEL_78;
    }
  }

  *(this + 628) = 1;
  ++*(v16 + 1108);
LABEL_248:
  if (*(v16 + 1128) == 1)
  {
    v128 = v20 - *(v16 + 1120);
    if (v128 < *(v16 + 1136))
    {
      v129 = *(this + 125);
      if (*(v16 + 1105) == 1)
      {
        *(v129 + 1088) += v128;
      }

      *(v129 + 1096) += v128;
      *(v16 + 1112) += v128;
    }
  }

  *(v16 + 1105) = v24 & 1;
  *(v16 + 1120) = v20;
  *(v16 + 1128) = 1;
  v33 = v6;
  v34 = *(this + 10);
  if (v6 >= ((*(this + 11) - v34) >> 2))
  {
    goto LABEL_254;
  }

LABEL_80:
  v35 = *(v34 + 4 * v33);
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(this, v35);
  if (StatsEntry)
  {
    v37 = StatsEntry;
    v137 = v7;
    v38 = *(this + 109);
    if (!v38)
    {
LABEL_87:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v39 = v38;
        v40 = *(v38 + 8);
        if (v35 >= v40)
        {
          break;
        }

        v38 = *v39;
        if (!*v39)
        {
          goto LABEL_87;
        }
      }

      if (v40 >= v35)
      {
        break;
      }

      v38 = v39[1];
      if (!v38)
      {
        goto LABEL_87;
      }
    }

    ++StatsEntry[70];
    *(StatsEntry + 38) += *(a2 + 7) - *(a2 + 6);
    if (a3)
    {
      *(StatsEntry + 162) = *(a3 + 996);
      v41 = *(a3 + 1632);
      if (!StatsEntry[5])
      {
        goto LABEL_93;
      }
    }

    else
    {
      *(StatsEntry + 162) = 0;
      v41 = 1;
      if (!StatsEntry[5])
      {
        goto LABEL_93;
      }
    }

    if (!((StatsEntry[6] == 0) | v41 & 1))
    {
      v138 = v41;
      v42 = *(this + 125);
      if (*(a2 + 6) != 3)
      {
LABEL_94:
        ++v42[15];
        v43 = *(a2 + 9);
        if (v43 == -1)
        {
          goto LABEL_141;
        }

LABEL_98:
        if (*(v37 + 296) == 1)
        {
          *(v37 + 36) += v43;
          if (!a3)
          {
            goto LABEL_141;
          }
        }

        else
        {
          *(v37 + 296) = 1;
          *(v37 + 36) = v43;
          if (!a3)
          {
            goto LABEL_141;
          }
        }

        v45 = *a3;
        if (*a3 == 4)
        {
          if (*(this + 11) - *(this + 10) == 4)
          {
            v56 = -1;
          }

          else
          {
            v56 = v6;
          }

          v57 = v42[180];
          if (!v57)
          {
LABEL_138:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v58 = v57;
              v59 = *(v57 + 32);
              if (v56 >= v59)
              {
                break;
              }

              v57 = *v58;
              if (!*v58)
              {
                goto LABEL_138;
              }
            }

            if (v59 >= v56)
            {
              break;
            }

            v57 = v58[1];
            if (!v57)
            {
              goto LABEL_138;
            }
          }

          v58[9] += v43;
          v50 = v58 + 10;
        }

        else if (v45 == 2)
        {
          v51 = *(a2 + 156);
          if ((v51 & 0x100000000) == 0)
          {
            LODWORD(v51) = -1;
          }

          if ((*(a2 + 23) & 0x100000000) != 0)
          {
            v52 = *(a2 + 23);
          }

          else
          {
            v52 = v51;
          }

          v53 = v42[180];
          if (!v53)
          {
LABEL_127:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v54 = v53;
              v55 = *(v53 + 32);
              if (v52 >= v55)
              {
                break;
              }

              v53 = *v54;
              if (!*v54)
              {
                goto LABEL_127;
              }
            }

            if (v55 >= v52)
            {
              break;
            }

            v53 = v54[1];
            if (!v53)
            {
              goto LABEL_127;
            }
          }

          v54[7] += v43;
          v50 = v54 + 8;
        }

        else
        {
          if (v45 != 1)
          {
            goto LABEL_141;
          }

          if (*(this + 11) - *(this + 10) == 4)
          {
            v46 = -1;
          }

          else
          {
            v46 = v6;
          }

          v47 = v42[180];
          if (!v47)
          {
LABEL_114:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v48 = v47;
              v49 = *(v47 + 32);
              if (v46 >= v49)
              {
                break;
              }

              v47 = *v48;
              if (!*v48)
              {
                goto LABEL_114;
              }
            }

            if (v49 >= v46)
            {
              break;
            }

            v47 = v48[1];
            if (!v47)
            {
              goto LABEL_114;
            }
          }

          v48[5] += v43;
          v50 = v48 + 6;
        }

        ++*v50;
LABEL_141:
        if ((*(a2 + 40) & 2) != 0)
        {
          ++v37[80];
          if (*(this + 896))
          {
            v60 = *(a2 + 2);
            if (*(this + 111) >= v60)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v60 = *(a2 + 2);
          }

          *(this + 111) = v60;
          *(this + 896) = 1;
          ++*(this + 166);
        }

LABEL_147:
        v61 = *(a2 + 18);
        v62 = (*(*(this + 92) + 16))(this + 736);
        if (*(this + 98) == -1)
        {
          v63 = (*(*(this + 92) + 16))(this + 736);
          *(this + 99) = v63;
          *(this + 98) = v63;
          *(this + 97) = 0;
          **(this + 95) = 0;
        }

        v64 = 0;
        v65 = *(this + 94);
        while (1)
        {
          v66 = *(this + 98);
          v67 = *(this + 93);
          if (v67 + v66 > v62)
          {
            break;
          }

          *(this + 98) = v67 + v66;
          v68 = (*(this + 97) + 1) % (v65 + 1);
          *(this + 97) = v68;
          v69 = *(this + 95);
          *(v69 + 8 * v68) = 0;
          if (++v64 > v65)
          {
            v70 = v6;
            v67 = *(this + 93);
            v66 = *(this + 98);
            goto LABEL_154;
          }
        }

        v70 = v6;
        v69 = *(this + 95);
        v68 = *(this + 97);
LABEL_154:
        *(this + 98) = v66 + (v62 - v66) / v67 * v67;
        *(v69 + 8 * v68) += v61;
        *(this + 96) += v61;
        v71 = *(this + 125);
        v72 = (*(**(v71 + 24) + 16))(*(v71 + 24));
        v73 = v72 / 0x3E8uLL;
        if (v72 % 0x3E8uLL > 0x1F3)
        {
          ++v73;
        }

        if (-v72 % 0x3E8uLL <= 0x1F4)
        {
          v74 = 0;
        }

        else
        {
          v74 = -1;
        }

        if (v72 < 0)
        {
          v73 = v74 - -v72 / 0x3E8uLL;
        }

        v139 = v73;
        v75 = *(v71 + 1416);
        if (v75)
        {
          v140 = vdupq_n_s64(1uLL);
          while (1)
          {
            v76 = *(v71 + 1400);
            if (*(v76 + 40) > (v139 - 800))
            {
              break;
            }

            v77.i64[1] = v140.i64[1];
            v78.i64[1] = v140.i64[1];
            v79 = *(v76 + 48);
            v80 = *(v76 + 52);
            v78.i64[0] = v79;
            v77.i64[0] = v80;
            v81 = vaddq_s64(*(v71 + 80), v77);
            *(v71 + 64) = vaddq_s64(*(v71 + 64), v78);
            *(v71 + 80) = v81;
            v82 = *(v71 + 1384);
            if (v82 >= 2)
            {
              v83 = *(v76 + 56);
              if (v82 > v83)
              {
                v84 = v82 + ~v83;
                v85 = (v71 + 184);
                if (v84 >= 1)
                {
                  v85 = (v71 + 184);
                  if (*(v71 + 1392) > (v80 * v79))
                  {
                    *(v71 + 176) = vaddq_s64(*(v71 + 176), vdupq_n_s64(1uLL));
                    *(v71 + 192) += v84;
                    v85 = (v71 + 200);
                  }
                }

                ++*v85;
              }
            }

            v86 = *(v76 + 8);
            v87 = v76;
            if (v86)
            {
              do
              {
                v88 = v86;
                v86 = *v86;
              }

              while (v86);
            }

            else
            {
              do
              {
                v88 = v87[2];
                v15 = *v88 == v87;
                v87 = v88;
              }

              while (!v15);
            }

            *(v71 + 1400) = v88;
            *(v71 + 1416) = v75 - 1;
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(v71 + 1408), v76);
            operator delete(v76);
            v75 = *(v71 + 1416);
            if (!v75)
            {
              goto LABEL_180;
            }
          }

          if (v75 > 0x96 || (*(a2 + 38) - *(v76 + 32)) >= 0xDBBA1)
          {
            std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v71 + 1408));
            *(v71 + 1400) = v71 + 1408;
            *(v71 + 1408) = 0u;
          }
        }

LABEL_180:
        v89 = *(a2 + 38);
        v90 = *(v71 + 1408);
        if (!v90)
        {
LABEL_226:
          operator new();
        }

        v91 = (v71 + 1408);
        v92 = *(v71 + 1408);
        do
        {
          v93 = v92[8];
          v94 = v89 - v93;
          v96 = v89 != v93 && v94 >= 0;
          v97 = v89 > v93;
          if (v94 != 0x80000000)
          {
            v97 = v96;
          }

          v98 = !v97;
          if (v97)
          {
            v99 = 2;
          }

          else
          {
            v99 = 0;
          }

          if (v98)
          {
            v91 = v92;
          }

          v92 = *&v92[v99];
        }

        while (v92);
        if (v91 != (v71 + 1408))
        {
          v100 = v91[8];
          if (v100 - v89 == 0x80000000)
          {
            if (v100 > v89)
            {
              goto LABEL_206;
            }
          }

          else if (v100 != v89 && ((v100 - v89) & 0x80000000) == 0)
          {
            goto LABEL_206;
          }

          v103 = *a2;
          v104 = v91[13];
          if (v91[12] > *a2)
          {
            v103 = v91[12];
          }

          v91[12] = v103;
          v105 = *(a2 + 1);
          if (v104 > v105)
          {
            v105 = v104;
          }

          v106 = v91[14];
          if (v106 <= v70)
          {
            v106 = v70;
          }

          v91[13] = v105;
          v91[14] = v106;
          if (v138)
          {
LABEL_235:
            v115 = (v39[6][2])(v39 + 6);
            if (v39[12] == -1)
            {
              v116 = (v39[6][2])(v39 + 6);
              v39[12] = v116;
              v39[13] = v116;
              v39[11] = 0;
              *v39[9] = 0;
            }

            v117 = 0;
            v118 = v39[8];
            while (1)
            {
              v119 = v39[12];
              v120 = v39[7];
              if (v119 + v120 > v115)
              {
                break;
              }

              v121 = (v39[11] + 1) % (v118 + 1);
              v39[11] = v121;
              v39[12] = (v119 + v120);
              v122 = v39[9];
              v122[v121] = 0;
              if (++v117 > v118)
              {
                v120 = v39[7];
                v119 = v39[12];
                goto LABEL_242;
              }
            }

            v122 = v39[9];
            v121 = v39[11];
LABEL_242:
            v39[12] = (v119 + (v115 - v119) / v120 * v120);
            ++v122[v121];
            v39[10] = (v39[10] + 1);
          }

LABEL_243:
          if (*(this + 940) == 1)
          {
            v123 = *(this + 233);
            v124 = *(this + 125);
            *(this + 581) |= v123 > 0;
            if (v123 <= 0)
            {
              ++v124[8].i64[1];
            }

            else
            {
              v125 = vdupq_n_s64(1uLL);
              v126 = vaddq_s64(v124[8], v125);
              v125.i64[0] = v123;
              v127 = vaddq_s64(v124[9], v125);
              v124[8] = v126;
              v124[9] = v127;
            }
          }

          goto LABEL_256;
        }

        while (1)
        {
LABEL_206:
          v101 = v90;
          v102 = *(v90 + 32);
          if (v102 - v89 == 0x80000000)
          {
            if (v102 <= v89)
            {
              goto LABEL_211;
            }

LABEL_205:
            v90 = *v101;
            if (!*v101)
            {
              goto LABEL_226;
            }
          }

          else
          {
            if (v102 != v89 && ((v102 - v89) & 0x80000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_211:
            if (v89 - v102 == 0x80000000)
            {
              if (v102 >= v89)
              {
                goto LABEL_227;
              }
            }

            else if (v102 == v89 || ((v89 - v102) & 0x80000000) != 0)
            {
LABEL_227:
              webrtc::StatsCounter::Add((v71 + 392), 1);
              v107 = (*(*(this + 100) + 16))(v137);
              if (*(this + 106) == -1)
              {
                v108 = (*(*(this + 100) + 16))(v137);
                *(this + 107) = v108;
                *(this + 106) = v108;
                *(this + 105) = 0;
                **(this + 103) = 0;
              }

              v109 = 0;
              v110 = *(this + 102);
              while (1)
              {
                v111 = *(this + 106);
                v112 = *(this + 101);
                if (v112 + v111 > v107)
                {
                  break;
                }

                *(this + 106) = v112 + v111;
                v113 = (*(this + 105) + 1) % (v110 + 1);
                *(this + 105) = v113;
                v114 = *(this + 103);
                *(v114 + 8 * v113) = 0;
                if (++v109 > v110)
                {
                  v112 = *(this + 101);
                  v111 = *(this + 106);
                  goto LABEL_234;
                }
              }

              v114 = *(this + 103);
              v113 = *(this + 105);
LABEL_234:
              *(this + 106) = v111 + (v107 - v111) / v112 * v112;
              ++*(v114 + 8 * v113);
              ++*(this + 104);
              if (v138)
              {
                goto LABEL_235;
              }

              goto LABEL_243;
            }

            v90 = v101[1];
            if (!v90)
            {
              goto LABEL_226;
            }
          }
        }
      }

LABEL_97:
      v44 = v42[15] + 1;
      ++v42[14];
      v42[15] = v44;
      v43 = *(a2 + 9);
      if (v43 == -1)
      {
        goto LABEL_141;
      }

      goto LABEL_98;
    }

LABEL_93:
    *(StatsEntry + 5) = *a2;
    v39[5] = (*(**(this + 6) + 16))(*(this + 6));
    v138 = v41;
    v42 = *(this + 125);
    if (*(a2 + 6) != 3)
    {
      goto LABEL_94;
    }

    goto LABEL_97;
  }

LABEL_256:

  pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnEncoderImplementationChanged(uint64_t a1, const std::string::value_type **a2, unsigned __int8 a3)
{
  result = pthread_mutex_lock((a1 + 392));
  v7 = (a1 + 472);
  if (*(a1 + 496) == 1)
  {
    if (*(a1 + 495) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 472), *(a1 + 480));
      if (*(a2 + 23) < 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v7;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 488);
      if (*(a2 + 23) < 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 7;
    if (&__p <= "unknown" && __p.__r_.__value_.__r.__words + 7 > "unknown")
    {
      __break(1u);
      return result;
    }

    strcpy(&__p, "unknown");
    if (*(a2 + 23) < 0)
    {
LABEL_14:
      std::string::__init_copy_ctor_external(&v22, *a2, a2[1]);
      v9 = (a1 + 944);
      if (*(a1 + 992) != 1)
      {
        goto LABEL_15;
      }

LABEL_9:
      if (*(a1 + 967) < 0)
      {
        operator delete(*v9);
      }

      *v9 = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      v10 = (a1 + 968);
      if (*(a1 + 991) < 0)
      {
        operator delete(*v10);
        v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *v10 = *&v22.__r_.__value_.__l.__data_;
        *(a1 + 984) = *(&v22.__r_.__value_.__l + 2);
        *(&v22.__r_.__value_.__s + 23) = 0;
        v22.__r_.__value_.__s.__data_[0] = 0;
        if (v14 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *v10 = *&v22.__r_.__value_.__l.__data_;
        *(a1 + 984) = *(&v22.__r_.__value_.__l + 2);
      }

      goto LABEL_16;
    }
  }

  v8 = *a2;
  v22.__r_.__value_.__r.__words[2] = a2[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v9 = (a1 + 944);
  if (*(a1 + 992) == 1)
  {
    goto LABEL_9;
  }

LABEL_15:
  *v9 = __p;
  *(a1 + 968) = v22;
  *(a1 + 992) = 1;
LABEL_16:
  if (*(a1 + 496) == 1)
  {
    if (v7 != a2)
    {
      v11 = *(a2 + 23);
      if (*(a1 + 495) < 0)
      {
        if (v11 >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        if (v11 >= 0)
        {
          v20 = *(a2 + 23);
        }

        else
        {
          v20 = a2[1];
        }

        std::string::__assign_no_alias<false>((a1 + 472), v19, v20);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 472), *a2, a2[1]);
      }

      else
      {
        v12 = *a2;
        *(a1 + 488) = a2[2];
        *v7 = v12;
      }
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 472), *a2, a2[1]);
    }

    else
    {
      v13 = *a2;
      *(a1 + 488) = a2[2];
      *v7 = v13;
    }

    *(a1 + 496) = 1;
  }

  *(a1 + 668) = a3 | 0x100;
  v15 = *(a1 + 632);
  if (v15 != (a1 + 640))
  {
    do
    {
      if (*(v15 + 365) == 1)
      {
        *(v15 + 365) = 0;
      }

      v16 = v15[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v18 = *v17 == v15;
          v15 = v17;
        }

        while (!v18);
      }

      v15 = v17;
    }

    while (v17 != (a1 + 640));
  }

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t webrtc::SendStatisticsProxy::GetInputFrameRate(webrtc::SendStatisticsProxy *this)
{
  pthread_mutex_lock((this + 392));
  LODWORD(v1) = llround(webrtc::RateTracker::ComputeRateForInterval((*(this + 125) + 240), *(*(this + 125) + 256) * *(*(this + 125) + 248)));
  pthread_mutex_unlock((this + 392));
  return v1;
}

uint64_t webrtc::SendStatisticsProxy::OnIncomingFrame(webrtc::SendStatisticsProxy *this, int a2, int a3)
{
  pthread_mutex_lock((this + 392));
  v6 = *(this + 125);
  v7 = (*(*(v6 + 240) + 16))(v6 + 240);
  if (*(v6 + 288) == -1)
  {
    v8 = (*(*(v6 + 240) + 16))(v6 + 240);
    *(v6 + 288) = v8;
    *(v6 + 296) = v8;
    *(v6 + 280) = 0;
    **(v6 + 264) = 0;
  }

  v9 = 0;
  v10 = *(v6 + 256);
  while (1)
  {
    v11 = *(v6 + 288);
    v12 = *(v6 + 248);
    if (v12 + v11 > v7)
    {
      break;
    }

    v13 = (*(v6 + 280) + 1) % (v10 + 1);
    *(v6 + 280) = v13;
    *(v6 + 288) = v12 + v11;
    v14 = *(v6 + 264);
    *(v14 + 8 * v13) = 0;
    if (++v9 > v10)
    {
      v12 = *(v6 + 248);
      v11 = *(v6 + 288);
      goto LABEL_8;
    }
  }

  v14 = *(v6 + 264);
  v13 = *(v6 + 280);
LABEL_8:
  *(v6 + 288) = v11 + (v7 - v11) / v12 * v12;
  ++*(v14 + 8 * v13);
  ++*(v6 + 272);
  webrtc::StatsCounter::Add((*(this + 125) + 304), 1);
  v15 = vdupq_n_s64(1uLL);
  v16.i64[1] = v15.i64[1];
  v16.i64[0] = a2;
  v17 = *(this + 125);
  v15.i64[0] = a3;
  v18 = vaddq_s64(v17[3], v15);
  v17[2] = vaddq_s64(v17[2], v16);
  v17[3] = v18;
  if (*(this + 928) == 1)
  {
    if (*(this + 582) == 1)
    {
      ++v17[10].i64[0];
    }

    ++v17[10].i64[1];
  }

  if (!*(this + 104))
  {
    v19 = (*(*(this + 100) + 16))(this + 800);
    if (*(this + 106) == -1)
    {
      v20 = (*(*(this + 100) + 16))(this + 800);
      *(this + 107) = v20;
      *(this + 106) = v20;
      *(this + 105) = 0;
      **(this + 103) = 0;
    }

    v21 = 0;
    v22 = *(this + 102);
    while (1)
    {
      v23 = *(this + 106);
      v24 = *(this + 101);
      if (v24 + v23 > v19)
      {
        break;
      }

      *(this + 106) = v24 + v23;
      v25 = (*(this + 105) + 1) % (v22 + 1);
      *(this + 105) = v25;
      *(*(this + 103) + 8 * v25) = 0;
      if (++v21 > v22)
      {
        v24 = *(this + 101);
        v23 = *(this + 106);
        break;
      }
    }

    *(this + 106) = v23 + (v19 - v23) / v24 * v24;
  }

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnFrameDropped(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 392));
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        ++*(a1 + 568);
        v4 = (a1 + 392);

        break;
      case 4:
        ++*(a1 + 560);
        v4 = (a1 + 392);

        break;
      case 5:
        ++*(a1 + 564);
        v4 = (a1 + 392);

        break;
      default:
LABEL_6:
        v4 = (a1 + 392);

        return pthread_mutex_unlock(v4);
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        ++*(a1 + 556);
      }

      goto LABEL_6;
    }

    ++*(a1 + 552);
    v4 = (a1 + 392);
  }

  else
  {
    ++*(a1 + 548);
    v4 = (a1 + 392);
  }

  return pthread_mutex_unlock(v4);
}

uint64_t webrtc::SendStatisticsProxy::ClearAdaptationStats(webrtc::SendStatisticsProxy *this)
{
  pthread_mutex_lock((this + 392));
  *(this + 115) = 0;
  *(this + 932) = 0;
  webrtc::SendStatisticsProxy::UpdateAdaptationStats(this);

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::UpdateAdaptationStats(webrtc::SendStatisticsProxy *this)
{
  v2 = *(this + 929);
  v3 = *(this + 231);
  if (!v2)
  {
    v3 = 0;
  }

  if (*(this + 230) - 1 < 0x7FFFFFFF)
  {
    v4 = *(this + 928);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 - 1;
  if ((v3 - 1) < 0x7FFFFFFF)
  {
    v6 = *(this + 929);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (*(this + 233) - 1 < 0x7FFFFFFF)
  {
    v8 = *(this + 940);
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 234) - 1 < 0x7FFFFFFF)
  {
    v9 = *(this + 941);
  }

  else
  {
    v9 = 0;
  }

  if ((v8 & 1) != 0 || (v9 & 1) != 0 || (*(this + 917) & 1) != 0 || *(this + 918) == 1)
  {
    v10 = this + 688;
    v11 = 2;
  }

  else
  {
    v10 = this + 688;
    v11 = v7 != 0;
  }

  result = webrtc::QualityLimitationReasonTracker::SetReason(v10, v11);
  *(this + 582) = v4;
  if (v5 < 0x7FFFFFFF)
  {
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  *(this + 584) = v13;
  *(this + 581) = v8;
  *(this + 583) = v9;
  if (*(this + 917) == 1)
  {
    v14 = *(this + 114);
    v15 = this + 581;
    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_31;
      }

      v15 = this + 583;
    }

    *v15 = 1;
  }

LABEL_31:
  if (*(this + 918) == 1)
  {
    *(this + 581) = 1;
  }

  *(this + 147) = *(this + 174);
  return result;
}

uint64_t webrtc::SendStatisticsProxy::UpdateAdaptationSettings(uint64_t a1, __int16 a2, __int16 a3)
{
  pthread_mutex_lock((a1 + 392));
  *(a1 + 928) = a2;
  *(a1 + 940) = a3;
  v6 = *(a1 + 1000);
  if (a2 & 0x100) != 0 || (a2)
  {
    if ((*(a1 + 580) & 1) == 0)
    {
      v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v11 = v12 / 0x3E8uLL;
      if (v12 % 0x3E8uLL > 0x1F3)
      {
        ++v11;
      }

      if (-v12 % 0x3E8uLL <= 0x1F4)
      {
        v13 = 0;
      }

      else
      {
        v13 = -1;
      }

      if (v12 < 0)
      {
        v11 = v13 - -v12 / 0x3E8uLL;
      }

      if (*(v6 + 1024) == -1)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v8 = v7 / 0x3E8uLL;
    if (v7 % 0x3E8uLL > 0x1F3)
    {
      ++v8;
    }

    if (-v7 % 0x3E8uLL <= 0x1F4)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    if (v7 < 0)
    {
      v8 = v9 - -v7 / 0x3E8uLL;
    }

    v10 = *(v6 + 1024);
    if (v10 != -1)
    {
      *(v6 + 1032) += v8 - v10;
      v11 = -1;
LABEL_21:
      *(v6 + 1024) = v11;
    }
  }

  v14 = *(a1 + 1000);
  if (*(a1 + 940) & 1) != 0 || (*(a1 + 941))
  {
    if ((*(a1 + 580) & 1) == 0)
    {
      v20 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v19 = v20 / 0x3E8uLL;
      if (v20 % 0x3E8uLL > 0x1F3)
      {
        ++v19;
      }

      if (-v20 % 0x3E8uLL <= 0x1F4)
      {
        v21 = 0;
      }

      else
      {
        v21 = -1;
      }

      if (v20 < 0)
      {
        v19 = v21 - -v20 / 0x3E8uLL;
      }

      if (*(v14 + 1040) == -1)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    v15 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v16 = v15 / 0x3E8uLL;
    if (v15 % 0x3E8uLL > 0x1F3)
    {
      ++v16;
    }

    if (-v15 % 0x3E8uLL <= 0x1F4)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    if (v15 < 0)
    {
      v16 = v17 - -v15 / 0x3E8uLL;
    }

    v18 = *(v14 + 1040);
    if (v18 != -1)
    {
      *(v14 + 1048) += v16 - v18;
      v19 = -1;
LABEL_42:
      *(v14 + 1040) = v19;
    }
  }

  webrtc::SendStatisticsProxy::UpdateAdaptationStats(a1);

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnAdaptationChanged(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  pthread_mutex_lock((a1 + 392));
  v8 = *(a1 + 940);
  v9 = *(a1 + 932);
  *(a1 + 920) = *a3;
  v10 = *a4;
  *(a1 + 932) = *a4;
  if (a2)
  {
    if (a2 == 1)
    {
      ++*(a1 + 620);
    }
  }

  else
  {
    v11 = *(a1 + 1000);
    v12 = *(v11 + 1424);
    if (v12)
    {
      v13 = v8 == 0;
      if (v8)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v9 = 0;
      }

      if (v13)
      {
        v14 = -1;
      }

      if (v9 >= 1 && v14 < v9)
      {
        v16 = *(v11 + 1428);
        if (v12 > v16)
        {
          *(v11 + 1428) = v16 + 1;
        }
      }
    }

    ++*(a1 + 624);
  }

  webrtc::SendStatisticsProxy::UpdateAdaptationStats(a1);

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnBitrateAllocationUpdated(webrtc::SendStatisticsProxy *this, const webrtc::VideoCodec *a2, const webrtc::VideoBitrateAllocation *a3)
{
  v5 = *(a2 + 176);
  v6 = *(a2 + 212);
  v7 = *(a2 + 248);
  v8 = *(a2 + 284);
  v9 = *(a2 + 320);
  v10 = *(a2 + 68);
  v11 = *(a2 + 104);
  v12 = *(a2 + 140);
  if (*(a3 + 8))
  {
    v13 = *(a3 + 1);
  }

  else
  {
    v13 = 0;
  }

  if (*(a3 + 16))
  {
    v14 = *(a3 + 3);
  }

  else
  {
    v14 = 0;
  }

  if (*(a3 + 24))
  {
    v15 = *(a3 + 5);
  }

  else
  {
    v15 = 0;
  }

  if (*(a3 + 32))
  {
    v16 = *(a3 + 7);
  }

  else
  {
    v16 = 0;
  }

  LOBYTE(v61) = v14 + v13 + v15 + v16 != 0;
  if (*(a3 + 40))
  {
    v17 = *(a3 + 9);
  }

  else
  {
    v17 = 0;
  }

  if (*(a3 + 48))
  {
    v18 = *(a3 + 11);
  }

  else
  {
    v18 = 0;
  }

  if (*(a3 + 56))
  {
    v19 = *(a3 + 13);
  }

  else
  {
    v19 = 0;
  }

  if (*(a3 + 64))
  {
    v20 = *(a3 + 15);
  }

  else
  {
    v20 = 0;
  }

  BYTE1(v61) = v18 + v17 + v19 + v20 != 0;
  if (*(a3 + 72))
  {
    v21 = *(a3 + 17);
  }

  else
  {
    v21 = 0;
  }

  if (*(a3 + 80))
  {
    v22 = *(a3 + 19);
  }

  else
  {
    v22 = 0;
  }

  if (*(a3 + 88))
  {
    v23 = *(a3 + 21);
  }

  else
  {
    v23 = 0;
  }

  if (*(a3 + 96))
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = 0;
  }

  BYTE2(v61) = v22 + v21 + v23 + v24 != 0;
  if (*(a3 + 104))
  {
    v25 = *(a3 + 25);
  }

  else
  {
    v25 = 0;
  }

  if (*(a3 + 112))
  {
    v26 = *(a3 + 27);
  }

  else
  {
    v26 = 0;
  }

  if (*(a3 + 120))
  {
    v27 = *(a3 + 29);
  }

  else
  {
    v27 = 0;
  }

  if (*(a3 + 128))
  {
    v28 = *(a3 + 31);
  }

  else
  {
    v28 = 0;
  }

  HIBYTE(v61) = v26 + v25 + v27 + v28 != 0;
  if (*(a3 + 136))
  {
    v29 = *(a3 + 33);
  }

  else
  {
    v29 = 0;
  }

  if (*(a3 + 144))
  {
    v30 = *(a3 + 35);
  }

  else
  {
    v30 = 0;
  }

  if (*(a3 + 152))
  {
    v31 = *(a3 + 37);
  }

  else
  {
    v31 = 0;
  }

  if (*(a3 + 160))
  {
    v32 = *(a3 + 39);
  }

  else
  {
    v32 = 0;
  }

  v62 = v30 + v29 + v31 + v32 != 0;
  pthread_mutex_lock((this + 392));
  *(this + 917) = *(a3 + 164);
  webrtc::SendStatisticsProxy::UpdateAdaptationStats(this);
  v37 = *(this + 79);
  v38 = this + 640;
  if (v37 != this + 640)
  {
    if (*(this + 11) != *(this + 10))
    {
      while (1)
      {
        v39 = *(this + 10);
        v40 = *(this + 11) - v39;
        if (v40)
        {
          break;
        }

LABEL_72:
        if (v37[376])
        {
          v45 = v37 + 376;
LABEL_87:
          *v45 = 0;
        }

LABEL_88:
        v51 = *(v37 + 1);
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = *(v37 + 2);
            v57 = *v52 == v37;
            v37 = v52;
          }

          while (!v57);
        }

        v37 = v52;
        if (v52 == v38)
        {
          goto LABEL_103;
        }
      }

      v41 = 0;
      v42 = v40 >> 2;
      if (v42 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v42;
      }

      v44 = a3 + 32;
      while (*(v39 + 4 * v41) != *(v37 + 8))
      {
        ++v41;
        v44 += 32;
        if (v43 == v41)
        {
          goto LABEL_72;
        }
      }

      if (v41 >= 5)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v33, v34, v35, v36, v41);
        return webrtc::SendStatisticsProxy::OnEncoderInternalScalerUpdate(v59, v60);
      }

      if (*(v44 - 24) == 1)
      {
        v46 = *(v44 - 7);
        if (*(v44 - 16) != 1)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v46 = 0;
        if (*(v44 - 16) != 1)
        {
LABEL_77:
          v47 = 0;
          if (*(v44 - 8) != 1)
          {
            goto LABEL_78;
          }

          goto LABEL_83;
        }
      }

      v47 = *(v44 - 5);
      if (*(v44 - 8) != 1)
      {
LABEL_78:
        v48 = 0;
        if (*v44 != 1)
        {
          goto LABEL_79;
        }

        goto LABEL_84;
      }

LABEL_83:
      v48 = *(v44 - 3);
      if (*v44 != 1)
      {
LABEL_79:
        v49 = 0;
        v45 = v37 + 376;
        if (v37[376])
        {
LABEL_86:
          v50 = (v47 + v46 + v48 + v49);
          *(v37 + 46) = v50;
          if (!v50)
          {
            goto LABEL_87;
          }

          goto LABEL_88;
        }

LABEL_85:
        *v45 = 1;
        goto LABEL_86;
      }

LABEL_84:
      v49 = *(v44 - 1);
      v45 = v37 + 376;
      if (v37[376])
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    do
    {
      if (v37[376] == 1)
      {
        v37[376] = 0;
      }

      v53 = *(v37 + 1);
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = *(v37 + 2);
          v57 = *v54 == v37;
          v37 = v54;
        }

        while (!v57);
      }

      v37 = v54;
    }

    while (v54 != v38);
  }

LABEL_103:
  v55 = v11 + v10 + v12;
  v56 = v6 + v5 + v7 + v8 + v9;
  v57 = v61 == *(this + 228) && v62 == *(this + 916);
  if (!v57)
  {
    if (*(this + 226) == v56 && *(this + 227) == v55)
    {
      ++*(this + 154);
    }

    *(this + 228) = v61;
    *(this + 916) = v62;
  }

  *(this + 226) = v56;
  *(this + 227) = v55;

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnEncoderInternalScalerUpdate(webrtc::SendStatisticsProxy *this, char a2)
{
  pthread_mutex_lock((this + 392));
  *(this + 918) = a2;
  webrtc::SendStatisticsProxy::UpdateAdaptationStats(this);

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::OnInitialQualityResolutionAdaptDown(webrtc::SendStatisticsProxy *this)
{
  pthread_mutex_lock((this + 392));
  ++*(*(this + 125) + 1424);

  return pthread_mutex_unlock((this + 392));
}

uint64_t webrtc::SendStatisticsProxy::RtcpPacketTypesCounterUpdated(uint64_t a1, unsigned int a2, __int128 *a3)
{
  pthread_mutex_lock((a1 + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(a1, a2);
  if (StatsEntry && (v7 = *a3, StatsEntry[48] = *(a3 + 4), *(StatsEntry + 11) = v7, *(*(a1 + 1000) + 1008) == -1))
  {
    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v11 = v10 / 0x3E8uLL;
    if (v10 % 0x3E8uLL > 0x1F3)
    {
      ++v11;
    }

    if (-v10 % 0x3E8uLL <= 0x1F4)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (v10 < 0)
    {
      v11 = v12 - -v10 / 0x3E8uLL;
    }

    *(*(a1 + 1000) + 1008) = v11;
    v8 = (a1 + 392);
  }

  else
  {
    v8 = (a1 + 392);
  }

  return pthread_mutex_unlock(v8);
}

uint64_t non-virtual thunk towebrtc::SendStatisticsProxy::RtcpPacketTypesCounterUpdated(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v6 = (a1 - 16);
  pthread_mutex_lock((a1 + 376));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(v6, a2);
  if (StatsEntry && (v8 = *a3, StatsEntry[48] = *(a3 + 4), *(StatsEntry + 11) = v8, *(*(a1 + 984) + 1008) == -1))
  {
    v11 = (*(**(a1 + 32) + 16))(*(a1 + 32));
    v12 = v11 / 0x3E8uLL;
    if (v11 % 0x3E8uLL > 0x1F3)
    {
      ++v12;
    }

    if (-v11 % 0x3E8uLL <= 0x1F4)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    if (v11 < 0)
    {
      v12 = v13 - -v11 / 0x3E8uLL;
    }

    *(*(a1 + 984) + 1008) = v12;
    v9 = (a1 + 376);
  }

  else
  {
    v9 = (a1 + 376);
  }

  return pthread_mutex_unlock(v9);
}

uint64_t webrtc::SendStatisticsProxy::OnReportBlockDataUpdated(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(a1, *(a2 + 4));
  if (StatsEntry)
  {
    v5 = StatsEntry;
    webrtc::ReportBlockStats::Store((*(a1 + 1000) + 1152), *(a2 + 4), *(a2 + 12), *(a2 + 16));
    v6 = *(v5 + 264);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 16);
    *(v5 + 50) = *a2;
    *(v5 + 62) = v8;
    *(v5 + 58) = v7;
    *(v5 + 54) = v9;
    if ((v6 & 1) == 0)
    {
      *(v5 + 264) = 1;
    }
  }

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t non-virtual thunk towebrtc::SendStatisticsProxy::OnReportBlockDataUpdated(uint64_t a1, uint64_t a2)
{
  v4 = (a1 - 8);
  pthread_mutex_lock((a1 + 384));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(v4, *(a2 + 4));
  if (StatsEntry)
  {
    v6 = StatsEntry;
    webrtc::ReportBlockStats::Store((*(a1 + 992) + 1152), *(a2 + 4), *(a2 + 12), *(a2 + 16));
    v7 = *(v6 + 264);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    v10 = *(a2 + 16);
    *(v6 + 50) = *a2;
    *(v6 + 62) = v9;
    *(v6 + 58) = v8;
    *(v6 + 54) = v10;
    if ((v7 & 1) == 0)
    {
      *(v6 + 264) = 1;
    }
  }

  return pthread_mutex_unlock((a1 + 384));
}

uint64_t webrtc::SendStatisticsProxy::GetDataCounters@<X0>(webrtc::SendStatisticsProxy *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  pthread_mutex_lock((this + 392));
  v6 = *(this + 80);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 640;
  do
  {
    v8 = *(v6 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 640 && *(v7 + 8) <= a2)
  {
    v13 = *(v7 + 168);
    *(a3 + 64) = *(v7 + 152);
    *(a3 + 80) = v13;
    v14 = *(v7 + 200);
    *(a3 + 96) = *(v7 + 184);
    *(a3 + 112) = v14;
    v15 = *(v7 + 104);
    *a3 = *(v7 + 88);
    *(a3 + 16) = v15;
    v16 = *(v7 + 136);
    *(a3 + 32) = *(v7 + 120);
    *(a3 + 48) = v16;
    v11 = (this + 392);
  }

  else
  {
LABEL_9:
    *a3 = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0;
    v11 = (this + 392);
  }

  return pthread_mutex_unlock(v11);
}

uint64_t non-virtual thunk towebrtc::SendStatisticsProxy::GetDataCounters@<X0>(webrtc::SendStatisticsProxy *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  pthread_mutex_lock((this + 368));
  v6 = *(this + 77);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 616;
  do
  {
    v8 = *(v6 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 616 && *(v7 + 8) <= a2)
  {
    v13 = *(v7 + 168);
    *(a3 + 64) = *(v7 + 152);
    *(a3 + 80) = v13;
    v14 = *(v7 + 200);
    *(a3 + 96) = *(v7 + 184);
    *(a3 + 112) = v14;
    v15 = *(v7 + 104);
    *a3 = *(v7 + 88);
    *(a3 + 16) = v15;
    v16 = *(v7 + 136);
    *(a3 + 32) = *(v7 + 120);
    *(a3 + 48) = v16;
    v11 = (this + 368);
  }

  else
  {
LABEL_9:
    *a3 = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0;
    v11 = (this + 368);
  }

  return pthread_mutex_unlock(v11);
}

uint64_t webrtc::SendStatisticsProxy::DataCountersUpdated(uint64_t a1, __int128 *a2, unsigned int a3)
{
  pthread_mutex_lock((a1 + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(a1, a3);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  *(StatsEntry + 5) = a2[2];
  *(StatsEntry + 6) = v9;
  *(StatsEntry + 3) = v7;
  *(StatsEntry + 4) = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  *(StatsEntry + 9) = a2[6];
  *(StatsEntry + 10) = v12;
  *(StatsEntry + 7) = v10;
  *(StatsEntry + 8) = v11;
  v13 = *(a1 + 1000);
  if (v13[127] == -1)
  {
    v14 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v15 = v14 / 0x3E8uLL;
    if (v14 % 0x3E8uLL > 0x1F3)
    {
      ++v15;
    }

    if (-v14 % 0x3E8uLL <= 0x1F4)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 - -v14 / 0x3E8uLL;
    if (v14 >= 0)
    {
      v17 = v15;
    }

    v13 = *(a1 + 1000);
    v13[127] = v17;
    v13[129] = 0;
    if (v13[128] != -1)
    {
      v13[128] = v17;
    }

    v13[131] = 0;
    if (v13[130] != -1)
    {
      v13[130] = v17;
    }
  }

  webrtc::StatsCounter::Set((v13 + 60), *(a2 + 2) + *(a2 + 1) + *(a2 + 3), a3);
  webrtc::StatsCounter::Set(*(a1 + 1000) + 744, *(a2 + 3), a3);
  webrtc::StatsCounter::Set(*(a1 + 1000) + 832, *(a2 + 7) + *(a2 + 6) + *(a2 + 8), a3);
  webrtc::StatsCounter::Set(*(a1 + 1000) + 920, *(a2 + 12) + *(a2 + 11) + *(a2 + 13), a3);
  if (*StatsEntry == 1)
  {
    v19 = *(a1 + 1000) + 656;
    v18 = *(a2 + 2) + *(a2 + 1) + *(a2 + 3);
  }

  else
  {
    if (*StatsEntry)
    {
      goto LABEL_18;
    }

    v18 = *(a2 + 2) - (*(a2 + 7) + *(a2 + 12));
    v19 = *(a1 + 1000) + 568;
  }

  webrtc::StatsCounter::Set(v19, v18, a3);
LABEL_18:

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t webrtc::SendStatisticsProxy::Notify(webrtc::SendStatisticsProxy *this, int a2, int a3, unsigned int a4)
{
  pthread_mutex_lock((this + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(this, a4);
  if (StatsEntry)
  {
    StatsEntry[7] = a2;
    StatsEntry[8] = a3;
  }

  return pthread_mutex_unlock((this + 392));
}

uint64_t non-virtual thunk towebrtc::SendStatisticsProxy::Notify(webrtc::SendStatisticsProxy *this, int a2, int a3, unsigned int a4)
{
  v8 = (this - 32);
  pthread_mutex_lock((this + 360));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(v8, a4);
  if (StatsEntry)
  {
    StatsEntry[7] = a2;
    StatsEntry[8] = a3;
  }

  return pthread_mutex_unlock((this + 360));
}

uint64_t webrtc::SendStatisticsProxy::FrameCountUpdated(uint64_t a1, void *a2, unsigned int a3)
{
  pthread_mutex_lock((a1 + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(a1, a3);
  if (StatsEntry)
  {
    *(StatsEntry + 3) = *a2;
  }

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t non-virtual thunk towebrtc::SendStatisticsProxy::FrameCountUpdated(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = (a1 - 40);
  pthread_mutex_lock((a1 + 352));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(v6, a3);
  if (StatsEntry)
  {
    *(StatsEntry + 3) = *a2;
  }

  return pthread_mutex_unlock((a1 + 352));
}

uint64_t webrtc::SendStatisticsProxy::OnSendPacket(webrtc::SendStatisticsProxy *this, unsigned int a2, Timestamp a3)
{
  v6 = (*(**(this + 6) + 16))(*(this + 6));
  pthread_mutex_lock((this + 392));
  StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry(this, a2);
  if (!StatsEntry)
  {
    goto LABEL_95;
  }

  v8 = StatsEntry;
  v9 = *(this + 109);
  if (!v9)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 32);
      if (v11 <= a2)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_8;
      }
    }

    if (v11 >= a2)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v12 = v6 - a3.var0;
  if (a3.var0 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x8000000000000000)
  {
    v12 = 0x8000000000000000;
  }

  if (a3.var0 == 0x8000000000000000)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  v16 = v10[15];
  v17 = v10[16];
  if (v17 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 32 * (v17 - v16) - 1;
  }

  v19 = v10[18];
  if (v18 == v10[19] + v19)
  {
    v20 = v19 >= 0x100;
    v21 = v19 - 256;
    if (!v20)
    {
      v22 = v10[17];
      v23 = v10[14];
      if (v17 - v16 < (v22 - v23))
      {
        operator new();
      }

      if (v22 == v23)
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 - v23) >> 2;
      }

      if (!(v24 >> 61))
      {
        operator new();
      }

LABEL_125:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v10[18] = v21;
    v76 = *v16;
    v10[15] = (v16 + 8);
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(v10 + 14, &v76);
    v16 = v10[15];
    v17 = v10[16];
  }

  if (v17 == v16)
  {
    goto LABEL_124;
  }

  v25 = v10[19] + v10[18];
  v26 = *&v16[(v25 >> 5) & 0x7FFFFFFFFFFFFF8];
  if (!v26)
  {
    goto LABEL_124;
  }

  v27 = (v26 + 16 * v25);
  *v27 = v6;
  v27[1] = v15;
  v28 = v10[19];
  v29 = v10[20];
  v30 = v28 + 1;
  v31 = 0x8000000000000000;
  if (v15 != 0x8000000000000000 && v29 != 0x8000000000000000)
  {
    v31 = v29 + v15;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  v10[19] = v30;
  v10[20] = v33;
  v34 = v10[21];
  if (v34 && *v34 > v15)
  {
    if (v28 != -1)
    {
      v35 = v10[15];
      v36 = v10[18];
      goto LABEL_52;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v28 == -1)
  {
    goto LABEL_124;
  }

  v36 = v10[18];
  v37 = v36 + v28;
  v35 = v10[15];
  v10[21] = *(v35 + ((v37 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v37 + 8;
LABEL_52:
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      v68 = *(v35[v36 >> 8] + 2 * v36 + 1);
      v69 = v10[20];
      v70 = v10[21];
      v71 = v69 - v68;
      if (v68 == 0x7FFFFFFFFFFFFFFFLL || v69 == 0x8000000000000000)
      {
        v71 = 0x8000000000000000;
      }

      if (v69 == 0x7FFFFFFFFFFFFFFFLL || v68 == 0x8000000000000000)
      {
        v74 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v71;
      }

      v10[20] = v74;
      v75 = v35[v36 >> 8];
      if (v70 == &v75[16 * v36 + 8])
      {
        v10[21] = 0;
      }

      if (!v75)
      {
        break;
      }

      --v30;
      v10[18] = ++v36;
      v10[19] = v30;
      if (v36 >= 0x200)
      {
        operator delete(*v35);
        v35 = (v10[15] + 8);
        v10[15] = v35;
        v30 = v10[19];
        v36 = v10[18] - 256;
        v10[18] = v36;
      }
    }

    while (v30);
    goto LABEL_124;
  }

  while (1)
  {
    v38 = &v35[v36 >> 8];
    v39 = *v38;
    v40 = *v38 + 16 * v36;
    v41 = *v40;
    if (*v40 != 0x8000000000000000)
    {
      if (v6 == 0x8000000000000000)
      {
        break;
      }

      if (v41 == 0x7FFFFFFFFFFFFFFFLL || v6 - v41 < 1000001)
      {
        break;
      }
    }

    v43 = *(v40 + 1);
    v44 = v10[20];
    v45 = v10[21];
    v46 = v44 - v43;
    if (v43 == 0x7FFFFFFFFFFFFFFFLL || v44 == 0x8000000000000000)
    {
      v46 = 0x8000000000000000;
    }

    if (v44 == 0x7FFFFFFFFFFFFFFFLL || v43 == 0x8000000000000000)
    {
      v49 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v49 = v46;
    }

    v10[20] = v49;
    v50 = *v38;
    if (v45 == &v50[16 * v36 + 8])
    {
      v10[21] = 0;
    }

    if (v50)
    {
      --v30;
      v10[18] = ++v36;
      v10[19] = v30;
      if (v36 >= 0x200)
      {
        operator delete(*v35);
        v35 = (v10[15] + 8);
        v10[15] = v35;
        v30 = v10[19];
        v36 = v10[18] - 256;
        v10[18] = v36;
      }

      if (v30)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  v51 = v10[21];
  if (!v51)
  {
    v51 = (v40 + 8);
    v10[21] = (v40 + 8);
    if (v10[16] != v35)
    {
      v66 = *(v35 + (((v30 + v36) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + v36);
      while (1)
      {
        while (1)
        {
          if (v40 == v66)
          {
            goto LABEL_78;
          }

          if (*(v40 + 1) < *v51)
          {
            break;
          }

          v10[21] = (v40 + 8);
          v51 = (v40 + 8);
          v40 += 16;
          if (v40 - v39 == 4096)
          {
            goto LABEL_105;
          }
        }

        v40 += 16;
        if (v40 - v39 == 4096)
        {
LABEL_105:
          v67 = v38[1];
          ++v38;
          v39 = v67;
          v40 = v67;
        }
      }
    }
  }

LABEL_78:
  v52 = v10[20] / v30;
  v53 = v52 / 0x3E8uLL;
  if (v52 % 0x3E8uLL > 0x1F3)
  {
    LODWORD(v53) = v53 + 1;
  }

  if (-v52 % 0x3E8uLL <= 0x1F4)
  {
    v54 = 0;
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 - -v52 / 0x3E8uLL;
  if (v52 < 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = v53;
  }

  v57 = *v51;
  v58 = *v51 / 0x3E8uLL;
  if (*v51 % 0x3E8uLL > 0x1F3)
  {
    LODWORD(v58) = v58 + 1;
  }

  if (-v57 % 0x3E8uLL <= 0x1F4)
  {
    v59 = 0;
  }

  else
  {
    v59 = -1;
  }

  if (v57 < 0)
  {
    v60 = v59 - -v57 / 0x3E8uLL;
  }

  else
  {
    LODWORD(v60) = v58;
  }

  v8[9] = v56;
  v8[10] = v60;
  v61 = *(this + 125);
  v62 = vdupq_n_s64(1uLL);
  v63.i64[1] = v62.i64[1];
  v63.i64[0] = v56;
  v62.i64[0] = v60;
  v64 = vaddq_s64(v61[14], v62);
  v61[13] = vaddq_s64(v61[13], v63);
  v61[14] = v64;
LABEL_95:

  return pthread_mutex_unlock((this + 392));
}

std::string *webrtc::VideoSendStream::Stats::Stats(std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
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

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = *(a2 + 14);
  v9 = a2[2];
  v10 = a2[3];
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[0] = &this[5].__r_.__value_.__l.__size_;
  *&this[2].__r_.__value_.__l.__data_ = v10;
  *&this[1].__r_.__value_.__r.__words[1] = v9;
  this[4].__r_.__value_.__r.__words[2] = v8;
  *&this[4].__r_.__value_.__l.__data_ = v7;
  *&this[3].__r_.__value_.__r.__words[1] = v6;
  *&this[2].__r_.__value_.__r.__words[2] = v5;
  this[5].__r_.__value_.__r.__words[2] = 0;
  v11 = *(a2 + 15);
  if (v11 != (a2 + 8))
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(this[5].__r_.__value_.__r.__words, &this[5].__r_.__value_.__l.__size_, &v31, &v30, v11 + 8))
      {
        operator new();
      }

      v12 = *(v11 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v11 + 2);
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v11 = v13;
    }

    while (v13 != (a2 + 8));
  }

  v15 = *(a2 + 18);
  v16 = *(a2 + 149);
  this[7].__r_.__value_.__r.__words[0] = 0;
  *(this[6].__r_.__value_.__r.__words + 5) = v16;
  this[6].__r_.__value_.__r.__words[0] = v15;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = &this[7];
  v17 = *(a2 + 20);
  if (v17 != (a2 + 168))
  {
    do
    {
      v18 = *(v17 + 8);
      data = this[7].__r_.__value_.__l.__data_;
      v20 = this + 7;
      if (this[6].__r_.__value_.__r.__words[2] == &this[7])
      {
        goto LABEL_27;
      }

      v21 = this[7].__r_.__value_.__l.__data_;
      v22 = this + 7;
      if (data)
      {
        do
        {
          v20 = v21;
          v21 = *(v21 + 1);
        }

        while (v21);
      }

      else
      {
        do
        {
          v20 = v22->__r_.__value_.__r.__words[2];
          v14 = v20->__r_.__value_.__r.__words[0] == v22;
          v22 = v20;
        }

        while (v14);
      }

      if (LODWORD(v20[1].__r_.__value_.__r.__words[1]) < v18)
      {
LABEL_27:
        if (data)
        {
          v23 = &v20->__r_.__value_.__r.__words[1];
        }

        else
        {
          v23 = this + 7;
        }

        if (!v23->__r_.__value_.__r.__words[0])
        {
LABEL_38:
          operator new();
        }
      }

      else
      {
        if (!data)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v24 = data;
            v25 = *(data + 8);
            if (v25 <= v18)
            {
              break;
            }

            data = *v24;
            if (!*v24)
            {
              goto LABEL_38;
            }
          }

          if (v25 >= v18)
          {
            break;
          }

          data = v24[1];
          if (!data)
          {
            goto LABEL_38;
          }
        }
      }

      v26 = v17[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v17[2];
          v14 = *v27 == v17;
          v17 = v27;
        }

        while (!v14);
      }

      v17 = v27;
    }

    while (v27 != (a2 + 168));
  }

  v28 = *(a2 + 23);
  *(&this[7].__r_.__value_.__r.__words[2] + 6) = *(a2 + 190);
  this[7].__r_.__value_.__r.__words[2] = v28;
  return this;
}

void std::__tree<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__tree_node<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
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
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
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

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = *(v14 + 8);
      *(v9 + 8) = v15;
      memcpy(v9 + 5, v14 + 5, 0x158uLL);
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          v4 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v21 = *v4 == v14;
          v14 = v4;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= *(v16 + 8))
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

void std::__tree<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>>>::destroy(void *a1)
{
  if (!a1)
  {
    return;
  }

  std::__tree<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>>>::destroy(*a1);
  std::__tree<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::SendStatisticsProxy::Trackers>>>::destroy(a1[1]);
  v2 = a1[15];
  v3 = a1[16];
  if (v3 == v2)
  {
    v4 = a1 + 19;
  }

  else
  {
    v4 = a1 + 19;
    v5 = a1[18];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    while (v8 != *(v2 + (((a1[19] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 152) + v5))
    {
      if (!v8)
      {
        __break(1u);
        return;
      }

      v8 += 16;
      if (v8 - v7 == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[16];
      v2 = (a1[15] + 8);
      a1[15] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 128;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_17;
    }

    v11 = 256;
  }

  a1[18] = v11;
LABEL_17:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = a1[15];
    v13 = a1[16];
    if (v13 != v14)
    {
      a1[16] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = a1[14];
  if (v15)
  {
    operator delete(v15);
  }

  a1[6] = &unk_28829A088;
  v16 = a1[9];
  if (v16)
  {
    MEMORY[0x2743DA520](v16, 0x1000C8000313F17);
  }

  operator delete(a1);
}

void webrtc::rtcp::SenderReport::~SenderReport(webrtc::rtcp::SenderReport *this)
{
  *this = &unk_28829FA68;
  v1 = *(this + 5);
  if (v1)
  {
    *(this + 6) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829FA68;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::rtcp::SenderReport::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  v4 = 24 * v2 + 24;
  if (v4 > v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sender_report.cc");
    }
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + 40);
    *(a1 + 8) = bswap32(*v5);
    *(a1 + 16) = bswap64(*(v5 + 4));
    *(a1 + 24) = bswap32(*(v5 + 12));
    *(a1 + 28) = bswap32(*(v5 + 16));
    *(a1 + 32) = bswap32(*(v5 + 20));
    v7 = *(a1 + 48);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 2);
    if (v2 <= v8)
    {
      if (v2 < v8)
      {
        v7 = (v6 + 28 * v2);
        *(a1 + 48) = v7;
      }
    }

    else
    {
      std::vector<webrtc::rtcp::ReportBlock>::__append((a1 + 40), v2 - v8);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
    }

    if (v6 != v7)
    {
      v17 = (v5 + 24);
      do
      {
        webrtc::rtcp::ReportBlock::Parse(v6, v17, 0x18uLL);
        v6 = (v6 + 28);
        v17 += 24;
      }

      while (v6 != v7);
    }
  }

  return v4 <= v3;
}

uint64_t webrtc::rtcp::SenderReport::Create(unsigned int *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    (*(*a1 + 16))(a1);
    v13 = (a1[12] - a1[10]) >> 2;
    v14 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = (-73 * v13) | 0x80;
    *(a2 + *a3 + 1) = -56;
    *(a2 + *a3 + 2) = (v14 - 4) >> 10;
    *(a2 + *a3 + 3) = (v14 - 4) >> 2;
    v15 = *a3 + 4;
    *a3 = v15;
    *(a2 + v15) = bswap32(a1[2]);
    v16 = (a2 + *a3);
    v17 = *(a1 + 2);
    v16[4] = HIBYTE(v17);
    v16[5] = BYTE6(v17);
    v16[6] = BYTE5(v17);
    v16[7] = BYTE4(v17);
    *(a2 + *a3 + 8) = bswap32(a1[4]);
    *(a2 + *a3 + 12) = bswap32(a1[6]);
    *(a2 + *a3 + 16) = bswap32(a1[7]);
    *(a2 + *a3 + 20) = bswap32(a1[8]);
    v18 = *a3 + 24;
    *a3 = v18;
    v20 = *(a1 + 5);
    for (i = *(a1 + 6); v20 != i; v20 += 28)
    {
      webrtc::rtcp::ReportBlock::Create(v20, (a2 + v18));
      v18 = *a3 + 24;
      *a3 = v18;
    }

    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

uint64_t webrtc::SentPacketInfo::SentPacketInfo(uint64_t this, uint64_t a2, uint64_t a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 30) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

pthread_mutex_t *webrtc::webrtc_sequence_checker_internal::SequenceCheckerImpl::SequenceCheckerImpl(pthread_mutex_t *this, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v12);
  pthread_mutexattr_setpolicy_np(&v12, 3);
  pthread_mutex_init(this, &v12);
  pthread_mutexattr_destroy(&v12);
  LOBYTE(this[1].__sig) = a2;
  *this[1].__opaque = pthread_self();
  return this;
}

BOOL webrtc::webrtc_sequence_checker_internal::SequenceCheckerImpl::IsCurrent(webrtc::webrtc_sequence_checker_internal::SequenceCheckerImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = pthread_self();
  pthread_mutex_lock(this);
  v11 = this;
  if (*(this + 64))
  {
    v12 = *(this + 10);
    if (v12)
    {
      v13 = v12 == v9;
    }

    else
    {
      v15 = pthread_equal(*(this + 9), v10);
      v11 = this;
      v13 = v15 != 0;
    }

    pthread_mutex_unlock(v11);
    return v13;
  }

  else
  {
    *(this + 64) = 1;
    *(this + 9) = v10;
    *(this + 10) = v9;
    pthread_mutex_unlock(this);
    return 1;
  }
}

std::string *webrtc::ContentGroup::ContentGroup(std::string *this, const webrtc::ContentGroup *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    v7 = v10 - v9;
    if (v10 == v9)
    {
      return this;
    }

LABEL_5:
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = *a2;
  this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  *&this->__r_.__value_.__l.__data_ = v4;
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    goto LABEL_5;
  }

  return this;
}

void webrtc::ContentGroup::~ContentGroup(webrtc::ContentGroup *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::ContentGroup::AddContentName(void *a1, _BYTE *__src, size_t __len)
{
  v8 = a1[3];
  v7 = a1[4];
  v6 = a1 + 3;
  while (1)
  {
    if (v8 == v7)
    {
      goto LABEL_10;
    }

    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      v10 = *v8;
      if (__len != *(v8 + 8))
      {
        goto LABEL_2;
      }
    }

    else
    {
      v10 = v8;
      if (__len != v9)
      {
        goto LABEL_2;
      }
    }

    result = memcmp(__src, v10, __len);
    if (!result)
    {
      break;
    }

LABEL_2:
    v8 += 24;
  }

  if (v8 != v7)
  {
    return result;
  }

LABEL_10:
  if (v7 >= a1[5])
  {
    std::vector<std::string>::__emplace_back_slow_path<std::string_view &>(v6);
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_23;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v7[23] = __len;
  v12 = &v7[__len];
  if (v7 <= __src && v12 > __src)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len)
  {
    memmove(v7, __src, __len);
  }

  *v12 = 0;
  result = (v7 + 24);
  a1[4] = v7 + 24;
  return result;
}

uint64_t webrtc::ContentGroup::RemoveContentName(uint64_t a1, void *__s1, size_t __n)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    while (1)
    {
      v8 = *(v4 + 23);
      if (v8 < 0)
      {
        v9 = *v4;
        if (__n == *(v4 + 8))
        {
LABEL_3:
          if (!memcmp(__s1, v9, __n))
          {
            break;
          }
        }
      }

      else
      {
        v9 = v4;
        if (__n == v8)
        {
          goto LABEL_3;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  if ((v4 + 24) != v5)
  {
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      *v4 = *(v4 + 24);
      *(v4 + 16) = *(v4 + 40);
      *(v4 + 47) = 0;
      v10 = (v4 + 48);
      *(v4 + 24) = 0;
      v4 += 24;
    }

    while (v10 != v5);
    v5 = *(a1 + 32);
  }

  while (v5 != v4)
  {
    v12 = *(v5 - 1);
    v5 -= 3;
    if (v12 < 0)
    {
      operator delete(*v5);
    }
  }

  *(a1 + 32) = v4;
  return 1;
}

double webrtc::ContentGroup::ToString@<D0>(webrtc::ContentGroup *this@<X0>, std::string *a2@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v6 = *this;
    v4 = *(this + 1);
    v5 = v4 == 0;
    if (*this)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 0;
    }

    if (!v7)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v5 = v4 == 0;
    v6 = this;
  }

  if (v4 > 0x16)
  {
    if (v4 - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_98:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5)
  {
    size = 0;
    v9 = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v11 = (&__dst + v4);
    if (&__dst <= v6 && v11 > v6)
    {
      goto LABEL_97;
    }

    memmove(&__dst, v6, v4);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v4;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v4;
    }

    *v11 = 0;
    LODWORD(v10) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v9 = __dst.__r_.__value_.__r.__words[2];
    size = __dst.__r_.__value_.__l.__size_;
  }

  v12 = v10;
  v13 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v10 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = v13;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = size;
  }

  if (v14 == v10)
  {
    std::string::__grow_by_and_replace(&__dst, v14, 1uLL, v14, v14, 0, 1uLL, "(");
    v15 = *(this + 4);
    i = *(this + 3);
    if (i != v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
    if (v12 >= 0)
    {
      p_dst = &__dst;
    }

    v18 = p_dst + v10;
    if (p_dst + v10 <= "(" && v18 + 1 > "(")
    {
      goto LABEL_97;
    }

    *v18 = 40;
    v19 = v10 + 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v19;
      p_dst->__r_.__value_.__s.__data_[v19] = 0;
      v15 = *(this + 4);
      for (i = *(this + 3); i != v15; i += 24)
      {
LABEL_38:
        v20 = i[23];
        if ((v20 & 0x8000000000000000) != 0)
        {
          v22 = *i;
          v20 = *(i + 1);
          v21 = v20 == 0;
          if (*i)
          {
            v23 = 1;
          }

          else
          {
            v23 = v20 == 0;
          }

          if (!v23)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v21 = v20 == 0;
          v22 = i;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = 22;
        }

        else
        {
          v24 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __dst.__r_.__value_.__l.__size_;
        }

        if (v24 - v25 >= v20)
        {
          if (!v21)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &__dst;
            }

            else
            {
              v26 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_97;
            }

            if (v26 + v25 <= v22 && v26 + v25 + v20 > v22)
            {
              goto LABEL_97;
            }

            v28 = v20;
            memmove(v26 + v25, v22, v20);
            v29 = v25 + v28;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              __dst.__r_.__value_.__l.__size_ = v25 + v28;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v29 & 0x7F;
            }

            v26->__r_.__value_.__s.__data_[v29] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&__dst, v24, v25 + v20 - v24, v25, v25, 0, v20, v22);
        }

        v30 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = 22;
        }

        else
        {
          v31 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = __dst.__r_.__value_.__l.__size_;
        }

        if (v31 == v30)
        {
          std::string::__grow_by_and_replace(&__dst, v31, 1uLL, v31, v31, 0, 1uLL, " ");
        }

        else
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &__dst;
          }

          else
          {
            v32 = __dst.__r_.__value_.__r.__words[0];
          }

          v33 = v32 + v30;
          if (v32 + v30 <= " " && v33 + 1 > " ")
          {
            goto LABEL_97;
          }

          *v33 = 32;
          v34 = v30 + 1;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = v34;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 & 0x7F;
          }

          v32->__r_.__value_.__s.__data_[v34] = 0;
        }
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v19 & 0x7F;
      p_dst->__r_.__value_.__s.__data_[v19] = 0;
      v15 = *(this + 4);
      i = *(this + 3);
      if (i != v15)
      {
        goto LABEL_38;
      }
    }
  }

  v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = __dst.__r_.__value_.__l.__size_;
  }

  if (v36 == v35)
  {
    std::string::__grow_by_and_replace(&__dst, v36, 1uLL, v36, v36, 0, 1uLL, ")");
    goto LABEL_96;
  }

  v37 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = __dst.__r_.__value_.__r.__words[0];
  }

  v38 = v37 + v35;
  if (v37 + v35 <= ")" && v38 + 1 > ")")
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *v38 = 41;
  v39 = v35 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v39;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v39 & 0x7F;
  }

  v37->__r_.__value_.__s.__data_[v39] = 0;
LABEL_96:
  result = *&__dst.__r_.__value_.__l.__data_;
  *a2 = __dst;
  return result;
}

uint64_t webrtc::SessionDescription::SessionDescription(uint64_t this, const webrtc::SessionDescription *a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  v2 = *(a2 + 1);
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (v4 != v3)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  v5 = *(a2 + 6);
  v6 = *(a2 + 7);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = *(a2 + 18);
  *(this + 76) = *(a2 + 76);
  *(this + 72) = v7;
  return this;
}

void webrtc::SessionDescription::~SessionDescription(webrtc::SessionDescription *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v9);
        }

        v3 -= 6;
      }

      while (v9 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  v10 = *(this + 3);
  if (v10)
  {
    v11 = *(this + 4);
    v12 = *(this + 3);
    if (v11 != v10)
    {
      do
      {
        v13 = v11;
        v11 -= 14;
        webrtc::TransportDescription::~TransportDescription((v13 - 11));
        if (*(v13 - 89) < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *(this + 3);
    }

    *(this + 4) = v10;
    operator delete(v12);
  }

  v14 = *this;
  if (*this)
  {
    v15 = *(this + 1);
    v16 = *this;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 8);
        *(v15 - 8) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 32));
        }

        v15 -= 40;
      }

      while (v15 != v14);
      v16 = *this;
    }

    *(this + 1) = v14;
    operator delete(v16);
  }
}

void webrtc::SessionDescription::AddContent(uint64_t a1, void ***a2, int a3, unsigned __int8 a4, uint64_t *a5)
{
  v5 = *(a2 + 23);
  v6 = *a5;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v5 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  *a5 = 0;
  v17 = a4;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v8 > 0x16)
  {
    operator new();
  }

  HIBYTE(v19) = v8;
  v10 = (__p + v8);
  if (__p <= v7 && v10 > v7)
  {
    goto LABEL_27;
  }

  if (v8)
  {
    memmove(__p, v7, v8);
  }

  *v10 = 0;
  v20 = v6;
  if (*(a1 + 76) == 1)
  {
    *(v6 + 200) = 1;
  }

  v12 = *(a1 + 8);
  if (v12 >= *(a1 + 16))
  {
    std::vector<webrtc::ContentInfo>::__emplace_back_slow_path<webrtc::ContentInfo>(a1);
  }

  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v12 + 4) = v17;
  *v12 = a3;
  v13 = *__p;
  *(v12 + 24) = v19;
  *(v12 + 8) = v13;
  __p[1] = 0;
  v19 = 0;
  __p[0] = 0;
  v14 = v20;
  v20 = 0;
  *(v12 + 32) = v14;
  *(a1 + 8) = v12 + 40;
  v15 = v20;
  v20 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::SessionDescription::AddContent(uint64_t a1, void ***a2, int a3, char a4, char a5, uint64_t *a6)
{
  v6 = *(a2 + 23);
  v7 = *a6;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v6 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  *a6 = 0;
  LOBYTE(v18) = a4;
  HIBYTE(v18) = a5;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  HIBYTE(v20) = v9;
  v11 = (__p + v9);
  if (__p <= v8 && v11 > v8)
  {
    goto LABEL_27;
  }

  if (v9)
  {
    memmove(__p, v8, v9);
  }

  *v11 = 0;
  v21 = v7;
  if (*(a1 + 76) == 1)
  {
    *(v7 + 200) = 1;
  }

  v13 = *(a1 + 8);
  if (v13 >= *(a1 + 16))
  {
    std::vector<webrtc::ContentInfo>::__emplace_back_slow_path<webrtc::ContentInfo>(a1);
  }

  if (!v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v13 + 4) = v18;
  *v13 = a3;
  v14 = *__p;
  *(v13 + 24) = v20;
  *(v13 + 8) = v14;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  v15 = v21;
  v21 = 0;
  *(v13 + 32) = v15;
  *(a1 + 8) = v13 + 40;
  v16 = v21;
  v21 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void *webrtc::SessionDescription::AddTransportInfo(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[4];
  if (v3 >= result[5])
  {
    std::vector<webrtc::TransportInfo>::__emplace_back_slow_path<webrtc::TransportInfo const&>(result + 3);
  }

  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      v5 = a2;
      std::string::__init_copy_ctor_external(result[4], *a2, *(a2 + 1));
      a2 = v5;
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    webrtc::TransportDescription::TransportDescription((v3 + 24), (a2 + 24));
    result = (v3 + 112);
    v2[4] = v3 + 112;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::vector<std::string>::__emplace_back_slow_path<std::string_view &>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v2 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::ContentInfo>::__emplace_back_slow_path<webrtc::ContentInfo>(void *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v2 = 0x666666666666666;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::TransportInfo>::__emplace_back_slow_path<webrtc::TransportInfo const&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x249249249249249)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - v1) >> 4) > v2)
    {
      v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - v1) >> 4);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - v1) >> 4)) >= 0x124924924924924)
    {
      v2 = 0x249249249249249;
    }

    if (v2)
    {
      if (v2 <= 0x249249249249249)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void dcsctp::ShutdownAckChunk::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    v2 = *a2;
  }

  v5 = v2 + v3;
  *v5 = 8;
  *(v5 + 2) = 1024;
}

void dcsctp::ShutdownAckChunk::ToString(char *a1@<X8>)
{
  a1[23] = 12;
  if (a1 <= "SHUTDOWN-ACK" && a1 + 12 > "SHUTDOWN-ACK")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "SHUTDOWN-ACK");
  }
}

void dcsctp::ShutdownChunk::SerializeTo(uint64_t a1, uint64_t *a2)
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

  v6 = v4 + v5;
  *v6 = 7;
  *(v6 + 2) = 2048;
  *(*a2 + v5 + 4) = bswap32(*(a1 + 8));
}

void dcsctp::ShutdownChunk::ToString(char *a1@<X8>)
{
  a1[23] = 8;
  if (a1 <= "SHUTDOWN" && a1 + 8 > "SHUTDOWN")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "SHUTDOWN");
  }
}

void dcsctp::ShutdownCompleteChunk::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v4 + v5 + 4;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    v4 = *a2;
  }

  v6 = v4 + v5;
  *v6 = 14;
  *(v6 + 2) = 1024;
  *(*a2 + v5 + 1) = *(a1 + 8);
}

void dcsctp::ShutdownCompleteChunk::ToString(char *a1@<X8>)
{
  a1[23] = 17;
  if (a1 <= "SHUTDOWN-COMPLETE" && a1 + 17 > "SHUTDOWN-COMPLETE")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "SHUTDOWN-COMPLETE");
  }
}

void webrtc::SignalDependentErleEstimator::SignalDependentErleEstimator(webrtc::SignalDependentErleEstimator *this, const webrtc::EchoCanceller3Config *a2, int32x2_t a3, int32x2_t a4)
{
  *this = *(a2 + 60);
  v4 = *(a2 + 32);
  *(this + 1) = v4;
  *(this + 2) = *(a2 + 15);
  *(this + 3) = *(a2 + 5) >> 6;
  v5 = 1;
  for (i = 4; i != 69; ++i)
  {
    {
      ++v5;
    }

    *(this + i) = v5 - 1;
  }

  v7 = this + 552;
  a3.i32[0] = *(a2 + 62);
  v8 = *(this + 36);
  v9 = 4 * v8;
  if (v8 >= 1)
  {
    a4.i32[0] = *(a2 + 61);
    if (v8 >= 8)
    {
      v10 = &v7[4 * (v8 & 0x7FFFFFFFFFFFFFF8)];
      v11 = *(this + 36) & 7;
      v12 = vdupq_lane_s32(a4, 0);
      v13 = (this + 568);
      v14 = v8 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v13[-1] = v12;
        *v13 = v12;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      if (v8 == (v8 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = this + 552;
      v11 = *(this + 36);
    }

    *v10 = a4.i32[0];
    if (v11 >= 2)
    {
      *(v10 + 1) = a4.i32[0];
      if (v11 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(v10 + 2) = a4.i32[0];
        if ((v11 & 6) != 2)
        {
          *(v10 + 3) = a4.i32[0];
          if (v11 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *(v10 + 4) = a4.i32[0];
            if ((v11 & 6) != 4)
            {
              *(v10 + 5) = a4.i32[0];
              if (v11 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *(v10 + 6) = a4.i32[0];
              }
            }
          }
        }
      }
    }
  }

LABEL_18:
  v15 = (24 - v9) >> 2;
  if (v15 < 1)
  {
    goto LABEL_31;
  }

  v16 = &v7[v9];
  if (v15 >= 8)
  {
    v16 += 4 * (v15 & 0x7FFFFFFFFFFFFFF8);
    v17 = ((24 - v9) >> 2) & 7;
    v18 = vdupq_lane_s32(a3, 0);
    v19 = (this + v9 + 568);
    v20 = v15 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v19[-1] = v18;
      *v19 = v18;
      v19 += 2;
      v20 -= 8;
    }

    while (v20);
    if (v15 == (v15 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v17 = (24 - v9) >> 2;
  }

  *v16 = a3.i32[0];
  if (v17 >= 2)
  {
    *(v16 + 1) = a3.i32[0];
    if (v17 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *(v16 + 2) = a3.i32[0];
      if ((v17 & 6) != 2)
      {
        *(v16 + 3) = a3.i32[0];
        if (v17 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          *(v16 + 4) = a3.i32[0];
          if ((v17 & 6) != 4)
          {
            *(v16 + 5) = a3.i32[0];
            if (v17 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              *(v16 + 6) = a3.i32[0];
            }
          }
        }
      }
    }
  }

LABEL_31:
  *(this + 74) = 0;
  *(this + 36) = 0u;
  v21 = __CFADD__(v4, 1);
  v22 = v4 + 1;
  if (!v21 && !(v22 >> 61))
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::SignalDependentErleEstimator::Reset(webrtc::SignalDependentErleEstimator *this, int32x2_t a2)
{
  v2 = *(this + 76);
  if (*(this + 77) != v2)
  {
    v4 = 0;
    while (1)
    {
      a2.i32[0] = *this;
      v5 = vdupq_lane_s32(a2, 0);
      v6 = (v2 + 260 * v4);
      *v6 = v5;
      v6[1] = v5;
      v6[2] = v5;
      v6[3] = v5;
      v6[4] = v5;
      v6[5] = v5;
      v6[6] = v5;
      v6[7] = v5;
      v6[8] = v5;
      v6[9] = v5;
      v6[10] = v5;
      v6[11] = v5;
      v6[12] = v5;
      v6[13] = v5;
      v6[14] = v5;
      v6[15] = v5;
      v6[16].i32[0] = a2.i32[0];
      v7 = *(this + 79);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 80) - v7) >> 2) <= v4)
      {
        break;
      }

      a2.i32[0] = *this;
      v8 = vdupq_lane_s32(a2, 0);
      v9 = (v7 + 260 * v4);
      *v9 = v8;
      v9[1] = v8;
      v9[2] = v8;
      v9[3] = v8;
      v9[4] = v8;
      v9[5] = v8;
      v9[6] = v8;
      v9[7] = v8;
      v9[8] = v8;
      v9[9] = v8;
      v9[10] = v8;
      v9[11] = v8;
      v9[12] = v8;
      v9[13] = v8;
      v9[14] = v8;
      v9[15] = v8;
      v9[16].i32[0] = a2.i32[0];
      v10 = *(this + 85);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 86) - v10) >> 3) <= v4)
      {
        break;
      }

      v11 = (v10 + 24 * v4);
      v12 = *v11;
      for (i = v11[1]; v12 != i; v12 = (v12 + 24))
      {
        a2.i32[0] = *this;
        *v12 = vdupq_lane_s32(a2, 0);
        v12[1].i32[0] = a2.i32[0];
        v12[1].i32[1] = a2.i32[0];
      }

      v14 = *(this + 88);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 89) - v14) >> 3) <= v4)
      {
        break;
      }

      v15 = (v14 + 24 * v4);
      a2.i32[0] = *this;
      *v15 = vdupq_lane_s32(a2, 0);
      v15[1].i32[0] = a2.i32[0];
      v15[1].i32[1] = a2.i32[0];
      v16 = *(this + 91);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 92) - v16) >> 3) <= v4)
      {
        break;
      }

      v17 = v16 + 24 * v4;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v18 != v19)
      {
        memset_pattern16(v18, &unk_273BA4390, 24 * ((v19 - v18 - 24) / 0x18uLL) + 24);
      }

      v20 = *(this + 94);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 95) - v20) >> 3) <= v4)
      {
        break;
      }

      v21 = (v20 + 24 * v4);
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      v22 = *(this + 97);
      if (0xFC0FC0FC0FC0FC1 * ((*(this + 98) - v22) >> 3) <= v4)
      {
        break;
      }

      v23 = (v22 + 520 * v4++);
      bzero(v23, 0x208uLL);
      v2 = *(this + 76);
      if (v4 >= 0xFC0FC0FC0FC0FC1 * ((*(this + 77) - v2) >> 2))
      {
        return;
      }
    }

    __break(1u);
  }
}

void webrtc::SignalDependentErleEstimator::~SignalDependentErleEstimator(webrtc::SignalDependentErleEstimator *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  v3 = *(this + 94);
  if (v3)
  {
    *(this + 95) = v3;
    operator delete(v3);
  }

  v4 = *(this + 91);
  if (v4)
  {
    v5 = *(this + 92);
    v6 = *(this + 91);
    if (v5 != v4)
    {
      v7 = *(this + 92);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 91);
    }

    *(this + 92) = v4;
    operator delete(v6);
  }

  v10 = *(this + 88);
  if (v10)
  {
    *(this + 89) = v10;
    operator delete(v10);
  }

  v11 = *(this + 85);
  if (v11)
  {
    v12 = *(this + 86);
    v13 = *(this + 85);
    if (v12 != v11)
    {
      v14 = *(this + 86);
      do
      {
        v16 = *(v14 - 24);
        v14 -= 24;
        v15 = v16;
        if (v16)
        {
          *(v12 - 16) = v15;
          operator delete(v15);
        }

        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(this + 85);
    }

    *(this + 86) = v11;
    operator delete(v13);
  }

  v17 = *(this + 82);
  if (v17)
  {
    v18 = *(this + 83);
    v19 = *(this + 82);
    if (v18 != v17)
    {
      v20 = *(this + 83);
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
      v19 = *(this + 82);
    }

    *(this + 83) = v17;
    operator delete(v19);
  }

  v23 = *(this + 79);
  if (v23)
  {
    *(this + 80) = v23;
    operator delete(v23);
  }

  v24 = *(this + 76);
  if (v24)
  {
    *(this + 77) = v24;
    operator delete(v24);
  }

  v25 = *(this + 72);
  if (v25)
  {
    *(this + 73) = v25;
    operator delete(v25);
  }
}

void webrtc::SignalDependentErleEstimator::Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a4)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 8);
  v19 = *(v17 + 1);
  v18 = *(v17 + 2);
  v20 = v18 - v19;
  if (v18 == v19)
  {
    goto LABEL_474;
  }

  v395 = *(a1 + 656);
  v22 = *(a1 + 664) - v395;
  if (!v22)
  {
    goto LABEL_44;
  }

  v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
  if (v23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
  }

  v25 = *(a1 + 584);
  v26 = *(a1 + 576);
  v27 = v25 - v26;
  if (v25 == v26)
  {
    goto LABEL_474;
  }

  v28 = *(a1 + 8);
  if (!v28)
  {
    goto LABEL_44;
  }

  v29 = 0;
  *&a8 = 1.0 / (0xFC0FC0FC0FC0FC1 * ((*(v19 + 1) - *v19) >> 2));
  v30 = v27 >> 3;
  v31 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
  v32 = *(*(a2 + 16) + 36) + *v26;
  v33 = *v17;
  v34 = (v32 + v33) % v33;
  v35 = v33 - 1;
  if (v30 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v30;
  }

  v37 = v36 - 1;
  v38 = vdupq_lane_s32(*&a8, 0);
LABEL_15:
  v39 = 0;
  v40 = (v16 + 24 * v29);
  v41 = (v395 + 24 * v29);
  v42 = v34;
  while (1)
  {
    if (v39 == v37)
    {
      goto LABEL_474;
    }

    v43 = v39 + 1;
    v44 = (0xFC0FC0FC0FC0FC1 * ((v40[1] - *v40) >> 2)) >= *&v26[8 * v39 + 8] ? *&v26[8 * v39 + 8] : 0xFC0FC0FC0FC0FC1 * ((v40[1] - *v40) >> 2);
    v45 = *&v26[8 * v39];
    v46 = 0uLL;
    v47 = 0.0;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0.0;
    v64 = 0uLL;
    if (v45 < v44)
    {
      break;
    }

    v400 = 0uLL;
    v402 = 0uLL;
    v398 = 0uLL;
    v399 = 0uLL;
    v396 = 0uLL;
    v397 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
LABEL_35:
    if (v23 <= v29)
    {
      goto LABEL_474;
    }

    v80 = *v41;
    v81 = 0xFC0FC0FC0FC0FC1 * ((v41[1] - *v41) >> 2);
    if (v81 <= v39)
    {
      goto LABEL_474;
    }

    v82 = (v80 + 260 * v39);
    *v82 = vmulq_f32(v62, v73);
    v82[1] = vmulq_f32(v61, v72);
    v82[2] = vmulq_f32(v60, v71);
    v82[3] = vmulq_f32(v59, v64);
    v82[4] = vmulq_f32(v58, v70);
    v82[5] = vmulq_f32(v57, v69);
    v82[6] = vmulq_f32(v56, v68);
    v82[7] = vmulq_f32(v55, v67);
    v82[8] = vmulq_f32(v54, v66);
    v82[9] = vmulq_f32(v53, v65);
    v82[10] = vmulq_f32(v52, v396);
    v82[11] = vmulq_f32(v51, v397);
    v82[12] = vmulq_f32(v50, v398);
    v82[13] = vmulq_f32(v49, v399);
    v82[14] = vmulq_f32(v48, v400);
    v82[15] = vmulq_f32(v46, v402);
    v82[16].f32[0] = v47 * v63;
    ++v39;
    if (v43 == v28)
    {
      if (v28 != 1)
      {
        v83 = (v80 + 260);
        v84 = v28 - 1;
        while (v81)
        {
          if (!--v81)
          {
            break;
          }

          v85 = vaddq_f32(*(v83 - 244), v83[1]);
          *v83 = vaddq_f32(*(v83 - 260), *v83);
          v83[1] = v85;
          v86 = vaddq_f32(*(v83 - 212), v83[3]);
          v83[2] = vaddq_f32(*(v83 - 228), v83[2]);
          v83[3] = v86;
          v87 = vaddq_f32(*(v83 - 180), v83[5]);
          v83[4] = vaddq_f32(*(v83 - 196), v83[4]);
          v83[5] = v87;
          v88 = vaddq_f32(*(v83 - 148), v83[7]);
          v83[6] = vaddq_f32(*(v83 - 164), v83[6]);
          v83[7] = v88;
          v89 = vaddq_f32(*(v83 - 116), v83[9]);
          v83[8] = vaddq_f32(*(v83 - 132), v83[8]);
          v83[9] = v89;
          v90 = vaddq_f32(*(v83 - 84), v83[11]);
          v83[10] = vaddq_f32(*(v83 - 100), v83[10]);
          v83[11] = v90;
          v91 = vaddq_f32(*(v83 - 52), v83[13]);
          v83[12] = vaddq_f32(*(v83 - 68), v83[12]);
          v83[13] = v91;
          v92 = vaddq_f32(*(v83 - 20), v83[15]);
          v93 = v83[-1].f32[3] + v83[16].f32[0];
          v83[14] = vaddq_f32(*(v83 - 36), v83[14]);
          v83[15] = v92;
          v83[16].f32[0] = v93;
          v83 = (v83 + 260);
          if (!--v84)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_474;
      }

LABEL_43:
      if (++v29 == v24)
      {
LABEL_44:
        v94 = *(a1 + 776);
        v95 = *(a1 + 784) - v94;
        if (v95)
        {
          v96 = 0;
          v97 = 0xFC0FC0FC0FC0FC1 * (v95 >> 3);
          v98 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
          if (v97 <= 1)
          {
            v99 = 1;
          }

          else
          {
            v99 = v97;
          }

          do
          {
            bzero((v94 + 520 * v96), 0x208uLL);
            if (v96 == v98)
            {
              goto LABEL_474;
            }

            v100 = 0;
            v101 = *(v395 + 24 * v96);
            v102 = 0xFC0FC0FC0FC0FC1 * ((*(v395 + 24 * v96 + 8) - v101) >> 2);
            v103 = v101 - 260;
            do
            {
              v104 = *(a1 + 8);
              v105 = v104 - 1;
              if (v102 <= v104 - 1)
              {
                goto LABEL_474;
              }

              v106 = *(v101 + 260 * v105 + 4 * v100) * 0.9;
              v107 = (v103 + 260 * v104);
              do
              {
                if (*v107 < v106)
                {
                  break;
                }

                *(v94 + 520 * v96 + 8 * v100) = v105--;
                v107 -= 65;
              }

              while (v105 != -1);
              ++v100;
              v103 += 4;
            }

            while (v100 != 65);
          }

          while (++v96 != v99);
        }

        v108 = a6;
        if (!a7)
        {
          v108 = 0;
        }

        v404 = v108;
        if (a11)
        {
          v109 = a10;
        }

        else
        {
          v109 = 0;
        }

        v110 = a16[1];
        if (!v110)
        {
LABEL_450:
          v367 = *(a1 + 616);
          v368 = *(a1 + 608);
          v369 = v367 - v368;
          if (v367 != v368)
          {
            v370 = 0;
            v371 = 0;
            v372 = 0;
            v375 = 0xFC0FC0FC0FC0FC1 * (v369 >> 2);
            v376 = *(a1 + 728);
            v377 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v376) >> 3);
            v378 = a1 + 552;
            if (v375 <= 1)
            {
              v375 = 1;
            }

LABEL_455:
            if (v372 != v377)
            {
              v379 = *(a1 + 776);
              if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 784) - v379) >> 3) > v372)
              {
                v380 = 0;
                v381 = *(v376 + 24 * v372);
                v382 = 0xAAAAAAAAAAAAAAABLL * ((*(v376 + 24 * v372 + 8) - v381) >> 3);
                v383 = v379 + v370;
                while (1)
                {
                  v387 = *(v383 + 8 * v380);
                  if (v382 <= v387)
                  {
                    break;
                  }

                  v388 = *(a1 + 32 + 8 * v380);
                  if (v388 >= 6)
                  {
                    break;
                  }

                  v389 = *(v381 + 24 * v387 + 4 * v388);
                  v390 = v389 * *(a12 + 4 * v380);
                  v391 = *(v378 + 4 * v388);
                  if (v390 < v391)
                  {
                    v391 = v389 * *(a12 + 4 * v380);
                  }

                  if (v390 > *a1)
                  {
                    v392 = v391;
                  }

                  else
                  {
                    v392 = *a1;
                  }

                  *(v368 + 4 * v380) = v392;
                  if (*(a1 + 600) == 1)
                  {
                    v393 = *(a1 + 632);
                    if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 640) - v393) >> 2) <= v372)
                    {
                      goto LABEL_474;
                    }

                    v384 = v389 * *(a14 + 4 * v380);
                    v385 = *(v378 + 4 * v388);
                    if (v384 < v385)
                    {
                      v385 = v384;
                    }

                    if (v384 > *a1)
                    {
                      v386 = v385;
                    }

                    else
                    {
                      v386 = *a1;
                    }

                    *(v393 + v371 + 4 * v380) = v386;
                  }

                  if (++v380 == 64)
                  {
                    ++v372;
                    v371 += 260;
                    a14 += 260;
                    v368 += 260;
                    a12 += 260;
                    v370 += 520;
                    if (v372 == v375)
                    {
                      return;
                    }

                    goto LABEL_455;
                  }
                }
              }
            }

            goto LABEL_474;
          }

          return;
        }

        v111 = 0;
        while (2)
        {
          if ((*(*a16 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v111))
          {
            webrtc::SignalDependentErleEstimator::UpdateCorrectionFactors(webrtc::ArrayView<float const,65l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,std::vector<BOOL> const&)::$_0::operator()(a5, 65, &v412);
            webrtc::SignalDependentErleEstimator::UpdateCorrectionFactors(webrtc::ArrayView<float const,65l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,std::vector<BOOL> const&)::$_0::operator()((260 * v111 + v109), 65, &v406);
            webrtc::SignalDependentErleEstimator::UpdateCorrectionFactors(webrtc::ArrayView<float const,65l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,std::vector<BOOL> const&)::$_0::operator()((260 * v111 + v404), 65, v405);
            v112 = *(a1 + 776);
            if (0xFC0FC0FC0FC0FC1 * ((*(a1 + 784) - v112) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v113 = (v112 + 520 * v111);
            v115 = v113[5];
            v114 = v113[6];
            v117 = v113[3];
            v116 = v113[4];
            v119 = v113[1];
            v118 = v113[2];
            v120 = v118 >= v119;
            if (v118 >= v119)
            {
              v118 = v113[1];
            }

            v121 = 8;
            if (!v120)
            {
              v121 = 16;
            }

            if (v117 < v118)
            {
              v122 = 24;
            }

            else
            {
              v117 = v118;
              v122 = v121;
            }

            v123 = v116 >= v117;
            if (v116 >= v117)
            {
              v116 = v117;
            }

            v124 = 32;
            if (v123)
            {
              v124 = v122;
            }

            v125 = v115 >= v116;
            if (v115 >= v116)
            {
              v115 = v116;
            }

            v126 = 40;
            if (v125)
            {
              v126 = v124;
            }

            v127 = v114 >= v115;
            if (v114 >= v115)
            {
              v114 = v115;
            }

            v128 = 48;
            if (v127)
            {
              v128 = v126;
            }

            v129 = v113[8];
            v120 = v113[7] >= v114;
            v130 = 56;
            if (v120)
            {
              v130 = v128;
            }

            v132 = v113[13];
            v131 = v113[14];
            v134 = v113[11];
            v133 = v113[12];
            v136 = v113[9];
            v135 = v113[10];
            v137 = v136 >= v129;
            if (v136 < v129)
            {
              v129 = v113[9];
            }

            v138 = 64;
            if (!v137)
            {
              v138 = 72;
            }

            v139 = v135 >= v129;
            if (v135 < v129)
            {
              v129 = v113[10];
            }

            v140 = 80;
            if (v139)
            {
              v140 = v138;
            }

            v141 = v134 >= v129;
            if (v134 < v129)
            {
              v129 = v113[11];
            }

            v142 = 88;
            if (v141)
            {
              v142 = v140;
            }

            v143 = v133 >= v129;
            if (v133 < v129)
            {
              v129 = v113[12];
            }

            v144 = 96;
            if (v143)
            {
              v144 = v142;
            }

            v145 = v132 >= v129;
            if (v132 >= v129)
            {
              v132 = v129;
            }

            v146 = 104;
            if (v145)
            {
              v146 = v144;
            }

            v147 = v131 >= v132;
            if (v131 >= v132)
            {
              v131 = v132;
            }

            v148 = 112;
            if (v147)
            {
              v148 = v146;
            }

            v149 = v113[16];
            v120 = v113[15] >= v131;
            v150 = 120;
            if (v120)
            {
              v150 = v148;
            }

            v152 = v113[21];
            v151 = v113[22];
            v154 = v113[17];
            v153 = v113[18];
            v155 = v154 >= v149;
            if (v154 < v149)
            {
              v149 = v113[17];
            }

            v156 = 128;
            if (!v155)
            {
              v156 = 136;
            }

            v157 = v153 >= v149;
            if (v153 < v149)
            {
              v149 = v113[18];
            }

            v158 = v113[20];
            if (!v157)
            {
              v156 = 144;
            }

            if (v113[19] < v149)
            {
              v149 = v113[19];
              v156 = 152;
            }

            v159 = v158 >= v149;
            if (v158 < v149)
            {
              v149 = v113[20];
            }

            v160 = 160;
            if (v159)
            {
              v160 = v156;
            }

            v161 = v152 >= v149;
            if (v152 >= v149)
            {
              v152 = v149;
            }

            v162 = 168;
            if (v161)
            {
              v162 = v160;
            }

            v163 = v151 >= v152;
            if (v151 >= v152)
            {
              v151 = v152;
            }

            v164 = 176;
            if (v163)
            {
              v164 = v162;
            }

            v165 = v113[24];
            v120 = v113[23] >= v151;
            v166 = 184;
            if (v120)
            {
              v166 = v164;
            }

            v168 = v113[27];
            v167 = v113[28];
            v170 = v113[25];
            v169 = v113[26];
            v171 = v170 >= v165;
            if (v170 < v165)
            {
              v165 = v113[25];
            }

            v172 = 192;
            if (!v171)
            {
              v172 = 200;
            }

            v173 = v169 >= v165;
            if (v169 < v165)
            {
              v165 = v113[26];
            }

            v174 = 208;
            if (v173)
            {
              v174 = v172;
            }

            if (v168 < v165)
            {
              v174 = 216;
            }

            else
            {
              v168 = v165;
            }

            v175 = v167 >= v168;
            if (v167 >= v168)
            {
              v167 = v168;
            }

            v176 = 224;
            if (v175)
            {
              v176 = v174;
            }

            if (v113[29] < v167)
            {
              v167 = v113[29];
              v176 = 232;
            }

            if (v113[30] < v167)
            {
              v167 = v113[30];
              v176 = 240;
            }

            v177 = v113[32];
            if (v113[31] >= v167)
            {
              v178 = v176;
            }

            else
            {
              v178 = 248;
            }

            v180 = v113[33];
            v179 = v113[34];
            v181 = v180 >= v177;
            if (v180 >= v177)
            {
              v180 = v113[32];
            }

            v182 = 256;
            if (!v181)
            {
              v182 = 264;
            }

            v183 = v179 >= v180;
            if (v179 >= v180)
            {
              v179 = v180;
            }

            v184 = v113[36];
            if (!v183)
            {
              v182 = 272;
            }

            if (v113[35] < v179)
            {
              v179 = v113[35];
              v182 = 280;
            }

            v185 = v184 >= v179;
            if (v184 < v179)
            {
              v179 = v113[36];
            }

            v186 = v113[38];
            if (!v185)
            {
              v182 = 288;
            }

            if (v113[37] < v179)
            {
              v179 = v113[37];
              v182 = 296;
            }

            v187 = v186 >= v179;
            if (v186 < v179)
            {
              v179 = v113[38];
            }

            v188 = v113[40];
            if (!v187)
            {
              v182 = 304;
            }

            if (v113[39] < v179)
            {
              v179 = v113[39];
              v182 = 312;
            }

            v189 = v188 >= v179;
            if (v188 < v179)
            {
              v179 = v113[40];
            }

            v190 = v113[42];
            if (!v189)
            {
              v182 = 320;
            }

            if (v113[41] < v179)
            {
              v179 = v113[41];
              v182 = 328;
            }

            v191 = v190 >= v179;
            if (v190 < v179)
            {
              v179 = v113[42];
            }

            v192 = v113[44];
            if (!v191)
            {
              v182 = 336;
            }

            if (v113[43] < v179)
            {
              v179 = v113[43];
              v182 = 344;
            }

            v193 = v192 >= v179;
            if (v192 < v179)
            {
              v179 = v113[44];
            }

            v194 = v113[46];
            if (!v193)
            {
              v182 = 352;
            }

            if (v113[45] < v179)
            {
              v179 = v113[45];
              v182 = 360;
            }

            v195 = v194 >= v179;
            if (v194 < v179)
            {
              v179 = v113[46];
            }

            v196 = 368;
            if (v195)
            {
              v196 = v182;
            }

            v197 = v113[48];
            if (v113[47] >= v179)
            {
              v198 = v196;
            }

            else
            {
              v198 = 376;
            }

            v200 = v113[49];
            v199 = v113[50];
            v201 = v200 >= v197;
            if (v200 >= v197)
            {
              v200 = v113[48];
            }

            v202 = 384;
            if (!v201)
            {
              v202 = 392;
            }

            v203 = v199 >= v200;
            if (v199 >= v200)
            {
              v199 = v200;
            }

            v204 = v113[51];
            if (!v203)
            {
              v202 = 400;
            }

            v205 = v204 >= v199;
            if (v204 < v199)
            {
              v199 = v113[51];
            }

            v206 = v113[52];
            if (!v205)
            {
              v202 = 408;
            }

            v207 = v206 >= v199;
            if (v206 < v199)
            {
              v199 = v113[52];
            }

            v208 = v113[53];
            if (!v207)
            {
              v202 = 416;
            }

            v209 = v208 >= v199;
            if (v208 < v199)
            {
              v199 = v113[53];
            }

            v210 = v113[54];
            if (!v209)
            {
              v202 = 424;
            }

            v211 = v210 >= v199;
            if (v210 < v199)
            {
              v199 = v113[54];
            }

            v212 = v113[55];
            if (!v211)
            {
              v202 = 432;
            }

            v213 = v212 >= v199;
            if (v212 < v199)
            {
              v199 = v113[55];
            }

            v214 = v113[56];
            if (!v213)
            {
              v202 = 440;
            }

            v215 = v214 >= v199;
            if (v214 < v199)
            {
              v199 = v113[56];
            }

            v216 = v113[57];
            if (!v215)
            {
              v202 = 448;
            }

            v217 = v216 >= v199;
            if (v216 < v199)
            {
              v199 = v113[57];
            }

            v218 = v113[58];
            if (!v217)
            {
              v202 = 456;
            }

            v219 = v218 >= v199;
            if (v218 < v199)
            {
              v199 = v113[58];
            }

            v220 = v113[59];
            if (!v219)
            {
              v202 = 464;
            }

            v221 = v220 >= v199;
            if (v220 < v199)
            {
              v199 = v113[59];
            }

            v222 = v113[60];
            if (!v221)
            {
              v202 = 472;
            }

            v223 = v222 >= v199;
            if (v222 < v199)
            {
              v199 = v113[60];
            }

            v224 = v113[61];
            if (!v223)
            {
              v202 = 480;
            }

            v225 = v224 >= v199;
            if (v224 < v199)
            {
              v199 = v113[61];
            }

            v226 = v113[62];
            v227 = *(v113 + v130);
            v228 = 488;
            if (v225)
            {
              v228 = v202;
            }

            v229 = v226 >= v199;
            if (v226 < v199)
            {
              v199 = v113[62];
            }

            v230 = v113[63];
            if (!v229)
            {
              v228 = 496;
            }

            v231 = v230 >= v199;
            if (v230 >= v199)
            {
              v230 = v199;
            }

            v232 = *(v113 + v150);
            v233 = *(v113 + v166);
            if (v231)
            {
              v234 = v228;
            }

            else
            {
              v234 = 504;
            }

            v235 = *(v113 + v178);
            v236 = *(v113 + v198);
            v237 = 512;
            if (v113[64] >= v230)
            {
              v237 = v234;
            }

            v238 = *(v113 + v237);
            v239 = 0.0;
            if (v412 <= 44015000.0 || v406 <= 0.0)
            {
              v243 = 0;
              v242 = 0.0;
              v241 = 0.0;
              if (v413 <= 44015000.0)
              {
                goto LABEL_300;
              }
            }

            else
            {
              v240 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v240) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              v241 = v405[0] / v406;
              ++*(v240 + 24 * v111);
              v242 = 1.0;
              v243 = 1;
              if (v413 <= 44015000.0)
              {
LABEL_300:
                v246 = 0;
                v245 = 0.0;
                v247 = 0.0;
                if (v414 > 44015000.0)
                {
                  goto LABEL_301;
                }

LABEL_305:
                v251 = 0;
                v250 = 0.0;
                v249 = 0.0;
                if (v415 > 44015000.0)
                {
                  goto LABEL_306;
                }

LABEL_310:
                v254 = 0;
                v253 = 0.0;
                v255 = 0.0;
                if (v416 > 44015000.0)
                {
                  goto LABEL_311;
                }

LABEL_315:
                v259 = 0;
                v258 = 0.0;
                v257 = 0.0;
                if (v417 > 44015000.0)
                {
                  goto LABEL_316;
                }

LABEL_319:
                v262 = 0;
                v261 = 0.0;
                goto LABEL_320;
              }
            }

            if (v407 <= 0.0)
            {
              goto LABEL_300;
            }

            v244 = *(a1 + 752);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v244) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v245 = v405[1] / v407;
            ++*(v244 + 24 * v111 + 4);
            v239 = 1.0;
            v246 = 1;
            v247 = 0.0;
            if (v414 <= 44015000.0)
            {
              goto LABEL_305;
            }

LABEL_301:
            if (v408 <= 0.0)
            {
              goto LABEL_305;
            }

            v248 = *(a1 + 752);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v248) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v249 = v405[2] / v408;
            ++*(v248 + 24 * v111 + 8);
            v250 = 1.0;
            v251 = 1;
            if (v415 <= 44015000.0)
            {
              goto LABEL_310;
            }

LABEL_306:
            if (v409 <= 0.0)
            {
              goto LABEL_310;
            }

            v252 = *(a1 + 752);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v252) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v253 = v405[3] / v409;
            ++*(v252 + 24 * v111 + 12);
            v247 = 1.0;
            v254 = 1;
            v255 = 0.0;
            if (v416 <= 44015000.0)
            {
              goto LABEL_315;
            }

LABEL_311:
            if (v410 <= 0.0)
            {
              goto LABEL_315;
            }

            v256 = *(a1 + 752);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v256) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v257 = v405[4] / v410;
            ++*(v256 + 24 * v111 + 16);
            v258 = 1.0;
            v259 = 1;
            if (v417 <= 44015000.0)
            {
              goto LABEL_319;
            }

LABEL_316:
            if (v411 <= 0.0)
            {
              goto LABEL_319;
            }

            v260 = *(a1 + 752);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v260) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v261 = v405[5] / v411;
            ++*(v260 + 24 * v111 + 20);
            v255 = 1.0;
            v262 = 1;
LABEL_320:
            v263 = *(a1 + 680);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 688) - v263) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v265 = (v263 + 24 * v111);
            v264 = *v265;
            v266 = 0xAAAAAAAAAAAAAAABLL * ((v265[1] - *v265) >> 3);
            if (v266 <= v227)
            {
              goto LABEL_474;
            }

            v267 = (v264 + 24 * v227);
            v268 = 0.1;
            if (v241 > *v267)
            {
              v268 = 0.05;
            }

            v269 = *v267 + ((v242 * v268) * (v241 - *v267));
            *v267 = v269;
            v270 = *(a1 + 552);
            if (v269 < v270)
            {
              v270 = v269;
            }

            v271 = v269 > *a1 ? v270 : *a1;
            *v267 = v271;
            if (v266 <= v232)
            {
              goto LABEL_474;
            }

            v272 = v264 + 24 * v232;
            v274 = *(v272 + 4);
            v273 = (v272 + 4);
            v275 = v274;
            v276 = 0.1;
            if (v245 > v274)
            {
              v276 = 0.05;
            }

            v277 = v275 + ((v239 * v276) * (v245 - v275));
            *v273 = v277;
            v278 = *(a1 + 556);
            if (v277 < v278)
            {
              v278 = v277;
            }

            v279 = v277 > *a1 ? v278 : *a1;
            *v273 = v279;
            if (v266 <= v233)
            {
              goto LABEL_474;
            }

            v280 = v264 + 24 * v233;
            v282 = *(v280 + 8);
            v281 = (v280 + 8);
            v283 = v282;
            v284 = 0.1;
            if (v249 > v282)
            {
              v284 = 0.05;
            }

            v285 = v283 + ((v250 * v284) * (v249 - v283));
            *v281 = v285;
            v286 = *(a1 + 560);
            if (v285 < v286)
            {
              v286 = v285;
            }

            v287 = v285 > *a1 ? v286 : *a1;
            *v281 = v287;
            if (v266 <= v235)
            {
              goto LABEL_474;
            }

            v288 = v264 + 24 * v235;
            v290 = *(v288 + 12);
            v289 = (v288 + 12);
            v291 = v290;
            v292 = 0.1;
            if (v253 > v290)
            {
              v292 = 0.05;
            }

            v293 = v291 + ((v247 * v292) * (v253 - v291));
            *v289 = v293;
            v294 = *(a1 + 564);
            if (v293 < v294)
            {
              v294 = v293;
            }

            v295 = v293 > *a1 ? v294 : *a1;
            *v289 = v295;
            if (v266 <= v236)
            {
              goto LABEL_474;
            }

            v296 = v264 + 24 * v236;
            v298 = *(v296 + 16);
            v297 = (v296 + 16);
            v299 = v298;
            v300 = 0.1;
            if (v257 > v298)
            {
              v300 = 0.05;
            }

            v301 = v299 + ((v258 * v300) * (v257 - v299));
            *v297 = v301;
            v302 = *(a1 + 568);
            if (v301 < v302)
            {
              v302 = v301;
            }

            v303 = v301 > *a1 ? v302 : *a1;
            *v297 = v303;
            if (v266 <= v238)
            {
              goto LABEL_474;
            }

            v304 = v264 + 24 * v238;
            v306 = *(v304 + 20);
            v305 = (v304 + 20);
            v307 = v306;
            v308 = 0.1;
            if (v261 > v306)
            {
              v308 = 0.05;
            }

            v309 = v307 + ((v255 * v308) * (v261 - v307));
            *v305 = v309;
            v310 = *(a1 + 572);
            if (v309 < v310)
            {
              v310 = v309;
            }

            v311 = v309 > *a1 ? v310 : *a1;
            *v305 = v311;
            v312 = *(a1 + 704);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 712) - v312) >> 3) <= v111)
            {
              goto LABEL_474;
            }

            v313 = (v312 + 24 * v111);
            v314 = v313[1];
            if (v241 <= *v313)
            {
              v315 = 0.1;
            }

            else
            {
              v315 = 0.05;
            }

            v316 = *v313 + ((v242 * v315) * (v241 - *v313));
            *v313 = v316;
            v317 = *(a1 + 552);
            if (v316 < v317)
            {
              v317 = v316;
            }

            if (v316 > *a1)
            {
              v318 = v317;
            }

            else
            {
              v318 = *a1;
            }

            if (v245 <= v314)
            {
              v319 = 0.1;
            }

            else
            {
              v319 = 0.05;
            }

            v320 = v314 + ((v239 * v319) * (v245 - v314));
            *v313 = v318;
            v313[1] = v320;
            v321 = *(a1 + 556);
            if (v320 < v321)
            {
              v321 = v320;
            }

            if (v320 > *a1)
            {
              v322 = v321;
            }

            else
            {
              v322 = *a1;
            }

            v323 = v313[2];
            v324 = v313[3];
            if (v249 <= v323)
            {
              v325 = 0.1;
            }

            else
            {
              v325 = 0.05;
            }

            v326 = v323 + ((v250 * v325) * (v249 - v323));
            v313[1] = v322;
            v313[2] = v326;
            v327 = *a1;
            v328 = *(a1 + 560);
            if (v326 < v328)
            {
              v328 = v326;
            }

            if (v326 > v327)
            {
              v327 = v328;
            }

            if (v253 <= v324)
            {
              v329 = 0.1;
            }

            else
            {
              v329 = 0.05;
            }

            v330 = v324 + ((v247 * v329) * (v253 - v324));
            v313[2] = v327;
            v313[3] = v330;
            v331 = *a1;
            v332 = *(a1 + 564);
            if (v330 < v332)
            {
              v332 = v330;
            }

            if (v330 > v331)
            {
              v331 = v332;
            }

            v333 = v313[4];
            v334 = v313[5];
            if (v257 <= v333)
            {
              v335 = 0.1;
            }

            else
            {
              v335 = 0.05;
            }

            v336 = v333 + ((v258 * v335) * (v257 - v333));
            v313[3] = v331;
            v313[4] = v336;
            v337 = *a1;
            v338 = *(a1 + 568);
            if (v336 < v338)
            {
              v338 = v336;
            }

            if (v336 > v337)
            {
              v337 = v338;
            }

            if (v261 <= v334)
            {
              v339 = 0.1;
            }

            else
            {
              v339 = 0.05;
            }

            v340 = v334 + ((v255 * v339) * (v261 - v334));
            v313[4] = v337;
            v313[5] = v340;
            v341 = *a1;
            v342 = *(a1 + 572);
            if (v340 < v342)
            {
              v342 = v340;
            }

            if (v340 > v341)
            {
              v341 = v342;
            }

            v313[5] = v341;
            if (v243)
            {
              v343 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v343) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v343 + 24 * v111) >= 51)
              {
                v344 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v344) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v346 = (v344 + 24 * v111);
                v345 = *v346;
                if (0xAAAAAAAAAAAAAAABLL * ((v346[1] - *v346) >> 3) <= v227)
                {
                  goto LABEL_474;
                }

                *(v345 + 24 * v227) = *(v345 + 24 * v227) + (((*v267 / v318) - *(v345 + 24 * v227)) * 0.1);
              }
            }

            if (v246)
            {
              v347 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v347) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v347 + 24 * v111 + 4) >= 51)
              {
                v348 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v348) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v350 = (v348 + 24 * v111);
                v349 = *v350;
                if (0xAAAAAAAAAAAAAAABLL * ((v350[1] - *v350) >> 3) <= v232)
                {
                  goto LABEL_474;
                }

                *(v349 + 24 * v232 + 4) = *(v349 + 24 * v232 + 4) + (((*v273 / v313[1]) - *(v349 + 24 * v232 + 4)) * 0.1);
              }
            }

            if (v251)
            {
              v351 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v351) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v351 + 24 * v111 + 8) >= 51)
              {
                v352 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v352) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v354 = (v352 + 24 * v111);
                v353 = *v354;
                if (0xAAAAAAAAAAAAAAABLL * ((v354[1] - *v354) >> 3) <= v233)
                {
                  goto LABEL_474;
                }

                *(v353 + 24 * v233 + 8) = *(v353 + 24 * v233 + 8) + (((*v281 / v313[2]) - *(v353 + 24 * v233 + 8)) * 0.1);
              }
            }

            if (v254)
            {
              v355 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v355) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v355 + 24 * v111 + 12) >= 51)
              {
                v356 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v356) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v358 = (v356 + 24 * v111);
                v357 = *v358;
                if (0xAAAAAAAAAAAAAAABLL * ((v358[1] - *v358) >> 3) <= v235)
                {
                  goto LABEL_474;
                }

                *(v357 + 24 * v235 + 12) = *(v357 + 24 * v235 + 12) + (((*v289 / v313[3]) - *(v357 + 24 * v235 + 12)) * 0.1);
              }
            }

            if (v259)
            {
              v359 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v359) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v359 + 24 * v111 + 16) >= 51)
              {
                v360 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v360) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v362 = (v360 + 24 * v111);
                v361 = *v362;
                if (0xAAAAAAAAAAAAAAABLL * ((v362[1] - *v362) >> 3) <= v236)
                {
                  goto LABEL_474;
                }

                *(v361 + 24 * v236 + 16) = *(v361 + 24 * v236 + 16) + (((*v297 / v313[4]) - *(v361 + 24 * v236 + 16)) * 0.1);
              }
            }

            if (v262)
            {
              v363 = *(a1 + 752);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 760) - v363) >> 3) <= v111)
              {
                goto LABEL_474;
              }

              if (*(v363 + 24 * v111 + 20) >= 51)
              {
                v364 = *(a1 + 728);
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - v364) >> 3) <= v111)
                {
                  goto LABEL_474;
                }

                v366 = (v364 + 24 * v111);
                v365 = *v366;
                if (0xAAAAAAAAAAAAAAABLL * ((v366[1] - *v366) >> 3) <= v238)
                {
                  goto LABEL_474;
                }

                *(v365 + 24 * v238 + 20) = *(v365 + 24 * v238 + 20) + (((*v305 / v313[5]) - *(v365 + 24 * v238 + 20)) * 0.1);
              }
            }

            v110 = a16[1];
          }

          if (++v111 >= v110)
          {
            goto LABEL_450;
          }

          continue;
        }
      }

      goto LABEL_15;
    }
  }

  v400 = 0uLL;
  v402 = 0uLL;
  v398 = 0uLL;
  v399 = 0uLL;
  v396 = 0uLL;
  v397 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v71 = 0uLL;
  v72 = 0uLL;
  v73 = 0uLL;
  while (v31 > v42)
  {
    v75 = *&v19[24 * v42];
    v76 = *&v19[24 * v42 + 8] - v75;
    if (v76)
    {
      v77 = 0xFC0FC0FC0FC0FC1 * (v76 >> 2);
      if (v77 <= 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77;
      }

      v79 = v75 + 8;
      do
      {
        v62 = vmlaq_f32(v62, v38, v79[-8]);
        v61 = vmlaq_f32(v61, v38, v79[-7]);
        v60 = vmlaq_f32(v60, v38, v79[-6]);
        v59 = vmlaq_f32(v59, v38, v79[-5]);
        v58 = vmlaq_f32(v58, v38, v79[-4]);
        v57 = vmlaq_f32(v57, v38, v79[-3]);
        v56 = vmlaq_f32(v56, v38, v79[-2]);
        v55 = vmlaq_f32(v55, v38, v79[-1]);
        v54 = vmlaq_f32(v54, v38, *v79);
        v53 = vmlaq_f32(v53, v38, v79[1]);
        v52 = vmlaq_f32(v52, v38, v79[2]);
        v51 = vmlaq_f32(v51, v38, v79[3]);
        v50 = vmlaq_f32(v50, v38, v79[4]);
        v49 = vmlaq_f32(v49, v38, v79[5]);
        v48 = vmlaq_f32(v48, v38, v79[6]);
        v46 = vmlaq_f32(v46, v38, v79[7]);
        v47 = v47 + (v79[8].f32[0] * *&a8);
        v79 = (v79 + 260);
        --v78;
      }

      while (v78);
    }

    v74 = (*v40 + 260 * v45);
    v73 = vaddq_f32(v73, *v74);
    v72 = vaddq_f32(v72, v74[1]);
    v71 = vaddq_f32(v71, v74[2]);
    v64 = vaddq_f32(v64, v74[3]);
    v70 = vaddq_f32(v70, v74[4]);
    v69 = vaddq_f32(v69, v74[5]);
    v68 = vaddq_f32(v68, v74[6]);
    v67 = vaddq_f32(v67, v74[7]);
    v66 = vaddq_f32(v66, v74[8]);
    v65 = vaddq_f32(v65, v74[9]);
    v396 = vaddq_f32(v396, v74[10]);
    v397 = vaddq_f32(v397, v74[11]);
    v398 = vaddq_f32(v398, v74[12]);
    v399 = vaddq_f32(v399, v74[13]);
    v400 = vaddq_f32(v400, v74[14]);
    v402 = vaddq_f32(v402, v74[15]);
    v63 = v63 + v74[16].f32[0];
    if (v35 <= v42)
    {
      v42 = 0;
    }

    else
    {
      v42 = v42 + 1;
    }

    if (++v45 == v44)
    {
      goto LABEL_35;
    }
  }

LABEL_474:
  __break(1u);
}

float webrtc::SignalDependentErleEstimator::UpdateCorrectionFactors(webrtc::ArrayView<float const,65l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,webrtc::ArrayView<std::array<float,65ul> const,-4711l>,std::vector<BOOL> const&)::$_0::operator()(float *a1, uint64_t a2, float *a3)
{
  *a3 = ((((((a1[1] + 0.0) + a1[2]) + a1[3]) + a1[4]) + a1[5]) + a1[6]) + a1[7];
  a3[1] = (((((((a1[8] + 0.0) + a1[9]) + a1[10]) + a1[11]) + a1[12]) + a1[13]) + a1[14]) + a1[15];
  a3[2] = (((((((a1[16] + 0.0) + a1[17]) + a1[18]) + a1[19]) + a1[20]) + a1[21]) + a1[22]) + a1[23];
  a3[3] = (((((((a1[24] + 0.0) + a1[25]) + a1[26]) + a1[27]) + a1[28]) + a1[29]) + a1[30]) + a1[31];
  a3[4] = (((((((((((((((a1[32] + 0.0) + a1[33]) + a1[34]) + a1[35]) + a1[36]) + a1[37]) + a1[38]) + a1[39]) + a1[40]) + a1[41]) + a1[42]) + a1[43]) + a1[44]) + a1[45]) + a1[46]) + a1[47];
  result = ((((((((((((((((a1[48] + 0.0) + a1[49]) + a1[50]) + a1[51]) + a1[52]) + a1[53]) + a1[54]) + a1[55]) + a1[56]) + a1[57]) + a1[58]) + a1[59]) + a1[60]) + a1[61]) + a1[62]) + a1[63]) + a1[64];
  a3[5] = result;
  return result;
}

void *std::vector<std::vector<std::array<float,65ul>>>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *std::vector<std::vector<std::array<float,6ul>>>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::SignalModelEstimator::Update(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, float *a5, float a6, float a7)
{
  for (i = 1; i != 129; ++i)
  {
    if (a5[i] == 0.0)
    {
      v23 = *(a1 + 12044) + (*(a1 + 12044) * -0.3);
      goto LABEL_8;
    }
  }

  v15 = 0;
  v16 = 0.0;
  v17.i64[0] = 0x3400000034000000;
  v17.i64[1] = 0x3400000034000000;
  v18 = vdupq_n_s32(0xC2FDE2A9);
  v19 = vdupq_n_s32(0x3F317218u);
  do
  {
    v20 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(*&a5[v15 + 1]), v17), v18), v19);
    v21 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(*&a5[v15 + 5]), v17), v18), v19);
    v16 = (((((((v16 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3];
    v15 += 8;
  }

  while (v15 != 128);
  v22 = (a6 - *a5) * 0.0077519;
  v23 = *(a1 + 12044) + (((exp2f(((v16 * 0.0077519) * 0.43429) * 3.3073) / v22) - *(a1 + 12044)) * 0.3);
LABEL_8:
  *(a1 + 12044) = v23;
  v24 = a4 + 16;
  v25 = 0.0;
  v26 = 128;
  do
  {
    v25 = (((((((v25 + COERCE_FLOAT(*(v24 - 16))) + COERCE_FLOAT(HIDWORD(*(v24 - 16)))) + COERCE_FLOAT(*(v24 - 8))) + COERCE_FLOAT(HIDWORD(*(v24 - 16)))) + COERCE_FLOAT(*v24)) + COERCE_FLOAT(HIDWORD(*v24))) + COERCE_FLOAT(*(v24 + 8))) + COERCE_FLOAT(HIDWORD(*v24));
    v24 += 32;
    v26 -= 8;
  }

  while (v26);
  v27 = (v25 + *(a4 + 512)) * 0.0077519;
  v28 = a6 * 0.0077519;
  v29 = a5 + 1;
  v30 = (a4 + 4);
  v31 = 0.0;
  v32 = 128;
  v33 = 0.0;
  v34 = 0.0;
  do
  {
    v35 = *(v29 - 1) - v28;
    v36 = *v29 - v28;
    v37 = *(v30 - 1) - v27;
    v38 = *v30 - v27;
    v31 = (v31 + (v35 * v37)) + (v36 * v38);
    v33 = (v33 + (v35 * v35)) + (v36 * v36);
    v34 = (v34 + (v37 * v37)) + (v38 * v38);
    v29 += 2;
    v30 += 2;
    v32 -= 2;
  }

  while (v32);
  v39 = a5[128] - v28;
  v40 = *(a1 + 12040) + ((((((v33 + (v39 * v39)) * 0.0077519) - ((((v31 + (v39 * (*(a4 + 512) - v27))) * 0.0077519) * ((v31 + (v39 * (*(a4 + 512) - v27))) * 0.0077519)) / (((v34 + ((*(a4 + 512) - v27) * (*(a4 + 512) - v27))) * 0.0077519) + 0.0001))) / (*a1 + 0.0001)) - *(a1 + 12040)) * 0.3);
  *(a1 + 12040) = v40;
  *(a1 + 4) = *(a1 + 4) + a7;
  v41 = *(a1 + 12008);
  *(a1 + 12008) = v41 - 1;
  if (v41 < 2)
  {
    webrtc::PriorSignalModelEstimator::Update((a1 + 12012), a1 + 8);
    bzero((a1 + 8), 0x2EE0uLL);
    *(a1 + 12008) = 500;
    *a1 = ((*(a1 + 4) / 500.0) + *a1) * 0.5;
    *(a1 + 4) = 0;
    goto LABEL_26;
  }

  v42 = *(a1 + 12036);
  if (v42 < 100.0 && v42 >= 0.0)
  {
    v43 = (v42 * 10.0);
    if (v43 >= 0x3E8)
    {
      goto LABEL_45;
    }

    ++*(a1 + 8 + 4 * v43);
  }

  if (v23 < 50.0 && v23 >= 0.0)
  {
    v44 = v23 * 20.0;
    if (v44 >= 0x3E8)
    {
      goto LABEL_45;
    }

    ++*(a1 + 4 * v44 + 4008);
  }

  if (v40 < 100.0 && v40 >= 0.0)
  {
    v45 = (v40 * 10.0);
    if (v45 < 0x3E8)
    {
      ++*(a1 + 4 * v45 + 8008);
      goto LABEL_26;
    }

LABEL_45:
    __break(1u);
    return;
  }

LABEL_26:
  v46 = 0;
  v47 = a1 + 12048;
  v48 = a1 + 12564;
  v50 = a1 + 12048 < a3 + 516 && v48 > a3;
  _CF = v48 <= a2 || v47 >= a2 + 516;
  if (_CF && !v50)
  {
    v52 = 0;
    v53.i64[0] = 0x4000000040000000;
    v53.i64[1] = 0x4000000040000000;
    __asm { FMOV            V1.4S, #1.0 }

    v58 = vdupq_n_s32(0x38D1B717u);
    v59 = vdupq_n_s32(0xC2FDE2A9);
    v60.i64[0] = 0x3400000034000000;
    v60.i64[1] = 0x3400000034000000;
    v61 = vdupq_n_s32(0xBF317218);
    v62.i64[0] = 0x3F0000003F000000;
    v62.i64[1] = 0x3F0000003F000000;
    v46 = 128;
    do
    {
      v63 = *(a2 + v52);
      v64 = vmlaq_f32(_Q1, v53, v63);
      *(v47 + v52) = vmlaq_f32(*(v47 + v52), v62, vsubq_f32(vaddq_f32(vmulq_f32(vaddq_f32(*(a3 + v52), _Q1), vdivq_f32(vaddq_f32(v63, v63), vaddq_f32(v64, v58))), vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(v64), v60), v59), v61)), *(v47 + v52)));
      v52 += 16;
    }

    while (v52 != 512);
  }

  v65 = 4 * v46;
  do
  {
    *(v47 + v65) = *(v47 + v65) + (((((*(a3 + v65) + 1.0) * ((*(a2 + v65) + *(a2 + v65)) / (((*(a2 + v65) * 2.0) + 1.0) + 0.0001))) + ((vcvts_n_f32_u32(COERCE_UNSIGNED_INT((*(a2 + v65) * 2.0) + 1.0), 0x17uLL) + -126.94) * -0.69315)) - *(v47 + v65)) * 0.5);
    v65 += 4;
  }

  while (v65 != 516);
  v66 = a1 + 12064;
  v67 = 0.0;
  v68 = 128;
  do
  {
    v67 = (((((((v67 + COERCE_FLOAT(*(v66 - 16))) + COERCE_FLOAT(HIDWORD(*(v66 - 16)))) + COERCE_FLOAT(*(v66 - 8))) + COERCE_FLOAT(HIDWORD(*(v66 - 16)))) + COERCE_FLOAT(*v66)) + COERCE_FLOAT(HIDWORD(*v66))) + COERCE_FLOAT(*(v66 + 8))) + COERCE_FLOAT(HIDWORD(*v66));
    v66 += 32;
    v68 -= 8;
  }

  while (v68);
  *(a1 + 12036) = (v67 + *(a1 + 12560)) * 0.0077519;
}

size_t webrtc::LimitSimulcastLayerCount(size_t a1, size_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x277D85DE8];
  (*(*a5 + 16))(&__p, a5, "WebRTC-LegacySimulcastLayerLimit", 32);
  v12 = HIBYTE(v32);
  if (SHIBYTE(v32) < 0)
  {
    v12 = v31;
  }

  if (v12 >= 8)
  {
    p_p = __p;
    if (SHIBYTE(v32) >= 0)
    {
      p_p = &__p;
    }

    v13 = *p_p == 0x64656C6261736944;
    if (SHIBYTE(v32) < 0)
    {
LABEL_11:
      operator delete(__p);
      if (v13)
      {
        return a2;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    if (SHIBYTE(v32) < 0)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    return a2;
  }

LABEL_12:
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v35 = 9;
  if (v34 <= "max_ratio" && &v34[1] + 1 > "max_ratio")
  {
    __break(1u);
  }

  strcpy(v34, "max_ratio");
  v36 = 0;
  __p = &unk_288293880;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39[0] = &__p;
  (*(*a5 + 16))(&v27, a5, "WebRTC-SimulcastLayerLimitRoundUp", 33);
  if ((v29 & 0x80u) == 0)
  {
    v15 = &v27;
  }

  else
  {
    v15 = v27;
  }

  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v28;
  }

  webrtc::ParseFieldTrial(v39, 1, v15, v16);
  if (v29 < 0)
  {
    operator delete(v27);
  }

  if (v28 > a1)
  {
    a1 = v28;
  }

  if (a1 < a2)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      __p = &unk_288293910;
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/config/simulcast.cc");
      __p = &unk_288293910;
      if ((v35 & 0x80000000) == 0)
      {
LABEL_27:
        v25 = v31;
        if (!v31)
        {
          return a1;
        }

LABEL_28:
        v32 = v25;
        operator delete(v25);
        return a1;
      }
    }

    operator delete(v34[0]);
    v25 = v31;
    if (!v31)
    {
      return a1;
    }

    goto LABEL_28;
  }

  __p = &unk_288293910;
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return a2;
}

void webrtc::anonymous namespace::InterpolateSimulcastFormat(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (a7 <= 5)
  {
    if (((1 << a7) & 0x13) != 0)
    {
    }

    else
    {
      v16 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    }
  }

  if ((v9 & 1) == 0)
  {
    v17 = v56;
    v18 = v57 - v56;
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 3);
    if (v19 <= 1)
    {
      goto LABEL_74;
    }

    v20 = v57;
    *(v57 - 24) = *(v57 - 4);
    *(v20 - 1) = *(v17 + v18 - 48);
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v8 > 5)
  {
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v19 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((1 << v8) & 0x13) != 0)
    {
    }

    else
    {
      v22 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    }

    v23 = v59;
    v24 = v60;
    v25 = v60 - v59;
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 3);
    if ((v9 & 1) == 0)
    {
LABEL_14:
      if (v19 > 1)
      {
        v26 = &v23[v25];
        *(v26 - 24) = *(v26 - 4);
        *(v26 - 1) = *(v26 - 6);
        goto LABEL_16;
      }

LABEL_74:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/config/simulcast.cc", 176, "formats.size() >= 2u", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, v19);
      webrtc::GetSimulcastConfig();
      return;
    }
  }

LABEL_16:
  if (v24 == v23)
  {
    if (v24)
    {
LABEL_22:
      operator delete(v23);
    }

    v28 = -1;
LABEL_25:
    v19 = v28 - 1;
    v29 = v56;
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 3);
    if (v30 > v19 && v30 > v28)
    {
      v31 = *&a4;
      v32 = &v56[40 * v19];
      v33 = &v56[40 * v28];
      v34 = ((*(v32 + 1) * *v32 - a3 * a2) / (*(v32 + 1) * *v32 - *(v33 + 1) * *v33));
      if ((v10 & 1) == 0)
      {
        v31 = 0.1;
      }

      v35 = llround((1.0 - v34) * *(v32 + 2));
      v36 = llround(*(v33 + 2) * v34);
      v37 = llround((1.0 - v34) * *(v32 + 3));
      if (v31 <= v34)
      {
        v38 = &v56[40 * v28];
      }

      else
      {
        v38 = v32;
      }

      v39 = *(v38 + 1);
      v40 = v36 == 0x8000000000000000 || v35 == 0x8000000000000000;
      v41 = v35 + v36;
      if (v40)
      {
        v41 = 0x8000000000000000;
      }

      if (v35 == 0x7FFFFFFFFFFFFFFFLL || v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      v44 = llround(v34 * *(v33 + 3));
      v45 = v44 == 0x8000000000000000 || v37 == 0x8000000000000000;
      v46 = v44 + v37;
      if (v45)
      {
        v46 = 0x8000000000000000;
      }

      if (v37 == 0x7FFFFFFFFFFFFFFFLL || v44 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      v49 = llround((1.0 - v34) * *(v32 + 4));
      v50 = llround(v34 * *(v33 + 4));
      v51 = v50 == 0x8000000000000000 || v49 == 0x8000000000000000;
      v52 = v50 + v49;
      if (v51)
      {
        v52 = 0x8000000000000000;
      }

      *a1 = a2;
      *(a1 + 4) = a3;
      v53 = v49 == 0x7FFFFFFFFFFFFFFFLL || v50 == 0x7FFFFFFFFFFFFFFFLL;
      *(a1 + 8) = v39;
      *(a1 + 16) = v43;
      if (v53)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      *(a1 + 24) = v48;
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  v27 = 0;
  v28 = 0;
  while (a3 * a2 < *&v23[40 * v27 + 4] * *&v23[40 * v27])
  {
    v27 = ++v28;
    if (v19 <= v28)
    {
      goto LABEL_22;
    }
  }

  operator delete(v23);
  if (v28)
  {
    goto LABEL_25;
  }

  v29 = v56;
  v19 = v57;
  if (v57 == v56)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v55 = *(v56 + 1);
  *a1 = *v56;
  *(a1 + 16) = v55;
  v54 = *(v29 + 4);
LABEL_66:
  *(a1 + 32) = v54;

  operator delete(v29);
}

void std::vector<webrtc::anonymous namespace::SimulcastFormat>::insert[abi:sn200100]<webrtc::anonymous namespace::SimulcastFormat const*,0>(uint64_t *a1, _OWORD *a2, char *a3)
{
  v3 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return;
  }

  v5 = a1[1];
  v4 = a1[2];
  if ((v4 - v5) >= v3)
  {
    if (v3 > v5)
    {
      v10 = a2 + v5;
      v11 = a1[1];
      v12 = v11;
      if (a2 + v5 != a3)
      {
        while (v12)
        {
          v13 = *v10;
          v14 = *(v10 + 1);
          *(v12 + 32) = *(v10 + 4);
          *v12 = v13;
          *(v12 + 16) = v14;
          v10 += 40;
          v12 += 40;
          v11 += 40;
          if (v10 == a3)
          {
            goto LABEL_16;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_16:
      a1[1] = v11;
      if (v5 < 1)
      {
        return;
      }

      v15 = v11 - v3;
      if (v11 - v3 >= v5)
      {
        v17 = v11;
      }

      else
      {
        v16 = v11 - v3;
        v17 = v11;
        do
        {
          v18 = *v16;
          v19 = *(v16 + 16);
          *(v17 + 32) = *(v16 + 32);
          *v17 = v18;
          *(v17 + 16) = v19;
          v16 += 40;
          v17 += 40;
        }

        while (v16 < v5);
      }

      a1[1] = v17;
      if (v12 != v3)
      {
        v36 = v3;
        v37 = a2;
        memmove(v36, 0, v15);
        a2 = v37;
      }

      v26 = v5;

LABEL_28:
      memmove(0, a2, v26);
      return;
    }

    v20 = v5 - v3;
    if (v5 < v3)
    {
      a1[1] = v5;
      if (v5 != v3)
      {
LABEL_25:
        v25 = a2;
        memmove(v3, 0, v20);
        a2 = v25;
      }
    }

    else
    {
      v21 = v5 - v3;
      v22 = a1[1];
      do
      {
        v23 = *v21;
        v24 = *(v21 + 16);
        *(v22 + 32) = *(v21 + 32);
        *v22 = v23;
        *(v22 + 16) = v24;
        v21 += 40;
        v22 += 40;
      }

      while (v21 < v5);
      a1[1] = v22;
      if (v5 != v3)
      {
        goto LABEL_25;
      }
    }

    v26 = v3;

    goto LABEL_28;
  }

  v6 = *a1;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) - 0x3333333333333333 * ((v5 - *a1) >> 3);
  if (v7 > 0x666666666666666)
  {
    goto LABEL_46;
  }

  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v6) >> 3);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v27 = 8 * (-v6 >> 3);
  v28 = (v27 + v3);
  v29 = v27;
  do
  {
    if (!v29)
    {
      goto LABEL_45;
    }

    v30 = a2[1];
    *v29 = *a2;
    *(v29 + 16) = v30;
    *(v29 + 32) = *(a2 + 4);
    v29 += 40;
    a2 = (a2 + 40);
    v3 -= 40;
  }

  while (v3);
  v31 = a1[1];
  memcpy(v28, 0, v31);
  v33 = &v28[v31];
  a1[1] = 0;
  v34 = *a1;
  v35 = (v27 + *a1);
  memcpy(v35, *a1, -*a1);
  *a1 = v35;
  a1[1] = v33;
  a1[2] = 0;
  if (v34)
  {

    operator delete(v34);
  }
}

void webrtc::SimulcastLayerList::AddLayer(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v4 = *(a2 + 24);
  operator new();
}

void *std::vector<std::vector<webrtc::SimulcastLayer>>::push_back[abi:sn200100](void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    std::vector<std::vector<webrtc::SimulcastLayer>>::__emplace_back_slow_path<std::vector<webrtc::SimulcastLayer> const&>(a1);
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = v3 + 3;
  a1[1] = v3 + 3;
  return result;
}

void webrtc::SimulcastLayerList::GetAllLayers(webrtc::SimulcastLayerList *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v4 != v4[1])
      {
        if (!a2[2])
        {
          operator new();
        }

        *a2 = 0;
        __break(1u);
        *a2 = 0;
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *a2 = 0;
      v4 += 3;
    }

    while (v4 != v3);
  }
}

void std::vector<std::vector<webrtc::SimulcastLayer>>::__emplace_back_slow_path<std::vector<webrtc::SimulcastLayer> const&>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v2 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    else
    {
      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::SimulcastEncoderAdapter::StreamContext::~StreamContext(webrtc::SimulcastEncoderAdapter::StreamContext *this)
{
  *this = &unk_28829FB28;
  v2 = *(this + 2);
  if (v2 && *v2)
  {
    (*(**v2 + 48))(*v2);
    (*(**v2 + 40))(*v2, 0);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C4057661CB1);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v4 + 34);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v4 + 2);
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    MEMORY[0x2743DA540](v4, 0x10B2C40B7F795D7);
  }
}

{
  webrtc::SimulcastEncoderAdapter::StreamContext::~StreamContext(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::SimulcastEncoderAdapter::StreamContext::OnEncodedImage(webrtc::SimulcastEncoderAdapter::StreamContext *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = *(this + 1);
  if (!v8)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc", 244, "parent_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
  }

  v10 = *(this + 8);
  webrtc::EncodedImage::EncodedImage(v18, a2);
  memcpy(__dst, a3, 0x661uLL);
  v23[0] = 0;
  v33 = 0;
  if (*(a3 + 1848) == 1)
  {
    webrtc::GenericFrameInfo::GenericFrameInfo(v23, (a3 + 1640));
    v33 = 1;
  }

  v34[0] = 0;
  v40 = 0;
  if (*(a3 + 1984) == 1)
  {
    webrtc::FrameDependencyStructure::FrameDependencyStructure(v34, (a3 + 1856));
    v40 = 1;
  }

  v41 = *(a3 + 996);
  v42[0] = 0;
  v44 = 0;
  if (*(a3 + 2056) == 1)
  {
    v43 = -1;
    v11 = *(a3 + 512);
    if (v11 != -1)
    {
      v21 = v42;
      (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8sn200100IZNS0_6__ctorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorIS9_LNS0_6_TraitE1EEEEEvRSA_OT_EUlSJ_E_JSG_EEEDcmSJ_DpOT0____fdiagonal[v11])(&v21, a3 + 2000);
      v43 = v11;
    }

    v44 = 1;
  }

  v19 = v10;
  v20 = 1;
  v12 = (*(**(v8 + 584) + 16))(*(v8 + 584), v18, __dst);
  if (v44 == 1)
  {
    if (v43 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v43])(&v21, v42);
    }

    v43 = -1;
  }

  if (v40 == 1)
  {
    v13 = __p;
    if (!__p)
    {
LABEL_28:
      if (v36)
      {
        operator delete(v37);
      }

      if (v34[16])
      {
        operator delete(v35);
      }

      goto LABEL_32;
    }

    v14 = v39;
    v15 = __p;
    if (v39 == __p)
    {
LABEL_27:
      v39 = v13;
      operator delete(v15);
      goto LABEL_28;
    }

    while (1)
    {
      if (*(v14 - 3))
      {
        operator delete(*(v14 - 2));
        if ((*(v14 - 6) & 1) == 0)
        {
LABEL_21:
          if (*(v14 - 12))
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      else if ((*(v14 - 6) & 1) == 0)
      {
        goto LABEL_21;
      }

      operator delete(*(v14 - 5));
      if (*(v14 - 12))
      {
LABEL_25:
        operator delete(*(v14 - 11));
      }

LABEL_18:
      v14 -= 13;
      if (v14 == v13)
      {
        v15 = __p;
        goto LABEL_27;
      }
    }
  }

LABEL_32:
  if (v33 != 1)
  {
    goto LABEL_40;
  }

  if (v32)
  {
    operator delete(v32);
  }

  if (v30)
  {
    operator delete(v31);
    if ((v28 & 1) == 0)
    {
LABEL_37:
      if ((v26 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_43:
      operator delete(v27);
      if ((v24 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v28 & 1) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v29);
  if (v26)
  {
    goto LABEL_43;
  }

LABEL_38:
  if (v24)
  {
LABEL_39:
    operator delete(v25);
  }

LABEL_40:
  webrtc::EncodedImage::~EncodedImage(v18);
  return v12;
}

uint64_t webrtc::SimulcastEncoderAdapter::StreamContext::OnDroppedFrame(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(result + 8))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc", 251, "parent_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    return webrtc::SimulcastEncoderAdapter::SimulcastEncoderAdapter(v9, v10, v11, v12, v13);
  }

  return result;
}

void webrtc::SimulcastEncoderAdapter::SimulcastEncoderAdapter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, webrtc::SdpVideoFormat *a5)
{
  *a1 = &unk_28829FB58;
  v6 = *a2;
  *(a1 + 8) = *a2;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  webrtc::SdpVideoFormat::SdpVideoFormat((a1 + 72), a5);
  *(a1 + 204) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 192) = 1;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 216) = 1;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 236) = 0;
  *(a1 + 252) = 1;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 1;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 324) = 1;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 360) = 1;
  *(a1 + 380) = 0;
  *(a1 + 364) = 0u;
  *(a1 + 396) = 1;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 432) = 1;
  *(a1 + 452) = 0;
  *(a1 + 436) = 0u;
  *(a1 + 468) = 1;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 540) = 0;
  *(a1 + 524) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 592) = a1 + 592;
  *(a1 + 600) = a1 + 592;
  *(a1 + 608) = 0;
  webrtc::RateControlSettings::RateControlSettings(&__p, *(a1 + 16));
}

void webrtc::SimulcastEncoderAdapter::~SimulcastEncoderAdapter(webrtc::SimulcastEncoderAdapter *this)
{
  *this = &unk_28829FB58;
  webrtc::SimulcastEncoderAdapter::DestroyStoredEncoders(this);
  webrtc::EncoderInfoSettings::~EncoderInfoSettings((this + 624));
  if (*(this + 76))
  {
    v2 = *(this + 75);
    v3 = *(*(this + 74) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 76) = 0;
    if (v2 != (this + 592))
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        *(v2 + 2) = 0;
        if (v5)
        {
          webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v5 + 34);
          webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v5 + 2);
          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          MEMORY[0x2743DA540](v5, 0x10B2C40B7F795D7);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != (this + 592));
    }
  }

  v8 = *(this + 70);
  if (v8)
  {
    v9 = *(this + 71);
    v10 = *(this + 70);
    if (v9 != v8)
    {
      v11 = v9 - 6;
      v12 = v9 - 6;
      v13 = v9 - 6;
      do
      {
        v14 = *v13;
        v13 -= 6;
        (*v14)(v12);
        v11 -= 6;
        v15 = v12 == v8;
        v12 = v13;
      }

      while (!v15);
      v10 = *(this + 70);
    }

    *(this + 71) = v8;
    operator delete(v10);
  }

  if ((*(this + 120) & 1) == 0)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 96, *(this + 13));
    if ((*(this + 95) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(*(this + 9));
    v16 = *(this + 1);
    if (!v16)
    {
      return;
    }

    goto LABEL_22;
  }

  operator delete(*(this + 16));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 96, *(this + 13));
  if (*(this + 95) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v16 = *(this + 1);
  if (!v16)
  {
    return;
  }

LABEL_22:
  if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 8))(v16);
  }
}

{
  webrtc::SimulcastEncoderAdapter::~SimulcastEncoderAdapter(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::SimulcastEncoderAdapter::DestroyStoredEncoders(webrtc::SimulcastEncoderAdapter *this)
{
  for (i = *(this + 76); i; i = *(this + 76))
  {
    v3 = *(this + 74);
    v5 = *v3;
    v4 = v3[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 76) = i - 1;
    v6 = v3[2];
    v3[2] = 0;
    if (v6)
    {
      webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v6 + 34);
      webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v6 + 2);
      v7 = *v6;
      *v6 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      MEMORY[0x2743DA540](v6, 0x10B2C40B7F795D7);
    }

    operator delete(v3);
  }
}

uint64_t webrtc::SimulcastEncoderAdapter::Release(webrtc::SimulcastEncoderAdapter *this)
{
  v1 = *(this + 71);
  if (*(this + 70) != v1)
  {
    v2 = *(v1 - 32);
    if (*v2)
    {
      (*(**v2 + 48))(*v2);
      (*(**v2 + 40))(*v2, 0);
    }

    *(v1 - 32) = 0;
    operator new();
  }

  *(this + 556) = 0;
  atomic_store(0, this + 12);
  return 0;
}

uint64_t webrtc::SimulcastEncoderAdapter::InitEncode(uint64_t a1, VideoCodec *this, uint64_t a3)
{
  v150 = *MEMORY[0x277D85DE8];
  v3 = 4294967292;
  if (!this)
  {
    return v3;
  }

  if (*(a3 + 4) < 1)
  {
    return v3;
  }

  if (!this->var6)
  {
    return v3;
  }

  var4 = this->var4;
  if (var4)
  {
    if (this->var3 > var4)
    {
      return v3;
    }
  }

  if (this->var1 < 2u)
  {
    return v3;
  }

  if (this->var2 < 2u)
  {
    return v3;
  }

  v6 = a1;
  if (this->var0 == 1 && this->var16.var0.var2)
  {
    a1 = v6;
    if (!v7)
    {
      return v3;
    }
  }

  v8 = (a1 + 168);
  (*(*a1 + 48))(a1);
  memcpy(v8, this, 0x17DuLL);
  var9 = this->var9;
  if (var9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = this->var9;
  }

  if (var9 >= 8)
  {
    v11 = v10 & 0xF8;
    p_var4 = &this->var11[0].var4;
    v15 = 0uLL;
    v16 = v11;
    v17 = 0uLL;
    do
    {
      v18.i32[0] = *(p_var4 - 27);
      v18.i32[1] = *(p_var4 - 18);
      v18.i32[2] = *(p_var4 - 9);
      v18.i32[3] = *p_var4;
      v19.i32[0] = p_var4[9];
      v19.i32[1] = p_var4[18];
      v19.i32[2] = p_var4[27];
      v19.i32[3] = p_var4[36];
      v15 = vaddq_s32(v18, v15);
      v17 = vaddq_s32(v19, v17);
      p_var4 += 72;
      v16 -= 8;
    }

    while (v16);
    v12 = vaddvq_s32(vaddq_s32(v17, v15));
    v13 = v6;
    if (v11 == v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v6;
  }

  v20 = v10 - v11;
  v21 = &this->var10[v11].var4;
  do
  {
    v22 = *v21;
    v21 += 9;
    v12 += v22;
    --v20;
  }

  while (v20);
LABEL_22:
  if (v12)
  {
    v23 = v10;
  }

  else
  {
    v23 = 1;
  }

  *(v13 + 552) = v23;
  if (!*(v13 + 200))
  {
    v26 = 1;
    goto LABEL_81;
  }

  v24 = (v13 + 204);
  if (v23 >= 2)
  {
    v27 = v13 + 240;
    v28 = *(v13 + 244);
    v29 = *(v13 + 208);
    v33 = v28 == v29;
    v30 = v28 < v29;
    if (v33)
    {
      v30 = *v27 < *v24;
      if (*v27 == *v24)
      {
        v31 = *(v13 + 256);
        v32 = *(v13 + 220);
        v33 = v31 == v32;
        v30 = v31 < v32;
        if (v33)
        {
          v30 = *(v13 + 248) < *(v13 + 212);
        }
      }
    }

    v33 = !v30;
    if (v30)
    {
      v25 = v13 + 240;
    }

    else
    {
      v25 = v13 + 204;
    }

    if (!v33)
    {
      v27 = v13 + 204;
    }

    if (v23 == 2)
    {
      goto LABEL_80;
    }

    v34 = 0;
    v35 = 36 * v23;
    v36 = v35 - 108;
    v37 = v35 - 72;
    while (1)
    {
      v38 = v13 + v34;
      v39 = v13 + v34 + 276;
      if (v36 == v34)
      {
        break;
      }

      v40 = (v38 + 312);
      v41 = *(v38 + 316);
      v42 = *(v38 + 280);
      v33 = v41 == v42;
      v43 = v41 < v42;
      if (v33)
      {
        v43 = *v40 < *v39;
        if (*v40 == *v39)
        {
          v44 = *(v38 + 328);
          v45 = *(v38 + 292);
          v33 = v44 == v45;
          v43 = v44 < v45;
          if (v33)
          {
            v43 = *(v38 + 320) < *(v38 + 284);
          }
        }
      }

      v13 = v6;
      if (v43)
      {
        v46 = v38 + 312;
      }

      else
      {
        v46 = v39;
      }

      if (!v43)
      {
        v39 = v40;
      }

      v47 = *(v46 + 4);
      v48 = *(v25 + 4);
      v33 = v47 == v48;
      v49 = v47 < v48;
      if (v33)
      {
        v49 = *v46 < *v25;
        if (*v46 == *v25)
        {
          v50 = *(v46 + 16);
          v51 = *(v25 + 16);
          v33 = v50 == v51;
          v49 = v50 < v51;
          if (v33)
          {
            v49 = *(v46 + 8) < *(v25 + 8);
          }
        }
      }

      if (v49)
      {
        v25 = v46;
      }

      v52 = *(v39 + 4);
      v53 = *(v27 + 4);
      v33 = v52 == v53;
      v54 = v52 < v53;
      if (v33)
      {
        v54 = *v39 < *v27;
        if (*v39 == *v27)
        {
          v55 = *(v39 + 16);
          v56 = *(v27 + 16);
          v33 = v55 == v56;
          v54 = v55 < v56;
          if (v33)
          {
            v54 = *(v39 + 8) < *(v27 + 8);
          }
        }
      }

      if (!v54)
      {
        v27 = v39;
      }

      v34 += 72;
      if (v37 == v34)
      {
        goto LABEL_80;
      }
    }

    v57 = *(v38 + 280);
    v58 = *(v25 + 4);
    v33 = v57 == v58;
    v59 = v57 < v58;
    if (v33 && (v59 = *v39 < *v25, *v39 == *v25) && (v60 = *(v38 + 292), v61 = *(v25 + 16), v33 = v60 == v61, v59 = v60 < v61, v33))
    {
      if (*(v38 + 284) >= *(v25 + 8))
      {
        goto LABEL_80;
      }
    }

    else if (!v59)
    {
      goto LABEL_80;
    }

    v25 = v39;
  }

  else
  {
    v25 = v13 + 204;
  }

LABEL_80:
  v26 = v24[9 * (954437177 * ((v25 - v24) >> 2)) + 8];
LABEL_81:
  webrtc::SimulcastEncoderAdapter::FetchOrCreateEncoderContext(&v146, v6, v26 & 1);
  v62 = v146;
  if (!v146)
  {
    return 4294967293;
  }

  v63 = this->var9;
  if (!this->var9)
  {
    var8 = 1;
    goto LABEL_108;
  }

  if (v63 >= 8)
  {
    v64 = v63 & 0xF8;
    v67 = &this->var11[0].var4;
    v68 = 0uLL;
    v69 = v64;
    v70 = 0uLL;
    do
    {
      v71.i32[0] = *(v67 - 27);
      v71.i32[1] = *(v67 - 18);
      v71.i32[2] = *(v67 - 9);
      v71.i32[3] = *v67;
      v72.i32[0] = v67[9];
      v72.i32[1] = v67[18];
      v72.i32[2] = v67[27];
      v72.i32[3] = v67[36];
      v68 = vaddq_s32(v71, v68);
      v70 = vaddq_s32(v72, v70);
      v67 += 72;
      v69 -= 8;
    }

    while (v69);
    v65 = vaddvq_s32(vaddq_s32(v70, v68));
    if (v64 == v63)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v73 = v63 - v64;
  v74 = &this->var10[v64].var4;
  do
  {
    v75 = *v74;
    v74 += 9;
    v65 += v75;
    --v73;
  }

  while (v73);
LABEL_92:
  if (v65)
  {
    if (v63 < 0x10)
    {
      v76 = 0;
      var8 = 0;
LABEL_106:
      v105 = v63 - v76;
      p_var8 = &this->var10[v76].var8;
      do
      {
        v107 = *p_var8;
        p_var8 += 36;
        var8 += v107;
        --v105;
      }

      while (v105);
      goto LABEL_108;
    }

    if (v63 >= 0x20)
    {
      v88 = 0;
      v76 = v63 & 0xE0;
      v89 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      do
      {
        v97.i8[0] = this[v88 / 0x180].var10[0].var8;
        v97.i8[1] = this[v88 / 0x180].var10[1].var8;
        v97.i8[2] = this[v88 / 0x180].var10[2].var8;
        v97.i8[3] = this[v88 / 0x180].var11[0].var8;
        v97.i8[4] = this[v88 / 0x180].var11[1].var8;
        v97.i8[5] = this[v88 / 0x180].var11[2].var8;
        v97.i8[6] = this[v88 / 0x180].var11[3].var8;
        v97.i8[7] = this[v88 / 0x180].var11[4].var8;
        v98.i8[0] = this[v88 / 0x180].var16.var3.var0;
        v98.i8[1] = this[v88 / 0x180 + 1].var3;
        v98.i8[2] = LOBYTE(this[v88 / 0x180 + 1].var10[0].var2);
        v98.i8[3] = LOBYTE(this[v88 / 0x180 + 1].var10[1].var2);
        v98.i8[4] = LOBYTE(this[v88 / 0x180 + 1].var10[2].var2);
        v98.i8[5] = LOBYTE(this[v88 / 0x180 + 1].var11[0].var2);
        v98.i8[6] = LOBYTE(this[v88 / 0x180 + 1].var11[1].var2);
        v98.i8[7] = LOBYTE(this[v88 / 0x180 + 1].var11[2].var2);
        v99.i8[0] = LOBYTE(this[v88 / 0x180 + 1].var11[3].var2);
        v99.i8[1] = LOBYTE(this[v88 / 0x180 + 1].var11[4].var2);
        v99.i8[2] = *(&this[v88 / 0x180 + 1].var13 + 4);
        v99.i8[3] = *(&this[v88 / 0x180 + 1].var16.var3 + 12);
        v99.i8[4] = this[v88 / 0x180 + 2].var6;
        v99.i8[5] = this[v88 / 0x180 + 2].var10[0].var5;
        v99.i8[6] = this[v88 / 0x180 + 2].var10[1].var5;
        v99.i8[7] = this[v88 / 0x180 + 2].var10[2].var5;
        v100.i8[0] = this[v88 / 0x180 + 2].var11[0].var5;
        v100.i8[1] = this[v88 / 0x180 + 2].var11[1].var5;
        v100.i8[2] = this[v88 / 0x180 + 2].var11[2].var5;
        v100.i8[3] = this[v88 / 0x180 + 2].var11[3].var5;
        v100.i8[4] = this[v88 / 0x180 + 2].var11[4].var5;
        v100.i8[5] = this[v88 / 0x180 + 2].var14.var1;
        v100.i8[6] = this[v88 / 0x180 + 2].var19;
        v100.i8[7] = this[v88 / 0x180 + 3].var9;
        v101 = vmovl_u8(v97);
        v102 = vmovl_u8(v98);
        v103 = vmovl_u8(v99);
        v104 = vmovl_u8(v100);
        v92 = vaddw_high_u16(v92, v102);
        v90 = vaddw_high_u16(v90, v101);
        v91 = vaddw_u16(v91, *v102.i8);
        v89 = vaddw_u16(v89, *v101.i8);
        v96 = vaddw_high_u16(v96, v104);
        v94 = vaddw_high_u16(v94, v103);
        v95 = vaddw_u16(v95, *v104.i8);
        v93 = vaddw_u16(v93, *v103.i8);
        v88 += 1152;
      }

      while (((v63 >> 5 << 7) | (v63 >> 5 << 10)) != v88);
      var8 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v93, v89), vaddq_s32(v95, v91)), vaddq_s32(vaddq_s32(v94, v90), vaddq_s32(v96, v92))));
      if (v76 == v63)
      {
        goto LABEL_108;
      }

      if ((v63 & 0x10) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      var8 = 0;
      v76 = 0;
    }

    v77 = v76;
    v76 = v63 & 0xF0;
    v78 = 0uLL;
    v79 = var8;
    v80 = v77 - v76;
    v81 = &this->var11[v77 + 4].var8;
    v82 = 0uLL;
    v83 = 0uLL;
    do
    {
      v84.i8[0] = *(v81 - 252);
      v84.i8[1] = *(v81 - 216);
      v84.i8[2] = *(v81 - 180);
      v84.i8[3] = *(v81 - 144);
      v84.i8[4] = *(v81 - 108);
      v84.i8[5] = *(v81 - 72);
      v84.i8[6] = *(v81 - 36);
      v84.i8[7] = *v81;
      v85.i8[0] = v81[36];
      v85.i8[1] = v81[72];
      v85.i8[2] = v81[108];
      v85.i8[3] = v81[144];
      v85.i8[4] = v81[180];
      v85.i8[5] = v81[216];
      v86 = vmovl_u8(v84);
      v85.i8[6] = v81[252];
      v85.i8[7] = v81[288];
      v87 = vmovl_u8(v85);
      v83 = vaddw_high_u16(v83, v87);
      v82 = vaddw_u16(v82, *v87.i8);
      v78 = vaddw_high_u16(v78, v86);
      v79 = vaddw_u16(v79, *v86.i8);
      v81 += 576;
      v80 += 16;
    }

    while (v80);
    var8 = vaddvq_s32(vaddq_s32(vaddq_s32(v79, v82), vaddq_s32(v78, v83)));
    if (v76 == v63)
    {
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  var8 = this->var10[0].var8;
LABEL_108:
  (*(**v146 + 96))(&__dst);
  if (v149 != 1 || var8 == 1)
  {
    v109 = 1;
  }

  else
  {
    v109 = *(v6 + 618);
  }

  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&__dst);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v110, v111, v112, v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
  }

  if (((*(v6 + 552) != 1) & v109) != 0)
  {
LABEL_117:
    webrtc::SimulcastRateAllocator::SimulcastRateAllocator(&__dst, v6 + 8, v8);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v117, v118, v119, v120, v121, v122, v123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
  }

  if (((*(**v62 + 32))(*v62, v8, a3) & 0x80000000) != 0)
  {
    v127 = *v62;
    if (*v62)
    {
      (*(*v127 + 48))(v127);
      (*(**v62 + 40))(*v62, 0);
      v127 = *v62;
    }

    (*(*v127 + 40))(v127, *(v6 + 584));
    if (*(v6 + 552) != 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t\t\t", v138, v139, v140, v141, v142, v143, v144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
      }

      goto LABEL_117;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      v3 = 0;
      v135 = v146;
      if (!v146)
      {
        return v3;
      }
    }

    else
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v128, v129, v130, v131, v132, v133, v134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
      v3 = 0;
      v135 = v146;
      if (!v146)
      {
        return v3;
      }
    }

    goto LABEL_132;
  }

  LODWORD(__dst) = 0;
  LOBYTE(__p) = var8 == 0;
  v124 = *(v6 + 568);
  if (v124 >= *(v6 + 576))
  {
    std::vector<webrtc::SimulcastEncoderAdapter::StreamContext>::__emplace_back_slow_path<decltype(nullptr),std::unique_ptr<webrtc::SimulcastEncoderAdapter::EncoderContext>,decltype(nullptr),int,unsigned short &,unsigned short &,BOOL>((v6 + 560));
  }

  if (!v124)
  {
    __break(1u);
  }

  v146 = 0;
  v125 = *(v6 + 172);
  v126 = *(v6 + 174);
  *v124 = &unk_28829FB28;
  *(v124 + 8) = 0;
  *(v124 + 16) = v62;
  *(v124 + 24) = 0;
  *(v124 + 32) = 0;
  *(v124 + 36) = v125;
  *(v124 + 38) = v126;
  *(v124 + 40) = 0;
  *(v124 + 41) = var8 == 0;
  *(v6 + 568) = v124 + 48;
  *(v6 + 556) = 1;
  webrtc::SimulcastEncoderAdapter::DestroyStoredEncoders(v6);
  v3 = 0;
  atomic_store(1u, (v6 + 48));
  v135 = v146;
  if (v146)
  {
LABEL_132:
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v135 + 34);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v135 + 2);
    v136 = *v135;
    *v135 = 0;
    if (v136)
    {
      (*(*v136 + 8))(v136);
    }

    MEMORY[0x2743DA540](v135, 0x10B2C40B7F795D7);
  }

  return v3;
}