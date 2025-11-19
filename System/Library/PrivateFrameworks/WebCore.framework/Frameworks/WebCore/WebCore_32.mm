uint64_t webrtc::NetEqImpl::SetCodecs(uint64_t a1)
{
  pthread_mutex_lock((a1 + 48));
  (*(**(a1 + 120) + 32))(&v6);
  v2 = v6;
  v3 = v7;
  if (v6 != v7)
  {
    do
    {
      v4 = *v2;
      v2 += 4;
      (*(**(a1 + 144) + 96))(*(a1 + 144), v4);
    }

    while (v2 != v3);
    v2 = v6;
  }

  if (v2)
  {
    v7 = v2;
    operator delete(v2);
  }

  return pthread_mutex_unlock((a1 + 48));
}

BOOL webrtc::NetEqImpl::RegisterPayloadType(webrtc::NetEqImpl *this, uint64_t a2, const webrtc::SdpAudioFormat *a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v6 = &v20;
    webrtc::AbslStringify<absl::strings_internal::StringifySink>(&v20, a3);
    if (v22 >= 0)
    {
      v14 = HIBYTE(v22);
    }

    else
    {
      v6 = v20;
      v14 = v21;
    }

    if (v6)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    if (v14 > 0x16)
    {
      operator new();
    }

    v24 = v14;
    v16 = (&__p + v14);
    if (&__p <= v6 && v16 > v6)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v14)
    {
      memmove(&__p, v6, v14);
    }

    *v16 = 0;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
    if (v24 < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v20);
  }

LABEL_22:
  pthread_mutex_lock((this + 48));
  v18 = (*(**(this + 15) + 40))(*(this + 15), a2, a3) == 0;
  pthread_mutex_unlock((this + 48));
  return v18;
}

uint64_t webrtc::NetEqImpl::RemovePayloadType(webrtc::NetEqImpl *this, uint64_t a2)
{
  pthread_mutex_lock((this + 48));
  v4 = (*(**(this + 15) + 48))(*(this + 15), a2);
  if (v4)
  {
    v5 = v4 == -5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    (*(**(this + 18) + 96))(*(this + 18), a2);
    pthread_mutex_unlock((this + 48));
    return 0;
  }

  else
  {
    pthread_mutex_unlock((this + 48));
    return 0xFFFFFFFFLL;
  }
}

uint64_t webrtc::NetEqImpl::RemoveAllPayloadTypes(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  (*(**(this + 15) + 56))(*(this + 15));

  return pthread_mutex_unlock((this + 48));
}

uint64_t webrtc::NetEqImpl::SetMinimumDelay(webrtc::NetEqImpl *this, uint64_t a2)
{
  pthread_mutex_lock((this + 48));
  if (a2 > 0x2710)
  {
    pthread_mutex_unlock((this + 48));
    return 0;
  }

  else
  {
    v4 = (*(**(this + 26) + 64))(*(this + 26), a2);
    pthread_mutex_unlock((this + 48));
    return v4;
  }
}

uint64_t webrtc::NetEqImpl::SetMaximumDelay(webrtc::NetEqImpl *this, uint64_t a2)
{
  pthread_mutex_lock((this + 48));
  if (a2 > 0x2710)
  {
    pthread_mutex_unlock((this + 48));
    return 0;
  }

  else
  {
    v4 = (*(**(this + 26) + 56))(*(this + 26), a2);
    pthread_mutex_unlock((this + 48));
    return v4;
  }
}

uint64_t webrtc::NetEqImpl::SetBaseMinimumDelayMs(webrtc::NetEqImpl *this, uint64_t a2)
{
  pthread_mutex_lock((this + 48));
  if (a2 > 0x2710)
  {
    pthread_mutex_unlock((this + 48));
    return 0;
  }

  else
  {
    v4 = (*(**(this + 26) + 72))(*(this + 26), a2);
    pthread_mutex_unlock((this + 48));
    return v4;
  }
}

uint64_t webrtc::NetEqImpl::GetBaseMinimumDelayMs(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v2 = (*(**(this + 26) + 80))(*(this + 26));
  pthread_mutex_unlock((this + 48));
  return v2;
}

uint64_t webrtc::NetEqImpl::TargetDelayMs(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v2 = (*(**(this + 26) + 104))(*(this + 26));
  pthread_mutex_unlock((this + 48));
  return v2;
}

uint64_t webrtc::NetEqImpl::FilteredCurrentDelayMs(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v2 = (*(**(this + 26) + 144))(*(this + 26));
  v8 = *(this + 28);
  v9 = *(v8 + 8);
  if (*(v8 + 16) == v9)
  {
    __break(1u);
  }

  else
  {
    v10 = *(this + 72);
    v7 = (v10 % 1000);
    if (!v7)
    {
      v11 = ((v2 + (*(*v9 + 24) + *(*v9 + 8) - *(*v9 + 16)) % *(*v9 + 8) - *(v8 + 32)) / (v10 / 1000));
      pthread_mutex_unlock((this + 48));
      return v11;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v3, v4, v5, v6, v7);
  return webrtc::NetEqImpl::NetworkStatistics();
}

uint64_t webrtc::NetEqImpl::NetworkStatistics(uint64_t a1, _WORD *a2)
{
  pthread_mutex_lock((a1 + 48));
  result = (*(**(a1 + 144) + 112))(*(a1 + 144), *(a1 + 312));
  v5 = *(a1 + 224);
  v6 = v5[1];
  if (v5[2] == v6)
  {
    __break(1u);
  }

  else
  {
    v7 = (*(*v6 + 8) + *(*v6 + 24) - *(*v6 + 16)) % *(*v6 + 8) + result - v5[4];
    v8 = (*(**(a1 + 208) + 104))(*(a1 + 208));
    v9 = (*(**(a1 + 208) + 136))(*(a1 + 208));
    *a2 = 1000 * v7 / *(a1 + 288);
    a2[1] = v8;
    a2[2] = v9;
    webrtc::StatisticsCalculator::GetNetworkStatistics(*(a1 + 192), *(a1 + 312), a2);
    pthread_mutex_unlock((a1 + 48));
    return 0;
  }

  return result;
}

uint64_t webrtc::NetEqImpl::CurrentNetworkStatistics@<X0>(webrtc::NetEqImpl *this@<X0>, _WORD *a2@<X8>)
{
  pthread_mutex_lock((this + 48));
  result = (*(**(this + 18) + 112))(*(this + 18), *(this + 39));
  v5 = *(this + 28);
  v6 = v5[1];
  if (v5[2] == v6)
  {
    __break(1u);
  }

  else
  {
    v7 = (*(*v6 + 8) + *(*v6 + 24) - *(*v6 + 16)) % *(*v6 + 8) + result - v5[4];
    a2[1] = (*(**(this + 26) + 104))(*(this + 26));
    a2[2] = (*(**(this + 26) + 136))(*(this + 26));
    *a2 = 1000 * v7 / *(this + 72);

    return pthread_mutex_unlock((this + 48));
  }

  return result;
}

uint64_t webrtc::NetEqImpl::GetLifetimeStatistics@<X0>(webrtc::NetEqImpl *this@<X0>, _OWORD *a2@<X8>)
{
  pthread_mutex_lock((this + 48));
  v4 = *(this + 24);
  v5 = *(v4 + 120);
  a2[6] = *(v4 + 104);
  a2[7] = v5;
  v6 = *(v4 + 152);
  a2[8] = *(v4 + 136);
  a2[9] = v6;
  v7 = *(v4 + 56);
  a2[2] = *(v4 + 40);
  a2[3] = v7;
  v8 = *(v4 + 88);
  a2[4] = *(v4 + 72);
  a2[5] = v8;
  v9 = *(v4 + 24);
  *a2 = *(v4 + 8);
  a2[1] = v9;

  return pthread_mutex_unlock((this + 48));
}

uint64_t webrtc::NetEqImpl::GetOperationsAndState@<X0>(webrtc::NetEqImpl *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 48));
  v4 = *(this + 24);
  v5 = *(v4 + 184);
  *a2 = *(v4 + 168);
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 200);
  *(a2 + 48) = *(v4 + 216);
  result = (*(**(this + 18) + 112))(*(this + 18), *(this + 39));
  v7 = *(this + 28);
  v8 = v7[1];
  if (v7[2] == v8)
  {
    __break(1u);
  }

  else
  {
    v9 = *(this + 72);
    v10 = *(this + 39);
    *(a2 + 32) = 1000 * ((*(*v8 + 8) + *(*v8 + 24) - *(*v8 + 16)) % *(*v8 + 8) + result - v7[4]) / v9;
    *(a2 + 40) = 1000 * v10 / v9;
    if ((*(**(this + 18) + 56))(*(this + 18)))
    {
      *(a2 + 48) = *(*(**(this + 18) + 56))(*(this + 18)) == *(*(this + 28) + 40);
      v11 = (this + 48);
    }

    else
    {
      *(a2 + 48) = 0;
      v11 = (this + 48);
    }

    return pthread_mutex_unlock(v11);
  }

  return result;
}

uint64_t webrtc::NetEqImpl::GetPlayoutTimestamp(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  if ((*(this + 369) & 1) != 0 || (*(this + 80) - 9) < 2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = (*(**(this + 20) + 48))(*(this + 20), *(this + 88));
    v4 = v5 & 0xFFFFFF00;
    v3 = v5;
    v2 = 0x100000000;
  }

  pthread_mutex_unlock((this + 48));
  return v2 | v4 | v3;
}

uint64_t webrtc::NetEqImpl::last_output_sample_rate_hz(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v2 = *(this + 74);
  pthread_mutex_unlock((this + 48));
  return v2;
}

uint64_t webrtc::NetEqImpl::GetCurrentDecoderFormat@<X0>(webrtc::NetEqImpl *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 48));
  if ((*(this + 366) & 1) == 0 || (result = (*(**(this + 15) + 64))(*(this + 15), *(this + 365))) == 0)
  {
    *a2 = 0;
    *(a2 + 80) = 0;
    return pthread_mutex_unlock((this + 48));
  }

  if (*(this + 366))
  {
    v5 = result;
    LODWORD(v22) = *(this + 365);
    if (!*(result + 144))
    {
      result = *(result + 128);
      if (result)
      {
        goto LABEL_15;
      }

      (*(**(v5 + 120) + 48))(&v29);
      result = v29;
      v29 = 0;
      v7 = *(v5 + 128);
      *(v5 + 128) = result;
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v8 = v29;
        v29 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        result = *(v5 + 128);
      }

      if (result)
      {
LABEL_15:
        HIDWORD(v22) = (*(*result + 88))(result);
        v6 = *(v5 + 128);
        if (!v6)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }
    }

    if (*(v5 + 140))
    {
      HIDWORD(v22) = *(v5 + 136);
      v6 = *(v5 + 128);
      if (!v6)
      {
LABEL_16:
        (*(**(v5 + 120) + 48))(&v29);
        v9 = v29;
        v29 = 0;
        v10 = *(v5 + 128);
        *(v5 + 128) = v9;
        if (v10)
        {
          (*(*v10 + 8))(v10);
          v11 = v29;
          v29 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }
        }

        v6 = *(v5 + 128);
      }

LABEL_20:
      v23 = (*(*v6 + 96))(v6);
      if (*(v5 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v5 + 40), *(v5 + 48));
      }

      else
      {
        __p = *(v5 + 40);
      }

      v25 = *(v5 + 64);
      v27 = 0;
      v28 = 0;
      v26 = &v27;
      v12 = *(v5 + 80);
      v13 = (v5 + 88);
      if (v12 == v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = &v27;
      }

      else
      {
        do
        {
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v26, &v27, v12 + 4);
          v18 = v12[1];
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
              v19 = v12[2];
              v20 = *v19 == v12;
              v12 = v19;
            }

            while (!v20);
          }

          v12 = v19;
        }

        while (v19 != v13);
        v17 = v26;
        v14 = v27;
        v15 = v28;
        v16 = v27;
      }

      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 16) = __p;
      memset(&__p, 0, sizeof(__p));
      *(a2 + 40) = v25;
      *(a2 + 56) = v17;
      *(a2 + 64) = v16;
      v21 = a2 + 64;
      *(a2 + 72) = v15;
      if (!v15)
      {
        *(a2 + 56) = v21;
        *(a2 + 80) = 1;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v26, v14);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return pthread_mutex_unlock((this + 48));
        }

        goto LABEL_35;
      }

      *(v16 + 16) = v21;
      v26 = &v27;
      v27 = 0;
      v28 = 0;
      *(a2 + 80) = 1;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v26, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_35:
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return pthread_mutex_unlock((this + 48));
    }
  }

  __break(1u);
  return result;
}

uint64_t webrtc::DecoderDatabase::DecoderInfo::SampleRateHz(uint64_t this)
{
  if (*(this + 144))
  {
    if (*(this + 144) == 2)
    {
      return *(this + 64);
    }

    goto LABEL_13;
  }

  v1 = *(this + 128);
  if (!v1)
  {
    v2 = this;
    (*(**(this + 120) + 48))(&v6, *(this + 120), this, this + 40, *(this + 104), *(this + 112));
    v1 = v6;
    v6 = 0;
    v3 = *(v2 + 128);
    *(v2 + 128) = v1;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      this = v2;
      v1 = *(v2 + 128);
      if (v1)
      {
        goto LABEL_9;
      }

LABEL_13:
      if (*(this + 140))
      {
        return *(this + 136);
      }

      __break(1u);
      return this;
    }

    this = v2;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

LABEL_9:
  v5 = *(*v1 + 88);

  return v5(v1);
}

void webrtc::NetEqImpl::FlushBuffers(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc");
  }

  (*(**(this + 18) + 16))(*(this + 18));
  v9 = *(this + 28);
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v10 == v11)
  {
    goto LABEL_15;
  }

  v12 = (*(*v11 + 1) + *(*v11 + 3) - *(*v11 + 2)) % *(*v11 + 1);
  if (v12)
  {
    do
    {
      v13 = *v11;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      v14 = *v11++;
      webrtc::AudioVector::InsertZerosByPushBack(v14, v12, (*(v14 + 1) + *(v14 + 3) - *(v14 + 2)) % *(v14 + 1));
    }

    while (v11 != v10);
  }

  else
  {
    do
    {
      v15 = *v11++;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
    }

    while (v11 != v10);
  }

  v16 = *(v9 + 8);
  if (*(v9 + 16) == v16 || (*(v9 + 32) = (*(*v16 + 8) + *(*v16 + 24) - *(*v16 + 16)) % *(*v16 + 8), *(v9 + 40) = 0, *(v9 + 48) = 0, v17 = *(this + 28), v18 = v17[4], v19 = (*(**(this + 29) + 48))(*(this + 29)), v20 = v17[1], v17[2] == v20))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v21 = (*(*v20 + 8) + *(*v20 + 24) - *(*v20 + 16)) % *(*v20 + 8);
    if (v21 >= v18 - v19)
    {
      v21 = v18 - v19;
    }

    v17[4] = v21;
    *(this + 369) = 1;

    pthread_mutex_unlock((this + 48));
  }
}

uint64_t webrtc::NetEqImpl::EnableNack(webrtc::NetEqImpl *this, unint64_t a2)
{
  pthread_mutex_lock((this + 48));
  if (*(this + 384) != 1)
  {
    operator new();
  }

  v8 = *(this + 47);
  if (!a2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/nack_tracker.cc", 187, "max_nack_list_size > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v4, v5, v6, v7, 0);
    goto LABEL_10;
  }

  if (a2 >= 0x1F5)
  {
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/nack_tracker.cc", 190, "max_nack_list_size <= kNackListSizeLimitLocal", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v4, v5, v6, v7, a2);
    return webrtc::NetEqImpl::DisableNack(v10);
  }

  *(v8 + 10) = a2;
  webrtc::NackTracker::LimitNackListSize(v8);

  return pthread_mutex_unlock((this + 48));
}

uint64_t webrtc::NetEqImpl::DisableNack(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v2 = *(this + 47);
  *(this + 47) = 0;
  if (v2)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v2 + 56, *(v2 + 64));
    MEMORY[0x2743DA540](v2, 0x1020C4066F93CF5);
  }

  *(this + 384) = 0;

  return pthread_mutex_unlock((this + 48));
}

uint64_t webrtc::NetEqImpl::GetNackList@<X0>(webrtc::NetEqImpl *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock((this + 48));
  if (*(this + 384))
  {
    webrtc::NackTracker::GetNackList(*(this + 47), a2, a3);
    v6 = (this + 48);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = (this + 48);
  }

  return pthread_mutex_unlock(v6);
}

unint64_t webrtc::NetEqImpl::SyncBufferSizeMs(webrtc::NetEqImpl *this)
{
  pthread_mutex_lock((this + 48));
  v7 = *(this + 28);
  v8 = v7[1];
  if (v7[2] == v8)
  {
    __break(1u);
  }

  else
  {
    v9 = *(this + 72);
    v6 = (v9 % 1000);
    if (!v6)
    {
      v10 = ((*(*v8 + 24) + *(*v8 + 8) - *(*v8 + 16)) % *(*v8 + 8) - v7[4]) / (v9 / 1000);
      pthread_mutex_unlock((this + 48));
      return v10;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v2, v3, v4, v5, v6);
  return webrtc::NetEqImpl::DoCodecPlc(v12);
}

uint64_t webrtc::NetEqImpl::DoCodecPlc(webrtc::NetEqImpl *this)
{
  result = (*(**(this + 15) + 80))(*(this + 15));
  if (!result)
  {
    return result;
  }

  v7 = *(this + 28);
  v8 = *(v7 + 8);
  if (*(v7 + 16) == v8)
  {
    __break(1u);
LABEL_36:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/neteq_impl.cc", 1550, "concealment_audio_.size() >= requested_samples_per_channel * channels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v3, v4, v5, v6, v7);
    return webrtc::NetEqImpl::UpdatePlcComponents(v38, v39, v40);
  }

  v9 = result;
  v10 = *(this + 27);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  v13 = *(this + 38);
  v14 = *v8;
  v15 = v14[1];
  v16 = v15 + v14[3] - v14[2];
  v17 = *(v7 + 32);
  v18 = v13 + v17 + (*(**(this + 29) + 48))(*(this + 29)) + v16 / v15 * v15 - v16;
  *(this + 54) = 0;
  (*(*v9 + 40))(v9, v18, this + 432);
  v7 = *(this + 54);
  if (!v7)
  {
    return 0;
  }

  v19 = (v11 - v12) >> 3;
  if (v7 < v18 * v19)
  {
    goto LABEL_36;
  }

  webrtc::SyncBuffer::PushBackInterleaved(*(this + 28), this + 54);
  v20 = *(this + 54);
  v21 = *(this + 80);
  v22 = v20 / v19;
  if (v20)
  {
    v23 = *(this + 56);
    v24 = 2 * v20;
    while (!*v23)
    {
      ++v23;
      v24 -= 2;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

    v25 = *(this + 24);
    if (*(v25 + 512) != 1)
    {
      goto LABEL_31;
    }

    *(v25 + 256) += v22;
    v32 = *(v25 + 224);
    if ((v22 & 0x80000000) != 0)
    {
      v22 = v22;
    }

    else
    {
      v33 = v22 & 0x7FFFFFFF;
      if (v32 >= v33)
      {
        v22 &= 0x7FFFFFFFu;
      }

      else
      {
        v22 = *(v25 + 224);
      }

      *(v25 + 16) += v33 - v22;
    }

    *(v25 + 224) = v32 - v22;
    goto LABEL_28;
  }

LABEL_9:
  v25 = *(this + 24);
  if (*(v25 + 512) == 1)
  {
    *(v25 + 264) += v22;
    v26 = *(v25 + 224);
    if ((v22 & 0x80000000) != 0)
    {
      v34 = v26 - v22;
      v35 = *(v25 + 232) - v22;
      *(v25 + 224) = v34;
      *(v25 + 232) = v35;
    }

    else
    {
      v27 = v22 & 0x7FFFFFFF;
      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = *(v25 + 224);
      }

      v29 = v26 - v28;
      *(v25 + 16) += v27 - v28;
      v30 = *(v25 + 232);
      if (v30 >= v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = *(v25 + 232);
      }

      *(v25 + 224) = v29;
      *(v25 + 232) = v30 - v31;
      *(v25 + 80) += v27 - v31;
    }

LABEL_28:
    v36 = v21 == 11;
    v37 = *(v25 + 24);
    if (!v36)
    {
      ++v37;
    }

    *(v25 + 24) = v37;
  }

LABEL_31:
  *(this + 80) = 11;
  if (!*(this + 49))
  {
    operator new();
  }

  return 1;
}

void webrtc::NetEqImpl::UpdatePlcComponents(webrtc::NetEqImpl *this, uint64_t a2, uint64_t a3)
{
  v4 = (*(**(this + 21) + 16))(*(this + 21), *(this + 25), *(this + 28), this + 272, *(this + 24), a2, a3);
  v5 = *(this + 29);
  *(this + 29) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator new();
}

