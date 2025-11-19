void sub_11A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SplitToPhones(kaldi::TransitionModel *a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("SplitToPhones", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", &stru_298.reserved3 + 1, "split_alignment != NULL", a5);
  }

  std::vector<std::vector<std::pair<int,int>>>::clear[abi:ne200100](a3);
  IsReordered = kaldi::IsReordered(a1, a2, v8, v9, v10);
  v15 = *a2;
  if (*a2 == *(a2 + 8))
  {
    v18 = 1;
    return v18 & 1;
  }

  v16 = IsReordered;
  v17 = 0;
  v60 = 0;
  v61 = 0;
  v18 = 1;
  v62 = 0;
  do
  {
    if (kaldi::TransitionModel::IsFinal(a1, v15[v17], v12, v13, v14))
    {
      if (v16)
      {
        while (1)
        {
          v22 = v17 + 1;
          if (v17 + 1 >= (*(a2 + 8) - *a2) >> 2 || !kaldi::TransitionModel::IsSelfLoop(a1, *(*a2 + 4 * v17 + 4), v19, v20, v21))
          {
            break;
          }

          v26 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v17), v23, v24, v25);
          v30 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v17++ + 4), v27, v28, v29);
          if (v26 != v30)
          {
            kaldi::KaldiAssertFailure_("SplitToPhonesInternal", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", &stru_298.segname[12], "trans_model.TransitionIdToTransitionState(alignment[i]) == trans_model.TransitionIdToTransitionState(alignment[i+1])", v21);
          }
        }

        __p = (v17 + 1);
        std::vector<unsigned long>::push_back[abi:ne200100](&v60, &__p);
      }

      else
      {
        v22 = v17 + 1;
        __p = (v17 + 1);
        std::vector<unsigned long>::push_back[abi:ne200100](&v60, &__p);
      }
    }

    else
    {
      v22 = v17 + 1;
      if (v17 + 1 == (*(a2 + 8) - *a2) >> 2)
      {
        __p = (v17 + 1);
        std::vector<unsigned long>::push_back[abi:ne200100](&v60, &__p);
LABEL_12:
        v18 = 0;
        goto LABEL_18;
      }

      v31 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v17), v19, v20, v21);
      v35 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v22), v32, v33, v34);
      if (v31 != v35)
      {
        v36 = kaldi::TransitionModel::TransitionStateToPhone(a1, v31, v12, v13, v14);
        if (v36 != kaldi::TransitionModel::TransitionStateToPhone(a1, v35, v37, v38, v39))
        {
          __p = v22;
          std::vector<unsigned long>::push_back[abi:ne200100](&v60, &__p);
          goto LABEL_12;
        }
      }
    }

LABEL_18:
    v15 = *a2;
    v17 = v22;
  }

  while (v22 < (*(a2 + 8) - *a2) >> 2);
  v40 = v60;
  if (v61 == v60)
  {
    if (v60)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    do
    {
      __p = 0;
      v58 = 0;
      v59 = 0;
      std::vector<std::vector<int>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v58 = __p;
        operator delete(__p);
      }

      v46 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v42), v43, v44, v45);
      v50 = kaldi::TransitionModel::TransitionStateToPhone(a1, v46, v47, v48, v49);
      if (**kaldi::HmmTopology::TopologyForPhone(a1, v50) != -1)
      {
        v18 &= kaldi::TransitionModel::TransitionStateToHmmState(a1, v46, v51, v52, v53) == 0;
      }

      v40 = v60;
      v54 = v60[v41];
      if (v42 < v54)
      {
        v55 = 4 * v42;
        do
        {
          std::vector<int>::push_back[abi:ne200100]((a3[1] - 24), (*a2 + v55));
          ++v42;
          v40 = v60;
          v54 = v60[v41];
          v55 += 4;
        }

        while (v42 < v54);
      }

      v42 = v54;
      ++v41;
    }

    while (v41 < (v61 - v40) >> 3);
LABEL_32:
    v61 = v40;
    operator delete(v40);
  }

  return v18 & 1;
}

void sub_11DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::IsReordered(kaldi::TransitionModel *this, int **a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 5)
  {
LABEL_11:
    if (v7 == v8)
    {
      return 0;
    }

    else
    {
      IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(this, *v7, a3, a4, a5);
      return !IsSelfLoop & kaldi::TransitionModel::IsSelfLoop(this, *(a2[1] - 1), v21, v22, v23);
    }
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v7[v9], a3, a4, a5);
      if (v10 != kaldi::TransitionModel::TransitionIdToTransitionState(this, (*a2)[v9 + 1], v11, v12, v13))
      {
        v14 = kaldi::TransitionModel::IsSelfLoop(this, (*a2)[v9], a3, a4, a5);
        v18 = kaldi::TransitionModel::IsSelfLoop(this, (*a2)[v9 + 1], v15, v16, v17);
        if (v14 && v18)
        {
          kaldi::KaldiAssertFailure_("IsReordered", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", &stru_248.flags, "!(is_loop_1 && is_loop_2)", a5);
        }

        if (v14 || v18)
        {
          break;
        }
      }

      ++v9;
      v7 = *a2;
      v8 = a2[1];
      if (v9 + 1 >= (v8 - *a2))
      {
        goto LABEL_11;
      }
    }
  }

  return v14;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void kaldi::AddTransitionProbs(kaldi *a1, void *a2, uint64_t a3, float a4, float a5, uint64_t a6, const char *a7)
{
  v12 = a2[1];
  if (*a2 != v12)
  {
    for (i = (*a2 + 4); i != v12; ++i)
    {
      v15 = *(i - 1);
      v14 = *i;
      if (v14 <= v15)
      {
        kaldi::KaldiAssertFailure_("AddTransitionProbs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", &stru_428.segname[2], "IsSortedAndUniq(disambig_syms)", a7);
      }
    }
  }

  v16 = *(*(a3 + 8) + 72) - *(*(a3 + 8) + 64);
  if ((v16 >> 3) >= 1)
  {
    v17 = 0;
    v18 = ((*(a1 + 19) - *(a1 + 18)) >> 2) - 1;
    v19 = (v16 >> 3) & 0x7FFFFFFF;
    do
    {
      v43 = off_2771C8;
      v46 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a3);
      v23 = *(a3 + 8);
      v24 = *(*(v23 + 64) + 8 * v17);
      v44 = v24;
      v45 = v23 + 8;
      for (j = v46; ; j = ++v46)
      {
        v27 = v24 + 24;
        v26 = *(v24 + 24);
        if (j >= (*(v27 + 8) - v26) >> 4)
        {
          break;
        }

        v42 = *(v26 + 16 * j);
        if (v42.n128_i32[0] >= 1 && v42.n128_u32[0] <= v18)
        {
          kaldi::GetScaledTransitionLogProb(a1, v42.n128_u32[0], v20, a4, a5, v21, v22);
          v37 = NAN;
          if (v42.n128_f32[2] != -INFINITY && v36 != INFINITY)
          {
            v37 = INFINITY;
            v38 = v42.n128_f32[2] == INFINITY || v36 == -INFINITY;
            v39 = v42.n128_f32[2] - v36;
            if (!v38)
            {
              v37 = v39;
            }
          }

          v42.n128_f32[2] = v37;
        }

        else if (v42.n128_u32[0])
        {
          v29 = *a2;
          v30 = a2[1];
          if (v30 == *a2)
          {
            goto LABEL_35;
          }

          v31 = (v30 - *a2) >> 2;
          do
          {
            v32 = v31 >> 1;
            v33 = &v29[v31 >> 1];
            v35 = *v33;
            v34 = v33 + 1;
            v31 += ~(v31 >> 1);
            if (v35 < v42.n128_i32[0])
            {
              v29 = v34;
            }

            else
            {
              v31 = v32;
            }
          }

          while (v31);
          if (v29 == v30 || v42.n128_i32[0] < *v29)
          {
LABEL_35:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v41, "AddTransitionProbs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", 1101);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "AddTransitionProbs: invalid symbol ", 35);
            v40 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " on graph input side.", 21);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
          }
        }

        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::SetValue(&v43, &v42);
        v24 = v44;
      }

      ++v17;
    }

    while (v17 != v19);
  }
}

void kaldi::GetScaledTransitionLogProb(kaldi *this, const kaldi::TransitionModel *a2, uint64_t a3, float a4, float a5, uint64_t a6, const char *a7)
{
  v7 = a2;
  if (a4 == a5)
  {
    kaldi::TransitionModel::GetTransitionLogProb(this, a2, a3, a6, a7);
  }

  else if (kaldi::TransitionModel::IsSelfLoop(this, a2, a3, a6, a7))
  {
    kaldi::TransitionModel::GetTransitionLogProb(this, v7, v9, v10, v11);
  }

  else
  {
    v12 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v7, v9, v10, v11);
    kaldi::TransitionModel::GetNonSelfLoopLogProb(this, v12, v13, v14, v15);
    kaldi::TransitionModel::GetTransitionLogProbIgnoringSelfLoops(this, v7, v16, v17, v18);
  }
}

void fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[3] + 20 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *v9;
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
    *v9 = v10;
  }

  *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
