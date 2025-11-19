void sub_1C3113F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

_BYTE *kaldi::nnet1::Nnet::InfoGradient@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 15);
  if (*(this + 16) == v3 || (v4 = *v3, *(*(this + 15) + 8) == v4) || !(4 * *(v4 + 20) * *(v4 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### No gradient info");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "### Gradient stats :\n", 21);
    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E5318];
      do
      {
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Component ", 10);
        v9 = v6 + 1;
        v10 = MEMORY[0x1C692A960](v8, v6 + 1);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " : ", 3);
        v12 = (*(**(*this + 8 * v6) + 24))(*(*this + 8 * v6));
        kaldi::nnet1::Component::TypeToMarker(v12, &v24);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v24;
        }

        else
        {
          v13 = v24.__r_.__value_.__r.__words[0];
        }

        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v24.__r_.__value_.__l.__size_;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        (*(**(*this + 8 * v6) + 72))(__p);
        if ((v23 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v23 & 0x80u) == 0)
        {
          v18 = v23;
        }

        else
        {
          v18 = __p[1];
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(&v30, v7);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        std::ostream::flush();
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        ++v6;
      }

      while (v9 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v25 = *MEMORY[0x1E69E54E8];
    *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v26 = MEMORY[0x1E69E5548] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    return MEMORY[0x1C692AD30](&v29);
  }
}

_BYTE *kaldi::nnet1::Nnet::InfoPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2 || (v3 = *v2, *(*(this + 9) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### Forward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "### Forward propagation buffer content, note in the parallel GPU training, this only includes the first subbatch content :\n", 123);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "[0] output of <Input> ", 22);
    kaldi::nnet1::MomentStatistics<float>(**(this + 9));
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v35, MEMORY[0x1E69E5318]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 48;
      v12 = MEMORY[0x1E69E5318];
      do
      {
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "[", 1);
        v14 = v10 + 1;
        v15 = MEMORY[0x1C692A960](v13, v10 + 1);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] output of ", 12);
        v17 = (*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10));
        kaldi::nnet1::Component::TypeToMarker(v17, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = __p.__r_.__value_.__l.__size_;
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        kaldi::nnet1::MomentStatistics<float>(**(this + 9) + v11);
        if ((v37 & 0x80u) == 0)
        {
          locale = &v35;
        }

        else
        {
          locale = v35.__locale_;
        }

        if ((v37 & 0x80u) == 0)
        {
          v22 = v37;
        }

        else
        {
          v22 = v36;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, locale, v22);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(&v44, v12);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v44);
        std::ostream::put();
        std::ostream::flush();
        if (v37 < 0)
        {
          operator delete(v35.__locale_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 2055)
        {
          v25 = *(*this + 8 * v10);
          if (v25)
          {
            v26 = **v25;
          }

          (*v25)[31](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &__p;
          }

          else
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v27, v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 274)
        {
          v29 = *(*this + 8 * v10);
          if (v29)
          {
            v30 = **v29;
          }

          (*v29)[35](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__p;
          }

          else
          {
            v31 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v31, v32);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v11 += 48;
        ++v10;
      }

      while (v14 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v39 = *MEMORY[0x1E69E54E8];
    *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v40 = MEMORY[0x1E69E5548] + 16;
    if (v42 < 0)
    {
      operator delete(v41[7].__locale_);
    }

    v40 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v41);
    std::ostream::~ostream();
    return MEMORY[0x1C692AD30](&v43);
  }
}

_BYTE *kaldi::nnet1::Nnet::InfoBackPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(this + 16) == v2 || (v3 = *v2, *(*(this + 15) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### Backward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "### Backward propagation buffer content, Note in multi subbatch case, only the first subbatch is reported :\n", 108);
    if (*(*(this + 15) + 8) != **(this + 15))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "[0] diff of <Input> ", 20);
      kaldi::nnet1::MomentStatistics<float>(**(this + 15));
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v39, MEMORY[0x1E69E5318]);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x1E69E5318];
      do
      {
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "[", 1);
        v14 = v11 + 1;
        v15 = MEMORY[0x1C692A960](v13, v11 + 1);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] diff-output of ", 17);
        v17 = (*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11));
        kaldi::nnet1::Component::TypeToMarker(v17, &__p);
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
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11 < (((*(this + 1) - *this) << 29) - 0x100000000) >> 32)
        {
          kaldi::nnet1::MomentStatistics<float>(**(this + 15) + v10);
          v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v20, v21);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::ios_base::getloc((&v34 + *(v34 - 24)));
        v22 = std::locale::use_facet(&__p, v12);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 2055)
        {
          v23 = *(*this + 8 * v11);
          if (v23)
          {
            v24 = **v23;
          }

          (*v23)[32](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v25, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 274)
        {
          v27 = *(*this + 8 * v11);
          if (v27)
          {
            v28 = **v27;
          }

          (*v27)[36](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v29, v30);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v10 += 48;
        ++v11;
      }

      while (v14 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v34 = *MEMORY[0x1E69E54E8];
    *(&v34 + *(v34 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v35 = MEMORY[0x1E69E5548] + 16;
    if (v37 < 0)
    {
      operator delete(v36[7].__locale_);
    }

    v35 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v36);
    std::ostream::~ostream();
    return MEMORY[0x1C692AD30](&v38);
  }
}

void kaldi::nnet1::Nnet::CheckWeights(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) - *this >= 9uLL)
  {
    v3 = 0;
    do
    {
      if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
      {
        kaldi::nnet1::UpdatableComponent::CheckParams(*(*this + 8 * v3));
      }

      v1 = *this;
      v4 = v3 + 2;
      ++v3;
    }

    while (v4 < (*(this + 1) - *this) >> 3);
  }
}

float kaldi::nnet1::UpdatableComponent::CheckParams(kaldi::nnet1::UpdatableComponent *this)
{
  result = (*(*this + 208))(this);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CheckParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 420);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "'inf' in component parameters (weight explosion, try lower learning rate?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::Nnet::ResetRecurrentFlag(kaldi::nnet1::Nnet *this)
{
  v1 = (this + 24);
  v3 = (this + 48);
  v2 = *(this + 6);
  *(this + 4) = *(this + 3);
  *(this + 7) = v2;
  *(this + 76) = 0;
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v4 + 8 * v6);
      if (!v7)
      {
        goto LABEL_34;
      }

      v8 = *v7;
      v9 = **v7;
      if (!v10)
      {
        break;
      }

      v11 = v10;
      kaldi::nnet1::ParallelComponent::GetHistoricalComponents(v10, &v47);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v3, *(this + 7), v47, v48, (v48 - v47) >> 3);
      if (*(this + 153))
      {
        v12 = 1;
      }

      else
      {
        v19 = *(v11 + 23);
        v20 = *(v11 + 24);
        if (v19 == v20)
        {
          v12 = 0;
        }

        else
        {
          v12 = 0;
          do
          {
            if (v12)
            {
              v12 = 1;
            }

            else
            {
              v12 = *(v19 + 153);
            }

            v19 += 376;
          }

          while (v19 != v20);
        }
      }

      *(this + 153) = v12 & 1;
      kaldi::nnet1::ParallelComponent::GetRecurrentComponents(v11, &__p);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v1, *(this + 4), __p, v46, (v46 - __p) >> 3);
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

LABEL_51:
      ++v6;
      v4 = *this;
      if (v6 >= (*(this + 1) - *this) >> 3)
      {
        if (*(this + 3) != *(this + 4))
        {
          *(this + 152) = 1;
        }

        return;
      }
    }

    v13 = *v8;
    if (v14)
    {
      v15 = v14;
      if ((*(*v14 + 16))(v14) >= 1)
      {
        v17 = *(this + 7);
        v16 = *(this + 8);
        if (v17 >= v16)
        {
          v21 = (v17 - *v3) >> 3;
          if ((v21 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v22 = v16 - *v3;
          v23 = v22 >> 2;
          if (v22 >> 2 <= (v21 + 1))
          {
            v23 = v21 + 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(v3, v24);
          }

          *(8 * v21) = v15;
          v18 = 8 * v21 + 8;
          v25 = *(this + 6);
          v26 = *(this + 7) - v25;
          v27 = (8 * v21 - v26);
          memcpy(v27, v25, v26);
          v28 = *(this + 6);
          *(this + 6) = v27;
          *(this + 7) = v18;
          *(this + 8) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v15;
          v18 = (v17 + 1);
        }

        *(this + 7) = v18;
      }
    }

LABEL_34:
    v29 = *(*this + 8 * v6);
    if (v29)
    {
      v30 = **v29;
      if (v31)
      {
        v32 = v31;
        if ((*(*v31 + 2))(v31) >= 1)
        {
          v34 = *(this + 4);
          v33 = *(this + 5);
          if (v34 >= v33)
          {
            v36 = (v34 - *v1) >> 3;
            if ((v36 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v37 = v33 - *v1;
            v38 = v37 >> 2;
            if (v37 >> 2 <= (v36 + 1))
            {
              v38 = v36 + 1;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v39 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v38;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(v1, v39);
            }

            *(8 * v36) = v32;
            v35 = 8 * v36 + 8;
            v40 = *(this + 3);
            v41 = *(this + 4) - v40;
            v42 = (8 * v36 - v41);
            memcpy(v42, v40, v41);
            v43 = *(this + 3);
            *(this + 3) = v42;
            *(this + 4) = v35;
            *(this + 5) = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            *v34 = v32;
            v35 = (v34 + 1);
          }

          *(this + 4) = v35;
          v44 = **v32;
          {
            *(this + 153) = 1;
          }
        }
      }
    }

    goto LABEL_51;
  }
}

void sub_1C31156BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetHistoricalComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(&__p, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1C3115788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetRecurrentComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(&__p, *(v2 + 24), *(v2 + 32), (*(v2 + 32) - *(v2 + 24)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1C3115850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Nnet::ValidateNnet(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
  kaldi::nnet1::Nnet::CheckWeights(this);

  return kaldi::nnet1::Nnet::CheckInternalBuffers(this, v6, v7, v8, v9);
}

void std::vector<kaldi::nnet1::Component *>::resize(void *a1, unint64_t a2)
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
    std::vector<kaldi::nnet1::Component *>::__append(a1, a2 - v2);
  }
}

void kaldi::nnet1::Nnet::SetHistoryOptions(kaldi::nnet1::Nnet *this, const kaldi::nnet1::HistoryOptions *a2, uint64_t a3)
{
  v6 = *(this + 6);
  v7 = *(this + 7);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 80))(v8, a2);
  }

  v9 = *(this + 18);
  v10 = **v9;
  if (v11)
  {
    v14 = *(v11 + 8);
    *&v17[15] = *(v11 + 23);
    *v17 = v14;
    v16 = &unk_1F42CB1D8;
    v18 = &unk_1F42CB1F8;
    v15 = *(v11 + 13);
    v19 = *(a2 + 2);
    v20 = v15;
    kaldi::nnet1::Nnet::SetTrainOptions(this, &v16, a3, v12, v13);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16, "SetHistoryOptions", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1473);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v16);
  }
}

void *kaldi::nnet1::operator<<(void *a1, uint64_t a2)
{
  v4 = kaldi::nnet1::operator<<(a1, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", and Recurrent style components have additional configurations ", 64);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "num_sequences ", 14);
  MEMORY[0x1C692A960](v6, *(a2 + 48));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "bptt_steps ", 11);
  v8 = MEMORY[0x1C692A960](v7, *(a2 + 52));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NnetTrainOptions : ", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "learn_rate ", 11);
  v5 = *(a2 + 8);
  v6 = std::ostream::operator<<();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "momentum ", 9);
  v8 = *(a2 + 12);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "l2_penalty ", 11);
  v11 = *(a2 + 16);
  v12 = std::ostream::operator<<();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "l1_penalty ", 11);
  v14 = *(a2 + 20);
  v15 = std::ostream::operator<<();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "qtype_compact_grad ", 19);
  v18 = MEMORY[0x1C692A960](v17, *(a2 + 28));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "step_compact_grad ", 18);
  v20 = *(a2 + 24);
  v21 = std::ostream::operator<<();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "num_subbatches ", 15);
  v24 = MEMORY[0x1C692A960](v23, *(a2 + 32));
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "average_gradients ", 18);
  if (*(a2 + 36))
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  if (*(a2 + 36))
  {
    v28 = 4;
  }

  else
  {
    v28 = 5;
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", ", 2);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "vectorize_weights ", 18);
  if (*(a2 + 37))
  {
    v32 = "true";
  }

  else
  {
    v32 = "false";
  }

  if (*(a2 + 37))
  {
    v33 = 4;
  }

  else
  {
    v33 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
  return a1;
}

void kaldi::Timer::Reset(kaldi::Timer *this, clockid_t a2)
{
  *this = kaldi::Timer::GetSeconds(5, a2);
  if (*(this + 24) == 1)
  {
    *(this + 1) = kaldi::Timer::GetSeconds(0xC, v3);
  }

  *(this + 2) = kaldi::Timer::GetSeconds(0x10, v3);
}