uint64_t webrtc::NetEq::InsertPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 4);
  v15 = *(a2 + 8);
  v17 = 0;
  v18 = 0;
  __p = 0;
  v19 = v9;
  v20 = a5;
  v21 = 0;
  v22[0] = 0;
  v22[24] = 0;
  v23 = 0;
  v24 = 0;
  if (*(a2 + 12) >= 0xFu)
  {
    v10 = 15;
  }

  else
  {
    v10 = *(a2 + 12);
  }

  std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>(&__p, (a2 + 16), (a2 + 16 + 4 * v10), v10);
  if (*(a2 + 360))
  {
    v11 = *(a2 + 352);
    if ((v21 & 0x100) == 0)
    {
      HIBYTE(v21) = 1;
    }

    LOBYTE(v21) = BYTE4(v11);
  }

  *v22 = *(a2 + 112);
  *&v22[9] = *(a2 + 121);
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  result = (*(*a1 + 32))(a1, a2, v12, a4, &v15);
  if (__p)
  {
    v17 = __p;
    v14 = result;
    operator delete(__p);
    return v14;
  }

  return result;
}

void std::vector<webrtc::RtpPacketInfo>::__emplace_back_slow_path<webrtc::RtpPacketInfo const&>(void *a1)
{
  v1 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v2 = 0x276276276276276;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x276276276276276)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::webrtc_network_internal::CompareNetworks(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  v4 = *a2;
  v5 = *(*a2 + 208);
  if (v3 != v5)
  {
    return v3 < v5;
  }

  v6 = *(v2 + 151);
  if (v6 >= 0)
  {
    v7 = *(v2 + 151);
  }

  else
  {
    v7 = *(v2 + 136);
  }

  v8 = *(v4 + 151);
  if (v6 >= 0)
  {
    v9 = (v2 + 128);
  }

  else
  {
    v9 = *(v2 + 128);
  }

  if (v8 >= 0)
  {
    v10 = *(v4 + 151);
  }

  else
  {
    v10 = *(v4 + 136);
  }

  if (v8 >= 0)
  {
    v11 = (v4 + 128);
  }

  else
  {
    v11 = *(v4 + 128);
  }

  if (v7 != v10 || memcmp(v9, v11, v7))
  {
    if (v10 >= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    v13 = memcmp(v9, v11, v12);
    if (v13)
    {
      if (v13 < 0)
      {
        return 1;
      }
    }

    else if (v7 < v10)
    {
      return 1;
    }

    return 0;
  }

  v15 = *(v2 + 184);
  v16 = *(v4 + 184);
  if (v15 == v16)
  {
    if (v15 != 30)
    {
      if (v15 == 2)
      {
        return bswap32(*(v2 + 188)) < bswap32(*(v4 + 188));
      }

      return 0;
    }

    v19 = bswap64(*(v2 + 188));
    v20 = bswap64(*(v4 + 188));
    if (v19 == v20)
    {
      v19 = bswap64(*(v2 + 196));
      v20 = bswap64(*(v4 + 196));
      if (v19 == v20)
      {
        return 0;
      }
    }

    if (v19 < v20)
    {
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }

    return v21 >> 31;
  }

  else
  {
    v18 = v15 == 2 && v16 == 30;
    return !v15 || v18;
  }
}

double webrtc::MakeNetworkKey(std::string *a1, std::string *a2, size_t __len, unint64_t a4, absl::numbers_internal *a5)
{
  size = __len;
  memset(&__dst, 0, sizeof(__dst));
  if (!a2 && __len)
  {
    goto LABEL_74;
  }

  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_75:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len)
  {
    v9 = (&__dst + __len);
    if (&__dst <= a2 && v9 > a2)
    {
      goto LABEL_74;
    }

    memmove(&__dst, a2, __len);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = size;
    }

    v9->__r_.__value_.__s.__data_[0] = 0;
    LODWORD(v11) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v10 = __dst.__r_.__value_.__r.__words[2];
    size = __dst.__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
  }

  v12 = v11;
  v13 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v11 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v14 = 22;
  }

  else
  {
    v14 = v13;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = size;
  }

  if (v14 == v11)
  {
    std::string::__grow_by_and_replace(&__dst, v14, 1uLL, v14, v14, 0, 1uLL, "%");
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
    if (v12 >= 0)
    {
      p_dst = &__dst;
    }

    v16 = p_dst + v11;
    if (p_dst + v11 <= "%" && v16 + 1 > "%")
    {
      goto LABEL_74;
    }

    *v16 = 37;
    v17 = v11 + 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v17] = 0;
  }

  webrtc::IPAddress::ToString(a4, __p);
  if ((v35 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v20 = v35;
  }

  else
  {
    v20 = __p[1];
  }

  if (!v19 && v20)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = 22;
  }

  else
  {
    v21 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __dst.__r_.__value_.__l.__size_;
  }

  if (v21 - v22 >= v20)
  {
    if (v20)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__dst;
      }

      else
      {
        v23 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v24 = v23 + v22;
      if (v23 + v22 <= v19 && &v24[v20] > v19)
      {
        goto LABEL_74;
      }

      v25 = v20;
      memmove(v24, v19, v20);
      v26 = v22 + v25;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = v22 + v25;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v23->__r_.__value_.__s.__data_[v26] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&__dst, v21, v22 + v20 - v21, v22, v22, 0, v20, v19);
  }

  v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = 22;
  }

  else
  {
    v28 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __dst.__r_.__value_.__l.__size_;
  }

  if (v28 != v27)
  {
    v31 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __dst.__r_.__value_.__r.__words[0];
    }

    v32 = v31 + v27;
    if (v31 + v27 > "/" || v32 + 1 <= "/")
    {
      *v32 = 47;
      v33 = v27 + 1;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = v33;
        v31->__r_.__value_.__s.__data_[v33] = 0;
        webrtc::StringBuilder::operator<<(&__dst, a5, v18);
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v33 & 0x7F;
        v31->__r_.__value_.__s.__data_[v33] = 0;
        webrtc::StringBuilder::operator<<(&__dst, a5, v18);
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  std::string::__grow_by_and_replace(&__dst, v28, 1uLL, v28, v28, 0, 1uLL, "/");
  webrtc::StringBuilder::operator<<(&__dst, a5, v29);
  if (v35 < 0)
  {
LABEL_63:
    operator delete(__p[0]);
  }

LABEL_64:
  result = *&__dst.__r_.__value_.__l.__data_;
  *a1 = __dst;
  return result;
}

uint64_t webrtc::GetAdapterTypeFromName(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (*a1 == 28524)
  {
    v8 = a2 - 2;
    if (a2 == 2)
    {
      return 16;
    }

    for (i = (a1 + 2); ; ++i)
    {
      v10 = *i;
      if (v10 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) == 0)
      {
        break;
      }

      if (!--v8)
      {
        return 16;
      }
    }
  }

  v4 = a2 - 2;
  if (a2 == 2)
  {
    return 2 * (*a1 == 28261);
  }

  if (*a1 == 29797 && *(a1 + 2) == 104)
  {
    v11 = a2 - 3;
    if (a2 == 3)
    {
      return 1;
    }

    for (j = (a1 + 3); ; ++j)
    {
      v13 = *j;
      if (v13 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x400) == 0)
      {
        break;
      }

      v2 = 1;
      if (!--v11)
      {
        return v2;
      }
    }
  }

  if (a2 < 4)
  {
LABEL_47:
    if (*a1 != 30068 || *(a1 + 2) != 110)
    {
LABEL_51:
      if (a2 >= 4 && *a1 == 1853191285)
      {
        v28 = a2 - 4;
        if (a2 == 4)
        {
          return 8;
        }

        for (k = (a1 + 4); ; ++k)
        {
          v30 = *k;
          if (v30 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v30 + 60) & 0x400) == 0)
          {
            break;
          }

          v2 = 8;
          if (!--v28)
          {
            return v2;
          }
        }
      }

      if (*a1 != 24948 || *(a1 + 2) != 112)
      {
        goto LABEL_57;
      }

      if (a2 != 3)
      {
LABEL_77:
        v25 = (a1 + 3);
        v26 = a2 - 3;
        while (1)
        {
          v27 = *v25;
          if (v27 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v27 + 60) & 0x400) == 0)
          {
            break;
          }

          ++v25;
          v2 = 8;
          if (!--v26)
          {
            return v2;
          }
        }

LABEL_57:
        if (a2 >= 6 && *a1 == 1601201264 && *(a1 + 4) == 28777)
        {
          v35 = a2 - 6;
          if (a2 == 6)
          {
            return 4;
          }

          for (m = (a1 + 6); ; ++m)
          {
            v41 = *m;
            if (v41 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v41 + 60) & 0x400) == 0)
            {
              break;
            }

            v2 = 4;
            if (!--v35)
            {
              return v2;
            }
          }
        }

        goto LABEL_62;
      }

      return 8;
    }

    if (a2 == 3)
    {
      return 8;
    }

LABEL_69:
    v21 = (a1 + 3);
    v22 = a2 - 3;
    while (1)
    {
      v23 = *v21;
      if (v23 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v23 + 60) & 0x400) == 0)
      {
        break;
      }

      ++v21;
      v2 = 8;
      if (!--v22)
      {
        return v2;
      }
    }

    goto LABEL_51;
  }

  if (*a1 == 1851878519)
  {
    v24 = a2 - 4;
    if (a2 == 4)
    {
      return 2;
    }

    for (n = (a1 + 4); ; ++n)
    {
      v32 = *n;
      if (v32 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x400) == 0)
      {
        break;
      }

      v2 = 2;
      if (!--v24)
      {
        return v2;
      }
    }
  }

  if (a2 >= 7)
  {
    if (*a1 != 1999451254 || *(a1 + 3) != 1851878519)
    {
LABEL_43:
      if (*a1 == 1702064233 && *(a1 + 4) == 99)
      {
        v33 = a2 - 5;
        if (a2 == 5)
        {
          return 8;
        }

        for (ii = (a1 + 5); ; ++ii)
        {
          v37 = *ii;
          if (v37 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v37 + 60) & 0x400) == 0)
          {
            break;
          }

          v2 = 8;
          if (!--v33)
          {
            return v2;
          }
        }
      }

      goto LABEL_47;
    }

    v34 = a2 - 7;
    if (a2 == 7)
    {
      return 2;
    }

    for (jj = (a1 + 7); ; ++jj)
    {
      v39 = *jj;
      if (v39 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v39 + 60) & 0x400) == 0)
      {
        break;
      }

      v2 = 2;
      if (!--v34)
      {
        return v2;
      }
    }
  }

  if (a2 != 4)
  {
    goto LABEL_43;
  }

  if (*a1 == 30068 && *(a1 + 2) == 110)
  {
    goto LABEL_69;
  }

  if (*a1 == 1853191285)
  {
    return 8;
  }

  if (*a1 == 24948 && *(a1 + 2) == 112)
  {
    goto LABEL_77;
  }

LABEL_62:
  if (*a1 == 28261)
  {
    for (kk = (a1 + 2); ; ++kk)
    {
      v20 = *kk;
      if (v20 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) == 0)
      {
        break;
      }

      v2 = 2;
      if (!--v4)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t webrtc::NetworkManagerBase::NetworkManagerBase(uint64_t this)
{
  *(this + 16) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 24) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 32) = this + 32;
  *(this + 40) = this + 32;
  *(this + 48) = 0;
  *(this + 56) = this + 32;
  *(this + 64) = 0;
  *(this + 72) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 80) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 88) = this + 88;
  *(this + 96) = this + 88;
  *(this + 104) = 0;
  *(this + 112) = this + 88;
  *(this + 120) = 0;
  *this = &unk_288296A30;
  *(this + 8) = &unk_288296AA0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 168) = 0;
  *(this + 152) = 0;
  *(this + 160) = this + 168;
  *(this + 192) = 0;
  *(this + 200) = &unk_28828CE50;
  *(this + 224) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0;
  *(this + 256) = 0;
  *(this + 232) = &unk_28828CE50;
  *(this + 240) = 0;
  *(this + 248) = 0;
  *(this + 264) = 1;
  return this;
}

void *webrtc::NetworkManagerBase::GetAnyAddressNetworks@<X0>(webrtc::NetworkManagerBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (!*(this + 23))
  {
    operator new();
  }

  v5 = *(this + 23);
  std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a2, &v5);
  if (!*(this + 24))
  {
    operator new();
  }

  v5 = *(this + 24);
  return std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a2, &v5);
}

uint64_t webrtc::NetworkManagerBase::GetNetworks@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((*(this + 144) - *(this + 136)) >= 1)
  {
    operator new();
  }

  return this;
}

void webrtc::NetworkManagerBase::MergeNetworkList(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v10 = 0;
  v8 = *a2;
  v3 = v8;
  v7 = *(a2 + 8);
  v9 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  webrtc::NetworkManagerBase::MergeNetworkList(a1, &v8, a3, &v10);
  if (v3)
  {
    v4 = v7;
    while (v4 != v3)
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        webrtc::Network::~Network(v5);
        MEMORY[0x2743DA540]();
      }
    }

    operator delete(v3);
  }
}