LABEL_9:
  if (*(v6 + 8) != INFINITY || *(v6 + 12) != INFINITY)
  {
    v19 = *(v6 + 12);
    if (*(v6 + 8) != 0.0 || *(v6 + 12) != 0.0)
    {
      **(a1 + 16) &= ~0x100000000uLL;
    }
  }

  v12 = 0x30FC30007;
  v13 = *a2 == v7 && *(a2 + 4) == v8;
  if (v13 && *(a2 + 16) == *(v6 + 16))
  {
    v12 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetArc(v4, a2, v5);
  v14 = *a2;
  v15 = *(a2 + 4);
  if (*a2 != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14)
  {
    if (!v15)
    {
      v16 = *(a1 + 16);
      v17 = *v16;
LABEL_28:
      *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_28;
    }
  }

  if (*(a2 + 8) != INFINITY || *(a2 + 12) != INFINITY)
  {
    v20 = *(a2 + 12);
    if (*(a2 + 8) != 0.0 || *(a2 + 12) != 0.0)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= v12;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void fst::MakePrecedingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,kaldi::TidToTstateMapper>(char a1, uint64_t a2, kaldi::TransitionModel **a3)
{
  memset(&v71, 0, sizeof(v71));
  __x = -1;
  if (a1)
  {
    v5 = (*(*a2 + 24))(a2);
    v6 = v5;
    if (v5 < 0)
    {
      goto LABEL_111;
    }

    std::vector<int>::resize(&v71, (v5 + 1), &__x);
    v71.__begin_[v6] = 0;
  }

  v68 = 0;
  v69 = 0;
  v67 = &v68;
  LODWORD(v52) = 0;
  (*(*a2 + 128))(a2, &v50);
LABEL_5:
  if (!v50)
  {
    if (v52 >= v51)
    {
      goto LABEL_36;
    }

    goto LABEL_10;
  }

  if (!(*(*v50 + 16))(v50))
  {
    if (v50)
    {
      v10 = (*(*v50 + 24))();
LABEL_11:
      v64 = 0;
      (*(*a2 + 136))(a2, v10, v61);
      while (1)
      {
        if (v61[0])
        {
          if ((*(*v61[0] + 24))(v61[0]))
          {
            if (v61[0])
            {
              (*(*v61[0] + 8))();
              goto LABEL_31;
            }

LABEL_29:
            if (v63)
            {
              --*v63;
            }

LABEL_31:
            if (v50)
            {
              (*(*v50 + 32))(v50);
            }

            else
            {
              LODWORD(v52) = v52 + 1;
            }

            goto LABEL_5;
          }

          if (v61[0])
          {
            v11 = (*(*v61[0] + 32))();
            goto LABEL_18;
          }
        }

        else if (v64 >= v62)
        {
          goto LABEL_29;
        }

        v11 = (v61[1] + 16 * v64);
LABEL_18:
        begin = v71.__begin_;
        v14 = v11 + 3;
        v13 = v11[3];
        if (v13 >= v71.__end_ - v71.__begin_)
        {
          std::vector<int>::resize(&v71, v13 + 1, &__x);
          v13 = *v14;
          begin = v71.__begin_;
        }

        v15 = begin[v13];
        v16 = *v11;
        if (v15 == __x)
        {
          v17 = kaldi::TidToTstateMapper::operator()(a3, v16, v7, v8, v9);
          v71.__begin_[*v14] = v17;
        }

        else if (v15 != kaldi::TidToTstateMapper::operator()(a3, v16, v7, v8, v9))
        {
          std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v67, v11 + 3);
        }

        if (v61[0])
        {
          (*(*v61[0] + 40))(v61[0]);
        }

        else
        {
          ++v64;
        }
      }
    }

LABEL_10:
    v10 = v52;
    goto LABEL_11;
  }

  if (v50)
  {
    (*(*v50 + 8))();
  }

LABEL_36:
  if (!v69)
  {
    goto LABEL_110;
  }

  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v61, &v67, v7, v8, v9);
  __p = 0;
  v59 = 0;
  v60 = 0;
  LODWORD(v57) = 0;
  (*(*a2 + 128))(a2, &v55);
  while (2)
  {
    if (!v55)
    {
      if (v57 >= v56)
      {
        goto LABEL_81;
      }

      goto LABEL_43;
    }

    if (!((*v55)[2])(v55))
    {
      if (v55)
      {
        v19 = ((*v55)[3])();
        goto LABEL_44;
      }

LABEL_43:
      v19 = v57;
LABEL_44:
      v54 = 0;
      (*(*a2 + 136))(a2, v19, &v50);
      v20 = v19;
LABEL_45:
      if (v50)
      {
        if ((*(*v50 + 24))(v50))
        {
          if (v50)
          {
            (*(*v50 + 8))();
            goto LABEL_76;
          }

LABEL_74:
          if (v53)
          {
            --*v53;
          }

LABEL_76:
          if (v55)
          {
            ((*v55)[4])(v55);
          }

          else
          {
            LODWORD(v57) = v57 + 1;
          }

          continue;
        }

        if (v50)
        {
          v21 = (*(*v50 + 32))();
          goto LABEL_51;
        }
      }

      else if (v54 >= v52)
      {
        goto LABEL_74;
      }

      v21 = (v51 + 16 * v54);
LABEL_51:
      if (*v21 && kaldi::ConstIntegerSet<int>::count(v61, v21[3]))
      {
        if (v50)
        {
          v22 = (*(*v50 + 48))(v50);
        }

        else
        {
          v22 = v54;
        }

        v23 = v59;
        if (v59 >= v60)
        {
          v25 = (v59 - __p) >> 4;
          v26 = v25 + 1;
          if ((v25 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v27 = v60 - __p;
          if ((v60 - __p) >> 3 > v26)
          {
            v26 = v27 >> 3;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF0)
          {
            v28 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(&__p, v28);
          }

          v29 = (16 * v25);
          *v29 = v20;
          v29[1] = v22;
          v24 = 16 * v25 + 16;
          v30 = v29 - (v59 - __p);
          memcpy(v30, __p, v59 - __p);
          v31 = __p;
          __p = v30;
          v59 = v24;
          v60 = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v59 = v20;
          *(v23 + 1) = v22;
          v24 = (v23 + 16);
        }

        v59 = v24;
      }

      if (v50)
      {
        (*(*v50 + 40))(v50);
      }

      else
      {
        ++v54;
      }

      goto LABEL_45;
    }

    break;
  }

  if (v55)
  {
    ((*v55)[1])();
  }

LABEL_81:
  v32 = __p;
  if (__p == v59)
  {
    kaldi::KaldiAssertFailure_("MakePrecedingInputSymbolsSameClass", "../subproject/libquasar/libkaldi/src/fstext/fstext-utils-inl.h", &stru_248.align + 3, "!arcs_to_change.empty()", v18);
  }

  v33 = 0;
  v56 = 0;
  v57 = 0;
  v55 = &v56;
  while (2)
  {
    v34 = v32[4 * v33];
    v54 = 0;
    (*(*a2 + 136))(a2, v34, &v50);
    v38 = *(__p + 2 * v33 + 1);
    if (v50)
    {
      (*(*v50 + 64))(v50, v38);
      if (v50)
      {
        v39 = (*(*v50 + 32))(v50);
        goto LABEL_89;
      }

      v38 = v54;
    }

    else
    {
      v54 = *(__p + 2 * v33 + 1);
    }

    v39 = (v51 + 16 * v38);
LABEL_89:
    *v49 = *v39;
    v40 = kaldi::TidToTstateMapper::operator()(a3, v49[0], v35, v36, v37);
    v48[0] = v49[3];
    v48[1] = v40;
    v41 = v56;
    if (v56)
    {
      while (2)
      {
        v42 = *(v41 + 7);
        if (v49[3] >= v42)
        {
          if (v42 < v49[3])
          {
            goto LABEL_94;
          }

          v43 = *(v41 + 8);
          if (v40 >= v43)
          {
            if (v43 >= v40)
            {
              goto LABEL_97;
            }

LABEL_94:
            ++v41;
          }
        }

        v41 = *v41;
        if (!v41)
        {
          break;
        }

        continue;
      }
    }

    v44 = (*(*a2 + 192))(a2);
    v45 = v48;
    *(std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(&v55, v48) + 36) = v44;
    v45 = 0;
    v46 = 0;
    v47 = v49[3];
    (*(*a2 + 200))(a2, v44, &v45);
LABEL_97:
    v45 = v48;
    v49[3] = *(std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(&v55, v48) + 36);
    (*(*a2 + 288))(a2, v34, &v45);
    (*(*v45 + 64))(v45, *(__p + 2 * v33 + 1));
    (*(*v45 + 88))(v45, v49);
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }

    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    else if (v53)
    {
      --*v53;
    }

    ++v33;
    v32 = __p;
    if (v33 < (v59 - __p) >> 4)
    {
      continue;
    }

    break;
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v55, v56);
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v62)
  {
    operator delete(v62);
  }

LABEL_110:
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v67, v68);
LABEL_111:
  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }
}

void sub_130BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a27);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(v30 - 144, *(v30 - 136));
  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::TidToTstateMapper::operator()(kaldi::TransitionModel **a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 1)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v7 = *a1;
  if ((((*(*a1 + 19) - *(*a1 + 18)) >> 2) - 1) < a2)
  {
LABEL_10:
    v13 = a1[1];
    v14 = *v13;
    v15 = *(v13 + 1);
    if (v15 == v14)
    {
      goto LABEL_20;
    }

    v16 = v15 - v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v14[v16 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v16 += ~(v16 >> 1);
      if (v20 < a2)
      {
        v14 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v14 == v15 || *v14 > a2)
    {
LABEL_20:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "operator()", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", 484);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Label ", 6);
      v21 = std::ostream::operator<<();
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " neither 0, nor a disambiguation symbol ", 40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "(#transition id = ", 18);
      v23 = (*(*a1 + 19) - *(*a1 + 18)) >> 2;
      v24 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, ").");
      goto LABEL_22;
    }

    return 0;
  }

  if (kaldi::TransitionModel::IsSelfLoop(v7, a2, a3, a4, a5))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "operator()", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-utils.cc", 480);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "AddSelfLoops: graph already has self-loops.");
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v11 = *a1;

  return kaldi::TransitionModel::TransitionIdToTransitionState(v11, a2, v8, v9, v10);
}

