void VPStrategyManager::CheckRequiredState(unint64_t **this, uint64_t a2)
{
  v2 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this[25]);
  if ((v3 & a2) == 0)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v13 = *VPStrategyMgrScope(void)::scope;
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    v5 = v13;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    VPStrategyManager::StateAsString(v22, v3);
    v15 = v23;
    v16 = v22[0];
    VPStrategyManager::StateAsString(__p, v2);
    v17 = v22;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315906;
    v25 = "vpStrategyManager.h";
    v26 = 1024;
    v27 = 154;
    v28 = 2080;
    v29 = v17;
    v30 = 2080;
    v31 = v18;
    v10 = "%25s:%-5d Invalid state: %s! At this point, we require state: %s";
    v11 = v5;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_28;
  }

  if (v3 != 8)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      if (*(VPStrategyMgrScope(void)::scope + 8))
      {
        v4 = *VPStrategyMgrScope(void)::scope;
        if (v4)
        {
          v5 = v4;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
LABEL_32:

            goto LABEL_33;
          }

          VPStrategyManager::StateAsString(v22, v3);
          v6 = v23;
          v7 = v22[0];
          VPStrategyManager::StateAsString(__p, v2);
          v8 = v22;
          if (v6 < 0)
          {
            v8 = v7;
          }

          if (v21 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136315906;
          v25 = "vpStrategyManager.h";
          v26 = 1024;
          v27 = 157;
          v28 = 2080;
          v29 = v8;
          v30 = 2080;
          v31 = v9;
          v10 = "%25s:%-5d State is: %s which is an acceptable state for this point: {%s}";
          v11 = v5;
          v12 = OS_LOG_TYPE_DEBUG;
LABEL_28:
          _os_log_impl(&dword_2724B4000, v11, v12, v10, buf, 0x26u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          goto LABEL_32;
        }
      }
    }
  }

LABEL_33:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27259F3C4(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::StateAsString(VPStrategyManager *this, int a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = 0;
  for (i = 0; i != 48; i += 16)
  {
    while ((*(&VPStrategyManager::StateAsString(unsigned long long)::stateNames + i) & a2) != 0)
    {
      v6 = *(&VPStrategyManager::StateAsString(unsigned long long)::stateNames + i + 8);
      if (v4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " OR ", 4);
      }

      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      i += 16;
      v4 = 1;
      if (i == 48)
      {
        goto LABEL_11;
      }
    }
  }

  if ((v4 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "*invalid*", 9);
  }

LABEL_11:
  if ((v21 & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v9 = v17;
    }

    locale = v16[4].__locale_;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v8 = 0;
      *(this + 23) = 0;
      goto LABEL_24;
    }

    locale = v16[1].__locale_;
    v9 = v16[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v8;
  if (v8)
  {
    memmove(this, locale, v8);
  }

LABEL_24:
  *(this + v8) = 0;
  v13[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v11;
  v15 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v22);
}

void sub_27259F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x2743CBE30](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_27259F968(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](a1 + 128);
  return a1;
}

void *VPStrategyManager::DumpState(void *this, __sFILE *a2)
{
  v2 = (this[25] + 324);
  atomic_fetch_add(v2, 1u);
  if (a2)
  {
    this = *(this[25] + 224);
    if (this)
    {
      this = (*(*this + 120))(this);
    }
  }

  atomic_fetch_add(v2, 0xFFFFFFFF);
  return this;
}

NSObject *VPStrategyManager::GetVersion(VPStrategyManager *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = this + 200;
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v7, *(this + 25) + 320, 0);
  v2 = *(*v1 + 224);
  if (v2)
  {
    result = (*(*v2 + 112))(v2);
  }

  else
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      result = *VPStrategyMgrScope(void)::scope;
      v4 = result;
      if (!result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "vpStrategyManager.mm";
      v10 = 1024;
      v11 = 526;
      _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Actually the VoiceProcessorInterface* owned by VPStrategyManager the is a nullptr, so we can only report that this VP's version is 0!", buf, 0x12u);
    }

    result = 0;
  }

LABEL_12:
  atomic_fetch_add((v7 + 4), 0xFFFFFFFF);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::GetMaxOutputPacketInfo(unint64_t **this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v11 = *VPStrategyMgrScope(void)::scope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v17 = "vpStrategyManager.mm";
          v18 = 1024;
          v19 = 432;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  result = VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(this, VoiceProcessorInterface::GetMaxOutputPacketInfo, 0, a2, &v15, a4, a5, a6);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(unint64_t **this, uint64_t (*a2)(void *, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v16 = *VPStrategyMgrScope(void)::scope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 136315394;
          *&v21[4] = "vpStrategyManager.h";
          v22 = 1024;
          v23 = 131;
          _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v21, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 4);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(v21, (this[25] + 40), 0);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    v18 = (this[25][28] + (a3 >> 1));
    if (a3)
    {
      a2 = *(*v18 + a2);
    }

    result = a2(v18, a4, *a5, a6, a7, a8);
  }

  else
  {
    result = 2;
  }

  atomic_fetch_add((*v21 + 4), 0xFFFFFFFF);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::SetMode(VPStrategyManager *this, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v4 = *VPStrategyMgrScope(void)::scope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v8 = 136315394;
          v9 = "vpStrategyManager.mm";
          v10 = 1024;
          v11 = 510;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v8, 0x12u);
        }
      }
    }
  }

  v8 = a2;
  result = VPStrategyManager::SetProperty(this, 32787, &v8, 4uLL);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::SetProperty(VPStrategyManager *this, int a2, CFPropertyListRef *a3, size_t a4)
{
  LODWORD(v6) = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  __val = v6;
  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *v81 = "vpStrategyManager.mm";
          *&v81[8] = 1024;
          *&v81[10] = 564;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *v81 = "vpStrategyManager.mm";
    *&v81[8] = 1024;
    *&v81[10] = 567;
    *&v81[14] = 1024;
    *&v81[16] = v6;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (a3 && a4)
  {
    v12 = *(this + 25);
    v13 = *(v12 + 120);
    v74 = v12 + 120;
    v75 = (*(v13 + 16))();
    v14 = *(this + 25);
    atomic_fetch_add((v14 + 208), 1u);
    while (*(v14 + 212))
    {
      usleep(0x1F4u);
    }

    CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v73, *(this + 25) + 320, 0);
    VPStrategyManager::CheckRequiredState(this, 14);
    v6 = v6;
    v16 = *(this + 25);
    v70 = v16[28];
    if (!v70)
    {
      v71 = 0;
      goto LABEL_44;
    }

    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v17 = *VPStrategyMgrScope(void)::scope;
      if (!v17)
      {
LABEL_43:
        v71 = (*(**(*(this + 25) + 224) + 56))(*(*(this + 25) + 224), v6, a3, a4);
        v16 = *(this + 25);
LABEL_44:
        v20 = v16 + 12;
        v21 = std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(v16[12], v16[13], v6);
        v69 = v16[13];
        std::vector<VPPropertyQueue::QueueEntry>::erase(v16 + 12, v21, v69);
        v68 = v21;
        *buf = v6;
        v81[44] = 0;
        v83[4] = 0;
        v84 = 0;
        memset(&v81[4], 0, 33);
        if (VPPropertyItem::IsPropertyCFType(v6))
        {
          v22 = *MEMORY[0x277CBECE8];
          if (v6 == 32798)
          {
            DeepCopy = CFPropertyListCreateDeepCopy(v22, a3, 0);
          }

          else
          {
            DeepCopy = CFPropertyListCreateDeepCopy(v22, *a3, 0);
          }

          v25 = *&v81[28];
          *&v81[28] = DeepCopy;
          if (v25)
          {
            CFRelease(v25);
          }
        }

        else if (v6 == 1684305512)
        {
          if (a4 == 8)
          {
            v26 = *a3;
            if (*a3)
            {
              v26 = _Block_copy(v26);
            }

            *&v81[36] = v26;
            v81[44] = 1;
          }
        }

        else if (v6 == 1836278117)
        {
          if (a4 == 8)
          {
            v24 = *a3;
            if (*a3)
            {
              v24 = _Block_copy(v24);
            }

            *&v83[4] = v24;
            v84 = 1;
          }
        }

        else
        {
          v77 = 0;
          v78[0] = 0;
          __p = v6;
          AUPropertyItem::SetData(&__p, a4, a3);
          v27 = v78[0];
          *&v81[4] = __p;
          *&v81[12] = v77;
          AUPropertyItem::SetData(&v81[4], HIDWORD(v77), v78[0]);
          if (v27)
          {
            free(v27);
          }
        }

        v85 = v70 != 0;
        v29 = v16[13];
        v28 = v16[14];
        if (v29 >= v28)
        {
          v34 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v20) >> 4);
          if (v34 + 1 > 0x333333333333333)
          {
            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v35 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - *v20) >> 4);
          v36 = 2 * v35;
          if (2 * v35 <= v34 + 1)
          {
            v36 = v34 + 1;
          }

          if (v35 >= 0x199999999999999)
          {
            v37 = 0x333333333333333;
          }

          else
          {
            v37 = v36;
          }

          v79 = v16 + 12;
          if (v37)
          {
            if (v37 <= 0x333333333333333)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = 80 * v34;
          __p = 0;
          v77 = v38;
          v78[0] = v38;
          v78[1] = 0;
          *v38 = *buf;
          *(v38 + 20) = 0;
          *(v38 + 24) = 0;
          if (v38 != buf)
          {
            v40 = *&v81[12];
            v39 = *&v81[16];
            v41 = *&v81[20];
            *(v38 + 8) = *&v81[4];
            *(v38 + 16) = v40;
            AUPropertyItem::SetData((v38 + 8), v39, v41);
          }

          *(v38 + 40) = 0;
          *(v38 + 32) = *&v81[28];
          *&v81[28] = 0;
          *(v38 + 48) = 0;
          if (v81[44] == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v38 + 40, &v81[36]);
          }

          *(v38 + 56) = 0;
          *(v38 + 64) = 0;
          if (v84 == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v38 + 56, &v83[4]);
          }

          *(v38 + 72) = v85;
          v78[0] = v78[0] + 80;
          v42 = v16[12];
          v43 = v16[13];
          v44 = &v77[v42 - v43];
          if (v42 != v43)
          {
            v45 = 0;
            do
            {
              v46 = v42 + v45;
              v47 = v44 + v45;
              *v47 = *(v42 + v45);
              *(v47 + 5) = 0;
              *(v47 + 3) = 0;
              if (v44 != v42)
              {
                v49 = *(v46 + 4);
                v48 = *(v46 + 5);
                v50 = *(v46 + 3);
                *(v47 + 1) = *(v46 + 1);
                *(v47 + 4) = v49;
                AUPropertyItem::SetData((v47 + 8), v48, v50);
              }

              v51 = *(v46 + 4);
              if (v51)
              {
                CFRetain(*(v46 + 4));
              }

              *(v47 + 4) = v51;
              v52 = v44 + v45;
              v52[40] = 0;
              v52[48] = 0;
              if (v46[48] == 1)
              {
                v53 = *(v42 + v45 + 40);
                if (v53)
                {
                  v53 = _Block_copy(v53);
                }

                *(v52 + 5) = v53;
                v52[48] = 1;
              }

              v52[56] = 0;
              v52[64] = 0;
              if (v46[64] == 1)
              {
                v54 = *(v42 + v45 + 56);
                if (v54)
                {
                  v54 = _Block_copy(v54);
                }

                *(v52 + 7) = v54;
                v52[64] = 1;
              }

              *(v44 + v45 + 72) = v46[72];
              v45 += 80;
            }

            while (v46 + 80 != v43);
            do
            {
              VPPropertyItem::~VPPropertyItem(v42);
              v42 = (v42 + 80);
            }

            while (v42 != v43);
          }

          v55 = v16[12];
          v16[12] = v44;
          v56 = v16[14];
          v67 = v78[0];
          *(v16 + 13) = *v78;
          v78[0] = v55;
          v78[1] = v56;
          __p = v55;
          v77 = v55;
          std::__split_buffer<VPPropertyQueue::QueueEntry>::~__split_buffer(&__p);
          v33 = v67;
        }

        else
        {
          *v29 = *buf;
          *(v29 + 20) = 0;
          *(v29 + 24) = 0;
          if (v29 != buf)
          {
            v31 = *&v81[12];
            v30 = *&v81[16];
            v32 = *&v81[20];
            *(v29 + 8) = *&v81[4];
            *(v29 + 16) = v31;
            AUPropertyItem::SetData((v29 + 8), v30, v32);
          }

          *(v29 + 40) = 0;
          *(v29 + 32) = *&v81[28];
          *&v81[28] = 0;
          *(v29 + 48) = 0;
          if (v81[44] == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v29 + 40, &v81[36]);
          }

          *(v29 + 56) = 0;
          *(v29 + 64) = 0;
          if (v84 == 1)
          {
            std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(v29 + 56, &v83[4]);
          }

          *(v29 + 72) = v85;
          v33 = v29 + 80;
          v16[13] = v29 + 80;
        }

        v16[13] = v33;
        if (v84 == 1)
        {
          v57 = *&v83[4];
          if (*&v83[4])
          {
            *&v83[4] = 0;

            v57 = *&v83[4];
          }
        }

        if (v81[44] == 1)
        {
          v58 = *&v81[36];
          if (*&v81[36])
          {
            *&v81[36] = 0;

            v58 = *&v81[36];
          }
        }

        if (*&v81[28])
        {
          CFRelease(*&v81[28]);
        }

        if (*&v81[20])
        {
          free(*&v81[20]);
        }

        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (VPStrategyMgrScope(void)::scope)
        {
          v59 = *VPStrategyMgrScope(void)::scope;
          if (!v59)
          {
LABEL_130:
            atomic_fetch_add((v73 + 4), 0xFFFFFFFF);
            atomic_fetch_add((v14 + 208), 0xFFFFFFFF);
            if (v75 == 1)
            {
              (*(*v74 + 24))(v74);
            }

            goto LABEL_132;
          }
        }

        else
        {
          v59 = MEMORY[0x277D86220];
          v60 = MEMORY[0x277D86220];
        }

        v61 = v59;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v62 = v69 == v68 ? "added" : "replaced";
          caulk::string_from_4cc(&__p, __val);
          v63 = SHIBYTE(v78[0]) >= 0 ? &__p : __p;
          v64 = 0xCCCCCCCCCCCCCCCDLL * ((v16[13] - v16[12]) >> 4);
          *buf = 136316674;
          *v81 = "vpPropertyQueue.h";
          *&v81[8] = 1024;
          *&v81[10] = 22;
          *&v81[14] = 2080;
          *&v81[16] = v62;
          *&v81[24] = 1024;
          *&v81[26] = __val;
          *&v81[30] = 2080;
          *&v81[32] = v63;
          *&v81[40] = 1024;
          *&v81[42] = v70 != 0;
          v82 = 2048;
          *v83 = v64;
          _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s property 0x%x %s, setOnVP=%d (size=%lu)", buf, 0x3Cu);
          if (SHIBYTE(v78[0]) < 0)
          {
            operator delete(__p);
          }
        }

        goto LABEL_130;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v81 = "vpStrategyManager.mm";
      *&v81[8] = 1024;
      *&v81[10] = 578;
      _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d set on vp", buf, 0x12u);
    }

    v6 = v6;
    goto LABEL_43;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  v71 = 1651532146;
  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *v81 = "vpStrategyManager.mm";
    *&v81[8] = 1024;
    *&v81[10] = 585;
    *&v81[14] = 2048;
    *&v81[16] = a3;
    *&v81[24] = 1024;
    *&v81[26] = a4;
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d bad prop data = %p, size = %u", buf, 0x22u);
  }

LABEL_132:
  v65 = *MEMORY[0x277D85DE8];
  return v71;
}

void sub_2725A0C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    free(v26);
  }

  std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(v28 + 56);
  std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(v28 + 40);
  applesauce::CF::TypeRef::~TypeRef((v28 + 32));
  if (a26)
  {
    free(a26);
    a26 = 0;
  }

  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  atomic_fetch_add((a15 + 4), 0xFFFFFFFF);
  atomic_fetch_add((v27 + 208), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase(unsigned int)::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != a3)
    {
      v3 += 80;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 80; i != a2; i += 80)
      {
        if (*i != a3)
        {
          *v3 = *i;
          if (i != v3)
          {
            v9 = *(i + 16);
            v8 = *(i + 20);
            v10 = *(i + 24);
            *(v3 + 8) = *(i + 8);
            *(v3 + 16) = v9;
            AUPropertyItem::SetData((v3 + 8), v8, v10);
          }

          v11 = *(v3 + 32);
          *(v3 + 32) = *(i + 32);
          *(i + 32) = v11;
          std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(v3 + 40, i + 40);
          std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(v3 + 56, i + 56);
          *(v3 + 72) = *(i + 72);
          v3 += 80;
        }
      }
    }
  }

  return v3;
}

VPPropertyItem *std::vector<VPPropertyQueue::QueueEntry>::erase(void *a1, VPPropertyItem *a2, VPPropertyItem *a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v14 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = a3 + *a1;
      v8 = a2 + *a1;
      do
      {
        *&v8[v6] = *&v7[v6];
        if (v7 != v8)
        {
          v10 = *&v7[v6 + 16];
          v9 = *&v7[v6 + 20];
          v11 = *&v7[v6 + 24];
          *&v8[v6 + 8] = *&v7[v6 + 8];
          v12 = &v8[v6 + 8];
          *(v12 + 2) = v10;
          AUPropertyItem::SetData(v12, v9, v11);
        }

        v13 = *&v8[v6 + 32];
        *&v8[v6 + 32] = *&v7[v6 + 32];
        *&v7[v6 + 32] = v13;
        std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(&v8[v6 + 40], &v7[v6 + 40]);
        std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(&v8[v6 + 56], &v7[v6 + 56]);
        v8[v6 + 72] = v7[v6 + 72];
        v7 += 80;
        v8 += 80;
      }

      while (&v7[v6] != v5);
      v14 = &v8[v6];
      v5 = a1[1];
    }

    while (v5 != v14)
    {
      v5 = (v5 - 80);
      VPPropertyItem::~VPPropertyItem(v5);
    }

    a1[1] = v14;
  }

  return a2;
}

unint64_t caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = bswap32(__val);
  v8 = v3;
  if ((v3 - 32) > 0x5E || ((v3 >> 8) - 32) > 0x5E || ((v3 << 8 >> 24) - 32) > 0x5E || ((v3 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v9 = 39;
    v7 = 39;
    result = strlen(&v7);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(&retstr->__r_.__value_.__s + 23) = result;
    if (result)
    {
      result = memcpy(retstr, &v7, result);
    }

    retstr->__r_.__value_.__s.__data_[v5] = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725A1088(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VPPropertyItem::~VPPropertyItem(VPPropertyItem *this)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 7) = 0;

      v2 = *(this + 7);
    }
  }

  if (*(this + 48) == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      *(this + 5) = 0;

      v3 = *(this + 5);
    }
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    free(v5);
    *(this + 3) = 0;
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t std::__split_buffer<VPPropertyQueue::QueueEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    VPPropertyItem::~VPPropertyItem((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = _Block_copy(v3);

  *(a1 + 8) = 1;
}

uint64_t std::optional<vp::Block<void({block_pointer} {__strong})(float,float)>>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v2 = *a1;
    }
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = 0;

    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(a1);
      v4 = *a2;
      v6 = *a2;
      *a2 = 0;
      *a1 = _Block_copy(v4);
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v5 = *a1;
    }

    *(a1 + 8) = 0;
  }

  else
  {

    std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(a1, a2);
  }
}