char *std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - a1);
  result = *a5;
  if (v8 >= 1)
  {
    if (a4)
    {
      if (v8 >= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = (-1 << (a4 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -a4);
      *result = *result & ~v11 | *a3 & v11;
      *(a5 + 8) = (*(a5 + 8) - v10) & 0x3F;
    }

    if (v8 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 63;
    }

    v13 = v12 >> 6;
    result -= v12 >> 6;
    *a5 = result;
    v14 = &a3[-(v12 >> 6)];
    if ((v8 + 63) >= 0x7F)
    {
      memmove(result, v14, 8 * v13);
      result = *a5;
    }

    if (v8 - (v13 << 6) >= 1)
    {
      v15 = -1 << ((v13 << 6) - v8);
      v16 = *(v14 - 1) & v15;
      v17 = *--result;
      *a5 = result;
      *result = v17 & ~v15 | v16;
      *(a5 + 8) = -v8 & 0x3F;
    }
  }

  *a6 = result;
  *(a6 + 8) = *(a5 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v11 = *a5;
    LODWORD(v9) = *(a5 + 8);
  }

  else
  {
    if (a4)
    {
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v7;
      v8 = (-1 << (a4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -a4) & *a3;
      v9 = *(a5 + 8);
      if (v7 >= v9)
      {
        v10 = *(a5 + 8);
      }

      else
      {
        v10 = v7;
      }

      v11 = *a5;
      if (v10)
      {
        v12 = v8 >> (a4 - v9);
        if (v9 > a4)
        {
          v12 = v8 << (v9 - a4);
        }

        *v11 = *v11 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v12;
        LODWORD(v9) = (v9 - v10) & 0x3F;
        *(a5 + 8) = v9;
        v7 -= v10;
      }

      if (v7 >= 1)
      {
        v13 = *--v11;
        *a5 = v11;
        LODWORD(v9) = -v7 & 0x3F;
        *(a5 + 8) = v9;
        *v11 = v13 & ~(-1 << -v7) | (v8 << (v7 + v10 - a4 + (-v7 & 0x3F)));
      }
    }

    else
    {
      LODWORD(v9) = *(a5 + 8);
      v11 = *a5;
    }

    v14 = 64 - v9;
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    if (v6 >= 64)
    {
      v16 = *v11;
      do
      {
        v17 = v6;
        v19 = *--a3;
        v18 = v19;
        result = v19 >> v14;
        *v11 = v16 & ~v15 | (v19 >> v14);
        v20 = *--v11;
        v16 = v20 & v15 | (v18 << v9);
        *v11 = v16;
        v6 = v17 - 64;
      }

      while (v17 > 0x7F);
      *a5 = v11;
    }

    if (v6 >= 1)
    {
      v21 = *(a3 - 1) & (-1 << -v6);
      if (v6 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v6;
      }

      *v11 = *v11 & ~((-1 << (v9 - v22)) & v15) | (v21 >> v14);
      LODWORD(v9) = (v9 - v22) & 0x3F;
      *(a5 + 8) = v9;
      if (v6 - v22 >= 1)
      {
        v23 = *--v11;
        *a5 = v11;
        *(a5 + 8) = (v22 - v6) & 0x3F;
        *v11 = v23 & ~(-1 << (v22 - v6)) | (v21 << (v6 + ((v22 - v6) & 0x3F)));
        LODWORD(v9) = (v22 - v6) & 0x3F;
      }
    }
  }

  *a6 = v11;
  *(a6 + 8) = v9;
  return result;
}

unint64_t *std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
      if (v6 >= (64 - a2))
      {
        v8 = 64 - a2;
      }

      else
      {
        v8 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v8;
      v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v8)) & (-1 << a2) & *result;
      v10 = *(a5 + 8);
      if (v8 >= (64 - v10))
      {
        v11 = (64 - v10);
      }

      else
      {
        v11 = v8;
      }

      v12 = *a5;
      v13 = v9 >> (a2 - v10);
      v14 = v10 >= a2;
      v16 = v10 - a2;
      v15 = v16 != 0 && v14;
      v17 = v9 << v16;
      if (!v15)
      {
        v17 = v13;
      }

      *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
      v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v10 + v11) & 0x3F;
      *(a5 + 8) = v19;
      v20 = v8 - v11;
      if (v20 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20) | (v9 >> (v11 + v7));
        *(a5 + 8) = v20;
        v19 = v20;
      }

      ++result;
    }

    else
    {
      v19 = *(a5 + 8);
      v18 = *a5;
    }

    v21 = 64 - v19;
    v22 = -1 << v19;
    if (v6 >= 64)
    {
      v23 = *v18;
      do
      {
        v24 = v6;
        v26 = *result++;
        v25 = v26;
        *v18 = v23 & ~v22 | (v26 << v19);
        v27 = v18[1];
        ++v18;
        v23 = v27 & v22 | (v25 >> v21);
        *v18 = v23;
        v6 = v24 - 64;
      }

      while (v24 > 0x7F);
      *a5 = v18;
    }

    if (v6 >= 1)
    {
      v28 = *result & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      if (v6 >= v21)
      {
        v29 = 64 - v19;
      }

      else
      {
        v29 = v6;
      }

      *v18 = *v18 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v29)) & v22) | (v28 << v19);
      v18 = (v18 + (((v29 + v19) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v19 + v29) & 0x3F;
      *(a5 + 8) = v19;
      v30 = v6 - v29;
      if (v30 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | (v28 >> v29);
        *(a5 + 8) = v30;
        v19 = v30;
      }
    }
  }

  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

void std::vector<kaldi::nnet1::Component *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t kaldi::InitKaldiInputStream(uint64_t a1, _BYTE *a2)
{
  if (std::istream::peek())
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    std::istream::get();
    v4 = std::istream::peek();
    if (v4 << 24 == 1107296256)
    {
      std::istream::get();
      result = 1;
      *a2 = 1;
    }

    else
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        v5 = v4;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8, "InitKaldiInputStream", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 381);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Was looking for B, but got ", 27);
        v7 = MEMORY[0x1C692A960](v6, v5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v8);
      }

      return 0;
    }
  }

  return result;
}

void sub_1C311671C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *kaldi::nnet1::NormalizeComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);
  v7 = *(a2 + 20);
  v15[2] = 0;
  v16 = 0;
  v15[0] = &unk_1F42BFF70;
  v15[1] = 0;
  kaldi::CuVector<float>::Resize(v15, v7, 0, v8, v9);
  v16 = *(a3 + 32);
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v15, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v15, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v15, -0.5);
  kaldi::CuMatrixBase<float>::MulRowsVec(a3, v15, v11, v12, v13);
  return kaldi::CuVector<float>::~CuVector(v15);
}

void *kaldi::nnet1::NormalizeComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 20);
  v24[2] = 0;
  v25 = 0;
  v24[0] = &unk_1F42BFF70;
  v24[1] = 0;
  kaldi::CuVector<float>::Resize(v24, v8, 0, a4, a5);
  v25 = *(a5 + 32);
  v9 = v25;
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v24, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v24, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v24, -0.5);
  LODWORD(v11) = 1.0;
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v24, a4, 111, v12, v11, 0.0);
  kaldi::CuVectorBase<float>::ReplaceValue(v24, 8589900000.0, 0.0);
  kaldi::CuVectorBase<float>::ApplyPow(v24, 3.0);
  v13 = *(a5 + 20);
  v22[2] = 0;
  v23 = 0;
  v22[0] = &unk_1F42BFF70;
  v22[1] = 0;
  kaldi::CuVector<float>::Resize(v22, v13, 0, v14, v15);
  v23 = v9;
  kaldi::CuVectorBase<float>::AddDiagMatMat(v22, a4, 111, a2, 112, 1.0, 0.0);
  kaldi::CuVectorBase<float>::MulElements(v22, v24, v16, v17, v18);
  v19 = -1.0 / *(a2 + 16);
  *&v19 = v19;
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v22, a2, 111, v20, v19, 1.0);
  kaldi::CuVector<float>::~CuVector(v22);
  return kaldi::CuVector<float>::~CuVector(v24);
}