BOOL kaldi::ConstIntegerSet<int>::count(uint64_t a1, int a2)
{
  if (a2 < *a1 || *(a1 + 4) < a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a1 + 9) == 1)
  {
    return (*(*(a1 + 16) + (((a2 - *a1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 - *a1)) & 1;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 - v3;
  do
  {
    v6 = v5 >> 1;
    v7 = &v3[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < a2)
    {
      v3 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v3 == v4)
  {
    return 0;
  }

  return *v3 <= a2;
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  kaldi::CopySetToVector<int>(a2, (a1 + 40), a3, a4, a5);
  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_13580(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  if (*v2)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::CopySetToVector<int>(void *a1, std::vector<int> *this, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!this)
  {
    kaldi::KaldiAssertFailure_("CopySetToVector", "../subproject/libquasar/libkaldi/src/util/stl-utils.h", &stru_20.filesize + 7, "v != NULL", a5);
  }

  std::vector<int>::resize(this, a1[2]);
  v7 = *a1;
  if (*a1 != a1 + 1)
  {
    begin = this->__begin_;
    do
    {
      *begin = *(v7 + 7);
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      ++begin;
      v7 = v10;
    }

    while (v10 != a1 + 1);
  }
}

void kaldi::ConstIntegerSet<int>::InitInternal(int *a1)
{
  *(a1 + 3) = 0;
  v3 = *(a1 + 5);
  v2 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v8 = 0;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *v3;
    *a1 = v5;
    v6 = *(v2 - 1);
    a1[1] = v6;
    v7 = v6 - v5 + 1;
    if (v7 == v4 >> 2)
    {
      v8 = 0;
      *(a1 + 8) = 1;
    }

    else
    {
      v8 = 0;
      *(a1 + 8) = 0;
      if (v7 < 8 * v4)
      {
        std::vector<BOOL>::resize((a1 + 4), v7, 0);
        v9 = *(a1 + 5);
        v10 = *(a1 + 6) - v9;
        if (v10)
        {
          v11 = v10 >> 2;
          v12 = *a1;
          v13 = *(a1 + 2);
          if (v11 <= 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = v11;
          }

          do
          {
            v15 = *v9++;
            v8 = 1;
            *(v13 + (((v15 - v12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v15 - v12);
            --v14;
          }

          while (v14);
        }

        else
        {
          v8 = 1;
        }
      }
    }
  }

  *(a1 + 9) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::__find_equal<std::pair<int,int>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void *kaldi::ConstIntegerSet<int>::~ConstIntegerSet(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void fst::MakeFollowingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,kaldi::TidToTstateMapper>(int a1, uint64_t a2, kaldi::TransitionModel **a3)
{
  __p = 0;
  v39 = 0;
  v40 = 0;
  LODWORD(v37) = 0;
  (*(*a2 + 128))(a2, &v35);
  while (1)
  {
    if (!v35)
    {
      if (v37 >= v36)
      {
        goto LABEL_41;
      }

LABEL_7:
      v6 = v37;
      goto LABEL_8;
    }

    if ((*(*v35 + 16))(v35))
    {
      break;
    }

    if (!v35)
    {
      goto LABEL_7;
    }

    v6 = (*(*v35 + 24))();
LABEL_8:
    v34 = v6;
    v33 = 0;
    (*(*a2 + 136))(a2);
    v10 = -1;
    while (1)
    {
      if (v29)
      {
        v11 = (*(*v29 + 24))(v29);
        v12 = v29;
        if (v11)
        {
          v15 = 0;
LABEL_23:
          (*(*v12 + 8))(v12);
          goto LABEL_27;
        }

        v13 = (*(*v29 + 32))();
      }

      else
      {
        if (v33 >= v31)
        {
          v15 = 0;
          goto LABEL_25;
        }

        v13 = (v30 + 16 * v33);
      }

      v14 = *v13;
      if (v10 == -1)
      {
        v10 = kaldi::TidToTstateMapper::operator()(a3, v14, v7, v8, v9);
        goto LABEL_18;
      }

      if (v10 != kaldi::TidToTstateMapper::operator()(a3, v14, v7, v8, v9))
      {
        break;
      }

LABEL_18:
      if (v29)
      {
        (*(*v29 + 40))(v29);
      }

      else
      {
        ++v33;
      }
    }

    v15 = 1;
    v12 = v29;
    if (v29)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v32)
    {
      --*v32;
    }

LABEL_27:
    if (a1 && (v10 + 1) >= 2)
    {
      LODWORD(v29) = (*(*a2 + 32))(a2, v34);
      LODWORD(v28) = 2139095040;
      if (*&v29 == INFINITY)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
LABEL_30:
        std::vector<int>::push_back[abi:ne200100](&__p, &v34);
      }
    }

    else if (v15)
    {
      goto LABEL_30;
    }

    if (v35)
    {
      (*(*v35 + 32))(v35);
    }

    else
    {
      LODWORD(v37) = v37 + 1;
    }
  }

  if (v35)
  {
    (*(*v35 + 8))();
  }

LABEL_41:
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v17 = __p;
  if (v39 == __p)
  {
    goto LABEL_67;
  }

  v18 = 0;
  v19 = 0;
  while (2)
  {
    v20 = v17[v19];
    v36 = v18;
    v33 = 0;
    (*(*a2 + 136))(a2, v20, &v29);
    while (2)
    {
      if (!v29)
      {
        if (v33 >= v31)
        {
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (!(*(*v29 + 24))(v29))
      {
        if (v29)
        {
          v21 = (*(*v29 + 32))();
          goto LABEL_50;
        }

LABEL_49:
        v21 = (v30 + 16 * v33);
LABEL_50:
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](&v35, v21);
        if (v29)
        {
          (*(*v29 + 40))(v29);
        }

        else
        {
          ++v33;
        }

        continue;
      }

      break;
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_57;
    }

LABEL_55:
    if (v32)
    {
      --*v32;
    }

LABEL_57:
    v18 = v35;
    v22 = v36;
    if (v36 != v35)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*&v18[v23])
        {
          v25 = (*(*a2 + 192))(a2);
          v26 = *&v18[v23 + 12];
          v29 = *&v18[v23];
          LODWORD(v30) = 0;
          HIDWORD(v30) = v26;
          (*(*a2 + 200))(a2, v25, &v29);
          (*(*a2 + 288))(a2, v20, &v28);
          (*(*v28 + 64))(v28, v24);
          v27 = *&v18[v23 + 4];
          LODWORD(v29) = 0;
          HIDWORD(v29) = v27;
          LODWORD(v30) = *&v18[v23 + 8];
          HIDWORD(v30) = v25;
          (*(*v28 + 88))(v28, &v29);
          if (v28)
          {
            (*(*v28 + 8))(v28);
          }

          v18 = v35;
          v22 = v36;
        }

        ++v24;
        v23 += 16;
      }

      while (v24 < (v22 - v18) >> 4);
    }

    ++v19;
    v17 = __p;
    if (v19 < (v39 - __p) >> 2)
    {
      continue;
    }

    break;
  }

  if (v18)
  {
    v36 = v18;
    operator delete(v18);
    v17 = __p;
  }

LABEL_67:
  if (v17)
  {
    v39 = v17;
    operator delete(v17);
  }
}

void sub_13F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::TransitionModel::Tuple>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(void *a1)
{
  *a1 = off_2710C0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Write(uint64_t a1)
{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1469C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    boost::filesystem::path::path(__p, "FATAL");
  }

  else
  {
    boost::filesystem::path::path(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_148A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      boost::filesystem::path::path(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 1);
  }
}

void sub_14A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_15200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::CompatProperties(unint64_t this, unint64_t a2)
{
  v2 = (((2 * a2) & 0x2AAAAAAA0000 | a2 & 0x3FFFFFFF0000 | (a2 >> 1) & 0x155555550000) & ((this >> 1) & 0x155555550000 | (2 * this) & 0x2AAAAAAA0000 | this) | 7) & (a2 ^ this);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((v6 & v2) != 0)
      {
        boost::filesystem::path::path(__p, "ERROR");
        v7 = fst::LogMessage::LogMessage(&v22, __p);
        v8 = fst::cerr(v7);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "CompatProperties: mismatch: ", 28);
        v10 = strlen(fst::PropertyNames[v5]);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, fst::PropertyNames[v5], v10);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": props1 = ", 11);
        if ((v6 & this) != 0)
        {
          v13 = "true";
        }

        else
        {
          v13 = "false";
        }

        if ((v6 & this) != 0)
        {
          v14 = 4;
        }

        else
        {
          v14 = 5;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", props2 = ", 11);
        if ((v6 & a2) != 0)
        {
          v17 = "true";
        }

        else
        {
          v17 = "false";
        }

        if ((v6 & a2) != 0)
        {
          v18 = 4;
        }

        else
        {
          v18 = 5;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        fst::LogMessage::~LogMessage(&v22);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 *= 2;
      ++v5;
    }

    while (v5 != 64);
  }

  return v2 == 0;
}

void sub_1544C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_15C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishVisit(uint64_t result)
{
  if (*result)
  {
    v1 = **result;
    v2 = *(*result + 8) - v1;
    if (v2)
    {
      v3 = v2 >> 2;
      if (v3 <= 1)
      {
        v3 = 1;
      }

      do
      {
        *v1 = *(result + 48) + ~*v1;
        ++v1;
        --v3;
      }

      while (v3);
    }
  }

  if (*(result + 52) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      if (*v4)
      {
        operator delete(*v4);
      }

      operator delete();
    }
  }

  v5 = *(result + 56);
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      *(v5 + 8) = v6;
      operator delete(v6);
    }

    operator delete();
  }

  v7 = *(result + 64);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v8;
      operator delete(v8);
    }

    operator delete();
  }

  v9 = *(result + 72);
  if (v9)
  {
    if (*v9)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = *(result + 80);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 8) = v11;
      operator delete(v11);
    }

    operator delete();
  }

  return result;
}

uint64_t fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_16114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitState(uint64_t a1, int a2, int a3)
{
  v19 = a2;
  std::vector<int>::push_back[abi:ne200100](*(a1 + 80), &v19);
  v5 = **(a1 + 56);
  for (i = v19; v19 >= ((*(*(a1 + 56) + 8) - v5) >> 2); i = v19)
  {
    v7 = *a1;
    if (*a1)
    {
      v18 = -1;
      std::vector<int>::push_back[abi:ne200100](v7, &v18);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      LOBYTE(v18) = 0;
      std::vector<BOOL>::push_back(v8, &v18);
    }

    v9 = *(a1 + 16);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v9, &v18);
    v10 = *(a1 + 56);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v10, &v18);
    v11 = *(a1 + 64);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v11, &v18);
    v12 = *(a1 + 72);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v12, &v18);
    v5 = **(a1 + 56);
  }

  v13 = *(a1 + 44);
  *(v5 + 4 * i) = v13;
  *(**(a1 + 64) + 4 * v19) = v13;
  v14 = v19 >> 6;
  v15 = 1 << v19;
  *(**(a1 + 72) + 8 * v14) |= 1 << v19;
  v16 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v16)
    {
      *(*v16 + 8 * v14) |= v15;
    }
  }

  else
  {
    if (v16)
    {
      *(*v16 + 8 * v14) &= ~v15;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 12) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_271250;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_271250;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_271290;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_16890(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

void *std::__list_imp<char *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_271290;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_16D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_front<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **> &>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **> &>::emplace_front<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 56 * a2;
  v4 = a1[1];
  if (224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

fst *fst::LogMessage::LogMessage(fst *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (*(a2 + 8) != 5)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (v4 != 5)
    {
      goto LABEL_12;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 4);
  v9 = v6 == 1096040774 && v7 == 76;
LABEL_13:
  *a1 = v9;
  v10 = fst::cerr(a1);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void fst::LogMessage::~LogMessage(fst::LogMessage *this)
{
  v2 = fst::cerr(this);
  std::ios_base::getloc((v2 + v2->__vftable[-2].~basic_ostream_0));
  v3 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*this == 1)
  {
    exit(1);
  }
}

void fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_271348;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_271380;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

_DWORD *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_271380;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_2712D0;
  boost::filesystem::path::path(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 40) = result;
  }

  return result;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
  }

  return result;
}

void *std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::TransitionModel::Tuple>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::TransitionModel::Tuple>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    ++*(a1 + 8);
  }

  if (!*(a2 + 4))
  {
    ++*(a1 + 16);
  }

  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](a1 + 24, a2);
}

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 192))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 152))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    if (fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs(a1))
    {
      fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
    }

    __assert_rtn("RemoveEpsLocalClass", "remove-eps-local-inl.h", 61, "CheckNumArcs()");
  }

  return a1;
}

void sub_18894(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 152))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    LODWORD(v9[0]) = (*(**a1 + 32))(*a1, i);
    v12 = 2139095040;
    if (*v9 != INFINITY)
    {
      ++*(a1[5] + 4 * i);
    }

    v5 = *a1;
    v11 = 0;
    (*(*v5 + 136))(v5, i, v9);
    while (1)
    {
      result = v9[0];
      if (!v9[0])
      {
        if (v11 >= v9[2])
        {
          goto LABEL_17;
        }

LABEL_11:
        v8 = 0;
        v7 = v9[1] + 16 * v11;
        goto LABEL_12;
      }

      v6 = (*(*v9[0] + 24))(v9[0]);
      result = v9[0];
      if (v6)
      {
        break;
      }

      if (!v9[0])
      {
        goto LABEL_11;
      }

      v7 = (*(*v9[0] + 32))();
      v8 = v9[0];
LABEL_12:
      ++*(a1[2] + 4 * *(v7 + 12));
      ++*(a1[5] + 4 * i);
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      else
      {
        ++v11;
      }
    }

    if (v9[0])
    {
      result = (*(*v9[0] + 8))();
      continue;
    }

LABEL_17:
    if (v10)
    {
      --*v10;
    }
  }

  return result;
}

void sub_18B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a9);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  if (!v13[0])
  {
    v15 = a3;
    v8 = a3;
LABEL_7:
    v7 = *(v13[1] + 16 * v8);
    goto LABEL_8;
  }

  (*(*v13[0] + 64))(v13[0], a3);
  if (!v13[0])
  {
    v8 = v15;
    goto LABEL_7;
  }

  v7 = *(*(*v13[0] + 32))(v13[0]);
  if (v13[0])
  {
    v12 = v7;
    (*(*v13[0] + 8))(v13[0]);
    v7 = v12;
    goto LABEL_10;
  }

LABEL_8:
  if (v14)
  {
    --*v14;
  }

LABEL_10:
  if (HIDWORD(v7) != a2 && *(a1 + 2) != HIDWORD(v7))
  {
    v10 = *(a1[5] + 4 * (*(&v7 + 1) >> 32));
    if (*(a1[2] + 4 * (*(&v7 + 1) >> 32)) != 1 || v10 < 2)
    {
      if (v10 == 1)
      {
        fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(a1, a2, a3, v7, *(&v7 + 1));
      }
    }

    else
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(a1, a2, a3, v7, *(&v7 + 1));
    }
  }
}