void std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vp::Block<void({block_pointer} {__strong})(AUVoiceIOSpeechActivityEvent)>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(a1);
      v4 = *a2;
      v6 = *a2;
      *a2 = 0;
      *a1 = _Block_copy(v4);
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    if (*a1)
    {
      *a1 = 0;

      v5 = *a1;
    }

    *(a1 + 8) = 0;
  }

  else
  {

    std::__optional_storage_base<vp::Block<void({block_pointer} {__strong})(float,float)>,false>::__construct[abi:ne200100]<vp::Block<void({block_pointer} {__strong})(float,float)>>(a1, a2);
  }
}

uint64_t VPStrategyManager::SetDownLinkVolume(VPStrategyManager *this, float a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v4 = *VPStrategyMgrScope(void)::scope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v24 = "vpStrategyManager.mm";
          v25 = 1024;
          v26 = 472;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  atomic_store(LODWORD(a2), (*(this + 25) + 216));
  v6 = *(this + 25);
  v7 = *(v6 + 8);
  v21 = v6 + 8;
  v22 = 0;
  v8 = (*(v7 + 32))();
  HIBYTE(v22) = v8;
  if (v8)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v9 = *VPStrategyMgrScope(void)::scope;
      if (!v9)
      {
LABEL_24:
        VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(*(this + 25));
        goto LABEL_37;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "vpStrategyManager.mm";
      v25 = 1024;
      v26 = 478;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d state lock acquired without contention", buf, 0x12u);
    }

    goto LABEL_24;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (!VPStrategyMgrScope(void)::scope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v10 = *VPStrategyMgrScope(void)::scope;
  if (v10)
  {
LABEL_26:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "vpStrategyManager.mm";
      v25 = 1024;
      v26 = 481;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d state lock not acquired; deferring", buf, 0x12u);
    }
  }

  v14 = *(this + 25);
  v13 = *(this + 26);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = dispatch_get_global_queue(0, 0);
  v16 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = ___ZN17VPStrategyManager17SetDownLinkVolumeEf_block_invoke;
  v19[3] = &__block_descriptor_48_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE_e5_v8__0l;
  v19[4] = v14;
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v15, v19);

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_37:
  if (v22 == 1)
  {
    (*(*v21 + 24))(v21);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2725A17C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CADeprecated::CAMutex::Tryer::~Tryer(CADeprecated::CAMutex::Tryer *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

void VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(atomic_ullong *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v15 = "vpStrategyManager.mm";
          v16 = 1024;
          v17 = 455;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v4 = pthread_self();
  if (!pthread_equal(v4, atomic_load_explicit(this + 3, memory_order_acquire)))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v5 = *VPStrategyMgrScope(void)::scope;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "vpStrategyManager.mm";
      v16 = 1024;
      v17 = 456;
      _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d stateMutex must be held!", buf, 0x12u);
    }
  }

LABEL_19:
  v7 = atomic_load(this);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          VPStrategyManager::StateAsString(__p, v7);
          v10 = v13 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v15 = "vpStrategyManager.mm";
          v16 = 1024;
          v17 = 458;
          v18 = 2080;
          v19 = v10;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d state = %s", buf, 0x1Cu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (v7 == 8)
  {
    VPStrategyManager::VPSMImplementation::CommitVolume(this);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void ___ZN17VPStrategyManager17SetDownLinkVolumeEf_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 32)) == 0)
  {
LABEL_10:
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "vpStrategyManager.mm";
      v15 = 1024;
      v16 = 491;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d vpsm already destroyed", buf, 0x12u);
    }

LABEL_19:
    if (!v3)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v5 = *VPStrategyMgrScope(void)::scope;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "vpStrategyManager.mm";
    v15 = 1024;
    v16 = 486;
    _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d waiting for locks asynchronously", buf, 0x12u);
  }

LABEL_25:
  v9 = (*(v4[1] + 16))(v4 + 1);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (!VPStrategyMgrScope(void)::scope)
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_31;
  }

  v10 = *VPStrategyMgrScope(void)::scope;
  if (v10)
  {
LABEL_31:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "vpStrategyManager.mm";
      v15 = 1024;
      v16 = 488;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d locks acquired", buf, 0x12u);
    }
  }

  VPStrategyManager::VPSMImplementation::CommitVolumeIfInRunningState(v4);
  if (v9)
  {
    (*(v4[1] + 24))(v4 + 1);
  }

LABEL_36:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_37:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2725A1E2C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c64_ZTSNSt3__18weak_ptrIN17VPStrategyManager18VPSMImplementationEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void VPStrategyManager::VPSMImplementation::CommitVolume(VPStrategyManager::VPSMImplementation *this)
{
  v24 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136315394;
          v17 = "vpStrategyManager.h";
          v18 = 1024;
          v19 = 185;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v16, 0x12u);
        }
      }
    }
  }

  if (!*(this + 28))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v7 = *VPStrategyMgrScope(void)::scope;
      if (!v7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v16 = 136315394;
    v17 = "vpStrategyManager.h";
    v18 = 1024;
    v19 = 197;
    v9 = "%25s:%-5d vp is nullptr";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_32;
  }

  v4 = COERCE_FLOAT(atomic_load(this + 54));
  if (v4 == -1.0)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (!VPStrategyMgrScope(void)::scope)
    {
      goto LABEL_38;
    }

    if ((*(VPStrategyMgrScope(void)::scope + 8) & 1) == 0)
    {
      goto LABEL_38;
    }

    v8 = *VPStrategyMgrScope(void)::scope;
    if (!v8)
    {
      goto LABEL_38;
    }

    v7 = v8;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:

      goto LABEL_38;
    }

    v16 = 136315394;
    v17 = "vpStrategyManager.h";
    v18 = 1024;
    v19 = 193;
    v9 = "%25s:%-5d no volume to set now";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_32:
    v13 = 18;
LABEL_36:
    _os_log_impl(&dword_2724B4000, v10, v11, v9, &v16, v13);
    goto LABEL_37;
  }

  v5 = (*(**(this + 28) + 88))(*(this + 28), v4);
  if (v5)
  {
    v6 = v5;
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v7 = *VPStrategyMgrScope(void)::scope;
      if (!v7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v16 = 136315906;
    v17 = "vpStrategyManager.h";
    v18 = 1024;
    v19 = 190;
    v20 = 1024;
    v21 = v6;
    v22 = 2080;
    v23 = "CommitVolume";
    v9 = "%25s:%-5d Error code %i reported at %s";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v13 = 34;
    goto LABEL_36;
  }

LABEL_38:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t VPStrategyManager::AppendSpeakerTelemetryData(VPStrategyManager *this, const AudioBufferList *a2, uint64_t a3, const AudioTimeStamp *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(this + 25);
  atomic_fetch_add((v8 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v8 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8);
    v9 = (*(**(*(this + 25) + 224) + 80))(*(*(this + 25) + 224), a2, a3, a4);
    atomic_fetch_add((v8 + 324), 0xFFFFFFFF);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    atomic_fetch_add((v8 + 324), 0xFFFFFFFF);
    v9 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315906;
    v15 = "vpStrategyManager.mm";
    v16 = 1024;
    v17 = 633;
    v18 = 1024;
    v19 = v9;
    v20 = 2080;
    v21 = "AppendSpeakerTelemetryData";
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v14, 0x22u);
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t VPStrategyManager::ProcessDownlinkAudio(VPStrategyManager *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, uint64_t a6, const AudioTimeStamp *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v14 = *(this + 25);
  atomic_fetch_add((v14 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v14 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8);
    v15 = (*(**(*(this + 25) + 224) + 72))(*(*(this + 25) + 224), a2, a3, a4, a5, a6, a7);
    atomic_fetch_add((v14 + 324), 0xFFFFFFFF);
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    atomic_fetch_add((v14 + 324), 0xFFFFFFFF);
    v15 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v16 = *VPStrategyMgrScope(void)::scope;
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315906;
    v21 = "vpStrategyManager.mm";
    v22 = 1024;
    v23 = 623;
    v24 = 1024;
    v25 = v15;
    v26 = 2080;
    v27 = "ProcessDownlinkAudio";
    _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v20, 0x22u);
  }

LABEL_13:
  kdebug_trace();
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t VPStrategyManager::Process(VPStrategyManager *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v31 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v17 = *(this + 25);
  atomic_fetch_add((v17 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v17 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8);
    v18 = (*(**(*(this + 25) + 224) + 64))(*(*(this + 25) + 224), a2, a3, a4, a5, a6, a7, a8, a9);
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    a4->mBuffers[0].mDataByteSize = 0;
    *a6 = 0;
    v18 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v19 = *VPStrategyMgrScope(void)::scope;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v24 = "vpStrategyManager.mm";
    v25 = 1024;
    v26 = 611;
    v27 = 1024;
    v28 = v18;
    v29 = 2080;
    v30 = "Process";
    _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_13:
  kdebug_trace();
  atomic_fetch_add((v17 + 324), 0xFFFFFFFF);
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t VPStrategyManager::GetProperty(VPStrategyManager *this, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v23 = 1024;
          v24 = 553;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v21, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v12 = *VPStrategyMgrScope(void)::scope;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v23 = 1024;
    v24 = 556;
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v14 = *VPStrategyMgrScope(void)::scope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v23 = 1024;
          v24 = 142;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v16 = (*(**(*(this + 25) + 224) + 48))(*(*(this + 25) + 224), a2, a3, a4, a5);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v16 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v17 = *VPStrategyMgrScope(void)::scope;
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v23 = 1024;
    v24 = 558;
    v25 = 1024;
    v26 = v16;
    v27 = 2080;
    v28 = "GetProperty";
    _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v21 + 4), 0xFFFFFFFF);
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t VPStrategyManager::InitializeSpeakerTelemetryInput(unint64_t **this, const AudioStreamBasicDescription *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 136315394;
          *&v12[4] = "vpStrategyManager.mm";
          v13 = 1024;
          v14 = 502;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v12, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 136315394;
          *&v12[4] = "vpStrategyManager.h";
          v13 = 1024;
          v14 = 131;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v12, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 4);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(v12, (this[25] + 40), 0);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    result = (*(*this[25][28] + 40))(this[25][28], a2, a3);
  }

  else
  {
    result = 2;
  }

  atomic_fetch_add((*v12 + 4), 0xFFFFFFFF);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::InitializeDownlinkProcessing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v19 = 1024;
          v20 = 441;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v19 = 1024;
          v20 = 131;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(a1, 4);
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(a1 + 200) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(a1 + 200) + 224)))
  {
    v14 = (*(**(*(a1 + 200) + 224) + 32))(*(*(a1 + 200) + 224), a2, a3, a4, v9);
  }

  else
  {
    v14 = 2;
  }

  atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN17VPStrategyManager28InitializeDownlinkProcessingERK27AudioStreamBasicDescriptionjS2_U13block_pointerFiP15AudioBufferListP14AudioTimeStampPjE_block_invoke;
  v17[3] = &__block_descriptor_40_e5_v8__0l;
  v17[4] = a1;
  VPStrategyManager::SetState(a1, 8uLL, v17);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_2725A31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  atomic_fetch_add((a15 + 4), 0xFFFFFFFF);

  _Unwind_Resume(a1);
}

void ___ZN17VPStrategyManager28InitializeDownlinkProcessingERK27AudioStreamBasicDescriptionjS2_U13block_pointerFiP15AudioBufferListP14AudioTimeStampPjE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v2 = *VPStrategyMgrScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "vpStrategyManager.mm";
    v7 = 1024;
    v8 = 446;
    _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d updating volume", &v5, 0x12u);
  }

LABEL_10:
  VPStrategyManager::VPSMImplementation::CommitVolume(*(v1 + 200));
  v4 = *MEMORY[0x277D85DE8];
}

void VPStrategyManager::SetState(uint64_t a1, unint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v21 = "vpStrategyManager.h";
          v22 = 1024;
          v23 = 170;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v8 = *(a1 + 200);
  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v18 = v9;
  v11 = (*(v10 + 16))(v9);
  v19 = v11;
  v5[2](v5);
  atomic_store(a2, *(a1 + 200));
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          VPStrategyManager::StateAsString(__p, a2);
          v14 = v17 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v21 = "vpStrategyManager.h";
          v22 = 1024;
          v23 = 174;
          v24 = 2080;
          v25 = v14;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (v11)
  {
    (*(*v9 + 24))(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2725A3564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::InitializeOutput(unint64_t **this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v11 = *VPStrategyMgrScope(void)::scope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v17 = "vpStrategyManager.mm";
          v18 = 1024;
          v19 = 423;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  result = VPStrategyManager::RedirectWrapper_Initializing<AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &,AudioStreamBasicDescription &,AudioChannelLayout *&,unsigned int &,unsigned int &,unsigned int &>(this, VoiceProcessorInterface::InitializeOutput, 0, a2, &v15, a4, a5, a6);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::InitializeHWInput(unint64_t **this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, unsigned int a4, AudioObjectID a5, unsigned int a6, unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, uint64_t a10, unsigned int a11, unsigned int *a12)
{
  v103 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v13 = *VPStrategyMgrScope(void)::scope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v98 = "vpStrategyManager.mm";
          v99 = 1024;
          v100 = 361;
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  VPStrategyManager::CheckRequiredState(this, 10);
  VPStrategyManager::SetState(this, 4uLL, &__block_literal_global_13);
  v15 = this[25];
  v16 = v15[15];
  v94 = v15 + 15;
  v95 = (*(v16 + 16))();
  v17 = this[25];
  atomic_fetch_add(v17 + 52, 1u);
  while (*(v17 + 53))
  {
    usleep(0x1F4u);
  }

  for (i = 0; i != 6; ++i)
  {
    v19 = this[25];
    v20 = VPStrategyManager::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::propertiesToClear[i];
    v21 = std::remove_if[abi:ne200100]<std::__wrap_iter<VPPropertyQueue::QueueEntry *>,VPPropertyQueue::DoErase::{lambda(std::__wrap_iter<VPPropertyQueue::QueueEntry *> &)#1}>(v19[12], v19[13], v20);
    v22 = v19[13];
    std::vector<VPPropertyQueue::QueueEntry>::erase(v19 + 12, v21, v22);
    if (v22 == v21)
    {
      continue;
    }

    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v23 = *VPStrategyMgrScope(void)::scope;
      if (!v23)
      {
        continue;
      }
    }

    else
    {
      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
      v23 = v24;
    }

    v26 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      caulk::string_from_4cc(&v96, v20);
      v27 = &v96;
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v96.__r_.__value_.__r.__words[0];
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v19[13] - v19[12]) >> 4);
      *buf = 136316162;
      v98 = "vpPropertyQueue.h";
      v99 = 1024;
      v100 = 31;
      v101 = 1024;
      *v102 = v20;
      *&v102[4] = 2080;
      *&v102[6] = v27;
      *&v102[14] = 2048;
      *&v102[16] = v28;
      _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d removed property 0x%x %s (size=%lu)", buf, 0x2Cu);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }
    }
  }

  atomic_fetch_add(v17 + 52, 0xFFFFFFFF);
  if (v95 == 1)
  {
    (*(*v94 + 24))(v94);
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v93, (this[25] + 26), 0);
  v29 = this[25][29];
  v96.__r_.__value_.__r.__words[0] = (this[25] + 29);
  v96.__r_.__value_.__s.__data_[8] = (*(v29 + 16))();
  v30 = this[25];
  atomic_fetch_add(v30 + 80, 1u);
  while (*(v30 + 81))
  {
    usleep(0x1F4u);
  }

  v31 = 0;
  if (a6 && a7)
  {
    v31 = *a7;
  }

  v32 = 0;
  if (a11 && a12)
  {
    v32 = *a12;
  }

  v89 = v30;
  updated = VPStrategyManager::UpdateVPVersion(this, a5, v31, HIDWORD(a10), v32);
  if (updated)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v34 = *VPStrategyMgrScope(void)::scope;
      if (!v34)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v98 = "vpStrategyManager.mm";
      v99 = 1024;
      v100 = 396;
      v101 = 1024;
      *v102 = updated;
      *&v102[4] = 2080;
      *&v102[6] = "InitializeHWInput";
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
    }
  }