void webrtc::NetworkManagerBase::MergeNetworkList(uint64_t a1, webrtc::Network ***a2, BOOL *a3, uint64_t a4)
{
  *a3 = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = 126 - 2 * __clz(v6 - v5);
  v117[0] = 0;
  v117[1] = 0;
  v116 = v117;
  __p.__r_.__value_.__r.__words[0] = webrtc::webrtc_network_internal::CompareNetworks;
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,false>(v5, v6, &__p, v8, 1);
  v10 = *a2;
  v9 = a2[1];
  for (i = v9; ; v9 = i)
  {
    if (v10 == v9)
    {
      v53 = v116;
      if (v116 == v117)
      {
        goto LABEL_145;
      }

      v54 = v116[7];
      v116[7] = 0;
      v55 = *(a1 + 168);
      if (!v55)
      {
        goto LABEL_116;
      }

      v56 = *(v53 + 55);
      if (v56 >= 0)
      {
        v57 = (v53 + 4);
      }

      else
      {
        v57 = v53[4];
      }

      if (v56 >= 0)
      {
        v58 = *(v53 + 55);
      }

      else
      {
        v58 = v53[5];
      }

      v59 = (a1 + 168);
      while (1)
      {
        v60 = *(v55 + 55);
        if (v60 >= 0)
        {
          v61 = v55 + 4;
        }

        else
        {
          v61 = v55[4];
        }

        if (v60 >= 0)
        {
          v62 = *(v55 + 55);
        }

        else
        {
          v62 = v55[5];
        }

        if (v58 >= v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = v58;
        }

        v64 = memcmp(v61, v57, v63);
        if (v64)
        {
          if (v64 < 0)
          {
            goto LABEL_85;
          }

LABEL_99:
          v59 = v55;
          v55 = *v55;
          if (!v55)
          {
LABEL_100:
            if (v59 != (a1 + 168))
            {
              v65 = *(v59 + 55);
              if (v65 >= 0)
              {
                v66 = v59 + 4;
              }

              else
              {
                v66 = v59[4];
              }

              if (v65 >= 0)
              {
                v67 = *(v59 + 55);
              }

              else
              {
                v67 = v59[5];
              }

              if (v67 >= v58)
              {
                v68 = v58;
              }

              else
              {
                v68 = v67;
              }

              v69 = memcmp(v57, v66, v68);
              if (v69)
              {
                if ((v69 & 0x80000000) == 0)
                {
LABEL_112:
                  v70 = v59[7];
                  if (*a3)
                  {
                    v71 = 1;
                    v72 = (v70 + 240);
                    if ((v70 + 240) != v53 + 8)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_143;
                  }

                  v75 = v53[8];
                  v74 = v53[9];
                  v77 = *(v70 + 240);
                  v76 = *(v70 + 248);
                  if (v74 - v75 != v76 - v77)
                  {
                    goto LABEL_138;
                  }

                  if (v75 == v74)
                  {
                    v71 = 0;
                    goto LABEL_141;
                  }

                  if (v77 == v76)
                  {
LABEL_138:
                    v71 = 1;
                    v72 = (v70 + 240);
                    if ((v70 + 240) != v53 + 8)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_143;
                  }

LABEL_122:
                  v78 = *(v70 + 240);
                  while (1)
                  {
                    if (*(v78 + 28) == *(v75 + 7))
                    {
                      v80 = *(v78 + 8);
                      if (v80 == *(v75 + 2))
                      {
                        switch(v80)
                        {
                          case 2:
                            if (*(v78 + 12) == *(v75 + 3))
                            {
                              goto LABEL_135;
                            }

                            break;
                          case 30:
                            v79 = *(v78 + 12) == *(v75 + 12) && *(v78 + 20) == *(v75 + 20);
                            if (v79)
                            {
LABEL_135:
                              v71 = v78 == v76;
                              if (v78 == v76 || (v75 += 32, v75 == v74))
                              {
LABEL_141:
                                v72 = (v70 + 240);
                                if ((v70 + 240) != v53 + 8)
                                {
LABEL_142:
                                  std::vector<webrtc::InterfaceAddress>::__assign_with_size[abi:sn200100]<webrtc::InterfaceAddress*,webrtc::InterfaceAddress*>(v72, v53[8], v53[9], (v53[9] - v53[8]) >> 5);
                                }

LABEL_143:
                                *a3 = v71;
                                operator new();
                              }

                              goto LABEL_122;
                            }

                            break;
                          case 0:
                            goto LABEL_135;
                        }
                      }
                    }

                    v78 += 32;
                    if (v78 == v76)
                    {
                      goto LABEL_138;
                    }
                  }
                }
              }

              else if (v58 >= v67)
              {
                goto LABEL_112;
              }
            }

LABEL_116:
            v73 = *(a1 + 264);
            *(a1 + 264) = v73 + 1;
            *(v54 + 143) = v73;
            if (v54 + 240 != (v53 + 8))
            {
              std::vector<webrtc::InterfaceAddress>::__assign_with_size[abi:sn200100]<webrtc::InterfaceAddress*,webrtc::InterfaceAddress*>(v54 + 30, v53[8], v53[9], (v53[9] - v53[8]) >> 5);
            }

            operator new();
          }
        }

        else
        {
          if (v62 >= v58)
          {
            goto LABEL_99;
          }

LABEL_85:
          v55 = v55[1];
          if (!v55)
          {
            goto LABEL_100;
          }
        }
      }
    }

    v11 = *v10;
    v12 = *(*v10 + 151);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = *(v11 + 16);
      v12 = *(v11 + 17);
    }

    else
    {
      v13 = (v11 + 128);
    }

    webrtc::MakeNetworkKey(&__p, v13, v12, v11 + 176, *(v11 + 52));
    v14 = *v10;
    v15 = v117[0];
    if (!v117[0])
    {
      goto LABEL_49;
    }

    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v18 = v117;
    do
    {
      while (1)
      {
        v19 = v15[55];
        v20 = v19 >= 0 ? v15 + 32 : *(v15 + 4);
        v21 = v19 >= 0 ? v15[55] : *(v15 + 5);
        v22 = v17 >= v21 ? v21 : v17;
        v23 = memcmp(v20, v16, v22);
        if (v23)
        {
          break;
        }

        if (v21 >= v17)
        {
          goto LABEL_34;
        }

LABEL_20:
        v15 = *(v15 + 1);
        if (!v15)
        {
          goto LABEL_35;
        }
      }

      if (v23 < 0)
      {
        goto LABEL_20;
      }

LABEL_34:
      v18 = v15;
      v15 = *v15;
    }

    while (v15);
LABEL_35:
    if (v18 == v117)
    {
      goto LABEL_49;
    }

    v26 = v18[4];
    v25 = v18 + 4;
    v24 = v26;
    v27 = *(v25 + 23);
    v28 = v27 >= 0 ? v25 : v24;
    v29 = v27 >= 0 ? *(v25 + 23) : v25[1];
    v30 = v29 >= v17 ? v17 : v29;
    v31 = memcmp(v16, v28, v30);
    if (v31)
    {
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_49:
      *v10 = 0;
      v33 = *v32;
      *v32 = v14;
      if (v33)
      {
        webrtc::Network::~Network(v33);
        MEMORY[0x2743DA540]();
      }

      v34 = (v32 + 1);
      v35 = v32[1];
      if (v35)
      {
        v36 = v32[2];
        v37 = v32[1];
        if (v36 != v35)
        {
          v38 = v36 - 4;
          v39 = v36 - 4;
          v40 = v36 - 4;
          do
          {
            v41 = *v40;
            v40 -= 4;
            (*v41)(v39);
            v38 -= 4;
            v79 = v39 == v35;
            v39 = v40;
          }

          while (!v79);
          v37 = *v34;
        }

        v32[2] = v35;
        operator delete(v37);
      }

      *v34 = 0;
      v32[2] = 0;
      v113 = 1;
      v32[3] = 0;
    }

    else
    {
      if (v17 < v29)
      {
        goto LABEL_49;
      }

LABEL_47:
      v113 = 0;
    }

    v43 = *(v14 + 30);
    v44 = *(v14 + 31);
    if (v43 != v44)
    {
      break;
    }

LABEL_73:
    if (v113)
    {
      v52 = v42[1];
      if (v42[2] == v52)
      {
        goto LABEL_144;
      }

      ++*(a4 + 4 * (*(v52 + 8) != 2));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v10;
  }

  v45 = v42[2];
  while (1)
  {
    v46 = v42[3];
    if (v45 >= v46)
    {
      break;
    }

    if (!v45)
    {
      goto LABEL_144;
    }

    *v45 = &unk_28828CE50;
    *(v45 + 8) = *(v43 + 8);
    *(v45 + 12) = *(v43 + 12);
    *v45 = &unk_288294A90;
    *(v45 + 28) = *(v43 + 28);
    v45 += 32;
    v42[2] = v45;
    v43 += 32;
    if (v43 == v44)
    {
      goto LABEL_73;
    }
  }

  v47 = v42[1];
  v48 = ((v45 - v47) >> 5) + 1;
  if (v48 >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v49 = v46 - v47;
  if (v49 >> 4 > v48)
  {
    v48 = v49 >> 4;
  }

  v50 = v49 >= 0x7FFFFFFFFFFFFFE0;
  v51 = 0x7FFFFFFFFFFFFFFLL;
  if (!v50)
  {
    v51 = v48;
  }

  if (v51)
  {
    if (!(v51 >> 59))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_144:
  __break(1u);
LABEL_145:
  v81 = *(a1 + 136);
  if (*(a1 + 144) != v81)
  {
    *a3 = 1;
    goto LABEL_149;
  }

  if (*a3)
  {
LABEL_149:
    v82 = v81;
    *(a1 + 144) = v81;
    v83 = *(a1 + 160);
    v84 = *(a1 + 136);
    if (v83 != (a1 + 168))
    {
      do
      {
        v92 = v83[7];
        if (v84 == v82)
        {
LABEL_161:
          v93 = v82;
        }

        else
        {
          v93 = v84;
          v94 = v84;
          while (v94->i64[0] != v92)
          {
            v94 = (v94 + 8);
            v93 = (v93 + 8);
            if (v94 == v82)
            {
              goto LABEL_161;
            }
          }
        }

        v95 = v93 != v82;
        if (*(v92 + 284) != v95)
        {
          *(v92 + 284) = v95;
        }

        v96 = v83[1];
        if (v96)
        {
          do
          {
            v97 = v96;
            v96 = *v96;
          }

          while (v96);
        }

        else
        {
          do
          {
            v97 = v83[2];
            v79 = *v97 == v83;
            v83 = v97;
          }

          while (!v79);
        }

        v83 = v97;
      }

      while (v97 != (a1 + 168));
    }

    v85 = 126 - 2 * __clz((v82->i64 - v84) >> 3);
    if (v82 == v84)
    {
      v86 = 0;
    }

    else
    {
      v86 = v85;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,false>(v84, v82, &__p, v86, 1);
    v88 = *(a1 + 136);
    v87 = *(a1 + 144);
    if (v88 != v87)
    {
      v89 = v87 - v88 - 8;
      if (v89 > 0xF)
      {
        v98 = v89 >> 3;
        if (v98 >= 0x7F)
        {
          LOBYTE(v98) = 127;
        }

        v99 = v98 & 0x7E;
        v90 = v98 & 0x7E ^ 0x7F;
        v91 = v88 + 8 * v99;
        v100 = (v88 + 8);
        v101 = 126;
        do
        {
          v102 = *v100;
          *(*(v100 - 1) + 280) = v101 + 1;
          *(v102 + 280) = v101;
          v100 += 2;
          v101 -= 2;
          v99 -= 2;
        }

        while (v99);
      }

      else
      {
        v90 = 127;
        v91 = *(a1 + 136);
      }

      while (1)
      {
        *(*v91 + 280) = v90;
        if (!v90)
        {
          break;
        }

        --v90;
        v91 += 8;
        if (v91 == v87)
        {
          goto LABEL_179;
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v103, v104, v105, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
      }
    }
  }

LABEL_179:
}

void *std::map<std::string,webrtc::anonymous namespace::AddressList>::operator[](uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6 + 7;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6 + 7;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

BOOL webrtc::Network::SetIPs(uint64_t a1, uint64_t *a2, char a3)
{
  if (a3)
  {
    goto LABEL_21;
  }

  v4 = *a2;
  v3 = a2[1];
  v6 = *(a1 + 240);
  v5 = *(a1 + 248);
  if (v3 - *a2 != v5 - v6)
  {
    goto LABEL_21;
  }

  if (v4 == v3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if (v6 == v5)
  {
LABEL_21:
    v10 = 1;
    v11 = (a1 + 240);
    if (v11 != a2)
    {
      goto LABEL_25;
    }

    return v10;
  }

  do
  {
    v7 = *(a1 + 240);
    while (1)
    {
      if (*(v7 + 28) != *(v4 + 28))
      {
        goto LABEL_10;
      }

      v9 = *(v7 + 8);
      if (v9 != *(v4 + 8))
      {
        goto LABEL_10;
      }

      if (v9 != 2)
      {
        break;
      }

      if (*(v7 + 12) == *(v4 + 12))
      {
        goto LABEL_18;
      }

LABEL_10:
      v7 += 32;
      if (v7 == v5)
      {
        goto LABEL_21;
      }
    }

    if (v9 != 30)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (*(v7 + 12) != *(v4 + 12) || *(v7 + 20) != *(v4 + 20))
    {
      goto LABEL_10;
    }

LABEL_18:
    v10 = v7 == v5;
    if (v7 == v5)
    {
      break;
    }

    v4 += 32;
  }

  while (v4 != v3);
LABEL_24:
  v11 = (a1 + 240);
  if (v11 != a2)
  {
LABEL_25:
    std::vector<webrtc::InterfaceAddress>::__assign_with_size[abi:sn200100]<webrtc::InterfaceAddress*,webrtc::InterfaceAddress*>(v11, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  return v10;
}

uint64_t webrtc::anonymous namespace::SortNetworks(webrtc::_anonymous_namespace_ *this, const webrtc::Network *a2, const webrtc::Network *a3)
{
  v5 = *(this + 68);
  v6 = *(a2 + 68);
  if (v5 != v6)
  {
    return v5 < v6;
  }

  v30[10] = v3;
  v30[11] = v4;
  webrtc::Network::GetBestIP(this, v30);
  webrtc::Network::GetBestIP(a2, v29);
  v10 = webrtc::IPAddressPrecedence(v30, v9);
  if (v10 != webrtc::IPAddressPrecedence(v29, v11))
  {
    v14 = webrtc::IPAddressPrecedence(v30, v12);
    return v14 > webrtc::IPAddressPrecedence(v29, v15);
  }

  if (*(this + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(this + 27), *(this + 28));
    if ((*(a2 + 239) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v28 = *(this + 9);
    if ((*(a2 + 239) & 0x80000000) == 0)
    {
LABEL_5:
      v27 = *(a2 + 9);
      goto LABEL_10;
    }
  }

  std::string::__init_copy_ctor_external(&v27, *(a2 + 27), *(a2 + 28));
LABEL_10:
  v16 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v28;
  }

  else
  {
    v17 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v19 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  v20 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v27.__r_.__value_.__l.__size_;
  }

  if (v22 >= size)
  {
    v23 = size;
  }

  else
  {
    v23 = v22;
  }

  v24 = memcmp(v17, v21, v23);
  if (v24)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (size >= v22)
  {
LABEL_27:
    result = 0;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  result = 1;
  if (v19 < 0)
  {
LABEL_28:
    v25 = result;
    operator delete(v20);
    result = v25;
    v16 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

LABEL_29:
  if (v16 < 0)
  {
    v26 = result;
    operator delete(v28.__r_.__value_.__l.__data_);
    return v26;
  }

  return result;
}

__n128 webrtc::NetworkManagerBase::set_default_local_addresses(webrtc::NetworkManagerBase *this, const webrtc::IPAddress *a2, const webrtc::IPAddress *a3)
{
  if (*(a2 + 2) != 2)
  {
    v3 = *(a3 + 2);
    if (v3 != 30)
    {
      return result;
    }

LABEL_5:
    *(this + 60) = v3;
    result = *(a3 + 12);
    *(this + 244) = result;
    return result;
  }

  *(this + 52) = 2;
  result = *(a2 + 12);
  *(this + 212) = result;
  v3 = *(a3 + 2);
  if (v3 == 30)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t webrtc::NetworkManagerBase::GetDefaultLocalAddress(webrtc::NetworkManagerBase *this, int a2, webrtc::IPAddress *a3)
{
  if (a2 != 30)
  {
    if (a2 == 2)
    {
      v5 = *(this + 52);
      if (v5)
      {
        *(a3 + 2) = v5;
        *(a3 + 12) = *(this + 212);
        return 1;
      }
    }

    return 0;
  }

  v7 = *(this + 60);
  if (!v7)
  {
    return 0;
  }

  v20 = v3;
  v21 = v4;
  v8 = *(this + 17);
  v9 = *(this + 18);
  if (v8 == v9)
  {
    goto LABEL_30;
  }

  if (v7 == 2)
  {
    while (1)
    {
      v10 = *v8;
      v14 = *(*v8 + 240);
      v15 = *(*v8 + 248);
      if (v14 != v15)
      {
        break;
      }

LABEL_22:
      if (++v8 == v9)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v17 = &unk_28828CE50;
      v18 = *(v14 + 8);
      v19 = *(v14 + 12);
      if (v18 == 2 && *(this + 61) == v19)
      {
        break;
      }

      v14 += 32;
      if (v14 == v15)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (v7 != 30)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v10 = *v8;
      v11 = *(*v8 + 240);
      v12 = *(*v8 + 248);
      if (v11 != v12)
      {
        break;
      }

LABEL_11:
      if (++v8 == v9)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v17 = &unk_28828CE50;
      v18 = *(v11 + 8);
      v19 = *(v11 + 12);
      if (v18 == 30 && *(this + 244) == v19 && *(this + 252) == *(&v19 + 1))
      {
        break;
      }

      v11 += 32;
      if (v11 == v12)
      {
        goto LABEL_11;
      }
    }
  }

  if (v10)
  {
    webrtc::Network::GetBestIP(v10, &v17);
    *(a3 + 2) = v18;
    *(a3 + 12) = v19;
    return 1;
  }

LABEL_30:
  *(a3 + 2) = v7;
  *(a3 + 12) = *(this + 244);
  return 1;
}

uint64_t webrtc::Network::GetBestIP@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(this + 248);
  v2 = *(this + 240);
  if (v3 == v2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = &unk_28828CE50;
    *(a2 + 24) = 0;
    return this;
  }

  if (*(this + 184) == 2)
  {
    *a2 = &unk_28828CE50;
    *(a2 + 8) = *(v2 + 8);
    v4 = *(v2 + 12);
    goto LABEL_25;
  }

  this = 0;
  v17 = 0uLL;
  v14[0] = 0;
  v14[1] = 0;
  v5 = v14 + 4;
  v15 = 0;
  v16 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    while (1)
    {
      v9 = *(v2 + 28);
      if ((v9 & 2) != 0)
      {
        break;
      }

      v10 = *(v2 + 8);
      if (v10 == 2)
      {
        v6 = &v16;
        v7 = v14;
        v8 = v14 + 4;
        if (*(v2 + 12) == -343)
        {
          goto LABEL_7;
        }
      }

      else if (v10 == 30)
      {
        v6 = &v16;
        v7 = v14;
        v8 = v14 + 4;
        if ((*(v2 + 12) & 0xC0FFLL) == 0x80FE)
        {
LABEL_7:
          *v6 = v9;
          *v7 = v10;
          *v8 = *(v2 + 12);
          break;
        }
      }

      v6 = &v13;
      v7 = v11;
      v8 = v11 + 4;
      if ((*(v2 + 12) & 0xFELL) == 0xFC)
      {
        goto LABEL_7;
      }

      v17 = *(v2 + 12);
      this = *(v2 + 28);
      if ((this & 1) == 0)
      {
        v2 += 32;
        this = v10;
        if (v2 != v3)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v2 += 32;
  }

  while (v2 != v3);
  LODWORD(v10) = this;
LABEL_20:
  if (!v10)
  {
    LODWORD(v10) = v14[0];
    if (LODWORD(v14[0]) || (LODWORD(v10) = v11[0], v5 = v11 + 4, LODWORD(v11[0])))
    {
      v17 = *v5;
    }
  }

  *a2 = &unk_28828CE50;
  *(a2 + 8) = v10;
  v4 = v17;
LABEL_25:
  *(a2 + 12) = v4;
  return this;
}

uint64_t webrtc::BasicNetworkManager::BasicNetworkManager(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 24) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = 0;
  *(a1 + 72) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 80) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 88) = a1 + 88;
  *(a1 + 96) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 88;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 192) = 0;
  *(a1 + 200) = &unk_28828CE50;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 256) = 0;
  *(a1 + 232) = &unk_28828CE50;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 1;
  *(a1 + 288) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 296) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 312) = a1 + 320;
  *a1 = &unk_288296AC8;
  *(a1 + 8) = &unk_288296B40;
  *(a1 + 272) = &unk_288296B68;
  *(a1 + 280) = &unk_288296B90;
  v5 = *a2;
  *(a1 + 336) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = *(a2 + 3);
  *(a1 + 344) = *(a2 + 1);
  *(a1 + 360) = v6;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1;
  *(a1 + 396) = 0;
  *(a1 + 404) = 0;
  *(a1 + 388) = 0;
  *(a1 + 412) = 0;
  *(a1 + 416) = a4;
  *(a1 + 424) = a3;
  *(a1 + 432) = 0;
  (*(**(a1 + 344) + 16))(&__p);
  v7 = 0;
  v8 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v8 = v18;
  }

  if (v8 >= 7)
  {
    p_p = __p;
    if ((v19 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v10 = *p_p;
    v11 = *(p_p + 3);
    v7 = v10 == 1650552389 && v11 == 1684368482;
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 440) = v7;
  (*(**(a1 + 344) + 16))(&__p);
  v13 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v13 = v18;
  }

  if (v13 >= 8)
  {
    v15 = __p;
    if ((v19 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    v14 = *v15 != 0x64656C6261736944;
    if (v19 < 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 1;
    if (v19 < 0)
    {
LABEL_24:
      operator delete(__p);
    }
  }

  *(a1 + 441) = v14;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  return a1;
}

void webrtc::BasicNetworkManager::~BasicNetworkManager(webrtc::BasicNetworkManager *this)
{
  *this = &unk_288296AC8;
  *(this + 1) = &unk_288296B40;
  *(this + 34) = &unk_288296B68;
  v2 = this + 280;
  *(this + 35) = &unk_288296B90;
  v3 = *(this + 59);
  if (v3)
  {
    *(v3 + 4) = 0;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }

  v4 = *(this + 56);
  if (v4)
  {
    *(this + 57) = v4;
    operator delete(v4);
  }

  v5 = *(this + 54);
  *(this + 54) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 49);
  if (v6)
  {
    v7 = *(this + 50);
    v8 = *(this + 49);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 49);
    }

    *(this + 50) = v6;
    operator delete(v8);
  }

  v10 = *(this + 42);
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 35) = &unk_28828CEE0;
  (*(this + 38))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 312, *(this + 40));
  *this = &unk_288296A30;
  *(this + 1) = &unk_288296AA0;
  v11 = *(this + 24);
  *(this + 24) = 0;
  if (v11)
  {
    webrtc::Network::~Network(v11);
    MEMORY[0x2743DA540]();
  }

  v12 = *(this + 23);
  *(this + 23) = 0;
  if (v12)
  {
    webrtc::Network::~Network(v12);
    MEMORY[0x2743DA540]();
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*(this + 21));
  v13 = *(this + 17);
  if (v13)
  {
    *(this + 18) = v13;
    operator delete(v13);
  }

  *this = &unk_288296BB0;
  *(this + 1) = &unk_288296C20;
  for (i = *(this + 13); i; i = *(this + 13))
  {
    v15 = *(this + 12);
    v16 = v15[3];
    v18 = *v15;
    v17 = v15[1];
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 13) = i - 1;
    operator delete(v15);
    (*(v16 + 16))(v16, this + 72);
  }

  *(this + 14) = this + 88;
  for (j = *(this + 6); j; j = *(this + 6))
  {
    v20 = *(this + 5);
    v21 = v20[3];
    v23 = *v20;
    v22 = v20[1];
    *(v23 + 8) = v22;
    *v22 = v23;
    *(this + 6) = j - 1;
    operator delete(v20);
    (*(v21 + 16))(v21, this + 16);
  }

  *(this + 7) = this + 32;
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::BasicNetworkManager::~BasicNetworkManager(webrtc::BasicNetworkManager *this)
{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 8));
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 272));
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 280));
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 272));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::BasicNetworkManager::~BasicNetworkManager((this - 280));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::BasicNetworkManager::UpdateNetworksOnce(uint64_t this)
{
  if (*(this + 388))
  {
    v1 = this;
    v11 = 0;
    if (!getifaddrs(&v11))
    {
      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v2 = *__error();
      v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc";
      LODWORD(v13) = 5747;
      v14 = 1;
      v15 = v2;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v3, v4, v5, v6, v7, v8, v9, &v12);
    }

    this = *(v1 + 96);
    for (*(v1 + 112) = this; this != v1 + 88; this = *(v1 + 112))
    {
      v10 = *(this + 16);
      *(v1 + 112) = *(this + 8);
      v10();
    }
  }

  return this;
}

void *webrtc::BasicNetworkManager::StartUpdating(webrtc::BasicNetworkManager *this)
{
  v4 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  result = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  *(this + 47) = result;
  if (!*(this + 97))
  {
    operator new();
  }

  if (*(this + 384) == 1)
  {
    v3 = *(this + 59);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    }

    operator new();
  }

  ++*(this + 97);
  return result;
}

uint64_t webrtc::BasicNetworkManager::StopUpdating(uint64_t this)
{
  v1 = *(this + 388);
  if (v1)
  {
    v2 = this;
    v3 = v1 - 1;
    *(this + 388) = v3;
    if (!v3)
    {
      v4 = *(this + 472);
      *(v4 + 4) = 0;
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      *(v2 + 472) = 0;
      *(v2 + 384) = 0;
      this = *(v2 + 432);
      if (this)
      {
        (*(*this + 24))(this);
        this = (*(**(v2 + 432) + 40))(*(v2 + 432));
        if (this)
        {
          v5 = *(*(v2 + 376) + 168);
          if (*(v5 + 8) == v2 + 272)
          {
            *(v5 + 8) = 0;
          }
        }
      }
    }
  }

  return this;
}

void webrtc::BasicNetworkManager::QueryDefaultLocalAddress(webrtc::BasicNetworkManager *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = (*(*a2 + 16))(a2, a3, 2);
  if (v5)
  {
    v6 = v5;
    if (v3 == 2)
    {
      v7 = 7;
    }

    else
    {
      v7 = 20;
    }

    if (v3 == 2)
    {
      v8 = "8.8.8.8";
    }

    else
    {
      v8 = "2001:4860:4860::8888";
    }

    __p = 0;
    v28 = 0;
    memset(v31, 0, sizeof(v31));
    v29 = 0;
    v30 = &unk_28828CE50;
    v9 = webrtc::SocketAddress::SetIP(&__p, v8, v7);
    v32 = 53;
    v10 = (*(*v6 + 40))(v6, &__p, v9);
    v11 = v10;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_10:
        (*(*v6 + 16))(&__p, v6);
        *this = &unk_28828CE50;
        *(this + 2) = *v31;
        *(this + 12) = *&v31[4];
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

LABEL_21:
        (*(*v6 + 8))(v6);
        return;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    if ((*(*v6 + 112))(v6) != 51 && (*(*v6 + 112))(v6) != 65 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(*v6 + 112))(v6);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
    }

    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = &unk_28828CE50;
    *(this + 6) = 0;
    goto LABEL_21;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v12 = *__error();
    __p = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc";
    LODWORD(v28) = 8363;
    LODWORD(v29) = 1;
    HIDWORD(v29) = v12;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, &__p);
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28828CE50;
  *(this + 6) = 0;
}