void sub_18D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  if (a12)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a12);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a12);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs(void *a1)
{
  v2 = (*(**a1 + 24))(*a1);
  --*(a1[2] + 4 * v2);
  v3 = (*(**a1 + 152))();
  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = v3;
  do
  {
    if (v4 == *(a1 + 2))
    {
      goto LABEL_24;
    }

    LODWORD(v12) = (*(**a1 + 32))(*a1, v4);
    v17 = 2139095040;
    if (*&v12 != INFINITY)
    {
      --*(a1[5] + 4 * v4);
    }

    v6 = *a1;
    v16 = 0;
    (*(*v6 + 136))(v6, v4, &v12);
    while (1)
    {
      if (!v12)
      {
        if (v16 >= v14)
        {
          goto LABEL_22;
        }

LABEL_14:
        if (*(v13 + 16 * v16 + 12) == *(a1 + 2))
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      if ((*(*v12 + 24))(v12))
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v7 = (*(*v12 + 32))();
      v8 = v12;
      if (*(v7 + 12) != *(a1 + 2))
      {
        if (v12)
        {
          v9 = (*(*v12 + 32))();
          v8 = v12;
LABEL_16:
          --*(a1[2] + 4 * *(v9 + 12));
          --*(a1[5] + 4 * v4);
          goto LABEL_17;
        }

LABEL_15:
        v8 = 0;
        v9 = v13 + 16 * v16;
        goto LABEL_16;
      }

LABEL_17:
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      else
      {
LABEL_19:
        ++v16;
      }
    }

    if (v12)
    {
      (*(*v12 + 8))();
      goto LABEL_24;
    }

LABEL_22:
    if (v15)
    {
      --*v15;
    }

LABEL_24:
    ++v4;
  }

  while (v4 != v5);
  v10 = 0;
  do
  {
    if (*(a1[2] + v10))
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs();
    }

    if (*(a1[5] + v10))
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs();
    }

    v10 += 4;
  }

  while (4 * v5 != v10);
  return 1;
}

void sub_1904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a9);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v1);
}

void sub_191C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v9 = HIDWORD(a5);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(**a1 + 288))();
  v10 = a5 >> 32;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v40 + 24))(v40))
  {
    v39 = *(*(*v40 + 32))(v40);
    if (HIDWORD(v39) != *(a1 + 2))
    {
      if (fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v44, &v39, &v38))
      {
        v14 = NAN;
        v13.n128_u32[0] = -8388608;
        if (v12 != -INFINITY)
        {
          v13.n128_u32[0] = DWORD2(v39);
          v14 = NAN;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v12 >= *(&v39 + 2))
            {
              v14 = *(&v39 + 2);
            }

            else
            {
              v14 = v12;
            }
          }
        }

        --*(a1[5] + 4 * v10);
        --*(a1[2] + 4 * SHIDWORD(v39));
        HIDWORD(v39) = *(a1 + 2);
        (*(*v40 + 88))(v40, &v39, v13);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](&v41, &v38);
        v15 = v11;
      }

      else
      {
        v15 = NAN;
        v14 = v12;
        if (v11 != -INFINITY)
        {
          v15 = NAN;
          v14 = v12;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v11 >= *(&v39 + 2))
            {
              v15 = *(&v39 + 2);
            }

            else
            {
              v15 = v11;
            }

            v14 = v12;
          }
        }
      }

      v11 = v15;
      v12 = v14;
    }

    (*(*v40 + 40))(v40);
  }

  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v16.n128_f32[0] = (*(**a1 + 32))(*a1, v9);
  LODWORD(v39) = v16.n128_u32[0];
  LODWORD(v38) = 2139095040;
  if (v16.n128_f32[0] != INFINITY)
  {
    if (v44)
    {
      if (v11 >= v16.n128_f32[0])
      {
        v27 = v16.n128_f32[0];
      }

      else
      {
        v27 = v11;
      }

      if (v16.n128_f32[0] == -INFINITY || v11 == -INFINITY)
      {
        v11 = NAN;
      }

      else
      {
        v11 = v27;
      }
    }

    else
    {
      v17 = NAN;
      if (*&v45 != -INFINITY && v16.n128_f32[0] != -INFINITY)
      {
        if (*&v45 == INFINITY || v16.n128_f32[0] == INFINITY)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16.n128_f32[0] + *&v45;
        }
      }

      if (v12 >= v16.n128_f32[0])
      {
        v19 = v16.n128_f32[0];
      }

      else
      {
        v19 = v12;
      }

      if (v16.n128_f32[0] == -INFINITY || v12 == -INFINITY)
      {
        v12 = NAN;
      }

      else
      {
        v12 = v19;
      }

      LODWORD(v39) = (*(**a1 + 32))(*a1, a2);
      LODWORD(v38) = 2139095040;
      if (*&v39 == INFINITY)
      {
        ++*(a1[5] + 4 * a2);
      }

      v22 = *a1;
      v23.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
      if (v23.n128_f32[0] >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v23.n128_f32[0];
      }

      v26 = v17 == -INFINITY || v23.n128_f32[0] == -INFINITY;
      v23.n128_u32[0] = 2143289344;
      if (!v26)
      {
        v23.n128_f32[0] = v24;
      }

      (*(*v22 + 176))(v22, a2, v23);
      --*(a1[5] + 4 * v10);
      (*(**a1 + 176))(*a1, v9, INFINITY);
    }
  }

  *&v39 = v12;
  LODWORD(v38) = 2139095040;
  v16.n128_f32[0] = v12;
  if (v12 != INFINITY)
  {
    *&v39 = v11;
    LODWORD(v38) = 2139095040;
    v16.n128_f32[0] = v11;
    if (v11 == INFINITY)
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * SHIDWORD(v45));
      HIDWORD(v45) = *(a1 + 2);
      (*(**a1 + 288))(v16);
      (*(*v39 + 64))(v39, a3);
      (*(*v39 + 88))(v39, &v44);
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }
    }

    else
    {
      if (v12 >= v11)
      {
        v30 = v11;
      }

      else
      {
        v30 = v12;
      }

      v32 = v11 == -INFINITY || v12 == -INFINITY;
      v33 = NAN;
      if (v32)
      {
        v34 = NAN;
      }

      else
      {
        v34 = v30;
      }

      if (v11 != -INFINITY && v12 != -INFINITY && (LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v33 = INFINITY;
        if (v11 != INFINITY)
        {
          v33 = v11 - v34;
        }
      }

      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(a1, a2, a3, v33);
    }
  }

  v35 = v41;
  if (v42 != v41)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v35[v36 + 12]);
      (*(**a1 + 200))(*a1, a2, v16);
      ++v37;
      v35 = v41;
      v36 += 16;
    }

    while (v37 < (v42 - v41) >> 4);
  }

  if (v35)
  {
    v42 = v35;
    operator delete(v35);
  }
}

void sub_198EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a5;
  v28 = a4;
  v29 = a5;
  v10 = a5 >> 32;
  v11 = *(a1[2] + 4 * (a5 >> 32));
  v12 = HIDWORD(a5);
  v13 = (*(**a1 + 32))(*a1, HIDWORD(a5));
  v26[0] = v13;
  v24[0] = 2139095040;
  if (v13 != INFINITY)
  {
    if (a4)
    {
      return;
    }

    v14 = NAN;
    if (v5 != -INFINITY && v13 != -INFINITY)
    {
      v15 = v5 == INFINITY || v13 == INFINITY;
      v16 = v13 + v5;
      if (v15)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v16;
      }
    }

    v26[0] = (*(**a1 + 32))(*a1, a2);
    v24[0] = 2139095040;
    if (v26[0] == INFINITY)
    {
      ++*(a1[5] + 4 * a2);
    }

    v17 = *a1;
    v18.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
    if (v18.n128_f32[0] >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18.n128_f32[0];
    }

    v21 = v14 == -INFINITY || v18.n128_f32[0] == -INFINITY;
    v18.n128_u32[0] = 2143289344;
    if (!v21)
    {
      v18.n128_f32[0] = v19;
    }

    (*(*v17 + 176))(v17, a2, v18);
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      (*(**a1 + 176))(*a1, v12, INFINITY);
    }

    goto LABEL_38;
  }

  (*(**a1 + 288))(*a1, v12, &v27);
  if ((*(*v27 + 24))(v27))
  {
    v22 = 259;
LABEL_30:
    __assert_rtn("RemoveEpsPattern2", "remove-eps-local-inl.h", v22, "!aiter_next.Done()");
  }

  while (*((*(*v27 + 32))(v27) + 12) == *(a1 + 2))
  {
    (*(*v27 + 40))(v27);
    if ((*(*v27 + 24))(v27))
    {
      v22 = 262;
      goto LABEL_30;
    }
  }

  *v26 = *(*(*v27 + 32))(v27);
  CanCombineArcs = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v28, v26, v24);
  if (CanCombineArcs)
  {
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      --*(a1[2] + 4 * SLODWORD(v26[3]));
      v26[3] = *(a1 + 2);
      (*(*v27 + 88))(v27, v26);
    }

    ++*(a1[5] + 4 * a2);
    ++*(a1[2] + 4 * v25);
    (*(**a1 + 200))(*a1, a2, v24);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  if (CanCombineArcs)
  {
LABEL_38:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    HIDWORD(v29) = *(a1 + 2);
    (*(**a1 + 288))(*a1);
    (*(**v26 + 64))(*v26, a3);
    (*(**v26 + 88))(*v26, &v28);
    if (*v26)
    {
      (*(**v26 + 8))(*v26);
    }
  }
}

void sub_19EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return 0;
  }

  if (*(a2 + 1) && *(a3 + 1) != 0)
  {
    return 0;
  }

  v6 = a2[2];
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = a3[2];
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      v7 = INFINITY;
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (!v9)
      {
        v7 = v10;
      }
    }
  }

  *(a4 + 8) = v7;
  v11 = *a3;
  v12 = *(a2 + 1);
  if (*a2)
  {
    v11 = *a2;
  }

  *a4 = v11;
  v13 = *(a3 + 1);
  if (v12)
  {
    v13 = v12;
  }

  *(a4 + 4) = v13;
  *(a4 + 12) = a3[3];
  return 1;
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v17.n128_f32[0] = a4;
  v15[0] = INFINITY;
  if (a4 == INFINITY)
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight();
  }

  (*(**a1 + 288))(*a1, a2, &v18);
  (*(*v18 + 64))(v18, a3);
  v7 = *(*(*v18 + 32))(v18);
  v17 = v7;
  if (*(a1[2] + 4 * v7.n128_i32[3]) != 1)
  {
    __assert_rtn("Reweight", "remove-eps-local-inl.h", 147, "num_arcs_in_[arc.nextstate] == 1");
  }

  v7.n128_u32[0] = v17.n128_u32[2];
  v8 = NAN;
  if (v17.n128_f32[2] != -INFINITY && a4 != -INFINITY)
  {
    v8 = INFINITY;
    v9 = v17.n128_f32[2] == INFINITY || a4 == INFINITY;
    v7.n128_f32[0] = a4 + v17.n128_f32[2];
    if (!v9)
    {
      v8 = a4 + v17.n128_f32[2];
    }
  }

  v17.n128_f32[2] = v8;
  (*(*v18 + 88))(v18, &v17, v7);
  (*(**a1 + 288))(*a1, v17.n128_u32[3], &v16);
  while (!(*(*v16 + 24))(v16))
  {
    *v15 = *(*(*v16 + 32))(v16);
    if (LODWORD(v15[3]) != *(a1 + 2))
    {
      v10 = NAN;
      if (v15[2] != -INFINITY)
      {
        v11 = v15[2] - a4;
        if (v15[2] == INFINITY)
        {
          v11 = INFINITY;
        }

        if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v10 = v11;
        }
      }

      v15[2] = v10;
      (*(*v16 + 88))(v16, v15);
    }

    (*(*v16 + 40))(v16);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v12 = (*(**a1 + 32))(*a1, v17.n128_u32[3]);
  v15[0] = v12;
  LODWORD(v16) = 2139095040;
  if (v12 != INFINITY)
  {
    v13 = NAN;
    if (v12 != -INFINITY && (LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v13 = INFINITY;
      if (v12 != INFINITY)
      {
        v13 = v12 - a4;
      }
    }

    (*(**a1 + 176))(*a1, v17.n128_u32[3], v13);
  }

  result = v18;
  if (v18)
  {
    return (*(*v18 + 8))(v18);
  }

  return result;
}