LABEL_48:
  v88 = updated;
  v36 = this[25];
  v37 = v36[12];
  v38 = v36[13];
  if (v37 == v38)
  {
    v39 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      if (*(v37 + 72))
      {
        v42 = v40;
      }

      else
      {
        v43 = (v41 - v39) >> 3;
        v44 = v43 + 1;
        if ((v43 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        if (-v39 >> 2 > v44)
        {
          v44 = -v39 >> 2;
        }

        if (-v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          if (!(v45 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v46 = (8 * v43);
        v47 = v40 - v39;
        v48 = (v46 - (v40 - v39));
        *v46 = v37;
        v42 = v46 + 1;
        memcpy(v48, v39, v47);
        if (v39)
        {
          operator delete(v39);
        }

        v39 = v48;
        v41 = v42;
      }

      v37 += 80;
      v40 = v42;
    }

    while (v37 != v38);
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v49 = *VPStrategyMgrScope(void)::scope;
    if (!v49)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v49 = MEMORY[0x277D86220];
    v50 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v36[13] - v36[12]) >> 4);
    *buf = 136315906;
    v98 = "vpPropertyQueue.h";
    v99 = 1024;
    v100 = 55;
    v101 = 2048;
    *v102 = (v42 - v39) >> 3;
    *&v102[8] = 2048;
    *&v102[10] = v51;
    _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d got %lu unset properties (size=%lu)", buf, 0x26u);
  }

LABEL_76:
  if (v42 != v39)
  {
    v52 = 0;
    v53 = (v42 - v39) >> 3;
    v54 = MEMORY[0x277D86220];
    v55 = 1;
    do
    {
      v56 = *(v39 + 8 * v52);
      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (VPStrategyMgrScope(void)::scope)
      {
        if (*(VPStrategyMgrScope(void)::scope + 8))
        {
          v57 = *VPStrategyMgrScope(void)::scope;
          if (v57)
          {
            v58 = v57;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v98 = "vpStrategyManager.mm";
              v99 = 1024;
              v100 = 277;
              _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
            }
          }
        }
      }

      if (!VPStrategyManager::CheckHasVP(this[25][28]))
      {
        goto LABEL_146;
      }

      if (!v56)
      {
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (!VPStrategyMgrScope(void)::scope)
        {
          v60 = v54;
          v66 = v54;
LABEL_109:
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v98 = "vpStrategyManager.mm";
            v99 = 1024;
            v100 = 294;
            _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d null pointer for property!", buf, 0x12u);
          }

          goto LABEL_146;
        }

        v60 = *VPStrategyMgrScope(void)::scope;
        if (v60)
        {
          goto LABEL_109;
        }

        goto LABEL_146;
      }

      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (VPStrategyMgrScope(void)::scope)
      {
        v59 = *VPStrategyMgrScope(void)::scope;
        if (!v59)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v59 = v54;
        v61 = v54;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v62 = *v56;
        *buf = 136315650;
        v98 = "vpStrategyManager.mm";
        v99 = 1024;
        v100 = 284;
        v101 = 1024;
        *v102 = v62;
        _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting property 0x%x", buf, 0x18u);
      }

LABEL_102:
      v63 = this[25];
      v64 = pthread_self();
      if (pthread_equal(v64, atomic_load_explicit(v63 + 31, memory_order_acquire)))
      {
        goto LABEL_116;
      }

      if (VPStrategyMgrScope(void)::once != -1)
      {
        dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
      }

      if (VPStrategyMgrScope(void)::scope)
      {
        v65 = *VPStrategyMgrScope(void)::scope;
        if (!v65)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v65 = v54;
        v67 = v54;
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v98 = "vpStrategyManager.mm";
        v99 = 1024;
        v100 = 285;
        _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d vpLock must be held!", buf, 0x12u);
      }

LABEL_116:
      v68 = *v56;
      if (v68 == 1684305512)
      {
        if (*(v56 + 48) != 1)
        {
LABEL_175:
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v69 = _Block_copy(*(v56 + 5));
      }

      else if (v68 == 1836278117)
      {
        if ((v56[16] & 1) == 0)
        {
          goto LABEL_175;
        }

        v69 = _Block_copy(*(v56 + 7));
      }

      else if (VPPropertyItem::IsPropertyCFType(v68))
      {
        v69 = *(v56 + 4);
      }

      else
      {
        v69 = *(v56 + 3);
      }

      v94 = v69;
      v70 = *v56;
      if (*v56 > 1684305511)
      {
        if (v70 > 1986882932)
        {
          if (v70 == 1986882933)
          {
            goto LABEL_136;
          }

          v71 = 1987210613;
        }

        else
        {
          if (v70 == 1684305512)
          {
            goto LABEL_136;
          }

          v71 = 1836278117;
        }

        if (v70 != v71)
        {
LABEL_135:
          v72 = v56[5];
        }
      }

      else if ((v70 - 32783) > 0x12 || ((1 << (v70 - 15)) & 0x78003) == 0)
      {
        goto LABEL_135;
      }

LABEL_136:
      v73 = (*(*this[25][28] + 56))();
      if (v73)
      {
        if (VPStrategyMgrScope(void)::once != -1)
        {
          dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
        }

        if (!VPStrategyMgrScope(void)::scope)
        {
          v74 = v54;
          v75 = v54;
LABEL_143:
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v98 = "vpStrategyManager.mm";
            v99 = 1024;
            v100 = 292;
            v101 = 1024;
            *v102 = v73;
            *&v102[4] = 2080;
            *&v102[6] = "DoSetProperty";
            _os_log_impl(&dword_2724B4000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
          }

          goto LABEL_146;
        }

        v74 = *VPStrategyMgrScope(void)::scope;
        if (v74)
        {
          goto LABEL_143;
        }
      }

LABEL_146:
      v52 = v55;
    }

    while (v53 > v55++);
  }

  VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((this[25] + 12), 1);
  if (VPStrategyManager::CheckHasVP(this[25][28]))
  {
    v77 = (*(*this[25][28] + 16))(this[25][28], a2, 0, a4, a5, a6, a7, a8, 0, a10, a11, a12);
  }

  else
  {
    v77 = 2;
  }

  v78 = v77 | v88;
  if (v78)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v79 = *VPStrategyMgrScope(void)::scope;
      if (!v79)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v79 = MEMORY[0x277D86220];
      v80 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v98 = "vpStrategyManager.mm";
      v99 = 1024;
      v100 = 413;
      v101 = 1024;
      *v102 = v78;
      *&v102[4] = 2080;
      *&v102[6] = "InitializeHWInput";
      _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
    }
  }

LABEL_160:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v81 = *VPStrategyMgrScope(void)::scope;
    if (!v81)
    {
      goto LABEL_169;
    }
  }

  else
  {
    v81 = MEMORY[0x277D86220];
    v82 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v98 = "vpStrategyManager.mm";
    v99 = 1024;
    v100 = 415;
    _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d Finished initializing the VP using cached data", buf, 0x12u);
  }

LABEL_169:
  if (v39)
  {
    operator delete(v39);
  }

  atomic_fetch_add(v89 + 80, 0xFFFFFFFF);
  if (v96.__r_.__value_.__s.__data_[8] == 1)
  {
    (*(*v96.__r_.__value_.__l.__data_ + 24))(v96.__r_.__value_.__r.__words[0]);
  }

  atomic_fetch_add((v93 + 4), 0xFFFFFFFF);
  v83 = *MEMORY[0x277D85DE8];
  return v78;
}

void sub_2725A4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPStrategyManager::UpdateVPVersion(VPStrategyManager *this, AudioObjectID a2, unsigned int a3, AudioObjectID a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v56 = 1024;
          v57 = 302;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  v12 = *(this + 25);
  v13 = pthread_self();
  if (!pthread_equal(v13, atomic_load_explicit((v12 + 248), memory_order_acquire)))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v14 = *VPStrategyMgrScope(void)::scope;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpStrategyManager.mm";
      v56 = 1024;
      v57 = 304;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d vpLock must be held!", buf, 0x12u);
    }
  }

LABEL_19:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v16 = *VPStrategyMgrScope(void)::scope;
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    CAX4CCString::CAX4CCString(v54, a3);
    CAX4CCString::CAX4CCString(v53, a5);
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v56 = 1024;
    v57 = 307;
    v58 = 2080;
    *v59 = v54;
    *&v59[8] = 2080;
    v60 = v53;
    _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d ref port type %s, mic port type %s", buf, 0x26u);
  }

LABEL_28:
  if (*(this + 220) != 1 || (VoiceProcessorVersion = *(this + 54)) == 0)
  {
    VoiceProcessorVersion = GetVoiceProcessorVersion((this + 8), a2, a3, a4, a5);
  }

  v20 = *(*(this + 25) + 224);
  if (!v20)
  {
LABEL_81:
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v46 = *VPStrategyMgrScope(void)::scope;
      if (!v46)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v46 = MEMORY[0x277D86220];
      v47 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "vpStrategyManager.mm";
      v56 = 1024;
      v57 = 338;
      v58 = 1024;
      *v59 = VoiceProcessorVersion;
      _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating a new VoiceProcessorV%u", buf, 0x18u);
    }

LABEL_90:
    vp::create(buf, VoiceProcessorVersion, (this + 8));
    v48 = *(this + 25);
    v49 = *(v48 + 224);
    *(v48 + 224) = *buf;
    if (v49)
    {
      (*(*v49 + 8))(v49);
      v48 = *(this + 25);
    }

    VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((v48 + 96), 0);
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v50 = *VPStrategyMgrScope(void)::scope;
      if (!v50)
      {
LABEL_101:
        result = 2 * (*(*(this + 25) + 224) == 0);
        goto LABEL_102;
      }
    }

    else
    {
      v50 = MEMORY[0x277D86220];
      v51 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "vpStrategyManager.mm";
      v56 = 1024;
      v57 = 341;
      v58 = 1024;
      *v59 = VoiceProcessorVersion;
      _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created a new VoiceProcessorV%u", buf, 0x18u);
    }

    goto LABEL_101;
  }

  v21 = (*(*v20 + 112))(v20);
  if (v21 == VoiceProcessorVersion)
  {
    goto LABEL_79;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v22 = *VPStrategyMgrScope(void)::scope;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v56 = 1024;
    v57 = 325;
    v58 = 1024;
    *v59 = v21;
    *&v59[4] = 1024;
    *&v59[6] = VoiceProcessorVersion;
    _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Switching from VoiceProcessorV%u to VoiceProcessorV%u", buf, 0x1Eu);
  }

LABEL_42:
  v24 = *(this + 25);
  v25 = *(v24 + 336);
  if (!v25)
  {
LABEL_49:
    operator new();
  }

  v26 = *(v24 + 336);
  while (1)
  {
    while (1)
    {
      v27 = v26;
      v28 = *(v26 + 32);
      if (v21 >= v28)
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_49;
      }
    }

    if (v28 >= v21)
    {
      break;
    }

    v26 = v27[1];
    if (!v26)
    {
      goto LABEL_49;
    }
  }

  v29 = v24 + 336;
  do
  {
    v30 = *(v25 + 32);
    v31 = v30 >= VoiceProcessorVersion;
    v32 = v30 < VoiceProcessorVersion;
    if (v31)
    {
      v29 = v25;
    }

    v25 = *(v25 + 8 * v32);
  }

  while (v25);
  if (v29 != v24 + 336 && VoiceProcessorVersion >= *(v29 + 32))
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v33 = *VPStrategyMgrScope(void)::scope;
      if (!v33)
      {
LABEL_66:
        v35 = *(this + 25);
        v36 = *(v29 + 40);
        *(v29 + 40) = 0;
        v37 = *(v35 + 224);
        *(v35 + 224) = v36;
        if (v37)
        {
          (*(*v37 + 8))(v37);
          v35 = *(this + 25);
        }

        VPPropertyQueue::AssignIsSetOnVPStateForAllProperties((v35 + 96), 0);
        v38 = *(this + 25);
        v39 = *(v29 + 8);
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          v41 = v29;
          do
          {
            v40 = v41[2];
            v42 = *v40 == v41;
            v41 = v40;
          }

          while (!v42);
        }

        if (v38[41] == v29)
        {
          v38[41] = v40;
        }

        v43 = v38[42];
        --v38[43];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v43, v29);
        v44 = *(v29 + 40);
        *(v29 + 40) = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }

        operator delete(v29);
        goto LABEL_79;
      }
    }

    else
    {
      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "vpStrategyManager.mm";
      v56 = 1024;
      v57 = 329;
      v58 = 1024;
      *v59 = VoiceProcessorVersion;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found a previously cached VoiceProcessorV%u!", buf, 0x18u);
    }

    goto LABEL_66;
  }

LABEL_79:
  if (!*(*(this + 25) + 224))
  {
    goto LABEL_81;
  }

  result = 0;
LABEL_102:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void VPPropertyQueue::AssignIsSetOnVPStateForAllProperties(VPPropertyQueue *this, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 1);
  if (*this == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*(v4 + 72) != a2)
      {
        ++v6;
        *(v4 + 72) = a2;
      }

      v4 += 80;
    }

    while (v4 != v5);
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v7 = *VPStrategyMgrScope(void)::scope;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 4);
    v11 = 136316162;
    v12 = "vpPropertyQueue.h";
    v13 = 1024;
    v14 = 44;
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = v6;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d setOnVP set to %d. %d items flipped (size=%lu)", &v11, 0x28u);
  }

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
}

void VPStrategyManager::~VPStrategyManager(std::__shared_weak_count **this)
{
  VPStrategyManager::~VPStrategyManager(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v18 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136315394;
          v15 = "vpStrategyManager.mm";
          v16 = 1024;
          v17 = 208;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", &v14, 0x12u);
        }
      }
    }
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v4 = *VPStrategyMgrScope(void)::scope;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "vpStrategyManager.mm";
    v16 = 1024;
    v17 = 209;
    _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d destroyed VPStrategyManager", &v14, 0x12u);
  }

LABEL_18:
  if (_os_feature_enabled_impl())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, @"AUVoiceIODuckingLevelDefault", 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v7, this, @"AUVoiceIODuckingLevelMin", 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v8, this, @"AUVoiceIODuckingLevelMid", 0);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v9, this, @"AUVoiceIODuckingLevelMax", 0);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v10, this, @"AUVoiceIOEnableAdvancedDucking", 0);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v11, this, @"AUVoiceIODisableAdvancedDucking", 0);
  }

  v12 = this[26];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  vp::Context::~Context((this + 1));
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2725A53F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DisableAdvancedDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  LOBYTE(v8) = 0;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t EnableAdvancedDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  LOBYTE(v8) = 1;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MaxDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 30;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MidDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 20;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t MinDuckingLevelCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 10;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

uint64_t DefaultDuckingCallBack(__CFNotificationCenter *a1, VPStrategyManager *this, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v8 = 0;
  v7 = 0;
  VPStrategyManager::GetProperty(this, 1868653667, &v8, 8, &v7);
  HIDWORD(v8) = 0;
  return VPStrategyManager::SetProperty(this, 1868653667, &v8, 8uLL);
}

VPStrategyManager::VPSMImplementation **std::unique_ptr<VPStrategyManager::VPSMImplementation>::~unique_ptr[abi:ne200100](VPStrategyManager::VPSMImplementation **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VPStrategyManager::VPSMImplementation::~VPSMImplementation(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VPStrategyManager::VPSMImplementation::~VPSMImplementation(VPStrategyManager::VPSMImplementation *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *v6 = 136315394;
          *&v6[4] = "vpStrategyManager.h";
          v7 = 1024;
          v8 = 182;
          _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", v6, 0x12u);
        }
      }
    }
  }

  std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(*(this + 42));
  CADeprecated::CAMutex::~CAMutex((this + 232));
  v4 = *(this + 28);
  *(this + 28) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  CADeprecated::CAMutex::~CAMutex((this + 120));
  *v6 = this + 96;
  std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](v6);
  CADeprecated::CAMutex::~CAMutex((this + 8));
  v5 = *MEMORY[0x277D85DE8];
}

void std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<VoiceProcessorBase>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        VPPropertyItem::~VPPropertyItem((v4 - 80));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

