uint64_t webrtc::VideoStreamEncoderResourceManager::ConfigureQualityScaler(webrtc::VideoStreamEncoderResourceManager *this, const webrtc::VideoEncoder::EncoderInfo *a2)
{
  v3 = *(this + 30);
  if (v3 & 0xFFFFFFFD) == 1 && ((v4 = *a2, v5 = *(a2 + 2), (v5) || *(this + 1464) == 1 && *(this + 1073) == 1) && (*(a2 + 241) != 1 || (*(a2 + 240)))
  {
    if (*(*(this + 7) + 120))
    {
      goto LABEL_32;
    }

    if (*(this + 232) == 1)
    {
      if (*(this + 1464))
      {
        v6 = *(this + 218);
      }

      else
      {
        v6 = 0;
      }

      QpThresholds = webrtc::QualityScalingExperiment::GetQpThresholds(v6, *(this + 2));
    }

    else
    {
      v8 = 0;
      QpThresholds = 0;
    }

    if (v8)
    {
      v4 = QpThresholds;
    }

    v12 = v8;
    if ((v8 & 1) == 0)
    {
      v12 = v5;
    }

    v9 = *(this + 7);
    v10 = *(v9 + 120);
    if (v12)
    {
      if (!v10)
      {
        operator new();
      }

      v10[3] = v4;
      v11 = *(this + 28);
      if (*(*v11 + 120))
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v9 = *(this + 7);
    v10 = *(v9 + 120);
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  *(v9 + 120) = 0;
  (*(*v10 + 8))(v10);
  v13 = *(this + 7);
  v28[0] = v13;
  if (!v13)
  {
    webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, v28);
    v11 = *(this + 28);
    if (*(*v11 + 120))
    {
      goto LABEL_28;
    }

LABEL_30:
    *(v11 + 572) = 0;
    v14 = 4;
    goto LABEL_31;
  }

  (**v13)(v13);
  webrtc::VideoStreamEncoderResourceManager::RemoveResource(this, v28);
  (*(*v13 + 8))(v13);
LABEL_27:
  v11 = *(this + 28);
  if (!*(*v11 + 120))
  {
    goto LABEL_30;
  }

LABEL_28:
  v14 = 0;
LABEL_31:
  *(v11 + 560) = v14;
  v3 = *(this + 30);
LABEL_32:
  if (v3 == 3 && *(*(this + 7) + 120))
  {
    v15 = *(this + 1464) ? *(this + 218) : 0;
    (*(**(this + 11) + 16))(v28);
    v16 = v28[3];
    (*(**(this + 11) + 16))(v27);
    v17 = (*&v27[4] & 0x100000000) != 0 ? *&v27[4] : 25344;
    v18 = (v16 & 0x100000000) != 0 ? v16 : v17;
    v19 = webrtc::BalancedDegradationSettings::GetQpThresholds(this + 23, v15, v18);
    if (v20)
    {
      *(*(*(this + 7) + 120) + 24) = v19;
    }
  }

  v21 = *(this + 30);
  v22 = v21 & 0xFFFFFFFD;
  v23 = v21 & 0xFFFFFFFE;
  if (*(*(this + 7) + 120) || *(*(this + 9) + 120))
  {
    v24 = (v22 == 1) | ((v23 == 2) << 8);
    v25 = v24;
  }

  else
  {
    v25 = 0;
    v24 = (v22 == 1) | ((v23 == 2) << 8);
  }

  return (*(**(this + 14) + 80))(*(this + 14), v24, v25);
}

uint64_t webrtc::VideoStreamEncoderResourceManager::OnVideoSourceRestrictionsUpdated(uint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  *(result + 176) = *a3;
  if (!*a4 && !(*a3 + *(a3 + 4)))
  {
    v4 = result;
    v5 = a2;
    (*(**(result + 112) + 72))(*(result + 112));
    a2 = v5;
    result = v4;
  }

  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  v23 = a2[2];
  v7 = *(result + 120);
  if (v7 == 2)
  {
    v8 = &v21 + 8;
    v9 = &v21;
    v10 = 24;
    v11 = 16;
LABEL_10:
    *v9 = 0;
    *v8 = 0;
    goto LABEL_11;
  }

  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = &v22 + 8;
    *&v21 = 0;
    BYTE8(v21) = 0;
    v9 = &v22;
    v10 = 40;
    v11 = 32;
    goto LABEL_10;
  }

  v10 = 40;
  v11 = 32;
LABEL_11:
  *(&v21 + v11) = 0;
  *(&v21 + v10) = 0;
LABEL_12:
  v12 = v22;
  *(result + 128) = v21;
  *(result + 144) = v12;
  HIDWORD(v13) = DWORD1(v23);
  *(result + 160) = v23;
  if (*(result + 1464) == 1)
  {
    LODWORD(v13) = *(result + 1100);
    v14 = v13;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0.0;
  }

  v16 = *(result + 168);
  v17 = (v15 & (v14 < *(result + 160)) | ((v16 & 1) == 0)) == 0;
  if (!(v15 & (v14 < *(result + 160)) | ((v16 & 1) == 0)))
  {
    v14 = *(result + 160);
  }

  v18 = *(result + 48);
  if (v17)
  {
    v15 = *(result + 168);
  }

  v19 = *(v18 + 144);
  if (v19 == 1 && (v15 & 1) != 0)
  {
    if (*(v18 + 136) == v14)
    {
      return result;
    }
  }

  else if (v19 == (v15 & 1))
  {
    return result;
  }

  *(v18 + 136) = v14;
  *(v18 + 144) = v15;
  if (*(v18 + 128) == 1)
  {
    v20 = *(**(v18 + 120) + 16);

    return v20();
  }

  return result;
}

void webrtc::VideoStreamEncoderResourceManager::OnResourceLimitationChanged(uint64_t a1, unint64_t *a2, void *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *a3;
    if (*a3 != a3 + 1)
    {
      v6 = (a1 + 1480);
      v7 = v5[4];
      if (v7)
      {
        (**v7)(v5[4]);
      }

        ;
      }

      operator new();
    }

    (**v4)(v4);
      ;
    }

    (*(*v4 + 8))(v4);
    operator new();
  }

  v10 = *(**(a1 + 112) + 72);

  v10();
}

void webrtc::VideoStreamInputStateProvider::~VideoStreamInputStateProvider(webrtc::VideoStreamInputStateProvider *this)
{
  *this = &unk_2882A33E8;
  pthread_mutex_destroy((this + 8));
}

{
  *this = &unk_2882A33E8;
  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoStreamInputStateProvider::InputState@<X0>(webrtc::VideoStreamInputStateProvider *this@<X0>, _OWORD *a2@<X8>)
{
  v4 = (*(**(this + 9) + 128))(*(this + 9));
  pthread_mutex_lock((this + 8));
  *(this + 23) = v4;
  v5 = *(this + 6);
  *a2 = *(this + 5);
  a2[1] = v5;

  return pthread_mutex_unlock((this + 8));
}

unint64_t webrtc::TimingFrameInfo::ToString@<X0>(unint64_t this@<X0>, char *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(this + 104) == 255)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    __s = &v54;
    v52 = xmmword_273B8ED80;
    v54 = 0;
    v3 = this;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *this);
    __src = 44;
    v4 = v52;
    v5 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v6 = *(&v52 + 1);
    if (v4 != v5)
    {
      v6 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v6;
    __s[v6] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 8));
    __src = 44;
    v7 = v52;
    v8 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v9 = *(&v52 + 1);
    if (v7 != v8)
    {
      v9 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v9;
    __s[v9] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 16));
    __src = 44;
    v10 = v52;
    v11 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v12 = *(&v52 + 1);
    if (v10 != v11)
    {
      v12 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v12;
    __s[v12] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 24));
    __src = 44;
    v13 = v52;
    v14 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v15 = *(&v52 + 1);
    if (v13 != v14)
    {
      v15 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v15;
    __s[v15] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 32));
    __src = 44;
    v16 = v52;
    v17 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v18 = *(&v52 + 1);
    if (v16 != v17)
    {
      v18 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v18;
    __s[v18] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 40));
    __src = 44;
    v19 = v52;
    v20 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v21 = *(&v52 + 1);
    if (v19 != v20)
    {
      v21 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v21;
    __s[v21] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 48));
    __src = 44;
    v22 = v52;
    v23 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v24 = *(&v52 + 1);
    if (v22 != v23)
    {
      v24 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v24;
    __s[v24] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 56));
    __src = 44;
    v25 = v52;
    v26 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v27 = *(&v52 + 1);
    if (v25 != v26)
    {
      v27 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v27;
    __s[v27] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 64));
    __src = 44;
    v28 = v52;
    v29 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v30 = *(&v52 + 1);
    if (v28 != v29)
    {
      v30 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v30;
    __s[v30] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 72));
    __src = 44;
    v31 = v52;
    v32 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v33 = *(&v52 + 1);
    if (v31 != v32)
    {
      v33 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v33;
    __s[v33] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 80));
    __src = 44;
    v34 = v52;
    v35 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v36 = *(&v52 + 1);
    if (v34 != v35)
    {
      v36 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v36;
    __s[v36] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 88));
    __src = 44;
    v37 = v52;
    v38 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v39 = *(&v52 + 1);
    if (v37 != v38)
    {
      v39 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v39;
    __s[v39] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(v3 + 96));
    __src = 44;
    v40 = v52;
    v41 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v42 = *(&v52 + 1);
    if (v40 != v41)
    {
      v42 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v42;
    __s[v42] = 0;
    v43 = *(v3 + 104);
    v44 = v43 == 255;
    v45 = (v43 >> 1) & 1;
    if (v44)
    {
      v45 = 0;
    }

    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", v45);
    __src = 44;
    v46 = v52;
    v47 = *(&v52 + 1) + 1;
    memcpy(&__s[*(&v52 + 1)], &__src, v52 != *(&v52 + 1) + 1);
    v48 = *(&v52 + 1);
    if (v46 != v47)
    {
      v48 = *(&v52 + 1) + 1;
    }

    *(&v52 + 1) = v48;
    __s[v48] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", (*(v3 + 104) != 255) & *(v3 + 104));
    v49 = __s;
    if (!__s)
    {
      goto LABEL_43;
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

    a2[23] = this;
    v50 = &a2[this];
    if (a2 <= v49 && v50 > v49)
    {
LABEL_43:
      __break(1u);
    }

    if (this)
    {
      this = memmove(a2, v49, this);
    }

    *v50 = 0;
  }

  return this;
}

webrtc::VideoPlayoutDelay *webrtc::VideoPlayoutDelay::VideoPlayoutDelay(webrtc::VideoPlayoutDelay *this, TimeDelta a2, TimeDelta a3)
{
  var0 = a3.var0;
  v37 = a2.var0;
  v4 = 40950000;
  if (a2.var0 >= 40950000)
  {
    v5 = 40950000;
  }

  else
  {
    v5 = a2.var0;
  }

  v6 = v5 & ~(v5 >> 63);
  if (a3.var0 < 40950000)
  {
    v4 = a3.var0;
  }

  if (v6 > a3.var0)
  {
    v4 = v6;
  }

  *this = v6;
  *(this + 1) = v4;
  if (a2.var0 & 0x8000000000000000) == 0 && a2.var0 <= a3.var0 && a3.var0 < 0x270D8F1 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return this;
  }

  v23[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_timing.cc";
  v23[1] = 875;
  v23[2] = &v22;
  v24[0] = "Invalid video playout delay: [";
  v24[1] = v23;
  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v37, v8, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v26 = v24;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25 = v34;
    v26 = v24;
  }

  v27[0] = ",";
  v27[1] = &v25;
  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, v9, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v29 = v27;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v28 = v34;
    v29 = v27;
  }

  v30[0] = "]. Clamped to [";
  v30[1] = &v28;
  v21 = *this;
  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v21, v10, &v34);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v32 = v30;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v31 = v34;
    v32 = v30;
  }

  v33[0] = ",";
  v33[1] = &v31;
  v20 = *(this + 1);
  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v20, v11, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v19 = v33;
    v35 = v33;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      v19 = v35;
    }
  }

  else
  {
    v34 = v38;
    v19 = v33;
    v35 = v33;
  }

  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n\t\n\t", v12, v13, v14, v15, v16, v17, v18, **(*(*(*(*(*(v19[1] + 24) + 8) + 24) + 8) + 24) + 8));
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

    return this;
  }

LABEL_36:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return this;
  }

LABEL_37:
  operator delete(v25.__r_.__value_.__l.__data_);
  return this;
}

uint64_t webrtc::VideoTrack::VideoTrack(uint64_t a1, _BYTE *a2, size_t a3, uint64_t *a4, uint64_t a5)
{
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = &unk_2882A3578;
  *(a1 + 8) = &unk_2882A3608;
  *(a1 + 16) = &unk_2882A3638;
  *(a1 + 48) = 1;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v8 = (a1 + 56);
  *(a1 + 79) = a3;
  v9 = (a1 + 56 + a3);
  if (a1 + 56 <= a2 && v9 > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3)
  {
    memmove(v8, a2, a3);
  }

  *v9 = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *a1 = &unk_2882A3410;
  *(a1 + 8) = &unk_2882A34B0;
  *(a1 + 16) = &unk_2882A34E0;
  *(a1 + 88) = &unk_2882A3518;
  *(a1 + 96) = 0;
  *(a1 + 120) = &unk_2882A3550;
  *(a1 + 128) = a5;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 136) = v10;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  (*(*v10 + 136))(v10);
  return a1;
}

void webrtc::VideoTrack::~VideoTrack(webrtc::VideoTrack *this)
{
  *this = &unk_2882A3410;
  *(this + 1) = &unk_2882A34B0;
  *(this + 2) = &unk_2882A34E0;
  *(this + 11) = &unk_2882A3518;
  *(this + 15) = &unk_2882A3550;
  (*(**(this + 17) + 144))(*(this + 17));
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 11) = &unk_2882A30A0;
  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 13);
    v5 = *(this + 12);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 40);
        if (v6)
        {
          *(v4 - 32) = v6;
          operator delete(v6);
        }

        v4 -= 72;
      }

      while (v4 != v3);
      v5 = *(this + 12);
    }

    *(this + 13) = v3;
    operator delete(v5);
  }

  *this = &unk_2882A3578;
  *(this + 1) = &unk_2882A3608;
  *(this + 2) = &unk_2882A3638;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *this = &unk_2882A3670;
  *(this + 1) = &unk_2882A3700;
  *(this + 2) = &unk_2882A3730;
  if (*(this + 5))
  {
    v7 = *(this + 4);
    v8 = *(*(this + 3) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 5) = 0;
    if (v7 != (this + 24))
    {
      do
      {
        v10 = *(v7 + 1);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (this + 24));
    }
  }
}

void webrtc::VideoTrack::kind(unint64_t a1@<X8>)
{
  *(a1 + 23) = 5;
  if (a1 <= "video" && a1 + 5 > "video")
  {
    __break(1u);
  }

  else
  {
    *a1 = *"video";
    *(a1 + 4) = webrtc::kMediaTypeVideo[4];
  }
}

void webrtc::VideoTrack::AddOrUpdateSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  webrtc::VideoSourceBaseGuarded::AddOrUpdateSink((a1 + 88), a2, a3);
  v8 = *a3;
  v6 = *(a3 + 24);
  v9 = *(a3 + 16);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13[0] = *(a3 + 48);
  *(v13 + 7) = *(a3 + 55);
  BYTE1(v8) = *(a1 + 148) ^ 1;
  (*(*(*(*(a1 + 136) + 40) + 16) + 16))(*(*(a1 + 136) + 40) + 16, a2, &v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void non-virtual thunk towebrtc::VideoTrack::AddOrUpdateSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  webrtc::VideoSourceBaseGuarded::AddOrUpdateSink((a1 + 72), a2, a3);
  v8 = *a3;
  v6 = *(a3 + 24);
  v9 = *(a3 + 16);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13[0] = *(a3 + 48);
  *(v13 + 7) = *(a3 + 55);
  BYTE1(v8) = *(a1 + 132) ^ 1;
  (*(*(*(*(a1 + 120) + 40) + 16) + 16))(*(*(a1 + 120) + 40) + 16, a2, &v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

{
  webrtc::VideoSourceBaseGuarded::AddOrUpdateSink(a1, a2, a3);
  v8 = *a3;
  v6 = *(a3 + 24);
  v9 = *(a3 + 16);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13[0] = *(a3 + 48);
  *(v13 + 7) = *(a3 + 55);
  BYTE1(v8) = *(a1 + 60) ^ 1;
  (*(*(*(*(a1 + 48) + 40) + 16) + 16))(*(*(a1 + 48) + 40) + 16, a2, &v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

uint64_t webrtc::VideoTrack::RemoveSink(uint64_t a1, uint64_t a2)
{
  webrtc::VideoSourceBaseGuarded::RemoveSink(a1 + 88, a2);
  v3 = *(*(*(*(a1 + 136) + 40) + 16) + 24);

  return v3();
}

uint64_t non-virtual thunk towebrtc::VideoTrack::RemoveSink(uint64_t a1, uint64_t a2)
{
  webrtc::VideoSourceBaseGuarded::RemoveSink(a1 + 72, a2);
  v3 = *(*(*(*(a1 + 120) + 40) + 16) + 24);

  return v3();
}

{
  webrtc::VideoSourceBaseGuarded::RemoveSink(a1, a2);
  v3 = *(*(*(*(a1 + 48) + 40) + 16) + 24);

  return v3();
}

uint64_t non-virtual thunk towebrtc::VideoTrack::RequestRefreshFrame(webrtc::VideoTrack *this)
{
  return (*(*(*(*(this + 15) + 40) + 16) + 32))();
}

{
  return (*(*(*(*(this + 6) + 40) + 16) + 32))();
}

uint64_t webrtc::VideoTrack::set_content_hint(uint64_t result, int a2)
{
  if (*(result + 144) != a2)
  {
    *(result + 144) = a2;
    return webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(result);
  }

  return result;
}

BOOL webrtc::VideoTrack::set_enabled(webrtc::VideoTrack *this, int a2)
{
  v9 = a2;
  v4 = *(this + 48);
  *(this + 48) = a2;
  if (v4 != a2)
  {
    webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(this);
  }

  v5 = *(this + 16);
  v8[0] = this;
  v8[1] = &v9;
  (*(*v5 + 96))(v5, v8, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoTrack::set_enabled(BOOL)::$_0>, &v7);
  return v4 != a2;
}

BOOL webrtc::MediaStreamTrack<webrtc::VideoTrackInterface>::set_enabled(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = a2;
  if (v3 != a2)
  {
    webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(a1);
  }

  return v3 != a2;
}

uint64_t webrtc::VideoTrack::enabled(webrtc::VideoTrack *this)
{
  v2 = *(this + 16);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  v4 = pthread_getspecific(*(v3[403] + 88));
  v5 = 48;
  if (v4 == v2)
  {
    v5 = 148;
  }

  return *(this + v5);
}

uint64_t webrtc::VideoTrack::OnChanged(webrtc::VideoTrack *this)
{
  {
    operator new();
  }

  v2 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v3 = v2[217];
  v2[217] = 0;
  result = (*(**(this + 17) + 32))(*(this + 17));
  v5 = result == 2;
  v6 = *(this + 20);
  *(this + 20) = v5;
  if (v6 != v5)
  {
    result = webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(this);
  }

  v2[217] = v3;
  return result;
}

uint64_t non-virtual thunk towebrtc::VideoTrack::OnChanged(webrtc::VideoTrack *this)
{
  {
    operator new();
  }

  v2 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v3 = v2[217];
  v2[217] = 0;
  result = (*(**(this + 2) + 32))(*(this + 2));
  v5 = result == 2;
  v6 = *(this - 10);
  *(this - 10) = v5;
  if (v6 != v5)
  {
    result = webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(this - 120);
  }

  v2[217] = v3;
  return result;
}

void webrtc::VideoTrack::Create(uint64_t a1, uint64_t a2, void *a3)
{
  {
    {
      operator new();
    }
  }

  pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  *a3 = 0;
  operator new();
}

void webrtc::MediaStreamTrack<webrtc::VideoTrackInterface>::id(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 56);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 72);
  }
}

void webrtc::Notifier<webrtc::VideoTrackInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 != a1 + 3)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 3)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[5];
    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::Notifier<webrtc::VideoTrackInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2 != a1 + 2)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 2)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[4];
    operator delete(v2);
  }
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoTrack::set_enabled(BOOL)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 148) = *a1[1];
  v2 = *(v1 + 96);
  for (i = *(v1 + 104); v2 != i; v2 += 72)
  {
    v5 = *(v2 + 8);
    v9 = *(v2 + 24);
    v8 = v5;
    v11 = 0;
    v12 = 0;
    __p = 0;
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v13[0] = *(v2 + 56);
    *(v13 + 7) = *(v2 + 63);
    BYTE1(v8) = *a1[1] ^ 1;
    (*(**(v1 + 136) + 112))(*(v1 + 136), *v2, &v8);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

BOOL webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882A3880;
  a1[1] = &unk_2882A3928;
  a1[2] = &unk_2882A3958;
  v14 = a1;
  v15 = webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[3];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[5];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::MediaSourceInterface::state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,webrtc::MediaSourceInterface::SourceState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::needs_denoising(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::VideoTrackSourceInterface::needs_denoising;
  v16 = 0;
  v17 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,std::optional<BOOL>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::GetStats(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v6 = a2;
  v7[0] = v3;
  v7[1] = webrtc::VideoTrackSourceInterface::GetStats;
  v7[2] = 0;
  v7[4] = &v6;
  webrtc::Event::Event(&v8, 0, 0);
  v4 = webrtc::MethodCall<webrtc::VideoTrackSourceInterface,BOOL,webrtc::VideoTrackSourceInterface::Stats *>::Marshal(v7, *(a1 + 24));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  return v4;
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::SupportsEncodedOutput(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::VideoTrackSourceInterface::SupportsEncodedOutput;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6 & 1;
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::GenerateKeyFrame(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 40);
  v14 = webrtc::VideoTrackSourceInterface::GenerateKeyFrame;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::AddEncodedSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackSourceInterface::AddEncodedSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::RecordableEncodedFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::RemoveEncodedSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackSourceInterface::RemoveEncodedSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::RecordableEncodedFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::ProcessConstraints(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::VideoTrackSourceInterface::ProcessConstraints;
  v16 = 0;
  v17 = a2;
  webrtc::Event::Event(&v18, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    (v15)(v14 + (v16 >> 1), v17);
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoTrackSourceConstraints const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v18, v5, v6);
  }

  pthread_mutex_destroy(&v18);
  return pthread_cond_destroy(&v19);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::AddOrUpdateSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 40);
  v19 = webrtc::VideoSourceInterface<webrtc::VideoFrame>::AddOrUpdateSink;
  v20 = 32;
  v21 = &v12;
  v22 = a3;
  webrtc::Event::Event(&v23, 0, 0);
  v4 = *(a1 + 32);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v22);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *,webrtc::VideoSinkWants const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v23, v6, v7);
  }

  pthread_mutex_destroy(&v23);
  return pthread_cond_destroy(&v24);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::RemoveSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoSourceInterface<webrtc::VideoFrame>::RemoveSink;
  v19 = 32;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::RequestRefreshFrame(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 40);
  v14 = webrtc::VideoSourceInterface<webrtc::VideoFrame>::RequestRefreshFrame;
  v15 = 32;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void *non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject(uint64_t a1)
{
  return webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject((a1 - 8));
}