void sub_1A400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A4D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::find<std::pair<int,std::vector<int>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 + 103049 * *a2;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6 + 103049 * *a2;
    if (*&v8 <= v9)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3 && (v4 = *(a2 + 8), v5 = *(a2 + 16) - v4, v6 = *(a3 + 8), v5 == *(a3 + 16) - v6))
  {
    return memcmp(v4, v6, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

uint64_t fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(unint64_t a1, float a2, float a3)
{
  if (a2 != INFINITY && a2 != 0.0)
  {
    a1 &= ~0x100000000uLL;
  }

  if (a3 != INFINITY && a3 != 0.0)
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0x3FFFFFF0007;
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v5 = *a3;
  v4 = *(a3 + 1);
  v6 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v4)
  {
    v6 = a1;
  }

  v7 = v6 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v4)
  {
    v7 = v6 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v5 == 0.0)
  {
    v6 = v7;
  }

  if (!v4)
  {
    v6 = v6 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 > SLODWORD(v5))
    {
      v6 = v6 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v4)
    {
      v6 = v6 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if (a3[2] != INFINITY && a3[2] != 0.0)
  {
    v6 = v6 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 3) <= a2)
  {
    v6 = v6 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v6 & 0x4000000000) != 0)
  {
    return v6 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v6 & 0x5D7FFEB0007;
  }
}

uint64_t fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::ReweightType)0>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 3) == 1)
  {
    (*(*a2 + 160))(a2, a1);

    fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>>>(a2, 0);
  }

  if ((a3 & 2) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::VectorFst();
  }

  boost::filesystem::path::path(__p, "WARNING");
  v5 = fst::LogMessage::LogMessage(v9, __p);
  v6 = fst::cerr(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Push: pushing type is set to 0: ", 32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "pushing neither labels nor weights.", 35);
  fst::LogMessage::~LogMessage(v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a2 + 160))(a2, a1);
}

void sub_1ACC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(&a19);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ImplToFst(&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst((v29 - 128));
  __p = (v29 - 112);
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1AD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  fst::LogMessage::~LogMessage(va);
  JUMPOUT(0x1AD8CLL);
}

uint64_t fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>::Write(uint64_t a1)
{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcBuffer<fst::ArcTpl<fst::LogWeightTpl<float>>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

void *fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~StateIterator(void *a1)
{
  *a1 = off_2714A8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~StateIterator(void *a1)
{
  *a1 = off_2714A8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(a1 + 24) >= *(a1 + 16);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  ++*(a1 + 24);
  return result;
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  *(a1 + 24) = 0;
  return result;
}

void *fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271510;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271510;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  operator delete();
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return a1[5] >= a1[3];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return a1[2] + 16 * a1[5];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  ++*(a1 + 40);
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Position_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 56))();
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Seek_(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Flags_(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 72))();
  }

  else
  {
    return 15;
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetFlags_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::DeleteStates(uint64_t a1)
{
  return (*(**(a1 + 24) + 208))();
}

{
  return (*(**(a1 + 24) + 216))();
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::DeleteArcs(uint64_t a1)
{
  return (*(**(a1 + 24) + 224))();
}

{
  return (*(**(a1 + 24) + 232))();
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator=(uint64_t a1, uint64_t a2)
{
  v4[0] = off_271980;
  v4[1] = a2;
  (*(**(a1 + 24) + 160))(*(a1 + 24), v4);
  return a1;
}

uint64_t covariant return thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator=(uint64_t a1, uint64_t a2)
{
  v4[0] = off_271980;
  v4[1] = a2;
  (*(**(a1 + 8) + 160))(*(a1 + 8), v4);
  return a1;
}

uint64_t non-virtual thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::DeleteStates(uint64_t a1)
{
  return (*(**(a1 + 8) + 208))();
}

{
  return (*(**(a1 + 8) + 216))();
}

uint64_t non-virtual thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>::DeleteArcs(uint64_t a1)
{
  return (*(**(a1 + 8) + 224))();
}

{
  return (*(**(a1 + 8) + 232))();
}

void *fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  operator delete();
}

void *fst::MutableArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MutableArcIterator(void *a1)
{
  *a1 = off_2718E0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::MutableArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MutableArcIterator(void *a1)
{
  *a1 = off_2718E0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void *fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~StateIterator(void *a1)
{
  *a1 = off_271A48;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~StateIterator(void *a1)
{
  *a1 = off_271A48;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Done_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(a1 + 24) >= *(a1 + 16);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Value_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  ++*(a1 + 24);
  return result;
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  *(a1 + 24) = 0;
  return result;
}

void *fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271AB0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcIterator(void *a1)
{
  *a1 = off_271AB0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  operator delete();
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Done_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return a1[5] >= a1[3];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Value_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return a1[2] + 16 * a1[5];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  ++*(a1 + 40);
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Position_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 56))();
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Seek_(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Flags_(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 72))();
  }

  else
  {
    return 15;
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetFlags_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void sub_1D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(v3, a1);
}

void sub_1D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a17;
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One(void)::one;
}

void *fst::ComputeTotalWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
    {
      v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    }

    else
    {
      v7 = (*a2 + 40 * (*(*a1 + 24))(a1));
    }

    *a4 = *v7;
    result = std::list<int>::list((a4 + 8), (v7 + 2));
    *(a4 + 32) = v7[8];
  }

  else
  {
    v8 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    *a4 = *v8;
    result = std::list<int>::list((a4 + 8), (v8 + 2));
    *(a4 + 32) = v8[8];
    v10 = *a2;
    if (a2[1] != *a2)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        (*(*a1 + 32))(&v21, a1, v12);
        fst::Times<int,(fst::StringType)0>((v10 + v11), &v21, &v30);
        v13 = *(v10 + v11 + 32);
        v14 = NAN;
        if (v13 != -INFINITY)
        {
          v14 = NAN;
          if (v23 != -INFINITY)
          {
            v14 = INFINITY;
            v15 = v23 == INFINITY || v13 == INFINITY;
            v16 = v13 + v23;
            if (!v15)
            {
              v14 = v16;
            }
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v24, &v30, v14);
        std::__list_imp<char *>::clear(v31);
        fst::Plus<int>(a4, v24, &v30);
        v17 = *(a4 + 32);
        v18 = v26;
        if (v17 != INFINITY)
        {
          if (v26 == INFINITY)
          {
            v18 = *(a4 + 32);
          }

          else if (v17 <= v26)
          {
            v20 = expf(-(v26 - v17));
            v18 = v17 - logf(v20 + 1.0);
          }

          else
          {
            v19 = expf(-(v17 - v26));
            v18 = v18 - logf(v19 + 1.0);
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v27, &v30, v18);
        std::__list_imp<char *>::clear(v31);
        *a4 = v27;
        if (&v27 != a4)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a4 + 8), v28[1], v28);
        }

        *(a4 + 32) = v29;
        std::__list_imp<char *>::clear(v28);
        std::__list_imp<char *>::clear(v25);
        result = std::__list_imp<char *>::clear(v22);
        ++v12;
        v10 = *a2;
        v11 += 40;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v12);
    }
  }

  return result;
}

void sub_1D918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear(va1);
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::One()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)0>::One(void)::one;
}

uint64_t fst::Reweight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 152))(a1);
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(&v112, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(&v112, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v119, &v112);
    v7 = fst::cerr(v6);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Reweight: Reweighting to the final states requires ", 51);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Weight to be right distributive: ", 33);
    v38 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type();
    v39 = *(v38 + 23);
    if (v39 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = *v38;
    }

    if (v39 >= 0)
    {
      v41 = *(v38 + 23);
    }

    else
    {
      v41 = *(v38 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40, v41);
    fst::LogMessage::~LogMessage(&v119);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(v112);
    }

    return (*(*a1 + 184))(a1, 4, 4);
  }

  v126 = 0;
  (*(*a1 + 128))(a1, &v124);
  while (1)
  {
    if (v124)
    {
      if ((*(*v124 + 16))(v124))
      {
        goto LABEL_87;
      }

      if (v124)
      {
        v8 = (*(*v124 + 24))(v124);
        goto LABEL_12;
      }
    }

    else if (v126 >= v125)
    {
      goto LABEL_87;
    }

    v8 = v126;
LABEL_12:
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) == v8)
    {
      break;
    }

    v9 = v8;
    v10 = *a2 + 40 * v8;
    v119 = *v10;
    std::list<int>::list(&v120, v10 + 8);
    v123 = *(v10 + 32);
    v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    if (v119)
    {
      v12 = v122 + 1;
    }

    else
    {
      v12 = 0;
    }

    if (*v11)
    {
      v13 = *(v11 + 24) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v12 != v13)
    {
      goto LABEL_34;
    }

    v14 = v121;
    v15 = (v11 + 16);
    v16 = v119 && v119 == *v11;
    v17 = !v16;
    v18 = 1;
    v19 = !v17;
    while (1)
    {
      v20 = *v15;
      if ((v18 & 1) != 0 && !v19)
      {
        break;
      }

      if (v14 == &v120)
      {
        goto LABEL_33;
      }

      if (*(v14 + 16) != *(v20 + 16))
      {
        goto LABEL_34;
      }

      v18 = 0;
      v14 = *(v14 + 8);
      v15 = (v20 + 8);
    }

    if (v119)
    {
      goto LABEL_34;
    }