VPStrategyManager::VPSMImplementation *std::__shared_ptr_pointer<VPStrategyManager::VPSMImplementation *,std::shared_ptr<VPStrategyManager::VPSMImplementation>::__shared_ptr_default_delete<VPStrategyManager::VPSMImplementation,VPStrategyManager::VPSMImplementation>,std::allocator<VPStrategyManager::VPSMImplementation>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VPStrategyManager::VPSMImplementation::~VPSMImplementation(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VPStrategyManager::VPSMImplementation *,std::shared_ptr<VPStrategyManager::VPSMImplementation>::__shared_ptr_default_delete<VPStrategyManager::VPSMImplementation,VPStrategyManager::VPSMImplementation>,std::allocator<VPStrategyManager::VPSMImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void VPStrategyManager::VPData::~VPData(void **this)
{
  CADeprecated::CAMutex::~CAMutex((this + 3));
  v2 = this;
  std::vector<VPPropertyQueue::QueueEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void VoiceProcessorV2::GetAndPopulateAUTuningPreset(VoiceProcessorV2 *this, int a2, int a3, char *a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v7 = this + 12288;
  v8 = 11000;
  if (a3)
  {
    v8 = 7064;
  }

  v9 = this + v8;
  v10 = 10416;
  if (a3)
  {
    v10 = 6424;
  }

  v11 = this + v10;
  v12 = *(this + 343);
  if (a3)
  {
    v13 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
  }

  else
  {
    v13 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
  }

  if (a3)
  {
    v14 = 71;
  }

  else
  {
    v14 = 64;
  }

  v15 = v13;
  v16 = v14;
  while (*v15 != a2)
  {
    v15 += 18;
    if (!--v16)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  v17 = (v15 + 2);
LABEL_16:
  v96 = 0;
  v18 = TuningPListMgr::lookupPlist_(v12, a4, 0);
  if (v18 && (Effect = TuningPListMgr::getEffect(v18, v19)) != 0 && (UnitByName = TuningPListMgr::getUnitByName(Effect, v17, v21)) != 0)
  {
    v24 = UnitByName;
    v84 = v9;
    AUPresetFromUnit = TuningPListMgr::getAUPresetFromUnit(UnitByName, v23);
    valuePtr = 0;
    Value = CFDictionaryGetValue(v24, @"bypass");
    if (Value && (v27 = Value, TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v27)))
    {
      if (CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr))
      {
        v29 = valuePtr;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v96 = v29;
    v30 = a2;
    v58 = &v11[8 * a2];
    *v58 = AUPresetFromUnit;
    if (AUPresetFromUnit)
    {
      AUPropAndParamHelper::AddItemToAUPropsList(&v84[24 * a2], 0, 0, 0, 8uLL, v58, 1);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v60 = (*v59 ? *v59 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v61 = v13;
          v62 = v14;
          while (*v61 != a2)
          {
            v61 += 18;
            if (!--v62)
            {
              v63 = 0;
              goto LABEL_151;
            }
          }

          v63 = (v61 + 2);
LABEL_151:
          v79 = "(bypassed)";
          v98 = "vpTuningHelper.cpp";
          v99 = 1024;
          v100 = 36;
          valuePtr = 136315906;
          if (!v29)
          {
            v79 = "";
          }

          v101 = 2080;
          v102 = v63;
          v103 = 2080;
          v104 = v79;
          _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found aupreset for au: %s %s", &valuePtr, 0x26u);
        }
      }

      v80 = *(this + 1588);
      if (v80 && ((v7[3593] & 1) != 0 || v7[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        while (*v13 != a2)
        {
          v13 += 18;
          if (!--v14)
          {
            v81 = 0;
            goto LABEL_163;
          }
        }

        v81 = (v13 + 2);
LABEL_163:
        v82 = "(bypassed)";
        if (!v29)
        {
          v82 = "";
        }

        CALegacyLog::log(v80, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 36, "GetAndPopulateAUTuningPreset", "found aupreset for au: %s %s", v81, v82);
      }

      v9 = v84;
      goto LABEL_167;
    }

    v9 = v84;
  }

  else
  {
    *&v11[8 * a2] = 0;
    v30 = a2;
  }

  if (a2 == 6 && !a3)
  {
    while (*v13 != 6)
    {
      v13 += 18;
      if (!--v14)
      {
        v31 = 0;
        goto LABEL_77;
      }
    }

    v31 = (v13 + 2);
LABEL_77:
    snprintf(&valuePtr, 0x80uLL, "couldn't find aupreset for experimental au: %s ", v31);
    std::string::basic_string[abi:ne200100]<0>(&v95, "vpTuningHelper.cpp");
    std::to_string(&v88, 42);
    v42 = std::string::insert(&v88, 0, ":", 1uLL);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v89, ":", 1uLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v85, "GetAndPopulateAUTuningPreset");
    if ((v87 & 0x80u) == 0)
    {
      v46 = &v85;
    }

    else
    {
      v46 = v85;
    }

    if ((v87 & 0x80u) == 0)
    {
      v47 = v87;
    }

    else
    {
      v47 = v86;
    }

    v48 = std::string::append(&v90, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = std::string::append(&v91, " ", 1uLL);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v92.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v92.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = strlen(&valuePtr);
    v53 = std::string::append(&v92, &valuePtr, v52);
    v54 = *&v53->__r_.__value_.__l.__data_;
    v94 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v94 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    if (v94 >= 0)
    {
      v56 = HIBYTE(v94);
    }

    else
    {
      v56 = __p[1];
    }

    std::string::append(&v95, v55, v56);
    if (SHIBYTE(v94) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v87 < 0)
    {
      operator delete(v85);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v57 = 15984;
LABEL_148:
    std::vector<std::string>::push_back[abi:ne200100](this + v57, &v95);
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    goto LABEL_167;
  }

  if (a3)
  {
    if ((a2 - 1) < 3 || a2 == 63)
    {
LABEL_167:
      AUPropAndParamHelper::AddItemToAUPropsList(&v9[24 * v30], 0x15u, 0, 0, 4uLL, &v96, 1);
      goto LABEL_168;
    }

    if (a2 == 56)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          valuePtr = 136315650;
          v98 = "vpTuningHelper.cpp";
          v99 = 1024;
          v100 = 48;
          v101 = 2080;
          v102 = "(UL-)KeystrokeSuppressor";
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> couldn't find aupreset for au: %s, expected to be bypassed", &valuePtr, 0x1Cu);
        }
      }

      v34 = *(this + 1588);
      if (v34 && ((v7[3593] & 1) != 0 || v7[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v34, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 48, "GetAndPopulateAUTuningPreset", "couldn't find aupreset for au: %s, expected to be bypassed", "(UL-)KeystrokeSuppressor");
      }

      goto LABEL_167;
    }
  }

  v37 = a2 != 28 && a2 != 61 && a2 != 70;
  if (!a3)
  {
    v37 = a2 != 0;
  }

  if (a2 == 1)
  {
    v38 = a3;
  }

  else
  {
    v38 = 1;
  }

  if (a2 == 24)
  {
    v39 = a3;
  }

  else
  {
    v39 = 1;
  }

  if (a2 == 6)
  {
    v40 = a3;
  }

  else
  {
    v40 = 0;
  }

  if ((v40 & 1) == 0 && v39 && v38 && v37)
  {
    while (*v13 != a2)
    {
      v13 += 18;
      if (!--v14)
      {
        v41 = 0;
        goto LABEL_120;
      }
    }

    v41 = (v13 + 2);
LABEL_120:
    snprintf(&valuePtr, 0x80uLL, "couldn't find aupreset for au: %s ", v41);
    std::string::basic_string[abi:ne200100]<0>(&v95, "vpTuningHelper.cpp");
    std::to_string(&v88, 71);
    v64 = std::string::insert(&v88, 0, ":", 1uLL);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v89, ":", 1uLL);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v85, "GetAndPopulateAUTuningPreset");
    if ((v87 & 0x80u) == 0)
    {
      v68 = &v85;
    }

    else
    {
      v68 = v85;
    }

    if ((v87 & 0x80u) == 0)
    {
      v69 = v87;
    }

    else
    {
      v69 = v86;
    }

    v70 = std::string::append(&v90, v68, v69);
    v71 = *&v70->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v91, " ", 1uLL);
    v73 = *&v72->__r_.__value_.__l.__data_;
    v92.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v92.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    v74 = strlen(&valuePtr);
    v75 = std::string::append(&v92, &valuePtr, v74);
    v76 = *&v75->__r_.__value_.__l.__data_;
    v94 = v75->__r_.__value_.__r.__words[2];
    *__p = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    if (v94 >= 0)
    {
      v77 = __p;
    }

    else
    {
      v77 = __p[0];
    }

    if (v94 >= 0)
    {
      v78 = HIBYTE(v94);
    }

    else
    {
      v78 = __p[1];
    }

    std::string::append(&v95, v77, v78);
    if (SHIBYTE(v94) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v87 < 0)
    {
      operator delete(v85);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v57 = 15984;
    if (a3)
    {
      v57 = 15960;
    }

    goto LABEL_148;
  }

LABEL_168:
  v83 = *MEMORY[0x277D85DE8];
}

void sub_2725A6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VoiceProcessorV2::GetAndPopulateAuxAUTuningPreset(VoiceProcessorV2 *this, int a2, char *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  v7 = 10984;
  if (a2)
  {
    v7 = 7048;
  }

  CFStringGetCString(*(this + v7), buffer, 64, 0x600u);
  v8 = TuningPListMgr::lookupPlist_(*(this + 343), a3, 0);
  if (v8 && (Effect = TuningPListMgr::getEffect(v8, v9)) != 0 && (UnitByName = TuningPListMgr::getUnitByName(Effect, buffer, v11)) != 0 && (AUPresetFromUnit = TuningPListMgr::getAUPresetFromUnit(UnitByName, v13)) != 0)
  {
    v14 = 10928;
    if (a2)
    {
      v14 = 6992;
    }

    AUPropAndParamHelper::AddItemToAUPropsList((this + v14), 0, 0, 0, 8uLL, &AUPresetFromUnit, 1);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v15 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v16 = (*v15 ? *v15 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "vpTuningHelper.cpp";
        v25 = 1024;
        v26 = 103;
        v27 = 2080;
        v28 = buffer;
        _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found aupreset for aux au: %s", buf, 0x1Cu);
      }
    }

    v17 = *(this + 1588);
    if (v17 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 103, "GetAndPopulateAuxAUTuningPreset", "found aupreset for aux au: %s");
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v18 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v24 = "vpTuningHelper.cpp";
        v25 = 1024;
        v26 = 106;
        v27 = 2080;
        v28 = buffer;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> couldn't find aupreset for aux au: %s", buf, 0x1Cu);
      }
    }

    v20 = *(this + 1588);
    if (v20 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 106, "GetAndPopulateAuxAUTuningPreset", "couldn't find aupreset for aux au: %s");
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t VoiceProcessorV2::LoadContinuityCapturePresetOverrides(VoiceProcessorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, BOOL a9)
{
  v91 = *MEMORY[0x277D85DE8];
  memset(&__str, 0, sizeof(__str));
  std::string::append(&__str, "gen-vp", 6uLL);
  strcpy(__s, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  v14 = std::string::insert(&v89, 0, "-", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v14->__r_.__value_.__l + 2);
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = *__p;
  }

  if (__p[23] >= 0)
  {
    v17 = __p[23];
  }

  else
  {
    v17 = *&__p[8];
  }

  std::string::append(&__str, v16, v17);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v18 = bswap32(a3);
  *__s = v18;
  if ((v18 - 32) > 0x5E || ((v18 >> 8) - 32) > 0x5E || ((v18 << 8 >> 24) - 32) > 0x5E || ((v18 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v89, a3);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  }

  v19 = std::string::insert(&v89, 0, "-", 1uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v19->__r_.__value_.__l + 2);
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = *__p;
  }

  if (__p[23] >= 0)
  {
    v22 = __p[23];
  }

  else
  {
    v22 = *&__p[8];
  }

  std::string::append(&__str, v21, v22);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  strcpy(__s, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  v23 = std::string::insert(&v89, 0, "-", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v23->__r_.__value_.__l + 2);
  *__p = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = *__p;
  }

  if (__p[23] >= 0)
  {
    v26 = __p[23];
  }

  else
  {
    v26 = *&__p[8];
  }

  std::string::append(&__str, v25, v26);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  strcpy(__s, "evil");
  std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  v27 = std::string::insert(&v89, 0, "-", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v27->__r_.__value_.__l + 2);
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = *__p;
  }

  if (__p[23] >= 0)
  {
    v30 = __p[23];
  }

  else
  {
    v30 = *&__p[8];
  }

  std::string::append(&__str, v29, v30);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v31 = bswap32(a4);
  *__s = v31;
  if ((v31 - 32) > 0x5E || ((v31 >> 8) - 32) > 0x5E || ((v31 << 8 >> 24) - 32) > 0x5E || ((v31 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v89, a4);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  }

  v32 = std::string::insert(&v89, 0, "-", 1uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v32->__r_.__value_.__l + 2);
  *__p = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = *__p;
  }

  if (__p[23] >= 0)
  {
    v35 = __p[23];
  }

  else
  {
    v35 = *&__p[8];
  }

  std::string::append(&__str, v34, v35);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::append(&__str, "-ulnk", 5uLL);
  v36 = bswap32(a5);
  *__s = v36;
  v37 = v36 - 32;
  if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v89, a5);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v89, __s);
  }

  v38 = std::string::insert(&v89, 0, "-", 1uLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v38->__r_.__value_.__l + 2);
  *__p = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = *__p;
  }

  if (__p[23] >= 0)
  {
    v41 = __p[23];
  }

  else
  {
    v41 = *&__p[8];
  }

  std::string::append(&__str, v40, v41);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v43 = TuningPListMgr::lookupPlist_(*(this + 343), p_str, 1u);
  *__s = v43;
  v44 = &unk_28133C000;
  if (v43)
  {
    LODWORD(Tuning) = 0;
    goto LABEL_84;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &__str;
  }

  else
  {
    v49 = __str.__r_.__value_.__r.__words[0];
  }

  Tuning = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v49, 1u);
  if (!Tuning)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &__str;
    }

    else
    {
      v52 = __str.__r_.__value_.__r.__words[0];
    }

    v43 = TuningPListMgr::lookupPlist_(*(this + 343), v52, 1u);
    *__s = v43;
    if (!v43)
    {
      goto LABEL_195;
    }

    goto LABEL_84;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v50 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
  {
    v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *__p = v36;
      if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v89, a5);
      }

      else
      {
        __p[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v89, __p);
      }

      v69 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v70 = 71;
      while (*v69 != a2)
      {
        v69 += 18;
        if (!--v70)
        {
          v71 = 0;
          goto LABEL_166;
        }
      }

      v71 = v69 + 2;
LABEL_166:
      v72 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &__str;
      }

      v73 = &v89;
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v89.__r_.__value_.__r.__words[0];
      }

      *__p = 136316162;
      *&__p[4] = "vpTuningHelper.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 250;
      *&__p[18] = 2080;
      *&__p[20] = v73;
      v85 = 2080;
      v86 = v72;
      v87 = 2080;
      v88 = v71;
      _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", __p, 0x30u);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }
  }

  v74 = *(this + 1588);
  if (v74 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v82 = VPLogScope(void)::scope;
    LODWORD(v89.__r_.__value_.__l.__data_) = v36;
    if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
    {
      std::to_string(__p, a5);
    }

    else
    {
      v89.__r_.__value_.__s.__data_[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, &v89);
    }

    v75 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v76 = 71;
    while (*v75 != a2)
    {
      v75 += 18;
      if (!--v76)
      {
        v77 = 0;
        goto LABEL_188;
      }
    }

    v77 = (v75 + 2);
LABEL_188:
    v78 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &__str;
    }

    v79 = __p;
    if (__p[23] < 0)
    {
      v79 = *__p;
    }

    CALegacyLog::log(v74, 2, v82, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 250, "LoadContinuityCapturePresetOverrides", "could not find '%s' override preset %s for %s!", v79, v78, v77);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v43 = *__s;
  v44 = &unk_28133C000;
  if (*__s)
  {
LABEL_84:
    CFRetain(v43);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * a2 + 883, 0, 0, 0, 8uLL, __s, 1);
    CFRelease(*__s);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v46 = v44;
    v47 = v44[115];
    if (v47 && CALegacyLog::LogEnabled(4, v47, 0))
    {
      v48 = (*v47 ? *v47 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *__p = v36;
        if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v89, a5);
        }

        else
        {
          __p[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v89, __p);
        }

        v53 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v54 = 71;
        while (*v53 != a2)
        {
          v53 += 18;
          if (!--v54)
          {
            v55 = 0;
            goto LABEL_125;
          }
        }

        v55 = v53 + 2;
LABEL_125:
        v56 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &__str;
        }

        v57 = &v89;
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v57 = v89.__r_.__value_.__r.__words[0];
        }

        *__p = 136316162;
        *&__p[4] = "vpTuningHelper.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 263;
        *&__p[18] = 2080;
        *&__p[20] = v57;
        v85 = 2080;
        v86 = v56;
        v87 = 2080;
        v88 = v55;
        _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", __p, 0x30u);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }
      }
    }

    v58 = *(this + 1588);
    if (v58 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = v46[115];
      LODWORD(v89.__r_.__value_.__l.__data_) = v36;
      if (v37 > 0x5E || (SBYTE1(v36) - 32) > 0x5E || (SBYTE2(v36) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(__p, a5);
      }

      else
      {
        v89.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, &v89);
      }

      v60 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v61 = 71;
      while (*v60 != a2)
      {
        v60 += 18;
        if (!--v61)
        {
          v62 = 0;
          goto LABEL_147;
        }
      }

      v62 = (v60 + 2);
LABEL_147:
      v63 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &__str;
      }

      v64 = __p;
      if (__p[23] < 0)
      {
        v64 = *__p;
      }

      CALegacyLog::log(v58, 4, v59, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 263, "LoadContinuityCapturePresetOverrides", "found '%s' override preset %s for %s", v64, v63, v62);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v65 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v66 = 71;
    Tuning = Tuning;
    while (*v65 != a2)
    {
      v65 += 18;
      if (!--v66)
      {
        v67 = 0;
        goto LABEL_158;
      }
    }

    v67 = (v65 + 2);
LABEL_158:
    std::string::basic_string[abi:ne200100]<0>(__p, v67);
    v89.__r_.__value_.__r.__words[0] = __p;
    v68 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, __p);
    std::string::operator=((v68 + 5), &__str);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_195:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v80 = *MEMORY[0x277D85DE8];
  return Tuning;
}

void sub_2725A742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(VoiceProcessorV2 *this, const char *a2, char *a3, const char *a4)
{
  v5 = a2;
  v641 = *MEMORY[0x277D85DE8];
  v621 = this + 15881;
  TuningInSubdirs = 0;
  if (!a2)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v7 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 282;
        *&buf[18] = 2080;
        *&buf[20] = "./";
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> LoadAUDataPreset(): Using '%s' as sub directory", buf, 0x1Cu);
      }
    }

    v9 = *(this + 1588);
    v5 = "./";
    if (v9 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v9, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 282, "LoadAUDataPreset", "LoadAUDataPreset(): Using '%s' as sub directory", "./");
    }
  }

  if (!a3)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 286;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> LoadAUDataPreset(): <INFO> file prefix is NULL!", buf, 0x12u);
      }
    }

    v12 = *(this + 1588);
    if (v12 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v12, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 286, "LoadAUDataPreset", "LoadAUDataPreset(): <INFO> file prefix is NULL!");
    }
  }

  v630 = CFStringCreateWithCString(0, "./", 0x600u);
  v631 = 1;
  v627 = this;
  v628 = CFStringCreateWithCString(0, v5, 0x600u);
  v629 = 1;
  v622 = (this + 4688);
  v13 = *(this + 586);
  if ((v13 & 0x80000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626D326Eu);
    v14 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, p_str, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v14, buf, 4u, 1u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 398;
          _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to find Beam forming AU data presets!! Disabling beam former!", buf, 0x12u);
        }
      }

      v18 = *(this + 1588);
      if (v18 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v18, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 398, "LoadAUDataPreset", "fail to find Beam forming AU data presets!! Disabling beam former!");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__str;
      }

      else
      {
        v19 = __str.__r_.__value_.__r.__words[0];
      }

      v20 = TuningPListMgr::lookupPlist_(*(this + 343), v19, 1u);
      v638.__r_.__value_.__r.__words[0] = v20;
      if (v20)
      {
        CFRetain(v20);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 976, 0, 0, 0, 8uLL, &v638, 0);
        CFRelease(v638.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v21 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 413;
            *&buf[18] = 2080;
            *&buf[20] = v23;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BF";
            _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found AU data preset: %s for %s", buf, 0x26u);
          }
        }

        v24 = *(this + 1588);
        if (v24 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v25 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__str;
          }

          CALegacyLog::log(v24, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 413, "LoadAUDataPreset", "found AU data preset: %s for %s", v25, "(UL-)BF");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(UL-)BF");
        __s.__r_.__value_.__r.__words[0] = buf;
        v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf);
        std::string::operator=((v26 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 418;
            *&buf[18] = 2080;
            *&buf[20] = v29;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BF";
            _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> : fail to load AU data preset: %s for %s! Disabling beam former!", buf, 0x26u);
          }
        }

        v30 = *(this + 1588);
        if (v30 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v31 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__str;
          }

          CALegacyLog::log(v30, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 418, "LoadAUDataPreset", ": fail to load AU data preset: %s for %s! Disabling beam former!", v31, "(UL-)BF");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v13 = *v622;
  }

  if ((v13 & 0x100000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626D6E66u);
    v32 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &__str;
    }

    else
    {
      v33 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v33, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v32, buf, 4u, 1u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v34 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v35 = (*v34 ? *v34 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 431;
          *&buf[18] = 2080;
          *&buf[20] = "(UL-)BeamNF";
          _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to find %s data presets!! Disabling AU.", buf, 0x1Cu);
        }
      }

      v36 = *(this + 1588);
      if (v36 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v36, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 431, "LoadAUDataPreset", "fail to find %s data presets!! Disabling AU.", "(UL-)BeamNF");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__str;
      }

      else
      {
        v37 = __str.__r_.__value_.__r.__words[0];
      }

      v38 = TuningPListMgr::lookupPlist_(*(this + 343), v37, 1u);
      v638.__r_.__value_.__r.__words[0] = v38;
      if (v38)
      {
        CFRetain(v38);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 979, 0, 0, 0, 8uLL, &v638, 0);
        CFRelease(v638.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v39 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 445;
            *&buf[18] = 2080;
            *&buf[20] = v41;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNF";
            _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found AU data preset: %s for %s", buf, 0x26u);
          }
        }

        v42 = *(this + 1588);
        if (v42 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v43 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__str;
          }

          CALegacyLog::log(v42, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 445, "LoadAUDataPreset", "found AU data preset: %s for %s", v43, "(UL-)BeamNF");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(UL-)BeamNF");
        __s.__r_.__value_.__r.__words[0] = buf;
        v44 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf);
        std::string::operator=((v44 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v45 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v46 = (*v45 ? *v45 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &__str;
            }

            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 449;
            *&buf[18] = 2080;
            *&buf[20] = v47;
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNF";
            _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! Disabling AU!", buf, 0x26u);
          }
        }

        v48 = *(this + 1588);
        if (v48 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v49 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &__str;
          }

          CALegacyLog::log(v48, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 449, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! Disabling AU!", v49, "(UL-)BeamNF");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v13 = *v622;
  }

  if ((v13 & 0x200000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x626E6673u);
    v50 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &__str;
    }

    else
    {
      v51 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v51, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v50, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v52 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 469;
          *&buf[18] = 2080;
          *&buf[20] = "BeamNFSel";
          *&buf[28] = 2080;
          *&buf[30] = "(UL-)BeamNFSelector";
          _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! Continuing anyway...", buf, 0x26u);
        }
      }

      v54 = *(this + 1588);
      if (v54 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v54, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 469, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! Continuing anyway...", "BeamNFSel", "(UL-)BeamNFSelector");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &__str;
      }

      else
      {
        v55 = __str.__r_.__value_.__r.__words[0];
      }

      v56 = TuningPListMgr::lookupPlist_(*(this + 343), v55, 2u);
      __s.__r_.__value_.__r.__words[0] = v56;
      if (v56)
      {
        CFRetain(v56);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 982, 0x11B2u, 0, 0, 8uLL, &__s, 1);
        CFRelease(__s.__r_.__value_.__l.__data_);
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v57 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v58 = (*v57 ? *v57 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 481;
            *&buf[18] = 2080;
            *&buf[20] = "BeamSystemNoiseProfile";
            *&buf[28] = 2080;
            *&buf[30] = "(UL-)BeamNFSelector";
            _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fail to load AU data preset: %s for %s! not disabling AU!", buf, 0x26u);
          }
        }

        v59 = *(this + 1588);
        if (v59 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v59, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 481, "LoadAUDataPreset", "fail to load AU data preset: %s for %s! not disabling AU!", "BeamSystemNoiseProfile", "(UL-)BeamNFSelector");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (TuningInSubdirs)
  {
    (*(*this + 320))(this);
    VPChannelConfig::SetChConfig((this + 456), 2, "top or top front", 1u);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = *(this + 108);
    v64 = *(this + 114);
    do
    {
      if (((1 << v60) & v63) == 0 || ((1 << v60) & v64) == 0)
      {
        v61 += ((v64 | v63) >> v60) & 1;
      }

      else
      {
        v62 |= 1 << v61++;
      }

      ++v60;
    }

    while (v60 != 6);
    *(this + 107) = v62;
  }

  v66 = *v622;
  if ((*v622 & 0x2000000000) != 0)
  {
    if ((v66 & 0x800) != 0)
    {
      v67 = 11;
    }

    else
    {
      v67 = 37;
    }
  }

  else
  {
    if ((v66 & 0x800) == 0)
    {
      goto LABEL_257;
    }

    v67 = 11;
  }

  v68 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
  v69 = 71;
  while (*v68 != v67)
  {
    v68 += 18;
    if (!--v69)
    {
      v70 = 0;
      goto LABEL_230;
    }
  }

  v70 = v68[1];