void sub_1C3116B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::NormalizeComponent::~NormalizeComponent(kaldi::nnet1::NormalizeComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  JUMPOUT(0x1C692AE10);
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42CB2F0;
  *(a1 + 88) = &unk_1F42CB420;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = &unk_1F42BFED8;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = &unk_1F42BFED8;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42CB2F0;
  *(a1 + 88) = &unk_1F42CB420;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = &unk_1F42BFED8;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = &unk_1F42BFED8;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::CuMatrixBase<float>>();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_1C3117160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 20) = v14;
    operator delete(v14);
  }

  v15 = *v11;
  if (*v11)
  {
    *(v10 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    *(v10 + 14) = v16;
    operator delete(v16);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a10);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 944);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v4 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v4++));
    }

    while (v4 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void *kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!result)
  {
    kaldi::KaldiAssertFailure_("DeletePointers", "../engine/common/libquasar/libkaldi/src/util/stl-utils.h", 0xB0, "v != NULL", a5);
  }

  v5 = *result;
  v6 = result[1];
  while (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      result = (*(*result + 8))(result);
      *v5 = 0;
    }

    ++v5;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = &unk_1F42CB2F0;
  v6 = a1 + 88;
  *(a1 + 88) = &unk_1F42CB420;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v12 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 256);
  if (v7)
  {
    *(a1 + 264) = v7;
    operator delete(v7);
  }

  v12 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 176);
  if (v8)
  {
    *(a1 + 184) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    *(a1 + 160) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    *(a1 + 136) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v6);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v127 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v126);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v125);
  v109 = 0;
  v124 = -1;
  *(a1 + 460) = 1;
  memset(v123, 0, sizeof(v123));
  v10 = (a1 + 200);
  v110 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v123, v8, v9);
    if ((SHIBYTE(v123[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v123[2]) > 0xDu)
      {
        if (HIBYTE(v123[2]) <= 0x11u)
        {
          if (HIBYTE(v123[2]) == 14)
          {
            v35 = v123;
            goto LABEL_174;
          }

          if (HIBYTE(v123[2]) != 15)
          {
            if (HIBYTE(v123[2]) != 17)
            {
              goto LABEL_269;
            }

            v11 = v123[0] == 0x69446465626D453CLL && v123[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v123[2]) != 62)
            {
              goto LABEL_269;
            }

LABEL_17:
            __p = 0;
            v119 = 0;
            v120 = 0;
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v123[0] == 0x61526E7261654C3CLL && *(v123 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v123[0] != 0x656E67697373413CLL || *(v123 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_269;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v123[2]) != 18)
        {
          if (HIBYTE(v123[2]) != 19)
          {
            if (HIBYTE(v123[2]) != 20)
            {
              goto LABEL_269;
            }

            v18 = v123[0] == 0x6C616974696E493CLL && v123[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v123[2]) != 1047814499)
            {
              goto LABEL_269;
            }

            goto LABEL_180;
          }

          if (v123[0] != 0x61725474696E493CLL || v123[1] != 0x79546D726F66736ELL || *(&v123[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_269;
          }

          goto LABEL_103;
        }

        if (v123[0] != 0x6E6569646172473CLL || v123[1] != 0x7079546D726F4E74 || LOWORD(v123[2]) != 15973)
        {
          goto LABEL_269;
        }

LABEL_199:
        v30 = &v125;
        goto LABEL_200;
      }

      if (HIBYTE(v123[2]) > 0xAu)
      {
        if (HIBYTE(v123[2]) == 11)
        {
          v38 = v123[0] == 0x756F72476D754E3CLL && *(v123 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v123[0] == 0x6C6261546D754E3CLL && *(v123 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_269;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v123[2]) != 12)
        {
          if (v123[0] != 0x74536D617261503CLL || *(v123 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_269;
          }

          goto LABEL_189;
        }

        if (v123[0] == 0x536D6F646E61523CLL && LODWORD(v123[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v123[0] != 0x69536261636F563CLL || LODWORD(v123[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        __p = 0;
        v119 = 0;
        v120 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v123[2]) != 9)
      {
        if (HIBYTE(v123[2]) != 10)
        {
          goto LABEL_269;
        }

        if (v123[0] != 0x6D65744978614D3CLL || LOWORD(v123[1]) != 15987)
        {
          goto LABEL_269;
        }

LABEL_66:
        __p = 0;
        v119 = 0;
        v120 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v123[0] == 0x6461724778614D3CLL && LOBYTE(v123[1]) == 62;
      goto LABEL_138;
    }

    v14 = v123[1];
    if (v123[1] <= 12)
    {
      if (v123[1] > 10)
      {
        if (v123[1] == 11)
        {
          v40 = *v123[0] == 0x756F72476D754E3CLL && *(v123[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v123[0] == 0x6C6261546D754E3CLL && *(v123[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v123[0] == 0x536D6F646E61523CLL && *(v123[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v124;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7);
            goto LABEL_203;
          }

          if (*v123[0] == 0x69536261636F563CLL && *(v123[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v123[1] == 9)
        {
          v34 = *v123[0] == 0x6461724778614D3CLL && *(v123[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_269;
          }

          goto LABEL_190;
        }

        if (v123[1] != 10)
        {
          goto LABEL_158;
        }

        if (*v123[0] == 0x6D65744978614D3CLL && *(v123[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v123[1] > 16)
    {
      if (v123[1] != 17)
      {
        if (v123[1] == 18)
        {
          if (*v123[0] != 0x6E6569646172473CLL || *(v123[0] + 1) != 0x7079546D726F4E74 || *(v123[0] + 8) != 15973)
          {
            goto LABEL_269;
          }

          goto LABEL_199;
        }

        if (v123[1] == 19)
        {
          if (*v123[0] != 0x61725474696E493CLL || *(v123[0] + 1) != 0x79546D726F66736ELL || *(v123[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_269;
          }

LABEL_103:
          v30 = &v126;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v123[0] == 0x69446465626D453CLL && *(v123[0] + 1) == 0x736E6F69736E656DLL && *(v123[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v123[1];
LABEL_158:
      if (v14 != 15)
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v123[1] == 13)
    {
      if (*v123[0] != 0x74536D617261503CLL || *(v123[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_269;
      }

LABEL_189:
      v7 = &v127;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7);
      goto LABEL_203;
    }

    if (v123[1] != 15)
    {
      goto LABEL_158;
    }

    v25 = *v123[0] == 0x61526E7261654C3CLL && *(v123[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v123[0] != 0x656E67697373413CLL || *(v123[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    __p = 0;
    v119 = 0;
    v120 = 0;
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(v120) < 0)
    {
      operator delete(__p);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v123[1];
LABEL_164:
  if (v14 == 20)
  {
    v45 = *v123[0] == 0x6C616974696E493CLL && *(v123[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v123[0] + 4) == 1047814499)
    {
LABEL_180:
      v109 = 1;
      goto LABEL_203;
    }
  }

  v47 = v123[1];
  if (v123[1] != 14)
  {
    goto LABEL_208;
  }

  v35 = v123[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460));
    goto LABEL_203;
  }

  if ((HIBYTE(v123[2]) & 0x80) == 0)
  {
    if (HIBYTE(v123[2]) == 12)
    {
LABEL_206:
      v55 = v123;
      goto LABEL_210;
    }

    goto LABEL_269;
  }

  v47 = v123[1];
LABEL_208:
  if (v47 != 12)
  {
    goto LABEL_269;
  }

  v55 = v123[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_269:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 276);
    v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v123[2]) >= 0)
    {
      v102 = v123;
    }

    else
    {
      v102 = v123[0];
    }

    if (SHIBYTE(v123[2]) >= 0)
    {
      v103 = HIBYTE(v123[2]);
    }

    else
    {
      v103 = v123[1];
    }

    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v102, v103);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v110 >= 1)
  {
    v112[0] = 0;
    v112[1] = 0;
    v113 = 0;
    LODWORD(v111) = 0;
    v117 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, v112, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(v112);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v111);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v117);
    kaldi::nnet1::Component::NewComponentOfType(v61);
  }

  if ((v109 & 1) == 0)
  {
    goto LABEL_235;
  }

  v63 = *(a1 + 256);
  v62 = *(a1 + 264);
  if (v63 == v62)
  {
    if (!*(*v63 + 12))
    {
      goto LABEL_233;
    }

    v64 = 0;
LABEL_280:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 309);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v107 = MEMORY[0x1C692A960](v106, v64);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, " actual dim is ", 15);
    MEMORY[0x1C692A960](v108, *(**(a1 + 256) + 12));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  LODWORD(v64) = 0;
  v65 = *(a1 + 256);
  do
  {
    v66 = *v65++;
    v64 = (*(v66 + 8) + v64);
  }

  while (v65 != v62);
  if (v64 != *(*v63 + 12))
  {
    goto LABEL_280;
  }

  v67 = 0;
  do
  {
    v68 = *v63;
    if (!*v63)
    {
LABEL_276:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 331);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v69 = *v68;
    v70 = **v68;
    if (v71)
    {
      v72 = v71;
      kaldi::Matrix<float>::Matrix(&__p, v71[3], v71[2], 0, 0);
      v73 = v72[3];
      v114 = 0;
      v115 = 0;
      v116 = 0;
      kaldi::Vector<float>::Resize(&v114, v73, 0, v74, v75);
      kaldi::SubMatrix<float>::SubMatrix(v112, &__p, v67, v72[2], 0, v119);
      kaldi::MatrixBase<float>::AddToDiag(v112, 1.0);
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v112);
      kaldi::nnet1::AffineTransform::SetLinearity(v72, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v72, &v114);
      v76 = v72[2];
      kaldi::Vector<float>::Destroy(&v114);
    }

    else
    {
      v77 = *v69;
      if (!v78)
      {
        goto LABEL_276;
      }

      v79 = v78;
      kaldi::Matrix<float>::Matrix(&__p, v78[3], v78[2], 0, 0);
      kaldi::SubMatrix<float>::SubMatrix(v112, &__p, v67, *(v79 + 8), 0, v119);
      kaldi::MatrixBase<float>::AddToDiag(v112, 1.0);
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v112);
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v79, &__p);
      v76 = *(v79 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v67 = v76 + v67;
    ++v63;
  }

  while (v63 != v62);
  v10 = (a1 + 200);
  if (v67 != v64)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x150, "shift == total_dim", v80);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 337);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v126);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v125);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 344);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v115 = 0;
  v116 = 0;
  v114 = &v115;
  if (*v110 < 1)
  {
    v88 = 0;
  }

  else
  {
    v83 = 0;
    do
    {
      v84 = *(*(a1 + 176) + 4 * v83);
      LODWORD(v112[0]) = v84;
      if (v84 < 0 || v84 >= *v10)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x15E, "table_idx >= 0 && table_idx < num_tables_", v82);
      }

      v85 = *(*(a1 + 104) + 4 * v83);
      v86 = *(*(a1 + 152) + 4 * v83);
      __p = v112;
      v87 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, v112);
      *(v87 + 8) = v85;
      *(v87 + 9) = v86;
      ++v83;
    }

    while (v83 < *v110);
    v88 = v116;
  }

  if (v88 != *v10)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x161, "table_dims.size() == num_tables_", v82);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), v88);
  if (v124 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v124);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v117 = 0;
  if (*v10 >= 1)
  {
    v112[0] = &v117;
    v89 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, &v117);
    v90 = *(v89 + 8);
    v91 = *(v89 + 9);
    kaldi::Matrix<float>::Matrix(v112, v90, v91, 0, 0);
    if (v90 < 1)
    {
LABEL_258:
      kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::Matrix<float>>();
    }

    v95 = 0;
    while (v91 < 1)
    {
LABEL_257:
      if (++v95 == v90)
      {
        goto LABEL_258;
      }
    }

    v96 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v99 = *&v127;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v92, v93, v94);
        v98 = v99 * v100;
LABEL_255:
        *(v112[0] + v95 * v113 + v96) = v98;
      }

      else if (inited == 1)
      {
        v97 = *&v127;
        v98 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v92, v93, v94) + -0.5) * (v97 + v97);
        goto LABEL_255;
      }

      if (v91 == ++v96)
      {
        goto LABEL_257;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  v112[0] = &v120;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v112);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&v114, v115);
  if (SHIBYTE(v123[2]) < 0)
  {
    operator delete(v123[0]);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }
}

void sub_1C31189A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(va, v13);
  if (*(v9 - 169) < 0)
  {
    operator delete(*(v9 - 192));
  }

  if (*(v9 - 137) < 0)
  {
    operator delete(*(v9 - 160));
  }

  if (*(v9 - 113) < 0)
  {
    operator delete(*(v9 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1C31189C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x1C31189D4);
  }

  JUMPOUT(0x1C3118A04);
}

void sub_1C31189E4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1C31189F0);
}

unsigned int *kaldi::nnet1::AffineTransform::SetLinearity(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  if (v4 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x26B, "linearity.NumRows() == Linearity().NumRows()", v5);
  }

  v6 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x26C, "linearity.NumCols() == Linearity().NumCols()", v7);
  }

  v8 = kaldi::nnet1::AffineTransform::Linearity(a1);

  return kaldi::CuMatrixBase<float>::CopyFromMat(v8, a2, 111, v9, v10);
}

_DWORD *kaldi::nnet1::AffineTransform::SetBias(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != *(kaldi::nnet1::AffineTransform::Bias(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetBias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 0x260, "bias.Dim() == Bias().Dim()", v5);
  }

  v6 = kaldi::nnet1::AffineTransform::Bias(a1);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v6, a2, v7, v8, v9);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      v97 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 508);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "must have at least one group, you used ", 39);
      MEMORY[0x1C692A960](v54, *(v97 + 96));
    }

    else
    {
      v2 = *(result + 200);
      if (v2 <= 0)
      {
        v98 = result;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 511);
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "must have at least one embedding table, you used ", 49);
        MEMORY[0x1C692A960](v55, *(v98 + 200));
      }

      else if (v1 < v2)
      {
        v99 = result;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 514);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are only ", 15);
        v57 = MEMORY[0x1C692A960](v56, *(v99 + 96));
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " groups, but you set ", 21);
        v59 = MEMORY[0x1C692A960](v58, *(v99 + 200));
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v59, " embedding tables");
      }

      else
      {
        v3 = *(result + 104);
        v4 = *(result + 112) - v3;
        v5 = v4 >> 2;
        if (v4 >> 2 == v1)
        {
          v6 = *(result + 128);
          if (*(result + 136) - v6 == v4)
          {
            v7 = *(result + 152);
            if (*(result + 160) - v7 == v4)
            {
              v8 = *(result + 176);
              if (*(result + 184) - v8 == v4)
              {
                v9 = *(result + 208);
                if (v2 == (*(result + 216) - v9) >> 3)
                {
                  v10 = *(result + 460);
                  if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
                  {
                    v106 = result;
                    kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 533);
                    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are ", 10);
                    v80 = MEMORY[0x1C692A960](v79, *(v106 + 96));
                    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " groups, but the number of feature transforms is ", 49);
                    MEMORY[0x1C692A980](v81, (*(v106 + 264) - *(v106 + 256)) >> 3);
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    do
                    {
                      v14 = *(v8 + 4 * v11);
                      if ((v14 & 0x80000000) != 0 || v14 >= v2)
                      {
                        v88 = *(v8 + 4 * v11);
                        v94 = result;
                        v113 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
                        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v40 = MEMORY[0x1C692A960](v39, v113);
                        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "-th group has assigned table index ", 35);
                        v42 = MEMORY[0x1C692A960](v41, v88);
                        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " , the number of tables is ", 27);
                        MEMORY[0x1C692A960](v43, *(v94 + 200));
                        goto LABEL_32;
                      }

                      v15 = *(v3 + 4 * v11);
                      if (v15 <= 0)
                      {
                        v90 = result;
                        v109 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 547);
                        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v24 = MEMORY[0x1C692A960](v23, v109);
                        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-th group has invalid vocab size ", 33);
                        MEMORY[0x1C692A960](v25, *(*(v90 + 104) + 4 * v109));
                        goto LABEL_32;
                      }

                      v16 = *(v6 + 4 * v11);
                      if (v16 <= 0)
                      {
                        v91 = result;
                        v110 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 550);
                        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v27 = MEMORY[0x1C692A960](v26, v110);
                        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "-th group has invalid max item value ", 37);
                        MEMORY[0x1C692A960](v28, *(*(v91 + 128) + 4 * v110));
                        goto LABEL_32;
                      }

                      v17 = *(v7 + 4 * v11);
                      if (v17 <= 0)
                      {
                        v89 = result;
                        v108 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
                        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v21 = MEMORY[0x1C692A960](v20, v108);
                        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-th group has invalid embedding dimension value ", 48);
                        MEMORY[0x1C692A960](v22, *(*(v89 + 152) + 4 * v108));
                        goto LABEL_32;
                      }

                      v18 = *(v9 + 8 * v14);
                      if (*(v18 + 20) != v15)
                      {
                        v87 = *(v8 + 4 * v11);
                        v93 = result;
                        v112 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 558);
                        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v35 = MEMORY[0x1C692A960](v34, v112);
                        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "-th group has mismatched embedding table and vocab size ", 56);
                        v37 = MEMORY[0x1C692A960](v36, *(*(*(v93 + 208) + 8 * v87) + 20));
                        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " vs ", 4);
                        MEMORY[0x1C692A960](v38, *(*(v93 + 104) + 4 * v112));
                        goto LABEL_32;
                      }

                      if (*(v18 + 16) != v17)
                      {
                        v86 = *(v8 + 4 * v11);
                        v92 = result;
                        v111 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 562);
                        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                        v30 = MEMORY[0x1C692A960](v29, v111);
                        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "-th group has mismatched embedding table and embedding dim ", 59);
                        v32 = MEMORY[0x1C692A960](v31, *(*(*(v92 + 208) + 8 * v86) + 16));
                        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " vs ", 4);
                        MEMORY[0x1C692A960](v33, *(*(v92 + 152) + 4 * v111));
                        goto LABEL_32;
                      }

                      if (*(result + 460))
                      {
                        v19 = *(*(result + 256) + 8 * v11);
                        if (v17 != *(v19 + 8))
                        {
                          v96 = result;
                          v115 = v11;
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 566);
                          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                          v50 = MEMORY[0x1C692A960](v49, v115);
                          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "-th group has mismatched embedding table and feature transform ", 63);
                          v52 = MEMORY[0x1C692A960](v51, *(*(v96 + 152) + 4 * v115));
                          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " vs ", 4);
                          MEMORY[0x1C692A960](v53, *(*(*(v96 + 256) + 8 * v115) + 8));
                          goto LABEL_32;
                        }

                        if (*(result + 12) != *(v19 + 12))
                        {
                          v95 = result;
                          v114 = v11;
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 570);
                          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the ", 4);
                          v45 = MEMORY[0x1C692A960](v44, v114);
                          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "-th group has feature transform output dim ", 43);
                          v47 = MEMORY[0x1C692A960](v46, *(*(*(v95 + 256) + 8 * v114) + 12));
                          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " does not match component output dim ", 37);
                          MEMORY[0x1C692A960](v48, *(v95 + 12));
                          goto LABEL_32;
                        }
                      }

                      v12 += v17;
                      v13 += v16;
                      ++v11;
                    }

                    while (v1 != v11);
                    if (*(result + 8) == v13)
                    {
                      if ((v10 & 1) != 0 || v12 == *(result + 12))
                      {
                        *(result + 544) = 1;
                        return result;
                      }

                      v117 = v12;
                      v107 = result;
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 580);
                      v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "Total embedding size of ", 24);
                      v83 = MEMORY[0x1C692A960](v82, v117);
                      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " doesn't match the component output size of ", 44);
                      v85 = MEMORY[0x1C692A960](v84, *(v107 + 12));
                      std::operator<<[abi:ne200100]<std::char_traits<char>>(v85, " when transforms are not used");
                    }

                    else
                    {
                      v116 = v13;
                      v105 = result;
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 576);
                      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "input dim of the component is ", 30);
                      v77 = MEMORY[0x1C692A960](v76, *(v105 + 8));
                      v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " , while the input dim defined in max items is ", 47);
                      MEMORY[0x1C692A960](v78, v116);
                    }
                  }
                }

                else
                {
                  v104 = result;
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 529);
                  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "the actual number of embedding tables is ", 41);
                  v74 = MEMORY[0x1C692A980](v73, (*(v104 + 216) - *(v104 + 208)) >> 3);
                  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " and different than ", 20);
                  MEMORY[0x1C692A960](v75, *(v104 + 200));
                }
              }

              else
              {
                v103 = result;
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 526);
                v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are ", 10);
                v70 = MEMORY[0x1C692A960](v69, *(v103 + 96));
                v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " groups, but ", 13);
                v72 = MEMORY[0x1C692A980](v71, (*(v103 + 184) - *(v103 + 176)) >> 2);
                std::operator<<[abi:ne200100]<std::char_traits<char>>(v72, " groups have assigned tables");
              }
            }

            else
            {
              v102 = result;
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 523);
              v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are ", 10);
              v67 = MEMORY[0x1C692A960](v66, *(v102 + 96));
              v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " groups, but the embedding dim list size is ", 44);
              MEMORY[0x1C692A980](v68, (*(v102 + 160) - *(v102 + 152)) >> 2);
            }
          }

          else
          {
            v101 = result;
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 520);
            v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are ", 10);
            v64 = MEMORY[0x1C692A960](v63, *(v101 + 96));
            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " groups, but the max item list size is ", 39);
            MEMORY[0x1C692A980](v65, (*(v101 + 136) - *(v101 + 128)) >> 2);
          }
        }

        else
        {
          v100 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v118, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 517);
          v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "there are ", 10);
          v61 = MEMORY[0x1C692A960](v60, *(v100 + 96));
          v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " groups, but the number vocab list size is ", 43);
          MEMORY[0x1C692A980](v62, (*(v100 + 112) - *(v100 + 104)) >> 2);
        }
      }
    }

LABEL_32:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v118);
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v62 = 0uLL;
  v63 = 0;
  *(a1 + 460) = 1;
  v57 = (a1 + 456);
  v6 = (a1 + 452);
  v7 = (a1 + 200);
  v8 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v62, v9, v10);
    if (SHIBYTE(v63) < 0)
    {
      v14 = *(&v62 + 1);
      if (*(&v62 + 1) == 11)
      {
        v31 = *v62 == 0x756F72476D754E3CLL && *(v62 + 3) == 0x3E7370756F72476DLL;
        v32 = v8;
        if (v31)
        {
          goto LABEL_108;
        }

        v33 = *v62 == 0x6C6261546D754E3CLL && *(v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (v33)
        {
          goto LABEL_108;
        }
      }

      if (*(&v62 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v62 != 0x69536261636F563CLL || *(v62 + 8) != 1047750010)
      {
        v14 = *(&v62 + 1);
LABEL_20:
        if (v14 == 10 && *v62 == 0x6D65744978614D3CLL && *(v62 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v62 + 1) == 15)
        {
          if (*v62 == 0x656E67697373413CLL && *(v62 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v62 + 1) == 17)
        {
          v17 = *v62 == 0x69446465626D453CLL && *(v62 + 8) == 0x736E6F69736E656DLL;
          if (v17 && *(v62 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v62 + 1) == 9)
        {
          v22 = *v62 == 0x6461724778614D3CLL && *(v62 + 8) == 62;
          v23 = v6;
          if (v22)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v62 + 1) == 18)
        {
          v20 = *v62 == 0x6E6569646172473CLL && *(v62 + 8) == 0x7079546D726F4E74;
          if (v20 && *(v62 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v62 + 1) != 14)
        {
          if (*(&v62 + 1) != 15 || (*v62 == 0x61526E7261654C3CLL ? (v24 = *(v62 + 7) == 0x3E66656F43657461) : (v24 = 0), v23 = v57, !v24))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 413);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
            if (v63 >= 0)
            {
              v54 = &v62;
            }

            else
            {
              v54 = v62;
            }

            if (v63 >= 0)
            {
              v55 = HIBYTE(v63);
            }

            else
            {
              v55 = *(&v62 + 1);
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
          }

          goto LABEL_114;
        }

        v25 = v62;
        goto LABEL_102;
      }

LABEL_80:
      __p = 0;
      v60 = 0;
      v61 = 0;
      kaldi::ReadToken(a2, a3, &__p, v11, v12);
      kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v29);
LABEL_136:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }
    }

    else if (HIBYTE(v63) > 0xDu)
    {
      if (HIBYTE(v63) > 0x10u)
      {
        if (HIBYTE(v63) == 17)
        {
          if (v62 != 0x69446465626D453CLL || *(&v62 + 1) != 0x736E6F69736E656DLL || v63 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v45);
          goto LABEL_136;
        }

        if (HIBYTE(v63) != 18)
        {
          goto LABEL_149;
        }

        v41 = v62 == 0x6E6569646172473CLL && *(&v62 + 1) == 0x7079546D726F4E74;
        if (!v41 || v63 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
        goto LABEL_136;
      }

      if (HIBYTE(v63) != 14)
      {
        if (HIBYTE(v63) != 15)
        {
          goto LABEL_149;
        }

        if (v62 == 0x656E67697373413CLL && *(&v62 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v40);
          goto LABEL_136;
        }

        v27 = v62 == 0x61526E7261654C3CLL && *(&v62 + 7) == 0x3E66656F43657461;
        v23 = v57;
        if (!v27)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v25 = &v62;
LABEL_102:
      v36 = *v25;
      v37 = *(v25 + 6);
      if (v36 != 0x6E6172546573553CLL || v37 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460));
    }

    else if (HIBYTE(v63) > 0xAu)
    {
      if (HIBYTE(v63) != 11)
      {
        if (HIBYTE(v63) != 12)
        {
          goto LABEL_149;
        }

        if (v62 != 0x69536261636F563CLL || DWORD2(v62) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v34 = v62 == 0x756F72476D754E3CLL && *(&v62 + 3) == 0x3E7370756F72476DLL;
      v32 = v8;
      if (!v34)
      {
        v35 = v62 == 0x6C6261546D754E3CLL && *(&v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (!v35)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v32);
    }

    else
    {
      if (HIBYTE(v63) != 9)
      {
        if (HIBYTE(v63) != 10)
        {
          goto LABEL_149;
        }

        if (v62 != 0x6D65744978614D3CLL || WORD4(v62) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v30);
        goto LABEL_136;
      }

      v39 = v62 == 0x6461724778614D3CLL && BYTE8(v62) == 62;
      v23 = v6;
      if (!v39)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v23);
    }
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), *(a1 + 200));
  if (*v7 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v46, v47, v48, v49);
  if (*(a1 + 460) == 1 && *v8 >= 1)
  {
    v50 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v51 = kaldi::nnet1::Component::Read(a2, a3);
      if (!v51)
      {
        v58 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 430);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v52 = **v51;
      if (!v58)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](a1 + 256, &v58);
      ++v50;
    }

    while (v50 < *v8);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }
}