LABEL_33:
    *&v112 = v123;
    LODWORD(v107) = *(v11 + 32);
    if (v123 != *&v107)
    {
LABEL_34:
      (*(*a1 + 288))(a1, v9, &v118);
      while (!(*(*v118 + 24))(v118))
      {
        v21 = (*(*v118 + 32))(v118);
        v112 = *v21;
        LODWORD(v113) = *(v21 + 8);
        std::list<int>::list(v114, v21 + 16);
        v22 = *(v21 + 48);
        v116 = *(v21 + 40);
        v117 = v22;
        if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v22)
        {
          v23 = *a2 + 40 * v22;
          LODWORD(v107) = *v23;
          std::list<int>::list(&v108, v23 + 8);
          v111 = *(v23 + 32);
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
          if (v107)
          {
            v25 = v110 + 1;
          }

          else
          {
            v25 = 0;
          }

          if (*v24)
          {
            v26 = *(v24 + 24) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (v25 != v26)
          {
            goto LABEL_52;
          }

          v27 = v109;
          v28 = (v24 + 16);
          for (i = 1; ; i = 0)
          {
            v30 = *v28;
            if (i)
            {
              if (!v107)
              {
                break;
              }

              if (v107 != *v24)
              {
                goto LABEL_52;
              }
            }

            if (v27 == &v108)
            {
              break;
            }

            if (*(v27 + 16) != *(v30 + 16))
            {
              goto LABEL_52;
            }

            v27 = *(v27 + 8);
            v28 = (v30 + 8);
          }

          v104 = v111;
          v101 = *(v24 + 32);
          if (v111 != v101)
          {
LABEL_52:
            if (!a3)
            {
              fst::Times<int,(fst::StringType)0>(&v113, &v107, &v127);
              v31 = NAN;
              if (v116 != -INFINITY)
              {
                v31 = NAN;
                if (v111 != -INFINITY)
                {
                  v31 = INFINITY;
                  if (v111 != INFINITY && v116 != INFINITY)
                  {
                    v31 = v116 + v111;
                  }
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v101, &v127, v31);
              std::__list_imp<char *>::clear(v128);
              fst::DivideLeft<int,(fst::StringType)0>(&v101, &v119, &v127);
              v33 = NAN;
              if (v103 != -INFINITY)
              {
                if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  v33 = INFINITY;
                  if (v103 != INFINITY)
                  {
                    v33 = v103 - v123;
                  }
                }

                else
                {
                  v33 = NAN;
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v127, v33);
              std::__list_imp<char *>::clear(v128);
              *&v113 = v104;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v105[1], v105);
              v116 = v106;
              std::__list_imp<char *>::clear(v105);
              std::__list_imp<char *>::clear(v102);
            }

            (*(*v118 + 88))(v118, &v112);
          }

          std::__list_imp<char *>::clear(&v108);
        }

        std::__list_imp<char *>::clear(v114);
        (*(*v118 + 40))(v118);
      }

      if (v118)
      {
        (*(*v118 + 8))(v118);
      }

      if (!a3)
      {
        (*(*a1 + 32))(&v112);
        fst::DivideLeft<int,(fst::StringType)0>(&v112, &v119, &v107);
        v34 = NAN;
        if (v115 != -INFINITY)
        {
          if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v34 = INFINITY;
            if (v115 != INFINITY)
            {
              v34 = v115 - v123;
            }
          }

          else
          {
            v34 = NAN;
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v99, &v107, v34);
        std::__list_imp<char *>::clear(&v108);
        (*(*a1 + 176))(a1, v9, v99);
        std::__list_imp<char *>::clear(v100);
        std::__list_imp<char *>::clear(&v113);
      }
    }

    std::__list_imp<char *>::clear(&v120);
    if (v124)
    {
      (*(*v124 + 32))(v124);
    }

    else
    {
      ++v126;
    }
  }

  while (1)
  {
LABEL_87:
    if (!v124)
    {
      if (v126 >= v125)
      {
        break;
      }

      goto LABEL_84;
    }

    if ((*(*v124 + 16))(v124))
    {
      break;
    }

    if (!v124)
    {
      goto LABEL_86;
    }

    (*(*v124 + 24))(v124);
LABEL_84:
    if (v124)
    {
      (*(*v124 + 32))(v124);
    }

    else
    {
LABEL_86:
      ++v126;
    }
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
  {
    v35 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  }

  else
  {
    v35 = *a2 + 40 * (*(*a1 + 24))(a1);
  }

  v119 = *v35;
  std::list<int>::list(&v120, v35 + 8);
  v123 = *(v35 + 32);
  v42 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  v44 = a1;
  if (v119)
  {
    v45 = v122 + 1;
  }

  else
  {
    v45 = 0;
  }

  if (*v42)
  {
    v46 = *(v42 + 24) + 1;
  }

  else
  {
    v46 = 0;
  }

  if (v45 != v46)
  {
    goto LABEL_123;
  }

  v47 = v121;
  v48 = (v42 + 16);
  v49 = v119 && v119 == *v42;
  v50 = !v49;
  v51 = 1;
  v52 = !v50;
  while (1)
  {
    v53 = *v48;
    if ((v51 & 1) != 0 && !v52)
    {
      break;
    }

    if (v47 == &v120)
    {
      goto LABEL_122;
    }

    if (*(v47 + 16) != *(v53 + 16))
    {
      goto LABEL_123;
    }

    v51 = 0;
    v47 = *(v47 + 8);
    v48 = (v53 + 8);
  }

  if (v119)
  {
    goto LABEL_123;
  }

LABEL_122:
  *&v112 = v123;
  LODWORD(v107) = *(v42 + 32);
  v43.n128_f32[0] = v123;
  if (v123 != *&v107)
  {
LABEL_123:
    v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    if (v119)
    {
      v55 = v122 + 1;
    }

    else
    {
      v55 = 0;
    }

    if (*v54)
    {
      v56 = *(v54 + 24) + 1;
    }

    else
    {
      v56 = 0;
    }

    if (v55 != v56)
    {
      goto LABEL_144;
    }

    v57 = v121;
    v58 = (v54 + 16);
    v59 = v119 && v119 == *v54;
    v60 = !v59;
    v61 = 1;
    v62 = !v60;
    while (1)
    {
      v63 = *v58;
      if ((v61 & 1) != 0 && !v62)
      {
        break;
      }

      if (v57 == &v120)
      {
        goto LABEL_143;
      }

      if (*(v57 + 16) != *(v63 + 16))
      {
        goto LABEL_144;
      }

      v61 = 0;
      v57 = *(v57 + 8);
      v58 = (v63 + 8);
    }

    if (v119)
    {
      goto LABEL_144;
    }

LABEL_143:
    *&v112 = v123;
    LODWORD(v107) = *(v54 + 32);
    v43.n128_f32[0] = v123;
    if (v123 != *&v107)
    {
LABEL_144:
      v64 = (*(*a1 + 64))(a1, 0x2000000000, 1);
      v65 = *a1;
      if ((v64 & 0x2000000000) != 0)
      {
        v90 = (*(v65 + 24))(a1);
        (*(*a1 + 288))(a1);
        while (!(*(*v127 + 24))(v127))
        {
          v70 = (*(*v127 + 32))(v127);
          v112 = *v70;
          LODWORD(v113) = *(v70 + 8);
          std::list<int>::list(v114, v70 + 16);
          v71 = *(v70 + 48);
          v116 = *(v70 + 40);
          v117 = v71;
          if (a3)
          {
            v72 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
            fst::Divide<int>(v72, &v119, 1, &v101);
            v73 = *(v72 + 32);
            v74 = NAN;
            if (v73 != -INFINITY)
            {
              if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                v74 = INFINITY;
                if (v73 != INFINITY)
                {
                  v74 = v73 - v123;
                }
              }

              else
              {
                v74 = NAN;
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v101, v74);
            std::__list_imp<char *>::clear(v102);
            fst::Times<int,(fst::StringType)0>(&v104, &v113, &v101);
            v78 = NAN;
            if (v106 != -INFINITY)
            {
              v78 = NAN;
              if (v116 != -INFINITY)
              {
                v78 = INFINITY;
                if (v116 != INFINITY && v106 != INFINITY)
                {
                  v78 = v106 + v116;
                }
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v107, &v101, v78);
            std::__list_imp<char *>::clear(v102);
            LODWORD(v113) = v107;
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v109, &v108);
            v116 = v111;
            std::__list_imp<char *>::clear(&v108);
            v77 = v105;
          }

          else
          {
            fst::Times<int,(fst::StringType)0>(&v119, &v113, &v104);
            v75 = NAN;
            if (v123 != -INFINITY)
            {
              v75 = NAN;
              if (v116 != -INFINITY)
              {
                v75 = INFINITY;
                if (v116 != INFINITY && v123 != INFINITY)
                {
                  v75 = v123 + v116;
                }
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v107, &v104, v75);
            std::__list_imp<char *>::clear(v105);
            LODWORD(v113) = v107;
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v109, &v108);
            v116 = v111;
            v77 = &v108;
          }

          std::__list_imp<char *>::clear(v77);
          (*(*v127 + 88))(v127, &v112);
          std::__list_imp<char *>::clear(v114);
          (*(*v127 + 40))(v127);
        }

        if (v127)
        {
          (*(*v127 + 8))(v127);
        }

        v44 = a1;
        if (a3)
        {
          v80 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
          fst::Divide<int>(v80, &v119, 1, &v107);
          v81 = *(v80 + 32);
          v82 = NAN;
          if (v81 != -INFINITY)
          {
            if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v82 = INFINITY;
              if (v81 != INFINITY)
              {
                v82 = v81 - v123;
              }
            }

            else
            {
              v82 = NAN;
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v112, &v107, v82);
          std::__list_imp<char *>::clear(&v108);
          (*(*a1 + 32))(&v107, a1, v90);
          fst::Times<int,(fst::StringType)0>(&v112, &v107, &v104);
          v86 = NAN;
          if (v115 != -INFINITY)
          {
            v86 = NAN;
            if (v111 != -INFINITY)
            {
              v86 = INFINITY;
              if (v111 != INFINITY && v115 != INFINITY)
              {
                v86 = v115 + v111;
              }
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v95, &v104, v86);
          std::__list_imp<char *>::clear(v105);
          (*(*a1 + 176))(a1, v90, v95);
          std::__list_imp<char *>::clear(v96);
          v83 = &v108;
        }

        else
        {
          (*(*a1 + 32))(&v112, a1, v90);
          fst::Times<int,fst::LogWeightTpl<float>,(fst::GallicType)0>(&v119, &v112, v97);
          (*(*a1 + 176))(a1, v90, v97);
          v83 = &v98;
        }

        std::__list_imp<char *>::clear(v83);
        v85 = &v113;
      }

      else
      {
        v66 = (*(v65 + 192))(a1);
        if (a3)
        {
          v67 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
          fst::Divide<int>(v67, &v119, 1, &v112);
          v68 = *(v67 + 32);
          v69 = NAN;
          if (v68 != -INFINITY)
          {
            if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v69 = INFINITY;
              if (v68 != INFINITY)
              {
                v69 = v68 - v123;
              }
            }

            else
            {
              v69 = NAN;
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v107, &v112, v69);
          std::__list_imp<char *>::clear(&v113);
        }

        else
        {
          LODWORD(v107) = v119;
          std::list<int>::list(&v108, &v120);
          v111 = v123;
        }

        v92 = v107;
        std::list<int>::list(v93, &v108);
        v94 = v111;
        v84 = (*(*a1 + 24))(a1);
        v112 = 0;
        LODWORD(v113) = v92;
        std::list<int>::list(v114, v93);
        v116 = v94;
        v117 = v84;
        std::__list_imp<char *>::clear(v93);
        v44 = a1;
        (*(*a1 + 200))(a1, v66, &v112);
        (*(*v44 + 168))(v44, v66);
        std::__list_imp<char *>::clear(v114);
        v85 = &v108;
      }

      std::__list_imp<char *>::clear(v85);
    }
  }

  v88 = (*(*v44 + 64))(v44, 0x3FFFFFFF0007, 0, v43);
  v89 = fst::ReweightProperties(v88);
  (*(*v44 + 184))(v44, v89, 0x3FFFFFFF0007);
  std::__list_imp<char *>::clear(&v120);
  result = v124;
  if (v124)
  {
    return (*(*v124 + 8))(v124);
  }

  return result;
}

void sub_1EC40(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 240));
  std::__list_imp<char *>::clear(v2);
  v5 = *(v3 - 144);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::RemoveWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, int a3)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*result)
  {
    v9 = result[3] + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 == v9)
  {
    v10 = (a2 + 16);
    v11 = result + 2;
    for (i = 1; ; i = 0)
    {
      v13 = *v10;
      v14 = *v11;
      if (i)
      {
        if (!v7)
        {
          break;
        }

        if (v7 != *result)
        {
          goto LABEL_16;
        }
      }

      if (v13 == a2 + 8)
      {
        break;
      }

      if (*(v13 + 16) != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v10 = (v13 + 8);
      v11 = (v14 + 8);
    }

    LODWORD(v37) = *(a2 + 32);
    v34 = *(result + 8);
    if (*&v37 == v34)
    {
      return result;
    }
  }

LABEL_16:
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v15 = *a2;
  if (*a2)
  {
    v16 = *(a2 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (*result)
  {
    v17 = result[3] + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v16 == v17)
  {
    v18 = (a2 + 16);
    v19 = result + 2;
    for (j = 1; ; j = 0)
    {
      v21 = *v18;
      v22 = *v19;
      if (j)
      {
        if (!v15)
        {
          break;
        }

        if (v15 != *result)
        {
          goto LABEL_31;
        }
      }

      if (v21 == a2 + 8)
      {
        break;
      }

      if (*(v21 + 16) != *(v22 + 16))
      {
        goto LABEL_31;
      }

      v18 = (v21 + 8);
      v19 = (v22 + 8);
    }

    LODWORD(v37) = *(a2 + 32);
    v34 = *(result + 8);
    if (*&v37 == v34)
    {
      return result;
    }
  }

LABEL_31:
  if (a3)
  {
    v48 = 0;
    (*(*a1 + 128))(a1, &v46);
    while (1)
    {
      result = v46;
      if (!v46)
      {
        break;
      }

      v23 = (*(*v46 + 16))(v46);
      result = v46;
      if (v23)
      {
        if (v46)
        {
          return (*(*v46 + 8))();
        }

        return result;
      }

      if (!v46)
      {
        goto LABEL_39;
      }

      v24 = (*(*v46 + 24))();
      if (v46)
      {
        v25 = (*(*v46 + 24))(v46);
      }

      else
      {
        v25 = v48;
      }

LABEL_40:
      (*(*a1 + 32))(&v37, a1, v25);
      fst::Divide<int>(&v37, a2, 1, &v34);
      v26 = NAN;
      if (v40 != -INFINITY)
      {
        if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v26 = INFINITY;
          if (v40 != INFINITY)
          {
            v26 = v40 - *(a2 + 32);
          }
        }

        else
        {
          v26 = NAN;
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v44, &v34, v26);
      std::__list_imp<char *>::clear(v35);
      (*(*a1 + 176))(a1, v24, v44);
      std::__list_imp<char *>::clear(v45);
      std::__list_imp<char *>::clear(&v38);
      if (v46)
      {
        (*(*v46 + 32))(v46);
      }

      else
      {
        ++v48;
      }
    }

    if (v48 >= v47)
    {
      return result;
    }

LABEL_39:
    v24 = v48;
    v25 = v48;
    goto LABEL_40;
  }

  v27 = (*(*a1 + 24))(a1);
  (*(*a1 + 288))(a1, v27, &v43);
  while (!(*(*v43 + 24))(v43))
  {
    v28 = (*(*v43 + 32))(v43);
    v37 = *v28;
    LODWORD(v38) = *(v28 + 8);
    std::list<int>::list(v39, v28 + 16);
    v29 = *(v28 + 48);
    v41 = *(v28 + 40);
    v42 = v29;
    fst::DivideLeft<int,(fst::StringType)0>(&v38, a2, &v46);
    v30 = NAN;
    if (v41 != -INFINITY)
    {
      if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v30 = INFINITY;
        if (v41 != INFINITY)
        {
          v30 = v41 - *(a2 + 32);
        }
      }

      else
      {
        v30 = NAN;
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v34, &v46, v30);
    std::__list_imp<char *>::clear(&v47);
    *&v38 = v34;
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v39, v35[1], v35);
    v41 = v36;
    std::__list_imp<char *>::clear(v35);
    (*(*v43 + 88))(v43, &v37);
    std::__list_imp<char *>::clear(v39);
    (*(*v43 + 40))(v43);
  }

  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  (*(*a1 + 32))(&v37, a1, v27);
  fst::DivideLeft<int,(fst::StringType)0>(&v37, a2, &v34);
  v31 = NAN;
  if (v40 != -INFINITY)
  {
    if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v31 = INFINITY;
      if (v40 != INFINITY)
      {
        v31 = v40 - *(a2 + 32);
      }
    }

    else
    {
      v31 = NAN;
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v32, &v34, v31);
  std::__list_imp<char *>::clear(v35);
  (*(*a1 + 176))(a1, v27, v32);
  std::__list_imp<char *>::clear(v33);
  return std::__list_imp<char *>::clear(&v38);
}

void sub_1F5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__list_imp<char *>::clear((v13 + 8));
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void fst::ShortestDistance<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(v3, a1);
}