LABEL_230:
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, v70);
  v71 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &__str;
  }

  else
  {
    v72 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v72, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v71, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v73 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v74 = (*v73 ? *v73 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 513;
        _os_log_impl(&dword_2724B4000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find BeamItFD/TD AU data plist!\n", buf, 0x12u);
      }
    }

    v75 = *(this + 1588);
    if (v75 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 513, "LoadAUDataPreset", "failed to find BeamItFD/TD AU data plist!\n");
    }
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &__str;
    }

    else
    {
      v76 = __str.__r_.__value_.__r.__words[0];
    }

    v77 = TuningPListMgr::lookupPlist_(*(this + 343), v76, 2u);
    *buf = v77;
    if (v77)
    {
      CFRetain(v77);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v67 + 883, 0x1216u, 0, 0, 8uLL, buf, 1);
      CFRelease(*buf);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v66 = *v622;
LABEL_257:
  if ((v66 & 0x1000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x626D7464u);
    v78 = std::string::append(buf, "-nfn", 4uLL);
    v79 = *&v78->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v80 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &__str;
    }

    else
    {
      v81 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v81, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v80, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v82 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v83 = (*v82 ? *v82 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 535;
          _os_log_impl(&dword_2724B4000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NFN AU data plist!\n", buf, 0x12u);
        }
      }

      v84 = *(this + 1588);
      if (v84 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v84, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 535, "LoadAUDataPreset", "failed to find NFN AU data plist!\n");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &__str;
      }

      else
      {
        v85 = __str.__r_.__value_.__r.__words[0];
      }

      v86 = TuningPListMgr::lookupPlist_(*(this + 343), v85, 2u);
      *buf = v86;
      if (v86)
      {
        CFRetain(v86);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 919, 0x1216u, 0, 0, 8uLL, buf, 1);
        CFRelease(*buf);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v66 = *v622;
  }

  if ((v66 & 2) != 0)
  {
    v87 = (this + 8);
    if (*(this + 31) < 0)
    {
      v87 = *v87;
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x61756678u);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__str, 0x66697266u);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v614 = v87;
    if (a3)
    {
      CFStringAppendFormat(Mutable, 0, @"%s/%s/%s/%s-%s-%s-%s.plist");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%s/%s/%s/%s-%s-%s.plist");
    }

    v89 = 0;
    *buf = Mutable;
    buf[8] = 1;
    do
    {
      v90 = v89;
      v91 = dword_2727568C0[v89++];
      if ((*(v622 + ((v91 >> 3) & 0x1FFFFFF8)) >> v91))
      {
        v92 = 0;
        if (v89 <= 1)
        {
          v93 = 1;
        }

        else
        {
          v93 = v89;
        }

        v94 = 1;
        do
        {
          if ((*(this + 114) >> v92))
          {
            if (v94 == v93)
            {
              goto LABEL_304;
            }

            ++v94;
          }

          ++v92;
        }

        while (v92 != 32);
        v92 = 33;
LABEL_304:
        v95 = this + 24 * v90 + 8768;
        *(v95 + 4) = v92;
        v96 = *buf;
        if (*buf != *v95)
        {
          if (*v95 && (v95[8] & 1) != 0)
          {
            CFRelease(*v95);
            v96 = *buf;
          }

          *v95 = v96;
          v97 = buf[8];
          v95[8] = buf[8];
          if (v97 == 1 && v96)
          {
            CFRetain(v96);
          }
        }
      }
    }

    while (v89 != 4);
    CACFString::~CACFString(buf);
  }

  v98 = *(this + 1108);
  if ((v98 & 0x80000000000) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6C6B6972u);
    v99 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = &__str;
    }

    else
    {
      v100 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v100, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v99, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v101 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v102 = (*v101 ? *v101 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 596;
          _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find TweakaLeakIR biquad table plist, coefficients will be calculated at runtime instead\n", buf, 0x12u);
        }
      }

      v103 = *(this + 1588);
      if (v103 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v103, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 596, "LoadAUDataPreset", "failed to find TweakaLeakIR biquad table plist, coefficients will be calculated at runtime instead\n");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = &__str;
      }

      else
      {
        v104 = __str.__r_.__value_.__r.__words[0];
      }

      v105 = TuningPListMgr::lookupPlist_(*(this + 343), v104, 2u);
      *buf = v105;
      if (v105)
      {
        CFRetain(v105);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1504, 0x22C4u, 0, 0, 8uLL, buf, 1);
        CFRelease(*buf);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v98 = *(this + 1108);
  }

  if ((v98 & 0x100000000000000) != 0)
  {
    memset(buf, 0, 24);
    if (a3)
    {
      v106 = strlen(a3);
      std::string::append(buf, a3, v106);
      std::string::append(buf, "-", 1uLL);
    }

    std::string::append(buf, "vp-", 3uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x61756678u);
    v108 = strlen(v107);
    std::string::append(buf, &__s, v108);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73707033u);
    v110 = strlen(v109);
    std::string::append(buf, &__s, v110);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v112 = strlen(v111);
    std::string::append(buf, &__s, v112);
    __str = *buf;
    v113 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &__str;
    }

    else
    {
      v114 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v114, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v113, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (!TuningInSubdirs)
    {
      goto LABEL_372;
    }

    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x73707033u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = *buf;
    v115 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    v116 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v116, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v115, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v117 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v118 = (*v117 ? *v117 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 626;
          _os_log_impl(&dword_2724B4000, v118, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 AU data plist!\n", buf, 0x12u);
        }
      }

      v119 = *(this + 1588);
      if (v119 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v119, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 626, "LoadAUDataPreset", "failed to find SPV3 AU data plist!\n");
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v638.__r_.__value_.__r.__words[0] = &__s;
      v120 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
      std::string::__assign_external((v120 + 56), "failed to find SPV3 AU data plist", 0x21uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_372:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &__str;
      }

      else
      {
        v121 = __str.__r_.__value_.__r.__words[0];
      }

      v122 = TuningPListMgr::lookupPlist_(*(this + 343), v121, 2u);
      cf.__r_.__value_.__r.__words[0] = v122;
      if (v122)
      {
        CFRetain(v122);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA03u, 0, 0, 8uLL, &cf, 1);
        CFRelease(cf.__r_.__value_.__l.__data_);
LABEL_380:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v98 = *(this + 1108);
        goto LABEL_383;
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v638.__r_.__value_.__r.__words[0] = &__s;
      v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
      std::string::__assign_external((v123 + 56), "failed to get SPV3 plistDictionary", 0x22uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
    goto LABEL_380;
  }

LABEL_383:
  if ((v98 & 0x200000000000000) == 0)
  {
    goto LABEL_423;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(&__str, a3, 0x73707033u, "hf");
  v124 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &__str;
  }

  else
  {
    v125 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v125, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v124, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(buf, a3, 0x73707033u, "hf");
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = *buf;
    v126 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    v127 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v127, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v126, buf, 4u, 2u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v128 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v129 = (*v128 ? *v128 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 671;
          _os_log_impl(&dword_2724B4000, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 HF AU data plist!\n", buf, 0x12u);
        }
      }

      v130 = *(this + 1588);
      if (v130 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v130, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 671, "LoadAUDataPreset", "failed to find SPV3 HF AU data plist!\n");
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
      v638.__r_.__value_.__r.__words[0] = &__s;
      v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
      std::string::__assign_external((v131 + 56), "failed to find SPV3 HF AU data plist", 0x24uLL);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_419:
      CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
      goto LABEL_420;
    }
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = &__str;
  }

  else
  {
    v132 = __str.__r_.__value_.__r.__words[0];
  }

  v133 = TuningPListMgr::lookupPlist_(*(this + 343), v132, 2u);
  cf.__r_.__value_.__r.__words[0] = v133;
  if (!v133)
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v638.__r_.__value_.__r.__words[0] = &__s;
    v134 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
    std::string::__assign_external((v134 + 56), "failed to get SPV3 HF plistDictionary", 0x25uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    goto LABEL_419;
  }

  CFRetain(v133);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1546, 0xFA03u, 0, 0, 8uLL, &cf, 1);
  CFRelease(cf.__r_.__value_.__l.__data_);
LABEL_420:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v98 = *(this + 1108);
LABEL_423:
  if ((v98 & 0x400000000000000) == 0)
  {
    goto LABEL_462;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(&__str, a3, 0x73707033u, "lf");
  v135 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = &__str;
  }

  else
  {
    v136 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v136, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v135, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (!TuningInSubdirs)
  {
    goto LABEL_452;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(buf, a3, 0x73707033u, "lf");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = *buf;
  v137 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  v138 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v138, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v137, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v139 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v140 = (*v139 ? *v139 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 716;
        _os_log_impl(&dword_2724B4000, v140, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find SPV3 LF AU data plist!\n", buf, 0x12u);
      }
    }

    v141 = *(this + 1588);
    if (v141 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v141, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 716, "LoadAUDataPreset", "failed to find SPV3 LF AU data plist!\n");
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v638.__r_.__value_.__r.__words[0] = &__s;
    v142 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
    std::string::__assign_external((v142 + 56), "failed to find SPV3 LF AU data plist", 0x24uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_452:
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = &__str;
    }

    else
    {
      v143 = __str.__r_.__value_.__r.__words[0];
    }

    v144 = TuningPListMgr::lookupPlist_(*(this + 343), v143, 2u);
    cf.__r_.__value_.__r.__words[0] = v144;
    if (v144)
    {
      CFRetain(v144);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1549, 0xFA03u, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf.__r_.__value_.__l.__data_);
      goto LABEL_460;
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    std::string::basic_string[abi:ne200100]<0>(&__s, "vp_spp_error");
    v638.__r_.__value_.__r.__words[0] = &__s;
    v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, &__s);
    std::string::__assign_external((v145 + 56), "failed to get SPV3 LF plistDictionary", 0x25uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_460:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_462:
  v146 = *v622;
  if ((*v622 & 0x10000000000000) == 0)
  {
    goto LABEL_509;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x6F636E73u);
  v147 = std::string::append(buf, "-fctm", 5uLL);
  v148 = *&v147->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v148;
  v147->__r_.__value_.__l.__size_ = 0;
  v147->__r_.__value_.__r.__words[2] = 0;
  v147->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v149 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v150 = &__str;
  }

  else
  {
    v150 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v150, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v149, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v151 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v152 = (*v151 ? *v151 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 752;
        _os_log_impl(&dword_2724B4000, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find fixed NS AU data plist! Bypassing NS!\n", buf, 0x12u);
      }
    }

    v153 = *(this + 1588);
    if (v153 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v153, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 752, "LoadAUDataPreset", "failed to find fixed NS AU data plist! Bypassing NS!\n");
    }

LABEL_505:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1039, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_506;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v154 = &__str;
  }

  else
  {
    v154 = __str.__r_.__value_.__r.__words[0];
  }

  v155 = TuningPListMgr::lookupPlist_(*(this + 343), v154, 2u);
  __s.__r_.__value_.__r.__words[0] = v155;
  if (!v155)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v156 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v157 = (*v156 ? *v156 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 763;
        _os_log_impl(&dword_2724B4000, v157, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing NS!\n", buf, 0x12u);
      }
    }

    v158 = *(this + 1588);
    if (v158 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v158, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 763, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing NS!\n");
    }

    goto LABEL_505;
  }

  CFRetain(v155);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1039, 0x11A8u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_506:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v622;
LABEL_509:
  if ((v146 & 0x200000000000000) == 0)
  {
    goto LABEL_554;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x64727662u);
  v159 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v160 = &__str;
  }

  else
  {
    v160 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v160, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v159, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v161 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v162 = (*v161 ? *v161 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 777;
        _os_log_impl(&dword_2724B4000, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find reverb suppressor AU data plist! Bypassing Reverb Suppressor!\n", buf, 0x12u);
      }
    }

    v163 = *(this + 1588);
    if (v163 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v163, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 777, "LoadAUDataPreset", "failed to find reverb suppressor AU data plist! Bypassing Reverb Suppressor!\n");
    }

LABEL_550:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1054, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_551;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v164 = &__str;
  }

  else
  {
    v164 = __str.__r_.__value_.__r.__words[0];
  }

  v165 = TuningPListMgr::lookupPlist_(*(this + 343), v164, 2u);
  __s.__r_.__value_.__r.__words[0] = v165;
  if (!v165)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v166 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v167 = (*v166 ? *v166 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 789;
        _os_log_impl(&dword_2724B4000, v167, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Reverb Suppressor!\n", buf, 0x12u);
      }
    }

    v168 = *(this + 1588);
    if (v168 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v168, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 789, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Reverb Suppressor!\n");
    }

    goto LABEL_550;
  }

  CFRetain(v165);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1054, 0x13ECu, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_551:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v622;
LABEL_554:
  if ((v146 & 0x20) == 0)
  {
    goto LABEL_599;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x73656E73u);
  v169 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v170 = &__str;
  }

  else
  {
    v170 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v170, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v169, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v171 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v172 = (*v171 ? *v171 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 802;
        _os_log_impl(&dword_2724B4000, v172, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find mic sense AU data plist! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v173 = *(this + 1588);
    if (v173 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v173, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 802, "LoadAUDataPreset", "failed to find mic sense AU data plist! Bypassing Mic Sense!\n");
    }

LABEL_595:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 898, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_596;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v174 = &__str;
  }

  else
  {
    v174 = __str.__r_.__value_.__r.__words[0];
  }

  v175 = TuningPListMgr::lookupPlist_(*(this + 343), v174, 2u);
  __s.__r_.__value_.__r.__words[0] = v175;
  if (!v175)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v176 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v177 = (*v176 ? *v176 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 813;
        _os_log_impl(&dword_2724B4000, v177, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v178 = *(this + 1588);
    if (v178 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v178, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 813, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Mic Sense!\n");
    }

    goto LABEL_595;
  }

  CFRetain(v175);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 898, 0x3E8u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_596:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v146 = *v622;
LABEL_599:
  if ((v146 & 0x8000000000000) == 0)
  {
    goto LABEL_661;
  }

  memset(&__str, 0, sizeof(__str));
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&cf, a3, 0x73656E73u);
  v179 = std::string::append(&cf, "-fctm-", 6uLL);
  v180 = *&v179->__r_.__value_.__l.__data_;
  v638.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
  *&v638.__r_.__value_.__l.__data_ = v180;
  v179->__r_.__value_.__l.__size_ = 0;
  v179->__r_.__value_.__r.__words[2] = 0;
  v179->__r_.__value_.__r.__words[0] = 0;
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(v634, **(this + 294));
  v181 = strlen(v634);
  v182 = std::string::append(&v638, v634, v181);
  v183 = *&v182->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v183;
  v182->__r_.__value_.__l.__size_ = 0;
  v182->__r_.__value_.__r.__words[2] = 0;
  v182->__r_.__value_.__r.__words[0] = 0;
  v184 = std::string::append(&__s, "-", 1uLL);
  v185 = *&v184->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v184->__r_.__value_.__l + 2);
  *buf = v185;
  v184->__r_.__value_.__l.__size_ = 0;
  v184->__r_.__value_.__r.__words[2] = 0;
  v184->__r_.__value_.__r.__words[0] = 0;
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(v633, **(this + 297));
  v186 = strlen(v633);
  v187 = std::string::append(buf, v633, v186);
  v188 = v187->__r_.__value_.__r.__words[0];
  v635[0] = v187->__r_.__value_.__l.__size_;
  *(v635 + 7) = *(&v187->__r_.__value_.__r.__words[1] + 7);
  v189 = HIBYTE(v187->__r_.__value_.__r.__words[2]);
  v187->__r_.__value_.__l.__size_ = 0;
  v187->__r_.__value_.__r.__words[2] = 0;
  v187->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v188;
  __str.__r_.__value_.__l.__size_ = v635[0];
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v635 + 7);
  *(&__str.__r_.__value_.__s + 23) = v189;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v638.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  v190 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v191 = &__str;
  }

  else
  {
    v191 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v191, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v190, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (!TuningInSubdirs)
  {
    goto LABEL_638;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(buf, a3, 0x73656E73u);
  v192 = std::string::append(buf, "-fctm", 5uLL);
  v193 = v192->__r_.__value_.__r.__words[0];
  __s.__r_.__value_.__r.__words[0] = v192->__r_.__value_.__l.__size_;
  *(__s.__r_.__value_.__r.__words + 7) = *(&v192->__r_.__value_.__r.__words[1] + 7);
  v194 = HIBYTE(v192->__r_.__value_.__r.__words[2]);
  v192->__r_.__value_.__l.__size_ = 0;
  v192->__r_.__value_.__r.__words[2] = 0;
  v192->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v193;
  __str.__r_.__value_.__l.__size_ = __s.__r_.__value_.__r.__words[0];
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(__s.__r_.__value_.__r.__words + 7);
  *(&__str.__r_.__value_.__s + 23) = v194;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v195 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  v196 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v196, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v195, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v197 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v198 = (*v197 ? *v197 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 840;
        _os_log_impl(&dword_2724B4000, v198, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find mic sense AU data plist! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v199 = *(this + 1588);
    if (v199 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v199, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 840, "LoadAUDataPreset", "failed to find mic sense AU data plist! Bypassing Mic Sense!\n");
    }
  }

  else
  {
LABEL_638:
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v200 = &__str;
    }

    else
    {
      v200 = __str.__r_.__value_.__r.__words[0];
    }

    v201 = TuningPListMgr::lookupPlist_(*(this + 343), v200, 2u);
    __s.__r_.__value_.__r.__words[0] = v201;
    if (v201)
    {
      CFRetain(v201);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1036, 0x3E8u, 0, 0, 8uLL, &__s, 1);
      CFRelease(__s.__r_.__value_.__l.__data_);
      goto LABEL_659;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v202 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v203 = (*v202 ? *v202 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 851;
        _os_log_impl(&dword_2724B4000, v203, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing Mic Sense!\n", buf, 0x12u);
      }
    }

    v204 = *(this + 1588);
    if (v204 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v204, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 851, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing Mic Sense!\n");
    }
  }

  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1036, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_659:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_661:
  if ((*(this + 8870) & 8) == 0)
  {
    goto LABEL_705;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x63706D31u);
  v205 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v206 = &__str;
  }

  else
  {
    v206 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v206, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v205, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v207 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v208 = (*v207 ? *v207 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 863;
        _os_log_impl(&dword_2724B4000, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find cpms AU data plist! Bypassing CPMS!\n", buf, 0x12u);
      }
    }

    v209 = *(this + 1588);
    if (v209 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v209, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 863, "LoadAUDataPreset", "failed to find cpms AU data plist! Bypassing CPMS!\n");
    }
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v210 = &__str;
    }

    else
    {
      v210 = __str.__r_.__value_.__r.__words[0];
    }

    v211 = TuningPListMgr::lookupPlist_(*(this + 343), v210, 2u);
    __s.__r_.__value_.__r.__words[0] = v211;
    if (v211)
    {
      CFRetain(v211);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1528, 0xFA65u, 0, 0, 8uLL, &__s, 1);
      CFRelease(__s.__r_.__value_.__l.__data_);
      goto LABEL_703;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v212 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v213 = (*v212 ? *v212 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 874;
        _os_log_impl(&dword_2724B4000, v213, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing CPMS!\n", buf, 0x12u);
      }
    }

    v214 = *(this + 1588);
    if (v214 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v214, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 874, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing CPMS!\n");
    }
  }

  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1528, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_703:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_705:
  v215 = *v622;
  if ((*v622 & 0x100000000000000) == 0)
  {
    goto LABEL_750;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6B737570u);
  v216 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v217 = &__str;
  }

  else
  {
    v217 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v217, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v216, buf, 4u, 2u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v218 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v219 = (*v218 ? *v218 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 888;
        _os_log_impl(&dword_2724B4000, v219, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> failed to find KeystrokeSuppressor AU data plist! Bypassing KeyStrokeSuppressor!\n", buf, 0x12u);
      }
    }

    v220 = *(this + 1588);
    if (v220 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v220, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 888, "LoadAUDataPreset", "failed to find KeystrokeSuppressor AU data plist! Bypassing KeyStrokeSuppressor!\n");
    }