void sub_1C3119F80(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<NumTables>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 200));
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v10, v11);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v12, v13);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v14, v15);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v16, v17);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v18, v19);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v20, v21);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v22, v23);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v24, v25);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v26, v27);
  v28 = *(a1 + 456);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v29, v30);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v31, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v33, v34);
  v35 = *(a1 + 452);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UseTransform>", v36, v37);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }
}

void sub_1C311A1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      MEMORY[0x1C692A960](&v16, *(v6 + 4 * v7++));
      v6 = *a1;
      v8 = a1[1] - *a1;
      if (v7 < v8 >> 2)
      {
        v9 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v9);
        v6 = *a1;
        v8 = a1[1] - *a1;
      }
    }

    while (v7 < v8 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v13;
  v10 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v14;
  v15[0] = *v10;
  v11 = v10[9];
  *(v15 + *(v15[0] - 24)) = v10[8];
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C692AD30](&v20);
}

void sub_1C311A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1C692AD30](&a28);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CuMatrixBase<float>::Write(v12, a2, a3, a4);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = *v1++;
      v3 = (v3 + *(v4 + 16) * *(v4 + 20));
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v10 = a1[26];
  v11 = a1[27];
  if (v10 == v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(*v10 + 16) * *(*v10 + 20);
      v25 = 0;
      v26 = 0;
      v15 = v14 + v12;
      if ((v14 + v12) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v24 = *a2 + 4 * v12;
      LODWORD(v25) = v14;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v24, v13, v7, v8, v9);
      ++v10;
      v12 = v15;
    }

    while (v10 != v11);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v17 = a1[32];
  for (i = a1[33]; v17 != i; ++v17)
  {
    (*(**v17 + 184))(*v17, &v24);
    v22 = 0;
    v23 = 0;
    if ((v25 + v15) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
    }

    v21 = *a2 + 4 * v15;
    LODWORD(v22) = v25;
    kaldi::VectorBase<float>::CopyFromVec(&v21, &v24, v18, v19, v20);
    v15 += v25;
  }

  if (v15 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x283, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v24);
}

void sub_1C311A7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void **kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v4 = *(a2 + 8);
  result = (*(*a1 + 176))(a1);
  if (v4 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x289, "wei_src.Dim() == NumParams()", v6);
  }

  v7 = a1[26];
  v8 = a1[27];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = *(*v7 + 16) * *(*v7 + 20);
      v19 = 0;
      v20 = 0;
      v12 = v11 + v9;
      if ((v11 + v9) > *(a2 + 8))
      {
        break;
      }

      v18 = (*a2 + 4 * v9);
      LODWORD(v19) = v11;
      result = kaldi::CuMatrixBase<float>::CopyRowsFromVec(v10, &v18);
      ++v7;
      v9 = v12;
      if (v7 == v8)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v12 = 0;
LABEL_8:
  v14 = a1[32];
  v13 = a1[33];
  if (v14 != v13)
  {
    while (1)
    {
      v15 = (*(**v14 + 176))();
      v16 = *v14;
      v19 = 0;
      v20 = 0;
      v17 = v15 + v12;
      if ((v15 + v12) > *(a2 + 8))
      {
        goto LABEL_15;
      }

      v18 = (*a2 + 4 * v12);
      LODWORD(v19) = v15;
      result = (*(*v16 + 192))(v16, &v18);
      ++v14;
      v12 = v17;
      if (v14 == v13)
      {
        goto LABEL_13;
      }
    }
  }

  v17 = v12;
LABEL_13:
  if (v17 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x295, "shift == wei_src.Dim()", v6);
  }

  return result;
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CuMatrixBase<float>::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  (*(*a1 + 168))(a1, &v20, 0);
  v2 = a1[26];
  for (i = a1[27]; v2 != i; ++v2)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics<float>(*v2);
    if ((v19 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v6 = v19;
    }

    else
    {
      v6 = v18;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  v7 = a1[32];
  for (j = a1[33]; v7 != j; v7 += 8)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n## Feature Transform: input-dim ", 33);
    v10 = MEMORY[0x1C692A960](v9, *(*v7 + 8));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", output-dim ", 13);
    v12 = MEMORY[0x1C692A960](v11, *(*v7 + 12));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
    (*(**v7 + 64))(&__p);
    if ((v19 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v24);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v2 = *(a1 + 256);
  for (i = *(a1 + 264); v2 != i; v2 += 8)
  {
    (*(**v2 + 72))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v14);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2B1, "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2B3, "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = &unk_1F42BFE90;
        v37 = 0u;
        v38 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2C1, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = &unk_1F42BFE90;
      v34 = 0u;
      v35 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v33);
      v36 = &unk_1F42BFE90;
      v37 = 0u;
      v38 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_1C311B34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  a16 = &unk_1F42BFE90;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 740);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = &unk_1F42BFED8;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *(*v15 + 16) * *(*v15 + 20);
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x397, "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_1C311B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 925);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  *a3 = 0;
  v6 = *(a1 + 208);
  v7 = *(a1 + 216);
  v8 = v7 - v6;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v8 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = *v6;
      v6 += 8;
      v9 += *(v11 + 16) * *(v11 + 20);
      *a3 = v9;
      --v10;
    }

    while (v10);
  }

  v12 = *(a1 + 232);
  v13 = *(a1 + 240);
  *a2 = 0;
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v12 + 8 * v14++));
      v12 = *(a1 + 232);
    }

    while (v14 < (*(a1 + 240) - v12) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(void *a1)
{
  v1 = a1[27] - a1[26];
  if (a1[30] - a1[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(a1 + 29, v1 >> 3);
    if (a1[27] != a1[26])
    {
      operator new();
    }
  }
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42CB448;
  *(a1 + 88) = &unk_1F42CB578;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = &unk_1F42BFED8;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = &unk_1F42BFED8;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42CB448;
  *(a1 + 88) = &unk_1F42CB578;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = &unk_1F42BFED8;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = &unk_1F42BFED8;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_1C311C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12)
{
  v14 = *a9;
  if (*a9)
  {
    *(v12 + 20) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v12 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a11;
  if (*a11)
  {
    *(v12 + 14) = v16;
    operator delete(v16);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(a1, a2 - v2);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 944);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v4 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v4++));
    }

    while (v4 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = &unk_1F42CB448;
  v6 = a1 + 88;
  *(a1 + 88) = &unk_1F42CB578;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v12 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 256);
  if (v7)
  {
    *(a1 + 264) = v7;
    operator delete(v7);
  }

  v12 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 176);
  if (v8)
  {
    *(a1 + 184) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    *(a1 + 160) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    *(a1 + 136) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(v6);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v127 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v126);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v125);
  v109 = 0;
  v124 = -1;
  *(a1 + 460) = 1;
  memset(v123, 0, sizeof(v123));
  v110 = (a1 + 200);
  v10 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v123, v8, v9);
    if ((SHIBYTE(v123[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v123[2]) > 0xDu)
      {
        if (HIBYTE(v123[2]) <= 0x11u)
        {
          if (HIBYTE(v123[2]) == 14)
          {
            v35 = v123;
            goto LABEL_174;
          }

          if (HIBYTE(v123[2]) != 15)
          {
            if (HIBYTE(v123[2]) != 17)
            {
              goto LABEL_269;
            }

            v11 = v123[0] == 0x69446465626D453CLL && v123[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v123[2]) != 62)
            {
              goto LABEL_269;
            }

LABEL_17:
            __p = 0;
            v119 = 0;
            v120 = 0;
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v123[0] == 0x61526E7261654C3CLL && *(v123 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v123[0] != 0x656E67697373413CLL || *(v123 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_269;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v123[2]) != 18)
        {
          if (HIBYTE(v123[2]) != 19)
          {
            if (HIBYTE(v123[2]) != 20)
            {
              goto LABEL_269;
            }

            v18 = v123[0] == 0x6C616974696E493CLL && v123[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v123[2]) != 1047814499)
            {
              goto LABEL_269;
            }

            goto LABEL_180;
          }

          if (v123[0] != 0x61725474696E493CLL || v123[1] != 0x79546D726F66736ELL || *(&v123[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_269;
          }

          goto LABEL_103;
        }

        if (v123[0] != 0x6E6569646172473CLL || v123[1] != 0x7079546D726F4E74 || LOWORD(v123[2]) != 15973)
        {
          goto LABEL_269;
        }

LABEL_199:
        v30 = &v125;
        goto LABEL_200;
      }

      if (HIBYTE(v123[2]) > 0xAu)
      {
        if (HIBYTE(v123[2]) == 11)
        {
          v38 = v123[0] == 0x756F72476D754E3CLL && *(v123 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v123[0] == 0x6C6261546D754E3CLL && *(v123 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_269;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v123[2]) != 12)
        {
          if (v123[0] != 0x74536D617261503CLL || *(v123 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_269;
          }

          goto LABEL_189;
        }

        if (v123[0] == 0x536D6F646E61523CLL && LODWORD(v123[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v123[0] != 0x69536261636F563CLL || LODWORD(v123[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        __p = 0;
        v119 = 0;
        v120 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v123[2]) != 9)
      {
        if (HIBYTE(v123[2]) != 10)
        {
          goto LABEL_269;
        }

        if (v123[0] != 0x6D65744978614D3CLL || LOWORD(v123[1]) != 15987)
        {
          goto LABEL_269;
        }

LABEL_66:
        __p = 0;
        v119 = 0;
        v120 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v123[0] == 0x6461724778614D3CLL && LOBYTE(v123[1]) == 62;
      goto LABEL_138;
    }

    v14 = v123[1];
    if (v123[1] <= 12)
    {
      if (v123[1] > 10)
      {
        if (v123[1] == 11)
        {
          v40 = *v123[0] == 0x756F72476D754E3CLL && *(v123[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v123[0] == 0x6C6261546D754E3CLL && *(v123[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v123[0] == 0x536D6F646E61523CLL && *(v123[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v124;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7);
            goto LABEL_203;
          }

          if (*v123[0] == 0x69536261636F563CLL && *(v123[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v123[1] == 9)
        {
          v34 = *v123[0] == 0x6461724778614D3CLL && *(v123[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_269;
          }

          goto LABEL_190;
        }

        if (v123[1] != 10)
        {
          goto LABEL_158;
        }

        if (*v123[0] == 0x6D65744978614D3CLL && *(v123[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v123[1] > 16)
    {
      if (v123[1] != 17)
      {
        if (v123[1] == 18)
        {
          if (*v123[0] != 0x6E6569646172473CLL || *(v123[0] + 1) != 0x7079546D726F4E74 || *(v123[0] + 8) != 15973)
          {
            goto LABEL_269;
          }

          goto LABEL_199;
        }

        if (v123[1] == 19)
        {
          if (*v123[0] != 0x61725474696E493CLL || *(v123[0] + 1) != 0x79546D726F66736ELL || *(v123[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_269;
          }

LABEL_103:
          v30 = &v126;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v123[0] == 0x69446465626D453CLL && *(v123[0] + 1) == 0x736E6F69736E656DLL && *(v123[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v123[1];
LABEL_158:
      if (v14 != 15)
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v123[1] == 13)
    {
      if (*v123[0] != 0x74536D617261503CLL || *(v123[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_269;
      }

LABEL_189:
      v7 = &v127;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7);
      goto LABEL_203;
    }

    if (v123[1] != 15)
    {
      goto LABEL_158;
    }

    v25 = *v123[0] == 0x61526E7261654C3CLL && *(v123[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v123[0] != 0x656E67697373413CLL || *(v123[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    __p = 0;
    v119 = 0;
    v120 = 0;
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(v120) < 0)
    {
      operator delete(__p);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v123[1];
LABEL_164:
  if (v14 == 20)
  {
    v45 = *v123[0] == 0x6C616974696E493CLL && *(v123[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v123[0] + 4) == 1047814499)
    {
LABEL_180:
      v109 = 1;
      goto LABEL_203;
    }
  }

  v47 = v123[1];
  if (v123[1] != 14)
  {
    goto LABEL_208;
  }

  v35 = v123[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460));
    goto LABEL_203;
  }

  if ((HIBYTE(v123[2]) & 0x80) == 0)
  {
    if (HIBYTE(v123[2]) == 12)
    {
LABEL_206:
      v55 = v123;
      goto LABEL_210;
    }

    goto LABEL_269;
  }

  v47 = v123[1];
LABEL_208:
  if (v47 != 12)
  {
    goto LABEL_269;
  }

  v55 = v123[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_269:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 276);
    v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v123[2]) >= 0)
    {
      v102 = v123;
    }

    else
    {
      v102 = v123[0];
    }

    if (SHIBYTE(v123[2]) >= 0)
    {
      v103 = HIBYTE(v123[2]);
    }

    else
    {
      v103 = v123[1];
    }

    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v102, v103);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v10 >= 1)
  {
    v112[0] = 0;
    v112[1] = 0;
    v113 = 0;
    LODWORD(v111) = 0;
    v117 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, v112, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(v112);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v111);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v117);
    kaldi::nnet1::Component::NewComponentOfType(v61);
  }

  v10 = (a1 + 96);
  if ((v109 & 1) == 0)
  {
    goto LABEL_235;
  }

  v63 = *(a1 + 256);
  v62 = *(a1 + 264);
  if (v63 == v62)
  {
    if (!*(*v63 + 12))
    {
      goto LABEL_233;
    }

    v64 = 0;
LABEL_280:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 309);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v107 = MEMORY[0x1C692A960](v106, v64);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, " actual dim is ", 15);
    MEMORY[0x1C692A960](v108, *(**(a1 + 256) + 12));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  LODWORD(v64) = 0;
  v65 = *(a1 + 256);
  do
  {
    v66 = *v65++;
    v64 = (*(v66 + 8) + v64);
  }

  while (v65 != v62);
  if (v64 != *(*v63 + 12))
  {
    goto LABEL_280;
  }

  v67 = 0;
  do
  {
    v68 = *v63;
    if (!*v63)
    {
LABEL_276:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 331);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v69 = *v68;
    v70 = **v68;
    if (v71)
    {
      v72 = v71;
      kaldi::Matrix<float>::Matrix(&__p, v71[3], v71[2], 0, 0);
      v73 = v72[3];
      v114 = 0;
      v115 = 0;
      v116 = 0;
      kaldi::Vector<float>::Resize(&v114, v73, 0, v74, v75);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(v112, &__p, v67, v72[2], 0, v119);
      kaldi::MatrixBase<float>::AddToDiag(v112, 1.0);
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v112);
      kaldi::nnet1::AffineTransform::SetLinearity(v72, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v72, &v114);
      v76 = v72[2];
      kaldi::Vector<float>::Destroy(&v114);
    }

    else
    {
      v77 = *v69;
      if (!v78)
      {
        goto LABEL_276;
      }

      v79 = v78;
      kaldi::Matrix<float>::Matrix(&__p, v78[3], v78[2], 0, 0);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(v112, &__p, v67, *(v79 + 8), 0, v119);
      kaldi::MatrixBase<float>::AddToDiag(v112, 1.0);
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v112);
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v79, &__p);
      v76 = *(v79 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v67 = v76 + v67;
    ++v63;
  }

  while (v63 != v62);
  if (v67 != v64)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x150, "shift == total_dim", v80);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 337);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v126);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v125);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 344);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v115 = 0;
  v116 = 0;
  v114 = &v115;
  if (*v10 < 1)
  {
    v88 = 0;
  }

  else
  {
    v83 = 0;
    do
    {
      v84 = *(*(a1 + 176) + 4 * v83);
      LODWORD(v112[0]) = v84;
      if (v84 < 0 || v84 >= *v110)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x15E, "table_idx >= 0 && table_idx < num_tables_", v82);
      }

      v85 = *(*(a1 + 104) + 4 * v83);
      v86 = *(*(a1 + 152) + 4 * v83);
      __p = v112;
      v87 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, v112);
      *(v87 + 8) = v85;
      *(v87 + 9) = v86;
      ++v83;
    }

    while (v83 < *v10);
    v88 = v116;
  }

  if (v88 != *v110)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x161, "table_dims.size() == num_tables_", v82);
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), v88);
  if (v124 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v124);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v117 = 0;
  if (*v110 >= 1)
  {
    v112[0] = &v117;
    v89 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, &v117);
    v90 = *(v89 + 8);
    v91 = *(v89 + 9);
    kaldi::Matrix<float>::Matrix(v112, v90, v91, 0, 0);
    if (v90 < 1)
    {
LABEL_258:
      operator new();
    }

    v95 = 0;
    while (v91 < 1)
    {
LABEL_257:
      if (++v95 == v90)
      {
        goto LABEL_258;
      }
    }

    v96 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v99 = *&v127;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v92, v93, v94);
        v98 = v99 * v100;
LABEL_255:
        *(v112[0] + v95 * v113 + v96) = v98;
      }

      else if (inited == 1)
      {
        v97 = *&v127;
        v98 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v92, v93, v94) + -0.5) * (v97 + v97);
        goto LABEL_255;
      }

      if (v91 == ++v96)
      {
        goto LABEL_257;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  v112[0] = &v120;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v112);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&v114, v115);
  if (SHIBYTE(v123[2]) < 0)
  {
    operator delete(v123[0]);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }
}

void sub_1C311D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1C692AE10](v5, 0x10C0C40E6EFC850);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1C311D84CLL);
}

void sub_1C311D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(va, v15);
  if (*(v11 - 169) < 0)
  {
    operator delete(*(v11 - 192));
  }

  if (*(v11 - 137) < 0)
  {
    operator delete(*(v11 - 160));
  }

  if (*(v11 - 113) < 0)
  {
    operator delete(*(v11 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1C311D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    JUMPOUT(0x1C311D830);
  }

  JUMPOUT(0x1C311D860);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      v101 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 508);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "must have at least one group, you used ", 39);
      MEMORY[0x1C692A960](v58, *(v101 + 96));
      goto LABEL_46;
    }

    v2 = *(result + 200);
    if (v2 <= 0)
    {
      v102 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 511);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "must have at least one embedding table, you used ", 49);
      MEMORY[0x1C692A960](v59, *(v102 + 200));
      goto LABEL_46;
    }

    if (v1 < v2)
    {
      v103 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 514);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are only ", 15);
      v61 = MEMORY[0x1C692A960](v60, *(v103 + 96));
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " groups, but you set ", 21);
      v63 = MEMORY[0x1C692A960](v62, *(v103 + 200));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v63, " embedding tables");
      goto LABEL_46;
    }

    v3 = *(result + 104);
    v4 = *(result + 112) - v3;
    v5 = v4 >> 2;
    if (v4 >> 2 != v1)
    {
      v104 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 517);
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are ", 10);
      v65 = MEMORY[0x1C692A960](v64, *(v104 + 96));
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " groups, but the number vocab list size is ", 43);
      MEMORY[0x1C692A980](v66, (*(v104 + 112) - *(v104 + 104)) >> 2);
      goto LABEL_46;
    }

    v6 = *(result + 128);
    if (*(result + 136) - v6 != v4)
    {
      v105 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 520);
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are ", 10);
      v68 = MEMORY[0x1C692A960](v67, *(v105 + 96));
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, " groups, but the max item list size is ", 39);
      MEMORY[0x1C692A980](v69, (*(v105 + 136) - *(v105 + 128)) >> 2);
      goto LABEL_46;
    }

    v7 = *(result + 152);
    if (*(result + 160) - v7 != v4)
    {
      v106 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 523);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are ", 10);
      v71 = MEMORY[0x1C692A960](v70, *(v106 + 96));
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " groups, but the embedding dim list size is ", 44);
      MEMORY[0x1C692A980](v72, (*(v106 + 160) - *(v106 + 152)) >> 2);
      goto LABEL_46;
    }

    v8 = *(result + 176);
    if (*(result + 184) - v8 != v4)
    {
      v107 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 526);
      v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are ", 10);
      v74 = MEMORY[0x1C692A960](v73, *(v107 + 96));
      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " groups, but ", 13);
      v76 = MEMORY[0x1C692A980](v75, (*(v107 + 184) - *(v107 + 176)) >> 2);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v76, " groups have assigned tables");
      goto LABEL_46;
    }

    v9 = *(result + 208);
    if (v2 != (*(result + 216) - v9) >> 3)
    {
      v108 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 529);
      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the actual number of embedding tables is ", 41);
      v78 = MEMORY[0x1C692A980](v77, (*(v108 + 216) - *(v108 + 208)) >> 3);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " and different than ", 20);
      MEMORY[0x1C692A960](v79, *(v108 + 200));
      goto LABEL_46;
    }

    v10 = *(result + 460);
    if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
    {
      v110 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 533);
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "there are ", 10);
      v84 = MEMORY[0x1C692A960](v83, *(v110 + 96));
      v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " groups, but the number of feature transforms is ", 49);
      MEMORY[0x1C692A980](v85, (*(v110 + 264) - *(v110 + 256)) >> 3);
      goto LABEL_46;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v8 + 4 * v11);
      if ((v14 & 0x80000000) != 0 || v14 >= v2)
      {
        v92 = *(v8 + 4 * v11);
        v95 = result;
        v114 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
        v31 = MEMORY[0x1C692A960](v30, v114);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "-th group has assigned table index ", 35);
        v33 = MEMORY[0x1C692A960](v32, v92);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " , the number of tables is ", 27);
        MEMORY[0x1C692A960](v34, *(v95 + 200));
        goto LABEL_46;
      }

      v15 = *(v3 + 4 * v11);
      if (v15 <= 0)
      {
        v97 = result;
        v116 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 547);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
        v39 = MEMORY[0x1C692A960](v38, v116);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "-th group has invalid vocab size ", 33);
        MEMORY[0x1C692A960](v40, *(*(v97 + 104) + 4 * v116));
        goto LABEL_46;
      }

      v16 = *(v6 + 4 * v11);
      if (v16 <= 0)
      {
        v98 = result;
        v117 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 550);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
        v42 = MEMORY[0x1C692A960](v41, v117);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "-th group has invalid max item value ", 37);
        MEMORY[0x1C692A960](v43, *(*(v98 + 128) + 4 * v117));
        goto LABEL_46;
      }

      v17 = *(v7 + 4 * v11);
      if (v17 <= 0)
      {
        v96 = result;
        v115 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
        v36 = MEMORY[0x1C692A960](v35, v115);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "-th group has invalid embedding dimension value ", 48);
        MEMORY[0x1C692A960](v37, *(*(v96 + 152) + 4 * v115));
        goto LABEL_46;
      }

      v18 = **(v9 + 8 * v14);
      if (!v18 || *(v18 + 8) != v15)
      {
        break;
      }

      if (*(v18 + 12) != v17)
      {
        v91 = *(v8 + 4 * v11);
        v94 = result;
        v113 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 562);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
        v26 = MEMORY[0x1C692A960](v25, v113);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-th group has mismatched embedding table and embedding dim ", 59);
        v28 = **(*(v94 + 208) + 8 * v91);
        if (v28)
        {
          v29 = *(v28 + 12);
        }

        else
        {
          v29 = 0;
        }

        v56 = MEMORY[0x1C692A960](v27, v29);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " vs ", 4);
        MEMORY[0x1C692A960](v57, *(*(v94 + 152) + 4 * v113));
        goto LABEL_46;
      }

      if (*(result + 460))
      {
        v19 = *(*(result + 256) + 8 * v11);
        if (v17 != *(v19 + 8))
        {
          v100 = result;
          v119 = v11;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 566);
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
          v50 = MEMORY[0x1C692A960](v49, v119);
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "-th group has mismatched embedding table and feature transform ", 63);
          v52 = MEMORY[0x1C692A960](v51, *(*(v100 + 152) + 4 * v119));
          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " vs ", 4);
          MEMORY[0x1C692A960](v53, *(*(*(v100 + 256) + 8 * v119) + 8));
          goto LABEL_46;
        }

        if (*(result + 12) != *(v19 + 12))
        {
          v99 = result;
          v118 = v11;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 570);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
          v45 = MEMORY[0x1C692A960](v44, v118);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "-th group has feature transform output dim ", 43);
          v47 = MEMORY[0x1C692A960](v46, *(*(*(v99 + 256) + 8 * v118) + 12));
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " does not match component output dim ", 37);
          MEMORY[0x1C692A960](v48, *(v99 + 12));
          goto LABEL_46;
        }
      }

      v12 += v17;
      v13 += v16;
      if (v1 == ++v11)
      {
        if (*(result + 8) == v13)
        {
          if ((v10 & 1) != 0 || v12 == *(result + 12))
          {
            *(result + 544) = 1;
            return result;
          }

          v121 = v12;
          v111 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 580);
          v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "Total embedding size of ", 24);
          v87 = MEMORY[0x1C692A960](v86, v121);
          v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, " doesn't match the component output size of ", 44);
          v89 = MEMORY[0x1C692A960](v88, *(v111 + 12));
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v89, " when transforms are not used");
        }

        else
        {
          v120 = v13;
          v109 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 576);
          v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "input dim of the component is ", 30);
          v81 = MEMORY[0x1C692A960](v80, *(v109 + 8));
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " , while the input dim defined in max items is ", 47);
          MEMORY[0x1C692A960](v82, v120);
        }