void sub_1F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  fst::AutoQueue<int>::~AutoQueue(&a18);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~ImplToFst(&a13);
  _Unwind_Resume(a1);
}

float fst::ComputeTotalWeight<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1, uint64_t *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v6 = *a2;
    if (a2[1] == *a2)
    {
      return INFINITY;
    }

    v7 = 0;
    v8 = INFINITY;
    while (1)
    {
      (*(*a1 + 32))(a1, v7);
      v10 = *(v6 + 4 * v7);
      if (v10 == -INFINITY || v9 == -INFINITY)
      {
        v5 = NAN;
        if (v8 != INFINITY)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = v9 == INFINITY || v10 == INFINITY;
        v12 = v10 + v9;
        if (v11)
        {
          v5 = INFINITY;
        }

        else
        {
          v5 = v12;
        }

        if (v8 == INFINITY)
        {
          goto LABEL_21;
        }

        if (v5 != INFINITY)
        {
LABEL_18:
          if (v8 <= v5)
          {
            v14 = expf(-(v5 - v8));
            v5 = v8 - logf(v14 + 1.0);
          }

          else
          {
            v13 = expf(-(v8 - v5));
            v5 = v5 - logf(v13 + 1.0);
          }

          goto LABEL_21;
        }

        v5 = v8;
      }

LABEL_21:
      ++v7;
      v6 = *a2;
      v8 = v5;
      if (v7 >= (a2[1] - *a2) >> 2)
      {
        return v5;
      }
    }
  }

  if ((*(*a1 + 24))(a1) >= ((a2[1] - *a2) >> 2))
  {
    return INFINITY;
  }

  return *(*a2 + 4 * (*(*a1 + 24))(a1));
}

uint64_t fst::Reweight<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 152))(a1);
  if (!result)
  {
    return result;
  }

  v52 = 0;
  (*(*a1 + 128))(a1, &v50);
LABEL_3:
  if (v50)
  {
    if ((*(*v50 + 16))(v50))
    {
      goto LABEL_73;
    }

    if (v50)
    {
      v8 = (*(*v50 + 24))(v50);
      goto LABEL_9;
    }
  }

  else if (v52 >= v51)
  {
    goto LABEL_73;
  }

  v8 = v52;
LABEL_9:
  v9 = v8;
  if (v8 != (a2[1] - *a2) >> 2)
  {
    v10 = *(*a2 + 4 * v8);
    v48.n128_f32[0] = v10;
    LODWORD(v49) = 2139095040;
    v7.n128_f32[0] = v10;
    if (v10 == INFINITY)
    {
      goto LABEL_45;
    }

    (*(*a1 + 288))(a1, v8, &v49, v48.n128_f32[0]);
    while (1)
    {
      if ((*(*v49 + 24))(v49))
      {
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        if (a3)
        {
LABEL_45:
          if (a3 == 1)
          {
            v18.n128_u32[0] = (*(*a1 + 32))(a1, v9, v7);
            v19.n128_u32[0] = 2143289344;
            if (v10 != -INFINITY && v18.n128_f32[0] != -INFINITY)
            {
              v19.n128_u32[0] = 2139095040;
              v20 = v18.n128_f32[0] == INFINITY || v10 == INFINITY;
              v18.n128_f32[0] = v10 + v18.n128_f32[0];
              if (!v20)
              {
                v19.n128_f32[0] = v18.n128_f32[0];
              }
            }

            (*(*a1 + 176))(a1, v9, v19, v18);
          }
        }

        else
        {
          v21 = (*(*a1 + 32))(a1, v9);
          v22.n128_u32[0] = 2143289344;
          if (v21 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v22.n128_u32[0] = 2139095040;
            if (v21 != INFINITY)
            {
              v22.n128_f32[0] = v21 - v10;
            }
          }

          (*(*a1 + 176))(a1, v9, v22);
        }

        if (v50)
        {
          (*(*v50 + 32))(v50);
        }

        else
        {
          ++v52;
        }

        goto LABEL_3;
      }

      v11 = *(*(*v49 + 32))(v49);
      v48 = v11;
      if (v11.n128_i32[3] < ((a2[1] - *a2) >> 2))
      {
        v11.n128_u32[0] = *(*a2 + 4 * v48.n128_i32[3]);
        v54 = v11.n128_u32[0];
        v53 = 2139095040;
        v12.n128_u32[0] = v11.n128_u32[0];
        if (v11.n128_f32[0] != INFINITY)
        {
          break;
        }
      }

LABEL_41:
      (*(*v49 + 40))(v49, v11, v12);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_40:
        v11.n128_f64[0] = (*(*v49 + 88))(v49, &v48);
        goto LABEL_41;
      }

      v13 = NAN;
      if (v10 != -INFINITY)
      {
        v13 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v14 = v48.n128_f32[2] == INFINITY || v10 == INFINITY;
          v15 = v10 + v48.n128_f32[2];
          if (v14)
          {
            v15 = INFINITY;
          }

          v13 = NAN;
          if (v15 != -INFINITY && (v11.n128_u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
          {
            v13 = INFINITY;
            if (v15 != INFINITY)
            {
              v13 = v15 - v11.n128_f32[0];
            }
          }
        }
      }
    }

    else
    {
      v13 = NAN;
      if (v48.n128_f32[2] != -INFINITY && v11.n128_f32[0] != -INFINITY)
      {
        v16 = v48.n128_f32[2] == INFINITY || v11.n128_f32[0] == INFINITY;
        v17 = v11.n128_f32[0] + v48.n128_f32[2];
        if (v16)
        {
          v17 = INFINITY;
        }

        v13 = NAN;
        if (v17 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v13 = INFINITY;
          if (v17 != INFINITY)
          {
            v13 = v17 - v10;
          }
        }
      }
    }

    v48.n128_f32[2] = v13;
    goto LABEL_40;
  }

  while (1)
  {
LABEL_73:
    if (!v50)
    {
      if (v52 >= v51)
      {
        break;
      }

      goto LABEL_65;
    }

    if ((*(*v50 + 16))(v50))
    {
      break;
    }

    if (v50)
    {
      v23 = (*(*v50 + 24))(v50);
      goto LABEL_66;
    }

LABEL_65:
    v23 = v52;
LABEL_66:
    if (a3 == 1)
    {
      v14 = (*(*a1 + 32))(a1, v23) == -INFINITY;
      v24.n128_u32[0] = 2139095040;
      if (v14)
      {
        v24.n128_f32[0] = NAN;
      }

      (*(*a1 + 176))(a1, v23, v24);
    }

    if (v50)
    {
      (*(*v50 + 32))(v50);
    }

    else
    {
      ++v52;
    }
  }

  if ((*(*a1 + 24))(a1) >= ((a2[1] - *a2) >> 2))
  {
    v26 = INFINITY;
  }

  else
  {
    v26 = *(*a2 + 4 * (*(*a1 + 24))(a1));
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 0;
  v25.n128_f32[0] = v26;
  if (v26 == 0.0)
  {
    goto LABEL_137;
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 2139095040;
  v25.n128_f32[0] = v26;
  if (v26 == INFINITY)
  {
    goto LABEL_137;
  }

  v27 = (*(*a1 + 64))(a1, 0x2000000000, 1, v26);
  v28 = *a1;
  if ((v27 & 0x2000000000) == 0)
  {
    v29 = (*(v28 + 192))(a1);
    if (a3)
    {
      if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v26 = NAN;
      }

      else
      {
        v26 = 0.0 - v26;
      }
    }

    v30 = (*(*a1 + 24))(a1);
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = __PAIR64__(v30, LODWORD(v26));
    (*(*a1 + 200))(a1, v29, &v48);
    (*(*a1 + 168))(a1, v29);
    goto LABEL_137;
  }

  v31 = (*(v28 + 24))(a1);
  (*(*a1 + 288))(a1, v31, &v49);
  if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v32 = NAN;
  }

  else
  {
    v32 = 0.0 - v26;
  }

  while (2)
  {
    if (!(*(*v49 + 24))(v49))
    {
      v48 = *(*(*v49 + 32))(v49);
      v33 = NAN;
      if (a3)
      {
        if (v32 != -INFINITY)
        {
          v33 = NAN;
          if (v48.n128_f32[2] != -INFINITY)
          {
            v33 = INFINITY;
            v34 = v48.n128_f32[2] == INFINITY || v32 == INFINITY;
            v35 = v32 + v48.n128_f32[2];
LABEL_103:
            if (!v34)
            {
              v33 = v35;
            }
          }
        }
      }

      else if (v26 != -INFINITY)
      {
        v33 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v33 = INFINITY;
          v34 = v48.n128_f32[2] == INFINITY || v26 == INFINITY;
          v35 = v48.n128_f32[2] + v26;
          goto LABEL_103;
        }
      }

      v48.n128_f32[2] = v33;
      (*(*v49 + 88))(v49, &v48);
      (*(*v49 + 40))(v49);
      continue;
    }

    break;
  }

  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v36 = *(*a1 + 32);
  if (a3)
  {
    v37.n128_f32[0] = v36(a1, v31);
    v38 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v32 != INFINITY)
    {
      v38 = v32 + v37.n128_f32[0];
    }

    v41 = v37.n128_f32[0] == -INFINITY || v32 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v41)
    {
      v37.n128_f32[0] = v38;
    }
  }

  else
  {
    v37.n128_f32[0] = v36(a1, v31);
    v42 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v26 != INFINITY)
    {
      v42 = v37.n128_f32[0] + v26;
    }

    v45 = v37.n128_f32[0] == -INFINITY || v26 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v45)
    {
      v37.n128_f32[0] = v42;
    }
  }

  (*(*a1 + 176))(a1, v31, v37);
