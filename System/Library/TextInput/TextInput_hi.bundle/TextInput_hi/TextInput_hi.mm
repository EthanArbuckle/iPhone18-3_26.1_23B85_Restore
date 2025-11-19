void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void TIInputManager_hi::~TIInputManager_hi(TIInputManager_hi *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x29EDA3510);
}

void std::__shared_ptr_emplace<KB::CandidateFilter_Indic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2525210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA3510);
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