LABEL_46:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v122);
      }
    }

    v90 = *(v8 + 4 * v11);
    v93 = result;
    v112 = v11;
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v122, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 558);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "the ", 4);
    v21 = MEMORY[0x1C692A960](v20, v112);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-th group has mismatched embedding table and vocab size ", 56);
    v23 = **(*(v93 + 208) + 8 * v90);
    if (v23)
    {
      v24 = *(v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v54 = MEMORY[0x1C692A960](v22, v24);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " vs ", 4);
    MEMORY[0x1C692A960](v55, *(*(v93 + 104) + 4 * v112));
    goto LABEL_46;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v62 = 0uLL;
  v63 = 0;
  *(a1 + 460) = 1;
  v57 = (a1 + 456);
  v6 = (a1 + 452);
  v7 = (a1 + 200);
  v8 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v62, v9, v10);
    if (SHIBYTE(v63) < 0)
    {
      v14 = *(&v62 + 1);
      if (*(&v62 + 1) == 11)
      {
        v31 = *v62 == 0x756F72476D754E3CLL && *(v62 + 3) == 0x3E7370756F72476DLL;
        v32 = v8;
        if (v31)
        {
          goto LABEL_108;
        }

        v33 = *v62 == 0x6C6261546D754E3CLL && *(v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (v33)
        {
          goto LABEL_108;
        }
      }

      if (*(&v62 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v62 != 0x69536261636F563CLL || *(v62 + 8) != 1047750010)
      {
        v14 = *(&v62 + 1);
LABEL_20:
        if (v14 == 10 && *v62 == 0x6D65744978614D3CLL && *(v62 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v62 + 1) == 15)
        {
          if (*v62 == 0x656E67697373413CLL && *(v62 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v62 + 1) == 17)
        {
          v17 = *v62 == 0x69446465626D453CLL && *(v62 + 8) == 0x736E6F69736E656DLL;
          if (v17 && *(v62 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v62 + 1) == 9)
        {
          v22 = *v62 == 0x6461724778614D3CLL && *(v62 + 8) == 62;
          v23 = v6;
          if (v22)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v62 + 1) == 18)
        {
          v20 = *v62 == 0x6E6569646172473CLL && *(v62 + 8) == 0x7079546D726F4E74;
          if (v20 && *(v62 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v62 + 1) != 14)
        {
          if (*(&v62 + 1) != 15 || (*v62 == 0x61526E7261654C3CLL ? (v24 = *(v62 + 7) == 0x3E66656F43657461) : (v24 = 0), v23 = v57, !v24))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 413);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
            if (v63 >= 0)
            {
              v54 = &v62;
            }

            else
            {
              v54 = v62;
            }

            if (v63 >= 0)
            {
              v55 = HIBYTE(v63);
            }

            else
            {
              v55 = *(&v62 + 1);
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
          }

          goto LABEL_114;
        }

        v25 = v62;
        goto LABEL_102;
      }

LABEL_80:
      __p = 0;
      v60 = 0;
      v61 = 0;
      kaldi::ReadToken(a2, a3, &__p, v11, v12);
      kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v29);
LABEL_136:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }
    }

    else if (HIBYTE(v63) > 0xDu)
    {
      if (HIBYTE(v63) > 0x10u)
      {
        if (HIBYTE(v63) == 17)
        {
          if (v62 != 0x69446465626D453CLL || *(&v62 + 1) != 0x736E6F69736E656DLL || v63 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v45);
          goto LABEL_136;
        }

        if (HIBYTE(v63) != 18)
        {
          goto LABEL_149;
        }

        v41 = v62 == 0x6E6569646172473CLL && *(&v62 + 1) == 0x7079546D726F4E74;
        if (!v41 || v63 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
        goto LABEL_136;
      }

      if (HIBYTE(v63) != 14)
      {
        if (HIBYTE(v63) != 15)
        {
          goto LABEL_149;
        }

        if (v62 == 0x656E67697373413CLL && *(&v62 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v40);
          goto LABEL_136;
        }

        v27 = v62 == 0x61526E7261654C3CLL && *(&v62 + 7) == 0x3E66656F43657461;
        v23 = v57;
        if (!v27)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v25 = &v62;
LABEL_102:
      v36 = *v25;
      v37 = *(v25 + 6);
      if (v36 != 0x6E6172546573553CLL || v37 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460));
    }

    else if (HIBYTE(v63) > 0xAu)
    {
      if (HIBYTE(v63) != 11)
      {
        if (HIBYTE(v63) != 12)
        {
          goto LABEL_149;
        }

        if (v62 != 0x69536261636F563CLL || DWORD2(v62) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v34 = v62 == 0x756F72476D754E3CLL && *(&v62 + 3) == 0x3E7370756F72476DLL;
      v32 = v8;
      if (!v34)
      {
        v35 = v62 == 0x6C6261546D754E3CLL && *(&v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (!v35)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v32);
    }

    else
    {
      if (HIBYTE(v63) != 9)
      {
        if (HIBYTE(v63) != 10)
        {
          goto LABEL_149;
        }

        if (v62 != 0x6D65744978614D3CLL || WORD4(v62) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v30);
        goto LABEL_136;
      }

      v39 = v62 == 0x6461724778614D3CLL && BYTE8(v62) == 62;
      v23 = v6;
      if (!v39)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v23);
    }
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), *(a1 + 200));
  if (*v7 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v46, v47, v48, v49);
  if (*(a1 + 460) == 1 && *v8 >= 1)
  {
    v50 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v51 = kaldi::nnet1::Component::Read(a2, a3);
      if (!v51)
      {
        v58 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 430);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v52 = **v51;
      if (!v58)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](a1 + 256, &v58);
      ++v50;
    }

    while (v50 < *v8);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }
}