{
  return webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject((a1 - 16));
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RefCountedObject<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>>::~RefCountedObject((a1 - 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceProxyWithInternal<webrtc::VideoTrackSourceInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,webrtc::MediaSourceInterface::SourceState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,std::optional<BOOL>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::MethodCall<webrtc::VideoTrackSourceInterface,BOOL,webrtc::VideoTrackSourceInterface::Stats *>::Marshal(unint64_t a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = v8(v10, **(a1 + 32));
    *(a1 + 24) = v11;
    return v11 & 1;
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,BOOL,webrtc::VideoTrackSourceInterface::Stats *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24) & 1;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,BOOL,webrtc::VideoTrackSourceInterface::Stats *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackSourceInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::RecordableEncodedFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoTrackSourceConstraints const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *,webrtc::VideoSinkWants const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v6 + v2);
  }

  v2(v6, *v5, v4);
  pthread_mutex_lock((v1 + 48));
  *(v1 + 161) = 1;
  pthread_cond_broadcast((v1 + 112));

  return pthread_mutex_unlock((v1 + 48));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackSourceInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

BOOL webrtc::RefCountedObject<webrtc::VideoTrack>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 38, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::VideoTrack>::~RefCountedObject(webrtc::VideoTrack *a1)
{
  webrtc::VideoTrack::~VideoTrack(a1);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrack>::~RefCountedObject(uint64_t a1)
{
  webrtc::VideoTrack::~VideoTrack((a1 - 8));
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 16));
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 88));
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 88));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 120));
}

{
  webrtc::VideoTrack::~VideoTrack((a1 - 120));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackSource::AddOrUpdateSink(uint64_t a1)
{
  v1 = *(*(*(*a1 + 144))(a1) + 16);

  return v1();
}

uint64_t non-virtual thunk towebrtc::VideoTrackSource::AddOrUpdateSink(uint64_t a1)
{
  v1 = *(*(*(*(a1 - 16) + 144))() + 16);

  return v1();
}

uint64_t webrtc::VideoTrackSource::RemoveSink(uint64_t a1)
{
  v1 = *(*(*(*a1 + 144))(a1) + 24);

  return v1();
}

uint64_t non-virtual thunk towebrtc::VideoTrackSource::RemoveSink(uint64_t a1)
{
  v1 = *(*(*(*(a1 - 16) + 144))() + 24);

  return v1();
}

void webrtc::VoiceActivityDetector::VoiceActivityDetector(webrtc::VoiceActivityDetector *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  webrtc::VadAudioProc::VadAudioProc((this + 168));
}

void webrtc::VoiceActivityDetector::~VoiceActivityDetector(webrtc::VoiceActivityDetector *this)
{
  v2 = *(this + 701);
  *(this + 701) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8000313F17);
    }

    MEMORY[0x2743DA540](v2, 0x1080C40B9D49440);
  }

  v4 = *(this + 691);
  *(this + 691) = 0;
  if (v4)
  {
    free(*v4);
    MEMORY[0x2743DA540](v4, 0x1020C406DF78F4CLL);
  }

  v5 = *(this + 690);
  *(this + 690) = 0;
  if (v5)
  {
    MEMORY[0x2743DA540](v5, 0x1000C407EBBDD04);
  }

  v6 = *(this + 689);
  *(this + 689) = 0;
  if (v6)
  {
    MEMORY[0x2743DA540](v6, 0x1000C404CEF3289);
  }

  v7 = *(this + 688);
  *(this + 688) = 0;
  if (v7)
  {
    MEMORY[0x2743DA540](v7, 0x1000C405012CC88);
  }

  webrtc::Resampler::~Resampler((this + 56));
  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void webrtc::VoiceActivityDetector::ProcessChunk(webrtc::VoiceActivityDetector *this, __int16 *a2, unint64_t a3, int a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = a3;
  if (a4 != 16000)
  {
    if (a4 / 1000 != *(this + 32) || *(this + 33) != 16 || *(this + 18) != 1)
    {
      v8 = a3;
      v9 = webrtc::Resampler::Reset((this + 56), a4, 16000, 1);
      a3 = v8;
      if (v9)
      {
        v40 = webrtc::Resampler::ResetIfNeeded((this + 56), a4, 16000, 1);
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/vad/voice_activity_detector.cc", 47, "resampler_.ResetIfNeeded(sample_rate_hz, kSampleRateHz, kNumChannels) == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v41, v42, v43, v44, v40);
        goto LABEL_53;
      }
    }

    webrtc::Resampler::Push((this + 56), a2, a3, this + 2808, 0xA0uLL, &v55);
    a3 = v55;
    a2 = (this + 5616);
  }

  v10 = *(this + 691);
  if (a3 != 160)
  {
    v35 = webrtc::StandaloneVad::AddAudio(*(this + 691), a2, a3);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/vad/voice_activity_detector.cc", 56, "standalone_vad_->AddAudio(resampled_ptr, length) == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v36, v37, v38, v39, v35);
  }

  v11 = *(v10 + 968);
  if ((v11 - 321) <= 0xFFFFFFFFFFFFFE1ELL)
  {
    v11 = 0;
    *(v10 + 968) = 0;
  }

  memcpy((v10 + 2 * v11 + 8), a2, 0x140uLL);
  *(v10 + 968) += 160;
  v4 = 5936;
  webrtc::VadAudioProc::ExtractFeatures(this + 168, a2, 160);
  v12 = *(this + 758);
  v13 = (*(this + 1) - *this) >> 3;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(this + 1) = *this + 8 * v12;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(this, v12 - v13);
    v12 = *(this + 758);
  }

  v14 = *(this + 3);
  v15 = *(this + 4);
  v16 = (v15 - v14) >> 3;
  if (v12 <= v16)
  {
    if (v12 < v16)
    {
      v15 = &v14[8 * v12];
      *(this + 4) = v15;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(this + 24, v12 - v16);
    v14 = *(this + 3);
    v15 = *(this + 4);
  }

  if (v15 != v14)
  {
    memmove(v14, this + 6032, v15 - v14);
  }

  if (*(this + 758))
  {
    v17 = *this;
    v18 = *(this + 1);
    v19 = v18 - *this;
    if (*(this + 6072) == 1)
    {
      if (v19 >= 1)
      {
        memset_pattern16(*this, &unk_273BA64B0, v19);
      }

LABEL_48:
      if (v17 != v18)
      {
        v34 = *(v18 - 1);
        *(this + 12) = v34;
        return;
      }

LABEL_58:
      __break(1u);
      return;
    }

    v20 = v19 >> 3;
    if (v19 >> 3 >= 1)
    {
      memset_pattern16(*this, &unk_273BA64A0, v19);
    }

    if (v18 == v17)
    {
      goto LABEL_58;
    }

    v21 = *(this + 691);
    v22 = *(v21 + 968);
    if (!v22)
    {
      goto LABEL_54;
    }

    v23 = v22 / 0xA0;
    if (v22 / 0xA0 > v20)
    {
      goto LABEL_54;
    }

    v24 = *v21;
    if (!*v21 || *(v24 + 732) != 42 || v22 != 160 && v22 != 480 && v22 != 320)
    {
      goto LABEL_54;
    }

    WebRtcVad_Downsampling((v21 + 8), v56, (v24 + 4), *(v21 + 968));
    v25 = WebRtcVad_CalcVad8khz(v24, v56, v22 >> 1);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = 0.01;
      if (v25)
      {
        v26 = 0.5;
      }

      *v17 = v26;
      if (v22 >= 0x140)
      {
        v27 = v23 - 1;
        if (v23 - 1 < 4)
        {
          v28 = 1;
LABEL_43:
          v32 = v23 - v28;
          v33 = &v17[v28];
          do
          {
            *v33++ = v26;
            --v32;
          }

          while (v32);
          goto LABEL_45;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v29 = vdupq_lane_s64(*&v26, 0);
        v30 = (v17 + 3);
        v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v29;
          *v30 = v29;
          v30 += 2;
          v31 -= 4;
        }

        while (v31);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_43;
        }
      }

LABEL_45:
      *(v21 + 968) = 0;
      if (*(this + 1) == *this)
      {
        goto LABEL_58;
      }

      v17 = 5536;
      if ((webrtc::PitchBasedVad::VoicingProbability(this + 5536, this + 5936, *this) & 0x80000000) == 0)
      {
        v17 = *this;
        v18 = *(this + 1);
        goto LABEL_48;
      }

LABEL_56:
      if (*(this + 1) != *this)
      {
        v50 = webrtc::PitchBasedVad::VoicingProbability(v17 + this, this + v4, *this);
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/vad/voice_activity_detector.cc", 79, "pitch_based_vad_.VoicingProbability( features_, &chunkwise_voice_probabilities_[0]) >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v51, v52, v53, v54, v50);
      }

      goto LABEL_58;
    }

LABEL_53:
    v17 = *this;
    v18 = *(this + 1);
LABEL_54:
    if (v18 == v17)
    {
      goto LABEL_58;
    }

    Activity = webrtc::StandaloneVad::GetActivity(*(this + 691), v17, v18 - v17);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/vad/voice_activity_detector.cc", 76, "standalone_vad_->GetActivity(&chunkwise_voice_probabilities_[0], chunkwise_voice_probabilities_.size()) >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v46, v47, v48, v49, Activity);
    goto LABEL_56;
  }
}

uint64_t webrtc::vp8::GetQp(webrtc::vp8 *this, const unsigned __int8 *a2, int *a3, int *a4)
{
  if (a2 <= 2)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_10;
  }

  v12 = *this;
  v13 = (*(this + 2) << 16) | (*(this + 1) << 8) | v12;
  v14 = v13 >> 5;
  v15 = 3;
  if ((v12 & 1) == 0)
  {
    v15 = 10;
  }

  if (v15 + v14 > a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/vp8_header_parser.cc");
    }

    return 0;
  }

  v23 = this + v15;
  v24 = &v23[v14];
  if (v13 < 0x20)
  {
    v25 = 0;
    if (v23 != v24)
    {
      goto LABEL_13;
    }

LABEL_32:
    v26 = v24;
    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    v28 = 0;
    v34 = 255;
    goto LABEL_34;
  }

  v37 = *v23++;
  v25 = v37 << 8;
  if (v23 == v24)
  {
    goto LABEL_32;
  }

LABEL_13:
  v27 = *v23;
  v26 = v23 + 1;
  v25 |= v27;
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_14:
  v28 = v25 >> 15;
  if (v25 >> 15)
  {
    v25 = 2 * v25 - 0x10000;
  }

  if (v28)
  {
    v29 = 254;
  }

  else
  {
    v29 = 128;
  }

  v30 = ((v29 << 7) - 128) >> 8;
  v31 = (v30 + 1) << 8;
  v32 = v29 - (v30 + 1);
  if (v25 >= v31)
  {
    v33 = (v30 + 1) << 8;
  }

  else
  {
    v33 = 0;
  }

  if (v25 < v31)
  {
    v32 = v30 + 1;
  }

  v25 -= v33;
  if (v32 <= 0x7F)
  {
    do
    {
      v25 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 == v24)
        {
          v26 = v24;
        }

        else
        {
          v35 = *v26++;
          v25 |= v35;
        }
      }

      v34 = 2 * v32;
      v36 = v32 >= 0x40;
      v32 *= 2;
    }

    while (!v36);
  }

  else
  {
    v34 = v32;
  }