LABEL_746:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1051, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_747;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v221 = &__str;
  }

  else
  {
    v221 = __str.__r_.__value_.__r.__words[0];
  }

  v222 = TuningPListMgr::lookupPlist_(*(this + 343), v221, 2u);
  __s.__r_.__value_.__r.__words[0] = v222;
  if (!v222)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v223 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v224 = (*v223 ? *v223 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 900;
        _os_log_impl(&dword_2724B4000, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing KeystrokeSuppressor!\n", buf, 0x12u);
      }
    }

    v225 = *(this + 1588);
    if (v225 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v225, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 900, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing KeystrokeSuppressor!\n");
    }

    goto LABEL_746;
  }

  CFRetain(v222);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1051, 0x3E9u, 0, 0, 8uLL, &__s, 1);
  CFRelease(__s.__r_.__value_.__l.__data_);
LABEL_747:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v215 = *v622;
LABEL_750:
  if ((v215 & 0x1000000000) == 0)
  {
    goto LABEL_852;
  }

  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, a3, 0x6E6E6574u);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = __str;
  }

  if (*(this + 2262) == 1)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](buf, size + 5);
    if (buf[23] >= 0)
    {
      v227 = buf;
    }

    else
    {
      v227 = *buf;
    }

    if (size)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v228 = &__str;
      }

      else
      {
        v228 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v227, v228, size);
    }

    strcpy(&v227[size], "-mcsb");
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    __s = *buf;
    v229 = *(this + 343);
    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, p_s, 0x600u);
    cf.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &v638;
    *&buf[24] = &cf;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v229, buf, 4u, 2u);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&v638);
    if (!TuningInSubdirs)
    {
      goto LABEL_810;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v231 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v232 = (*v231 ? *v231 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 923;
        _os_log_impl(&dword_2724B4000, v232, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist for multi channel speech bubble! Attempting to load standard AUNeuralNet data plist!", buf, 0x12u);
      }
    }

    v233 = *(this + 1588);
    if (v233 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v233, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 923, "LoadAUDataPreset", "failed to find NeuralNet AU data plist for multi channel speech bubble! Attempting to load standard AUNeuralNet data plist!");
    }

    std::string::operator=(&__s, &__str);
    v234 = *(this + 343);
    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v235 = &__str;
    }

    else
    {
      v235 = __str.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v234 = *(this + 343);
    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v235 = &__str;
    }

    else
    {
      v235 = __str.__r_.__value_.__r.__words[0];
    }
  }

  cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v235, 0x600u);
  cf.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &v638;
  *&buf[24] = &cf;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v234, buf, 4u, 2u);
  CACFString::~CACFString(&cf);
  CACFString::~CACFString(&v638);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v236 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v237 = (*v236 ? *v236 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 937;
        _os_log_impl(&dword_2724B4000, v237, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!", buf, 0x12u);
      }
    }

    v238 = *(this + 1588);
    if (v238 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v238, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 937, "LoadAUDataPreset", "failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!");
    }

    goto LABEL_847;
  }

LABEL_810:
  if (*(this + 2262) == 1)
  {
    v239 = __s.__r_.__value_.__r.__words[0];
    v240 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    v241 = &__s;
  }

  else
  {
    v239 = __str.__r_.__value_.__r.__words[0];
    v240 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    v241 = &__str;
  }

  if (v240)
  {
    v242 = v239;
  }

  else
  {
    v242 = v241;
  }

  v243 = TuningPListMgr::lookupPlist_(*(this + 343), v242, 2u);
  v638.__r_.__value_.__r.__words[0] = v243;
  if (v243)
  {
    CFRetain(v243);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 991, 0xE71u, 0, 0, 8uLL, &v638, 1);
    CFRelease(v638.__r_.__value_.__l.__data_);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v244 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v245 = (*v244 ? *v244 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 949;
        _os_log_impl(&dword_2724B4000, v245, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found plist for AUNeuralNet", buf, 0x12u);
      }
    }

    v246 = *(this + 1588);
    if (v246 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v246, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 949, "LoadAUDataPreset", "Found plist for AUNeuralNet");
    }

    goto LABEL_848;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v247 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v248 = (*v247 ? *v247 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpTuningHelper.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 951;
      _os_log_impl(&dword_2724B4000, v248, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing AUNeuralNet!", buf, 0x12u);
    }
  }

  v249 = *(this + 1588);
  if (v249 && ((*v621 & 1) != 0 || v621[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v249, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 951, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing AUNeuralNet!");
  }

LABEL_847:
  *buf = 1;
  AUPropAndParamHelper::AddItemToAUPropsList(v627 + 991, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_848:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_852:
  v250 = 1835361379;
  v617 = a3;
  if (*(this + 2260) & 1) != 0 || (v621[680])
  {
    v615 = 0;
    v251 = 1;
LABEL_855:
    v252 = 0;
    v616 = (v621 + 655);
    v618 = v251 ^ 1;
    while (1)
    {
      v253 = dword_27275A5E8[v252];
      if (v253 == 60)
      {
        if ((v621[687] & 1) == 0)
        {
          if ((*(this + 2262) & 1) != 0 || (*(this + 2288) != 1 ? (v254 = *v616) : (v254 = VoiceProcessorV2::GetAutomaticChatFlavor(this)), v254 == 2))
          {
            v259 = v618;
            if (*(this + 16) != 3)
            {
              v259 = 1;
            }

            if ((v259 & 1) != 0 || (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0) != 1886745455 && (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0) != 1886745449)
            {
              goto LABEL_981;
            }
          }

          else if ((v621[687] & 1) == 0 && (*(this + 2262) & 1) == 0)
          {
            if (*(this + 2288) == 1)
            {
              AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this);
            }

            else
            {
              AutomaticChatFlavor = *v616;
            }

            v301 = v615;
            if (AutomaticChatFlavor != 1)
            {
              v301 = 0;
            }

            if (v301)
            {
              goto LABEL_981;
            }
          }
        }
      }

      else if (v253 >= 0x47)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if (((*(v622 + ((v253 >> 3) & 0x1FFFFFF8)) >> v253) & 1) == 0 || v253 == 62)
      {
        goto LABEL_981;
      }

      v255 = **(this + 297);
      if ((v255 & 0xFFFFFFF7) == 0x63637764)
      {
        if (v255 == 1667463020)
        {
          v256 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          v257 = 71;
          while (*v256 != v253)
          {
            v256 += 18;
            if (!--v257)
            {
              v258 = 0;
              goto LABEL_883;
            }
          }

          v258 = v256[1];
LABEL_883:
          (*(*this + 504))(this, **(this + 294), *(this + 600), 1667463020, *(this + 601), 0);
          if (!VoiceProcessorV2::LoadContinuityCapturePresetOverrides(this, v253, v258, 0x6363776Cu, v250, v261, v262, v263, v614))
          {
            goto LABEL_981;
          }
        }

        v264 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v265 = 71;
        while (*v264 != v253)
        {
          v264 += 18;
          if (!--v265)
          {
            v266 = 0;
            goto LABEL_889;
          }
        }

        v266 = v264[1];
LABEL_889:
        (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        if (!VoiceProcessorV2::LoadContinuityCapturePresetOverrides(this, v253, v266, 0x63636170u, v250, v267, v268, v269, v614))
        {
          goto LABEL_981;
        }
      }

      v270 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v271 = 71;
      while (*v270 != v253)
      {
        v270 += 18;
        if (!--v271)
        {
          v272 = 0;
          goto LABEL_895;
        }
      }

      v272 = v270[1];
LABEL_895:
      v273 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
      v274 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
      VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v617, v272, v273, v274, v250, 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v275 = &__str;
      }

      else
      {
        v275 = __str.__r_.__value_.__r.__words[0];
      }

      v276 = TuningPListMgr::lookupPlist_(*(this + 343), v275, 1u);
      cf.__r_.__value_.__r.__words[0] = v276;
      if (v276)
      {
        goto LABEL_899;
      }

      v282 = *(this + 343);
      __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      __s.__r_.__value_.__s.__data_[8] = 1;
      v283 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v283, 0x600u);
      v638.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v630;
      *&buf[8] = &v628;
      *&buf[16] = &__s;
      *&buf[24] = &v638;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v282, buf, 4u, 1u);
      CACFString::~CACFString(&v638);
      CACFString::~CACFString(&__s);
      if (TuningInSubdirs)
      {
        break;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v289 = &__str;
      }

      else
      {
        v289 = __str.__r_.__value_.__r.__words[0];
      }

      v276 = TuningPListMgr::lookupPlist_(*(this + 343), v289, 1u);
      cf.__r_.__value_.__r.__words[0] = v276;
      if (v276)
      {
        goto LABEL_899;
      }

LABEL_979:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_981:
      if (++v252 == 16)
      {
        goto LABEL_988;
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v284 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v285 = (*v284 ? *v284 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, v250);
        v286 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v287 = 71;
        while (*v286 != v253)
        {
          v286 += 18;
          if (!--v287)
          {
            v288 = 0;
            goto LABEL_962;
          }
        }

        v288 = (v286 + 2);
LABEL_962:
        v302 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v302 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1102;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v302;
        *&buf[38] = 2080;
        v637 = v288;
        _os_log_impl(&dword_2724B4000, v285, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v303 = *(this + 1588);
    if (v303 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v304 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v250);
      v305 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v306 = 71;
      while (*v305 != v253)
      {
        v305 += 18;
        if (!--v306)
        {
          v307 = 0;
          goto LABEL_975;
        }
      }

      v307 = (v305 + 2);
LABEL_975:
      v308 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v308 = &__str;
      }

      CALegacyLog::log(v303, 1, v304, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1102, "LoadAUDataPreset", "could not find '%s' override preset %s for %s!", buf, v308, v307);
    }

    v276 = cf.__r_.__value_.__r.__words[0];
    if (!cf.__r_.__value_.__r.__words[0])
    {
      goto LABEL_979;
    }

LABEL_899:
    CFRetain(v276);
    AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v253 + 883, 0, 0, 0, 8uLL, &cf, 1);
    CFRelease(cf.__r_.__value_.__l.__data_);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v277 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v278 = (*v277 ? *v277 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v278, OS_LOG_TYPE_INFO))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, v250);
        v279 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        v280 = 71;
        while (*v279 != v253)
        {
          v279 += 18;
          if (!--v280)
          {
            v281 = 0;
            goto LABEL_933;
          }
        }

        v281 = (v279 + 2);
LABEL_933:
        v290 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v290 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1116;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v290;
        *&buf[38] = 2080;
        v637 = v281;
        _os_log_impl(&dword_2724B4000, v278, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
      }
    }

    v291 = *(this + 1588);
    if (v291 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v292 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, v250);
      v293 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
      v294 = 71;
      while (*v293 != v253)
      {
        v293 += 18;
        if (!--v294)
        {
          v295 = 0;
          goto LABEL_946;
        }
      }

      v295 = (v293 + 2);
LABEL_946:
      v296 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v296 = &__str;
      }

      CALegacyLog::log(v291, 4, v292, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1116, "LoadAUDataPreset", "found '%s' override preset %s for %s", buf, v296, v295);
    }

    v297 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v298 = 71;
    while (*v297 != v253)
    {
      v297 += 18;
      if (!--v298)
      {
        v299 = 0;
        goto LABEL_954;
      }
    }

    v299 = (v297 + 2);
LABEL_954:
    std::string::basic_string[abi:ne200100]<0>(buf, v299);
    __s.__r_.__value_.__r.__words[0] = buf;
    v300 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 581, buf);
    std::string::operator=((v300 + 5), &__str);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_979;
  }

  if (((*(this + 2261) & 1) != 0 || !*(this + 20) && *(this + 61) == 2) && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) >= 2)
  {
    v251 = 0;
    v250 = 1936744803;
    v615 = 1;
    goto LABEL_855;
  }

LABEL_988:
  LOBYTE(v635[0]) = 0;
  v309 = v617;
  if (*(this + 2260) == 1)
  {
    *buf = this;
    *&buf[8] = &TuningInSubdirs;
    *&buf[16] = &v630;
    *&buf[24] = &v628;
    *&buf[32] = v635;
    v637 = &v627;
    v310 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D656463);
    v311 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D656463);
    for (i = 0; i != 7; ++i)
    {
      v313 = dword_27275A628[i];
      if (v313 >= 0x40)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if ((*(this + 1108) >> v313) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> v313))
      {
        v314 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v315 = 64;
        while (*v314 != v313)
        {
          v314 += 18;
          if (!--v315)
          {
            v316 = 0;
            goto LABEL_998;
          }
        }

        v316 = v314[1];
LABEL_998:
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v617, v316, v310, v311, 0x6D656463u, 0);
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__str, v313 | 0x100000000);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(&__str, v617, 0x61787664u, v310, v311, 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__str, 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(&__s, v617, 0x61787675u, v310, v311, 1);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(buf, &__s, 0);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v621[680] == 1 && (*(this + 8865) & 0x80) != 0)
  {
    v317 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    v318 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v617, 0x6479646Bu, v317, v318, 0x6D656463u, 0);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v319 = &__str;
    }

    else
    {
      v319 = __str.__r_.__value_.__r.__words[0];
    }

    v320 = TuningPListMgr::lookupPlist_(*(this + 343), v319, 1u);
    cf.__r_.__value_.__r.__words[0] = v320;
    if (v320)
    {
      goto LABEL_1011;
    }

    v328 = *(this + 343);
    __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
    __s.__r_.__value_.__s.__data_[8] = 1;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v329 = &__str;
    }

    else
    {
      v329 = __str.__r_.__value_.__r.__words[0];
    }

    v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v329, 0x600u);
    v638.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &__s;
    *&buf[24] = &v638;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v328, buf, 4u, 1u);
    CACFString::~CACFString(&v638);
    CACFString::~CACFString(&__s);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v330 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v331 = (*v330 ? *v330 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
          v332 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v332 = &__str;
          }

          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1256;
          *&buf[18] = 2080;
          *&buf[20] = &__s;
          *&buf[28] = 2080;
          *&buf[30] = v332;
          *&buf[38] = 2080;
          v637 = "(DL-)DynDucker";
          _os_log_impl(&dword_2724B4000, v331, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
        }
      }

      v333 = *(this + 1588);
      if (v333 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v334 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
        v335 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v335 = &__str;
        }

        CALegacyLog::log(v333, 2, v334, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1256, "operator()", "could not find '%s' override preset %s for %s!", buf, v335, "(DL-)DynDucker");
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v336 = &__str;
      }

      else
      {
        v336 = __str.__r_.__value_.__r.__words[0];
      }

      v320 = TuningPListMgr::lookupPlist_(*(this + 343), v336, 1u);
      cf.__r_.__value_.__r.__words[0] = v320;
      if (v320)
      {
LABEL_1011:
        CFRetain(v320);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0, 0, 0, 8uLL, &cf, 1);
        CFRelease(cf.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v321 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
        {
          v322 = (*v321 ? *v321 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v322, OS_LOG_TYPE_INFO))
          {
            CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
            v323 = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v323 = &__str;
            }

            *buf = 136316162;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1271;
            *&buf[18] = 2080;
            *&buf[20] = &__s;
            *&buf[28] = 2080;
            *&buf[30] = v323;
            *&buf[38] = 2080;
            v637 = "(DL-)DynDucker";
            _os_log_impl(&dword_2724B4000, v322, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
          }
        }

        v324 = *(this + 1588);
        if (v324 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v325 = VPLogScope(void)::scope;
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
          v326 = __str.__r_.__value_.__r.__words[0];
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v326 = &__str;
          }

          CALegacyLog::log(v324, 4, v325, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1271, "operator()", "found '%s' override preset %s for %s", buf, v326, "(DL-)DynDucker");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)DynDucker");
        __s.__r_.__value_.__r.__words[0] = buf;
        v327 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf);
        std::string::operator=((v327 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        LOBYTE(v635[0]) = 1;
LABEL_1076:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_1078;
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v337 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v338 = (*v337 ? *v337 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1282;
        *&buf[18] = 2080;
        *&buf[20] = "(DL-)DynDucker";
        _os_log_impl(&dword_2724B4000, v338, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
      }
    }

    v339 = *(this + 1588);
    if (v339 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v339, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1282, "operator()", "Bypassing %s!\n", "(DL-)DynDucker");
    }

    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1420, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_1076;
  }