void sub_1C311EC00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<NumTables>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 200));
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v10, v11);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v12, v13);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v14, v15);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v16, v17);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v18, v19);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v20, v21);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v22, v23);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v39);
  kaldi::WriteToken(a2, a3, v39, v24, v25);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v26, v27);
  v28 = *(a1 + 456);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v29, v30);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v31, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v33, v34);
  v35 = *(a1 + 452);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UseTransform>", v36, v37);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }
}

void sub_1C311EE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CompressedMatrix::Write(v12, a2, a3, a4, v9);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = **v1;
      if (v4)
      {
        LODWORD(v4) = *(v4 + 12) * *(v4 + 8);
      }

      v3 = (v4 + v3);
      ++v1;
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v11 = a1[26];
  v12 = a1[27];
  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = **v11;
      if (v15)
      {
        LODWORD(v15) = *(v15 + 12) * *(v15 + 8);
      }

      v26 = 0;
      v27 = 0;
      v16 = v15 + v13;
      if ((v15 + v13) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v25 = *a2 + 4 * v13;
      LODWORD(v26) = v15;
      v10.n128_f64[0] = kaldi::VectorBase<float>::CopyRowsFromMat(&v25, v14, v7, v8, v9);
      ++v11;
      v13 = v16;
    }

    while (v11 != v12);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v18 = a1[32];
  for (i = a1[33]; v18 != i; ++v18)
  {
    (*(**v18 + 184))(*v18, &v25, v10);
    v23 = 0;
    v24 = 0;
    if ((v26 + v16) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v21);
    }

    v22 = *a2 + 4 * v16;
    LODWORD(v23) = v26;
    kaldi::VectorBase<float>::CopyFromVec(&v22, &v25, v19, v20, v21);
    v16 += v26;
  }

  if (v16 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x283, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v25);
}

void sub_1C311F210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v4 = *(a2 + 8);
  result = (*(*a1 + 176))(a1);
  if (v4 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x289, "wei_src.Dim() == NumParams()", v6);
  }

  v7 = a1[26];
  v8 = a1[27];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = **v7;
      if (v11)
      {
        LODWORD(v11) = *(v11 + 12) * *(v11 + 8);
      }

      v19 = 0;
      v20 = 0;
      v12 = v11 + v9;
      if ((v11 + v9) > *(a2 + 8))
      {
        break;
      }

      v18 = (*a2 + 4 * v9);
      LODWORD(v19) = v11;
      result = kaldi::CompressedMatrix::CopyRowsFromVec<float>(v10, &v18);
      ++v7;
      v9 = v12;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_17:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v12 = 0;
LABEL_10:
  v14 = a1[32];
  v13 = a1[33];
  if (v14 != v13)
  {
    while (1)
    {
      v15 = (*(**v14 + 176))();
      v16 = *v14;
      v19 = 0;
      v20 = 0;
      v17 = v15 + v12;
      if ((v15 + v12) > *(a2 + 8))
      {
        goto LABEL_17;
      }

      v18 = (*a2 + 4 * v12);
      LODWORD(v19) = v15;
      result = (*(*v16 + 192))(v16, &v18);
      ++v14;
      v12 = v17;
      if (v14 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = v12;
LABEL_15:
  if (v17 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x295, "shift == wei_src.Dim()", v6);
  }

  return result;
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CompressedMatrix::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PerturbParams()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "PerturbParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 666);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(*a1 + 168))(a1, &v21, 0);
  v2 = a1[26];
  for (i = a1[27]; v2 != i; ++v2)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics(&__p, *v2, v5);
    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v7);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[32];
  for (j = a1[33]; v8 != j; v8 += 8)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n## Feature Transform: input-dim ", 33);
    v11 = MEMORY[0x1C692A960](v10, *(*v8 + 8));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
    v13 = MEMORY[0x1C692A960](v12, *(*v8 + 12));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
    (*(**v8 + 64))(&__p);
    if ((v20 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v25);
}

uint64_t kaldi::nnet1::MomentStatistics(kaldi::nnet1 *this, const kaldi::CompressedMatrix *a2)
{
  kaldi::Matrix<float>::Matrix(v12, this);
  v2 = kaldi::MatrixBase<float>::NumRows(v12);
  v3 = kaldi::MatrixBase<float>::NumCols(v12);
  memset(v11, 0, sizeof(v11));
  kaldi::Vector<float>::Resize(v11, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat(v11, v12);
  kaldi::nnet1::MomentStatistics<float>(v11, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v11);
  return kaldi::Matrix<float>::~Matrix(v12);
}

void sub_1C311F8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Matrix<float>::~Matrix(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v2 = *(a1 + 256);
  for (i = *(a1 + 264); v2 != i; v2 += 8)
  {
    (*(**v2 + 72))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v14);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2B1, "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2B3, "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = &unk_1F42BFE90;
        v37 = 0u;
        v38 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x2C1, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = &unk_1F42BFE90;
      v34 = 0u;
      v35 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v33);
      v36 = &unk_1F42BFE90;
      v37 = 0u;
      v38 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_1C311FECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  a16 = &unk_1F42BFE90;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 740);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 767);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 851);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = &unk_1F42BFED8;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *(*v15 + 16) * *(*v15 + 20);
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x397, "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_1C31204E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 925);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  *a3 = 0;
  v6 = *(a1 + 208);
  v7 = *(a1 + 216);
  v8 = v7 - v6;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v8 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = **v6;
      if (v11)
      {
        LODWORD(v11) = *(v11 + 12) * *(v11 + 8);
      }

      v9 += v11;
      *a3 = v9;
      v6 += 8;
      --v10;
    }

    while (v10);
  }

  v12 = *(a1 + 232);
  v13 = *(a1 + 240);
  *a2 = 0;
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v12 + 8 * v14++));
      v12 = *(a1 + 232);
    }

    while (v14 < (*(a1 + 240) - v12) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(void *a1)
{
  v1 = a1[27] - a1[26];
  if (a1[30] - a1[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(a1 + 29, v1 >> 3);
    if (a1[27] != a1[26])
    {
      operator new();
    }
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 954);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PerturbParams(void *a1, float a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  memset(&v25[1], 0, 24);
  v25[0] = &unk_1F42BFF70;
  v21 = 1729;
  v6 = 5489;
  v22 = 0;
  v23 = 5489;
  v7 = 1;
  for (i = 3; i != 626; ++i)
  {
    v9 = 1812433253 * (v6 ^ (v6 >> 30));
    v6 = v9 + v7;
    *(&v21 + i) = i + v9 - 2;
    ++v7;
  }

  v24 = 0;
  v10 = a1[26];
  for (j = a1[27]; v10 != j; ++v10)
  {
    kaldi::CuVector<float>::Resize(v25, (*(*v10 + 16) * *(*v10 + 20)), 1u, v4, v5);
    kaldi::CuRandom::RandGauss<float>(&v21, v25, 0.0, 1.0);
    v12 = *v10;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, v25, *(*v10 + 20));
    kaldi::CuMatrixBase<float>::AddMat(v12, &v18, 111, v13, v14, a2, 1.0);
    v18 = &unk_1F42BFE90;
    v19 = 0u;
    v20 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
  }

  v16 = a1[32];
  v15 = a1[33];
  while (v16 != v15)
  {
    (*(**v16 + 216))(a2);
    v16 += 8;
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v21);
  return kaldi::CuVector<float>::~CuVector(v25);
}

void sub_1C3120974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(va);
  kaldi::CuVector<float>::~CuVector((v7 - 96));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v11 = *(a2 + 20);
  *(a1 + 464) = v11;
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x30B, "input.NumCols() == input_dim_", v10);
  }

  if (*(a3 + 20) != v11)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x30C, "diff.NumRows() == batch_size", v10);
  }

  if (*(a3 + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x30D, "diff.NumCols() == output_dim_", v10);
  }

  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 328), *(a1 + 96));
  if (*(a1 + 460) == 1 && *(a1 + 96) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(a1 + 328) + v13;
      *(v15 + 32) = a4;
      kaldi::nnet1::Component::Backpropagate(*(*(a1 + 256) + 8 * v14), *(a1 + 280) + v13, *(a1 + 304) + v13, a3, v15, a5);
      v16 = *(*(a1 + 256) + 8 * v14);
      (*(*v16 + 232))(v16, *(a1 + 280) + v13, a3, a4, a5);
      ++v14;
      v13 += 48;
    }

    while (v14 < *(a1 + 96));
  }

  if (*(a1 + 80) > 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v43, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 792);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v43, "WordMultiVecComponent doesn't support multi-batches yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v43);
  }

  memset(v44, 0, sizeof(v44));
  v43 = &unk_1F42BFE90;
  v17 = *(a1 + 232);
  if (*(a1 + 240) != v17)
  {
    v18 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::SetZero(*(v17 + 8 * v18++));
      v17 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v17) >> 3);
  }

  if (*(a1 + 96) < 1)
  {
    v20 = 0;
  }

  else
  {
    v38 = a3;
    v39 = a4;
    v19 = 0;
    v20 = 0;
    v21 = v11;
    v22 = 0;
    v40 = a1 + 352;
    do
    {
      if (*(a1 + 460) == 1)
      {
        v23 = (*(a1 + 328) + 48 * v19);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, v38, 0, *(v38 + 20), v22, *(*(a1 + 152) + 4 * v19));
        *&v44[0] = v42[0];
        *(v44 + 8) = *&v42[1];
        *(&v44[1] + 1) = v42[3];
        v41 = &unk_1F42BFE90;
        memset(v42, 0, sizeof(v42));
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v41);
        v22 = (*(*(a1 + 152) + 4 * v19) + v22);
        v23 = &v43;
      }

      v24 = *(a1 + 452);
      if (v24 > 0.0)
      {
        *(a1 + 384) = a4;
        kaldi::CuMatrix<float>::operator=(v40, v23);
        v25 = *(a1 + 448);
        if (v25 == 2)
        {
          v27 = *(a1 + 84);
          *(a1 + 432) = a4;
          kaldi::CuMatrix<float>::Resize(a1 + 400, *(a1 + 372), *(a1 + 368), 1u, 0);
          if (v27)
          {
            v31 = v21;
          }

          else
          {
            v31 = 1.0;
          }

          v23 = (a1 + 352);
          kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v40, (a1 + 400), v24 * v31, v28, v29, v30);
        }

        else
        {
          v23 = (a1 + 352);
          if (v25 == 1)
          {
            if (*(a1 + 84))
            {
              v26 = v21;
            }

            else
            {
              v26 = 1.0;
            }

            v23 = (a1 + 352);
            kaldi::nnet1::UpdatableComponent::ClipGradient(v40, v24 * v26);
          }
        }
      }

      v32 = *(*(a1 + 176) + 4 * v19);
      *(*(*(a1 + 232) + 8 * v32) + 32) = a4;
      if (*(*(a1 + 128) + 4 * v19) >= 1)
      {
        v33 = v22;
        v34 = 0;
        do
        {
          v35 = *(*(a1 + 232) + 8 * v32);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a2, 0, *(a2 + 20), (v20 + v34), 1);
          kaldi::CuMatrixBase<float>::AddIndexedRows(v35, &v41, v23, v36, v37, 1.0);
          v41 = &unk_1F42BFE90;
          memset(v42, 0, sizeof(v42));
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v41);
          ++v34;
        }

        while (v34 < *(*(a1 + 128) + 4 * v19));
        v20 += v34;
        v22 = v33;
        a4 = v39;
      }

      ++v19;
    }

    while (v19 < *(a1 + 96));
  }

  if (v20 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 0x343, "shift == input_dim_", v12);
  }

  v43 = &unk_1F42BFE90;
  memset(v44, 0, sizeof(v44));
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v43);
}

void sub_1C3120EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20)
{
  a18 = a9;
  a19 = 0u;
  a20 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  if (v9 > 0.0 && *(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 862);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "Using transform with gradient compression is not supported yet");
    goto LABEL_19;
  }

  v11 = *(a1 + 256);
  v12 = *(a1 + 264);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 256))(v13, a2, a3);
  }

  v14 = *(a1 + 56);
  if (*(a1 + 84))
  {
    v14 = v14 / *(a1 + 464);
  }

  if (v9 > 0.0)
  {
    if (*(a1 + 80) < 2)
    {
      if (*(a1 + 480) == *(a1 + 472))
      {
        kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
      }

      kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 472), v10, v9, v6, v7, v8);
      goto LABEL_13;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 873);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "the multi batch gradient quantization does not work yet");
LABEL_19:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

LABEL_13:
  v15 = *(a1 + 208);
  if (*(a1 + 216) != v15)
  {
    v16 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::AddMat(*(v15 + 8 * v16), *(*(a1 + 232) + 8 * v16), 111, v7, v8, *(a1 + 456) * -v14, 1.0);
      ++v16;
      v15 = *(a1 + 208);
    }

    while (v16 < (*(a1 + 216) - v15) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 962);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Not implemented yet when transforms are used");
    goto LABEL_14;
  }

  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 965);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Weights are already vectorized");
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 968);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Performing vectorization of WordMultiVecComponent", 49);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v13);
  }

  v7 = *(a1 + 208);
  if (*(a1 + 216) != v7)
  {
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub(v7);
  }

  v8 = (*(*a1 + 176))(a1);
  kaldi::CuSubVector<float>::CuSubVector(v13, a3, 0, v8, v9);
  v10.i32[0] = *(a1 + 456);
  kaldi::CuVectorBase<float>::Set(v13, v10);
  v11 = *(a3 + 16) - v8;
  *(a3 + 8) += 4 * v8;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (a4[1] - *a4 != 32)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 988);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "veccorrs->size() == 1");
    goto LABEL_14;
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v12 = *a4;
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub(*(a1 + 232));
  }

  *(a1 + 16) = 1;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 999);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Done  vectorization of WordMultiVecComponent", 44);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v13);
  }
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *result) >> 4) < a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vdeallocate(result);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = kaldi::CuMatrix<float>::operator=(v8, v6);
        v6 += 48;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    if (v11 != v8)
    {
      v15 = v11 - 48;
      v16 = (v11 - 48);
      v17 = (v11 - 48);
      do
      {
        v18 = *v17;
        v17 -= 48;
        result = (*(v18 + 16))(v16);
        v15 -= 48;
        v19 = v16 == v8;
        v16 = v17;
      }

      while (!v19);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::CuMatrix<float>::operator=(v8, v14);
        v14 += 48;
        v8 += 48;
        v13 -= 48;
      }

      while (v13);
      v11 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void std::vector<kaldi::CuMatrix<float>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 48;
      v6 = v3 - 48;
      v7 = v3 - 48;
      do
      {
        v8 = *v7;
        v7 -= 48;
        (*(v8 + 16))(v6);
        v5 -= 48;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42CB448;
  *(a1 + 88) = &unk_1F42CB578;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = &unk_1F42BFED8;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = &unk_1F42BFED8;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_1C3121AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12)
{
  v14 = *a9;
  if (*a9)
  {
    *(v12 + 20) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v12 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a11;
  if (*a11)
  {
    *(v12 + 14) = v16;
    operator delete(v16);
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  kaldi::Matrix<float>::Matrix<float>(v7, a2, 111, a4, a5);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v7);
  kaldi::Matrix<float>::~Matrix(v7);
  return a1;
}

void sub_1C3121C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, kaldi::CompressedMatrix **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](int a1, kaldi::CompressedMatrix *this)
{
  if (this)
  {
    kaldi::CompressedMatrix::Destroy(this);

    JUMPOUT(0x1C692AE10);
  }
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this, const kaldi::nnet1::SimplerSimpleRecurrentUnit *a2)
{
  *(this + 7) = *(a2 + *(*a2 - 40) + 8);
  *(this + 32) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = &unk_1F42CB1B8;
  *(this + 36) = 1;
  *(this + 6) = &unk_1F42CB790;
  *this = &unk_1F42CB640;
  *(this + 12) = &unk_1F42CB860;
  *(this + 13) = &unk_1F42CB8E0;
  *(this + 14) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = &unk_1F42BFF70;
  *(this + 3) = 0;
  operator new();
}