LABEL_34:
  v38 = ((v34 << 7) - 128) >> 8;
  v39 = (v38 + 1) << 8;
  v40 = v34 - (v38 + 1);
  if (v25 >= v39)
  {
    v41 = (v38 + 1) << 8;
  }

  else
  {
    v41 = 0;
  }

  if (v25 < v39)
  {
    v42 = v38 + 1;
  }

  else
  {
    v42 = v40;
  }

  v43 = v25 - v41;
  if (v42 <= 0x7F)
  {
    do
    {
      v43 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v494 = *v26++;
          v43 |= v494;
        }
      }

      v44 = 2 * v42;
      v36 = v42 >= 0x40;
      v42 *= 2;
    }

    while (!v36);
  }

  else
  {
    v44 = v42;
  }

  if (v25 >= v39)
  {
    v45 = ((v44 << 7) - 128) >> 8;
    v46 = (v45 + 1) << 8;
    v47 = v44 - (v45 + 1);
    if (v43 >= v46)
    {
      v48 = (v45 + 1) << 8;
    }

    else
    {
      v48 = 0;
    }

    if (v43 < v46)
    {
      v49 = v45 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v43 - v48;
    if (v49 <= 0x7F)
    {
      do
      {
        v50 *= 2;
        if (++v28 == 8)
        {
          v28 = 0;
          if (v26 != v24)
          {
            v495 = *v26++;
            v50 |= v495;
          }
        }

        v51 = 2 * v49;
        v36 = v49 >= 0x40;
        v49 *= 2;
      }

      while (!v36);
    }

    else
    {
      v51 = v49;
    }

    v52 = ((v51 << 7) - 128) >> 8;
    v53 = (v52 + 1) << 8;
    v54 = v51 - (v52 + 1);
    if (v50 >= v53)
    {
      v55 = (v52 + 1) << 8;
    }

    else
    {
      v55 = 0;
    }

    if (v50 < v53)
    {
      v56 = v52 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v50 - v55;
    if (v56 <= 0x7F)
    {
      do
      {
        v57 *= 2;
        if (++v28 == 8)
        {
          v28 = 0;
          if (v26 != v24)
          {
            v496 = *v26++;
            v57 |= v496;
          }
        }

        v44 = 2 * v56;
        v36 = v56 >= 0x40;
        v56 *= 2;
      }

      while (!v36);
    }

    else
    {
      v44 = v56;
    }

    if (v50 >= v53)
    {
      v58 = ((v44 << 7) - 128) >> 8;
      v59 = (v58 + 1) << 8;
      v60 = v44 - (v58 + 1);
      if (v57 >= v59)
      {
        v61 = (v58 + 1) << 8;
      }

      else
      {
        v61 = 0;
      }

      if (v57 < v59)
      {
        v62 = v58 + 1;
      }

      else
      {
        v62 = v60;
      }

      v63 = v57 - v61;
      if (v62 <= 0x7F)
      {
        do
        {
          v63 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v497 = *v26++;
              v63 |= v497;
            }
          }

          v64 = 2 * v62;
          v36 = v62 >= 0x40;
          v62 *= 2;
        }

        while (!v36);
      }

      else
      {
        v64 = v62;
      }

      v65 = ((v64 << 7) - 128) >> 8;
      v66 = (v65 + 1) << 8;
      v67 = v64 - (v65 + 1);
      if (v63 >= v66)
      {
        v68 = (v65 + 1) << 8;
      }

      else
      {
        v68 = 0;
      }

      if (v63 < v66)
      {
        v69 = v65 + 1;
      }

      else
      {
        v69 = v67;
      }

      v70 = v63 - v68;
      if (v69 <= 0x7F)
      {
        do
        {
          v70 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v498 = *v26++;
              v70 |= v498;
            }
          }

          v71 = 2 * v69;
          v36 = v69 >= 0x40;
          v69 *= 2;
        }

        while (!v36);
      }

      else
      {
        v71 = v69;
      }

      if (v63 >= v66)
      {
        v72 = ((v71 << 7) - 128) >> 8;
        v73 = (v72 + 1) << 8;
        if (v70 >= v73)
        {
          v74 = v71 - (v72 + 1);
        }

        else
        {
          v73 = 0;
          v74 = v72 + 1;
        }

        v75 = v70 - v73;
        if (v74 <= 0x7F)
        {
          do
          {
            v75 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v506 = *v26++;
                v75 |= v506;
              }
            }

            v76 = 2 * v74;
            v36 = v74 >= 0x40;
            v74 *= 2;
          }

          while (!v36);
        }

        else
        {
          v76 = v74;
        }

        v77 = ((v76 << 7) - 128) >> 8;
        v78 = (v77 + 1) << 8;
        v79 = v76 - (v77 + 1);
        if (v75 >= v78)
        {
          v80 = (v77 + 1) << 8;
        }

        else
        {
          v80 = 0;
        }

        if (v75 < v78)
        {
          v81 = v77 + 1;
        }

        else
        {
          v81 = v79;
        }

        v82 = v75 - v80;
        if (v81 <= 0x7F)
        {
          do
          {
            v82 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v507 = *v26++;
                v82 |= v507;
              }
            }

            v83 = 2 * v81;
            v36 = v81 >= 0x40;
            v81 *= 2;
          }

          while (!v36);
        }

        else
        {
          v83 = v81;
        }

        v84 = ((v83 << 7) - 128) >> 8;
        v85 = (v84 + 1) << 8;
        v86 = v83 - (v84 + 1);
        if (v82 >= v85)
        {
          v87 = (v84 + 1) << 8;
        }

        else
        {
          v87 = 0;
        }

        if (v82 < v85)
        {
          v88 = v84 + 1;
        }

        else
        {
          v88 = v86;
        }

        v89 = v82 - v87;
        if (v88 <= 0x7F)
        {
          do
          {
            v89 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v508 = *v26++;
                v89 |= v508;
              }
            }

            v90 = 2 * v88;
            v36 = v88 >= 0x40;
            v88 *= 2;
          }

          while (!v36);
        }

        else
        {
          v90 = v88;
        }

        v91 = ((v90 << 7) - 128) >> 8;
        v92 = (v91 + 1) << 8;
        v93 = v90 - (v91 + 1);
        if (v89 >= v92)
        {
          v94 = (v91 + 1) << 8;
        }

        else
        {
          v94 = 0;
        }

        if (v89 < v92)
        {
          v95 = v91 + 1;
        }

        else
        {
          v95 = v93;
        }

        v96 = v89 - v94;
        if (v95 <= 0x7F)
        {
          do
          {
            v96 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v509 = *v26++;
                v96 |= v509;
              }
            }

            v97 = 2 * v95;
            v36 = v95 >= 0x40;
            v95 *= 2;
          }

          while (!v36);
        }

        else
        {
          v97 = v95;
        }

        v98 = ((v97 << 7) - 128) >> 8;
        v99 = (v98 + 1) << 8;
        v100 = v97 - (v98 + 1);
        if (v96 >= v99)
        {
          v101 = (v98 + 1) << 8;
        }

        else
        {
          v101 = 0;
        }

        if (v96 < v99)
        {
          v102 = v98 + 1;
        }

        else
        {
          v102 = v100;
        }

        v103 = v96 - v101;
        if (v102 <= 0x7F)
        {
          do
          {
            v103 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v510 = *v26++;
                v103 |= v510;
              }
            }

            v104 = 2 * v102;
            v36 = v102 >= 0x40;
            v102 *= 2;
          }

          while (!v36);
        }

        else
        {
          v104 = v102;
        }

        v105 = ((v104 << 7) - 128) >> 8;
        v106 = (v105 + 1) << 8;
        v107 = v104 - (v105 + 1);
        if (v103 >= v106)
        {
          v108 = (v105 + 1) << 8;
        }

        else
        {
          v108 = 0;
        }

        if (v103 < v106)
        {
          v109 = v105 + 1;
        }

        else
        {
          v109 = v107;
        }

        v110 = v103 - v108;
        if (v109 <= 0x7F)
        {
          do
          {
            v110 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v511 = *v26++;
                v110 |= v511;
              }
            }

            v111 = 2 * v109;
            v36 = v109 >= 0x40;
            v109 *= 2;
          }

          while (!v36);
        }

        else
        {
          v111 = v109;
        }

        v112 = ((v111 << 7) - 128) >> 8;
        v113 = (v112 + 1) << 8;
        v114 = v111 - (v112 + 1);
        if (v110 >= v113)
        {
          v115 = (v112 + 1) << 8;
        }

        else
        {
          v115 = 0;
        }

        if (v110 < v113)
        {
          v116 = v112 + 1;
        }

        else
        {
          v116 = v114;
        }

        v117 = v110 - v115;
        if (v116 <= 0x7F)
        {
          do
          {
            v117 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v512 = *v26++;
                v117 |= v512;
              }
            }

            v118 = 2 * v116;
            v36 = v116 >= 0x40;
            v116 *= 2;
          }

          while (!v36);
        }

        else
        {
          v118 = v116;
        }

        v119 = ((v118 << 7) - 128) >> 8;
        v120 = (v119 + 1) << 8;
        v121 = v118 - (v119 + 1);
        if (v117 >= v120)
        {
          v122 = (v119 + 1) << 8;
        }

        else
        {
          v122 = 0;
        }

        if (v117 < v120)
        {
          v123 = v119 + 1;
        }

        else
        {
          v123 = v121;
        }

        v70 = v117 - v122;
        if (v123 <= 0x7F)
        {
          do
          {
            v70 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v513 = *v26++;
                v70 |= v513;
              }
            }

            v71 = 2 * v123;
            v36 = v123 >= 0x40;
            v123 *= 2;
          }

          while (!v36);
        }

        else
        {
          v71 = v123;
        }
      }

      v124 = ((v71 << 7) - 128) >> 8;
      v125 = (v124 + 1) << 8;
      v126 = v71 - (v124 + 1);
      if (v70 >= v125)
      {
        v127 = (v124 + 1) << 8;
      }

      else
      {
        v127 = 0;
      }

      if (v70 < v125)
      {
        v126 = v124 + 1;
      }

      v128 = v70 - v127;
      if (v126 <= 0x7F)
      {
        do
        {
          v128 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v499 = *v26++;
              v128 |= v499;
            }
          }

          v129 = 2 * v126;
          v36 = v126 >= 0x40;
          v126 *= 2;
        }

        while (!v36);
      }

      else
      {
        v129 = v126;
      }

      if (v70 >= v125)
      {
        v130 = ((v129 << 7) - 128) >> 8;
        v131 = (v130 + 1) << 8;
        v132 = v129 - (v130 + 1);
        if (v128 < v131)
        {
          v131 = 0;
          v132 = v130 + 1;
        }

        v133 = v128 - v131;
        if (v132 <= 0x7F)
        {
          do
          {
            v133 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v514 = *v26++;
                v133 |= v514;
              }
            }

            v134 = 2 * v132;
            v36 = v132 >= 0x40;
            v132 *= 2;
          }

          while (!v36);
        }

        else
        {
          v134 = v132;
        }

        v135 = ((v134 << 7) - 128) >> 8;
        v136 = (v135 + 1) << 8;
        v137 = v134 - (v135 + 1);
        if (v133 >= v136)
        {
          v138 = (v135 + 1) << 8;
        }

        else
        {
          v138 = 0;
        }

        if (v133 < v136)
        {
          v137 = v135 + 1;
        }

        v139 = v133 - v138;
        if (v137 <= 0x7F)
        {
          do
          {
            v139 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v515 = *v26++;
                v139 |= v515;
              }
            }

            v140 = 2 * v137;
            v36 = v137 >= 0x40;
            v137 *= 2;
          }

          while (!v36);
        }

        else
        {
          v140 = v137;
        }

        v141 = ((v140 << 7) - 128) >> 8;
        v142 = (v141 + 1) << 8;
        v143 = v140 - (v141 + 1);
        if (v139 >= v142)
        {
          v144 = (v141 + 1) << 8;
        }

        else
        {
          v144 = 0;
        }

        if (v139 < v142)
        {
          v145 = v141 + 1;
        }

        else
        {
          v145 = v143;
        }

        v146 = v139 - v144;
        if (v145 <= 0x7F)
        {
          do
          {
            v146 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v516 = *v26++;
                v146 |= v516;
              }
            }

            v147 = 2 * v145;
            v36 = v145 >= 0x40;
            v145 *= 2;
          }

          while (!v36);
        }

        else
        {
          v147 = v145;
        }

        v148 = ((v147 << 7) - 128) >> 8;
        v149 = (v148 + 1) << 8;
        v150 = v147 - (v148 + 1);
        if (v146 >= v149)
        {
          v151 = (v148 + 1) << 8;
        }

        else
        {
          v151 = 0;
        }

        if (v146 < v149)
        {
          v152 = v148 + 1;
        }

        else
        {
          v152 = v150;
        }

        v153 = v146 - v151;
        if (v152 <= 0x7F)
        {
          do
          {
            v153 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v517 = *v26++;
                v153 |= v517;
              }
            }

            v154 = 2 * v152;
            v36 = v152 >= 0x40;
            v152 *= 2;
          }

          while (!v36);
        }

        else
        {
          v154 = v152;
        }

        v155 = ((v154 << 7) - 128) >> 8;
        v156 = (v155 + 1) << 8;
        v157 = v154 - (v155 + 1);
        if (v153 >= v156)
        {
          v158 = (v155 + 1) << 8;
        }

        else
        {
          v158 = 0;
        }

        if (v153 < v156)
        {
          v159 = v155 + 1;
        }

        else
        {
          v159 = v157;
        }

        v160 = v153 - v158;
        if (v159 <= 0x7F)
        {
          do
          {
            v160 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v518 = *v26++;
                v160 |= v518;
              }
            }

            v161 = 2 * v159;
            v36 = v159 >= 0x40;
            v159 *= 2;
          }

          while (!v36);
        }

        else
        {
          v161 = v159;
        }

        v162 = ((v161 << 7) - 128) >> 8;
        v163 = (v162 + 1) << 8;
        v164 = v161 - (v162 + 1);
        if (v160 >= v163)
        {
          v165 = (v162 + 1) << 8;
        }

        else
        {
          v165 = 0;
        }

        if (v160 < v163)
        {
          v166 = v162 + 1;
        }

        else
        {
          v166 = v164;
        }

        v167 = v160 - v165;
        if (v166 <= 0x7F)
        {
          do
          {
            v167 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v519 = *v26++;
                v167 |= v519;
              }
            }

            v168 = 2 * v166;
            v36 = v166 >= 0x40;
            v166 *= 2;
          }

          while (!v36);
        }

        else
        {
          v168 = v166;
        }

        v169 = ((v168 << 7) - 128) >> 8;
        v170 = (v169 + 1) << 8;
        v171 = v168 - (v169 + 1);
        if (v167 >= v170)
        {
          v172 = (v169 + 1) << 8;
        }

        else
        {
          v172 = 0;
        }

        if (v167 < v170)
        {
          v173 = v169 + 1;
        }

        else
        {
          v173 = v171;
        }

        v174 = v167 - v172;
        if (v173 <= 0x7F)
        {
          do
          {
            v174 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v520 = *v26++;
                v174 |= v520;
              }
            }

            v175 = 2 * v173;
            v36 = v173 >= 0x40;
            v173 *= 2;
          }

          while (!v36);
        }

        else
        {
          v175 = v173;
        }

        v176 = ((v175 << 7) - 128) >> 8;
        v177 = (v176 + 1) << 8;
        v178 = v175 - (v176 + 1);
        if (v174 >= v177)
        {
          v179 = (v176 + 1) << 8;
        }

        else
        {
          v179 = 0;
        }

        if (v174 < v177)
        {
          v178 = v176 + 1;
        }

        v128 = v174 - v179;
        if (v178 <= 0x7F)
        {
          do
          {
            v128 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v521 = *v26++;
                v128 |= v521;
              }
            }

            v129 = 2 * v178;
            v36 = v178 >= 0x40;
            v178 *= 2;
          }

          while (!v36);
        }

        else
        {
          v129 = v178;
        }
      }

      v180 = ((v129 << 7) - 128) >> 8;
      v181 = (v180 + 1) << 8;
      v182 = v129 - (v180 + 1);
      if (v128 >= v181)
      {
        v183 = (v180 + 1) << 8;
      }

      else
      {
        v183 = 0;
      }

      if (v128 < v181)
      {
        v182 = v180 + 1;
      }

      v184 = v128 - v183;
      if (v182 <= 0x7F)
      {
        do
        {
          v184 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v500 = *v26++;
              v184 |= v500;
            }
          }

          v185 = 2 * v182;
          v36 = v182 >= 0x40;
          v182 *= 2;
        }

        while (!v36);
      }

      else
      {
        v185 = v182;
      }

      if (v128 >= v181)
      {
        v186 = ((v185 << 7) - 128) >> 8;
        v187 = (v186 + 1) << 8;
        if (v184 >= v187)
        {
          v188 = v185 - (v186 + 1);
        }

        else
        {
          v187 = 0;
          v188 = v186 + 1;
        }

        v189 = v184 - v187;
        if (v188 <= 0x7F)
        {
          do
          {
            v189 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v522 = *v26++;
                v189 |= v522;
              }
            }

            v190 = 2 * v188;
            v36 = v188 >= 0x40;
            v188 *= 2;
          }

          while (!v36);
        }

        else
        {
          v190 = v188;
        }

        v191 = ((v190 << 7) - 128) >> 8;
        v192 = (v191 + 1) << 8;
        v193 = v190 - (v191 + 1);
        if (v189 >= v192)
        {
          v194 = (v191 + 1) << 8;
        }

        else
        {
          v194 = 0;
        }

        if (v189 < v192)
        {
          v195 = v191 + 1;
        }

        else
        {
          v195 = v193;
        }

        v196 = v189 - v194;
        if (v195 <= 0x7F)
        {
          do
          {
            v196 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v523 = *v26++;
                v196 |= v523;
              }
            }

            v197 = 2 * v195;
            v36 = v195 >= 0x40;
            v195 *= 2;
          }

          while (!v36);
        }

        else
        {
          v197 = v195;
        }

        v198 = ((v197 << 7) - 128) >> 8;
        v199 = (v198 + 1) << 8;
        v200 = v197 - (v198 + 1);
        if (v196 >= v199)
        {
          v201 = (v198 + 1) << 8;
        }

        else
        {
          v201 = 0;
        }

        if (v196 < v199)
        {
          v202 = v198 + 1;
        }

        else
        {
          v202 = v200;
        }

        v203 = v196 - v201;
        if (v202 <= 0x7F)
        {
          do
          {
            v203 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v524 = *v26++;
                v203 |= v524;
              }
            }

            v204 = 2 * v202;
            v36 = v202 >= 0x40;
            v202 *= 2;
          }

          while (!v36);
        }

        else
        {
          v204 = v202;
        }

        v205 = ((v204 << 7) - 128) >> 8;
        v206 = (v205 + 1) << 8;
        v207 = v204 - (v205 + 1);
        if (v203 >= v206)
        {
          v208 = (v205 + 1) << 8;
        }

        else
        {
          v208 = 0;
        }

        if (v203 < v206)
        {
          v209 = v205 + 1;
        }

        else
        {
          v209 = v207;
        }

        v210 = v203 - v208;
        if (v209 <= 0x7F)
        {
          do
          {
            v210 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v525 = *v26++;
                v210 |= v525;
              }
            }

            v211 = 2 * v209;
            v36 = v209 >= 0x40;
            v209 *= 2;
          }

          while (!v36);
        }

        else
        {
          v211 = v209;
        }

        v212 = ((v211 << 7) - 128) >> 8;
        v213 = (v212 + 1) << 8;
        v214 = v211 - (v212 + 1);
        if (v210 >= v213)
        {
          v215 = (v212 + 1) << 8;
        }

        else
        {
          v215 = 0;
        }

        if (v210 < v213)
        {
          v216 = v212 + 1;
        }

        else
        {
          v216 = v214;
        }

        v217 = v210 - v215;
        if (v216 <= 0x7F)
        {
          do
          {
            v217 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v526 = *v26++;
                v217 |= v526;
              }
            }

            v218 = 2 * v216;
            v36 = v216 >= 0x40;
            v216 *= 2;
          }

          while (!v36);
        }

        else
        {
          v218 = v216;
        }

        v219 = ((v218 << 7) - 128) >> 8;
        v220 = (v219 + 1) << 8;
        v221 = v218 - (v219 + 1);
        if (v217 >= v220)
        {
          v222 = (v219 + 1) << 8;
        }

        else
        {
          v222 = 0;
        }

        if (v217 < v220)
        {
          v223 = v219 + 1;
        }

        else
        {
          v223 = v221;
        }

        v224 = v217 - v222;
        if (v223 <= 0x7F)
        {
          do
          {
            v224 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v527 = *v26++;
                v224 |= v527;
              }
            }

            v225 = 2 * v223;
            v36 = v223 >= 0x40;
            v223 *= 2;
          }

          while (!v36);
        }

        else
        {
          v225 = v223;
        }

        v226 = ((v225 << 7) - 128) >> 8;
        v227 = (v226 + 1) << 8;
        v228 = v225 - (v226 + 1);
        if (v224 >= v227)
        {
          v229 = (v226 + 1) << 8;
        }

        else
        {
          v229 = 0;
        }

        if (v224 < v227)
        {
          v230 = v226 + 1;
        }

        else
        {
          v230 = v228;
        }

        v231 = v224 - v229;
        if (v230 <= 0x7F)
        {
          do
          {
            v231 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v528 = *v26++;
                v231 |= v528;
              }
            }

            v232 = 2 * v230;
            v36 = v230 >= 0x40;
            v230 *= 2;
          }

          while (!v36);
        }

        else
        {
          v232 = v230;
        }

        v233 = ((v232 << 7) - 128) >> 8;
        v234 = (v233 + 1) << 8;
        v235 = v232 - (v233 + 1);
        if (v231 >= v234)
        {
          v236 = (v233 + 1) << 8;
        }

        else
        {
          v236 = 0;
        }

        if (v231 < v234)
        {
          v237 = v233 + 1;
        }

        else
        {
          v237 = v235;
        }

        v184 = v231 - v236;
        if (v237 <= 0x7F)
        {
          do
          {
            v184 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v529 = *v26++;
                v184 |= v529;
              }
            }

            v185 = 2 * v237;
            v36 = v237 >= 0x40;
            v237 *= 2;
          }

          while (!v36);
        }

        else
        {
          v185 = v237;
        }
      }

      v238 = ((v185 << 7) - 128) >> 8;
      v239 = (v238 + 1) << 8;
      v240 = v185 - (v238 + 1);
      if (v184 >= v239)
      {
        v241 = (v238 + 1) << 8;
      }

      else
      {
        v241 = 0;
      }

      if (v184 < v239)
      {
        v240 = v238 + 1;
      }

      v242 = v184 - v241;
      if (v240 <= 0x7F)
      {
        do
        {
          v242 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v501 = *v26++;
              v242 |= v501;
            }
          }

          v243 = 2 * v240;
          v36 = v240 >= 0x40;
          v240 *= 2;
        }

        while (!v36);
      }

      else
      {
        v243 = v240;
      }

      if (v184 >= v239)
      {
        v244 = ((v243 << 7) - 128) >> 8;
        v245 = (v244 + 1) << 8;
        v246 = v243 - (v244 + 1);
        if (v242 < v245)
        {
          v245 = 0;
          v246 = v244 + 1;
        }

        v247 = v242 - v245;
        if (v246 <= 0x7F)
        {
          do
          {
            v247 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v530 = *v26++;
                v247 |= v530;
              }
            }

            v248 = 2 * v246;
            v36 = v246 >= 0x40;
            v246 *= 2;
          }

          while (!v36);
        }

        else
        {
          v248 = v246;
        }

        v249 = ((v248 << 7) - 128) >> 8;
        v250 = (v249 + 1) << 8;
        v251 = v248 - (v249 + 1);
        if (v247 >= v250)
        {
          v252 = (v249 + 1) << 8;
        }

        else
        {
          v252 = 0;
        }

        if (v247 < v250)
        {
          v251 = v249 + 1;
        }

        v253 = v247 - v252;
        if (v251 <= 0x7F)
        {
          do
          {
            v253 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v531 = *v26++;
                v253 |= v531;
              }
            }

            v254 = 2 * v251;
            v36 = v251 >= 0x40;
            v251 *= 2;
          }

          while (!v36);
        }

        else
        {
          v254 = v251;
        }

        v255 = ((v254 << 7) - 128) >> 8;
        v256 = (v255 + 1) << 8;
        v257 = v254 - (v255 + 1);
        if (v253 >= v256)
        {
          v258 = (v255 + 1) << 8;
        }

        else
        {
          v258 = 0;
        }

        if (v253 < v256)
        {
          v259 = v255 + 1;
        }

        else
        {
          v259 = v257;
        }

        v260 = v253 - v258;
        if (v259 <= 0x7F)
        {
          do
          {
            v260 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v532 = *v26++;
                v260 |= v532;
              }
            }

            v261 = 2 * v259;
            v36 = v259 >= 0x40;
            v259 *= 2;
          }

          while (!v36);
        }

        else
        {
          v261 = v259;
        }

        v262 = ((v261 << 7) - 128) >> 8;
        v263 = (v262 + 1) << 8;
        v264 = v261 - (v262 + 1);
        if (v260 >= v263)
        {
          v265 = (v262 + 1) << 8;
        }

        else
        {
          v265 = 0;
        }

        if (v260 < v263)
        {
          v266 = v262 + 1;
        }

        else
        {
          v266 = v264;
        }

        v267 = v260 - v265;
        if (v266 <= 0x7F)
        {
          do
          {
            v267 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v533 = *v26++;
                v267 |= v533;
              }
            }

            v268 = 2 * v266;
            v36 = v266 >= 0x40;
            v266 *= 2;
          }

          while (!v36);
        }

        else
        {
          v268 = v266;
        }

        v269 = ((v268 << 7) - 128) >> 8;
        v270 = (v269 + 1) << 8;
        v271 = v268 - (v269 + 1);
        if (v267 >= v270)
        {
          v272 = (v269 + 1) << 8;
        }

        else
        {
          v272 = 0;
        }

        if (v267 < v270)
        {
          v273 = v269 + 1;
        }

        else
        {
          v273 = v271;
        }

        v274 = v267 - v272;
        if (v273 <= 0x7F)
        {
          do
          {
            v274 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v534 = *v26++;
                v274 |= v534;
              }
            }

            v275 = 2 * v273;
            v36 = v273 >= 0x40;
            v273 *= 2;
          }

          while (!v36);
        }

        else
        {
          v275 = v273;
        }

        v276 = ((v275 << 7) - 128) >> 8;
        v277 = (v276 + 1) << 8;
        v278 = v275 - (v276 + 1);
        if (v274 >= v277)
        {
          v279 = (v276 + 1) << 8;
        }

        else
        {
          v279 = 0;
        }

        if (v274 < v277)
        {
          v280 = v276 + 1;
        }

        else
        {
          v280 = v278;
        }

        v281 = v274 - v279;
        if (v280 <= 0x7F)
        {
          do
          {
            v281 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v535 = *v26++;
                v281 |= v535;
              }
            }

            v282 = 2 * v280;
            v36 = v280 >= 0x40;
            v280 *= 2;
          }

          while (!v36);
        }

        else
        {
          v282 = v280;
        }

        v283 = ((v282 << 7) - 128) >> 8;
        v284 = (v283 + 1) << 8;
        v285 = v282 - (v283 + 1);
        if (v281 >= v284)
        {
          v286 = (v283 + 1) << 8;
        }

        else
        {
          v286 = 0;
        }

        if (v281 < v284)
        {
          v287 = v283 + 1;
        }

        else
        {
          v287 = v285;
        }

        v288 = v281 - v286;
        if (v287 <= 0x7F)
        {
          do
          {
            v288 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v536 = *v26++;
                v288 |= v536;
              }
            }

            v289 = 2 * v287;
            v36 = v287 >= 0x40;
            v287 *= 2;
          }

          while (!v36);
        }

        else
        {
          v289 = v287;
        }

        v290 = ((v289 << 7) - 128) >> 8;
        v291 = (v290 + 1) << 8;
        v292 = v289 - (v290 + 1);
        if (v288 >= v291)
        {
          v293 = (v290 + 1) << 8;
        }

        else
        {
          v293 = 0;
        }

        if (v288 < v291)
        {
          v292 = v290 + 1;
        }

        v242 = v288 - v293;
        if (v292 <= 0x7F)
        {
          do
          {
            v242 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v537 = *v26++;
                v242 |= v537;
              }
            }

            v243 = 2 * v292;
            v36 = v292 >= 0x40;
            v292 *= 2;
          }

          while (!v36);
        }

        else
        {
          v243 = v292;
        }
      }

      v294 = ((v243 << 7) - 128) >> 8;
      v295 = (v294 + 1) << 8;
      v296 = v243 - (v294 + 1);
      if (v242 >= v295)
      {
        v297 = (v294 + 1) << 8;
      }

      else
      {
        v297 = 0;
      }

      if (v242 < v295)
      {
        v296 = v294 + 1;
      }

      v298 = v242 - v297;
      if (v296 <= 0x7F)
      {
        do
        {
          v298 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v502 = *v26++;
              v298 |= v502;
            }
          }

          v299 = 2 * v296;
          v36 = v296 >= 0x40;
          v296 *= 2;
        }

        while (!v36);
      }

      else
      {
        v299 = v296;
      }

      if (v242 >= v295)
      {
        v300 = ((v299 << 7) - 128) >> 8;
        v301 = (v300 + 1) << 8;
        if (v298 >= v301)
        {
          v302 = v299 - (v300 + 1);
        }

        else
        {
          v301 = 0;
          v302 = v300 + 1;
        }

        v303 = v298 - v301;
        if (v302 <= 0x7F)
        {
          do
          {
            v303 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v538 = *v26++;
                v303 |= v538;
              }
            }

            v304 = 2 * v302;
            v36 = v302 >= 0x40;
            v302 *= 2;
          }

          while (!v36);
        }

        else
        {
          v304 = v302;
        }

        v305 = ((v304 << 7) - 128) >> 8;
        v306 = (v305 + 1) << 8;
        v307 = v304 - (v305 + 1);
        if (v303 >= v306)
        {
          v308 = (v305 + 1) << 8;
        }

        else
        {
          v308 = 0;
        }

        if (v303 < v306)
        {
          v309 = v305 + 1;
        }

        else
        {
          v309 = v307;
        }

        v310 = v303 - v308;
        if (v309 <= 0x7F)
        {
          do
          {
            v310 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v539 = *v26++;
                v310 |= v539;
              }
            }

            v311 = 2 * v309;
            v36 = v309 >= 0x40;
            v309 *= 2;
          }

          while (!v36);
        }

        else
        {
          v311 = v309;
        }

        v312 = ((v311 << 7) - 128) >> 8;
        v313 = (v312 + 1) << 8;
        v314 = v311 - (v312 + 1);
        if (v310 >= v313)
        {
          v315 = (v312 + 1) << 8;
        }

        else
        {
          v315 = 0;
        }

        if (v310 < v313)
        {
          v316 = v312 + 1;
        }

        else
        {
          v316 = v314;
        }

        v317 = v310 - v315;
        if (v316 <= 0x7F)
        {
          do
          {
            v317 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v540 = *v26++;
                v317 |= v540;
              }
            }

            v318 = 2 * v316;
            v36 = v316 >= 0x40;
            v316 *= 2;
          }

          while (!v36);
        }

        else
        {
          v318 = v316;
        }

        v319 = ((v318 << 7) - 128) >> 8;
        v320 = (v319 + 1) << 8;
        v321 = v318 - (v319 + 1);
        if (v317 >= v320)
        {
          v322 = (v319 + 1) << 8;
        }

        else
        {
          v322 = 0;
        }

        if (v317 < v320)
        {
          v323 = v319 + 1;
        }

        else
        {
          v323 = v321;
        }

        v324 = v317 - v322;
        if (v323 <= 0x7F)
        {
          do
          {
            v324 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v541 = *v26++;
                v324 |= v541;
              }
            }

            v325 = 2 * v323;
            v36 = v323 >= 0x40;
            v323 *= 2;
          }

          while (!v36);
        }

        else
        {
          v325 = v323;
        }

        v326 = ((v325 << 7) - 128) >> 8;
        v327 = (v326 + 1) << 8;
        v328 = v325 - (v326 + 1);
        if (v324 >= v327)
        {
          v329 = (v326 + 1) << 8;
        }

        else
        {
          v329 = 0;
        }

        if (v324 < v327)
        {
          v330 = v326 + 1;
        }

        else
        {
          v330 = v328;
        }

        v331 = v324 - v329;
        if (v330 <= 0x7F)
        {
          do
          {
            v331 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v542 = *v26++;
                v331 |= v542;
              }
            }

            v332 = 2 * v330;
            v36 = v330 >= 0x40;
            v330 *= 2;
          }

          while (!v36);
        }

        else
        {
          v332 = v330;
        }

        v333 = ((v332 << 7) - 128) >> 8;
        v334 = (v333 + 1) << 8;
        v335 = v332 - (v333 + 1);
        if (v331 >= v334)
        {
          v336 = (v333 + 1) << 8;
        }

        else
        {
          v336 = 0;
        }

        if (v331 < v334)
        {
          v337 = v333 + 1;
        }

        else
        {
          v337 = v335;
        }

        v338 = v331 - v336;
        if (v337 <= 0x7F)
        {
          do
          {
            v338 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v543 = *v26++;
                v338 |= v543;
              }
            }

            v339 = 2 * v337;
            v36 = v337 >= 0x40;
            v337 *= 2;
          }

          while (!v36);
        }

        else
        {
          v339 = v337;
        }

        v340 = ((v339 << 7) - 128) >> 8;
        v341 = (v340 + 1) << 8;
        v342 = v339 - (v340 + 1);
        if (v338 >= v341)
        {
          v343 = (v340 + 1) << 8;
        }

        else
        {
          v343 = 0;
        }

        if (v338 < v341)
        {
          v344 = v340 + 1;
        }

        else
        {
          v344 = v342;
        }

        v298 = v338 - v343;
        if (v344 <= 0x7F)
        {
          do
          {
            v298 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v544 = *v26++;
                v298 |= v544;
              }
            }

            v299 = 2 * v344;
            v36 = v344 >= 0x40;
            v344 *= 2;
          }

          while (!v36);
        }

        else
        {
          v299 = v344;
        }
      }

      v345 = ((v299 << 7) - 128) >> 8;
      v346 = (v345 + 1) << 8;
      v347 = v299 - (v345 + 1);
      if (v298 >= v346)
      {
        v348 = (v345 + 1) << 8;
      }

      else
      {
        v348 = 0;
      }

      if (v298 < v346)
      {
        v347 = v345 + 1;
      }

      v349 = v298 - v348;
      if (v347 <= 0x7F)
      {
        do
        {
          v349 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v503 = *v26++;
              v349 |= v503;
            }
          }

          v350 = 2 * v347;
          v36 = v347 >= 0x40;
          v347 *= 2;
        }

        while (!v36);
      }

      else
      {
        v350 = v347;
      }

      if (v298 >= v346)
      {
        v351 = ((v350 << 7) - 128) >> 8;
        v352 = (v351 + 1) << 8;
        v353 = v350 - (v351 + 1);
        if (v349 < v352)
        {
          v352 = 0;
          v353 = v351 + 1;
        }

        v354 = v349 - v352;
        if (v353 <= 0x7F)
        {
          do
          {
            v354 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v545 = *v26++;
                v354 |= v545;
              }
            }

            v355 = 2 * v353;
            v36 = v353 >= 0x40;
            v353 *= 2;
          }

          while (!v36);
        }

        else
        {
          v355 = v353;
        }

        v356 = ((v355 << 7) - 128) >> 8;
        v357 = (v356 + 1) << 8;
        v358 = v355 - (v356 + 1);
        if (v354 >= v357)
        {
          v359 = (v356 + 1) << 8;
        }

        else
        {
          v359 = 0;
        }

        if (v354 < v357)
        {
          v358 = v356 + 1;
        }

        v360 = v354 - v359;
        if (v358 <= 0x7F)
        {
          do
          {
            v360 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v546 = *v26++;
                v360 |= v546;
              }
            }

            v361 = 2 * v358;
            v36 = v358 >= 0x40;
            v358 *= 2;
          }

          while (!v36);
        }

        else
        {
          v361 = v358;
        }

        v362 = ((v361 << 7) - 128) >> 8;
        v363 = (v362 + 1) << 8;
        v364 = v361 - (v362 + 1);
        if (v360 >= v363)
        {
          v365 = (v362 + 1) << 8;
        }

        else
        {
          v365 = 0;
        }

        if (v360 < v363)
        {
          v366 = v362 + 1;
        }

        else
        {
          v366 = v364;
        }

        v367 = v360 - v365;
        if (v366 <= 0x7F)
        {
          do
          {
            v367 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v547 = *v26++;
                v367 |= v547;
              }
            }

            v368 = 2 * v366;
            v36 = v366 >= 0x40;
            v366 *= 2;
          }

          while (!v36);
        }

        else
        {
          v368 = v366;
        }

        v369 = ((v368 << 7) - 128) >> 8;
        v370 = (v369 + 1) << 8;
        v371 = v368 - (v369 + 1);
        if (v367 >= v370)
        {
          v372 = (v369 + 1) << 8;
        }

        else
        {
          v372 = 0;
        }

        if (v367 < v370)
        {
          v373 = v369 + 1;
        }

        else
        {
          v373 = v371;
        }

        v374 = v367 - v372;
        if (v373 <= 0x7F)
        {
          do
          {
            v374 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v548 = *v26++;
                v374 |= v548;
              }
            }

            v375 = 2 * v373;
            v36 = v373 >= 0x40;
            v373 *= 2;
          }

          while (!v36);
        }

        else
        {
          v375 = v373;
        }

        v376 = ((v375 << 7) - 128) >> 8;
        v377 = (v376 + 1) << 8;
        v378 = v375 - (v376 + 1);
        if (v374 >= v377)
        {
          v379 = (v376 + 1) << 8;
        }

        else
        {
          v379 = 0;
        }

        if (v374 < v377)
        {
          v380 = v376 + 1;
        }

        else
        {
          v380 = v378;
        }

        v381 = v374 - v379;
        if (v380 <= 0x7F)
        {
          do
          {
            v381 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v549 = *v26++;
                v381 |= v549;
              }
            }

            v382 = 2 * v380;
            v36 = v380 >= 0x40;
            v380 *= 2;
          }

          while (!v36);
        }

        else
        {
          v382 = v380;
        }

        v383 = ((v382 << 7) - 128) >> 8;
        v384 = (v383 + 1) << 8;
        v385 = v382 - (v383 + 1);
        if (v381 >= v384)
        {
          v386 = (v383 + 1) << 8;
        }

        else
        {
          v386 = 0;
        }

        if (v381 < v384)
        {
          v387 = v383 + 1;
        }

        else
        {
          v387 = v385;
        }

        v388 = v381 - v386;
        if (v387 <= 0x7F)
        {
          do
          {
            v388 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v550 = *v26++;
                v388 |= v550;
              }
            }

            v389 = 2 * v387;
            v36 = v387 >= 0x40;
            v387 *= 2;
          }

          while (!v36);
        }

        else
        {
          v389 = v387;
        }

        v390 = ((v389 << 7) - 128) >> 8;
        v391 = (v390 + 1) << 8;
        v392 = v389 - (v390 + 1);
        if (v388 >= v391)
        {
          v393 = (v390 + 1) << 8;
        }

        else
        {
          v393 = 0;
        }

        if (v388 < v391)
        {
          v392 = v390 + 1;
        }

        v349 = v388 - v393;
        if (v392 <= 0x7F)
        {
          do
          {
            v349 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v551 = *v26++;
                v349 |= v551;
              }
            }

            v350 = 2 * v392;
            v36 = v392 >= 0x40;
            v392 *= 2;
          }

          while (!v36);
        }

        else
        {
          v350 = v392;
        }
      }

      v394 = ((v350 << 7) - 128) >> 8;
      v395 = (v394 + 1) << 8;
      v396 = v350 - (v394 + 1);
      if (v349 >= v395)
      {
        v397 = (v394 + 1) << 8;
      }

      else
      {
        v397 = 0;
      }

      if (v349 < v395)
      {
        v396 = v394 + 1;
      }

      v398 = v349 - v397;
      if (v396 <= 0x7F)
      {
        do
        {
          v398 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v504 = *v26++;
              v398 |= v504;
            }
          }

          v399 = 2 * v396;
          v36 = v396 >= 0x40;
          v396 *= 2;
        }

        while (!v36);
      }

      else
      {
        v399 = v396;
      }

      if (v349 >= v395)
      {
        v400 = ((v399 << 7) - 128) >> 8;
        v401 = (v400 + 1) << 8;
        v402 = v399 - (v400 + 1);
        if (v398 < v401)
        {
          v401 = 0;
          v402 = v400 + 1;
        }

        v403 = v398 - v401;
        if (v402 <= 0x7F)
        {
          do
          {
            v403 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v552 = *v26++;
                v403 |= v552;
              }
            }

            v404 = 2 * v402;
            v36 = v402 >= 0x40;
            v402 *= 2;
          }

          while (!v36);
        }

        else
        {
          v404 = v402;
        }

        v405 = ((v404 << 7) - 128) >> 8;
        v406 = (v405 + 1) << 8;
        v407 = v404 - (v405 + 1);
        if (v403 >= v406)
        {
          v408 = (v405 + 1) << 8;
        }

        else
        {
          v408 = 0;
        }

        if (v403 < v406)
        {
          v409 = v405 + 1;
        }

        else
        {
          v409 = v407;
        }

        v410 = v403 - v408;
        if (v409 <= 0x7F)
        {
          do
          {
            v410 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v553 = *v26++;
                v410 |= v553;
              }
            }

            v411 = 2 * v409;
            v36 = v409 >= 0x40;
            v409 *= 2;
          }

          while (!v36);
        }

        else
        {
          v411 = v409;
        }

        v412 = ((v411 << 7) - 128) >> 8;
        v413 = (v412 + 1) << 8;
        v414 = v411 - (v412 + 1);
        if (v410 >= v413)
        {
          v415 = (v412 + 1) << 8;
        }

        else
        {
          v415 = 0;
        }

        if (v410 < v413)
        {
          v416 = v412 + 1;
        }

        else
        {
          v416 = v414;
        }

        v417 = v410 - v415;
        if (v416 <= 0x7F)
        {
          do
          {
            v417 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v554 = *v26++;
                v417 |= v554;
              }
            }

            v418 = 2 * v416;
            v36 = v416 >= 0x40;
            v416 *= 2;
          }

          while (!v36);
        }

        else
        {
          v418 = v416;
        }

        v419 = ((v418 << 7) - 128) >> 8;
        v420 = (v419 + 1) << 8;
        v421 = v418 - (v419 + 1);
        if (v417 >= v420)
        {
          v422 = (v419 + 1) << 8;
        }

        else
        {
          v422 = 0;
        }

        if (v417 < v420)
        {
          v423 = v419 + 1;
        }

        else
        {
          v423 = v421;
        }

        v424 = v417 - v422;
        if (v423 <= 0x7F)
        {
          do
          {
            v424 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v555 = *v26++;
                v424 |= v555;
              }
            }

            v425 = 2 * v423;
            v36 = v423 >= 0x40;
            v423 *= 2;
          }

          while (!v36);
        }

        else
        {
          v425 = v423;
        }

        v426 = ((v425 << 7) - 128) >> 8;
        v427 = (v426 + 1) << 8;
        v428 = v425 - (v426 + 1);
        if (v424 >= v427)
        {
          v429 = (v426 + 1) << 8;
        }

        else
        {
          v429 = 0;
        }

        if (v424 < v427)
        {
          v430 = v426 + 1;
        }

        else
        {
          v430 = v428;
        }

        v431 = v424 - v429;
        if (v430 <= 0x7F)
        {
          do
          {
            v431 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v556 = *v26++;
                v431 |= v556;
              }
            }

            v432 = 2 * v430;
            v36 = v430 >= 0x40;
            v430 *= 2;
          }

          while (!v36);
        }

        else
        {
          v432 = v430;
        }

        v433 = ((v432 << 7) - 128) >> 8;
        v434 = (v433 + 1) << 8;
        v435 = v432 - (v433 + 1);
        if (v431 >= v434)
        {
          v436 = (v433 + 1) << 8;
        }

        else
        {
          v436 = 0;
        }

        if (v431 < v434)
        {
          v437 = v433 + 1;
        }

        else
        {
          v437 = v435;
        }

        v438 = v431 - v436;
        if (v437 <= 0x7F)
        {
          do
          {
            v438 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v557 = *v26++;
                v438 |= v557;
              }
            }

            v439 = 2 * v437;
            v36 = v437 >= 0x40;
            v437 *= 2;
          }

          while (!v36);
        }

        else
        {
          v439 = v437;
        }

        v440 = ((v439 << 7) - 128) >> 8;
        v441 = (v440 + 1) << 8;
        v442 = v439 - (v440 + 1);
        if (v438 >= v441)
        {
          v443 = (v440 + 1) << 8;
        }

        else
        {
          v443 = 0;
        }

        if (v438 < v441)
        {
          v444 = v440 + 1;
        }

        else
        {
          v444 = v442;
        }

        v398 = v438 - v443;
        if (v444 <= 0x7F)
        {
          do
          {
            v398 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v558 = *v26++;
                v398 |= v558;
              }
            }

            v399 = 2 * v444;
            v36 = v444 >= 0x40;
            v444 *= 2;
          }

          while (!v36);
        }

        else
        {
          v399 = v444;
        }
      }

      v445 = ((v399 << 7) - 128) >> 8;
      v446 = (v445 + 1) << 8;
      if (v398 >= v446)
      {
        v447 = (v445 + 1) << 8;
      }

      else
      {
        v447 = 0;
      }

      if (v398 < v446)
      {
        v448 = v445 + 1;
      }

      else
      {
        v448 = v399 - (v445 + 1);
      }

      v57 = v398 - v447;
      if (v448 <= 0x7F)
      {
        do
        {
          v57 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v505 = *v26++;
              v57 |= v505;
            }
          }

          v44 = 2 * v448;
          v36 = v448 >= 0x40;
          v448 *= 2;
        }

        while (!v36);
      }

      else
      {
        v44 = v448;
      }

      if (v398 >= v446)
      {
        v449 = ((v44 << 7) - 128) >> 8;
        v450 = (v449 + 1) << 8;
        v451 = v44 - (v449 + 1);
        if (v57 >= v450)
        {
          v452 = (v449 + 1) << 8;
        }

        else
        {
          v452 = 0;
        }

        if (v57 < v450)
        {
          v451 = v449 + 1;
        }

        v453 = v57 - v452;
        if (v451 <= 0x7F)
        {
          do
          {
            v453 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v559 = *v26++;
                v453 |= v559;
              }
            }

            v454 = 2 * v451;
            v36 = v451 >= 0x40;
            v451 *= 2;
          }

          while (!v36);
        }

        else
        {
          v454 = v451;
        }

        v455 = ((v454 << 7) - 128) >> 8;
        v456 = (v455 + 1) << 8;
        v457 = v454 - (v455 + 1);
        if (v453 >= v456)
        {
          v458 = (v455 + 1) << 8;
        }

        else
        {
          v458 = 0;
        }

        if (v453 < v456)
        {
          v459 = v455 + 1;
        }

        else
        {
          v459 = v457;
        }

        v460 = v453 - v458;
        if (v459 <= 0x7F)
        {
          do
          {
            v460 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v560 = *v26++;
                v460 |= v560;
              }
            }

            v461 = 2 * v459;
            v36 = v459 >= 0x40;
            v459 *= 2;
          }

          while (!v36);
        }

        else
        {
          v461 = v459;
        }

        v462 = ((v461 << 7) - 128) >> 8;
        v463 = (v462 + 1) << 8;
        v464 = v461 - (v462 + 1);
        if (v460 >= v463)
        {
          v465 = (v462 + 1) << 8;
        }

        else
        {
          v465 = 0;
        }

        if (v460 < v463)
        {
          v466 = v462 + 1;
        }

        else
        {
          v466 = v464;
        }

        v467 = v460 - v465;
        if (v466 <= 0x7F)
        {
          do
          {
            v467 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v561 = *v26++;
                v467 |= v561;
              }
            }

            v468 = 2 * v466;
            v36 = v466 >= 0x40;
            v466 *= 2;
          }

          while (!v36);
        }

        else
        {
          v468 = v466;
        }

        v469 = ((v468 << 7) - 128) >> 8;
        v470 = (v469 + 1) << 8;
        v471 = v468 - (v469 + 1);
        if (v467 >= v470)
        {
          v472 = (v469 + 1) << 8;
        }

        else
        {
          v472 = 0;
        }

        if (v467 < v470)
        {
          v473 = v469 + 1;
        }

        else
        {
          v473 = v471;
        }

        v474 = v467 - v472;
        if (v473 <= 0x7F)
        {
          do
          {
            v474 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v562 = *v26++;
                v474 |= v562;
              }
            }

            v475 = 2 * v473;
            v36 = v473 >= 0x40;
            v473 *= 2;
          }

          while (!v36);
        }

        else
        {
          v475 = v473;
        }

        v476 = ((v475 << 7) - 128) >> 8;
        v477 = (v476 + 1) << 8;
        v478 = v475 - (v476 + 1);
        if (v474 >= v477)
        {
          v479 = (v476 + 1) << 8;
        }

        else
        {
          v479 = 0;
        }

        if (v474 < v477)
        {
          v480 = v476 + 1;
        }

        else
        {
          v480 = v478;
        }

        v481 = v474 - v479;
        if (v480 <= 0x7F)
        {
          do
          {
            v481 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v563 = *v26++;
                v481 |= v563;
              }
            }

            v482 = 2 * v480;
            v36 = v480 >= 0x40;
            v480 *= 2;
          }

          while (!v36);
        }

        else
        {
          v482 = v480;
        }

        v483 = ((v482 << 7) - 128) >> 8;
        v484 = (v483 + 1) << 8;
        v485 = v482 - (v483 + 1);
        if (v481 >= v484)
        {
          v486 = (v483 + 1) << 8;
        }

        else
        {
          v486 = 0;
        }

        if (v481 < v484)
        {
          v487 = v483 + 1;
        }

        else
        {
          v487 = v485;
        }

        v488 = v481 - v486;
        if (v487 <= 0x7F)
        {
          do
          {
            v488 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v564 = *v26++;
                v488 |= v564;
              }
            }

            v489 = 2 * v487;
            v36 = v487 >= 0x40;
            v487 *= 2;
          }

          while (!v36);
        }

        else
        {
          v489 = v487;
        }

        v490 = ((v489 << 7) - 128) >> 8;
        v491 = (v490 + 1) << 8;
        v492 = v489 - (v490 + 1);
        if (v488 >= v491)
        {
          v493 = (v490 + 1) << 8;
        }

        else
        {
          v493 = 0;
        }

        if (v488 < v491)
        {
          v492 = v490 + 1;
        }

        v57 = v488 - v493;
        if (v492 <= 0x7F)
        {
          do
          {
            v57 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v565 = *v26++;
                v57 |= v565;
              }
            }

            v44 = 2 * v492;
            v36 = v492 >= 0x40;
            v492 *= 2;
          }

          while (!v36);
        }

        else
        {
          v44 = v492;
        }
      }
    }

    if (v43 >= v46)
    {
      v566 = ((v44 << 7) - 128) >> 8;
      v567 = (v566 + 1) << 8;
      v568 = v44 - (v566 + 1);
      if (v57 >= v567)
      {
        v569 = (v566 + 1) << 8;
      }

      else
      {
        v569 = 0;
      }

      if (v57 < v567)
      {
        v568 = v566 + 1;
      }

      v570 = v57 - v569;
      if (v568 <= 0x7F)
      {
        do
        {
          v570 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v832 = *v26++;
              v570 |= v832;
            }
          }

          v571 = 2 * v568;
          v36 = v568 >= 0x40;
          v568 *= 2;
        }

        while (!v36);
      }

      else
      {
        v571 = v568;
      }

      if (v57 >= v567)
      {
        v572 = ((v571 << 7) - 128) >> 8;
        v573 = (v572 + 1) << 8;
        if (v570 >= v573)
        {
          v574 = v571 - (v572 + 1);
        }

        else
        {
          v573 = 0;
          v574 = v572 + 1;
        }

        v575 = v570 - v573;
        if (v574 <= 0x7F)
        {
          do
          {
            v575 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v835 = *v26++;
                v575 |= v835;
              }
            }

            v576 = 2 * v574;
            v36 = v574 >= 0x40;
            v574 *= 2;
          }

          while (!v36);
        }

        else
        {
          v576 = v574;
        }

        v577 = ((v576 << 7) - 128) >> 8;
        v578 = (v577 + 1) << 8;
        v579 = v576 - (v577 + 1);
        if (v575 >= v578)
        {
          v580 = (v577 + 1) << 8;
        }

        else
        {
          v580 = 0;
        }

        if (v575 < v578)
        {
          v581 = v577 + 1;
        }

        else
        {
          v581 = v579;
        }

        v582 = v575 - v580;
        if (v581 <= 0x7F)
        {
          do
          {
            v582 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v836 = *v26++;
                v582 |= v836;
              }
            }

            v583 = 2 * v581;
            v36 = v581 >= 0x40;
            v581 *= 2;
          }

          while (!v36);
        }

        else
        {
          v583 = v581;
        }

        v584 = ((v583 << 7) - 128) >> 8;
        v585 = (v584 + 1) << 8;
        v586 = v583 - (v584 + 1);
        if (v582 >= v585)
        {
          v587 = (v584 + 1) << 8;
        }

        else
        {
          v587 = 0;
        }

        if (v582 < v585)
        {
          v588 = v584 + 1;
        }

        else
        {
          v588 = v586;
        }

        v589 = v582 - v587;
        if (v588 <= 0x7F)
        {
          do
          {
            v589 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v837 = *v26++;
                v589 |= v837;
              }
            }

            v590 = 2 * v588;
            v36 = v588 >= 0x40;
            v588 *= 2;
          }

          while (!v36);
        }

        else
        {
          v590 = v588;
        }

        v591 = ((v590 << 7) - 128) >> 8;
        v592 = (v591 + 1) << 8;
        v593 = v590 - (v591 + 1);
        if (v589 >= v592)
        {
          v594 = (v591 + 1) << 8;
        }

        else
        {
          v594 = 0;
        }

        if (v589 < v592)
        {
          v595 = v591 + 1;
        }

        else
        {
          v595 = v593;
        }

        v596 = v589 - v594;
        if (v595 <= 0x7F)
        {
          do
          {
            v596 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v838 = *v26++;
                v596 |= v838;
              }
            }

            v597 = 2 * v595;
            v36 = v595 >= 0x40;
            v595 *= 2;
          }

          while (!v36);
        }

        else
        {
          v597 = v595;
        }

        v598 = ((v597 << 7) - 128) >> 8;
        v599 = (v598 + 1) << 8;
        v600 = v597 - (v598 + 1);
        if (v596 >= v599)
        {
          v601 = (v598 + 1) << 8;
        }

        else
        {
          v601 = 0;
        }

        if (v596 < v599)
        {
          v602 = v598 + 1;
        }

        else
        {
          v602 = v600;
        }

        v603 = v596 - v601;
        if (v602 <= 0x7F)
        {
          do
          {
            v603 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v839 = *v26++;
                v603 |= v839;
              }
            }

            v604 = 2 * v602;
            v36 = v602 >= 0x40;
            v602 *= 2;
          }

          while (!v36);
        }

        else
        {
          v604 = v602;
        }

        v605 = ((v604 << 7) - 128) >> 8;
        v606 = (v605 + 1) << 8;
        v607 = v604 - (v605 + 1);
        if (v603 >= v606)
        {
          v608 = (v605 + 1) << 8;
        }

        else
        {
          v608 = 0;
        }

        if (v603 < v606)
        {
          v609 = v605 + 1;
        }

        else
        {
          v609 = v607;
        }

        v610 = v603 - v608;
        if (v609 <= 0x7F)
        {
          do
          {
            v610 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v840 = *v26++;
                v610 |= v840;
              }
            }

            v611 = 2 * v609;
            v36 = v609 >= 0x40;
            v609 *= 2;
          }

          while (!v36);
        }

        else
        {
          v611 = v609;
        }

        v612 = ((v611 << 7) - 128) >> 8;
        v613 = (v612 + 1) << 8;
        v614 = v611 - (v612 + 1);
        if (v610 >= v613)
        {
          v615 = (v612 + 1) << 8;
        }

        else
        {
          v615 = 0;
        }

        if (v610 < v613)
        {
          v616 = v612 + 1;
        }

        else
        {
          v616 = v614;
        }

        v617 = v610 - v615;
        if (v616 <= 0x7F)
        {
          do
          {
            v617 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v841 = *v26++;
                v617 |= v841;
              }
            }

            v618 = 2 * v616;
            v36 = v616 >= 0x40;
            v616 *= 2;
          }

          while (!v36);
        }

        else
        {
          v618 = v616;
        }

        v619 = ((v618 << 7) - 128) >> 8;
        v620 = (v619 + 1) << 8;
        v621 = v618 - (v619 + 1);
        if (v617 >= v620)
        {
          v622 = (v619 + 1) << 8;
        }

        else
        {
          v622 = 0;
        }

        if (v617 < v620)
        {
          v623 = v619 + 1;
        }

        else
        {
          v623 = v621;
        }

        v570 = v617 - v622;
        if (v623 <= 0x7F)
        {
          do
          {
            v570 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v842 = *v26++;
                v570 |= v842;
              }
            }

            v571 = 2 * v623;
            v36 = v623 >= 0x40;
            v623 *= 2;
          }

          while (!v36);
        }

        else
        {
          v571 = v623;
        }
      }

      v624 = ((v571 << 7) - 128) >> 8;
      v625 = (v624 + 1) << 8;
      v626 = v571 - (v624 + 1);
      if (v570 >= v625)
      {
        v627 = (v624 + 1) << 8;
      }

      else
      {
        v627 = 0;
      }

      if (v570 < v625)
      {
        v626 = v624 + 1;
      }

      v628 = v570 - v627;
      if (v626 <= 0x7F)
      {
        do
        {
          v628 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v833 = *v26++;
              v628 |= v833;
            }
          }

          v629 = 2 * v626;
          v36 = v626 >= 0x40;
          v626 *= 2;
        }

        while (!v36);
      }

      else
      {
        v629 = v626;
      }

      if (v570 >= v625)
      {
        v630 = ((v629 << 7) - 128) >> 8;
        v631 = (v630 + 1) << 8;
        v632 = v629 - (v630 + 1);
        if (v628 < v631)
        {
          v631 = 0;
          v632 = v630 + 1;
        }

        v633 = v628 - v631;
        if (v632 <= 0x7F)
        {
          do
          {
            v633 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v843 = *v26++;
                v633 |= v843;
              }
            }

            v634 = 2 * v632;
            v36 = v632 >= 0x40;
            v632 *= 2;
          }

          while (!v36);
        }

        else
        {
          v634 = v632;
        }

        v635 = ((v634 << 7) - 128) >> 8;
        v636 = (v635 + 1) << 8;
        v637 = v634 - (v635 + 1);
        if (v633 >= v636)
        {
          v638 = (v635 + 1) << 8;
        }

        else
        {
          v638 = 0;
        }

        if (v633 < v636)
        {
          v637 = v635 + 1;
        }

        v639 = v633 - v638;
        if (v637 <= 0x7F)
        {
          do
          {
            v639 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v844 = *v26++;
                v639 |= v844;
              }
            }

            v640 = 2 * v637;
            v36 = v637 >= 0x40;
            v637 *= 2;
          }

          while (!v36);
        }

        else
        {
          v640 = v637;
        }

        v641 = ((v640 << 7) - 128) >> 8;
        v642 = (v641 + 1) << 8;
        v643 = v640 - (v641 + 1);
        if (v639 >= v642)
        {
          v644 = (v641 + 1) << 8;
        }

        else
        {
          v644 = 0;
        }

        if (v639 < v642)
        {
          v645 = v641 + 1;
        }

        else
        {
          v645 = v643;
        }

        v646 = v639 - v644;
        if (v645 <= 0x7F)
        {
          do
          {
            v646 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v845 = *v26++;
                v646 |= v845;
              }
            }

            v647 = 2 * v645;
            v36 = v645 >= 0x40;
            v645 *= 2;
          }

          while (!v36);
        }

        else
        {
          v647 = v645;
        }

        v648 = ((v647 << 7) - 128) >> 8;
        v649 = (v648 + 1) << 8;
        v650 = v647 - (v648 + 1);
        if (v646 >= v649)
        {
          v651 = (v648 + 1) << 8;
        }

        else
        {
          v651 = 0;
        }

        if (v646 < v649)
        {
          v652 = v648 + 1;
        }

        else
        {
          v652 = v650;
        }

        v653 = v646 - v651;
        if (v652 <= 0x7F)
        {
          do
          {
            v653 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v846 = *v26++;
                v653 |= v846;
              }
            }

            v654 = 2 * v652;
            v36 = v652 >= 0x40;
            v652 *= 2;
          }

          while (!v36);
        }

        else
        {
          v654 = v652;
        }

        v655 = ((v654 << 7) - 128) >> 8;
        v656 = (v655 + 1) << 8;
        v657 = v654 - (v655 + 1);
        if (v653 >= v656)
        {
          v658 = (v655 + 1) << 8;
        }

        else
        {
          v658 = 0;
        }

        if (v653 < v656)
        {
          v659 = v655 + 1;
        }

        else
        {
          v659 = v657;
        }

        v660 = v653 - v658;
        if (v659 <= 0x7F)
        {
          do
          {
            v660 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v847 = *v26++;
                v660 |= v847;
              }
            }

            v661 = 2 * v659;
            v36 = v659 >= 0x40;
            v659 *= 2;
          }

          while (!v36);
        }

        else
        {
          v661 = v659;
        }

        v662 = ((v661 << 7) - 128) >> 8;
        v663 = (v662 + 1) << 8;
        v664 = v661 - (v662 + 1);
        if (v660 >= v663)
        {
          v665 = (v662 + 1) << 8;
        }

        else
        {
          v665 = 0;
        }

        if (v660 < v663)
        {
          v666 = v662 + 1;
        }

        else
        {
          v666 = v664;
        }

        v667 = v660 - v665;
        if (v666 <= 0x7F)
        {
          do
          {
            v667 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v848 = *v26++;
                v667 |= v848;
              }
            }

            v668 = 2 * v666;
            v36 = v666 >= 0x40;
            v666 *= 2;
          }

          while (!v36);
        }

        else
        {
          v668 = v666;
        }

        v669 = ((v668 << 7) - 128) >> 8;
        v670 = (v669 + 1) << 8;
        v671 = v668 - (v669 + 1);
        if (v667 >= v670)
        {
          v672 = (v669 + 1) << 8;
        }

        else
        {
          v672 = 0;
        }

        if (v667 < v670)
        {
          v673 = v669 + 1;
        }

        else
        {
          v673 = v671;
        }

        v674 = v667 - v672;
        if (v673 <= 0x7F)
        {
          do
          {
            v674 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v849 = *v26++;
                v674 |= v849;
              }
            }

            v675 = 2 * v673;
            v36 = v673 >= 0x40;
            v673 *= 2;
          }

          while (!v36);
        }

        else
        {
          v675 = v673;
        }

        v676 = ((v675 << 7) - 128) >> 8;
        v677 = (v676 + 1) << 8;
        v678 = v675 - (v676 + 1);
        if (v674 >= v677)
        {
          v679 = (v676 + 1) << 8;
        }

        else
        {
          v679 = 0;
        }

        if (v674 < v677)
        {
          v678 = v676 + 1;
        }

        v628 = v674 - v679;
        if (v678 <= 0x7F)
        {
          do
          {
            v628 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v850 = *v26++;
                v628 |= v850;
              }
            }

            v629 = 2 * v678;
            v36 = v678 >= 0x40;
            v678 *= 2;
          }

          while (!v36);
        }

        else
        {
          v629 = v678;
        }
      }

      v680 = ((v629 << 7) - 128) >> 8;
      v681 = (v680 + 1) << 8;
      if (v628 >= v681)
      {
        v682 = (v680 + 1) << 8;
      }

      else
      {
        v682 = 0;
      }

      if (v628 < v681)
      {
        v683 = v680 + 1;
      }

      else
      {
        v683 = v629 - (v680 + 1);
      }

      v43 = v628 - v682;
      if (v683 <= 0x7F)
      {
        do
        {
          v43 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v834 = *v26++;
              v43 |= v834;
            }
          }

          v44 = 2 * v683;
          v36 = v683 >= 0x40;
          v683 *= 2;
        }

        while (!v36);
      }

      else
      {
        v44 = v683;
      }

      if (v628 >= v681)
      {
        v684 = ((v44 << 7) - 128) >> 8;
        v685 = (v684 + 1) << 8;
        v686 = v44 - (v684 + 1);
        if (v43 >= v685)
        {
          v687 = (v684 + 1) << 8;
        }

        else
        {
          v687 = 0;
        }

        if (v43 < v685)
        {
          v688 = v684 + 1;
        }

        else
        {
          v688 = v686;
        }

        v689 = v43 - v687;
        if (v688 <= 0x7F)
        {
          do
          {
            v689 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v851 = *v26++;
                v689 |= v851;
              }
            }

            v690 = 2 * v688;
            v36 = v688 >= 0x40;
            v688 *= 2;
          }

          while (!v36);
        }

        else
        {
          v690 = v688;
        }

        v691 = ((v690 << 7) - 128) >> 8;
        v692 = (v691 + 1) << 8;
        v693 = v690 - (v691 + 1);
        if (v689 >= v692)
        {
          v694 = (v691 + 1) << 8;
        }

        else
        {
          v694 = 0;
        }

        if (v689 < v692)
        {
          v695 = v691 + 1;
        }

        else
        {
          v695 = v693;
        }

        v696 = v689 - v694;
        if (v695 <= 0x7F)
        {
          do
          {
            v696 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v852 = *v26++;
                v696 |= v852;
              }
            }

            v697 = 2 * v695;
            v36 = v695 >= 0x40;
            v695 *= 2;
          }

          while (!v36);
        }

        else
        {
          v697 = v695;
        }

        v698 = ((v697 << 7) - 128) >> 8;
        v699 = (v698 + 1) << 8;
        v700 = v697 - (v698 + 1);
        if (v696 >= v699)
        {
          v701 = (v698 + 1) << 8;
        }

        else
        {
          v701 = 0;
        }

        if (v696 < v699)
        {
          v702 = v698 + 1;
        }

        else
        {
          v702 = v700;
        }

        v703 = v696 - v701;
        if (v702 <= 0x7F)
        {
          do
          {
            v703 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v853 = *v26++;
                v703 |= v853;
              }
            }

            v704 = 2 * v702;
            v36 = v702 >= 0x40;
            v702 *= 2;
          }

          while (!v36);
        }

        else
        {
          v704 = v702;
        }

        v705 = ((v704 << 7) - 128) >> 8;
        v706 = (v705 + 1) << 8;
        v707 = v704 - (v705 + 1);
        if (v703 >= v706)
        {
          v708 = (v705 + 1) << 8;
        }

        else
        {
          v708 = 0;
        }

        if (v703 < v706)
        {
          v709 = v705 + 1;
        }

        else
        {
          v709 = v707;
        }

        v710 = v703 - v708;
        if (v709 <= 0x7F)
        {
          do
          {
            v710 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v854 = *v26++;
                v710 |= v854;
              }
            }

            v711 = 2 * v709;
            v36 = v709 >= 0x40;
            v709 *= 2;
          }

          while (!v36);
        }

        else
        {
          v711 = v709;
        }

        v712 = ((v711 << 7) - 128) >> 8;
        v713 = (v712 + 1) << 8;
        v714 = v711 - (v712 + 1);
        if (v710 >= v713)
        {
          v715 = (v712 + 1) << 8;
        }

        else
        {
          v715 = 0;
        }

        if (v710 < v713)
        {
          v716 = v712 + 1;
        }

        else
        {
          v716 = v714;
        }

        v717 = v710 - v715;
        if (v716 <= 0x7F)
        {
          do
          {
            v717 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v855 = *v26++;
                v717 |= v855;
              }
            }

            v718 = 2 * v716;
            v36 = v716 >= 0x40;
            v716 *= 2;
          }

          while (!v36);
        }

        else
        {
          v718 = v716;
        }

        v719 = ((v718 << 7) - 128) >> 8;
        v720 = (v719 + 1) << 8;
        v721 = v718 - (v719 + 1);
        if (v717 >= v720)
        {
          v722 = (v719 + 1) << 8;
        }

        else
        {
          v722 = 0;
        }

        if (v717 < v720)
        {
          v723 = v719 + 1;
        }

        else
        {
          v723 = v721;
        }

        v724 = v717 - v722;
        if (v723 <= 0x7F)
        {
          do
          {
            v724 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v856 = *v26++;
                v724 |= v856;
              }
            }

            v725 = 2 * v723;
            v36 = v723 >= 0x40;
            v723 *= 2;
          }

          while (!v36);
        }

        else
        {
          v725 = v723;
        }

        v726 = ((v725 << 7) - 128) >> 8;
        v727 = (v726 + 1) << 8;
        v728 = v725 - (v726 + 1);
        if (v724 >= v727)
        {
          v729 = (v726 + 1) << 8;
        }

        else
        {
          v729 = 0;
        }

        if (v724 < v727)
        {
          v730 = v726 + 1;
        }

        else
        {
          v730 = v728;
        }

        v731 = v724 - v729;
        if (v730 <= 0x7F)
        {
          do
          {
            v731 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v857 = *v26++;
                v731 |= v857;
              }
            }

            v732 = 2 * v730;
            v36 = v730 >= 0x40;
            v730 *= 2;
          }

          while (!v36);
        }

        else
        {
          v732 = v730;
        }

        v733 = ((v732 << 7) - 128) >> 8;
        v734 = (v733 + 1) << 8;
        v735 = v732 - (v733 + 1);
        if (v731 >= v734)
        {
          v736 = (v733 + 1) << 8;
        }

        else
        {
          v736 = 0;
        }

        if (v731 < v734)
        {
          v737 = v733 + 1;
        }

        else
        {
          v737 = v735;
        }

        v43 = v731 - v736;
        if (v737 <= 0x7F)
        {
          do
          {
            v43 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v858 = *v26++;
                v43 |= v858;
              }
            }

            v44 = 2 * v737;
            v36 = v737 >= 0x40;
            v737 *= 2;
          }

          while (!v36);
        }

        else
        {
          v44 = v737;
        }
      }
    }

    else
    {
      v43 = v57;
    }
  }

  v738 = ((v44 << 7) - 128) >> 8;
  v739 = (v738 + 1) << 8;
  v740 = v44 - (v738 + 1);
  if (v43 >= v739)
  {
    v741 = (v738 + 1) << 8;
  }

  else
  {
    v741 = 0;
  }

  if (v43 < v739)
  {
    v742 = v738 + 1;
  }

  else
  {
    v742 = v740;
  }

  v743 = v43 - v741;
  if (v742 <= 0x7F)
  {
    do
    {
      v743 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v820 = *v26++;
          v743 |= v820;
        }
      }

      v744 = 2 * v742;
      v36 = v742 >= 0x40;
      v742 *= 2;
    }

    while (!v36);
  }

  else
  {
    v744 = v742;
  }

  v745 = ((v744 << 7) - 128) >> 8;
  v746 = (v745 + 1) << 8;
  v747 = v744 - (v745 + 1);
  if (v743 >= v746)
  {
    v748 = (v745 + 1) << 8;
  }

  else
  {
    v748 = 0;
  }

  if (v743 < v746)
  {
    v749 = v745 + 1;
  }

  else
  {
    v749 = v747;
  }

  v750 = v743 - v748;
  if (v749 <= 0x7F)
  {
    do
    {
      v750 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v821 = *v26++;
          v750 |= v821;
        }
      }

      v751 = 2 * v749;
      v36 = v749 >= 0x40;
      v749 *= 2;
    }

    while (!v36);
  }

  else
  {
    v751 = v749;
  }

  v752 = ((v751 << 7) - 128) >> 8;
  v753 = (v752 + 1) << 8;
  v754 = v751 - (v752 + 1);
  if (v750 >= v753)
  {
    v755 = (v752 + 1) << 8;
  }

  else
  {
    v755 = 0;
  }

  if (v750 < v753)
  {
    v756 = v752 + 1;
  }

  else
  {
    v756 = v754;
  }

  v757 = v750 - v755;
  if (v756 <= 0x7F)
  {
    do
    {
      v757 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v822 = *v26++;
          v757 |= v822;
        }
      }

      v758 = 2 * v756;
      v36 = v756 >= 0x40;
      v756 *= 2;
    }

    while (!v36);
  }

  else
  {
    v758 = v756;
  }

  v759 = ((v758 << 7) - 128) >> 8;
  v760 = (v759 + 1) << 8;
  v761 = v758 - (v759 + 1);
  if (v757 >= v760)
  {
    v762 = (v759 + 1) << 8;
  }

  else
  {
    v762 = 0;
  }

  if (v757 < v760)
  {
    v763 = v759 + 1;
  }

  else
  {
    v763 = v761;
  }

  v764 = v757 - v762;
  if (v763 <= 0x7F)
  {
    do
    {
      v764 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v823 = *v26++;
          v764 |= v823;
        }
      }

      v765 = 2 * v763;
      v36 = v763 >= 0x40;
      v763 *= 2;
    }

    while (!v36);
  }

  else
  {
    v765 = v763;
  }

  v766 = ((v765 << 7) - 128) >> 8;
  v767 = (v766 + 1) << 8;
  v768 = v765 - (v766 + 1);
  if (v764 >= v767)
  {
    v769 = (v766 + 1) << 8;
  }

  else
  {
    v769 = 0;
  }

  if (v764 < v767)
  {
    v770 = v766 + 1;
  }

  else
  {
    v770 = v768;
  }

  v771 = v764 - v769;
  if (v770 <= 0x7F)
  {
    do
    {
      v771 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v824 = *v26++;
          v771 |= v824;
        }
      }

      v772 = 2 * v770;
      v36 = v770 >= 0x40;
      v770 *= 2;
    }

    while (!v36);
  }

  else
  {
    v772 = v770;
  }

  v773 = ((v772 << 7) - 128) >> 8;
  v774 = (v773 + 1) << 8;
  v775 = v772 - (v773 + 1);
  if (v771 >= v774)
  {
    v776 = (v773 + 1) << 8;
  }

  else
  {
    v776 = 0;
  }

  if (v771 < v774)
  {
    v777 = v773 + 1;
  }

  else
  {
    v777 = v775;
  }

  v778 = v771 - v776;
  if (v777 <= 0x7F)
  {
    do
    {
      v778 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v825 = *v26++;
          v778 |= v825;
        }
      }

      v779 = 2 * v777;
      v36 = v777 >= 0x40;
      v777 *= 2;
    }

    while (!v36);
  }

  else
  {
    v779 = v777;
  }

  v780 = ((v779 << 7) - 128) >> 8;
  v781 = (v780 + 1) << 8;
  v782 = v779 - (v780 + 1);
  if (v778 >= v781)
  {
    v783 = (v780 + 1) << 8;
  }

  else
  {
    v783 = 0;
  }

  if (v778 < v781)
  {
    v784 = v780 + 1;
  }

  else
  {
    v784 = v782;
  }

  v785 = v778 - v783;
  if (v784 <= 0x7F)
  {
    do
    {
      v785 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v826 = *v26++;
          v785 |= v826;
        }
      }

      v786 = 2 * v784;
      v36 = v784 >= 0x40;
      v784 *= 2;
    }

    while (!v36);
  }

  else
  {
    v786 = v784;
  }

  v787 = ((v786 << 7) - 128) >> 8;
  v788 = (v787 + 1) << 8;
  v789 = v786 - (v787 + 1);
  if (v785 >= v788)
  {
    v790 = (v787 + 1) << 8;
  }

  else
  {
    v790 = 0;
  }

  if (v785 < v788)
  {
    v791 = v787 + 1;
  }

  else
  {
    v791 = v789;
  }

  v792 = v785 - v790;
  if (v791 <= 0x7F)
  {
    do
    {
      v792 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v827 = *v26++;
          v792 |= v827;
        }
      }

      v793 = 2 * v791;
      v36 = v791 >= 0x40;
      v791 *= 2;
    }

    while (!v36);
  }

  else
  {
    v793 = v791;
  }

  v794 = ((v793 << 7) - 128) >> 8;
  v795 = (v794 + 1) << 8;
  v796 = v793 - (v794 + 1);
  if (v792 >= v795)
  {
    v797 = (v794 + 1) << 8;
  }

  else
  {
    v797 = 0;
  }

  if (v792 < v795)
  {
    v798 = v794 + 1;
  }

  else
  {
    v798 = v796;
  }

  v799 = v792 - v797;
  if (v798 <= 0x7F)
  {
    do
    {
      v799 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v828 = *v26++;
          v799 |= v828;
        }
      }

      v800 = 2 * v798;
      v36 = v798 >= 0x40;
      v798 *= 2;
    }

    while (!v36);
  }

  else
  {
    v800 = v798;
  }

  v801 = ((v800 << 7) - 128) >> 8;
  v802 = (v801 + 1) << 8;
  v803 = v800 - (v801 + 1);
  if (v799 >= v802)
  {
    v804 = (v801 + 1) << 8;
  }

  else
  {
    v804 = 0;
  }

  if (v799 < v802)
  {
    v803 = v801 + 1;
  }

  v805 = v799 - v804;
  if (v803 <= 0x7F)
  {
    do
    {
      v805 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v829 = *v26++;
          v805 |= v829;
        }
      }

      v806 = 2 * v803;
      v36 = v803 >= 0x40;
      v803 *= 2;
    }

    while (!v36);
  }

  else
  {
    v806 = v803;
  }

  v807 = ((v806 << 7) - 128) >> 8;
  v808 = (v807 + 1) << 8;
  v809 = v806 - (v807 + 1);
  if (v805 >= v808)
  {
    v810 = (v807 + 1) << 8;
  }

  else
  {
    v810 = 0;
  }

  if (v805 < v808)
  {
    v811 = v807 + 1;
  }

  else
  {
    v811 = v809;
  }

  v812 = v805 - v810;
  if (v811 <= 0x7F)
  {
    do
    {
      v812 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v830 = *v26++;
          v812 |= v830;
        }
      }

      v813 = 2 * v811;
      v36 = v811 >= 0x40;
      v811 *= 2;
    }

    while (!v36);
  }

  else
  {
    v813 = v811;
  }

  if (v805 >= v808)
  {
    v814 = ((v813 << 7) - 128) >> 8;
    v815 = (v814 + 1) << 8;
    v816 = v813 - (v814 + 1);
    if (v812 >= v815)
    {
      v817 = (v814 + 1) << 8;
    }

    else
    {
      v817 = 0;
    }

    if (v812 < v815)
    {
      v818 = v814 + 1;
    }

    else
    {
      v818 = v816;
    }

    v819 = v812 - v817;
    if (v818 <= 0x7F)
    {
      do
      {
        v819 *= 2;
        if (++v28 == 8)
        {
          v28 = 0;
          if (v26 != v24)
          {
            v831 = *v26++;
            v819 |= v831;
          }
        }

        v813 = 2 * v818;
        v36 = v818 >= 0x40;
        v818 *= 2;
      }

      while (!v36);
    }

    else
    {
      v813 = v818;
    }

    if (v812 >= v815)
    {
      v859 = ((v813 << 7) - 128) >> 8;
      v860 = (v859 + 1) << 8;
      v861 = v813 - (v859 + 1);
      if (v819 >= v860)
      {
        v862 = (v859 + 1) << 8;
      }

      else
      {
        v862 = 0;
      }

      if (v819 < v860)
      {
        v861 = v859 + 1;
      }

      v863 = v819 - v862;
      if (v861 <= 0x7F)
      {
        do
        {
          v863 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1333 = *v26++;
              v863 |= v1333;
            }
          }

          v864 = 2 * v861;
          v36 = v861 >= 0x40;
          v861 *= 2;
        }

        while (!v36);
      }

      else
      {
        v864 = v861;
      }

      if (v819 >= v860)
      {
        v865 = ((v864 << 7) - 128) >> 8;
        v866 = (v865 + 1) << 8;
        if (v863 >= v866)
        {
          v867 = v864 - (v865 + 1);
        }

        else
        {
          v866 = 0;
          v867 = v865 + 1;
        }

        v868 = v863 - v866;
        if (v867 <= 0x7F)
        {
          do
          {
            v868 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1341 = *v26++;
                v868 |= v1341;
              }
            }

            v869 = 2 * v867;
            v36 = v867 >= 0x40;
            v867 *= 2;
          }

          while (!v36);
        }

        else
        {
          v869 = v867;
        }

        v870 = ((v869 << 7) - 128) >> 8;
        v871 = (v870 + 1) << 8;
        v872 = v869 - (v870 + 1);
        if (v868 >= v871)
        {
          v873 = (v870 + 1) << 8;
        }

        else
        {
          v873 = 0;
        }

        if (v868 < v871)
        {
          v874 = v870 + 1;
        }

        else
        {
          v874 = v872;
        }

        v875 = v868 - v873;
        if (v874 <= 0x7F)
        {
          do
          {
            v875 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1342 = *v26++;
                v875 |= v1342;
              }
            }

            v876 = 2 * v874;
            v36 = v874 >= 0x40;
            v874 *= 2;
          }

          while (!v36);
        }

        else
        {
          v876 = v874;
        }

        v877 = ((v876 << 7) - 128) >> 8;
        v878 = (v877 + 1) << 8;
        v879 = v876 - (v877 + 1);
        if (v875 >= v878)
        {
          v880 = (v877 + 1) << 8;
        }

        else
        {
          v880 = 0;
        }

        if (v875 < v878)
        {
          v881 = v877 + 1;
        }

        else
        {
          v881 = v879;
        }

        v882 = v875 - v880;
        if (v881 <= 0x7F)
        {
          do
          {
            v882 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1343 = *v26++;
                v882 |= v1343;
              }
            }

            v883 = 2 * v881;
            v36 = v881 >= 0x40;
            v881 *= 2;
          }

          while (!v36);
        }

        else
        {
          v883 = v881;
        }

        v884 = ((v883 << 7) - 128) >> 8;
        v885 = (v884 + 1) << 8;
        v886 = v883 - (v884 + 1);
        if (v882 >= v885)
        {
          v887 = (v884 + 1) << 8;
        }

        else
        {
          v887 = 0;
        }

        if (v882 < v885)
        {
          v888 = v884 + 1;
        }

        else
        {
          v888 = v886;
        }

        v889 = v882 - v887;
        if (v888 <= 0x7F)
        {
          do
          {
            v889 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1344 = *v26++;
                v889 |= v1344;
              }
            }

            v890 = 2 * v888;
            v36 = v888 >= 0x40;
            v888 *= 2;
          }

          while (!v36);
        }

        else
        {
          v890 = v888;
        }

        v891 = ((v890 << 7) - 128) >> 8;
        v892 = (v891 + 1) << 8;
        v893 = v890 - (v891 + 1);
        if (v889 >= v892)
        {
          v894 = (v891 + 1) << 8;
        }

        else
        {
          v894 = 0;
        }

        if (v889 < v892)
        {
          v895 = v891 + 1;
        }

        else
        {
          v895 = v893;
        }

        v896 = v889 - v894;
        if (v895 <= 0x7F)
        {
          do
          {
            v896 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1345 = *v26++;
                v896 |= v1345;
              }
            }

            v897 = 2 * v895;
            v36 = v895 >= 0x40;
            v895 *= 2;
          }

          while (!v36);
        }

        else
        {
          v897 = v895;
        }

        v898 = ((v897 << 7) - 128) >> 8;
        v899 = (v898 + 1) << 8;
        v900 = v897 - (v898 + 1);
        if (v896 >= v899)
        {
          v901 = (v898 + 1) << 8;
        }

        else
        {
          v901 = 0;
        }

        if (v896 < v899)
        {
          v902 = v898 + 1;
        }

        else
        {
          v902 = v900;
        }

        v903 = v896 - v901;
        if (v902 <= 0x7F)
        {
          do
          {
            v903 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1346 = *v26++;
                v903 |= v1346;
              }
            }

            v904 = 2 * v902;
            v36 = v902 >= 0x40;
            v902 *= 2;
          }

          while (!v36);
        }

        else
        {
          v904 = v902;
        }

        v905 = ((v904 << 7) - 128) >> 8;
        v906 = (v905 + 1) << 8;
        v907 = v904 - (v905 + 1);
        if (v903 >= v906)
        {
          v908 = (v905 + 1) << 8;
        }

        else
        {
          v908 = 0;
        }

        if (v903 < v906)
        {
          v909 = v905 + 1;
        }

        else
        {
          v909 = v907;
        }

        v863 = v903 - v908;
        if (v909 <= 0x7F)
        {
          do
          {
            v863 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1347 = *v26++;
                v863 |= v1347;
              }
            }

            v864 = 2 * v909;
            v36 = v909 >= 0x40;
            v909 *= 2;
          }

          while (!v36);
        }

        else
        {
          v864 = v909;
        }
      }

      v910 = ((v864 << 7) - 128) >> 8;
      v911 = (v910 + 1) << 8;
      v912 = v864 - (v910 + 1);
      if (v863 >= v911)
      {
        v913 = (v910 + 1) << 8;
      }

      else
      {
        v913 = 0;
      }

      if (v863 < v911)
      {
        v912 = v910 + 1;
      }

      v914 = v863 - v913;
      if (v912 <= 0x7F)
      {
        do
        {
          v914 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1334 = *v26++;
              v914 |= v1334;
            }
          }

          v915 = 2 * v912;
          v36 = v912 >= 0x40;
          v912 *= 2;
        }

        while (!v36);
      }

      else
      {
        v915 = v912;
      }

      if (v863 >= v911)
      {
        v916 = ((v915 << 7) - 128) >> 8;
        v917 = (v916 + 1) << 8;
        v918 = v915 - (v916 + 1);
        if (v914 < v917)
        {
          v917 = 0;
          v918 = v916 + 1;
        }

        v919 = v914 - v917;
        if (v918 <= 0x7F)
        {
          do
          {
            v919 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1348 = *v26++;
                v919 |= v1348;
              }
            }

            v920 = 2 * v918;
            v36 = v918 >= 0x40;
            v918 *= 2;
          }

          while (!v36);
        }

        else
        {
          v920 = v918;
        }

        v921 = ((v920 << 7) - 128) >> 8;
        v922 = (v921 + 1) << 8;
        v923 = v920 - (v921 + 1);
        if (v919 >= v922)
        {
          v924 = (v921 + 1) << 8;
        }

        else
        {
          v924 = 0;
        }

        if (v919 < v922)
        {
          v923 = v921 + 1;
        }

        v925 = v919 - v924;
        if (v923 <= 0x7F)
        {
          do
          {
            v925 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1349 = *v26++;
                v925 |= v1349;
              }
            }

            v926 = 2 * v923;
            v36 = v923 >= 0x40;
            v923 *= 2;
          }

          while (!v36);
        }

        else
        {
          v926 = v923;
        }

        v927 = ((v926 << 7) - 128) >> 8;
        v928 = (v927 + 1) << 8;
        v929 = v926 - (v927 + 1);
        if (v925 >= v928)
        {
          v930 = (v927 + 1) << 8;
        }

        else
        {
          v930 = 0;
        }

        if (v925 < v928)
        {
          v931 = v927 + 1;
        }

        else
        {
          v931 = v929;
        }

        v932 = v925 - v930;
        if (v931 <= 0x7F)
        {
          do
          {
            v932 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1350 = *v26++;
                v932 |= v1350;
              }
            }

            v933 = 2 * v931;
            v36 = v931 >= 0x40;
            v931 *= 2;
          }

          while (!v36);
        }

        else
        {
          v933 = v931;
        }

        v934 = ((v933 << 7) - 128) >> 8;
        v935 = (v934 + 1) << 8;
        v936 = v933 - (v934 + 1);
        if (v932 >= v935)
        {
          v937 = (v934 + 1) << 8;
        }

        else
        {
          v937 = 0;
        }

        if (v932 < v935)
        {
          v938 = v934 + 1;
        }

        else
        {
          v938 = v936;
        }

        v939 = v932 - v937;
        if (v938 <= 0x7F)
        {
          do
          {
            v939 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1351 = *v26++;
                v939 |= v1351;
              }
            }

            v940 = 2 * v938;
            v36 = v938 >= 0x40;
            v938 *= 2;
          }

          while (!v36);
        }

        else
        {
          v940 = v938;
        }

        v941 = ((v940 << 7) - 128) >> 8;
        v942 = (v941 + 1) << 8;
        v943 = v940 - (v941 + 1);
        if (v939 >= v942)
        {
          v944 = (v941 + 1) << 8;
        }

        else
        {
          v944 = 0;
        }

        if (v939 < v942)
        {
          v945 = v941 + 1;
        }

        else
        {
          v945 = v943;
        }

        v946 = v939 - v944;
        if (v945 <= 0x7F)
        {
          do
          {
            v946 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1352 = *v26++;
                v946 |= v1352;
              }
            }

            v947 = 2 * v945;
            v36 = v945 >= 0x40;
            v945 *= 2;
          }

          while (!v36);
        }

        else
        {
          v947 = v945;
        }

        v948 = ((v947 << 7) - 128) >> 8;
        v949 = (v948 + 1) << 8;
        v950 = v947 - (v948 + 1);
        if (v946 >= v949)
        {
          v951 = (v948 + 1) << 8;
        }

        else
        {
          v951 = 0;
        }

        if (v946 < v949)
        {
          v952 = v948 + 1;
        }

        else
        {
          v952 = v950;
        }

        v953 = v946 - v951;
        if (v952 <= 0x7F)
        {
          do
          {
            v953 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1353 = *v26++;
                v953 |= v1353;
              }
            }

            v954 = 2 * v952;
            v36 = v952 >= 0x40;
            v952 *= 2;
          }

          while (!v36);
        }

        else
        {
          v954 = v952;
        }

        v955 = ((v954 << 7) - 128) >> 8;
        v956 = (v955 + 1) << 8;
        v957 = v954 - (v955 + 1);
        if (v953 >= v956)
        {
          v958 = (v955 + 1) << 8;
        }

        else
        {
          v958 = 0;
        }

        if (v953 < v956)
        {
          v957 = v955 + 1;
        }

        v914 = v953 - v958;
        if (v957 <= 0x7F)
        {
          do
          {
            v914 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1354 = *v26++;
                v914 |= v1354;
              }
            }

            v915 = 2 * v957;
            v36 = v957 >= 0x40;
            v957 *= 2;
          }

          while (!v36);
        }

        else
        {
          v915 = v957;
        }
      }

      v959 = ((v915 << 7) - 128) >> 8;
      v960 = (v959 + 1) << 8;
      v961 = v915 - (v959 + 1);
      if (v914 >= v960)
      {
        v962 = (v959 + 1) << 8;
      }

      else
      {
        v962 = 0;
      }

      if (v914 < v960)
      {
        v961 = v959 + 1;
      }

      v963 = v914 - v962;
      if (v961 <= 0x7F)
      {
        do
        {
          v963 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1335 = *v26++;
              v963 |= v1335;
            }
          }

          v964 = 2 * v961;
          v36 = v961 >= 0x40;
          v961 *= 2;
        }

        while (!v36);
      }

      else
      {
        v964 = v961;
      }

      if (v914 >= v960)
      {
        v965 = ((v964 << 7) - 128) >> 8;
        v966 = (v965 + 1) << 8;
        if (v963 >= v966)
        {
          v967 = v964 - (v965 + 1);
        }

        else
        {
          v966 = 0;
          v967 = v965 + 1;
        }

        v968 = v963 - v966;
        if (v967 <= 0x7F)
        {
          do
          {
            v968 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1355 = *v26++;
                v968 |= v1355;
              }
            }

            v969 = 2 * v967;
            v36 = v967 >= 0x40;
            v967 *= 2;
          }

          while (!v36);
        }

        else
        {
          v969 = v967;
        }

        v970 = ((v969 << 7) - 128) >> 8;
        v971 = (v970 + 1) << 8;
        v972 = v969 - (v970 + 1);
        if (v968 >= v971)
        {
          v973 = (v970 + 1) << 8;
        }

        else
        {
          v973 = 0;
        }

        if (v968 < v971)
        {
          v974 = v970 + 1;
        }

        else
        {
          v974 = v972;
        }

        v975 = v968 - v973;
        if (v974 <= 0x7F)
        {
          do
          {
            v975 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1356 = *v26++;
                v975 |= v1356;
              }
            }

            v976 = 2 * v974;
            v36 = v974 >= 0x40;
            v974 *= 2;
          }

          while (!v36);
        }

        else
        {
          v976 = v974;
        }

        v977 = ((v976 << 7) - 128) >> 8;
        v978 = (v977 + 1) << 8;
        v979 = v976 - (v977 + 1);
        if (v975 >= v978)
        {
          v980 = (v977 + 1) << 8;
        }

        else
        {
          v980 = 0;
        }

        if (v975 < v978)
        {
          v981 = v977 + 1;
        }

        else
        {
          v981 = v979;
        }

        v982 = v975 - v980;
        if (v981 <= 0x7F)
        {
          do
          {
            v982 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1357 = *v26++;
                v982 |= v1357;
              }
            }

            v983 = 2 * v981;
            v36 = v981 >= 0x40;
            v981 *= 2;
          }

          while (!v36);
        }

        else
        {
          v983 = v981;
        }

        v984 = ((v983 << 7) - 128) >> 8;
        v985 = (v984 + 1) << 8;
        v986 = v983 - (v984 + 1);
        if (v982 >= v985)
        {
          v987 = (v984 + 1) << 8;
        }

        else
        {
          v987 = 0;
        }

        if (v982 < v985)
        {
          v988 = v984 + 1;
        }

        else
        {
          v988 = v986;
        }

        v989 = v982 - v987;
        if (v988 <= 0x7F)
        {
          do
          {
            v989 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1358 = *v26++;
                v989 |= v1358;
              }
            }

            v990 = 2 * v988;
            v36 = v988 >= 0x40;
            v988 *= 2;
          }

          while (!v36);
        }

        else
        {
          v990 = v988;
        }

        v991 = ((v990 << 7) - 128) >> 8;
        v992 = (v991 + 1) << 8;
        v993 = v990 - (v991 + 1);
        if (v989 >= v992)
        {
          v994 = (v991 + 1) << 8;
        }

        else
        {
          v994 = 0;
        }

        if (v989 < v992)
        {
          v995 = v991 + 1;
        }

        else
        {
          v995 = v993;
        }

        v996 = v989 - v994;
        if (v995 <= 0x7F)
        {
          do
          {
            v996 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1359 = *v26++;
                v996 |= v1359;
              }
            }

            v997 = 2 * v995;
            v36 = v995 >= 0x40;
            v995 *= 2;
          }

          while (!v36);
        }

        else
        {
          v997 = v995;
        }

        v998 = ((v997 << 7) - 128) >> 8;
        v999 = (v998 + 1) << 8;
        v1000 = v997 - (v998 + 1);
        if (v996 >= v999)
        {
          v1001 = (v998 + 1) << 8;
        }

        else
        {
          v1001 = 0;
        }

        if (v996 < v999)
        {
          v1002 = v998 + 1;
        }

        else
        {
          v1002 = v1000;
        }

        v1003 = v996 - v1001;
        if (v1002 <= 0x7F)
        {
          do
          {
            v1003 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1360 = *v26++;
                v1003 |= v1360;
              }
            }

            v1004 = 2 * v1002;
            v36 = v1002 >= 0x40;
            v1002 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1004 = v1002;
        }

        v1005 = ((v1004 << 7) - 128) >> 8;
        v1006 = (v1005 + 1) << 8;
        v1007 = v1004 - (v1005 + 1);
        if (v1003 >= v1006)
        {
          v1008 = (v1005 + 1) << 8;
        }

        else
        {
          v1008 = 0;
        }

        if (v1003 < v1006)
        {
          v1009 = v1005 + 1;
        }

        else
        {
          v1009 = v1007;
        }

        v963 = v1003 - v1008;
        if (v1009 <= 0x7F)
        {
          do
          {
            v963 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1361 = *v26++;
                v963 |= v1361;
              }
            }

            v964 = 2 * v1009;
            v36 = v1009 >= 0x40;
            v1009 *= 2;
          }

          while (!v36);
        }

        else
        {
          v964 = v1009;
        }
      }

      v1010 = ((v964 << 7) - 128) >> 8;
      v1011 = (v1010 + 1) << 8;
      v1012 = v964 - (v1010 + 1);
      if (v963 >= v1011)
      {
        v1013 = (v1010 + 1) << 8;
      }

      else
      {
        v1013 = 0;
      }

      if (v963 < v1011)
      {
        v1012 = v1010 + 1;
      }

      v1014 = v963 - v1013;
      if (v1012 <= 0x7F)
      {
        do
        {
          v1014 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1336 = *v26++;
              v1014 |= v1336;
            }
          }

          v1015 = 2 * v1012;
          v36 = v1012 >= 0x40;
          v1012 *= 2;
        }

        while (!v36);
      }

      else
      {
        v1015 = v1012;
      }

      if (v963 >= v1011)
      {
        v1016 = ((v1015 << 7) - 128) >> 8;
        v1017 = (v1016 + 1) << 8;
        v1018 = v1015 - (v1016 + 1);
        if (v1014 < v1017)
        {
          v1017 = 0;
          v1018 = v1016 + 1;
        }

        v1019 = v1014 - v1017;
        if (v1018 <= 0x7F)
        {
          do
          {
            v1019 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1362 = *v26++;
                v1019 |= v1362;
              }
            }

            v1020 = 2 * v1018;
            v36 = v1018 >= 0x40;
            v1018 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1020 = v1018;
        }

        v1021 = ((v1020 << 7) - 128) >> 8;
        v1022 = (v1021 + 1) << 8;
        v1023 = v1020 - (v1021 + 1);
        if (v1019 >= v1022)
        {
          v1024 = (v1021 + 1) << 8;
        }

        else
        {
          v1024 = 0;
        }

        if (v1019 < v1022)
        {
          v1023 = v1021 + 1;
        }

        v1025 = v1019 - v1024;
        if (v1023 <= 0x7F)
        {
          do
          {
            v1025 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1363 = *v26++;
                v1025 |= v1363;
              }
            }

            v1026 = 2 * v1023;
            v36 = v1023 >= 0x40;
            v1023 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1026 = v1023;
        }

        v1027 = ((v1026 << 7) - 128) >> 8;
        v1028 = (v1027 + 1) << 8;
        v1029 = v1026 - (v1027 + 1);
        if (v1025 >= v1028)
        {
          v1030 = (v1027 + 1) << 8;
        }

        else
        {
          v1030 = 0;
        }

        if (v1025 < v1028)
        {
          v1031 = v1027 + 1;
        }

        else
        {
          v1031 = v1029;
        }

        v1032 = v1025 - v1030;
        if (v1031 <= 0x7F)
        {
          do
          {
            v1032 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1364 = *v26++;
                v1032 |= v1364;
              }
            }

            v1033 = 2 * v1031;
            v36 = v1031 >= 0x40;
            v1031 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1033 = v1031;
        }

        v1034 = ((v1033 << 7) - 128) >> 8;
        v1035 = (v1034 + 1) << 8;
        v1036 = v1033 - (v1034 + 1);
        if (v1032 >= v1035)
        {
          v1037 = (v1034 + 1) << 8;
        }

        else
        {
          v1037 = 0;
        }

        if (v1032 < v1035)
        {
          v1038 = v1034 + 1;
        }

        else
        {
          v1038 = v1036;
        }

        v1039 = v1032 - v1037;
        if (v1038 <= 0x7F)
        {
          do
          {
            v1039 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1365 = *v26++;
                v1039 |= v1365;
              }
            }

            v1040 = 2 * v1038;
            v36 = v1038 >= 0x40;
            v1038 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1040 = v1038;
        }

        v1041 = ((v1040 << 7) - 128) >> 8;
        v1042 = (v1041 + 1) << 8;
        v1043 = v1040 - (v1041 + 1);
        if (v1039 >= v1042)
        {
          v1044 = (v1041 + 1) << 8;
        }

        else
        {
          v1044 = 0;
        }

        if (v1039 < v1042)
        {
          v1045 = v1041 + 1;
        }

        else
        {
          v1045 = v1043;
        }

        v1046 = v1039 - v1044;
        if (v1045 <= 0x7F)
        {
          do
          {
            v1046 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1366 = *v26++;
                v1046 |= v1366;
              }
            }

            v1047 = 2 * v1045;
            v36 = v1045 >= 0x40;
            v1045 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1047 = v1045;
        }

        v1048 = ((v1047 << 7) - 128) >> 8;
        v1049 = (v1048 + 1) << 8;
        v1050 = v1047 - (v1048 + 1);
        if (v1046 >= v1049)
        {
          v1051 = (v1048 + 1) << 8;
        }

        else
        {
          v1051 = 0;
        }

        if (v1046 < v1049)
        {
          v1052 = v1048 + 1;
        }

        else
        {
          v1052 = v1050;
        }

        v1053 = v1046 - v1051;
        if (v1052 <= 0x7F)
        {
          do
          {
            v1053 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1367 = *v26++;
                v1053 |= v1367;
              }
            }

            v1054 = 2 * v1052;
            v36 = v1052 >= 0x40;
            v1052 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1054 = v1052;
        }

        v1055 = ((v1054 << 7) - 128) >> 8;
        v1056 = (v1055 + 1) << 8;
        v1057 = v1054 - (v1055 + 1);
        if (v1053 >= v1056)
        {
          v1058 = (v1055 + 1) << 8;
        }

        else
        {
          v1058 = 0;
        }

        if (v1053 < v1056)
        {
          v1057 = v1055 + 1;
        }

        v1014 = v1053 - v1058;
        if (v1057 <= 0x7F)
        {
          do
          {
            v1014 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1368 = *v26++;
                v1014 |= v1368;
              }
            }

            v1015 = 2 * v1057;
            v36 = v1057 >= 0x40;
            v1057 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1015 = v1057;
        }
      }

      v1059 = ((v1015 << 7) - 128) >> 8;
      v1060 = (v1059 + 1) << 8;
      v1061 = v1015 - (v1059 + 1);
      if (v1014 >= v1060)
      {
        v1062 = (v1059 + 1) << 8;
      }

      else
      {
        v1062 = 0;
      }

      if (v1014 < v1060)
      {
        v1061 = v1059 + 1;
      }

      v1063 = v1014 - v1062;
      if (v1061 <= 0x7F)
      {
        do
        {
          v1063 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1337 = *v26++;
              v1063 |= v1337;
            }
          }

          v1064 = 2 * v1061;
          v36 = v1061 >= 0x40;
          v1061 *= 2;
        }

        while (!v36);
      }

      else
      {
        v1064 = v1061;
      }

      if (v1014 >= v1060)
      {
        v1065 = ((v1064 << 7) - 128) >> 8;
        v1066 = (v1065 + 1) << 8;
        if (v1063 >= v1066)
        {
          v1067 = v1064 - (v1065 + 1);
        }

        else
        {
          v1066 = 0;
          v1067 = v1065 + 1;
        }

        v1068 = v1063 - v1066;
        if (v1067 <= 0x7F)
        {
          do
          {
            v1068 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1369 = *v26++;
                v1068 |= v1369;
              }
            }

            v1069 = 2 * v1067;
            v36 = v1067 >= 0x40;
            v1067 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1069 = v1067;
        }

        v1070 = ((v1069 << 7) - 128) >> 8;
        v1071 = (v1070 + 1) << 8;
        v1072 = v1069 - (v1070 + 1);
        if (v1068 >= v1071)
        {
          v1073 = (v1070 + 1) << 8;
        }

        else
        {
          v1073 = 0;
        }

        if (v1068 < v1071)
        {
          v1074 = v1070 + 1;
        }

        else
        {
          v1074 = v1072;
        }

        v1075 = v1068 - v1073;
        if (v1074 <= 0x7F)
        {
          do
          {
            v1075 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1370 = *v26++;
                v1075 |= v1370;
              }
            }

            v1076 = 2 * v1074;
            v36 = v1074 >= 0x40;
            v1074 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1076 = v1074;
        }

        v1077 = ((v1076 << 7) - 128) >> 8;
        v1078 = (v1077 + 1) << 8;
        v1079 = v1076 - (v1077 + 1);
        if (v1075 >= v1078)
        {
          v1080 = (v1077 + 1) << 8;
        }

        else
        {
          v1080 = 0;
        }

        if (v1075 < v1078)
        {
          v1081 = v1077 + 1;
        }

        else
        {
          v1081 = v1079;
        }

        v1082 = v1075 - v1080;
        if (v1081 <= 0x7F)
        {
          do
          {
            v1082 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1371 = *v26++;
                v1082 |= v1371;
              }
            }

            v1083 = 2 * v1081;
            v36 = v1081 >= 0x40;
            v1081 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1083 = v1081;
        }

        v1084 = ((v1083 << 7) - 128) >> 8;
        v1085 = (v1084 + 1) << 8;
        v1086 = v1083 - (v1084 + 1);
        if (v1082 >= v1085)
        {
          v1087 = (v1084 + 1) << 8;
        }

        else
        {
          v1087 = 0;
        }

        if (v1082 < v1085)
        {
          v1088 = v1084 + 1;
        }

        else
        {
          v1088 = v1086;
        }

        v1089 = v1082 - v1087;
        if (v1088 <= 0x7F)
        {
          do
          {
            v1089 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1372 = *v26++;
                v1089 |= v1372;
              }
            }

            v1090 = 2 * v1088;
            v36 = v1088 >= 0x40;
            v1088 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1090 = v1088;
        }

        v1091 = ((v1090 << 7) - 128) >> 8;
        v1092 = (v1091 + 1) << 8;
        v1093 = v1090 - (v1091 + 1);
        if (v1089 >= v1092)
        {
          v1094 = (v1091 + 1) << 8;
        }

        else
        {
          v1094 = 0;
        }

        if (v1089 < v1092)
        {
          v1095 = v1091 + 1;
        }

        else
        {
          v1095 = v1093;
        }

        v1096 = v1089 - v1094;
        if (v1095 <= 0x7F)
        {
          do
          {
            v1096 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1373 = *v26++;
                v1096 |= v1373;
              }
            }

            v1097 = 2 * v1095;
            v36 = v1095 >= 0x40;
            v1095 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1097 = v1095;
        }

        v1098 = ((v1097 << 7) - 128) >> 8;
        v1099 = (v1098 + 1) << 8;
        v1100 = v1097 - (v1098 + 1);
        if (v1096 >= v1099)
        {
          v1101 = (v1098 + 1) << 8;
        }

        else
        {
          v1101 = 0;
        }

        if (v1096 < v1099)
        {
          v1102 = v1098 + 1;
        }

        else
        {
          v1102 = v1100;
        }

        v1103 = v1096 - v1101;
        if (v1102 <= 0x7F)
        {
          do
          {
            v1103 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1374 = *v26++;
                v1103 |= v1374;
              }
            }

            v1104 = 2 * v1102;
            v36 = v1102 >= 0x40;
            v1102 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1104 = v1102;
        }

        v1105 = ((v1104 << 7) - 128) >> 8;
        v1106 = (v1105 + 1) << 8;
        v1107 = v1104 - (v1105 + 1);
        if (v1103 >= v1106)
        {
          v1108 = (v1105 + 1) << 8;
        }

        else
        {
          v1108 = 0;
        }

        if (v1103 < v1106)
        {
          v1109 = v1105 + 1;
        }

        else
        {
          v1109 = v1107;
        }

        v1063 = v1103 - v1108;
        if (v1109 <= 0x7F)
        {
          do
          {
            v1063 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1375 = *v26++;
                v1063 |= v1375;
              }
            }

            v1064 = 2 * v1109;
            v36 = v1109 >= 0x40;
            v1109 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1064 = v1109;
        }
      }

      v1110 = ((v1064 << 7) - 128) >> 8;
      v1111 = (v1110 + 1) << 8;
      v1112 = v1064 - (v1110 + 1);
      if (v1063 >= v1111)
      {
        v1113 = (v1110 + 1) << 8;
      }

      else
      {
        v1113 = 0;
      }

      if (v1063 < v1111)
      {
        v1112 = v1110 + 1;
      }

      v1114 = v1063 - v1113;
      if (v1112 <= 0x7F)
      {
        do
        {
          v1114 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1338 = *v26++;
              v1114 |= v1338;
            }
          }

          v1115 = 2 * v1112;
          v36 = v1112 >= 0x40;
          v1112 *= 2;
        }

        while (!v36);
      }

      else
      {
        v1115 = v1112;
      }

      if (v1063 >= v1111)
      {
        v1116 = ((v1115 << 7) - 128) >> 8;
        v1117 = (v1116 + 1) << 8;
        v1118 = v1115 - (v1116 + 1);
        if (v1114 < v1117)
        {
          v1117 = 0;
          v1118 = v1116 + 1;
        }

        v1119 = v1114 - v1117;
        if (v1118 <= 0x7F)
        {
          do
          {
            v1119 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1376 = *v26++;
                v1119 |= v1376;
              }
            }

            v1120 = 2 * v1118;
            v36 = v1118 >= 0x40;
            v1118 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1120 = v1118;
        }

        v1121 = ((v1120 << 7) - 128) >> 8;
        v1122 = (v1121 + 1) << 8;
        v1123 = v1120 - (v1121 + 1);
        if (v1119 >= v1122)
        {
          v1124 = (v1121 + 1) << 8;
        }

        else
        {
          v1124 = 0;
        }

        if (v1119 < v1122)
        {
          v1123 = v1121 + 1;
        }

        v1125 = v1119 - v1124;
        if (v1123 <= 0x7F)
        {
          do
          {
            v1125 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1377 = *v26++;
                v1125 |= v1377;
              }
            }

            v1126 = 2 * v1123;
            v36 = v1123 >= 0x40;
            v1123 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1126 = v1123;
        }

        v1127 = ((v1126 << 7) - 128) >> 8;
        v1128 = (v1127 + 1) << 8;
        v1129 = v1126 - (v1127 + 1);
        if (v1125 >= v1128)
        {
          v1130 = (v1127 + 1) << 8;
        }

        else
        {
          v1130 = 0;
        }

        if (v1125 < v1128)
        {
          v1131 = v1127 + 1;
        }

        else
        {
          v1131 = v1129;
        }

        v1132 = v1125 - v1130;
        if (v1131 <= 0x7F)
        {
          do
          {
            v1132 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1378 = *v26++;
                v1132 |= v1378;
              }
            }

            v1133 = 2 * v1131;
            v36 = v1131 >= 0x40;
            v1131 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1133 = v1131;
        }

        v1134 = ((v1133 << 7) - 128) >> 8;
        v1135 = (v1134 + 1) << 8;
        v1136 = v1133 - (v1134 + 1);
        if (v1132 >= v1135)
        {
          v1137 = (v1134 + 1) << 8;
        }

        else
        {
          v1137 = 0;
        }

        if (v1132 < v1135)
        {
          v1138 = v1134 + 1;
        }

        else
        {
          v1138 = v1136;
        }

        v1139 = v1132 - v1137;
        if (v1138 <= 0x7F)
        {
          do
          {
            v1139 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1379 = *v26++;
                v1139 |= v1379;
              }
            }

            v1140 = 2 * v1138;
            v36 = v1138 >= 0x40;
            v1138 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1140 = v1138;
        }

        v1141 = ((v1140 << 7) - 128) >> 8;
        v1142 = (v1141 + 1) << 8;
        v1143 = v1140 - (v1141 + 1);
        if (v1139 >= v1142)
        {
          v1144 = (v1141 + 1) << 8;
        }

        else
        {
          v1144 = 0;
        }

        if (v1139 < v1142)
        {
          v1145 = v1141 + 1;
        }

        else
        {
          v1145 = v1143;
        }

        v1146 = v1139 - v1144;
        if (v1145 <= 0x7F)
        {
          do
          {
            v1146 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1380 = *v26++;
                v1146 |= v1380;
              }
            }

            v1147 = 2 * v1145;
            v36 = v1145 >= 0x40;
            v1145 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1147 = v1145;
        }

        v1148 = ((v1147 << 7) - 128) >> 8;
        v1149 = (v1148 + 1) << 8;
        v1150 = v1147 - (v1148 + 1);
        if (v1146 >= v1149)
        {
          v1151 = (v1148 + 1) << 8;
        }

        else
        {
          v1151 = 0;
        }

        if (v1146 < v1149)
        {
          v1152 = v1148 + 1;
        }

        else
        {
          v1152 = v1150;
        }

        v1153 = v1146 - v1151;
        if (v1152 <= 0x7F)
        {
          do
          {
            v1153 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1381 = *v26++;
                v1153 |= v1381;
              }
            }

            v1154 = 2 * v1152;
            v36 = v1152 >= 0x40;
            v1152 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1154 = v1152;
        }

        v1155 = ((v1154 << 7) - 128) >> 8;
        v1156 = (v1155 + 1) << 8;
        v1157 = v1154 - (v1155 + 1);
        if (v1153 >= v1156)
        {
          v1158 = (v1155 + 1) << 8;
        }

        else
        {
          v1158 = 0;
        }

        if (v1153 < v1156)
        {
          v1157 = v1155 + 1;
        }

        v1114 = v1153 - v1158;
        if (v1157 <= 0x7F)
        {
          do
          {
            v1114 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1382 = *v26++;
                v1114 |= v1382;
              }
            }

            v1115 = 2 * v1157;
            v36 = v1157 >= 0x40;
            v1157 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1115 = v1157;
        }
      }

      v1159 = ((v1115 << 7) - 128) >> 8;
      v1160 = (v1159 + 1) << 8;
      v1161 = v1115 - (v1159 + 1);
      if (v1114 >= v1160)
      {
        v1162 = (v1159 + 1) << 8;
      }

      else
      {
        v1162 = 0;
      }

      if (v1114 < v1160)
      {
        v1161 = v1159 + 1;
      }

      v1163 = v1114 - v1162;
      if (v1161 <= 0x7F)
      {
        do
        {
          v1163 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1339 = *v26++;
              v1163 |= v1339;
            }
          }

          v1164 = 2 * v1161;
          v36 = v1161 >= 0x40;
          v1161 *= 2;
        }

        while (!v36);
      }

      else
      {
        v1164 = v1161;
      }

      if (v1114 >= v1160)
      {
        v1165 = ((v1164 << 7) - 128) >> 8;
        v1166 = (v1165 + 1) << 8;
        v1167 = v1164 - (v1165 + 1);
        if (v1163 < v1166)
        {
          v1166 = 0;
          v1167 = v1165 + 1;
        }

        v1168 = v1163 - v1166;
        if (v1167 <= 0x7F)
        {
          do
          {
            v1168 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1383 = *v26++;
                v1168 |= v1383;
              }
            }

            v1169 = 2 * v1167;
            v36 = v1167 >= 0x40;
            v1167 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1169 = v1167;
        }

        v1170 = ((v1169 << 7) - 128) >> 8;
        v1171 = (v1170 + 1) << 8;
        v1172 = v1169 - (v1170 + 1);
        if (v1168 >= v1171)
        {
          v1173 = (v1170 + 1) << 8;
        }

        else
        {
          v1173 = 0;
        }

        if (v1168 < v1171)
        {
          v1174 = v1170 + 1;
        }

        else
        {
          v1174 = v1172;
        }

        v1175 = v1168 - v1173;
        if (v1174 <= 0x7F)
        {
          do
          {
            v1175 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1384 = *v26++;
                v1175 |= v1384;
              }
            }

            v1176 = 2 * v1174;
            v36 = v1174 >= 0x40;
            v1174 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1176 = v1174;
        }

        v1177 = ((v1176 << 7) - 128) >> 8;
        v1178 = (v1177 + 1) << 8;
        v1179 = v1176 - (v1177 + 1);
        if (v1175 >= v1178)
        {
          v1180 = (v1177 + 1) << 8;
        }

        else
        {
          v1180 = 0;
        }

        if (v1175 < v1178)
        {
          v1181 = v1177 + 1;
        }

        else
        {
          v1181 = v1179;
        }

        v1182 = v1175 - v1180;
        if (v1181 <= 0x7F)
        {
          do
          {
            v1182 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1385 = *v26++;
                v1182 |= v1385;
              }
            }

            v1183 = 2 * v1181;
            v36 = v1181 >= 0x40;
            v1181 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1183 = v1181;
        }

        v1184 = ((v1183 << 7) - 128) >> 8;
        v1185 = (v1184 + 1) << 8;
        v1186 = v1183 - (v1184 + 1);
        if (v1182 >= v1185)
        {
          v1187 = (v1184 + 1) << 8;
        }

        else
        {
          v1187 = 0;
        }

        if (v1182 < v1185)
        {
          v1188 = v1184 + 1;
        }

        else
        {
          v1188 = v1186;
        }

        v1189 = v1182 - v1187;
        if (v1188 <= 0x7F)
        {
          do
          {
            v1189 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1386 = *v26++;
                v1189 |= v1386;
              }
            }

            v1190 = 2 * v1188;
            v36 = v1188 >= 0x40;
            v1188 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1190 = v1188;
        }

        v1191 = ((v1190 << 7) - 128) >> 8;
        v1192 = (v1191 + 1) << 8;
        v1193 = v1190 - (v1191 + 1);
        if (v1189 >= v1192)
        {
          v1194 = (v1191 + 1) << 8;
        }

        else
        {
          v1194 = 0;
        }

        if (v1189 < v1192)
        {
          v1195 = v1191 + 1;
        }

        else
        {
          v1195 = v1193;
        }

        v1196 = v1189 - v1194;
        if (v1195 <= 0x7F)
        {
          do
          {
            v1196 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1387 = *v26++;
                v1196 |= v1387;
              }
            }

            v1197 = 2 * v1195;
            v36 = v1195 >= 0x40;
            v1195 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1197 = v1195;
        }

        v1198 = ((v1197 << 7) - 128) >> 8;
        v1199 = (v1198 + 1) << 8;
        v1200 = v1197 - (v1198 + 1);
        if (v1196 >= v1199)
        {
          v1201 = (v1198 + 1) << 8;
        }

        else
        {
          v1201 = 0;
        }

        if (v1196 < v1199)
        {
          v1202 = v1198 + 1;
        }

        else
        {
          v1202 = v1200;
        }

        v1203 = v1196 - v1201;
        if (v1202 <= 0x7F)
        {
          do
          {
            v1203 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1388 = *v26++;
                v1203 |= v1388;
              }
            }

            v1204 = 2 * v1202;
            v36 = v1202 >= 0x40;
            v1202 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1204 = v1202;
        }

        v1205 = ((v1204 << 7) - 128) >> 8;
        v1206 = (v1205 + 1) << 8;
        v1207 = v1204 - (v1205 + 1);
        if (v1203 >= v1206)
        {
          v1208 = (v1205 + 1) << 8;
        }

        else
        {
          v1208 = 0;
        }

        if (v1203 < v1206)
        {
          v1209 = v1205 + 1;
        }

        else
        {
          v1209 = v1207;
        }

        v1163 = v1203 - v1208;
        if (v1209 <= 0x7F)
        {
          do
          {
            v1163 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1389 = *v26++;
                v1163 |= v1389;
              }
            }

            v1164 = 2 * v1209;
            v36 = v1209 >= 0x40;
            v1209 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1164 = v1209;
        }
      }

      v1210 = ((v1164 << 7) - 128) >> 8;
      v1211 = (v1210 + 1) << 8;
      if (v1163 >= v1211)
      {
        v1212 = (v1210 + 1) << 8;
      }

      else
      {
        v1212 = 0;
      }

      if (v1163 < v1211)
      {
        v1213 = v1210 + 1;
      }

      else
      {
        v1213 = v1164 - (v1210 + 1);
      }

      v812 = v1163 - v1212;
      if (v1213 <= 0x7F)
      {
        do
        {
          v812 *= 2;
          if (++v28 == 8)
          {
            v28 = 0;
            if (v26 != v24)
            {
              v1340 = *v26++;
              v812 |= v1340;
            }
          }

          v813 = 2 * v1213;
          v36 = v1213 >= 0x40;
          v1213 *= 2;
        }

        while (!v36);
      }

      else
      {
        v813 = v1213;
      }

      if (v1163 >= v1211)
      {
        v1214 = ((v813 << 7) - 128) >> 8;
        v1215 = (v1214 + 1) << 8;
        v1216 = v813 - (v1214 + 1);
        if (v812 >= v1215)
        {
          v1217 = (v1214 + 1) << 8;
        }

        else
        {
          v1217 = 0;
        }

        if (v812 < v1215)
        {
          v1218 = v1214 + 1;
        }

        else
        {
          v1218 = v1216;
        }

        v1219 = v812 - v1217;
        if (v1218 <= 0x7F)
        {
          do
          {
            v1219 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1390 = *v26++;
                v1219 |= v1390;
              }
            }

            v1220 = 2 * v1218;
            v36 = v1218 >= 0x40;
            v1218 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1220 = v1218;
        }

        v1221 = ((v1220 << 7) - 128) >> 8;
        v1222 = (v1221 + 1) << 8;
        v1223 = v1220 - (v1221 + 1);
        if (v1219 >= v1222)
        {
          v1224 = (v1221 + 1) << 8;
        }

        else
        {
          v1224 = 0;
        }

        if (v1219 < v1222)
        {
          v1225 = v1221 + 1;
        }

        else
        {
          v1225 = v1223;
        }

        v1226 = v1219 - v1224;
        if (v1225 <= 0x7F)
        {
          do
          {
            v1226 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1391 = *v26++;
                v1226 |= v1391;
              }
            }

            v1227 = 2 * v1225;
            v36 = v1225 >= 0x40;
            v1225 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1227 = v1225;
        }

        v1228 = ((v1227 << 7) - 128) >> 8;
        v1229 = (v1228 + 1) << 8;
        v1230 = v1227 - (v1228 + 1);
        if (v1226 >= v1229)
        {
          v1231 = (v1228 + 1) << 8;
        }

        else
        {
          v1231 = 0;
        }

        if (v1226 < v1229)
        {
          v1232 = v1228 + 1;
        }

        else
        {
          v1232 = v1230;
        }

        v1233 = v1226 - v1231;
        if (v1232 <= 0x7F)
        {
          do
          {
            v1233 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1392 = *v26++;
                v1233 |= v1392;
              }
            }

            v1234 = 2 * v1232;
            v36 = v1232 >= 0x40;
            v1232 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1234 = v1232;
        }

        v1235 = ((v1234 << 7) - 128) >> 8;
        v1236 = (v1235 + 1) << 8;
        v1237 = v1234 - (v1235 + 1);
        if (v1233 >= v1236)
        {
          v1238 = (v1235 + 1) << 8;
        }

        else
        {
          v1238 = 0;
        }

        if (v1233 < v1236)
        {
          v1239 = v1235 + 1;
        }

        else
        {
          v1239 = v1237;
        }

        v1240 = v1233 - v1238;
        if (v1239 <= 0x7F)
        {
          do
          {
            v1240 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1393 = *v26++;
                v1240 |= v1393;
              }
            }

            v1241 = 2 * v1239;
            v36 = v1239 >= 0x40;
            v1239 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1241 = v1239;
        }

        v1242 = ((v1241 << 7) - 128) >> 8;
        v1243 = (v1242 + 1) << 8;
        v1244 = v1241 - (v1242 + 1);
        if (v1240 >= v1243)
        {
          v1245 = (v1242 + 1) << 8;
        }

        else
        {
          v1245 = 0;
        }

        if (v1240 < v1243)
        {
          v1246 = v1242 + 1;
        }

        else
        {
          v1246 = v1244;
        }

        v1247 = v1240 - v1245;
        if (v1246 <= 0x7F)
        {
          do
          {
            v1247 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1394 = *v26++;
                v1247 |= v1394;
              }
            }

            v1248 = 2 * v1246;
            v36 = v1246 >= 0x40;
            v1246 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1248 = v1246;
        }

        v1249 = ((v1248 << 7) - 128) >> 8;
        v1250 = (v1249 + 1) << 8;
        v1251 = v1248 - (v1249 + 1);
        if (v1247 >= v1250)
        {
          v1252 = (v1249 + 1) << 8;
        }

        else
        {
          v1252 = 0;
        }

        if (v1247 < v1250)
        {
          v1253 = v1249 + 1;
        }

        else
        {
          v1253 = v1251;
        }

        v1254 = v1247 - v1252;
        if (v1253 <= 0x7F)
        {
          do
          {
            v1254 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1395 = *v26++;
                v1254 |= v1395;
              }
            }

            v1255 = 2 * v1253;
            v36 = v1253 >= 0x40;
            v1253 *= 2;
          }

          while (!v36);
        }

        else
        {
          v1255 = v1253;
        }

        v1256 = ((v1255 << 7) - 128) >> 8;
        v1257 = (v1256 + 1) << 8;
        v1258 = v1255 - (v1256 + 1);
        if (v1254 >= v1257)
        {
          v1259 = (v1256 + 1) << 8;
        }

        else
        {
          v1259 = 0;
        }

        if (v1254 < v1257)
        {
          v1260 = v1256 + 1;
        }

        else
        {
          v1260 = v1258;
        }

        v812 = v1254 - v1259;
        if (v1260 <= 0x7F)
        {
          do
          {
            v812 *= 2;
            if (++v28 == 8)
            {
              v28 = 0;
              if (v26 != v24)
              {
                v1396 = *v26++;
                v812 |= v1396;
              }
            }

            v813 = 2 * v1260;
            v36 = v1260 >= 0x40;
            v1260 *= 2;
          }

          while (!v36);
        }

        else
        {
          v813 = v1260;
        }
      }
    }

    else
    {
      v812 = v819;
    }
  }

  v1261 = ((v813 << 7) - 128) >> 8;
  v1262 = (v1261 + 1) << 8;
  v1263 = v813 - (v1261 + 1);
  if (v812 >= v1262)
  {
    v1264 = (v1261 + 1) << 8;
  }

  else
  {
    v1264 = 0;
  }

  if (v812 < v1262)
  {
    v1265 = v1261 + 1;
  }

  else
  {
    v1265 = v1263;
  }

  v1266 = v812 - v1264;
  if (v1265 <= 0x7F)
  {
    do
    {
      v1266 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1325 = *v26++;
          v1266 |= v1325;
        }
      }

      v1267 = 2 * v1265;
      v36 = v1265 >= 0x40;
      v1265 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1267 = v1265;
  }

  v1268 = ((v1267 << 7) - 128) >> 8;
  v1269 = (v1268 + 1) << 8;
  v1270 = v1267 - (v1268 + 1);
  if (v1266 >= v1269)
  {
    v1271 = (v1268 + 1) << 8;
  }

  else
  {
    v1271 = 0;
  }

  if (v1266 < v1269)
  {
    v1272 = v1268 + 1;
  }

  else
  {
    v1272 = v1270;
  }

  v1273 = v1266 - v1271;
  if (v1272 <= 0x7F)
  {
    do
    {
      v1273 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1326 = *v26++;
          v1273 |= v1326;
        }
      }

      v1274 = 2 * v1272;
      v36 = v1272 >= 0x40;
      v1272 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1274 = v1272;
  }

  v1275 = ((v1274 << 7) - 128) >> 8;
  v1276 = (v1275 + 1) << 8;
  v1277 = v1274 - (v1275 + 1);
  if (v1273 >= v1276)
  {
    v1278 = (v1275 + 1) << 8;
  }

  else
  {
    v1278 = 0;
  }

  if (v1273 < v1276)
  {
    v1279 = v1275 + 1;
  }

  else
  {
    v1279 = v1277;
  }

  v1280 = v1273 - v1278;
  if (v1279 <= 0x7F)
  {
    do
    {
      v1280 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1327 = *v26++;
          v1280 |= v1327;
        }
      }

      v1281 = 2 * v1279;
      v36 = v1279 >= 0x40;
      v1279 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1281 = v1279;
  }

  v1282 = v1273 >= v1276;
  v1283 = ((v1281 << 7) - 128) >> 8;
  v1284 = (v1283 + 1) << 8;
  v1285 = v1281 - (v1283 + 1);
  v1286 = v1280 >= v1284;
  if (v1280 >= v1284)
  {
    v1287 = v1285;
  }

  else
  {
    v1284 = 0;
    v1287 = v1283 + 1;
  }

  v1288 = v1280 - v1284;
  if (v1287 <= 0x7F)
  {
    do
    {
      v1288 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1328 = *v26++;
          v1288 |= v1328;
        }
      }

      v1289 = 2 * v1287;
      v36 = v1287 >= 0x40;
      v1287 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1289 = v1287;
  }

  v1290 = ((v1289 << 7) - 128) >> 8;
  v1291 = (v1290 + 1) << 8;
  v1292 = v1289 - (v1290 + 1);
  if (v1288 >= v1291)
  {
    v1293 = (v1290 + 1) << 8;
  }

  else
  {
    v1293 = 0;
  }

  if (v1288 < v1291)
  {
    v1294 = v1290 + 1;
  }

  else
  {
    v1294 = v1292;
  }

  v1295 = v1288 - v1293;
  if (v1294 <= 0x7F)
  {
    do
    {
      v1295 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1329 = *v26++;
          v1295 |= v1329;
        }
      }

      v1296 = 2 * v1294;
      v36 = v1294 >= 0x40;
      v1294 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1296 = v1294;
  }

  v1297 = v1288 >= v1291;
  v1298 = ((v1296 << 7) - 128) >> 8;
  v1299 = (v1298 + 1) << 8;
  v1300 = v1296 - (v1298 + 1);
  v1301 = v1295 >= v1299;
  if (v1295 >= v1299)
  {
    v1302 = v1300;
  }

  else
  {
    v1299 = 0;
    v1302 = v1298 + 1;
  }

  v1303 = v1295 - v1299;
  if (v1302 <= 0x7F)
  {
    do
    {
      v1303 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1330 = *v26++;
          v1303 |= v1330;
        }
      }

      v1304 = 2 * v1302;
      v36 = v1302 >= 0x40;
      v1302 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1304 = v1302;
  }

  v1305 = ((v1304 << 7) - 128) >> 8;
  v1306 = (v1305 + 1) << 8;
  v1307 = v1304 - (v1305 + 1);
  if (v1303 >= v1306)
  {
    v1308 = (v1305 + 1) << 8;
  }

  else
  {
    v1308 = 0;
  }

  if (v1303 < v1306)
  {
    v1309 = v1305 + 1;
  }

  else
  {
    v1309 = v1307;
  }

  v1310 = v1303 - v1308;
  if (v1309 <= 0x7F)
  {
    do
    {
      v1310 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1331 = *v26++;
          v1310 |= v1331;
        }
      }

      v1311 = 2 * v1309;
      v36 = v1309 >= 0x40;
      v1309 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1311 = v1309;
  }

  v1312 = v1303 >= v1306;
  v1313 = ((v1311 << 7) - 128) >> 8;
  v1314 = (v1313 + 1) << 8;
  v1315 = v1311 - (v1313 + 1);
  v1316 = v1310 >= v1314;
  if (v1310 >= v1314)
  {
    v1317 = v1315;
  }

  else
  {
    v1314 = 0;
    v1317 = v1313 + 1;
  }

  v1318 = v1310 - v1314;
  if (v1317 <= 0x7F)
  {
    do
    {
      v1318 *= 2;
      if (++v28 == 8)
      {
        v28 = 0;
        if (v26 != v24)
        {
          v1332 = *v26++;
          v1318 |= v1332;
        }
      }

      v1319 = 2 * v1317;
      v36 = v1317 >= 0x40;
      v1317 *= 2;
    }

    while (!v36);
  }

  else
  {
    v1319 = v1317;
  }

  v1320 = ((v1319 << 7) - 128) >> 8;
  v1321 = v1319 - (v1320 + 1);
  v36 = v1318 >= (v1320 + 1) << 8;
  v1322 = v36;
  if (v36)
  {
    v1323 = v1321;
  }

  else
  {
    v1323 = v1320 + 1;
  }

  if (v1323 <= 0x7F)
  {
    do
    {
      LODWORD(v1324) = v28 == 7;
      if (v28 == 7)
      {
        v28 = 0;
      }

      else
      {
        ++v28;
      }

      if (v26 == v24)
      {
        v1324 = 0;
      }

      else
      {
        v1324 = v1324;
      }

      v26 += v1324;
      v36 = v1323 >= 0x40;
      v1323 *= 2;
    }

    while (!v36);
  }

  if (v26 == v24)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_10:
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/vp8_header_parser.cc");
      return 0;
    }

    return 0;
  }

  else
  {
    *a3 = (2 * ((4 * ((4 * ((2 * v1282) | v1286)) | (2 * v1297) | v1301)) | (2 * v1312) | v1316)) | v1322;
    return 1;
  }
}