LABEL_1078:
  if ((*(this + 2261) & 1) == 0 && (*(this + 20) || *(this + 61) != 2) || (*(this + 8867) & 1) == 0)
  {
    goto LABEL_1153;
  }

  v340 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
  v341 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
  VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(&__str, v617, 0x61787463u, v340, v341, 0x73706163u, 0);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v342 = &__str;
  }

  else
  {
    v342 = __str.__r_.__value_.__r.__words[0];
  }

  v343 = TuningPListMgr::lookupPlist_(*(this + 343), v342, 1u);
  cf.__r_.__value_.__r.__words[0] = v343;
  if (v343)
  {
    goto LABEL_1084;
  }

  v351 = *(this + 343);
  __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
  __s.__r_.__value_.__s.__data_[8] = 1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v352 = &__str;
  }

  else
  {
    v352 = __str.__r_.__value_.__r.__words[0];
  }

  v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v352, 0x600u);
  v638.__r_.__value_.__s.__data_[8] = 1;
  *buf = &v630;
  *&buf[8] = &v628;
  *&buf[16] = &__s;
  *&buf[24] = &v638;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v351, buf, 4u, 1u);
  CACFString::~CACFString(&v638);
  CACFString::~CACFString(&__s);
  if (TuningInSubdirs)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v353 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v354 = (*v353 ? *v353 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73706163u);
        v355 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v355 = &__str;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1316;
        *&buf[18] = 2080;
        *&buf[20] = &__s;
        *&buf[28] = 2080;
        *&buf[30] = v355;
        *&buf[38] = 2080;
        v637 = "(DL-)XTC";
        _os_log_impl(&dword_2724B4000, v354, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v356 = *(this + 1588);
    if (v356 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v357 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x73706163u);
      v358 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v358 = &__str;
      }

      CALegacyLog::log(v356, 2, v357, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1316, "operator()", "could not find '%s' override preset %s for %s!", buf, v358, "(DL-)XTC");
    }

    goto LABEL_1135;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v359 = &__str;
  }

  else
  {
    v359 = __str.__r_.__value_.__r.__words[0];
  }

  v343 = TuningPListMgr::lookupPlist_(*(this + 343), v359, 1u);
  cf.__r_.__value_.__r.__words[0] = v343;
  if (!v343)
  {
LABEL_1135:
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v360 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v361 = (*v360 ? *v360 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1340;
        *&buf[18] = 2080;
        *&buf[20] = "(DL-)XTC";
        _os_log_impl(&dword_2724B4000, v361, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
      }
    }

    v362 = *(this + 1588);
    if (v362 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v362, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1340, "operator()", "Bypassing %s!\n", "(DL-)XTC");
    }

    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1447, 0x15u, 0, 0, 4uLL, buf, 1);
    goto LABEL_1151;
  }

LABEL_1084:
  CFRetain(v343);
  AUPropAndParamHelper::AddItemToAUPropsList(this + 1447, 0, 0, 0, 8uLL, &cf, 1);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v344 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v345 = (*v344 ? *v344 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
    {
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x73706163u);
      v346 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v346 = &__str;
      }

      *buf = 136316162;
      *&buf[4] = "vpTuningHelper.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1331;
      *&buf[18] = 2080;
      *&buf[20] = &__s;
      *&buf[28] = 2080;
      *&buf[30] = v346;
      *&buf[38] = 2080;
      v637 = "(DL-)XTC";
      _os_log_impl(&dword_2724B4000, v345, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
    }
  }

  v347 = *(this + 1588);
  if (v347 && ((*v621 & 1) != 0 || v621[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v348 = VPLogScope(void)::scope;
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x73706163u);
    v349 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v349 = &__str;
    }

    CALegacyLog::log(v347, 4, v348, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1331, "operator()", "found '%s' override preset %s for %s", buf, v349, "(DL-)XTC");
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)XTC");
  __s.__r_.__value_.__r.__words[0] = buf;
  v350 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf);
  std::string::operator=((v350 + 5), &__str);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_1151:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_1153:
  if ((*(this + 4695) & 8) != 0)
  {
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(&__str, v617, 0x6E6E6574u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = __str;
    }

    if (*(this + 2262) == 1)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v363 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v363 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](buf, v363 + 5);
      if (buf[23] >= 0)
      {
        v364 = buf;
      }

      else
      {
        v364 = *buf;
      }

      if (v363)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v365 = &__str;
        }

        else
        {
          v365 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v364, v365, v363);
      }

      strcpy(&v364[v363], "-scsb");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = *buf;
      v366 = *(this + 343);
      v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v638.__r_.__value_.__s.__data_[8] = 1;
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v367 = &__s;
      }

      else
      {
        v367 = __s.__r_.__value_.__r.__words[0];
      }

      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v367, 0x600u);
      cf.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v630;
      *&buf[8] = &v628;
      *&buf[16] = &v638;
      *&buf[24] = &cf;
      TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v366, buf, 4u, 2u);
      CACFString::~CACFString(&cf);
      CACFString::~CACFString(&v638);
      if (!TuningInSubdirs)
      {
        goto LABEL_1228;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v368 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v369 = (*v368 ? *v368 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1378;
          _os_log_impl(&dword_2724B4000, v369, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist for single channel speech bubble! Attempting to load standard AUNeuralNet data plist!", buf, 0x12u);
        }
      }

      v370 = *(this + 1588);
      if (v370 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v370, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1378, "LoadAUDataPreset", "failed to find NeuralNet AU data plist for single channel speech bubble! Attempting to load standard AUNeuralNet data plist!");
      }

      std::string::operator=(&__s, &__str);
      v371 = *(this + 343);
      v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v638.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v372 = &__str;
      }

      else
      {
        v372 = __str.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if ((*(*this + 640))(this))
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v373 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v373 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](buf, v373 + 5);
        if (buf[23] >= 0)
        {
          v374 = buf;
        }

        else
        {
          v374 = *buf;
        }

        if (v373)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v375 = &__str;
          }

          else
          {
            v375 = __str.__r_.__value_.__r.__words[0];
          }

          memmove(v374, v375, v373);
        }

        strcpy(&v374[v373], "-scrc");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = *buf;
      }

      v371 = *(this + 343);
      v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      v638.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v372 = &__str;
      }

      else
      {
        v372 = __str.__r_.__value_.__r.__words[0];
      }
    }

    cf.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v372, 0x600u);
    cf.__r_.__value_.__s.__data_[8] = 1;
    *buf = &v630;
    *&buf[8] = &v628;
    *&buf[16] = &v638;
    *&buf[24] = &cf;
    TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v371, buf, 4u, 2u);
    CACFString::~CACFString(&cf);
    CACFString::~CACFString(&v638);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v376 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v377 = (*v376 ? *v376 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1396;
          _os_log_impl(&dword_2724B4000, v377, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!", buf, 0x12u);
        }
      }

      v378 = *(this + 1588);
      if (v378 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v378, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1396, "LoadAUDataPreset", "failed to find NeuralNet AU data plist! Bypassing AUNeuralNet!");
      }

      goto LABEL_1265;
    }

LABEL_1228:
    if (*(this + 2262) == 1)
    {
      v379 = __s.__r_.__value_.__r.__words[0];
      v380 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v381 = &__s;
    }

    else
    {
      v379 = __str.__r_.__value_.__r.__words[0];
      v380 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v381 = &__str;
    }

    if (v380)
    {
      v382 = v379;
    }

    else
    {
      v382 = v381;
    }

    v383 = TuningPListMgr::lookupPlist_(*(this + 343), v382, 2u);
    v638.__r_.__value_.__r.__words[0] = v383;
    if (v383)
    {
      CFRetain(v383);
      AUPropAndParamHelper::AddItemToAUPropsList(this + 1060, 0xE71u, 0, 0, 8uLL, &v638, 1);
      CFRelease(v638.__r_.__value_.__l.__data_);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v384 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v385 = (*v384 ? *v384 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v385, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1408;
          _os_log_impl(&dword_2724B4000, v385, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found plist for AUNeuralNet", buf, 0x12u);
        }
      }

      v386 = *(this + 1588);
      if (v386 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v386, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1408, "LoadAUDataPreset", "Found plist for AUNeuralNet");
      }

      goto LABEL_1266;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v387 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v388 = (*v387 ? *v387 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1410;
        _os_log_impl(&dword_2724B4000, v388, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing AUNeuralNet!", buf, 0x12u);
      }
    }

    v389 = *(this + 1588);
    if (v389 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v389, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1410, "LoadAUDataPreset", "plist dictionary is invalid! Bypassing AUNeuralNet!");
    }

LABEL_1265:
    *buf = 1;
    AUPropAndParamHelper::AddItemToAUPropsList(v627 + 1060, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_1266:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v390 = 0;
  v391 = "-";
  do
  {
    v392 = dword_27275A644[v390];
    v393 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    v394 = 71;
    while (*v393 != v392)
    {
      v393 += 18;
      if (!--v394)
      {
        v395 = 0;
        goto LABEL_1276;
      }
    }

    v395 = v393[1];
LABEL_1276:
    if (v392 >= 0x47)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
    }

    if (((*(v622 + ((v392 >> 3) & 0x1FFFFFF8)) >> v392) & 1) != 0 && v392 != 62 && *(this + 2262) == 1)
    {
      v396 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D706564);
      v397 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0x16D706564);
      memset(&cf, 0, sizeof(cf));
      v624 = v630;
      v625 = v631;
      if (v631 == 1 && v630)
      {
        CFRetain(v630);
      }

      memset(&__str, 0, sizeof(__str));
      if (v309)
      {
        v398 = std::string::basic_string[abi:ne200100]<0>(&__s, v309);
        v399 = std::string::append(v398, v391, 1uLL);
        v400 = *&v399->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v399->__r_.__value_.__l + 2);
        *buf = v400;
        v399->__r_.__value_.__l.__size_ = 0;
        v399->__r_.__value_.__r.__words[2] = 0;
        v399->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v401 = buf;
        }

        else
        {
          v401 = *buf;
        }

        if (buf[23] >= 0)
        {
          v402 = buf[23];
        }

        else
        {
          v402 = *&buf[8];
        }

        std::string::append(&__str, v401, v402);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      v403 = bswap32(v395);
      *v634 = v403;
      v619 = v403 - 32;
      if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v638, v395);
      }

      else
      {
        v634[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v638, v634);
      }

      v404 = std::string::insert(&v638, 0, "vp-aufx-", 8uLL);
      v405 = *&v404->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v404->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v405;
      v404->__r_.__value_.__l.__size_ = 0;
      v404->__r_.__value_.__r.__words[2] = 0;
      v404->__r_.__value_.__r.__words[0] = 0;
      v406 = std::string::append(&__s, "-appl", 5uLL);
      v407 = *&v406->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v406->__r_.__value_.__l + 2);
      *buf = v407;
      v406->__r_.__value_.__l.__size_ = 0;
      v406->__r_.__value_.__r.__words[2] = 0;
      v406->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v408 = buf;
      }

      else
      {
        v408 = *buf;
      }

      if (buf[23] >= 0)
      {
        v409 = buf[23];
      }

      else
      {
        v409 = *&buf[8];
      }

      std::string::append(&__str, v408, v409);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v638.__r_.__value_.__l.__data_);
      }

      v410 = bswap32(v396);
      if (v396)
      {
        LODWORD(v638.__r_.__value_.__l.__data_) = v410;
        if ((v410 - 32) > 0x5E || ((v410 >> 8) - 32) > 0x5E || ((v410 << 8 >> 24) - 32) > 0x5E || ((v410 >> 24) - 32) > 0x5E)
        {
          std::to_string(&__s, v396);
        }

        else
        {
          v638.__r_.__value_.__s.__data_[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
        }

        v411 = std::string::insert(&__s, 0, v391, 1uLL);
        v412 = *&v411->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v411->__r_.__value_.__l + 2);
        *buf = v412;
        v411->__r_.__value_.__l.__size_ = 0;
        v411->__r_.__value_.__r.__words[2] = 0;
        v411->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v413 = buf;
        }

        else
        {
          v413 = *buf;
        }

        if (buf[23] >= 0)
        {
          v414 = buf[23];
        }

        else
        {
          v414 = *&buf[8];
        }

        std::string::append(&__str, v413, v414);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      v415 = bswap32(v397);
      if (v397)
      {
        LODWORD(v638.__r_.__value_.__l.__data_) = v415;
        if ((v415 - 32) > 0x5E || ((v415 >> 8) - 32) > 0x5E || ((v415 << 8 >> 24) - 32) > 0x5E || ((v415 >> 24) - 32) > 0x5E)
        {
          std::to_string(&__s, v397);
        }

        else
        {
          v638.__r_.__value_.__s.__data_[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
        }

        v416 = std::string::insert(&__s, 0, v391, 1uLL);
        v417 = *&v416->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v416->__r_.__value_.__l + 2);
        *buf = v417;
        v416->__r_.__value_.__l.__size_ = 0;
        v416->__r_.__value_.__r.__words[2] = 0;
        v416->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v418 = buf;
        }

        else
        {
          v418 = *buf;
        }

        if (buf[23] >= 0)
        {
          v419 = buf[23];
        }

        else
        {
          v419 = *&buf[8];
        }

        std::string::append(&__str, v418, v419);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      strcpy(&v638, "mped");
      v420 = std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
      v421 = std::string::insert(v420, 0, "-ulnk-", 6uLL);
      v422 = *&v421->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v421->__r_.__value_.__l + 2);
      *buf = v422;
      v421->__r_.__value_.__l.__size_ = 0;
      v421->__r_.__value_.__r.__words[2] = 0;
      v421->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v423 = buf;
      }

      else
      {
        v423 = *buf;
      }

      if (buf[23] >= 0)
      {
        v424 = buf[23];
      }

      else
      {
        v424 = *&buf[8];
      }

      std::string::append(&__str, v423, v424);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      __val = v395;
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      v425 = v391;
      v426 = *(this + 343);
      __s.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, "AU", 0x600u);
      __s.__r_.__value_.__s.__data_[8] = 1;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v427 = &__str;
      }

      else
      {
        v427 = __str.__r_.__value_.__r.__words[0];
      }

      v638.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(0, v427, 0x600u);
      v638.__r_.__value_.__s.__data_[8] = 1;
      *buf = &v624;
      *&buf[8] = &__s;
      *&buf[16] = &v638;
      v428 = TuningPListMgr::loadTuningInSubdirs_(v426, buf, 3u, 1u);
      CACFString::~CACFString(&v638);
      CACFString::~CACFString(&__s);
      if (!v428)
      {
        std::string::operator=(&cf, &__str);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      TuningInSubdirs = v428;
      CACFString::~CACFString(&v624);
      if (!TuningInSubdirs)
      {
        goto LABEL_1604;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v429 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v430 = (*v429 ? *v429 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v430, OS_LOG_TYPE_DEBUG))
        {
          *&buf[1] = v403;
          if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__str, __val);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&__str, buf);
          }

          v431 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v431 = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1492;
          *&buf[18] = 2080;
          *&buf[20] = v431;
          _os_log_impl(&dword_2724B4000, v430, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find device specific aupreset for %s!", buf, 0x1Cu);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }

      v432 = *(this + 1588);
      if (v432 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v433 = VPLogScope(void)::scope;
        *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
        if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
        {
          std::to_string(buf, __val);
        }

        else
        {
          *(__str.__r_.__value_.__r.__words + 5) = 39;
          __str.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(buf, &__str);
        }

        v434 = buf;
        if (buf[23] < 0)
        {
          v434 = *buf;
        }

        CALegacyLog::log(v432, 5, v433, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1492, "LoadAUDataPreset", "failed to find device specific aupreset for %s!", v434);
        v391 = v425;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      memset(buf, 0, 24);
      v435 = std::string::basic_string[abi:ne200100]<0>(&__s, "gen");
      v436 = std::string::append(v435, v391, 1uLL);
      v437 = *&v436->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v436->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v437;
      v436->__r_.__value_.__l.__size_ = 0;
      v436->__r_.__value_.__r.__words[2] = 0;
      v436->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v438 = &__str;
      }

      else
      {
        v438 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v439 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v439 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v438, v439);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      *v634 = v403;
      if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v638, __val);
      }

      else
      {
        v634[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v638, v634);
      }

      v440 = std::string::insert(&v638, 0, "vp-aufx-", 8uLL);
      v441 = *&v440->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v440->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v441;
      v440->__r_.__value_.__l.__size_ = 0;
      v440->__r_.__value_.__r.__words[2] = 0;
      v440->__r_.__value_.__r.__words[0] = 0;
      v442 = std::string::append(&__s, "-appl", 5uLL);
      v443 = *&v442->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v442->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v443;
      v442->__r_.__value_.__l.__size_ = 0;
      v442->__r_.__value_.__r.__words[2] = 0;
      v442->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v444 = &__str;
      }

      else
      {
        v444 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v445 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v445 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v444, v445);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v638.__r_.__value_.__l.__data_);
        if (!v396)
        {
          goto LABEL_1442;
        }
      }

      else if (!v396)
      {
        goto LABEL_1442;
      }

      LODWORD(v638.__r_.__value_.__l.__data_) = v410;
      if ((v410 - 32) > 0x5E || ((v410 >> 8) - 32) > 0x5E || ((v410 << 8 >> 24) - 32) > 0x5E || ((v410 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__s, v396);
      }

      else
      {
        v638.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
      }

      v446 = std::string::insert(&__s, 0, v391, 1uLL);
      v447 = *&v446->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v446->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v447;
      v446->__r_.__value_.__l.__size_ = 0;
      v446->__r_.__value_.__r.__words[2] = 0;
      v446->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v448 = &__str;
      }

      else
      {
        v448 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v449 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v449 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v448, v449);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
        if (!v397)
        {
          goto LABEL_1460;
        }

        goto LABEL_1443;
      }

LABEL_1442:
      if (!v397)
      {
        goto LABEL_1460;
      }