void sub_1C3122184(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v6);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](v5, 0);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v4);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::PropagateFnc(uint64_t **a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *a1;
  if (v5 != *(a1 + *(*a1 - 8) + 40))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x18, "batch_size == num_utts", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v44, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 26, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Running forward propagation for batch size = ", 45);
    v12 = MEMORY[0x1C692A960](v11, v5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1C692A960](v13, 1);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1C692A960](v15, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v44);
    v6 = *a1;
  }

  (v6[18])(a1);
  v18 = &(*(a1 + *(*a1 - 8) + 8))[6 * a4];
  if (!*(v18 + 20))
  {
    v19 = ((*a1)[9])(a1);
    kaldi::CuMatrix<float>::Resize(v18, v5, v19, 0, 0);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v18, (a1 + 2));
  }

  v46 = 0u;
  v45 = 0u;
  v44.__locale_ = &unk_1F42BFED8;
  v47 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1[1], a2, &v44, a4, v17);
  kaldi::CuMatrix<float>::CuMatrix(v43, v5, *(a1 + *(*a1 - 5) + 12), 1u, 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v37, &v44, 0, SHIDWORD(v45), 0, *(a1 + *(*a1 - 5) + 12));
  kaldi::CuMatrixBase<float>::Sigmoid(v43, &v37, v20, v21, v22);
  v37 = &unk_1F42BFE90;
  v38 = 0u;
  v39 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v37);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, &v44, 0, SHIDWORD(v45), *(a1 + *(*a1 - 5) + 12), *(a1 + *(*a1 - 5) + 12));
  kaldi::CuMatrix<float>::CuMatrix(&v37, v5, *(a1 + *(*a1 - 5) + 12), 1u, 0, 0);
  v23.i32[0] = 1.0;
  kaldi::CuMatrixBase<float>::Set(&v37, v23);
  kaldi::CuMatrixBase<float>::AddMat(&v37, v43, 111, v24, v25, -1.0, 1.0);
  kaldi::CuMatrixBase<float>::MulElements(&v37, &v40, v26, v27, v28);
  kaldi::CuMatrixBase<float>::MulElements(v18, v43, v29, v30, v31);
  kaldi::CuMatrixBase<float>::AddMat(v18, &v37, 111, v32, v33, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v18, 111, v34, v35);
  kaldi::CuMatrix<float>::~CuMatrix(&v37);
  v40 = &unk_1F42BFE90;
  v41 = 0u;
  v42 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v40);
  kaldi::CuMatrix<float>::~CuMatrix(v43);
  return kaldi::CuMatrix<float>::~CuMatrix(&v44);
}

void sub_1C31225DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, __int128 a16, __int128 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a15 = &unk_1F42BFE90;
  a16 = 0u;
  a17 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a15);
  kaldi::CuMatrix<float>::~CuMatrix(&a18);
  kaldi::CuMatrix<float>::~CuMatrix(&a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 70, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Reading SimplerSimpleRecurrentUnit component", 44);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v38);
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &__p, v6, v7);
    if (SHIBYTE(v37) < 0)
    {
      break;
    }

    if (HIBYTE(v37) != 5)
    {
      if (HIBYTE(v37) != 16)
      {
        goto LABEL_54;
      }

      if (__p != 0x72547475706E493CLL || v36 != 0x3E6D726F66736E61)
      {
        goto LABEL_54;
      }

LABEL_13:
      operator new();
    }

    p_p = &__p;
LABEL_23:
    v12 = *p_p;
    v13 = p_p[4];
    if (v12 != 811557692 || v13 != 62)
    {
      goto LABEL_29;
    }

    kaldi::CuVector<float>::Read(a1 + 16, a2, a3, v8, v7);
  }

  if (v36 == 5)
  {
    p_p = __p;
    goto LABEL_23;
  }

  if (v36 == 16 && *__p == 0x72547475706E493CLL && *(__p + 1) == 0x3E6D726F66736E61)
  {
    goto LABEL_13;
  }

LABEL_29:
  if ((v37 & 0x8000000000000000) == 0 || v36 != 29 || (*__p == 0x656C706D69532F3CLL ? (v15 = *(__p + 1) == 0x52656C706D695372) : (v15 = 0), v15 ? (v16 = *(__p + 2) == 0x746E657272756365) : (v16 = 0), v16 ? (v17 = *(__p + 21) == 0x3E74696E55746E65) : (v17 = 0), !v17))
  {
LABEL_54:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 87);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Unrecognized token ", 19);
    if (v37 >= 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    if (v37 >= 0)
    {
      v32 = HIBYTE(v37);
    }

    else
    {
      v32 = v36;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

LABEL_42:
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 90, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "done", 4);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v38);
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    v33 = "input_transform_";
    v34 = 92;
    goto LABEL_66;
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(v18, &v38);
  locale = v38.__locale_;
  v24 = v39;
  if (v38.__locale_)
  {
    v39 = v38.__locale_;
    operator delete(v38.__locale_);
  }

  if (locale != v24)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 94);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Another recurrent neural networks are not supported inside SSRU component.", 74);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  v25 = *(a1 + *(*a1 - 40) + 12);
  if (kaldi::nnet1::Nnet::OutputDim(*(a1 + 8), v19, v20, v21, v22) != 2 * v25)
  {
    v33 = "OutputDim() * 2 == input_transform_->OutputDim()";
    v34 = 97;
    goto LABEL_66;
  }

  v29 = *(a1 + *(*a1 - 40) + 8);
  if (v29 != kaldi::nnet1::Nnet::InputDim(*(a1 + 8), v26, v27, v28, v7))
  {
    v33 = "InputDim() == input_transform_->InputDim()";
    v34 = 98;
    goto LABEL_66;
  }

  if (*(a1 + 32) != *(a1 + *(*a1 - 40) + 12))
  {
    v33 = "hidden_init_.Dim() == OutputDim()";
    v34 = 99;
LABEL_66:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", v34, v33, v7);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }
}

void sub_1C3122D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::SimplerSimpleRecurrentUnit::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("WriteData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x67, "input_transform_", a5);
  }

  kaldi::WriteToken(a2, a3, "<InputTransform>", a4, a5);
  kaldi::nnet1::Nnet::Write(*(a1 + 8), a2, a3, a4, v9);
  kaldi::WriteToken(a2, a3, "<c_0>", v10, v11);
  kaldi::CuVectorBase<float>::Write((a1 + 16), a2, a3, v12, v13);

  return kaldi::WriteToken(a2, a3, "</SimplerSimpleRecurrentUnit>", v14, v15);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::ResetHistoryState(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 144))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x77, "batch_idx == 0", v8);
  }

  v9 = a2[1];
  v10 = *a1;
  v11 = a1 + *(*a1 - 64);
  if (v9 != *(v11 + 40))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x78, "sequence_idx.size() == hopts_.num_sequences", v8);
  }

  *(*(v11 + 8) + 32) = a3;
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v14, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 125);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v14, "ResetHistoryState for SimplerSimpleRecurrentUnit makes only sense if all utterances get reset at the same time");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v14);
      }
    }
  }

  v16 = 0u;
  v15 = 0u;
  v14 = &unk_1F42BFED8;
  v17 = 0;
  kaldi::CuMatrix<float>::operator=(*(a1 + *(v10 - 64) + 8), &v14);
  return kaldi::CuMatrix<float>::~CuMatrix(&v14);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::ResetHistoryState(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  v2 = *this;
  v3 = this + *(*this - 64);
  v5 = *(v3 + 1);
  v4 = *(v3 + 2);
  if (v4 != v5)
  {
    v6 = v4 - 6;
    v7 = v4 - 6;
    v8 = v4 - 6;
    do
    {
      v9 = *v8;
      v8 -= 6;
      (*(v9 + 16))(v7);
      v6 -= 6;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
    v2 = *this;
  }

  *(v3 + 2) = v5;
  v11 = *(v2 + 144);

  return v11(this);
}

unsigned int *kaldi::nnet1::SimplerSimpleRecurrentUnit::GetHistoryState(void *a1, unsigned int *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x8A, "batch_idx == 0", a5);
  }

  v7 = *(a1 + *(*a1 - 64) + 8);
  kaldi::CuMatrix<float>::Resize(a2, *(v7 + 20), *(v7 + 16), 0, 0);
  v10 = *(a1 + *(*a1 - 64) + 8);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v10, 111, v8, v9);
}

_DWORD *kaldi::nnet1::SimplerSimpleRecurrentUnit::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, const char *a5)
{
  if (a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x92, "batch_idx == 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + *(*a1 - 64) + 40) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x93, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", a5);
  }

  v8 = (*(*a1 + 72))(a1);
  kaldi::CuVector<float>::Resize(a2, v8, 0, v9, v10);
  v14 = *(a1 + *(*a1 - 64) + 8);
  v15 = *(v14 + 20);
  if (v15 < 1)
  {

    return kaldi::CuVectorBase<float>::CopyFromVec(a2, a1 + 16, v11, v12, v13);
  }

  else
  {
    if (v15 <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
    }

    v16 = *(v14 + 8) + 4 * (*(v14 + 24) * a3);
    v17 = *(v14 + 16);
    v18 = *(v14 + 32);
    v20[1] = v16;
    v20[0] = &unk_1F42BFF30;
    v20[2] = v17;
    v20[3] = v18;
    return kaldi::CuVectorBase<float>::CopyFromVec(a2, v20, v11, v12, v13);
  }
}

unsigned int *kaldi::nnet1::SimplerSimpleRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 144))(a1);
  if (a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0x9E, "batch_idx == 0", v6);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + *(*a1 - 64) + 8), *(a2 + 20), *(a2 + 16), 0, 0);
  v9 = *(a1 + *(*a1 - 64) + 8);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v9, a2, 111, v7, v8);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  (*(*a1 + 144))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0xA7, "batch_idx == 0", v8);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + *(*a1 - 64) + 40) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0xA8, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", v8);
  }

  v9 = *(a2 + 16);
  if (v9 != (*(*a1 + 72))(a1))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 0xA9, "history.Dim() == HistoryStateSize()", v10);
  }

  v11 = *(a2 + 16);
  v12 = a1 + *(*a1 - 64);
  v13 = *(v12 + 8);
  if (v11 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v13, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v13, *(v12 + 40), v11, 2u, 0);
    v17 = *(a1 + *(*a1 - 64) + 8);
    if (*(v17 + 20) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v16);
    }

    v18 = *(v17 + 8) + 4 * (*(v17 + 24) * a3);
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v21[1] = v18;
    v21[0] = &unk_1F42BFF30;
    v21[2] = v19;
    v21[3] = v20;
    kaldi::CuVectorBase<float>::CopyFromVec(v21, a2, v14, v15, v16);
  }
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((v2 + 104));
  kaldi::CuMatrixBase<float>::~CuMatrixBase(this + 96);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(this);
  kaldi::nnet1::Component::~Component((this + 48));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-ssru.h", 54);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void virtual thunk tokaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((this + *(*this - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((this + *(*this - 24)));

  JUMPOUT(0x1C692AE10);
}

void virtual thunk tokaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(void *a1)
{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  *(this + *(*this - 48)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  kaldi::CuVector<float>::~CuVector(this + 2);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 1, 0);
}

void kaldi::PrintableRxfilename(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      v2 = a1;
      if (*(a1 + 23) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(a2, "standard input");
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  v2 = *a1;
LABEL_8:
  if (*v2 == 45)
  {
    goto LABEL_9;
  }

LABEL_10:
  kaldi::ParseOptions::Escape(a1, a2);
}

void kaldi::PrintableWxfilename(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      v2 = a1;
      if (*(a1 + 23) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(a2, "standard output");
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  v2 = *a1;
LABEL_8:
  if (*v2 == 45)
  {
    goto LABEL_9;
  }

LABEL_10:
  kaldi::ParseOptions::Escape(a1, a2);
}

uint64_t kaldi::ClassifyWxfilename(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 2;
  }

  if (v2 == 124)
  {
    return 3;
  }

  if (v2 == 45)
  {
    if (v1[1])
    {
      v4 = 45;
      goto LABEL_12;
    }

    return 2;
  }

  v4 = v2;
  if (v2 < 0)
  {
    if (!__maskrune(v2, 0x4000uLL))
    {
      goto LABEL_15;
    }

LABEL_19:
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyWxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 79);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Cannot have leading or trailing space in filename ", 51);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    goto LABEL_26;
  }

LABEL_12:
  if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = v1[v6 - 1];
  if ((v7 & 0x80000000) != 0)
  {
    if (__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x4000) != 0)
  {
    goto LABEL_19;
  }

  v13 = *v1;
  if (v13 == 98 || v13 == 116)
  {
    if (v1[1] == 44)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyWxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 87);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found what looks like a wspecifier instead of a filename ", 58);
      v19 = *(a1 + 23);
      if (v19 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v19 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

LABEL_26:
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 2);
LABEL_27:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
      return 0;
    }
  }

  else if (v13 == 126)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyWxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 90);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found ~ at the beginning of filename ", 38);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ". Shell like path expansions not supported.", 44);
    goto LABEL_27;
  }

  v20 = v1 - 1;
  do
  {
    v21 = v20[2];
    ++v20;
  }

  while (v21);
  v22 = *v20;
  if (v22 == 124)
  {
    return 0;
  }

  if ((v22 & 0x80000000) != 0 ? __maskrune(v22, 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x4000)
  {
    return 0;
  }

  if ((*v20 & 0x80000000) == 0 && (v24 = *v20, (*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) != 0))
  {
    do
    {
      if (v20 <= v1)
      {
        break;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) == 0)
      {
        break;
      }

      v29 = *--v20;
      v24 = v29;
    }

    while ((v29 & 0x80000000) == 0);
    return v24 != 58;
  }

  else
  {
    if (strchr(v1, 124))
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyWxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 113);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Trying to classify wxfilename with pipe symbol in the wrong place (pipe without | at the beginning?): ", 102);
      v26 = *(a1 + 23);
      if (v26 >= 0)
      {
        v27 = a1;
      }

      else
      {
        v27 = *a1;
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 23);
      }

      else
      {
        v28 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      goto LABEL_27;
    }

    return 1;
  }
}