void webrtc::BasicNetworkManager::DumpNetworks(webrtc::BasicNetworkManager *this)
{
  (*(*this + 48))(&v20);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
  }

  v9 = v20;
  v10 = v21;
  if (v20 != v21)
  {
    do
    {
      v11 = *v9;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x2251;
        webrtc::Network::ToString(v11, &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = v20;
  }

  if (v9)
  {
    v21 = v9;
    operator delete(v9);
  }
}

double webrtc::Network::ToString@<D0>(webrtc::Network *this@<X0>, std::string *a2@<X8>)
{
  memset(&v95, 0, sizeof(v95));
  if (&v95 <= "Net[" && v95.__r_.__value_.__r.__words + 4 > "Net[")
  {
    goto LABEL_240;
  }

  LODWORD(v95.__r_.__value_.__l.__data_) = 1534354766;
  *(&v95.__r_.__value_.__s + 23) = 4;
  v5 = *(this + 175);
  v6 = (this + 152);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 19);
    v8 = *(this + 20);
    if (v8)
    {
LABEL_7:
      v9 = memchr(v7, 32, v8);
      v10 = v9 - v7;
      if (!v9)
      {
        v10 = -1;
      }

      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = this + 152;
    v8 = *(this + 175);
    if (*(this + 175))
    {
      goto LABEL_7;
    }
  }

  v10 = -1;
  if ((v5 & 0x80000000) != 0)
  {
LABEL_10:
    v6 = *(this + 19);
    v5 = *(this + 20);
  }

LABEL_11:
  if (v5 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_241:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v11 > 0x16)
  {
    operator new();
  }

  v94 = v11;
  v12 = (&v92 + v11);
  if (&v92 <= v6 && v12 > v6)
  {
    goto LABEL_240;
  }

  if (v11)
  {
    memmove(&v92, v6, v11);
  }

  *v12 = 0;
  v14 = (v94 & 0x80u) == 0 ? &v92 : v92;
  v15 = (v94 & 0x80u) == 0 ? v94 : v93;
  if (!v14 && v15)
  {
    goto LABEL_240;
  }

  v16 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v17 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v95.__r_.__value_.__r.__words[2]) : v95.__r_.__value_.__l.__size_;
  if (v16 - v17 >= v15)
  {
    if (v15)
    {
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v95;
      }

      else
      {
        v18 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_240;
      }

      v19 = v18 + v17;
      if (v18 + v17 <= v14 && &v19[v15] > v14)
      {
        goto LABEL_240;
      }

      v20 = v15;
      memmove(v19, v14, v15);
      v21 = v17 + v20;
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        v95.__r_.__value_.__l.__size_ = v17 + v20;
      }

      else
      {
        *(&v95.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v18->__r_.__value_.__s.__data_[v21] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v95, v16, v17 + v15 - v16, v17, v17, 0, v15, v14);
  }

  size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v95.__r_.__value_.__l.__size_;
  }

  if (v23 == size)
  {
    std::string::__grow_by_and_replace(&v95, v23, 1uLL, v23, v23, 0, 1uLL, ":");
  }

  else
  {
    v24 = &v95;
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v95.__r_.__value_.__r.__words[0];
    }

    v25 = v24 + size;
    if (v24 + size <= ":" && v25 + 1 > ":")
    {
      goto LABEL_240;
    }

    *v25 = 58;
    v26 = size + 1;
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      v95.__r_.__value_.__l.__size_ = v26;
    }

    else
    {
      *(&v95.__r_.__value_.__s + 23) = v26 & 0x7F;
    }

    v24->__r_.__value_.__s.__data_[v26] = 0;
  }

  webrtc::IPAddress::ToSensitiveString((this + 176), &v91);
  v28 = (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
  v29 = (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v91.__r_.__value_.__r.__words[2]) : v91.__r_.__value_.__l.__size_;
  if (!v28 && v29)
  {
    goto LABEL_240;
  }

  v30 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v31 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v95.__r_.__value_.__r.__words[2]) : v95.__r_.__value_.__l.__size_;
  if (v30 - v31 >= v29)
  {
    if (v29)
    {
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v95;
      }

      else
      {
        v32 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_240;
      }

      v33 = v32 + v31;
      if ((v32 + v31) <= v28 && &v33[v29] > v28)
      {
        goto LABEL_240;
      }

      v34 = v29;
      memmove(v33, v28, v29);
      v35 = v31 + v34;
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        v95.__r_.__value_.__l.__size_ = v31 + v34;
      }

      else
      {
        *(&v95.__r_.__value_.__s + 23) = v35 & 0x7F;
      }

      v32->__r_.__value_.__s.__data_[v35] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v95, v30, v31 + v29 - v30, v31, v31, 0, v29, v28);
  }

  v36 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = 22;
  }

  else
  {
    v37 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = v95.__r_.__value_.__l.__size_;
  }

  if (v37 == v36)
  {
    std::string::__grow_by_and_replace(&v95, v37, 1uLL, v37, v37, 0, 1uLL, "/");
  }

  else
  {
    v38 = &v95;
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v95.__r_.__value_.__r.__words[0];
    }

    v39 = v38 + v36;
    if (v38 + v36 <= "/" && v39 + 1 > "/")
    {
      goto LABEL_240;
    }

    *v39 = 47;
    v40 = v36 + 1;
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      v95.__r_.__value_.__l.__size_ = v40;
    }

    else
    {
      *(&v95.__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    v38->__r_.__value_.__s.__data_[v40] = 0;
  }

  v41 = webrtc::StringBuilder::operator<<(&v95, *(this + 52), v27);
  v42 = v41;
  v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
  v44 = v43;
  if ((v43 & 0x80u) == 0)
  {
    v45 = 22;
  }

  else
  {
    v45 = (v41->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v43 & 0x80u) != 0)
  {
    v43 = v41->__r_.__value_.__l.__size_;
  }

  if (v45 == v43)
  {
    std::string::__grow_by_and_replace(v41, v45, 1uLL, v45, v45, 0, 1uLL, ":");
  }

  else
  {
    if (v44 >= 0)
    {
      v46 = v41;
    }

    else
    {
      v46 = v41->__r_.__value_.__r.__words[0];
    }

    v47 = v46 + v43;
    if (v46 + v43 <= ":" && v47 + 1 > ":")
    {
      goto LABEL_240;
    }

    *v47 = 58;
    v48 = v43 + 1;
    if (SHIBYTE(v41->__r_.__value_.__r.__words[2]) < 0)
    {
      v41->__r_.__value_.__l.__size_ = v48;
    }

    else
    {
      *(&v41->__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v46->__r_.__value_.__s.__data_[v48] = 0;
  }

  webrtc::AdapterTypeToString(*(this + 68), __p);
  v50 = (v90 & 0x80u) == 0 ? __p : __p[0];
  v51 = (v90 & 0x80u) == 0 ? v90 : __p[1];
  if (!v50 && v51)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  v52 = SHIBYTE(v42->__r_.__value_.__r.__words[2]);
  if (v52 >= 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v42->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v52 >= 0)
  {
    v54 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v42->__r_.__value_.__l.__size_;
  }

  if (v53 - v54 >= v51)
  {
    if (v51)
    {
      if (v52 >= 0)
      {
        v58 = v42;
      }

      else
      {
        v58 = v42->__r_.__value_.__r.__words[0];
      }

      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_240;
      }

      v59 = v58 + v54;
      if (v58 + v54 <= v50 && &v59[v51] > v50)
      {
        goto LABEL_240;
      }

      v60 = v51;
      memmove(v59, v50, v51);
      v61 = v54 + v60;
      if (SHIBYTE(v42->__r_.__value_.__r.__words[2]) < 0)
      {
        v42->__r_.__value_.__l.__size_ = v61;
        v58->__r_.__value_.__s.__data_[v61] = 0;
        if ((v90 & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

LABEL_143:
        operator delete(__p[0]);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_144;
        }

        goto LABEL_158;
      }

      *(&v42->__r_.__value_.__s + 23) = v61 & 0x7F;
      v58->__r_.__value_.__s.__data_[v61] = 0;
    }

    if ((v90 & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_143;
  }

  std::string::__grow_by_and_replace(v42, v53, v54 + v51 - v53, v54, v54, 0, v51, v50);
  if (v90 < 0)
  {
    goto LABEL_143;
  }

LABEL_157:
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_144:
    operator delete(v91.__r_.__value_.__l.__data_);
    if (v94 < 0)
    {
      goto LABEL_145;
    }

    goto LABEL_159;
  }

LABEL_158:
  if (v94 < 0)
  {
LABEL_145:
    operator delete(v92);
    v55 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
    v56 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
    v57 = v95.__r_.__value_.__l.__size_;
    if (*(this + 68) != 8)
    {
      goto LABEL_205;
    }

    goto LABEL_160;
  }

LABEL_159:
  v55 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  v56 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
  v57 = v95.__r_.__value_.__l.__size_;
  if (*(this + 68) != 8)
  {
    goto LABEL_205;
  }

LABEL_160:
  if (v56 >= 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v56 >= 0)
  {
    v57 = v55;
  }

  if (v62 == v57)
  {
    std::string::__grow_by_and_replace(&v95, v62, 1uLL, v62, v62, 0, 1uLL, "/");
  }

  else
  {
    v63 = v56 < 0;
    v64 = &v95;
    if (v63)
    {
      v64 = v95.__r_.__value_.__r.__words[0];
    }

    v65 = v64 + v57;
    if (v64 + v57 <= "/" && v65 + 1 > "/")
    {
      goto LABEL_240;
    }

    *v65 = 47;
    v66 = v57 + 1;
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      v95.__r_.__value_.__l.__size_ = v66;
    }

    else
    {
      *(&v95.__r_.__value_.__s + 23) = v66 & 0x7F;
    }

    v64->__r_.__value_.__s.__data_[v66] = 0;
  }

  webrtc::AdapterTypeToString(*(this + 69), &v92);
  if ((v94 & 0x80u) == 0)
  {
    v67 = &v92;
  }

  else
  {
    v67 = v92;
  }

  if ((v94 & 0x80u) == 0)
  {
    v68 = v94;
  }

  else
  {
    v68 = v93;
  }

  if (!v67 && v68)
  {
    goto LABEL_240;
  }

  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = 22;
  }

  else
  {
    v69 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v70 = v95.__r_.__value_.__l.__size_;
  }

  if (v69 - v70 >= v68)
  {
    if (v68)
    {
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v95;
      }

      else
      {
        v71 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_240;
      }

      v72 = v71 + v70;
      if (v71 + v70 <= v67 && &v72[v68] > v67)
      {
        goto LABEL_240;
      }

      v73 = v68;
      memmove(v72, v67, v68);
      v74 = v70 + v73;
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        v95.__r_.__value_.__l.__size_ = v70 + v73;
        v71->__r_.__value_.__s.__data_[v74] = 0;
        if ((v94 & 0x80000000) == 0)
        {
          goto LABEL_204;
        }

        goto LABEL_193;
      }

      *(&v95.__r_.__value_.__s + 23) = v74 & 0x7F;
      v71->__r_.__value_.__s.__data_[v74] = 0;
    }

    if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_193;
  }

  std::string::__grow_by_and_replace(&v95, v69, v70 + v68 - v69, v70, v70, 0, v68, v67);
  if (v94 < 0)
  {
LABEL_193:
    operator delete(v92);
  }

LABEL_204:
  LOBYTE(v56) = *(&v95.__r_.__value_.__s + 23);
  v57 = v95.__r_.__value_.__l.__size_;
LABEL_205:
  v75 = v56;
  if ((v56 & 0x80u) == 0)
  {
    v76 = 22;
  }

  else
  {
    v76 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v56 & 0x80u) == 0)
  {
    v77 = v56;
  }

  else
  {
    v77 = v57;
  }

  if (v76 - v77 < 4)
  {
    std::string::__grow_by_and_replace(&v95, v76, v77 - v76 + 4, v77, v77, 0, 4uLL, ":id=");
    goto LABEL_221;
  }

  v78 = v95.__r_.__value_.__r.__words[0];
  if (v75 >= 0)
  {
    v78 = &v95;
  }

  v79 = (v78 + v77);
  if (v78 + v77 <= ":id=" && v79 + 1 > ":id=")
  {
    goto LABEL_240;
  }

  *v79 = 1029990714;
  v80 = v77 + 4;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    v95.__r_.__value_.__l.__size_ = v77 + 4;
  }

  else
  {
    *(&v95.__r_.__value_.__s + 23) = v80 & 0x7F;
  }

  v78->__r_.__value_.__s.__data_[v80] = 0;
LABEL_221:
  v81 = webrtc::StringBuilder::operator<<(&v95, *(this + 143), v49);
  v82 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
  v83 = v82;
  if ((v82 & 0x80u) == 0)
  {
    v84 = 22;
  }

  else
  {
    v84 = (v81->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v82 & 0x80u) != 0)
  {
    v82 = v81->__r_.__value_.__l.__size_;
  }

  if (v84 == v82)
  {
    std::string::__grow_by_and_replace(v81, v84, 1uLL, v84, v84, 0, 1uLL, "]");
    goto LABEL_237;
  }

  if (v83 >= 0)
  {
    v85 = v81;
  }

  else
  {
    v85 = v81->__r_.__value_.__r.__words[0];
  }

  v86 = v85 + v82;
  if (v85 + v82 <= "]" && v86 + 1 > "]")
  {
    goto LABEL_240;
  }

  *v86 = 93;
  v87 = v82 + 1;
  if (SHIBYTE(v81->__r_.__value_.__r.__words[2]) < 0)
  {
    v81->__r_.__value_.__l.__size_ = v87;
  }

  else
  {
    *(&v81->__r_.__value_.__s + 23) = v87 & 0x7F;
  }

  v85->__r_.__value_.__s.__data_[v87] = 0;
LABEL_237:
  result = *&v95.__r_.__value_.__l.__data_;
  *a2 = v95;
  return result;
}

uint64_t webrtc::BasicNetworkManager::BindSocketToNetwork(webrtc::BasicNetworkManager *this, uint64_t a2, const webrtc::IPAddress *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  if (*(this + 441) != 1)
  {
    goto LABEL_35;
  }

  v3 = *(this + 17);
  v4 = *(this + 18);
  if (v3 == v4)
  {
    goto LABEL_35;
  }

  v5 = *(a3 + 2);
  if (v5 == 30)
  {
    while (1)
    {
      v6 = *v3;
      v7 = *(*v3 + 240);
      v8 = *(*v3 + 248);
      if (v7 != v8)
      {
        break;
      }

LABEL_7:
      if (++v3 == v4)
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      v25 = &unk_28828CE50;
      v26 = *(v7 + 8);
      v27 = *(v7 + 12);
      if (v26 == 30 && *(a3 + 12) == v27 && *(a3 + 20) == *(&v27 + 1))
      {
        break;
      }

      v7 += 32;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v5 == 2)
  {
    v12 = *(a3 + 3);
    while (1)
    {
      v6 = *v3;
      v13 = *(*v3 + 240);
      v14 = *(*v3 + 248);
      if (v13 != v14)
      {
        break;
      }

LABEL_24:
      if (++v3 == v4)
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      v25 = &unk_28828CE50;
      v26 = *(v13 + 8);
      v27 = *(v13 + 12);
      if (v26 == 2 && v12 == v27)
      {
        break;
      }

      v13 += 32;
      if (v13 == v14)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v6 = *v3;
      v10 = *(*v3 + 240);
      v11 = *(*v3 + 248);
      if (v10 != v11)
      {
        break;
      }

LABEL_18:
      if (++v3 == v4)
      {
        goto LABEL_35;
      }
    }

    while (*(v10 + 8))
    {
      v10 += 32;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }
  }

  if (v6 && __p != (v6 + 128))
  {
    if (*(v6 + 151) < 0)
    {
      v15 = this;
      v16 = a2;
      v17 = a3;
      std::string::__assign_no_alias<true>(__p, *(v6 + 128), *(v6 + 136));
      this = v15;
      a2 = v16;
      a3 = v17;
    }

    else
    {
      *__p = *(v6 + 128);
      v24 = *(v6 + 144);
    }
  }

LABEL_35:
  v18 = *(this + 54);
  if (v24 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (v24 >= 0)
  {
    v20 = HIBYTE(v24);
  }

  else
  {
    v20 = __p[1];
  }

  result = (*(*v18 + 48))(v18, a2, a3, v19, v20);
  if (SHIBYTE(v24) < 0)
  {
    v22 = result;
    operator delete(__p[0]);
    return v22;
  }

  return result;
}

uint64_t webrtc::Network::Network(uint64_t a1, std::string *a2, size_t __len, _BYTE *__src, size_t a5, unint64_t a6, absl::numbers_internal *a7, int a8)
{
  *a1 = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 16;
  *(a1 + 48) = 0;
  *(a1 + 56) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v16 = (a1 + 128);
  *(a1 + 151) = __len;
  v17 = (a1 + 128 + __len);
  if (a1 + 128 <= a2 && v17 > a2)
  {
    goto LABEL_18;
  }

  if (__len)
  {
    memmove(v16, a2, __len);
  }

  v17->__r_.__value_.__s.__data_[0] = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a5 > 0x16)
  {
    operator new();
  }

  *(a1 + 175) = a5;
  v18 = (a1 + 152 + a5);
  if (a1 + 152 <= __src && v18 > __src)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a5)
  {
    memmove((a1 + 152), __src, a5);
  }

  *v18 = 0;
  *(a1 + 176) = &unk_28828CE50;
  *(a1 + 184) = *(a6 + 8);
  *(a1 + 188) = *(a6 + 12);
  *(a1 + 208) = a7;
  webrtc::MakeNetworkKey((a1 + 216), a2, __len, a6, a7);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 261) = 0;
  *(a1 + 272) = a8;
  *(a1 + 276) = 0;
  *(a1 + 284) = 1;
  *(a1 + 286) = 0;
  *(a1 + 288) = 0;
  return a1;
}