LABEL_1443:
      LODWORD(v638.__r_.__value_.__l.__data_) = v415;
      if ((v415 - 32) > 0x5E || ((v415 >> 8) - 32) > 0x5E || ((v415 << 8 >> 24) - 32) > 0x5E || ((v415 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__s, v397);
      }

      else
      {
        v638.__r_.__value_.__s.__data_[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
      }

      v450 = std::string::insert(&__s, 0, v391, 1uLL);
      v451 = *&v450->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v450->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v451;
      v450->__r_.__value_.__l.__size_ = 0;
      v450->__r_.__value_.__r.__words[2] = 0;
      v450->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v452 = &__str;
      }

      else
      {
        v452 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v453 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v453 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v452, v453);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_1460:
      strcpy(&v638, "mped");
      v454 = std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
      v455 = std::string::insert(v454, 0, "-ulnk-", 6uLL);
      v456 = *&v455->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v455->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v456;
      v455->__r_.__value_.__l.__size_ = 0;
      v455->__r_.__value_.__r.__words[2] = 0;
      v455->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v457 = &__str;
      }

      else
      {
        v457 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v458 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v458 = __str.__r_.__value_.__l.__size_;
      }

      std::string::append(buf, v457, v458);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (buf[23] >= 0)
      {
        v459 = buf;
      }

      else
      {
        v459 = *buf;
      }

      Tuning = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v459, 1u);
      if (!Tuning)
      {
        std::string::operator=(&cf, buf);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      TuningInSubdirs = Tuning;
      if (Tuning)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v461 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v462 = (*v461 ? *v461 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v462, OS_LOG_TYPE_DEBUG))
          {
            *&buf[1] = v403;
            if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v463 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v463 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1495;
            *&buf[18] = 2080;
            *&buf[20] = v463;
            _os_log_impl(&dword_2724B4000, v462, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find route specific aupreset for %s!", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v464 = *(this + 1588);
        if (v464 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v465 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v466 = buf;
          if (buf[23] < 0)
          {
            v466 = *buf;
          }

          CALegacyLog::log(v464, 5, v465, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1495, "LoadAUDataPreset", "failed to find route specific aupreset for %s!", v466);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        memset(buf, 0, 24);
        v467 = std::string::basic_string[abi:ne200100]<0>(&__s, "gen");
        v468 = std::string::append(v467, v391, 1uLL);
        v469 = *&v468->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v468->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v469;
        v468->__r_.__value_.__l.__size_ = 0;
        v468->__r_.__value_.__r.__words[2] = 0;
        v468->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v470 = &__str;
        }

        else
        {
          v470 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v471 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v471 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v470, v471);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        *v634 = v403;
        if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v638, __val);
        }

        else
        {
          v634[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        }

        v472 = std::string::insert(&v638, 0, "vp-aufx-", 8uLL);
        v473 = *&v472->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v472->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v473;
        v472->__r_.__value_.__l.__size_ = 0;
        v472->__r_.__value_.__r.__words[2] = 0;
        v472->__r_.__value_.__r.__words[0] = 0;
        v474 = std::string::append(&__s, "-appl", 5uLL);
        v475 = *&v474->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v474->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v475;
        v474->__r_.__value_.__l.__size_ = 0;
        v474->__r_.__value_.__r.__words[2] = 0;
        v474->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v476 = &__str;
        }

        else
        {
          v476 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v477 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v477 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v476, v477);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        strcpy(&v638, "mped");
        v478 = std::string::basic_string[abi:ne200100]<0>(&__s, &v638);
        v479 = std::string::insert(v478, 0, "-ulnk-", 6uLL);
        v480 = *&v479->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v479->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v480;
        v479->__r_.__value_.__l.__size_ = 0;
        v479->__r_.__value_.__r.__words[2] = 0;
        v479->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v481 = &__str;
        }

        else
        {
          v481 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v482 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v482 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(buf, v481, v482);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (buf[23] >= 0)
        {
          v483 = buf;
        }

        else
        {
          v483 = *buf;
        }

        v484 = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v483, 1u);
        if (!v484)
        {
          std::string::operator=(&cf, buf);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        TuningInSubdirs = v484;
        if (v484)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v485 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v486 = (*v485 ? *v485 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v486, OS_LOG_TYPE_DEBUG))
            {
              *&buf[1] = v403;
              if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
              {
                std::to_string(&__str, __val);
              }

              else
              {
                strcpy(&buf[5], "'");
                buf[0] = 39;
                std::string::basic_string[abi:ne200100]<0>(&__str, buf);
              }

              v487 = &__str;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v487 = __str.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "vpTuningHelper.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1500;
              *&buf[18] = 2080;
              *&buf[20] = v487;
              _os_log_impl(&dword_2724B4000, v486, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> failed to find generic aupreset for %s!", buf, 0x1Cu);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }

          v488 = *(this + 1588);
          if (v488 && ((*v621 & 1) != 0 || v621[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v489 = VPLogScope(void)::scope;
            *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
            if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(buf, __val);
            }

            else
            {
              *(__str.__r_.__value_.__r.__words + 5) = 39;
              __str.__r_.__value_.__s.__data_[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(buf, &__str);
            }

            v490 = buf;
            if (buf[23] < 0)
            {
              v490 = *buf;
            }

            CALegacyLog::log(v488, 5, v489, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1500, "LoadAUDataPreset", "failed to find generic aupreset for %s!", v490);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (TuningInSubdirs)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v491 = VPLogScope(void)::scope;
            v309 = v617;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v492 = (*v491 ? *v491 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v492, OS_LOG_TYPE_ERROR))
              {
                *&buf[1] = v403;
                if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&__str, __val);
                }

                else
                {
                  strcpy(&buf[5], "'");
                  buf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&__str, buf);
                }

                v508 = &__str;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v508 = __str.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "vpTuningHelper.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1507;
                *&buf[18] = 2080;
                *&buf[20] = v508;
                _os_log_impl(&dword_2724B4000, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find aupreset for %s! Bypassing this AU!", buf, 0x1Cu);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }
            }

            v509 = *(this + 1588);
            if (v509 && ((*v621 & 1) != 0 || v621[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v510 = VPLogScope(void)::scope;
              *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
              if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
              {
                std::to_string(buf, __val);
              }

              else
              {
                *(__str.__r_.__value_.__r.__words + 5) = 39;
                __str.__r_.__value_.__s.__data_[0] = 39;
                std::string::basic_string[abi:ne200100]<0>(buf, &__str);
              }

              v511 = buf;
              if (buf[23] < 0)
              {
                v511 = *buf;
              }

              CALegacyLog::log(v509, 1, v510, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1507, "LoadAUDataPreset", "failed to find aupreset for %s! Bypassing this AU!", v511);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v512 = dword_27275A644[v390];
            *buf = 1;
            AUPropAndParamHelper::AddItemToAUPropsList(v627 + 3 * v512 + 883, 0x15u, 0, 0, 4uLL, buf, 1);
LABEL_1701:
            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            goto LABEL_1703;
          }
        }
      }

LABEL_1604:
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v623, cf.__r_.__value_.__l.__data_, cf.__r_.__value_.__l.__size_);
      }

      else
      {
        v623 = cf;
      }

      v309 = v617;
      v493 = dword_27275A644[v390];
      if ((v623.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v494 = &v623;
      }

      else
      {
        v494 = v623.__r_.__value_.__r.__words[0];
      }

      v495 = TuningPListMgr::lookupPlist_(*(this + 343), v494, 1u);
      __s.__r_.__value_.__r.__words[0] = v495;
      if (v495)
      {
        CFRetain(v495);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 3 * v493 + 883, 0, 0, 0, 8uLL, &__s, 1);
        CFRelease(__s.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v496 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v497 = (*v496 ? *v496 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v497, OS_LOG_TYPE_DEBUG))
          {
            *&buf[1] = v403;
            if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v500 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v500 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1474;
            *&buf[18] = 2080;
            *&buf[20] = v500;
            _os_log_impl(&dword_2724B4000, v497, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Found preset for %s", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v501 = *(this + 1588);
        if (v501 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v502 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v503 = buf;
          if (buf[23] < 0)
          {
            v503 = *buf;
          }

          CALegacyLog::log(v501, 5, v502, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1474, "operator()", "Found preset for %s", v503);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v498 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v499 = (*v498 ? *v498 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v499, OS_LOG_TYPE_ERROR))
          {
            *&buf[1] = v403;
            if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
            {
              std::to_string(&__str, __val);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&__str, buf);
            }

            v504 = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v504 = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1477;
            *&buf[18] = 2080;
            *&buf[20] = v504;
            _os_log_impl(&dword_2724B4000, v499, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> plist dictionary is invalid! Bypassing %s!", buf, 0x1Cu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v505 = *(this + 1588);
        if (v505 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v506 = VPLogScope(void)::scope;
          *(&__str.__r_.__value_.__l.__data_ + 1) = v403;
          if (v619 > 0x5E || ((v403 >> 8) - 32) > 0x5E || ((v403 << 8 >> 24) - 32) > 0x5E || ((v403 >> 24) - 32) > 0x5E)
          {
            std::to_string(buf, __val);
          }

          else
          {
            *(__str.__r_.__value_.__r.__words + 5) = 39;
            __str.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(buf, &__str);
          }

          v507 = buf;
          if (buf[23] < 0)
          {
            v507 = *buf;
          }

          CALegacyLog::log(v505, 1, v506, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1477, "operator()", "plist dictionary is invalid! Bypassing %s!", v507);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *buf = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(v627 + 3 * v493 + 883, 0x15u, 0, 0, 4uLL, buf, 1);
      }

      if (SHIBYTE(v623.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v623.__r_.__value_.__l.__data_);
      }

      goto LABEL_1701;
    }

LABEL_1703:
    ++v390;
  }

  while (v390 != 3);
  if (((*(this + 2260) & 1) != 0 || v621[680] == 1) && (*(this + 8865) & 0x80) != 0 && (v635[0] & 1) == 0)
  {
    memset(buf, 0, 24);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x61756678u);
    v514 = strlen(v513);
    std::string::append(buf, &__s, v514);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6479646Bu);
    v516 = strlen(v515);
    std::string::append(buf, &__s, v516);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6170706Cu);
    v518 = strlen(v517);
    std::string::append(buf, &__s, v518);
    std::string::append(buf, "-", 1uLL);
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(&__s, 0x6D656463u);
    v520 = strlen(v519);
    std::string::append(buf, &__s, v520);
    __str = *buf;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v521 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v522 = (*v521 ? *v521 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v522, OS_LOG_TYPE_DEBUG))
      {
        v523 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v523 = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1522;
        *&buf[18] = 2080;
        *&buf[20] = v523;
        _os_log_impl(&dword_2724B4000, v522, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loading media chat AUDynamicDucker preset %s", buf, 0x1Cu);
      }
    }

    v524 = *(this + 1588);
    if (v524 && ((*v621 & 1) != 0 || v621[1] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v525 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v525 = __str.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v524, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1522, "LoadAUDataPreset", "loading media chat AUDynamicDucker preset %s", v525);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v526 = &__str;
    }

    else
    {
      v526 = __str.__r_.__value_.__r.__words[0];
    }

    TuningInSubdirs = TuningPListMgr::loadTuning(*(this + 343), "Generic", "AU", v526, 1u);
    if (TuningInSubdirs)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v527 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v528 = (*v527 ? *v527 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v528, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1530;
          *&buf[18] = 1024;
          *&buf[20] = TuningInSubdirs;
          _os_log_impl(&dword_2724B4000, v528, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to find AUDynamicDucker media chat  preset!(%d) Using default AUDynamicDucker tuning\n", buf, 0x18u);
        }
      }

      v529 = *(this + 1588);
      if (v529 && ((*v621 & 1) != 0 || v621[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v529, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1530, "LoadAUDataPreset", "failed to find AUDynamicDucker media chat  preset!(%d) Using default AUDynamicDucker tuning\n", TuningInSubdirs);
      }
    }

    else
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v530 = &__str;
      }

      else
      {
        v530 = __str.__r_.__value_.__r.__words[0];
      }

      v531 = TuningPListMgr::lookupPlist_(*(this + 343), v530, 1u);
      v638.__r_.__value_.__r.__words[0] = v531;
      if (v531)
      {
        CFRetain(v531);
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0, 0, 0, 8uLL, &v638, 1);
        CFRelease(v638.__r_.__value_.__l.__data_);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v532 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v533 = (*v532 ? *v532 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v533, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1539;
            _os_log_impl(&dword_2724B4000, v533, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> found media chat preset for AUDynamicDucker\n", buf, 0x12u);
          }
        }

        v534 = *(this + 1588);
        if (v534 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v534, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1539, "LoadAUDataPreset", "found media chat preset for AUDynamicDucker\n");
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "(DL-)DynDucker");
        __s.__r_.__value_.__r.__words[0] = buf;
        v535 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 576, buf);
        std::string::operator=((v535 + 5), &__str);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v536 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v537 = (*v536 ? *v536 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v537, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "vpTuningHelper.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1544;
            _os_log_impl(&dword_2724B4000, v537, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> media chat preset dictionary is invalid! Using default AUDynamicDucker tuning!\n", buf, 0x12u);
          }
        }

        v538 = *(this + 1588);
        if (v538 && ((*v621 & 1) != 0 || v621[1] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v538, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1544, "LoadAUDataPreset", "media chat preset dictionary is invalid! Using default AUDynamicDucker tuning!\n");
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if ((*(*this + 552))(this))
  {
    v539 = 0;
    *buf = &TuningInSubdirs;
    *&buf[8] = this;
    *&buf[16] = &v630;
    *&buf[24] = &v628;
    *v633 = 0x2300000022;
    do
    {
      v540 = *&v633[v539];
      if (v540 >= 0x40)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
      }

      if ((*(this + 1108) >> v540) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> v540))
      {
        v541 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v542 = 64;
        while (*v541 != v540)
        {
          v541 += 18;
          if (!--v542)
          {
            v543 = 0;
            goto LABEL_1794;
          }
        }

        v543 = v541[1];
LABEL_1794:
        v544 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        v545 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
        memset(&__str, 0, sizeof(__str));
        if (v617)
        {
          v546 = strlen(v617);
          std::string::append(&__str, v617, v546);
          std::string::append(&__str, "-", 1uLL);
        }

        std::string::append(&__str, "vp", 2uLL);
        strcpy(v634, "aufx");
        v547 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        v548 = std::string::insert(v547, 0, "-", 1uLL);
        v549 = *&v548->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v548->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v549;
        v548->__r_.__value_.__l.__size_ = 0;
        v548->__r_.__value_.__r.__words[2] = 0;
        v548->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v550 = &__s;
        }

        else
        {
          v550 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v551 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v551 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v550, v551);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        v552 = bswap32(v543);
        *v634 = v552;
        if ((v552 - 32) > 0x5E || ((v552 >> 8) - 32) > 0x5E || ((v552 << 8 >> 24) - 32) > 0x5E || ((v552 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v638, v543);
        }

        else
        {
          v634[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        }

        v553 = std::string::insert(&v638, 0, "-", 1uLL);
        v554 = *&v553->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v553->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v554;
        v553->__r_.__value_.__l.__size_ = 0;
        v553->__r_.__value_.__r.__words[2] = 0;
        v553->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v555 = &__s;
        }

        else
        {
          v555 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v556 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v556 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v555, v556);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        strcpy(v634, "appl");
        v557 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        v558 = std::string::insert(v557, 0, "-", 1uLL);
        v559 = *&v558->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v558->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v559;
        v558->__r_.__value_.__l.__size_ = 0;
        v558->__r_.__value_.__r.__words[2] = 0;
        v558->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v560 = &__s;
        }

        else
        {
          v560 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v561 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v561 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v560, v561);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        v562 = bswap32(v544);
        *v634 = v562;
        if ((v562 - 32) > 0x5E || ((v562 >> 8) - 32) > 0x5E || ((v562 << 8 >> 24) - 32) > 0x5E || ((v562 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v638, v544);
        }

        else
        {
          v634[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        }

        v563 = std::string::insert(&v638, 0, "-", 1uLL);
        v564 = *&v563->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v563->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v564;
        v563->__r_.__value_.__l.__size_ = 0;
        v563->__r_.__value_.__r.__words[2] = 0;
        v563->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v565 = &__s;
        }

        else
        {
          v565 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v566 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v566 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v565, v566);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        v567 = bswap32(v545);
        *v634 = v567;
        if ((v567 - 32) > 0x5E || ((v567 >> 8) - 32) > 0x5E || ((v567 << 8 >> 24) - 32) > 0x5E || ((v567 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v638, v545);
        }

        else
        {
          v634[4] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        }

        v568 = std::string::insert(&v638, 0, "-", 1uLL);
        v569 = *&v568->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v568->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v569;
        v568->__r_.__value_.__l.__size_ = 0;
        v568->__r_.__value_.__r.__words[2] = 0;
        v568->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v570 = &__s;
        }

        else
        {
          v570 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v571 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v571 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v570, v571);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        std::string::append(&__str, "-dlnk", 5uLL);
        strcpy(v634, "misc");
        v572 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
        v573 = std::string::insert(v572, 0, "-", 1uLL);
        v574 = *&v573->__r_.__value_.__l.__data_;
        __s.__r_.__value_.__r.__words[2] = v573->__r_.__value_.__r.__words[2];
        *&__s.__r_.__value_.__l.__data_ = v574;
        v573->__r_.__value_.__l.__size_ = 0;
        v573->__r_.__value_.__r.__words[2] = 0;
        v573->__r_.__value_.__r.__words[0] = 0;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v575 = &__s;
        }

        else
        {
          v575 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v576 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v576 = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v575, v576);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v638.__r_.__value_.__l.__data_);
        }

        cf = __str;
        v577 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        v578 = 64;
        while (*v577 != v540)
        {
          v577 += 18;
          if (!--v578)
          {
            v579 = 0;
            goto LABEL_1879;
          }
        }

        v579 = (v577 + 2);
LABEL_1879:
        std::string::basic_string[abi:ne200100]<0>(&__str, v579);
        VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(buf, &cf, &__str, this + 3 * v540 + 1375);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cf.__r_.__value_.__l.__data_);
        }
      }

      v539 += 4;
    }

    while (v539 != 8);
    v580 = (*(*this + 504))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    v581 = (*(*this + 512))(this, **(this + 294), *(this + 600), **(this + 297), *(this + 601), 0);
    memset(&__str, 0, sizeof(__str));
    if (v617)
    {
      v582 = strlen(v617);
      std::string::append(&__str, v617, v582);
      std::string::append(&__str, "-", 1uLL);
    }

    std::string::append(&__str, "vp", 2uLL);
    strcpy(v634, "aufx");
    v583 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    v584 = std::string::insert(v583, 0, "-", 1uLL);
    v585 = *&v584->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v584->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v585;
    v584->__r_.__value_.__l.__size_ = 0;
    v584->__r_.__value_.__r.__words[2] = 0;
    v584->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v586 = &__s;
    }

    else
    {
      v586 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v587 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v587 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v586, v587);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    strcpy(v634, "axvd");
    v588 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    v589 = std::string::insert(v588, 0, "-", 1uLL);
    v590 = *&v589->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v589->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v590;
    v589->__r_.__value_.__l.__size_ = 0;
    v589->__r_.__value_.__r.__words[2] = 0;
    v589->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v591 = &__s;
    }

    else
    {
      v591 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v592 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v592 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v591, v592);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    strcpy(v634, "appl");
    v593 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    v594 = std::string::insert(v593, 0, "-", 1uLL);
    v595 = *&v594->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v594->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v595;
    v594->__r_.__value_.__l.__size_ = 0;
    v594->__r_.__value_.__r.__words[2] = 0;
    v594->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v596 = &__s;
    }

    else
    {
      v596 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v597 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v597 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v596, v597);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    v598 = bswap32(v580);
    *v634 = v598;
    if ((v598 - 32) > 0x5E || ((v598 >> 8) - 32) > 0x5E || ((v598 << 8 >> 24) - 32) > 0x5E || ((v598 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v638, v580);
    }

    else
    {
      v634[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    }

    v599 = std::string::insert(&v638, 0, "-", 1uLL);
    v600 = *&v599->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v599->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v600;
    v599->__r_.__value_.__l.__size_ = 0;
    v599->__r_.__value_.__r.__words[2] = 0;
    v599->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v601 = &__s;
    }

    else
    {
      v601 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v602 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v602 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v601, v602);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    v603 = bswap32(v581);
    *v634 = v603;
    if ((v603 - 32) > 0x5E || ((v603 >> 8) - 32) > 0x5E || ((v603 << 8 >> 24) - 32) > 0x5E || ((v603 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v638, v581);
    }

    else
    {
      v634[4] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    }

    v604 = std::string::insert(&v638, 0, "-", 1uLL);
    v605 = *&v604->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v604->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v605;
    v604->__r_.__value_.__l.__size_ = 0;
    v604->__r_.__value_.__r.__words[2] = 0;
    v604->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v606 = &__s;
    }

    else
    {
      v606 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v607 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v607 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v606, v607);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    std::string::append(&__str, "-dlnk", 5uLL);
    strcpy(v634, "misc");
    v608 = std::string::basic_string[abi:ne200100]<0>(&v638, v634);
    v609 = std::string::insert(v608, 0, "-", 1uLL);
    v610 = *&v609->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v609->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v610;
    v609->__r_.__value_.__l.__size_ = 0;
    v609->__r_.__value_.__r.__words[2] = 0;
    v609->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v611 = &__s;
    }

    else
    {
      v611 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v612 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v612 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v611, v612);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v638.__r_.__value_.__l.__data_);
    }

    cf = __str;
    std::string::basic_string[abi:ne200100]<0>(&__str, "(DL)-AuxVP");
    VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(buf, &cf, &__str, this + 1366);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  CACFString::~CACFString(&v628);
  CACFString::~CACFString(&v630);
  v613 = *MEMORY[0x277D85DE8];
}