uint64_t kaldi::ClassifyRxfilename(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 2;
  }

  if (v2 == 124)
  {
    return 0;
  }

  if (v2 == 45)
  {
    if (v1[1])
    {
      v4 = 45;
      goto LABEL_11;
    }

    return 2;
  }

  v4 = v2;
  if ((v2 & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (__maskrune(v2, 0x4000uLL))
  {
    goto LABEL_18;
  }

LABEL_14:
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = v1[v6 - 1];
  if ((v7 & 0x80000000) != 0)
  {
    if (__maskrune(v7, 0x4000uLL))
    {
LABEL_18:
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 130);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Cannot have leading or trailing space in filename ", 51);
        v9 = *(a1 + 23);
        if (v9 >= 0)
        {
          v10 = a1;
        }

        else
        {
          v10 = *a1;
        }

        if (v9 >= 0)
        {
          v11 = *(a1 + 23);
        }

        else
        {
          v11 = *(a1 + 8);
        }

LABEL_25:
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 2);
LABEL_26:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
      }

      return 0;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x4000) != 0)
  {
    goto LABEL_18;
  }

  v13 = *v1;
  if (v13 == 98 || v13 == 116)
  {
    if (v1[1] == 44)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 138);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found what looks like an rspecifier instead of a filename ", 59);
      v19 = *(a1 + 23);
      if (v19 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v19 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      goto LABEL_25;
    }
  }

  else if (v13 == 126)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 141);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found ~ at the beginning of filename ", 38);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ". Shell like path expansions not supported.", 44);
    goto LABEL_26;
  }

  v20 = v1 - 1;
  do
  {
    v21 = v20[2];
    ++v20;
  }

  while (v21);
  v22 = *v20;
  if (v22 == 124)
  {
    return 4;
  }

  if ((v22 & 0x80000000) != 0)
  {
    v23 = __maskrune(v22, 0x4000uLL);
  }

  else
  {
    v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x4000;
  }

  if (v23)
  {
    return 0;
  }

  if ((*v20 & 0x80000000) == 0 && (v24 = *v20, (*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) != 0))
  {
    do
    {
      if (v20 <= v1)
      {
        break;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) == 0)
      {
        break;
      }

      v29 = *--v20;
      v24 = v29;
    }

    while ((v29 & 0x80000000) == 0);
    if (v24 == 58)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (strchr(v1, 124))
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 163);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Trying to classify rxfilename with pipe symbol in the wrong place (pipe without | at the end?): ", 96);
      v26 = *(a1 + 23);
      if (v26 >= 0)
      {
        v27 = a1;
      }

      else
      {
        v27 = *a1;
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 23);
      }

      else
      {
        v28 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      goto LABEL_26;
    }

    return 1;
  }
}

void kaldi::FileOutputImpl::~FileOutputImpl(kaldi::FileOutputImpl *this)
{
  *this = &unk_1F42CB9D0;
  v2 = (this + 32);
  if (*(this + 20))
  {
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "~FileOutputImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 217);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Error closing output file ", 26);
      v8 = *(this + 1);
      v7 = this + 8;
      v6 = v8;
      v9 = v7[23];
      if (v9 >= 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = v6;
      }

      if (v9 >= 0)
      {
        v11 = v7[23];
      }

      else
      {
        v11 = *(v7 + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }
  }

  v3 = MEMORY[0x1E69E54D0];
  v4 = *MEMORY[0x1E69E54D0];
  *(this + 4) = *MEMORY[0x1E69E54D0];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  MEMORY[0x1C692A7B0](this + 40);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](this + 448);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  kaldi::FileOutputImpl::~FileOutputImpl(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::StandardOutputImpl::~StandardOutputImpl(kaldi::StandardOutputImpl *this)
{
  *this = &unk_1F42CBA08;
  if (*(this + 8) == 1)
  {
    fst::cout(this);
    v1 = std::ostream::flush();
    v2 = fst::cout(v1);
    if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "~StandardOutputImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 257);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error writing to standard output", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
    }
  }
}

{
  kaldi::StandardOutputImpl::~StandardOutputImpl(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::PipeOutputImpl::~PipeOutputImpl(kaldi::PipeOutputImpl *this)
{
  *this = &unk_1F42CBA40;
  if (*(this + 6) && !kaldi::PipeOutputImpl::Close(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "~PipeOutputImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 332);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Error writing to pipe ", 22);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, *(this + 1), *(this + 2));
    }

    else
    {
      v5 = *(this + 8);
    }

    kaldi::PrintableWxfilename(&v5, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  kaldi::PipeOutputImpl::~PipeOutputImpl(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::FileInputImpl::~FileInputImpl(kaldi::FileInputImpl *this)
{
  *this = &unk_1F42CBA78;
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *(this + 1) = *MEMORY[0x1E69E54C8];
  *(this + *(v3 - 24) + 8) = *(v2 + 24);
  MEMORY[0x1C692A7B0](this + 24);
  std::istream::~istream();
  MEMORY[0x1C692AD30](this + 432);
}

{
  kaldi::FileInputImpl::~FileInputImpl(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::PipeInputImpl::~PipeInputImpl(void **this)
{
  *this = &unk_1F42CBAB8;
  if (this[6])
  {
    kaldi::PipeInputImpl::Close(this);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  kaldi::PipeInputImpl::~PipeInputImpl(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::OffsetFileInputImpl::~OffsetFileInputImpl(kaldi::OffsetFileInputImpl *this)
{
  *this = &unk_1F42CBAF8;
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *(this + 5) = *MEMORY[0x1E69E54C8];
  *(this + *(v3 - 24) + 40) = *(v2 + 24);
  MEMORY[0x1C692A7B0](this + 56);
  std::istream::~istream();
  MEMORY[0x1C692AD30](this + 464);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  kaldi::OffsetFileInputImpl::~OffsetFileInputImpl(this);

  JUMPOUT(0x1C692AE10);
}

kaldi::Output *kaldi::Output::Output(kaldi::Output *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if ((kaldi::Output::Open(a1, a2) & 1) == 0)
  {
    if (*a1)
    {
      (*(**a1 + 32))(*a1);
      *a1 = 0;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "Output", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 633);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Error opening output stream ", 28);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
    }

    else
    {
      v8 = *a2;
    }

    kaldi::PrintableWxfilename(&v8, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return a1;
}

void sub_1C3124E00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Output::Open(kaldi::Output *this, std::string *__str)
{
  if (*this && (kaldi::Output::Close(this) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 670);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Output::Open(), failed to close output stream: ", 47);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(this + 1), *(this + 2));
    }

    else
    {
      v12 = *(this + 8);
    }

    kaldi::PrintableWxfilename(&v12, &__p);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &__p);
    std::string::~string(&__p);
    std::string::~string(&v12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  std::string::operator=((this + 8), __str);
  v4 = kaldi::ClassifyWxfilename(__str);
  if (*this)
  {
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 0x2A5, "impl_ == NULL", v5);
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      operator new();
    }

    operator new();
  }

  if (v4)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 686);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Invalid output filename format ", 31);
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = *__str;
    }

    kaldi::PrintableWxfilename(&v11, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v14);
  }

  return 0;
}

uint64_t kaldi::Output::Close(kaldi::Output *this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 16))(v2);
  if (*this)
  {
    (*(**this + 32))(*this);
  }

  *this = 0;
  return v3;
}

void kaldi::Output::~Output(const std::string::value_type **this)
{
  v2 = *this;
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
    if (*this)
    {
      (*(**this + 32))(*this);
    }

    *this = 0;
    if ((v3 & 1) == 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "~Output", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 653);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Error closing output file ", 26);
      if (*(this + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, this[1], this[2]);
      }

      else
      {
        v7 = *(this + 1);
      }

      kaldi::PrintableWxfilename(&v7, &__p);
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
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
    }
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t kaldi::Output::Stream(kaldi::Output *this)
{
  v1 = *this;
  if (!v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 658);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Output::Stream() called but not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = *(*v1 + 8);

  return v2();
}

void *kaldi::Input::Input(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = 0;
  if ((kaldi::Input::OpenInternal(a1, a2, 1, a3) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Input", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 710);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Error opening input stream ", 27);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    kaldi::PrintableRxfilename(&__p, &v8);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v8);
    std::string::~string(&v8);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return a1;
}

uint64_t kaldi::Input::Close(kaldi::Input *this)
{
  result = *this;
  if (result)
  {
    result = (*(*result + 40))(result);
    *this = 0;
  }

  return result;
}

uint64_t kaldi::Input::OpenInternal(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = kaldi::ClassifyRxfilename(a2);
  v9 = *a1;
  if (*a1)
  {
    if (v8 == 3)
    {
      v10 = (*(*v9 + 24))(v9);
      v9 = *a1;
      if (v10 == 3)
      {
        if ((**v9)(v9, a2, a3))
        {
          if (a4)
          {
            v13 = (*(**a1 + 8))();

            return kaldi::InitKaldiInputStream(v13, a4);
          }

          else
          {
            return 1;
          }
        }

        else
        {
          if (*a1)
          {
            (*(**a1 + 40))(*a1);
          }

          result = 0;
          *a1 = 0;
        }

        return result;
      }

      if (!v9)
      {
        goto LABEL_16;
      }
    }

    (*(*v9 + 40))(v9);
    *a1 = 0;
  }

  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        operator new();
      }

      goto LABEL_17;
    }

LABEL_16:
    operator new();
  }

  if (v8 == 1)
  {
    operator new();
  }

  if (v8 == 2)
  {
    operator new();
  }

LABEL_17:
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18, "OpenInternal", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 752);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Invalid input filename format ", 30);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    }

    else
    {
      v16 = *a2;
    }

    kaldi::PrintableRxfilename(&v16, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v18);
  }

  return 0;
}

void kaldi::Input::~Input(kaldi::Input *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 40))(v2);
    *this = 0;
  }
}

uint64_t kaldi::Input::Stream(kaldi::Input *this)
{
  v1 = *this;
  if (!v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 771);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Input::Stream(), not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = *(*v1 + 8);

  return v2();
}

BOOL kaldi::FileOutputImpl::Open(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 160))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 188);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FileOutputImpl::Open(), ", 24);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v3 = (a1 + 8);
  std::string::operator=((a1 + 8), a2);
  if (*(a1 + 31) < 0)
  {
    v4 = *v3;
  }

  std::ofstream::open();
  return *(a1 + 160) != 0;
}

uint64_t kaldi::FileOutputImpl::Stream(kaldi::FileOutputImpl *this)
{
  if (!*(this + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 196);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "FileOutputImpl::Stream(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return this + 32;
}

BOOL kaldi::FileOutputImpl::Close(kaldi::FileOutputImpl *this)
{
  if (!*(this + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 202);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "FileOutputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  v1 = (this + 32);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v1 + *(*v1 - 24)), *(v1 + *(*v1 - 24) + 32) | 4);
  }

  return (*(v1 + *(*v1 - 24) + 32) & 5) == 0;
}

BOOL kaldi::StandardOutputImpl::Open(fst *a1)
{
  if (*(a1 + 8) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 227);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "StandardOutputImpl::Open(), open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = fst::cout(a1);
  result = *(v2 + *(*v2 - 24) + 32) == 0;
  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::StandardOutputImpl::Stream(kaldi::StandardOutputImpl *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 237);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "StandardOutputImpl::Stream(), object not initialized.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return fst::cout(this);
}

BOOL kaldi::StandardOutputImpl::Close(kaldi::StandardOutputImpl *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 243);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "StandardOutputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  *(this + 8) = 0;
  fst::cout(this);
  v1 = std::ostream::flush();
  v2 = fst::cout(v1);
  return (*(v2 + *(*v2 - 24) + 32) & 5) == 0;
}

uint64_t kaldi::PipeOutputImpl::Open(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  if (*(a1 + 32))
  {
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 0x10B, "f_ == NULL", v4);
  }

  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_24;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (!*(a2 + 23))
    {
LABEL_24:
      kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 0x10C, "wxfilename.length() != 0 && wxfilename[0] == '|'", v4);
    }
  }

  if (*v5 != 124)
  {
    goto LABEL_24;
  }

  std::string::basic_string[abi:ne200100](__dst, a2, 1uLL);
  if ((v19 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  v7 = popen(v6, "w");
  *(a1 + 32) = v7;
  if (v7)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 276);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Failed opening pipe for writing, command is: ", 45);
    if ((v19 & 0x80u) == 0)
    {
      v9 = __dst;
    }

    else
    {
      v9 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = __dst[1];
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", errno is ", 11);
    v13 = __error();
    v14 = strerror(*v13);
    v15 = strlen(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
  }

  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

void sub_1C31266DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 33) < 0)
  {
    operator delete(*(v10 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::PipeOutputImpl::Stream(kaldi::PipeOutputImpl *this)
{
  result = *(this + 6);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 293);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "PipeOutputImpl::Stream(), object not initialized.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

BOOL kaldi::PipeOutputImpl::Close(kaldi::PipeOutputImpl *this)
{
  if (!*(this + 6))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 299);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "PipeOutputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  std::ostream::flush();
  v2 = *(this + 6);
  v3 = *(v2 + *(*v2 - 24) + 32);
  (*(*v2 + 8))();
  *(this + 6) = 0;
  v4 = pclose(*(this + 4));
  if (v4)
  {
    v5 = kaldi::g_kaldi_verbose_level < -1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 311);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Pipe ", 5);
    v8 = *(this + 31);
    if (v8 >= 0)
    {
      v9 = this + 8;
    }

    else
    {
      v9 = *(this + 1);
    }

    if (v8 >= 0)
    {
      v10 = *(this + 31);
    }

    else
    {
      v10 = *(this + 2);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " had nonzero return status ", 27);
    MEMORY[0x1C692A960](v12, v6);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
  }

  *(this + 4) = 0;
  v13 = *(this + 5);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  result = (v3 & 5) == 0;
  *(this + 5) = 0;
  return result;
}

BOOL kaldi::FileInputImpl::Open(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 144))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 362);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "FileInputImpl::Open(), ", 23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  std::ifstream::open();
  return *(a1 + 144) != 0;
}

uint64_t kaldi::FileInputImpl::Stream(kaldi::FileInputImpl *this)
{
  if (!*(this + 18))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 369);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "FileInputImpl::Stream(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return this + 8;
}

void kaldi::FileInputImpl::Close(kaldi::FileInputImpl *this)
{
  if (!*(this + 18))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 375);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "FileInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (!std::filebuf::close())
  {
    v2 = (this + *(*(this + 1) - 24) + 8);
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

uint64_t kaldi::StandardInputImpl::Open(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 400);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "StandardInputImpl::Open(), open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  *(a1 + 8) = 1;
  return 1;
}

uint64_t kaldi::StandardInputImpl::Stream(kaldi::StandardInputImpl *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 411);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "StandardInputImpl::Stream(), object not initialized.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return fst::cin(this);
}

uint64_t kaldi::StandardInputImpl::Close(uint64_t this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 419);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "StandardInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
  }

  *(this + 8) = 0;
  return this;
}

uint64_t kaldi::PipeInputImpl::Open(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  if (*(a1 + 32))
  {
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 0x1B4, "f_ == NULL", v4);
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_27;
    }

    v6 = *(a2 + 23);
  }

  v7 = v6 - 1;
  if ((v5 & 0x80000000) != 0)
  {
    if (*(*a2 + v7) != 124)
    {
      goto LABEL_27;
    }

    v5 = *(a2 + 8);
  }

  else if (*(a2 + v7) != 124)
  {
LABEL_27:
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 0x1B5, "rxfilename.length() != 0 && rxfilename[rxfilename.length() - 1] == '|'", v4);
  }

  std::string::basic_string(&v20, a2, 0, v5 - 1, v19);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v20;
  }

  else
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  v9 = popen(v8, "r");
  *(a1 + 32) = v9;
  if (v9)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/kaldi-io.cc", 446);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Failed opening pipe for reading, command is: ", 45);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v20;
    }

    else
    {
      v11 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, size);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", errno is ", 11);
    v15 = __error();
    v16 = strerror(*v15);
    v17 = strlen(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v19);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return 0;
}