webrtc::Network *webrtc::Network::Network(webrtc::Network *this, const webrtc::Network *a2)
{
  *this = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 1) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 2) = this + 16;
  *(this + 3) = this + 16;
  *(this + 4) = 0;
  *(this + 5) = this + 16;
  *(this + 48) = 0;
  v4 = *(a2 + 3);
  if (v4 != (a2 + 16))
  {
    (*(v4[3] + 8))();
    operator new();
  }

  *(this + 7) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
  *(this + 12) = this + 72;
  *(this + 104) = 0;
  v5 = *(a2 + 10);
  if (v5 != (a2 + 72))
  {
    (*(v5[3] + 8))();
    operator new();
  }

  *(this + 7) = *(a2 + 7);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
    if ((*(a2 + 175) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v6;
    if ((*(a2 + 175) & 0x80000000) == 0)
    {
LABEL_7:
      v7 = *(a2 + 152);
      *(this + 21) = *(a2 + 21);
      *(this + 152) = v7;
      goto LABEL_10;
    }
  }

  std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
LABEL_10:
  *(this + 22) = &unk_28828CE50;
  *(this + 46) = *(a2 + 46);
  *(this + 188) = *(a2 + 188);
  *(this + 52) = *(a2 + 52);
  if ((*(a2 + 239) & 0x80000000) == 0)
  {
    v8 = *(a2 + 216);
    *(this + 29) = *(a2 + 29);
    *(this + 216) = v8;
    *(this + 30) = 0;
    *(this + 31) = 0;
    *(this + 32) = 0;
    v9 = *(a2 + 30);
    v10 = *(a2 + 31);
    v11 = v10 - v9;
    if (v10 == v9)
    {
      goto LABEL_16;
    }

LABEL_14:
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__init_copy_ctor_external(this + 9, *(a2 + 27), *(a2 + 28));
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v12 = *(a2 + 30);
  v13 = *(a2 + 31);
  v11 = v13 - v12;
  if (v13 != v12)
  {
    goto LABEL_14;
  }

LABEL_16:
  v14 = *(a2 + 264);
  *(this + 276) = *(a2 + 276);
  *(this + 264) = v14;
  return this;
}

void webrtc::Network::~Network(webrtc::Network *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    v3 = *(this + 31);
    v4 = *(this + 30);
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
      v4 = *(this + 30);
    }

    *(this + 31) = v2;
    operator delete(v4);
  }

  if ((*(this + 239) & 0x80000000) == 0)
  {
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    operator delete(*(this + 19));
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  operator delete(*(this + 27));
  if (*(this + 175) < 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ((*(this + 151) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  operator delete(*(this + 16));
LABEL_16:
  while (1)
  {
    v14 = *(this + 11);
    if (!v14)
    {
      break;
    }

    v10 = *(this + 10);
    v11 = v10[3];
    v13 = *v10;
    v12 = v10[1];
    *(v13 + 8) = v12;
    *v12 = v13;
    *(this + 11) = v14 - 1;
    operator delete(v10);
    (*(v11 + 16))(v11, this + 56);
  }

  *(this + 12) = this + 72;
  for (i = *(this + 4); i; i = *(this + 4))
  {
    v16 = *(this + 3);
    v17 = v16[3];
    v19 = *v16;
    v18 = v16[1];
    *(v19 + 8) = v18;
    *v18 = v19;
    *(this + 4) = i - 1;
    operator delete(v16);
    (*(v17 + 16))(v17, this);
  }

  *(this + 5) = this + 16;
}

uint64_t webrtc::Network::GetCost(uint64_t a1, uint64_t a2)
{
  v4 = 272;
  if (*(a1 + 272) == 8)
  {
    v4 = 276;
  }

  v5 = *(a1 + v4);
  (*(*a2 + 16))(&__p, a2, "WebRTC-UseDifferentiatedCellularCosts", 37);
  v6 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v6 = v25;
  }

  if (v6 < 7)
  {
    v7 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  p_p = __p;
  if ((v26 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  v9 = *p_p;
  v10 = *(p_p + 3);
  v7 = v9 == 1650552389 && v10 == 1684368482;
  if (v26 < 0)
  {
LABEL_17:
    operator delete(__p);
  }

LABEL_18:
  (*(*a2 + 16))(&__p, a2, "WebRTC-AddNetworkCostToVpn", 26);
  v12 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v12 = v25;
  }

  if (v12 >= 7)
  {
    v14 = __p;
    if ((v26 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    v15 = *v14;
    v16 = *(v14 + 3);
    v13 = v15 == 1650552389 && v16 == 1684368482;
    if (v26 < 0)
    {
LABEL_41:
      operator delete(__p);
      v18 = *(a1 + 272) == 8 && v13;
      if (v5 > 31)
      {
        goto LABEL_45;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v13 = 0;
    if (v26 < 0)
    {
      goto LABEL_41;
    }
  }

  v18 = *(a1 + 272) == 8 && v13;
  if (v5 > 31)
  {
LABEL_45:
    if (v5 <= 127)
    {
      if (v5 == 32)
      {
        v21 = v18 == 0;
        LOWORD(v18) = 999;
        goto LABEL_66;
      }

      if (v5 == 64)
      {
        v19 = !v7;
        v20 = 980;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
      {
        case 128:
          v19 = !v7;
          v20 = 910;
          goto LABEL_61;
        case 256:
          v19 = !v7;
          v20 = 500;
          goto LABEL_61;
        case 512:
          v19 = !v7;
          v20 = 250;
LABEL_61:
          if (v19)
          {
            v22 = 900;
          }

          else
          {
            v22 = v20;
          }

          LOWORD(v18) = v22 | v18;
          return v18;
      }
    }

    goto LABEL_65;
  }

LABEL_36:
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return v18;
    }

    if (v5 == 2)
    {
      v21 = v18 == 0;
      LOWORD(v18) = 10;
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v5 == 4)
  {
    v21 = v18 == 0;
    LOWORD(v18) = 900;
    goto LABEL_66;
  }

  if (v5 == 8)
  {
    LOWORD(v18) = 50;
    return v18;
  }

  if (v5 != 16)
  {
LABEL_65:
    v21 = v18 == 0;
    LOWORD(v18) = 50;
LABEL_66:
    if (!v21)
    {
      LOWORD(v18) = v18 + 1;
    }
  }

  return v18;
}

uint64_t webrtc::Network::GuessAdapterFromNetworkCost(webrtc::Network *this)
{
  if (this > 500)
  {
    if (this <= 910)
    {
      if (this > 900)
      {
        if (this == 901)
        {
          return 0x100000004;
        }

        if (this == 910)
        {
          return 128;
        }
      }

      else
      {
        if (this == 501)
        {
          return 0x100000100;
        }

        if (this == 900)
        {
          return 4;
        }
      }
    }

    else if (this <= 980)
    {
      if (this == 911)
      {
        return 0x100000080;
      }

      if (this == 980)
      {
        return 64;
      }
    }

    else
    {
      switch(this)
      {
        case 0x3D5:
          return 0x100000040;
        case 0x3E7:
          return 32;
        case 0x3E8:
          return 0x100000020;
      }
    }

    goto LABEL_43;
  }

  if (this <= 49)
  {
    if (this > 9)
    {
      if (this == 10)
      {
        return 2;
      }

      if (this == 11)
      {
        return 0x100000002;
      }
    }

    else
    {
      if (!this)
      {
        return 1;
      }

      if (this == 1)
      {
        return 0x100000001;
      }
    }

    goto LABEL_43;
  }

  if (this > 249)
  {
    switch(this)
    {
      case 0xFA:
        return 512;
      case 0xFB:
        return 0x100000200;
      case 0x1F4:
        return 256;
    }

    goto LABEL_43;
  }

  if (this != 50)
  {
    if (this == 51)
    {
      return 0x100000000;
    }

LABEL_43:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
    }
  }

  return 0;
}

void webrtc::BasicNetworkManager::set_vpn_list(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 376);
  if (v2)
  {
    v9 = a1;
    __p = 0;
    v11 = 0;
    v12 = 0;
    v3 = a2[1];
    if (v3 != *a2)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3) < 0x666666666666667)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    (*(*v2 + 96))(v2, &v9, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::BasicNetworkManager::set_vpn_list(std::vector<webrtc::NetworkMask> const&)::$_0>, &v8);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = (a1 + 448);
    if (v4 != a2)
    {
      v5 = a2[1];
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 3);
      v7 = *a2;

      std::vector<webrtc::NetworkMask>::__assign_with_size[abi:sn200100]<webrtc::NetworkMask*,webrtc::NetworkMask*>(v4, v7, v5, v6);
    }
  }
}

void std::vector<webrtc::InterfaceAddress>::__emplace_back_slow_path<webrtc::InterfaceAddress>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 5) + 1;
  if (!(v1 >> 59))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 4 > v1)
    {
      v1 = v2 >> 4;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v2)
    {
      webrtc::Network::~Network(v2);
      MEMORY[0x2743DA540]();
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void **std::vector<webrtc::InterfaceAddress>::__assign_with_size[abi:sn200100]<webrtc::InterfaceAddress*,webrtc::InterfaceAddress*>(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if (a4 > (v6 - *result) >> 5)
  {
    if (v7)
    {
      v8 = a4;
      v9 = result[1];
      v10 = *result;
      if (v9 != v7)
      {
        v11 = v9 - 32;
        v12 = v9 - 32;
        v13 = v9 - 32;
        do
        {
          v14 = *v13;
          v13 -= 32;
          (*v14)(v12);
          v11 -= 32;
          v15 = v12 == v7;
          v12 = v13;
        }

        while (!v15);
        v10 = *v5;
      }

      v5[1] = v7;
      operator delete(v10);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      a4 = v8;
    }

    if (!(a4 >> 59))
    {
      v16 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v16 = a4;
      }

      v17 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v18 = 0x7FFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v16;
      }

      if (!(v18 >> 59))
      {
        operator new();
      }
    }

    goto LABEL_35;
  }

  v19 = result[1];
  v20 = v19 - v7;
  if (a4 <= (v19 - v7) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        *(v7 + 7) = *(v4 + 28);
        *(v7 + 2) = *(v4 + 8);
        *(v7 + 12) = *(v4 + 12);
        v4 += 32;
        v7 += 32;
      }

      while (v4 != a3);
      v19 = result[1];
    }

    if (v19 != v7)
    {
      v26 = v19 - 32;
      v27 = v19 - 32;
      v28 = v19 - 32;
      do
      {
        v29 = *v28;
        v28 -= 32;
        result = (*v29)(v27);
        v26 -= 32;
        v15 = v27 == v7;
        v27 = v28;
      }

      while (!v15);
    }

    v5[1] = v7;
  }

  else
  {
    if (v19 != v7)
    {
      v21 = a2 + v20;
      v22 = v7 + 28;
      v23 = (a2 + 28);
      do
      {
        *v22 = *v23;
        *(v22 - 5) = *(v23 - 5);
        *(v22 - 1) = *(v23 - 1);
        v22 += 8;
        v23 += 8;
        v20 -= 32;
      }

      while (v20);
      v19 = result[1];
      v4 = v21;
    }

    v24 = v19;
    if (v4 != a3)
    {
      v24 = v19;
      v25 = v19;
      while (v25)
      {
        *v25 = &unk_28828CE50;
        *(v25 + 2) = *(v4 + 8);
        *(v25 + 12) = *(v4 + 12);
        *v25 = &unk_288294A90;
        *(v25 + 7) = *(v4 + 28);
        v4 += 32;
        v25 += 32;
        v24 += 32;
        if (v4 == a3)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_35:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_25:
    result[1] = v24;
  }

  return result;
}

uint64_t std::vector<webrtc::NetworkMask>::__assign_with_size[abi:sn200100]<webrtc::NetworkMask*,webrtc::NetworkMask*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    goto LABEL_26;
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *(result + 8) = *(v4 + 8);
      *(result + 12) = *(v4 + 12);
      *(result + 32) = *(v4 + 32);
      v4 += 40;
      result += 40;
    }

    a1[1] = result;
  }

  else
  {
    if (v12 != result)
    {
      v14 = a2 + v13;
      v15 = (result + 32);
      v16 = (a2 + 32);
      do
      {
        *(v15 - 6) = *(v16 - 6);
        *(v15 - 5) = *(v16 - 5);
        v17 = *v16;
        v16 += 10;
        *v15 = v17;
        v15 += 10;
        v13 -= 40;
      }

      while (v13);
      v12 = a1[1];
      v4 = v14;
    }

    v18 = v12;
    if (v4 != a3)
    {
      v18 = v12;
      v19 = v12;
      while (v19)
      {
        *v19 = &unk_28828CE50;
        *(v19 + 8) = *(v4 + 8);
        *(v19 + 12) = *(v4 + 12);
        *(v19 + 32) = *(v4 + 32);
        v4 += 40;
        v19 += 40;
        v18 += 40;
        if (v4 == a3)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_22:
    a1[1] = v18;
  }

  return result;
}

void std::__tree<std::__value_type<std::string,webrtc::anonymous namespace::AddressList>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::anonymous namespace::AddressList>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::anonymous namespace::AddressList>>>::destroy(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 9);
      v4 = *(a1 + 8);
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
        v4 = *(a1 + 8);
      }

      *(a1 + 9) = v2;
      operator delete(v4);
    }

    v10 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v10)
    {
      webrtc::Network::~Network(v10);
      MEMORY[0x2743DA540]();
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,false>(webrtc::Network **a1, webrtc::Network **a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 1;
  v173 = (a2 - 3);
  v174 = (a2 - 2);
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v69 = (*a3)(v10 + 1, v10);
          v70 = (*a3)(v9, v10 + 1);
          if (v69)
          {
            v71 = *v10;
            if (!v70)
            {
              *v10 = v10[1];
              v10[1] = v71;
              if ((*a3)(v9, v10 + 1))
              {
                v72 = v10[1];
                v10[1] = *v9;
                *v9 = v72;
              }

              return result;
            }

LABEL_131:
            *v10 = *v9;
            *v9 = v71;
            return result;
          }

          if (!v70)
          {
            return result;
          }

          v144 = v10[1];
          v10[1] = *v9;
          *v9 = v144;
          break;
        case 4:
          v75 = (*a3)(v10 + 1, v10);
          v76 = (*a3)(v10 + 2, v10 + 1);
          if (v75)
          {
            v48 = *v10;
            if (!v76)
            {
              goto LABEL_260;
            }

            *v10 = v10[2];
            v10[2] = v48;
          }

          else if (v76)
          {
            *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
            if ((*a3)(v10 + 1, v10))
            {
              *v10 = vextq_s8(*v10, *v10, 8uLL);
            }
          }

LABEL_262:
          if (!(*a3)(v9, a1 + 2))
          {
            return result;
          }

          v172 = a1[2];
          a1[2] = *v9;
          *v9 = v172;
          if (!(*a3)(a1 + 2, a1 + 1))
          {
            return result;
          }

          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          break;
        case 5:

          std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
          return result;
        default:
          goto LABEL_9;
      }

      if ((*a3)(a1 + 1, a1))
      {
        result = vextq_s8(*a1, *a1, 8uLL);
        *a1 = result;
      }

      return result;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (!(*a3)(a2 - 1, v10))
      {
        return result;
      }

      v71 = *v10;
      goto LABEL_131;
    }

