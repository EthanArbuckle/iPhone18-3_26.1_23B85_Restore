void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void TIInputManager_mr::~TIInputManager_mr(TIInputManager_mr *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x29EDA4290);
}

void std::__shared_ptr_emplace<KB::CandidateFilter_Indic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A252A910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA4290);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_mr_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA5E000);

  objc_autoreleasePoolPop(v0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}