LABEL_137:
  v46 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0, v25);
  v47 = fst::ReweightProperties(v46);
  (*(*a1 + 184))(a1, v47, 0x3FFFFFFF0007);
  result = v50;
  if (v50)
  {
    return (*(*v50 + 8))(v50);
  }

  return result;
}

void sub_20624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveWeight<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t result, int a2, float a3)
{
  *&v16 = a3;
  LODWORD(v15) = 0;
  if (a3 == 0.0)
  {
    return result;
  }

  *&v16 = a3;
  LODWORD(v15) = 2139095040;
  if (a3 == INFINITY)
  {
    return result;
  }

  v4 = result;
  if (a2)
  {
    v17 = 0;
    (*(*result + 128))(result, &v16);
    while (1)
    {
      result = v16;
      if (!v16)
      {
        break;
      }

      v5 = (*(*v16 + 16))(v16);
      result = v16;
      if (v5)
      {
        if (v16)
        {
          return (*(*v16 + 8))();
        }

        return result;
      }

      if (!v16)
      {
        goto LABEL_11;
      }

      v6 = (*(*v16 + 24))();
      if (v16)
      {
        v7 = (*(*v16 + 24))(v16);
      }

      else
      {
        v7 = v17;
      }

LABEL_12:
      (*(*v4 + 32))(v4, v7);
      v9 = NAN;
      if (v8 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v9 = INFINITY;
        if (v8 != INFINITY)
        {
          v9 = v8 - a3;
        }
      }

      (*(*v4 + 176))(v4, v6, v9);
      if (v16)
      {
        (*(*v16 + 32))(v16);
      }

      else
      {
        ++v17;
      }
    }

    if (v17 >= SDWORD2(v16))
    {
      return result;
    }

LABEL_11:
    v6 = v17;
    v7 = v17;
    goto LABEL_12;
  }

  v10 = (*(*result + 24))(result);
  (*(*v4 + 288))(v4, v10, &v15);
  while (!(*(*v15 + 24))(v15))
  {
    v16 = *(*(*v15 + 32))(v15);
    v11 = NAN;
    if (*(&v16 + 2) != -INFINITY)
    {
      v12 = *(&v16 + 2) - a3;
      if (*(&v16 + 2) == INFINITY)
      {
        v12 = INFINITY;
      }

      if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v11 = v12;
      }
    }

    *(&v16 + 2) = v11;
    (*(*v15 + 88))(v15, &v16);
    (*(*v15 + 40))(v15);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v13 = (*(*v4 + 32))(v4, v10);
  v14.n128_u32[0] = 2143289344;
  if (v13 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v14.n128_u32[0] = 2139095040;
    if (v13 != INFINITY)
    {
      v14.n128_f32[0] = v13 - a3;
    }
  }

  return (*(*v4 + 176))(v4, v10, v14);
}

void sub_20B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, std::vector<int> *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2->__end_ = a2->__begin_;
  fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2->__end_ = a2->__begin_;
    __x = 2143289344;
    std::vector<int>::resize(a2, 1uLL, &__x);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ShortestDistanceState(v6);
}

void sub_20C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 216))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 280))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>>>(a1);
    (*(*a2 + 240))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v52 = 0;
  v40 = v9;
  if (a3)
  {
LABEL_29:
    v10 = (*(*a2 + 192))(a2);
    v17 = 1;
    v18 = 1;
    goto LABEL_31;
  }

  LODWORD(v46) = 0;
  (*(*a1 + 128))(a1, &v44);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v44)
    {
      v11 = (*(*v44 + 16))(v44);
      v12 = v44;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v44)
      {
        v13 = (*(*v44 + 24))();
        goto LABEL_11;
      }
    }

    else if (v46 >= v45)
    {
      goto LABEL_26;
    }

    v13 = v46;
LABEL_11:
    v14 = (*(*a1 + 32))(a1, v13);
    *&v41 = v14;
    LODWORD(v49) = 2139095040;
    v15 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = -1;
    }

    if (*&v41 == INFINITY)
    {
      v15 = 4;
    }

    v10 = v14 == INFINITY ? v10 : v16;
    if ((v15 | 4) != 4)
    {
      break;
    }

    if (v44)
    {
      (*(*v44 + 32))(v44);
    }

    else
    {
      LODWORD(v46) = v46 + 1;
    }
  }

  v12 = v44;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_29;
  }

  LODWORD(v44) = (*(*a1 + 32))(a1, v10);
  LODWORD(v41) = 0;
  if (*&v44 != 0.0)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v44 = &v49;
    v45 = 0;
    v46 = 0;
    v47 = &v52;
    fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1, &v44);
  }

  v17 = 0;
  v18 = 0;
LABEL_31:
  LODWORD(v43) = 0;
  (*(*a1 + 128))(a1, &v41);
  while (2)
  {
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_81;
      }

      goto LABEL_37;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v19 = (*(*v41 + 24))();
LABEL_38:
        v20 = v19 + v18;
        while ((*(*a2 + 152))(a2) <= v20)
        {
          (*(*a2 + 192))(a2);
        }

        if (v19 == v40)
        {
          (*(*a2 + 176))(a2, (v19 + v18), 0.0);
        }

        v21.n128_f32[0] = (*(*a1 + 32))(a1, v19);
        LODWORD(v44) = v21.n128_u32[0];
        LODWORD(v49) = 2139095040;
        v22.n128_u32[0] = v21.n128_u32[0];
        v23 = v17 ^ 1;
        if (v21.n128_f32[0] == INFINITY)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v44 = 0;
          LODWORD(v45) = v21.n128_u32[0];
          HIDWORD(v45) = v19 + v18;
          v21.n128_f64[0] = (*(*a2 + 200))(a2, 0, &v44);
        }

        v48 = 0;
        (*(*a1 + 136))(a1, v19, &v44, v21, v22);
LABEL_48:
        if (v44)
        {
          if ((*(*v44 + 24))(v44))
          {
            if (v44)
            {
              (*(*v44 + 8))();
              goto LABEL_76;
            }

LABEL_74:
            if (v47)
            {
              --*v47;
            }

LABEL_76:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              LODWORD(v43) = v43 + 1;
            }

            continue;
          }

          if (v44)
          {
            v24 = (*(*v44 + 32))();
LABEL_54:
            v25 = (*(v24 + 12) + v18);
            v26 = *(v24 + 8);
            if (v25 == v10)
            {
              v27 = v17;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = *(v24 + 8);
            }

            else
            {
              v29 = (*(*a1 + 32))(a1, v10);
              v28 = 2143289344;
              if (v29 != -INFINITY && v26 != -INFINITY)
              {
                v28 = 2139095040;
                v30 = v29 == INFINITY || v26 == INFINITY;
                v31 = v26 + v29;
                if (!v30)
                {
                  *&v28 = v31;
                }
              }
            }

            v49 = *v24;
            v50 = __PAIR64__(v20, v28);
            while (1)
            {
              v32 = (*(*a2 + 152))(a2);
              v33 = *a2;
              if (v32 > v25)
              {
                break;
              }

              (*(v33 + 192))(a2);
            }

            (*(v33 + 200))(a2, v25, &v49);
            if (v44)
            {
              (*(*v44 + 40))(v44);
            }

            else
            {
              ++v48;
            }

            goto LABEL_48;
          }
        }

        else if (v48 >= v46)
        {
          goto LABEL_74;
        }

        v24 = v45 + 16 * v48;
        goto LABEL_54;
      }

LABEL_37:
      v19 = v43;
      goto LABEL_38;
    }

    break;
  }

  if (v41)
  {
    (*(*v41 + 8))();
  }

LABEL_81:
  (*(*a2 + 168))(a2, v10);
  if (v10 == v40)
  {
    v34 = v17;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    (*(*a1 + 32))(a1, v40);
    (*(*a2 + 176))(a2, v40);
  }

  v35 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v36 = v52;
  v37 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v38 = fst::ReverseProperties(v36 | v35, v17);
  return (*(*a2 + 184))(a2, v37 | v38, 0x3FFFFFFF0007);
}

void sub_21894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 136);
  if (v22)
  {
    *(v20 - 128) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1, std::vector<int> *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2->__end_ = a2->__begin_;
  fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2->__end_ = a2->__begin_;
    __x = 2143289344;
    std::vector<int>::resize(a2, 1uLL, &__x);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ShortestDistanceState(v6);
}

void sub_21A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

void std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = off_271B40;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_221F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_22AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::NaturalLess<fst::LogWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v16 = v27;
      goto LABEL_12;
    }

    v15 = (*(*v25 + 16))(v25);
    result = v25;
    if (v15)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v16 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v16, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v17 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v17 = v22[1] + 16 * v24;
LABEL_19:
      v18 = *(*a2 + 4 * v16);
      if (v18 == *(*a2 + 4 * *(v17 + 12)))
      {
        v19 = *a3;
        if (!a4 || (v21 = 0, fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(a4, (v17 + 8), &v21)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v19[v18] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v19[v18] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_22EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::__append(a1, a2 - v2);
  }
}

void fst::AutoQueue<int>::~AutoQueue(void *a1)
{
  fst::AutoQueue<int>::~AutoQueue(a1);

  operator delete();
}

void *fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = off_271BB8;
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = off_271BB8;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  operator delete();
}

uint64_t fst::StateOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  if (*(result + 32) <= a2)
  {
    do
    {
      v6 = 0;
      result = std::vector<BOOL>::push_back(v2 + 24, &v6);
    }

    while (*(v2 + 32) <= v5);
  }

  *(*(v2 + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  return result;
}

uint64_t fst::StateOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::StateOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_271C20;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v2 = a1 + 24;
  v3 = &v4;
  fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a2);
}

void sub_23424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    operator new();
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_23C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void *fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = off_271C20;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = off_271C20;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t fst::TopOrderQueue<int>::Enqueue_(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Dequeue_(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    v6 = (v1 + 4 * v3);
    do
    {
      v7 = *v6++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::TopOrderQueue<int>::Clear_(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      operator delete();
    }

    v5 = 0;
    v6 = **a1;
    *v2;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

uint64_t fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_24144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_271C88;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_271C88;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_271CC8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_24318(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_271CC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_2461C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::LifoQueue<int>::~LifoQueue(uint64_t a1)
{
  std::deque<int>::~deque[abi:ne200100]((a1 + 16));

  operator delete();
}

void fst::LifoQueue<int>::Clear_(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::~__split_buffer(a1);
}

const void **std::deque<int>::push_front(const void **result, _DWORD *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<int>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 10)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

const void **std::deque<int>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x400)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 1024;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<int *>::emplace_front<int *&>(a1, v11);
}

void sub_24B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<int *>::emplace_front<int *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<int *>::emplace_back<int *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

void fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void *std::vector<fst::QueueType>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}