LABEL_9:
    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v48 = (v11 - 2) >> 1;
      v176 = v48;
      do
      {
        v109 = v48;
        if (v176 >= v48)
        {
          v110 = (2 * v48) | 1;
          v9 = &a1[v110];
          if ((2 * v48 + 2) < v11 && (*a3)(&a1[v110], v9 + 1))
          {
            ++v9;
            v110 = 2 * v109 + 2;
          }

          v111 = &a1[v109];
          if (((*a3)(v9, v111) & 1) == 0)
          {
            v112 = *v111;
            *v111 = 0;
            v179 = v112;
            do
            {
              v113 = v9;
              v114 = *v9;
              *v9 = 0;
              v115 = *v111;
              *v111 = v114;
              if (v115)
              {
                webrtc::Network::~Network(v115);
                MEMORY[0x2743DA540]();
              }

              if (v176 < v110)
              {
                break;
              }

              v116 = (2 * v110) | 1;
              v9 = &a1[v116];
              v117 = 2 * v110 + 2;
              if (v117 < v11 && (*a3)(&a1[v116], v9 + 1))
              {
                ++v9;
                v116 = v117;
              }

              v111 = v113;
              v110 = v116;
            }

            while (!(*a3)(v9, &v179));
            v118 = v179;
            v179 = 0;
            v119 = *v113;
            *v113 = v118;
            if (v119)
            {
              webrtc::Network::~Network(v119);
              MEMORY[0x2743DA540]();
            }

            v120 = v179;
            v179 = 0;
            if (v120)
            {
              webrtc::Network::~Network(v120);
              MEMORY[0x2743DA540]();
            }
          }
        }

        v48 = v109 - 1;
      }

      while (v109);
      while (2)
      {
        if (v11 <= 0)
        {
          goto LABEL_259;
        }

        v123 = 0;
        v177 = *a1;
        *a1 = 0;
        v124 = a1;
        do
        {
          v125 = &v124[v123];
          v9 = v125 + 1;
          v126 = 2 * v123;
          v123 = (2 * v123) | 1;
          v127 = v126 + 2;
          if (v126 + 2 < v11)
          {
            v128 = v125 + 2;
            if ((*a3)(v125 + 1, v125 + 2))
            {
              v9 = v128;
              v123 = v127;
            }
          }

          v129 = *v9;
          *v9 = 0;
          v130 = *v124;
          *v124 = v129;
          if (v130)
          {
            webrtc::Network::~Network(v130);
            MEMORY[0x2743DA540]();
          }

          v124 = v9;
        }

        while (v123 <= ((v11 - 2) >> 1));
        if (v9 == --a2)
        {
          v121 = *v9;
          *v9 = v177;
          if (!v121)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v131 = *a2;
          *a2 = 0;
          v132 = *v9;
          *v9 = v131;
          if (v132)
          {
            webrtc::Network::~Network(v132);
            MEMORY[0x2743DA540]();
          }

          v133 = *a2;
          *a2 = v177;
          if (v133)
          {
            webrtc::Network::~Network(v133);
            MEMORY[0x2743DA540]();
          }

          v134 = v9 + 1 - a1;
          v122 = v134 < 2;
          v135 = v134 - 2;
          if (v122)
          {
            goto LABEL_197;
          }

          v136 = v135 >> 1;
          v137 = &a1[v135 >> 1];
          if (!(*a3)(v137, v9))
          {
            goto LABEL_197;
          }

          v138 = *v9;
          *v9 = 0;
          v179 = v138;
          do
          {
            v139 = v137;
            v140 = *v137;
            *v137 = 0;
            v141 = *v9;
            *v9 = v140;
            if (v141)
            {
              webrtc::Network::~Network(v141);
              MEMORY[0x2743DA540]();
            }

            if (!v136)
            {
              break;
            }

            v136 = (v136 - 1) >> 1;
            v137 = &a1[v136];
            v9 = v139;
          }

          while (((*a3)(v137, &v179) & 1) != 0);
          v142 = v179;
          v179 = 0;
          v143 = *v139;
          *v139 = v142;
          if (!v143 || (webrtc::Network::~Network(v143), MEMORY[0x2743DA540](), v121 = v179, v179 = 0, !v121))
          {
LABEL_197:
            v48 = v11 - 1;
            v122 = v11-- > 2;
            if (!v122)
            {
              return result;
            }

            continue;
          }
        }

        break;
      }

      webrtc::Network::~Network(v121);
      MEMORY[0x2743DA540]();
      goto LABEL_197;
    }

    v12 = &v10[v11 >> 1];
    v13 = *a3;
    if (v11 >= 0x81)
    {
      v14 = v13(&a1[v11 >> 1], a1);
      v15 = (*a3)(a2 - 1, v12);
      if (v14)
      {
        v16 = *a1;
        if (v15)
        {
          *a1 = *v9;
          goto LABEL_27;
        }

        *a1 = *v12;
        *v12 = v16;
        if ((*a3)(a2 - 1, v12))
        {
          v16 = *v12;
          *v12 = *v9;
LABEL_27:
          *v9 = v16;
        }
      }

      else if (v15)
      {
        v20 = *v12;
        *v12 = *v9;
        *v9 = v20;
        if ((*a3)(v12, a1))
        {
          v21 = *a1;
          *a1 = *v12;
          *v12 = v21;
        }
      }

      v24 = v12 - 1;
      v25 = (*a3)(v12 - 1, a1 + 1);
      v26 = (*a3)(v174, v12 - 1);
      if (v25)
      {
        v27 = a1[1];
        if (v26)
        {
          v28 = a2 - 2;
          a1[1] = *v174;
          goto LABEL_41;
        }

        a1[1] = *v24;
        *v24 = v27;
        if ((*a3)(v174, v12 - 1))
        {
          v27 = *v24;
          v28 = a2 - 2;
          *v24 = *v174;
LABEL_41:
          *v28 = v27;
        }
      }

      else if (v26)
      {
        v29 = *v24;
        *v24 = *v174;
        *v174 = v29;
        if ((*a3)(v12 - 1, a1 + 1))
        {
          v30 = a1[1];
          a1[1] = *v24;
          *v24 = v30;
        }
      }

      v32 = (*a3)(v12 + 1, a1 + 2);
      v33 = (*a3)(v173, v12 + 1);
      if (v32)
      {
        v34 = a1[2];
        if (v33)
        {
          v35 = a2 - 3;
          a1[2] = *v173;
          goto LABEL_50;
        }

        a1[2] = v12[1];
        v12[1] = v34;
        if ((*a3)(v173, v12 + 1))
        {
          v34 = v12[1];
          v35 = a2 - 3;
          v12[1] = *v173;
LABEL_50:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v36 = v12[1];
        v12[1] = *v173;
        *v173 = v36;
        if ((*a3)(v12 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v12[1];
          v12[1] = v37;
        }
      }

      v38 = (*a3)(v12, v12 - 1);
      v39 = (*a3)(v12 + 1, v12);
      if (v38)
      {
        v40 = *v24;
        if (v39)
        {
          v41 = *v12;
          *v24 = v12[1];
          v12[1] = v40;
          goto LABEL_60;
        }

        *v24 = *v12;
        *v12 = v40;
        v44 = (*a3)(v12 + 1, v12);
        v41 = *v12;
        if (v44)
        {
          v43 = v12[1];
          *v12 = v43;
          v12[1] = v41;
LABEL_59:
          v41 = v43;
        }
      }

      else
      {
        v41 = *v12;
        if (v39)
        {
          *v12 = v12[1];
          v12[1] = v41;
          v42 = (*a3)(v12, v12 - 1);
          v41 = *v12;
          if (v42)
          {
            v43 = *v24;
            *v24 = v41;
            *v12 = v43;
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      v45 = *a1;
      *a1 = v41;
      *v12 = v45;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v31 = *a1;
LABEL_62:
      v47 = 0;
      *a1 = 0;
      v179 = v31;
      do
      {
        v48 = &a1[v47];
        v49 = &a1[v47 + 1];
        if (v49 == a2)
        {
          goto LABEL_259;
        }

        ++v47;
      }

      while (((*a3)(v49, &v179) & 1) != 0);
      v50 = &a1[v47];
      v51 = a2;
      if (v47 != 1)
      {
        while (v51 != a1)
        {
          if ((*a3)(--v51, &v179))
          {
            goto LABEL_72;
          }
        }

        goto LABEL_259;
      }

      v51 = a2;
      do
      {
        if (v50 >= v51)
        {
          break;
        }

        --v51;
      }

      while (((*a3)(v51, &v179) & 1) == 0);
LABEL_72:
      if (v50 < v51)
      {
        v52 = &a1[v47];
        v53 = v51;
LABEL_74:
        v48 = *v52;
        *v52 = *v53;
        *v53 = v48;
        while (1)
        {
          if (++v52 == a2)
          {
            goto LABEL_259;
          }

          if (((*a3)(v52, &v179) & 1) == 0)
          {
            while (v53 != a1)
            {
              if ((*a3)(--v53, &v179))
              {
                if (v52 < v53)
                {
                  goto LABEL_74;
                }

                v54 = (v52 - 1);
                if (v54 != a1)
                {
                  goto LABEL_83;
                }

                goto LABEL_85;
              }
            }

            goto LABEL_259;
          }
        }
      }

      v54 = (v50 - 8);
      if ((v50 - 8) != a1)
      {
LABEL_83:
        v55 = *v54;
        *v54 = 0;
        v56 = *a1;
        *a1 = v55;
        if (v56)
        {
          webrtc::Network::~Network(v56);
          MEMORY[0x2743DA540]();
        }
      }

LABEL_85:
      v57 = v179;
      v179 = 0;
      v58 = *v54;
      *v54 = v57;
      if (v58)
      {
        webrtc::Network::~Network(v58);
        MEMORY[0x2743DA540]();
      }

      v59 = v179;
      v179 = 0;
      if (v59)
      {
        webrtc::Network::~Network(v59);
        MEMORY[0x2743DA540]();
      }

      if (v50 < v51)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,false>(a1, v54, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v54 + 1;
        continue;
      }

      v60 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*>(a1, v54, a3);
      v10 = v54 + 1;
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*>(v54 + 1, a2, a3))
      {
        if (v60)
        {
          continue;
        }

        goto LABEL_92;
      }

      a2 = v54;
      if (v60)
      {
        return result;
      }

      goto LABEL_1;
    }

    v17 = v13(a1, &a1[v11 >> 1]);
    v18 = (*a3)(a2 - 1, a1);
    if (v17)
    {
      v19 = *v12;
      if (v18)
      {
        *v12 = *v9;
      }

      else
      {
        *v12 = *a1;
        *a1 = v19;
        if (!(*a3)(a2 - 1, a1))
        {
          goto LABEL_37;
        }

        v19 = *a1;
        *a1 = *v9;
      }

      *v9 = v19;
    }

    else if (v18)
    {
      v22 = *a1;
      *a1 = *v9;
      *v9 = v22;
      if ((*a3)(a1, v12))
      {
        v23 = *v12;
        *v12 = *a1;
        *a1 = v23;
        --a4;
        if (a5)
        {
          goto LABEL_38;
        }

        goto LABEL_61;
      }
    }

LABEL_37:
    --a4;
    if (a5)
    {
      goto LABEL_38;
    }

LABEL_61:
    v46 = (*a3)(a1 - 1, a1);
    v31 = *a1;
    if (v46)
    {
      goto LABEL_62;
    }

    *a1 = 0;
    v179 = v31;
    if ((*a3)(&v179, a2 - 1))
    {
      v10 = a1;
      while (++v10 != a2)
      {
        if ((*a3)(&v179, v10))
        {
          goto LABEL_101;
        }
      }

LABEL_259:
      __break(1u);
LABEL_260:
      *a1 = a1[1];
      a1[1] = v48;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }

      goto LABEL_262;
    }

    v48 = (a1 + 1);
    do
    {
      v10 = v48;
      if (v48 >= a2)
      {
        break;
      }

      v61 = (*a3)(&v179, v48);
      v48 = (v10 + 1);
    }

    while (!v61);
LABEL_101:
    v62 = a2;
    if (v10 < a2)
    {
      v62 = a2;
      while (v62 != a1)
      {
        if (((*a3)(&v179, --v62) & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_259;
    }

LABEL_111:
    if (v10 < v62)
    {
      v48 = *v10;
      *v10 = *v62;
      *v62 = v48;
      while (1)
      {
        if (++v10 == a2)
        {
          goto LABEL_259;
        }

        if ((*a3)(&v179, v10))
        {
          while (v62 != a1)
          {
            if (((*a3)(&v179, --v62) & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          goto LABEL_259;
        }
      }
    }

    v63 = v10 - 1;
    if (v10 - 1 != a1)
    {
      v64 = *v63;
      *v63 = 0;
      v65 = *a1;
      *a1 = v64;
      if (v65)
      {
        webrtc::Network::~Network(v65);
        MEMORY[0x2743DA540]();
      }
    }

    v66 = v179;
    v179 = 0;
    v67 = *v63;
    *v63 = v66;
    if (v67)
    {
      webrtc::Network::~Network(v67);
      MEMORY[0x2743DA540]();
    }

    v68 = v179;
    v179 = 0;
    if (v68)
    {
      webrtc::Network::~Network(v68);
      MEMORY[0x2743DA540]();
    }

    a5 = 0;
  }

  v77 = v10 + 1;
  v78 = v10 == a2 || v77 == a2;
  v79 = v78;
  if ((a5 & 1) == 0)
  {
    if (v79)
    {
      return result;
    }

    v145 = 0;
    v146 = 8;
    while (1)
    {
      v147 = v146;
      if ((*a3)(v77, (a1 + v145)))
      {
        break;
      }

LABEL_230:
      v146 = v147 + 8;
      v77 = (a1 + v147 + 8);
      v145 = v147;
      if (v77 == a2)
      {
        return result;
      }
    }

    v148 = *v77;
    *v77 = 0;
    v178 = v147;
    v179 = v148;
    v48 = v77;
    v9 = (a1 + v145);
    v149 = *(a1 + v145);
    *(a1 + v145) = 0;
    *v48 = v149;
    while (1)
    {
      do
      {
        if (v145 == -8)
        {
          goto LABEL_259;
        }

        v145 -= 8;
        if (((*a3)(&v179, (a1 + v145)) & 1) == 0)
        {
          v169 = v179;
          v179 = 0;
          v170 = *v9;
          *v9 = v169;
          if (v170)
          {
            webrtc::Network::~Network(v170);
            MEMORY[0x2743DA540]();
            v171 = v179;
            v179 = 0;
            if (v171)
            {
              webrtc::Network::~Network(v171);
              MEMORY[0x2743DA540]();
            }
          }

          v147 = v178;
          goto LABEL_230;
        }

        v167 = *v9;
        v48 = v9;
        v9 = (a1 + v145);
        v168 = *(a1 + v145);
        *(a1 + v145) = 0;
        *v48 = v168;
      }

      while (!v167);
      v150 = *(v167 + 240);
      if (v150)
      {
        v151 = *(v167 + 248);
        v152 = *(v167 + 240);
        if (v151 != v150)
        {
          v153 = v151 - 4;
          v154 = v151 - 4;
          v155 = v151 - 4;
          do
          {
            v156 = *v155;
            v155 -= 4;
            (*v156)(v154);
            v153 -= 4;
            v78 = v154 == v150;
            v154 = v155;
          }

          while (!v78);
          v152 = *(v167 + 240);
        }

        *(v167 + 248) = v150;
        operator delete(v152);
      }

      if (*(v167 + 239) < 0)
      {
        operator delete(*(v167 + 216));
        if (*(v167 + 175) < 0)
        {
LABEL_245:
          operator delete(*(v167 + 152));
          if ((*(v167 + 151) & 0x80000000) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_246;
        }
      }

      else if (*(v167 + 175) < 0)
      {
        goto LABEL_245;
      }

      if ((*(v167 + 151) & 0x80000000) == 0)
      {
        goto LABEL_248;
      }

LABEL_246:
      operator delete(*(v167 + 128));
LABEL_248:
      while (1)
      {
        v161 = *(v167 + 88);
        if (!v161)
        {
          break;
        }

        v157 = *(v167 + 80);
        v158 = v157[3];
        v160 = *v157;
        v159 = v157[1];
        *(v160 + 8) = v159;
        *v159 = v160;
        *(v167 + 88) = v161 - 1;
        operator delete(v157);
        (*(v158 + 16))(v158, v167 + 56);
      }

      *(v167 + 96) = v167 + 72;
      for (i = *(v167 + 32); i; i = *(v167 + 32))
      {
        v163 = *(v167 + 24);
        v164 = v163[3];
        v166 = *v163;
        v165 = v163[1];
        *(v166 + 8) = v165;
        *v165 = v166;
        *(v167 + 32) = i - 1;
        operator delete(v163);
        (*(v164 + 16))(v164, v167);
      }

      *(v167 + 40) = v167 + 16;
      MEMORY[0x2743DA540](v167, 0x10F2C40F3034114);
    }
  }

  if (v79)
  {
    return result;
  }

  v80 = v10;
  while (2)
  {
    v81 = v77;
    if (!(*a3)(v77, v80))
    {
      goto LABEL_144;
    }

    v82 = *v77;
    *v77 = 0;
    v179 = v82;
    v83 = v80;
    v84 = *v80;
    *v80 = 0;
    *v77 = v84;
    while (v83 != a1)
    {
      v102 = v83 - 1;
      if (((*a3)(&v179, v83 - 1) & 1) == 0)
      {
        goto LABEL_171;
      }

      v103 = *v83;
      v104 = v83--;
      v105 = *v102;
      *v102 = 0;
      *v104 = v105;
      if (v103)
      {
        v85 = *(v103 + 30);
        if (v85)
        {
          v86 = *(v103 + 31);
          v87 = *(v103 + 30);
          if (v86 != v85)
          {
            v88 = v86 - 4;
            v89 = v86 - 4;
            v90 = v86 - 4;
            do
            {
              v91 = *v90;
              v90 -= 4;
              (*v91)(v89);
              v88 -= 4;
              v78 = v89 == v85;
              v89 = v90;
            }

            while (!v78);
            v87 = *(v103 + 30);
          }

          *(v103 + 31) = v85;
          operator delete(v87);
        }

        if (*(v103 + 239) < 0)
        {
          operator delete(*(v103 + 27));
          if (*(v103 + 175) < 0)
          {
            goto LABEL_159;
          }

LABEL_156:
          if (*(v103 + 151) < 0)
          {
LABEL_160:
            operator delete(*(v103 + 16));
          }
        }

        else
        {
          if ((*(v103 + 175) & 0x80000000) == 0)
          {
            goto LABEL_156;
          }

LABEL_159:
          operator delete(*(v103 + 19));
          if (*(v103 + 151) < 0)
          {
            goto LABEL_160;
          }
        }

        while (1)
        {
          v96 = *(v103 + 11);
          if (!v96)
          {
            break;
          }

          v92 = *(v103 + 10);
          v93 = v92[3];
          v95 = *v92;
          v94 = v92[1];
          *(v95 + 8) = v94;
          *v94 = v95;
          *(v103 + 11) = v96 - 1;
          operator delete(v92);
          (*(v93 + 16))(v93, v103 + 56);
        }

        *(v103 + 12) = v103 + 72;
        for (j = *(v103 + 4); j; j = *(v103 + 4))
        {
          v98 = *(v103 + 3);
          v99 = v98[3];
          v101 = *v98;
          v100 = v98[1];
          *(v101 + 8) = v100;
          *v100 = v101;
          *(v103 + 4) = j - 1;
          operator delete(v98);
          (*(v99 + 16))(v99, v103);
        }

        *(v103 + 5) = v103 + 16;
        MEMORY[0x2743DA540](v103, 0x10F2C40F3034114);
        continue;
      }
    }

    v83 = a1;
LABEL_171:
    v106 = v179;
    v179 = 0;
    v107 = *v83;
    *v83 = v106;
    if (v107)
    {
      webrtc::Network::~Network(v107);
      MEMORY[0x2743DA540]();
      v108 = v179;
      v179 = 0;
      if (v108)
      {
        webrtc::Network::~Network(v108);
        MEMORY[0x2743DA540]();
      }
    }

LABEL_144:
    v77 = v81 + 1;
    v80 = v81;
    if (v81 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*>(webrtc::Network **a1, webrtc::Network **a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = (a2 - 1);
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *v9;
        *v9 = v20;
        if (!(*a3)(a1 + 1, a1))
        {
          return 1;
        }

        break;
      case 4:
        v16 = (a2 - 1);
        v17 = (*a3)(a1 + 1, a1);
        v18 = (*a3)(a1 + 2, a1 + 1);
        if (v17)
        {
          v19 = *a1;
          if (v18)
          {
            *a1 = a1[2];
            a1[2] = v19;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v19;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v18)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v16, a1 + 2))
        {
          return 1;
        }

        v36 = a1[2];
        a1[2] = *v16;
        *v16 = v36;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!(*a3)(a1 + 1, a1))
        {
          return 1;
        }

        break;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<webrtc::Network> const&,std::unique_ptr<webrtc::Network> const&),std::unique_ptr<webrtc::Network>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    *a1 = vextq_s8(*a1, *a1, 8uLL);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = (*a3)(a1 + 1, a1);
  v14 = (*a3)(a1 + 2, a1 + 1);
  if (v13)
  {
    v15 = *a1;
    if (v14)
    {
      *a1 = a1[2];
      a1[2] = v15;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v15;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v14)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v21 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = 0;
  v24 = (a1 + 2);
  while (1)
  {
    if (!(*a3)(v21, v24))
    {
      goto LABEL_36;
    }

    v25 = *v21;
    *v21 = 0;
    v38 = v25;
    v26 = v22 * 8;
    v27 = &a1[v22];
    v28 = a1[v22 + 2];
    v27[2] = 0;
    v27[3] = v28;
    while (1)
    {
      if (v26 == -16)
      {
        v32 = v38;
        v38 = 0;
        v33 = *a1;
        *a1 = v32;
        if (!v33)
        {
          goto LABEL_46;
        }

LABEL_45:
        webrtc::Network::~Network(v33);
        MEMORY[0x2743DA540]();
        goto LABEL_46;
      }

      v29 = a1 + v26;
      if (((*a3)(&v38, (a1 + v26 + 8)) & 1) == 0)
      {
        break;
      }

      v30 = v27[2];
      v26 -= 8;
      v27 = (a1 + v26);
      v31 = *(a1 + v26 + 16);
      v27[2] = 0;
      v27[3] = v31;
      if (v30)
      {
        webrtc::Network::~Network(v30);
        MEMORY[0x2743DA540]();
      }
    }

    v35 = v38;
    v38 = 0;
    v33 = *(v29 + 16);
    *(v29 + 16) = v35;
    if (v33)
    {
      goto LABEL_45;
    }

LABEL_46:
    v34 = v38;
    v38 = 0;
    if (v34)
    {
      webrtc::Network::~Network(v34);
      MEMORY[0x2743DA540]();
    }

    if (++v23 == 8)
    {
      return v21 + 1 == a2;
    }

LABEL_36:
    v24 = v21;
    ++v22;
    if (++v21 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v74 = (*a3)(v10->i64[1], v10->i64[0]);
          result = (*a3)(a2[-1].i64[1], v10->i64[1]);
          if ((v74 & 1) == 0)
          {
            if (!result)
            {
              return result;
            }

            v112 = v10->i64[1];
            v10->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v112;
            result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_173:
            if (result)
            {
              *v10 = vextq_s8(*v10, *v10, 8uLL);
            }

            return result;
          }

          v20 = v10->i64[0];
          if (result)
          {
            v10->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v20;
            return result;
          }

          goto LABEL_184;
        case 4:

          return std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,0>(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
        case 5:
          std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
          result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
          if (!result)
          {
            return result;
          }

          v75 = v10[1].i64[1];
          v10[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v75;
          result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
          if (!result)
          {
            return result;
          }

          v76 = v10[1].i64[0];
          v10[1].i64[0] = v10[1].i64[1];
          v10[1].i64[1] = v76;
          result = (*a3)();
          if (!result)
          {
            return result;
          }

          v78 = v10->i64[1];
          v77 = v10[1].i64[0];
          v79 = v10->i64[0];
          v10->i64[1] = v77;
          v10[1].i64[0] = v78;
          result = (*a3)(v77, v79);
          goto LABEL_173;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(a2[-1].i64[1], v10->i64[0]);
        if (result)
        {
          v80 = v10->i64[0];
          v10->i64[0] = a2[-1].i64[1];
          goto LABEL_186;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = v12 >> 1;
        v122 = v12 >> 1;
        do
        {
          if (v122 >= v89)
          {
            v91 = (2 * (v89 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v92 = &v9->i64[v91];
            if (2 * (v89 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * (v89 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v93 = &v9->i64[v89];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v120 = *v93;
              do
              {
                v94 = v92;
                *v93 = *v92;
                if (v122 < v91)
                {
                  break;
                }

                v95 = (2 * (v91 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v92 = &v9->i64[v95];
                v96 = 2 * v91 + 2;
                if (v96 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v95 = v96;
                }

                result = (*a3)(*v92, v120);
                v93 = v94;
                v91 = v95;
              }

              while (!result);
              *v94 = v120;
            }
          }

          v90 = v89-- <= 0;
        }

        while (!v90);
        do
        {
          v97 = 0;
          v123 = v9->i64[0];
          v98 = (v11 - 2) >> 1;
          v99 = v9;
          do
          {
            while (1)
            {
              v103 = &v99[v97];
              v102 = (v103 + 1);
              v104 = (2 * v97) | 1;
              v105 = 2 * v97 + 2;
              if (v105 < v11)
              {
                break;
              }

              v97 = (2 * v97) | 1;
              *v99 = v102->i64[0];
              v99 = v103 + 1;
              if (v104 > v98)
              {
                goto LABEL_164;
              }
            }

            v101 = v103[2];
            v100 = (v103 + 2);
            result = (*a3)(v100[-1].i64[1], v101);
            if (result)
            {
              v102 = v100;
              v97 = v105;
            }

            else
            {
              v97 = v104;
            }

            *v99 = v102->i64[0];
            v99 = v102;
          }

          while (v97 <= v98);
LABEL_164:
          a2 = (a2 - 8);
          if (v102 == a2)
          {
            v102->i64[0] = v123;
          }

          else
          {
            v102->i64[0] = a2->i64[0];
            a2->i64[0] = v123;
            v106 = (v102 - v9 + 8) >> 3;
            v90 = v106 < 2;
            v107 = v106 - 2;
            if (!v90)
            {
              v108 = v107 >> 1;
              v109 = &v9->i64[v107 >> 1];
              result = (*a3)(*v109, v102->i64[0]);
              if (result)
              {
                v110 = v102->i64[0];
                do
                {
                  v111 = v109;
                  v102->i64[0] = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v9->i64[v108];
                  result = (*a3)(*v109, v110);
                  v102 = v111;
                }

                while ((result & 1) != 0);
                v111->i64[0] = v110;
              }
            }
          }

          v90 = v11-- <= 2;
        }

        while (!v90);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = (v14)(v9->i64[v13], v9->i64[0]);
      v16 = (*a3)(a2[-1].i64[1], v9->i64[v13]);
      if (v15)
      {
        v17 = v9->i64[0];
        if (v16)
        {
          v9->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          v9->i64[0] = v9->i64[v13];
          v9->i64[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v26 = v9->i64[v13];
            v9->i64[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v26;
          }
        }
      }

      else if (v16)
      {
        v22 = v9->i64[v13];
        v9->i64[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[v13], v9->i64[0]))
        {
          v23 = v9->i64[0];
          v9->i64[0] = v9->i64[v13];
          v9->i64[v13] = v23;
        }
      }

      v27 = v13 - 1;
      v28 = (*a3)(v9->i64[v13 - 1], v9->i64[1]);
      v29 = (*a3)(a2[-1].i64[0], v9->i64[v13 - 1]);
      if (v28)
      {
        v30 = v9->i64[1];
        if (v29)
        {
          v9->i64[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v30;
        }

        else
        {
          v9->i64[1] = v9->i64[v27];
          v9->i64[v27] = v30;
          if ((*a3)(a2[-1].i64[0]))
          {
            v34 = v9->i64[v27];
            v9->i64[v27] = a2[-1].i64[0];
            a2[-1].i64[0] = v34;
          }
        }
      }

      else if (v29)
      {
        v31 = v9->i64[v27];
        v9->i64[v27] = a2[-1].i64[0];
        a2[-1].i64[0] = v31;
        if ((*a3)(v9->i64[v27], v9->i64[1]))
        {
          v32 = v9->i64[1];
          v9->i64[1] = v9->i64[v27];
          v9->i64[v27] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*a3)(v9->i64[v13 + 1], v9[1].i64[0]);
      v37 = (*a3)(a2[-2].i64[1], v9->i64[v13 + 1]);
      if (v36)
      {
        v38 = v9[1].i64[0];
        if (v37)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }

        else
        {
          v9[1].i64[0] = v9->i64[v35];
          v9->i64[v35] = v38;
          if ((*a3)(a2[-2].i64[1]))
          {
            v41 = v9->i64[v35];
            v9->i64[v35] = a2[-2].i64[1];
            a2[-2].i64[1] = v41;
          }
        }
      }

      else if (v37)
      {
        v39 = v9->i64[v35];
        v9->i64[v35] = a2[-2].i64[1];
        a2[-2].i64[1] = v39;
        if ((*a3)(v9->i64[v35], v9[1].i64[0]))
        {
          v40 = v9[1].i64[0];
          v9[1].i64[0] = v9->i64[v35];
          v9->i64[v35] = v40;
        }
      }

      v42 = (*a3)(v9->i64[v13], v9->i64[v27]);
      v43 = (*a3)(v9->i64[v35], v9->i64[v13]);
      if (v42)
      {
        v20 = v9->i64[v27];
        if (v43)
        {
          v9->i64[v27] = v9->i64[v35];
          v9->i64[v35] = v20;
          v44 = v9->i64[v13];
          goto LABEL_58;
        }

        v9->i64[v27] = v9->i64[v13];
        v9->i64[v13] = v20;
        v47 = (*a3)(v9->i64[v35]);
        v44 = v9->i64[v13];
        if (v47)
        {
          v46 = v9->i64[v35];
          v9->i64[v13] = v46;
          v9->i64[v35] = v44;
LABEL_57:
          v44 = v46;
        }
      }

      else
      {
        v44 = v9->i64[v13];
        if (v43)
        {
          v9->i64[v13] = v9->i64[v35];
          v9->i64[v35] = v44;
          v45 = (*a3)();
          v44 = v9->i64[v13];
          if (v45)
          {
            v46 = v9->i64[v27];
            v9->i64[v27] = v44;
            v9->i64[v13] = v46;
            goto LABEL_57;
          }
        }
      }

LABEL_58:
      v48 = v9->i64[0];
      v9->i64[0] = v44;
      v9->i64[v13] = v48;
      --a4;
      v21 = v9->i64[0];
      if (a5)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v18 = (v14)(v9->i64[0], v9->i64[v13]);
    v19 = (*a3)(a2[-1].i64[1], v9->i64[0]);
    if (v18)
    {
      v20 = v9->i64[v13];
      if (v19)
      {
        v9->i64[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v20;
        --a4;
        v21 = v9->i64[0];
        if (a5)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v9->i64[v13] = v9->i64[0];
      v9->i64[0] = v20;
      if ((*a3)(a2[-1].i64[1]))
      {
        v33 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v33;
      }
    }

    else if (v19)
    {
      v24 = v9->i64[0];
      v9->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v24;
      if ((*a3)(v9->i64[0], v9->i64[v13]))
      {
        v25 = v9->i64[v13];
        v9->i64[v13] = v9->i64[0];
        v9->i64[0] = v25;
        --a4;
        v21 = v25;
        if (a5)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    --a4;
    v21 = v9->i64[0];
    if (a5)
    {
      goto LABEL_60;
    }

LABEL_59:
    v49 = (*a3)(v9[-1].i64[1], v21);
    v21 = v9->i64[0];
    if (v49)
    {
LABEL_60:
      v50 = 0;
      do
      {
        v51 = &v9->u64[v50 + 1];
        if (v51 == a2)
        {
          goto LABEL_183;
        }

        ++v50;
      }

      while (((*a3)(v51->i64[0], v21) & 1) != 0);
      v52 = (v9 + v50 * 8);
      v53 = a2;
      if (v50 != 1)
      {
        while (v53 != v9)
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
          if ((*a3)(v54, v21))
          {
            goto LABEL_70;
          }
        }

        goto LABEL_183;
      }

      v53 = a2;
      do
      {
        if (v52 >= v53)
        {
          break;
        }

        v55 = v53[-1].i64[1];
        v53 = (v53 - 8);
      }

      while (((*a3)(v55, v21) & 1) == 0);
LABEL_70:
      if (v52 < v53)
      {
        v121 = a4;
        v56 = a5;
        v57 = (v9 + v50 * 8);
        v58 = v53;
LABEL_72:
        v59 = v57->i64[0];
        v57->i64[0] = v58->i64[0];
        v58->i64[0] = v59;
        v60 = &v57->u64[1];
        while (v60 != a2)
        {
          v61 = v60->i64[0];
          v60 = (v60 + 8);
          if (((*a3)(v61, v21) & 1) == 0)
          {
            v57 = (v60 - 8);
            while (v58 != v9)
            {
              v62 = v58[-1].i64[1];
              v58 = (v58 - 8);
              if ((*a3)(v62, v21))
              {
                if (v57 < v58)
                {
                  goto LABEL_72;
                }

                v63 = v60 - 1;
                a5 = v56;
                a4 = v121;
                if (v63 != v9)
                {
                  goto LABEL_82;
                }

                goto LABEL_83;
              }
            }

            goto LABEL_183;
          }
        }

        goto LABEL_183;
      }

      v63 = (v52 - 8);
      if (&v52[-1].u64[1] != v9)
      {
LABEL_82:
        v9->i64[0] = v63->i64[0];
      }

LABEL_83:
      v63->i64[0] = v21;
      if (v52 < v53)
      {
LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,false>(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v63->u64[1];
        continue;
      }

      v64 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**>(v9, v63, a3);
      v10 = &v63->u64[1];
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**>(&v63->i64[1], a2, a3);
      if (!result)
      {
        if (v64)
        {
          continue;
        }

        goto LABEL_86;
      }

      a2 = v63;
      if (v64)
      {
        return result;
      }

      goto LABEL_2;
    }

    result = (*a3)(v9->i64[0], a2[-1].i64[1]);
    v65 = &v9->u64[1];
    if (result)
    {
      do
      {
        if (v65 == a2)
        {
          goto LABEL_183;
        }

        v66 = v65->i64[0];
        v65 = (v65 + 8);
        result = (*a3)(v21, v66);
      }

      while ((result & 1) == 0);
      v10 = (v65 - 8);
    }

    else
    {
      do
      {
        v10 = v65;
        if (v65 >= a2)
        {
          break;
        }

        v65 = (v65 + 8);
        result = (*a3)(v21, v10->i64[0]);
      }

      while ((result & 1) == 0);
    }

    v67 = a2;
    if (v10 < a2)
    {
      v67 = a2;
      while (v67 != v9)
      {
        v68 = v67[-1].i64[1];
        v67 = (v67 - 8);
        result = (*a3)(v21, v68);
        if ((result & 1) == 0)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_183;
    }

LABEL_104:
    if (v10 < v67)
    {
      v69 = v10->i64[0];
      v10->i64[0] = v67->i64[0];
      v70 = &v10->u64[1];
      v67->i64[0] = v69;
      while (v70 != a2)
      {
        v71 = v70->i64[0];
        v70 = (v70 + 8);
        if ((*a3)(v21, v71))
        {
          v10 = (v70 - 8);
          while (v67 != v9)
          {
            v72 = v67[-1].i64[1];
            v67 = (v67 - 8);
            result = (*a3)(v21, v72);
            if ((result & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          goto LABEL_183;
        }
      }

      goto LABEL_183;
    }

    v73 = &v10[-1].i64[1];
    if (&v10[-1].u64[1] != v9)
    {
      v9->i64[0] = *v73;
    }

    a5 = 0;
    *v73 = v21;
  }

  v81 = &v10->u64[1];
  v83 = v10 == a2 || v81 == a2;
  if (a5)
  {
    if (!v83)
    {
      v84 = 0;
      do
      {
        v86 = v10->i64[0];
        v10 = v81;
        result = (*a3)(v81->i64[0], v86);
        if (result)
        {
          v87 = v81->i64[0];
          v88 = v84;
          do
          {
            *(&v9->i64[1] + v88) = *(v9->i64 + v88);
            if (!v88)
            {
              v85 = v9;
              goto LABEL_132;
            }

            result = (*a3)(v87, *(&v9->i64[-1] + v88));
            v88 -= 8;
          }

          while ((result & 1) != 0);
          v85 = (&v9->i64[1] + v88);
LABEL_132:
          *v85 = v87;
        }

        v81 = &v10->u64[1];
        v84 += 8;
      }

      while (&v10->u64[1] != a2);
    }

    return result;
  }

  if (v83)
  {
    return result;
  }

  v113 = 0;
  v114 = -8;
  v115 = 8;
  while (1)
  {
    v116 = *(v9->i64 + v113);
    v113 = v115;
    result = (*a3)(v81->i64[0], v116);
    if (result)
    {
      break;
    }

LABEL_177:
    v115 = v113 + 8;
    v81 = (v81 + 8);
    v114 -= 8;
    if (v81 == a2)
    {
      return result;
    }
  }

  v117 = v81->i64[0];
  v118 = v114;
  v119 = v81;
  while (1)
  {
    *v119 = *(v119 - 1);
    if (!v118)
    {
      break;
    }

    result = (*a3)(v117, *(v119 - 2));
    --v119;
    v118 += 8;
    if ((result & 1) == 0)
    {
      *v119 = v117;
      goto LABEL_177;
    }
  }

LABEL_183:
  __break(1u);
LABEL_184:
  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v20;
  result = (*a3)(a2[-1].i64[1]);
  if (result)
  {
    v80 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
LABEL_186:
    a2[-1].i64[1] = v80;
  }

  return result;
}

uint64_t std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v16;
            if ((*a3)(*(a2 - 1)))
            {
              v23 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v23;
            }
          }

          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(webrtc::Network const*,webrtc::Network const*),webrtc::Network**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_16;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v24 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v24))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (!(*a3)(*v25, *v18))
  {
LABEL_40:
    v18 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }

  v28 = *v25;
  v29 = v26;
  do
  {
    v30 = a1 + v29;
    *(a1 + v29 + 24) = *(a1 + v29 + 16);
    if (v29 == -16)
    {
      *a1 = v28;
      if (++v27 != 8)
      {
        goto LABEL_40;
      }

      return v25 + 1 == a2;
    }

    v29 -= 8;
  }

  while (((*a3)(v28, *(v30 + 1)) & 1) != 0);
  *(a1 + v29 + 24) = v28;
  if (++v27 != 8)
  {
    goto LABEL_40;
  }

  return v25 + 1 == a2;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicNetworkManager::StartUpdating(void)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 32;
  result = *(*a1 + 40);
  for (*(v1 + 56) = result; result != v2; result = *(v1 + 56))
  {
    v4 = *(result + 16);
    *(v1 + 56) = *(result + 8);
    v4();
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicNetworkManager::StartUpdating(void)::$_1 &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::BasicNetworkManager::UpdateNetworksOnce(*a1);
  v2 = *(v1 + 472);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::__function::__func<webrtc::BasicNetworkManager::StartNetworkMonitor(void)::$_0,std::allocator<webrtc::BasicNetworkManager::StartNetworkMonitor(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288296C48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::BasicNetworkManager::StartNetworkMonitor(void)::$_0,std::allocator<webrtc::BasicNetworkManager::StartNetworkMonitor(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/network.cc");
  }

  return webrtc::BasicNetworkManager::UpdateNetworksOnce(v1);
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicNetworkManager::UpdateNetworksContinually(void)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  webrtc::BasicNetworkManager::UpdateNetworksOnce(*a1);
  v2 = *(v1 + 472);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t *webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::BasicNetworkManager::set_vpn_list(std::vector<webrtc::NetworkMask> const&)::$_0>(uint64_t *a1)
{
  v2 = a1 + 1;
  result = (*a1 + 448);
  if (result != v2)
  {
    return std::vector<webrtc::NetworkMask>::__assign_with_size[abi:sn200100]<webrtc::NetworkMask*,webrtc::NetworkMask*>(result, a1[1], a1[2], 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3));
  }

  return result;
}

uint64_t webrtc::AdapterTypeToString@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  if (result <= 15)
  {
    if (result <= 1)
    {
      if (!result)
      {
        *(a2 + 23) = 7;
        if (a2 > "Unknown" || a2 + 7 <= "Unknown")
        {
          strcpy(a2, "Unknown");
          return result;
        }

        goto LABEL_49;
      }

      if (result == 1)
      {
        *(a2 + 23) = 8;
        if (a2 > "Ethernet" || a2 + 8 <= "Ethernet")
        {
          strcpy(a2, "Ethernet");
          return result;
        }

        goto LABEL_49;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          *(a2 + 23) = 4;
          if (a2 > "Wifi" || a2 + 4 <= "Wifi")
          {
            strcpy(a2, "Wifi");
            return result;
          }

          goto LABEL_49;
        case 4:
          *(a2 + 23) = 8;
          if (a2 > "Cellular" || a2 + 8 <= "Cellular")
          {
            strcpy(a2, "Cellular");
            return result;
          }

          goto LABEL_49;
        case 8:
          *(a2 + 23) = 3;
          if (a2 > "VPN" || a2 + 3 <= "VPN")
          {
            *a2 = 5132374;
            return result;
          }

          goto LABEL_49;
      }
    }

LABEL_48:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if (result > 127)
  {
    switch(result)
    {
      case 0x80:
        *(a2 + 23) = 10;
        if (a2 > "Cellular3G" || a2 + 10 <= "Cellular3G")
        {
          strcpy(a2, "Cellular3G");
          return result;
        }

        goto LABEL_49;
      case 0x100:
        *(a2 + 23) = 10;
        if (a2 > "Cellular4G" || a2 + 10 <= "Cellular4G")
        {
          strcpy(a2, "Cellular4G");
          return result;
        }

        goto LABEL_49;
      case 0x200:
        *(a2 + 23) = 10;
        if (a2 > "Cellular5G" || a2 + 10 <= "Cellular5G")
        {
          strcpy(a2, "Cellular5G");
          return result;
        }

        goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (result == 16)
  {
    *(a2 + 23) = 8;
    if (a2 > "Loopback" || a2 + 8 <= "Loopback")
    {
      strcpy(a2, "Loopback");
      return result;
    }

    goto LABEL_49;
  }

  if (result == 32)
  {
    *(a2 + 23) = 8;
    if (a2 > "Wildcard" || a2 + 8 <= "Wildcard")
    {
      strcpy(a2, "Wildcard");
      return result;
    }

    goto LABEL_49;
  }

  if (result != 64)
  {
    goto LABEL_48;
  }

  *(a2 + 23) = 10;
  if (a2 > "Cellular2G" || a2 + 10 <= "Cellular2G")
  {
    strcpy(a2, "Cellular2G");
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

void *std::vector<webrtc::PacketResult>::push_back[abi:sn200100](void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 5) + 1;
    if (v8 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
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

  v4 = a2[1];
  *v2 = *a2;
  v2[1] = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(v2 + 77) = *(a2 + 77);
  v2[3] = v6;
  v2[4] = v7;
  v2[2] = v5;
  result[1] = v2 + 6;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,false>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 6;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 5);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(i, i + 96, (a2 - 6));
          return;
        case 4:
          v75 = (i + 192);
          std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(i, i + 96, i + 192);
          v76 = *(a2 - 3);
          v77 = *(i + 264);
          v78 = v76 < v77;
          if (v76 == v77 && (v78 = *v9 < *v75, *v9 == *v75))
          {
            if (*(a2 - 5) >= *(i + 248))
            {
              return;
            }
          }

          else if (!v78)
          {
            return;
          }

          v252 = *(i + 224);
          v261 = *(i + 240);
          *v265 = *(i + 256);
          *&v265[13] = *(i + 269);
          v230 = *v75;
          v241 = *(i + 208);
          v136 = *(a2 - 5);
          *v75 = *v9;
          *(i + 208) = v136;
          v137 = *(a2 - 1);
          v139 = *(a2 - 4);
          v138 = *(a2 - 3);
          *(i + 256) = *(a2 - 2);
          *(i + 272) = v137;
          *(i + 224) = v139;
          *(i + 240) = v138;
          *v9 = v230;
          *(a2 - 5) = v241;
          *(a2 - 2) = *v265;
          *(a2 - 1) = *&v265[16];
          *(a2 - 4) = v252;
          *(a2 - 3) = v261;
          v140 = *(i + 264);
          v141 = *(i + 168);
          v142 = v140 < v141;
          if (v140 == v141)
          {
            v143 = *(i + 96);
            v142 = *v75 < v143;
            if (*v75 == v143)
            {
              v142 = *(i + 248) < *(i + 152);
            }
          }

          if (v142)
          {
            v253 = *(i + 128);
            v262 = *(i + 144);
            *v265 = *(i + 160);
            *&v265[13] = *(i + 173);
            v231 = *(i + 96);
            v242 = *(i + 112);
            v144 = *(i + 240);
            *(i + 128) = *(i + 224);
            *(i + 144) = v144;
            v145 = *(i + 272);
            *(i + 160) = *(i + 256);
            *(i + 176) = v145;
            v146 = *(i + 208);
            *(i + 96) = *v75;
            *(i + 112) = v146;
            *v75 = v231;
            *(i + 208) = v242;
            *(i + 256) = *v265;
            *(i + 272) = *&v265[16];
            *(i + 224) = v253;
            *(i + 240) = v262;
            v147 = *(i + 168);
            v148 = *(i + 72);
            v149 = v147 < v148;
            if (v147 == v148)
            {
              v150 = *(i + 96);
              v149 = v150 < *i;
              if (v150 == *i)
              {
                v149 = *(i + 152) < *(i + 56);
              }
            }

            if (v149)
            {
              v232 = *i;
              v243 = *(i + 16);
              *&v265[13] = *(i + 77);
              v263 = *(i + 48);
              *v265 = *(i + 64);
              v254 = *(i + 32);
              v151 = *(i + 176);
              *(i + 64) = *(i + 160);
              *(i + 80) = v151;
              v152 = *(i + 144);
              *(i + 32) = *(i + 128);
              *(i + 48) = v152;
              v153 = *(i + 112);
              *i = *(i + 96);
              *(i + 16) = v153;
              *(i + 96) = v232;
              *(i + 112) = v243;
              *(i + 160) = *v265;
              *(i + 176) = *&v265[16];
              *(i + 128) = v254;
              *(i + 144) = v263;
            }
          }

          return;
        case 5:

          std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(i, i + 96, i + 192, i + 288, (a2 - 6));
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v72 = *(a2 - 3);
        v73 = *(i + 72);
        v74 = v72 < v73;
        if (v72 == v73 && (v74 = *v9 < *i, *v9 == *i))
        {
          if (*(a2 - 5) >= *(i + 56))
          {
            return;
          }
        }

        else if (!v74)
        {
          return;
        }

        v229 = *i;
        v240 = *(i + 16);
        *&v265[13] = *(i + 77);
        v260 = *(i + 48);
        *v265 = *(i + 64);
        v251 = *(i + 32);
        v132 = *(a2 - 1);
        v134 = *(a2 - 4);
        v133 = *(a2 - 3);
        *(i + 64) = *(a2 - 2);
        *(i + 80) = v132;
        *(i + 32) = v134;
        *(i + 48) = v133;
        v135 = *(a2 - 5);
        *i = *v9;
        *(i + 16) = v135;
        *v9 = v229;
        *(a2 - 5) = v240;
        *(a2 - 2) = *v265;
        *(a2 - 1) = *&v265[16];
        *(a2 - 4) = v251;
        *(a2 - 3) = v260;
        return;
      }
    }

    if (v11 <= 2303)
    {
      break;
    }

    if (!a4)
    {
      if (i == a2)
      {
        return;
      }

      v101 = (v12 - 2) >> 1;
      v102 = v101;
      while (1)
      {
        v104 = v102;
        if (v101 >= v102)
        {
          v105 = (2 * v102) | 1;
          v103 = (i + 96 * v105);
          if (2 * v104 + 2 < v12)
          {
            v106 = *(v103 + 9);
            v107 = *(v103 + 21);
            v108 = v106 < v107;
            if (v106 == v107)
            {
              v109 = *(v103 + 12);
              v108 = *v103 < v109;
              if (*v103 == v109)
              {
                v108 = *(v103 + 7) < *(v103 + 19);
              }
            }

            if (v108)
            {
              v103 += 6;
              v105 = 2 * v104 + 2;
            }
          }

          v110 = i + 96 * v104;
          v111 = *(v103 + 9);
          v112 = *(v110 + 72);
          if (v111 == v112)
          {
            v113 = *v110;
            if (*v103 == *v110)
            {
              v113 = *v103;
              if (*(v103 + 7) >= *(v110 + 56))
              {
                goto LABEL_196;
              }
            }

            else if (*v103 >= *v110)
            {
              goto LABEL_196;
            }
          }

          else if (v111 >= v112)
          {
            v113 = *v110;
LABEL_196:
            v239 = *(v110 + 24);
            v250 = *(v110 + 40);
            v228 = *(v110 + 8);
            v114 = *(v110 + 56);
            *(&v216 + 5) = *(v110 + 85);
            *&v216 = *(v110 + 80);
            v116 = v103[2];
            v115 = v103[3];
            v117 = v103[5];
            *(v110 + 64) = v103[4];
            *(v110 + 80) = v117;
            *(v110 + 32) = v116;
            *(v110 + 48) = v115;
            v118 = v103[1];
            *v110 = *v103;
            *(v110 + 16) = v118;
            if (v101 >= v105)
            {
              while (1)
              {
                v119 = v103;
                v120 = 2 * v105;
                v105 = (2 * v105) | 1;
                v103 = (i + 96 * v105);
                v121 = v120 + 2;
                if (v121 < v12)
                {
                  v122 = *(v103 + 9);
                  v123 = *(v103 + 21);
                  v124 = v122 < v123;
                  if (v122 == v123)
                  {
                    v125 = *(v103 + 12);
                    v124 = *v103 < v125;
                    if (*v103 == v125)
                    {
                      v124 = *(v103 + 7) < *(v103 + 19);
                    }
                  }

                  if (v124)
                  {
                    v103 += 6;
                    v105 = v121;
                  }
                }

                v126 = *(v103 + 9);
                v127 = v126 < v112;
                if (v126 == v112)
                {
                  v127 = *v103 < v113;
                  if (*v103 == v113)
                  {
                    v127 = *(v103 + 7) < v114;
                  }
                }

                if (v127)
                {
                  break;
                }

                v128 = v103[1];
                *v119 = *v103;
                v119[1] = v128;
                v129 = v103[2];
                v130 = v103[3];
                v131 = v103[5];
                v119[4] = v103[4];
                v119[5] = v131;
                v119[2] = v129;
                v119[3] = v130;
                if (v101 < v105)
                {
                  goto LABEL_179;
                }
              }

              v103 = v119;
            }

LABEL_179:
            *v103 = v113;
            *(v103 + 8) = v228;
            *(v103 + 40) = v250;
            *(v103 + 24) = v239;
            *(v103 + 56) = v114;
            *(v103 + 9) = v112;
            v103[5] = v216;
          }
        }

        v102 = v104 - 1;
        if (!v104)
        {
          v154 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
          while (1)
          {
            if (v154 <= 0)
            {
              goto LABEL_276;
            }

            if (v154 == 1)
            {
              return;
            }

            v155 = 0;
            v233 = *i;
            v244 = *(i + 16);
            *&v265[13] = *(i + 77);
            v264 = *(i + 48);
            *v265 = *(i + 64);
            v255 = *(i + 32);
            v156 = i;
            do
            {
              v161 = v156;
              v162 = &v156[12 * v155];
              v156 = v162 + 12;
              v163 = 2 * v155;
              v155 = (2 * v155) | 1;
              v164 = v163 + 2;
              if (v164 < v154)
              {
                v165 = v162[21];
                v166 = v162[33];
                v167 = v165 < v166;
                if (v165 == v166)
                {
                  v168 = v162[12];
                  v169 = v162[24];
                  v167 = v168 < v169;
                  if (v168 == v169)
                  {
                    v167 = v162[19] < v162[31];
                  }
                }

                if (v167)
                {
                  v156 = v162 + 24;
                  v155 = v164;
                }
              }

              v157 = *(v156 + 1);
              *v161 = *v156;
              v161[1] = v157;
              v158 = *(v156 + 2);
              v159 = *(v156 + 3);
              v160 = *(v156 + 5);
              v161[4] = *(v156 + 4);
              v161[5] = v160;
              v161[2] = v158;
              v161[3] = v159;
            }

            while (v155 <= ((v154 - 2) >> 1));
            a2 -= 6;
            if (v156 == a2)
            {
              *v156 = v233;
              *(v156 + 1) = v244;
              *(v156 + 4) = *v265;
              *(v156 + 5) = *&v265[16];
              *(v156 + 2) = v255;
              *(v156 + 3) = v264;
            }

            else
            {
              v170 = a2[1];
              *v156 = *a2;
              *(v156 + 1) = v170;
              v171 = a2[2];
              v172 = a2[3];
              v173 = a2[5];
              *(v156 + 4) = a2[4];
              *(v156 + 5) = v173;
              *(v156 + 2) = v171;
              *(v156 + 3) = v172;
              a2[4] = *v265;
              a2[5] = *&v265[16];
              a2[2] = v255;
              a2[3] = v264;
              *a2 = v233;
              a2[1] = v244;
              v174 = v156 - i + 96;
              if (v174 >= 97)
              {
                v175 = 0xAAAAAAAAAAAAAAABLL * (v174 >> 5) - 2;
                v176 = v175 >> 1;
                v177 = (i + 96 * (v175 >> 1));
                v178 = *(v177 + 9);
                v179 = v156[9];
                if (v178 == v179)
                {
                  v180 = *v156;
                  if (*v177 == *v156)
                  {
                    v180 = *v177;
                    if (*(v177 + 7) < v156[7])
                    {
                      goto LABEL_250;
                    }
                  }

                  else if (*v177 < *v156)
                  {
                    goto LABEL_250;
                  }
                }

                else if (v178 < v179)
                {
                  v180 = *v156;
LABEL_250:
                  v220 = *(v156 + 3);
                  v223 = *(v156 + 5);
                  v217 = *(v156 + 1);
                  v181 = *(v156 + 7);
                  *&v215 = v156[10];
                  *(&v215 + 5) = *(v156 + 85);
                  v183 = v177[2];
                  v182 = v177[3];
                  v184 = v177[4];
                  *(v156 + 5) = v177[5];
                  v185 = v177[1];
                  *v156 = *v177;
                  *(v156 + 1) = v185;
                  *(v156 + 3) = v182;
                  *(v156 + 4) = v184;
                  *(v156 + 2) = v183;
                  if (v175 >= 2)
                  {
                    while (1)
                    {
                      v186 = v177;
                      v187 = v176 - 1;
                      v176 = (v176 - 1) >> 1;
                      v177 = (i + 96 * v176);
                      v188 = *(v177 + 9);
                      v189 = v188 < v179;
                      if (v188 == v179)
                      {
                        v189 = *v177 < v180;
                        if (*v177 == v180)
                        {
                          v189 = *(v177 + 7) < v181;
                        }
                      }

                      if (!v189)
                      {
                        break;
                      }

                      v190 = v177[1];
                      *v186 = *v177;
                      v186[1] = v190;
                      v191 = v177[2];
                      v192 = v177[3];
                      v193 = v177[5];
                      v186[4] = v177[4];
                      v186[5] = v193;
                      v186[2] = v191;
                      v186[3] = v192;
                      if (v187 <= 1)
                      {
                        goto LABEL_257;
                      }
                    }

                    v177 = v186;
                  }

LABEL_257:
                  *v177 = v180;
                  *(v177 + 8) = v217;
                  *(v177 + 40) = v223;
                  *(v177 + 24) = v220;
                  *(v177 + 56) = v181;
                  *(v177 + 9) = v179;
                  v177[5] = v215;
                }
              }
            }

            v28 = v154-- > 2;
            if (!v28)
            {
              return;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = (i + 96 * (v12 >> 1));
    if (v11 <= 0x3000)
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(a1 + 96 * v13, a1, (a2 - 6));
      --a4;
      if (a5)
      {
LABEL_18:
        v24 = *a1;
        v21 = *(a1 + 72);
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(a1, a1 + 96 * v13, (a2 - 6));
      v15 = 96 * v13;
      v16 = 96 * v13 + a1 - 96;
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(a1 + 96, v16, (a2 - 12));
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(a1 + 192, a1 + 96 + v15, (a2 - 18));
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,0>(v16, v14, a1 + 96 + v15);
      v224 = *a1;
      v235 = *(a1 + 16);
      *&v265[13] = *(a1 + 77);
      v257 = *(a1 + 48);
      *v265 = *(a1 + 64);
      v246 = *(a1 + 32);
      v17 = v14[5];
      v19 = v14[2];
      v18 = v14[3];
      *(a1 + 64) = v14[4];
      *(a1 + 80) = v17;
      *(a1 + 32) = v19;
      *(a1 + 48) = v18;
      v20 = v14[1];
      *a1 = *v14;
      *(a1 + 16) = v20;
      *v14 = v224;
      v14[1] = v235;
      v14[4] = *v265;
      v14[5] = *&v265[16];
      v14[2] = v246;
      v14[3] = v257;
      --a4;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v21 = *(a1 - 24);
    v22 = *(a1 + 72);
    if (v21 != v22)
    {
      v24 = *a1;
      if (v21 < v22)
      {
        v21 = *(a1 + 72);
        goto LABEL_22;
      }

      goto LABEL_79;
    }

    v23 = *(a1 - 96);
    v24 = *a1;
    if (v23 == *a1)
    {
      v24 = *(a1 - 96);
      if (*(a1 - 40) >= *(a1 + 56))
      {
        goto LABEL_79;
      }

LABEL_22:
      v218 = *(a1 + 24);
      v221 = *(a1 + 40);
      v216 = *(a1 + 8);
      v25 = *(a1 + 56);
      *&v215 = *(a1 + 80);
      *(&v215 + 5) = *(a1 + 85);
      if ((a1 + 96) == a2)
      {
        goto LABEL_276;
      }

      v26 = 0;
      while (1)
      {
        v27 = *(a1 + v26 + 168);
        v28 = v27 < v21;
        if (v27 == v21)
        {
          v29 = *(a1 + v26 + 96);
          v28 = v29 < v24;
          if (v29 == v24)
          {
            v28 = *(a1 + v26 + 152) < v25;
          }
        }

        if (!v28)
        {
          break;
        }

        v26 += 96;
        if ((a1 + v26 + 96) == a2)
        {
          goto LABEL_276;
        }
      }

      v30 = a1 + v26 + 96;
      if (v26)
      {
        if (a2 == a1)
        {
          goto LABEL_276;
        }

        v31 = a2 - 6;
        while (1)
        {
          v32 = v31[9];
          v33 = v32 < v21;
          if (v32 == v21)
          {
            v33 = *v31 < v24;
            if (*v31 == v24)
            {
              v33 = v31[7] < v25;
            }
          }

          if (v33)
          {
            break;
          }

          v80 = v31 == a1;
          v31 -= 12;
          if (v80)
          {
            goto LABEL_276;
          }
        }
      }

      else
      {
        v31 = a2;
        if (v30 < a2)
        {
          v31 = a2 - 6;
          v34 = *(a2 - 3);
          v35 = v34 < v21;
          if (v34 != v21)
          {
            goto LABEL_47;
          }

LABEL_45:
          v35 = *v31 < v24;
          if (*v31 == v24)
          {
            v35 = v31[7] < v25;
          }

LABEL_47:
          while (!v35 && v30 < v31)
          {
            v31 -= 12;
            v36 = v31[9];
            v35 = v36 < v21;
            if (v36 == v21)
            {
              goto LABEL_45;
            }
          }
        }
      }

      if (v30 < v31)
      {
        i = v30;
        v38 = v31;
LABEL_55:
        v225 = *i;
        v236 = *(i + 16);
        *&v265[13] = *(i + 77);
        v258 = *(i + 48);
        *v265 = *(i + 64);
        v247 = *(i + 32);
        v39 = *(v38 + 5);
        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        *(i + 64) = *(v38 + 4);
        *(i + 80) = v39;
        *(i + 32) = v41;
        *(i + 48) = v40;
        v42 = *(v38 + 1);
        *i = *v38;
        *(i + 16) = v42;
        *v38 = v225;
        *(v38 + 1) = v236;
        *(v38 + 4) = *v265;
        *(v38 + 5) = *&v265[16];
        *(v38 + 2) = v247;
        *(v38 + 3) = v258;
        while (1)
        {
          i += 96;
          if (i == a2)
          {
            break;
          }

          v43 = *(i + 72);
          if (v43 == v21)
          {
            if (*i == v24)
            {
              if (*(i + 56) >= v25)
              {
                goto LABEL_63;
              }
            }

            else if (*i >= v24)
            {
LABEL_63:
              if (v38 == a1)
              {
                break;
              }

              v38 -= 12;
              while (1)
              {
                v44 = v38[9];
                v45 = v44 < v21;
                if (v44 == v21)
                {
                  v45 = *v38 < v24;
                  if (*v38 == v24)
                  {
                    v45 = v38[7] < v25;
                  }
                }

                if (v45)
                {
                  break;
                }

                v80 = v38 == a1;
                v38 -= 12;
                if (v80)
                {
                  goto LABEL_276;
                }
              }

              if (i >= v38)
              {
                goto LABEL_73;
              }

              goto LABEL_55;
            }
          }

          else if (v43 >= v21)
          {
            goto LABEL_63;
          }
        }

LABEL_276:
        __break(1u);
        return;
      }

      i = v30;
LABEL_73:
      if (i - 96 != a1)
      {
        v46 = *(i - 80);
        *a1 = *(i - 96);
        *(a1 + 16) = v46;
        v47 = *(i - 64);
        v48 = *(i - 48);
        v49 = *(i - 16);
        *(a1 + 64) = *(i - 32);
        *(a1 + 80) = v49;
        *(a1 + 32) = v47;
        *(a1 + 48) = v48;
      }

      *(i - 96) = v24;
      *(i - 88) = v216;
      *(i - 56) = v221;
      *(i - 72) = v218;
      *(i - 40) = v25;
      *(i - 24) = v21;
      *(i - 16) = v215;
      if (v30 < v31)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*,false>(a1, i - 96, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v50 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*>(a1, i - 96);
        if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::PacketResult::ReceiveTimeOrder &,webrtc::PacketResult*>(i, a2))
        {
          a2 = (i - 96);
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v23 < *a1)
      {
        goto LABEL_22;
      }

LABEL_79:
      v219 = *(a1 + 24);
      v222 = *(a1 + 40);
      v216 = *(a1 + 8);
      v51 = *(a1 + 56);
      *&v215 = *(a1 + 80);
      *(&v215 + 5) = *(a1 + 85);
      v52 = *(a2 - 3);
      v53 = v22 < v52;
      if (v22 == v52)
      {
        v53 = v24 < *v9;
        if (v24 == *v9)
        {
          v53 = v51 < *(a2 - 5);
        }
      }

      if (v53)
      {
        i = a1 + 96;
        if ((a1 + 96) == a2)
        {
          goto LABEL_276;
        }

        while (1)
        {
          v54 = *(i + 72);
          v55 = v22 < v54;
          if (v22 == v54)
          {
            v55 = v24 < *i;
            if (v24 == *i)
            {
              v55 = v51 < *(i + 56);
            }
          }

          if (v55)
          {
            break;
          }

          i += 96;
          if (i == a2)
          {
            goto LABEL_276;
          }
        }
      }

      else
      {
        for (i = a1 + 96; i < a2; i += 96)
        {
          v56 = *(i + 72);
          v57 = v22 < v56;
          if (v22 == v56)
          {
            v57 = v24 < *i;
            if (v24 == *i)
            {
              v57 = v51 < *(i + 56);
            }
          }

          if (v57)
          {
            break;
          }
        }
      }

      v58 = a2;
      if (i < a2)
      {
        if (a2 == a1)
        {
          goto LABEL_276;
        }

        v58 = a2 - 6;
        while (1)
        {
          v59 = *(v58 + 9);
          v60 = v22 < v59;
          if (v22 == v59)
          {
            v60 = v24 < *v58;
            if (v24 == *v58)
            {
              v60 = v51 < *(v58 + 7);
            }
          }

          if (!v60)
          {
            break;
          }

          v80 = v58 == a1;
          v58 -= 6;
          if (v80)
          {
            goto LABEL_276;
          }
        }
      }

      if (i < v58)
      {
LABEL_111:
        v226 = *i;
        v237 = *(i + 16);
        *&v265[13] = *(i + 77);
        v259 = *(i + 48);
        *v265 = *(i + 64);
        v248 = *(i + 32);
        v61 = v58[5];
        v63 = v58[2];
        v62 = v58[3];
        *(i + 64) = v58[4];
        *(i + 80) = v61;
        *(i + 32) = v63;
        *(i + 48) = v62;
        v64 = v58[1];
        *i = *v58;
        *(i + 16) = v64;
        *v58 = v226;
        v58[1] = v237;
        v58[4] = *v265;
        v58[5] = *&v265[16];
        v58[2] = v248;
        v58[3] = v259;
        while (1)
        {
          i += 96;
          if (i == a2)
          {
            goto LABEL_276;
          }

          v65 = *(i + 72);
          if (v22 == v65)
          {
            if (v24 == *i)
            {
              if (v51 < *(i + 56))
              {
                goto LABEL_119;
              }
            }

            else if (v24 < *i)
            {
LABEL_119:
              if (v58 == a1)
              {
                goto LABEL_276;
              }

              v58 -= 6;
              while (1)
              {
                v66 = *(v58 + 9);
                v67 = v22 < v66;
                if (v22 == v66)
                {
                  v67 = v24 < *v58;
                  if (v24 == *v58)
                  {
                    v67 = v51 < *(v58 + 7);
                  }
                }

                if (!v67)
                {
                  break;
                }

                v80 = v58 == a1;
                v58 -= 6;
                if (v80)
                {
                  goto LABEL_276;
                }
              }

              if (i >= v58)
              {
                break;
              }

              goto LABEL_111;
            }
          }

          else if (v22 < v65)
          {
            goto LABEL_119;
          }
        }
      }

      if (i - 96 != a1)
      {
        v68 = *(i - 80);
        *a1 = *(i - 96);
        *(a1 + 16) = v68;
        v69 = *(i - 64);
        v70 = *(i - 48);
        v71 = *(i - 16);
        *(a1 + 64) = *(i - 32);
        *(a1 + 80) = v71;
        *(a1 + 32) = v69;
        *(a1 + 48) = v70;
      }

      a5 = 0;
      *(i - 96) = v24;
      *(i - 88) = v216;
      *(i - 56) = v222;
      *(i - 72) = v219;
      *(i - 40) = v51;
      *(i - 24) = v22;
      *(i - 16) = v215;
    }
  }

  v79 = (i + 96);
  v80 = i == a2 || v79 == a2;
  v81 = v80;
  if (a5)
  {
    if (v81)
    {
      return;
    }

    v82 = 0;
    v83 = i;
LABEL_160:
    v85 = v83;
    v83 = v79;
    v86 = *(v85 + 168);
    v87 = *(v85 + 72);
    if (v86 == v87)
    {
      v88 = *v83;
      if (*v83 == *v85)
      {
        if (*(v85 + 152) >= *(v85 + 56))
        {
          goto LABEL_159;
        }
      }

      else if (*v83 >= *v85)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if (v86 >= v87)
      {
        goto LABEL_159;
      }

      v88 = *v83;
    }

    v238 = *(v85 + 120);
    v249 = *(v85 + 136);
    v227 = *(v85 + 104);
    v89 = *(v85 + 152);
    *&v216 = *(v85 + 176);
    *(&v216 + 5) = *(v85 + 181);
    v90 = *(v85 + 48);
    *(v83 + 32) = *(v85 + 32);
    *(v83 + 48) = v90;
    v91 = *(v85 + 80);
    *(v83 + 64) = *(v85 + 64);
    *(v83 + 80) = v91;
    v92 = *(v85 + 16);
    v84 = i;
    *v83 = *v85;
    *(v83 + 16) = v92;
    if (v85 == i)
    {
      goto LABEL_158;
    }

    v93 = v82;
    while (1)
    {
      v97 = (i + v93);
      v98 = (i + v93 - 96);
      v99 = *(i + v93 - 24);
      v100 = v86 < v99;
      if (v86 == v99 && (v100 = v88 < *v98, v88 == *v98))
      {
        v84 = i + v93;
        if (v89 >= *(i + v93 - 40))
        {
          goto LABEL_158;
        }
      }

      else if (!v100)
      {
        v84 = v85;
LABEL_158:
        *v84 = v88;
        *(v84 + 8) = v227;
        *(v84 + 40) = v249;
        *(v84 + 24) = v238;
        *(v84 + 56) = v89;
        *(v84 + 72) = v86;
        *(v84 + 80) = v216;
LABEL_159:
        v79 = (v83 + 96);
        v82 += 96;
        if ((v83 + 96) == a2)
        {
          return;
        }

        goto LABEL_160;
      }

      v85 -= 96;
      v94 = *(i + v93 - 48);
      v97[2] = *(i + v93 - 64);
      v97[3] = v94;
      v95 = *(i + v93 - 16);
      v97[4] = *(i + v93 - 32);
      v97[5] = v95;
      v96 = *(i + v93 - 80);
      *v97 = *v98;
      v97[1] = v96;
      v93 -= 96;
      if (!v93)
      {
        v84 = i;
        goto LABEL_158;
      }
    }
  }

  if ((v81 & 1) == 0)
  {
    v194 = 0;
    v195 = 96;
    v196 = i;
    do
    {
      v198 = v194;
      v194 = v195;
      v199 = *(v196 + 168);
      v200 = *(v196 + 72);
      if (v199 == v200)
      {
        v201 = *v79;
        if (*v79 == *v196)
        {
          if (*(v196 + 152) < *(v196 + 56))
          {
            goto LABEL_269;
          }
        }

        else if (*v79 < *v196)
        {
          goto LABEL_269;
        }
      }

      else if (v199 < v200)
      {
        v201 = *v79;
LABEL_269:
        v245 = *(v196 + 120);
        v256 = *(v196 + 136);
        v234 = *(v196 + 104);
        v202 = *(v196 + 152);
        *&v216 = *(v196 + 176);
        *(&v216 + 5) = *(v196 + 181);
        v203 = *(i + v198 + 16);
        *v79 = *(i + v198);
        v79[1] = v203;
        v205 = *(i + v198 + 64);
        v204 = *(i + v198 + 80);
        v206 = *(i + v198 + 48);
        v79[2] = *(i + v198 + 32);
        v79[3] = v206;
        v79[4] = v205;
        v79[5] = v204;
        while (1)
        {
          v207 = (i + v198);
          v208 = i + v198 - 96;
          v209 = *(i + v198 - 24);
          v210 = v199 < v209;
          if (v199 == v209)
          {
            v210 = v201 < *v208;
            if (v201 == *v208)
            {
              v210 = v202 < *(i + v198 - 40);
            }
          }

          if (!v210)
          {
            break;
          }

          v198 -= 96;
          v211 = *(v208 + 48);
          v207[2] = *(v208 + 32);
          v207[3] = v211;
          v212 = *(v208 + 80);
          v207[4] = *(v208 + 64);
          v207[5] = v212;
          v213 = *(v208 + 16);
          *v207 = *v208;
          v207[1] = v213;
          if (v198 == -96)
          {
            goto LABEL_276;
          }
        }

        v197 = i + v198;
        *v197 = v201;
        *(v197 + 8) = v234;
        *(v197 + 40) = v256;
        *(v197 + 24) = v245;
        *(v197 + 56) = v202;
        *(v197 + 72) = v199;
        *(v197 + 80) = v216;
      }

      v196 = i + v194;
      v195 = v194 + 96;
      v79 = (i + v194 + 96);
    }

    while (v79 != a2);
  }
}