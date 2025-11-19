void sub_1C314979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v20 - 72) = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::ShortlistDataOnDisk::~ShortlistDataOnDisk(&a19);
  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataBasedOnTagInInput(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  kaldi::ReadToken(a1, a2, &v45, a4, a5);
  if (SHIBYTE(v47) < 0)
  {
    if (v46 != 16)
    {
LABEL_10:
      if ((SHIBYTE(v47) & 0x80000000) == 0 || v46 != 27 || (*v45 == 0x696C74726F68533CLL ? (v15 = *(v45 + 1) == 0x49656C6261547473) : (v15 = 0), v15 ? (v16 = *(v45 + 2) == 0x6C6946796E614D6ELL) : (v16 = 0), v16 ? (v17 = *(v45 + 19) == 0x3E73656C6946796ELL) : (v17 = 0), !v17))
      {
LABEL_75:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v57, "BuildShortlistDataBasedOnTagInInput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 295);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Unknown shortlist type: ", 24);
        if (v47 >= 0)
        {
          v38 = &v45;
        }

        else
        {
          v38 = v45;
        }

        if (v47 >= 0)
        {
          v39 = HIBYTE(v47);
        }

        else
        {
          v39 = v46;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v57);
      }

      memset(&v44, 0, sizeof(v44));
      kaldi::ReadToken(a1, a2, &v44, v9, v10);
      *v42 = *a4;
      v43 = *(a4 + 16);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v41.__pn_, &v44);
      std::__fs::filesystem::operator/[abi:ne200100](&v41, v42, &v58);
      std::__fs::filesystem::__status(&v58, 0);
      if (LOBYTE(v57[0].__first_) != 2)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v57, "BuildFromModelFileWithExternalShortlists", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 178);
        v40 = std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(v57, &v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " is not a directory", 19);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v57);
      }

      memset(v55, 0, sizeof(v55));
      v56 = 1065353216;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      MEMORY[0x1C692AB10](&v50, &v58, 0, 0);
      v18 = v50;
      v19 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = v51;
        v49.__imp_.__ptr_ = v18;
        v49.__imp_.__cntrl_ = v19;
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }

      else
      {
        v49.__imp_.__ptr_ = v50;
        v49.__imp_.__cntrl_ = 0;
      }

      while (1)
      {
        if (!v49.__imp_.__ptr_)
        {
          if (v49.__imp_.__cntrl_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49.__imp_.__cntrl_);
          }

          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiLogMessage::KaldiLogMessage(v57, "BuildFromModelFileWithExternalShortlists", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 190);
            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Available shortlist files: ", 27);
            kaldi::JoinVectorToString<std::string>(&v52, ",");
            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__pn_.__r_.__value_.__r.__words[0];
            }

            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__pn_.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, p_p, size);
            if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__pn_.__r_.__value_.__l.__data_);
            }

            kaldi::KaldiLogMessage::~KaldiLogMessage(v57);
          }

          std::make_unique[abi:ne200100]<kaldi::quasar::ShortlistDataInManyFiles,std::__fs::filesystem::path,std::__fs::filesystem::path,std::unordered_map<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>();
        }

        v21 = std::__fs::filesystem::directory_iterator::__dereference(&v49);
        std::__fs::filesystem::path::extension[abi:ne200100](&v21->__p_, v57);
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p.__pn_, &kaldi::quasar::ShortlistConstants::SHORTLIST_EXTENSION);
        v59.__data_ = &__p;
        v22 = std::__fs::filesystem::operator!=[abi:ne200100](v57, v59);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v57[0].__end_) < 0)
        {
          operator delete(v57[0].__first_);
          if (v22)
          {
            goto LABEL_58;
          }
        }

        else if (v22)
        {
          goto LABEL_58;
        }

        std::__fs::filesystem::path::stem[abi:ne200100](&v21->__p_, &__p);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v57, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v57[0].__first_ = *&__p.__pn_.__r_.__value_.__l.__data_;
          v57[0].__end_ = __p.__pn_.__r_.__value_.__r.__words[2];
        }

        std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__emplace_unique_key_args<std::string,std::string,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk>(v55, &v57[0].__first_);
        if (SHIBYTE(v57[0].__end_) < 0)
        {
          operator delete(v57[0].__first_);
        }

        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p.__pn_, v21->__p_.__pn_.__r_.__value_.__l.__data_, v21->__p_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __p.__pn_ = v21->__p_;
        }

        v23 = v53;
        if (v53 >= v54)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3);
          v26 = v25 + 1;
          if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v54 - v52) >> 3) > v26)
          {
            v26 = 0x5555555555555556 * ((v54 - v52) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v54 - v52) >> 3) >= 0x555555555555555)
          {
            v27 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v27 = v26;
          }

          v57[0].__end_cap_.__value_ = &v52;
          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v52, v27);
          }

          v28 = 8 * ((v53 - v52) >> 3);
          v29 = *&__p.__pn_.__r_.__value_.__l.__data_;
          *(v28 + 16) = *(&__p.__pn_.__r_.__value_.__l + 2);
          *v28 = v29;
          memset(&__p, 0, sizeof(__p));
          v30 = 24 * v25 + 24;
          v31 = (24 * v25 - (v53 - v52));
          memcpy((v28 - (v53 - v52)), v52, v53 - v52);
          v32 = v52;
          v33 = v54;
          v52 = v31;
          v53 = v30;
          v54 = 0;
          v57[0].__end_ = v32;
          v57[0].__end_cap_.__value_ = v33;
          v57[0].__first_ = v32;
          v57[0].__begin_ = v32;
          std::__split_buffer<std::string>::~__split_buffer(v57);
          v53 = v30;
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v24 = *&__p.__pn_.__r_.__value_.__l.__data_;
          *(v53 + 2) = *(&__p.__pn_.__r_.__value_.__l + 2);
          *v23 = v24;
          v53 = v23 + 24;
        }

LABEL_58:
        std::__fs::filesystem::directory_iterator::__increment(&v49, 0);
      }
    }

    v11 = v45;
  }

  else
  {
    if (SHIBYTE(v47) != 16)
    {
      goto LABEL_75;
    }

    v11 = &v45;
  }

  v13 = *v11;
  v12 = v11[1];
  if (v13 == 0x696C74726F68533CLL && v12 == 0x3E656C6261547473)
  {
  }

  goto LABEL_10;
}

void sub_1C3149E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  v57 = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table(&v59);
  if (*(v47 - 97) < 0)
  {
    operator delete(*(v47 - 120));
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, kaldi::quasar::ShortlistConstants::SHORTLISTS_DIRECTORY_NAME);
  std::__fs::filesystem::operator/[abi:ne200100](&pn, a1, v30);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = v24;
  std::string::basic_string[abi:ne200100](v24, v6 + 10);
  if ((v24[0].__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v24[0].__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ".shortlist");
  __p[0] = v24[0];
  memset(v24, 0, 24);
  std::__fs::filesystem::operator/[abi:ne200100](__p, v30, &v27);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v27, 0);
  if (v30[0].__pn_.__r_.__value_.__s.__data_[0] == 255 || !v30[0].__pn_.__r_.__value_.__s.__data_[0])
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "BuildShortlistDataOnDisk", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 311);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Shortlist file: ", 16);
      v10 = v9;
      size = HIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]);
      if ((v27.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v27;
      }

      else
      {
        v12 = v27.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((v27.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v27.__pn_.__r_.__value_.__l.__size_;
      }

      std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v12 + size, 0x22u, 0x5Cu);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " is not found", 13);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_55;
  }

  {
    operator new();
  }

  {
    operator new();
  }

  v13 = kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::mutex;
  std::mutex::lock(kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::mutex);
  v30[0].__pn_.__r_.__value_.__r.__words[0] = &v27;
  v14 = std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::piecewise_construct_t const&,std::tuple<std::__fs::filesystem::path const&>,std::tuple<>>(kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::loaded_files_with_shortlist_data, &v27);
  *a3 = 0;
  a3[1] = 0;
  v15 = *(v14 + 64);
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (a3[1] = v16) == 0))
  {
LABEL_42:
    if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v27.__pn_;
    }

    std::ifstream::basic_ifstream(v30, &pn);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if ((v30[1].__pn_.__r_.__value_.__s.__data_[*(v30[0].__pn_.__r_.__value_.__r.__words[0] - 24) + 8] & 5) == 0)
    {
      if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&pn, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        pn = v27.__pn_;
      }

      fst::FstReadOptions::FstReadOptions(v24, &pn, 0, 0, 0);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      v25 = 2;
      std::istream::tellg();
      std::istream::seekg();
      fst::MappedFile::Map(v30, v24, v29);
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(&pn, "BuildShortlistDataOnDisk", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 325);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&pn, "Failed to open shortlist file: ", 31);
    std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(v23, &v27);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&pn);
  }

  v17 = *(v14 + 56);
  *a3 = v17;
  if (!v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    goto LABEL_42;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v30, "BuildShortlistDataOnDisk", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-builder.cc", 319);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Shortlist for path: ", 20);
    v19 = v18;
    v20 = HIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]);
    if ((v27.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v27;
    }

    else
    {
      v21 = v27.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v27.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v27.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v21 + v20, 0x22u, 0x5Cu);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " is already loaded. Returning cached object.", 44);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v30);
  }

  std::mutex::unlock(v13);
LABEL_55:
  if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__pn_.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1C314A72C()
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&STACK[0x208]);
  if (*(v0 + 8))
  {
    JUMPOUT(0x1C314A740);
  }

  JUMPOUT(0x1C314A864);
}

void sub_1C314A75C(uint64_t a1, ...)
{
  va_start(va, a1);
  v2 = *(v1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  kaldi::Input::~Input(va);
  JUMPOUT(0x1C314A818);
}

void sub_1C314A770(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  JUMPOUT(0x1C314A84CLL);
}

void sub_1C314A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x1C314A858);
  }

  JUMPOUT(0x1C314A85CLL);
}

void sub_1C314A7A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C314A864);
}

void sub_1C314A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  JUMPOUT(0x1C314A84CLL);
}

void sub_1C314A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(a9);
  }

  if (v9)
  {
    MEMORY[0x1C692AE10](v10, 0x1070C40E0CA08F1);
  }

  JUMPOUT(0x1C314A810);
}

void sub_1C314A874()
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x208]);
  if (v0 < 0)
  {
    JUMPOUT(0x1C314A8F8);
  }

  JUMPOUT(0x1C314A8FCLL);
}

void sub_1C314A884(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C314A8FCLL);
}

void sub_1C314A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a27 < 0)
  {
    JUMPOUT(0x1C314A8F8);
  }

  JUMPOUT(0x1C314A8FCLL);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1C692AD30](a1 + 120);
  return a1;
}

BOOL std::__fs::filesystem::operator!=[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

double std::__fs::filesystem::path::extension[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

double std::__fs::filesystem::path::stem[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void sub_1C314ACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<kaldi::quasar::ShortlistDataInManyFiles,std::__fs::filesystem::path,std::__fs::filesystem::path,std::unordered_map<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>(&a22);
  MEMORY[0x1C692AE10](v23, v22);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__emplace_unique_key_args<std::string,std::string,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C314AF88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::piecewise_construct_t const&,std::tuple<std::__fs::filesystem::path const&>,std::tuple<>>(uint64_t a1, std::basic_string_view<_CharT, _Traits>::size_type a2)
{
  v5.__size_ = a2;
  v5.__data_ = &v4;
  v2 = *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(a1, v5);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    size = a2.__size_;
    do
    {
      while (1)
      {
        v6 = v3;
        a2.__data_ = (v3 + 4);
        if (!std::__fs::filesystem::operator<[abi:ne200100](size, a2))
        {
          break;
        }

        v3 = *v6;
        v4 = v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      a2.__data_ = size;
      if (!std::__fs::filesystem::operator<[abi:ne200100]((v6 + 4), a2))
      {
        break;
      }

      v4 = v6 + 1;
      v3 = v6[1];
    }

    while (v3);
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_10:
  *data = v6;
  return v4;
}

uint64_t std::__fs::filesystem::operator<[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) >> 31;
}

void sub_1C314B174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<kaldi::quasar::ShortlistDataOnDisk>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::ShortlistDataOnDisk *,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>::__shared_ptr_default_delete<kaldi::quasar::ShortlistDataOnDisk,kaldi::quasar::ShortlistDataOnDisk>,std::allocator<kaldi::quasar::ShortlistDataOnDisk>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<kaldi::quasar::ShortlistDataOnDisk>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      if (LOBYTE(a2[v3 + 15]) == 1)
      {
        v4 = a2[v3 + 13];
        if (v4)
        {
          MEMORY[0x1C692ADF0](v4, 0x1000C8077774924);
        }
      }

      v3 -= 3;
      if (v3 == -6)
      {
        v5 = 0;
        while (1)
        {
          if (LOBYTE(a2[v5 + 9]) == 1)
          {
            v6 = a2[v5 + 7];
            if (v6)
            {
              MEMORY[0x1C692ADF0](v6, 0x1000C8077774924);
            }
          }

          v5 -= 3;
          if (v5 == -9)
          {
            v7 = *a2;
            *a2 = 0;
            if (v7)
            {
              (*(*v7 + 8))(v7);
            }

            JUMPOUT(0x1C692AE10);
          }
        }
      }
    }
  }
}

uint64_t std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &>(uint64_t a1, std::basic_string_view<_CharT, _Traits>::size_type a2)
{
  v5.__size_ = a2;
  v5.__data_ = &v4;
  v2 = *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(a1, v5);
  if (!v2)
  {
    std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__construct_node<std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &>();
  }

  return v2;
}

std::string *std::pair<std::__fs::filesystem::path const,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>::pair[abi:ne200100]<std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::make_unique[abi:ne200100]<kaldi::quasar::ShortlistDataInManyFiles,std::__fs::filesystem::path,std::__fs::filesystem::path,std::unordered_map<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t kaldi::quasar::Shortlist::Shortlist(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = -1;
  v2 = *a2;
  *a2 = 0;
  *(result + 32) = v2;
  return result;
}

uint64_t kaldi::quasar::Shortlist::MapShortlist(unsigned int **a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int **a7, int **a8, void *a9, char a10)
{
  v87 = a4;
  v88 = a3;
  v16 = (*(*a1[4] + 16))(a1[4]);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v79, "MapShortlist", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist.cc", 52);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Language pair: ", 15);
    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    if (v16)
    {
      v22 = " is supported";
    }

    else
    {
      v22 = " is not supported";
    }

    if (v16)
    {
      v23 = 13;
    }

    else
    {
      v23 = 17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v79);
  }

  if (a6 + a5 > 0)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    (**a1[4])(v85);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(v85, &v88);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(v85, &v87);
    v25 = *a7;
    v26 = a7[1];
    while (v25 != v26)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(v85, v25++);
    }

    v47 = *a8;
    v48 = a8[1];
    while (v47 != v48)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(v85, v47++);
    }

    v49 = *a9;
    if (*a9 != a9 + 1)
    {
      do
      {
        LODWORD(v79[0].__locale_) = *(v49 + 7);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v85, v79);
        v50 = v49[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v49[2];
            v52 = *v51 == v49;
            v49 = v51;
          }

          while (!v52);
        }

        v49 = v51;
      }

      while (v51 != a9 + 1);
    }

    v53 = *a1;
    a1[1] = *a1;
    if (v86)
    {
      v54 = 0;
      v55 = v86;
      do
      {
        ++v54;
        v55 = *v55;
      }

      while (v55);
    }

    else
    {
      v54 = 0;
    }

    std::vector<int>::__insert_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<int,void *> *>,std::__hash_const_iterator<std::__hash_node<int,void *> *>>(a1, v53, v86, 0, v54);
    v57 = *a1;
    v58 = a1[1];
    std::__sort<std::__less<int,int> &,int *>();
    v59 = *a1;
    v60 = a1[1];
    if (*a1 == v60)
    {
      v61 = *a1;
    }

    else
    {
      v61 = *a1;
      v62 = *a1;
      while (*v62 != v88)
      {
        v62 += 4;
        v61 += 4;
        if (v62 == v60)
        {
          v61 = a1[1];
          break;
        }
      }
    }

    *(a1 + 6) = (v61 - v59) >> 2;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v79, "MapShortlist", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist.cc", 94);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Using shortlist for language_pair: ", 35);
      v64 = *(a2 + 23);
      v65 = v64 >= 0 ? a2 : *a2;
      v66 = v64 >= 0 ? *(a2 + 23) : *(a2 + 8);
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v65, v66);
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ", reducing Voc size to ", 23);
      MEMORY[0x1C692A960](v68, (v60 - v59) >> 2);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v79);
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v79);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v80, "Shortlisted vocabulary:", 23);
        v69 = *a1;
        v70 = a1[1];
        if (*a1 != v70)
        {
          do
          {
            v71 = *v69;
            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v80, " ", 1);
            MEMORY[0x1C692A960](v72, v71);
            ++v69;
          }

          while (v69 != v70);
        }

        if (kaldi::g_kaldi_verbose_level > 4)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, "MapShortlist", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist.cc", 102, 5);
          std::stringbuf::str();
          if ((v77 & 0x80u) == 0)
          {
            v73 = __p;
          }

          else
          {
            v73 = __p[0];
          }

          if ((v77 & 0x80u) == 0)
          {
            v74 = v77;
          }

          else
          {
            v74 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v73, v74);
          if (v77 < 0)
          {
            operator delete(__p[0]);
          }

          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
        }

        v79[0] = *MEMORY[0x1E69E54D8];
        v75 = *(MEMORY[0x1E69E54D8] + 72);
        *(v79 + *(v79[0].__locale_ - 3)) = *(MEMORY[0x1E69E54D8] + 64);
        v80 = v75;
        v81 = MEMORY[0x1E69E5548] + 16;
        if (v83 < 0)
        {
          operator delete(v82[7].__locale_);
        }

        v81 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v82);
        std::iostream::~basic_iostream();
        MEMORY[0x1C692AD30](&v84);
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v85);
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v79, "MapShortlist", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist.cc", 55);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Has shortlist, but disabled due to shortlist-lang-pair = ", 57);
      v28 = *(a2 + 23);
      if (v28 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v28 >= 0)
      {
        v30 = *(a2 + 23);
      }

      else
      {
        v30 = *(a2 + 8);
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", shortlist-cond-n = ", 21);
      v33 = MEMORY[0x1C692A960](v32, a5);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", shortlist-freq-n = ", 21);
      MEMORY[0x1C692A960](v34, a6);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v79);
    }

    if (!a10)
    {
      result = 0;
      a1[1] = *a1;
      return result;
    }

    v35 = (*(*a1[4] + 40))(a1[4]) - 1;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v79, "MapShortlist", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist.cc", 60);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Shortlist is disabled, and fallback to use full vocab (", 55);
      v37 = MEMORY[0x1C692A960](v36, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") instead.", 10);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v79);
    }

    std::vector<float>::resize(a1, v35);
    v39 = *a1;
    v38 = a1[1];
    if (*a1 != v38)
    {
      v40 = 0;
      v41 = (v38 - v39 - 4) >> 2;
      v42 = vdupq_n_s64(v41);
      v43 = (v41 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v44 = v39 + 8;
      do
      {
        v45 = vdupq_n_s64(v40);
        v46 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_1C378AF00)));
        if (vuzp1_s16(v46, *v42.i8).u8[0])
        {
          *(v44 - 2) = v40;
        }

        if (vuzp1_s16(v46, *&v42).i8[2])
        {
          *(v44 - 1) = v40 + 1;
        }

        if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_1C378AEF0)))).i32[1])
        {
          *v44 = v40 + 2;
          v44[1] = v40 + 3;
        }

        v40 += 4;
        v44 += 4;
      }

      while (v43 != v40);
    }

    *(a1 + 6) = v88;
  }

  return 1;
}

void sub_1C314BC24(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a44, MEMORY[0x1E69E54D8]);
  MEMORY[0x1C692AD30](va);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v59 - 128);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<int,void *> *>,std::__hash_const_iterator<std::__hash_node<int,void *> *>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 2)
  {
    v16 = (v9 - __src) >> 2;
    if (v16 >= a5)
    {
      v21 = &__src[4 * a5];
      v22 = &v9[-4 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v22 += 4;
        *v23++ = v24;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[4 * a5], __src, v9 - v21);
      }

      *__src = *(v7 + 4);
      if (a5 != 1)
      {
        v25 = __src + 4;
        v26 = a5 + 1;
        do
        {
          v7 = *v7;
          *v25++ = *(v7 + 4);
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      v17 = a3;
      if (v16 >= 1)
      {
        v18 = v16 + 1;
        v17 = a3;
        do
        {
          v17 = *v17;
          --v18;
        }

        while (v18 > 1);
      }

      v19 = a1[1];
      if (v17 == a4)
      {
        v20 = a1[1];
      }

      else
      {
        v35 = v17;
        v20 = a1[1];
        do
        {
          *v20 = *(v35 + 4);
          v20 += 4;
          v35 = *v35;
          ++v19;
        }

        while (v35 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v36 = &__src[4 * a5];
        v37 = &v19[-a5];
        v38 = v19;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 4;
          *v38++ = v39;
        }

        a1[1] = v38;
        if (v20 != v36)
        {
          memmove(&__src[4 * a5], __src, v19 - v36);
        }

        if (v17 != v7)
        {
          v40 = __src;
          do
          {
            *v40++ = *(v7 + 4);
            v7 = *v7;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
  }

  v27 = 4 * (v13 >> 2);
  v28 = 4 * a5;
  v29 = v27;
  do
  {
    *v29++ = *(v7 + 4);
    v7 = *v7;
    v28 -= 4;
  }

  while (v28);
  memcpy((v27 + 4 * a5), __src, a1[1] - __src);
  v30 = *a1;
  v31 = v27 + 4 * a5 + a1[1] - __src;
  a1[1] = __src;
  v32 = (__src - v30);
  v33 = (v27 - (__src - v30));
  memcpy(v33, v30, v32);
  v34 = *a1;
  *a1 = v33;
  a1[1] = v31;
  a1[2] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  return v27;
}

__n128 kaldi::quasar::ShortlistDataInOneFile::ShortlistDataInOneFile(void *a1, uint64_t *a2, __n128 *a3)
{
  v3 = 0;
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_1F42CC400;
  a1[1] = v4;
  do
  {
    v5 = &a1[v3];
    v6 = &a2[v3];
    v7 = a2[v3 + 2];
    v5[2] = a2[v3 + 1];
    v5[3] = v7;
    *(v5 + 32) = a2[v3 + 3];
    v6[1] = 0;
    v6[2] = 0;
    *(v6 + 24) = 0;
    v3 += 3;
  }

  while (v3 != 9);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = 3 * v9;
    v11 = &a1[v10 + 11];
    v12 = &a2[v10 + 10];
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = *(v12 + 16);
    LOBYTE(v11) = v8;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  result = *a3;
  *(a1 + 17) = *a3;
  a1[19] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

uint64_t kaldi::quasar::ShortlistDataInOneFile::GetConstrainedWordIds@<X0>(uint64_t result@<X0>, const void **a2@<X1>, int **a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *(result + 136);
  v8 = *(result + 144) - v7;
  if (v8)
  {
    v12 = result;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = a2[1];
    }

    if (v15 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v14 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14;
    }

    while (1)
    {
      v19 = *(v7 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v7 + 8);
      }

      if (v16 == v19)
      {
        v21 = v20 >= 0 ? v7 : *v7;
        result = memcmp(v17, v21, v16);
        if (!result)
        {
          break;
        }
      }

      ++v13;
      v7 += 24;
      if (v18 == v13)
      {
        goto LABEL_19;
      }
    }

    return kaldi::quasar::ShortlistDataOnDisk::GetConstrainedWordIds(v12 + 8, v13, a3, a4, a5, a6);
  }

  else
  {
LABEL_19:
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 1065353216;
  }

  return result;
}

void kaldi::quasar::ShortlistDataInOneFile::Write(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<ShortlistTable>", a4, a5);
  kaldi::quasar::ShortlistDataOnDisk::Write(a1 + 8, a2, a3);
  kaldi::WriteToken(a2, a3, "<ShortlistLangPairs>", v8, v9);
  kaldi::JoinVectorToString<std::string>((a1 + 136), ",");
  kaldi::WriteToken(a2, a3, &__p, v10, v11);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_1C314C470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::ShortlistDataInOneFile::IsLanguagePairSupported(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v6, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void kaldi::quasar::ShortlistDataInOneFile::Combine(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = v4[17];
  v7 = v4[18];
  if (v6 == v7)
  {
    v8 = *(a1 + 144);
  }

  else
  {
    v9 = *(a1 + 136);
    v8 = *(a1 + 144);
    v10 = v4[17];
    do
    {
      v11 = v9;
      if (v9 != v8)
      {
        v12 = *(v10 + 23);
        if (v12 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = v10[1];
        }

        if (v12 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = *v10;
        }

        v11 = v9;
        while (1)
        {
          size = HIBYTE(v11->__r_.__value_.__r.__words[2]);
          v16 = size;
          if ((size & 0x80u) != 0)
          {
            size = v11->__r_.__value_.__l.__size_;
          }

          if (size == v13)
          {
            v17 = v16 >= 0 ? v11 : v11->__r_.__value_.__r.__words[0];
            if (!memcmp(v17, v14, v13))
            {
              break;
            }
          }

          if (++v11 == v8)
          {
            goto LABEL_22;
          }
        }
      }

      if (v11 != v8)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "Combine", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/shortlist/shortlist-data-in-one-file.cc", 51);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Find duplicated keys when combine 2 shortlists");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
      }

LABEL_22:
      v10 += 3;
    }

    while (v10 != v7);
  }

  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>((a1 + 136), v8, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
  v18 = *(a1 + 48);
  kaldi::MappableVector<int>::append(a1 + 16, (v5 + 2));
}

BOOL kaldi::quasar::ShortlistDataInOneFile::operator==(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = v4[17];
  if (v7 - v6 == v4[18] - v8)
  {
    while (v6 != v7)
    {
      result = std::equal_to<std::string>::operator()[abi:ne200100](&v16, v6, v8);
      if (!result)
      {
        return result;
      }

      v6 += 3;
      v8 += 3;
    }

    v10 = v5 + 3;
    v11 = (a1 + 24);
    v12 = 72;
    while (*v11 == *v10 && !memcmp(*(v11 - 1), *(v10 - 1), 4 * *v11))
    {
      v10 += 3;
      v11 += 3;
      v12 -= 24;
      if (!v12)
      {
        v13 = v5 + 12;
        v14 = (a1 + 96);
        v15 = 48;
        while (*v14 == *v13 && !memcmp(*(v14 - 1), *(v13 - 1), 4 * *v14))
        {
          v13 += 3;
          v14 += 3;
          v15 -= 24;
          if (!v15)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t kaldi::quasar::ShortlistDataInOneFile::GetVocabSize(kaldi::quasar::ShortlistDataInOneFile *this)
{
  if (*(this + 3) < 2uLL)
  {
    return (*(this + 12) - **(this + 2));
  }

  else
  {
    return (*(*(this + 2) + 4) - **(this + 2));
  }
}

void kaldi::quasar::ShortlistDataInOneFile::~ShortlistDataInOneFile(kaldi::quasar::ShortlistDataInOneFile *this)
{
  *this = &unk_1F42CC400;
  v7 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(this + i + 128) == 1)
    {
      v3 = *(this + i + 112);
      if (v3)
      {
        MEMORY[0x1C692ADF0](v3, 0x1000C8077774924);
      }
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    if (*(this + j + 80) == 1)
    {
      v5 = *(this + j + 64);
      if (v5)
      {
        MEMORY[0x1C692ADF0](v5, 0x1000C8077774924);
      }
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  *this = &unk_1F42CC400;
  v7 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(this + i + 128) == 1)
    {
      v3 = *(this + i + 112);
      if (v3)
      {
        MEMORY[0x1C692ADF0](v3, 0x1000C8077774924);
      }
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    if (*(this + j + 80) == 1)
    {
      v5 = *(this + j + 64);
      if (v5)
      {
        MEMORY[0x1C692ADF0](v5, 0x1000C8077774924);
      }
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x1C692AE10](this, 0x10F1C408308A222);
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void kaldi::quasar::ShortlistNnetBuilder::ConstrainSoftmax(kaldi::nnet1::Nnet *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  Component = kaldi::nnet1::Nnet::GetComponent(a1, ((*(a1 + 1) - *a1) >> 3) - 1, a3, a4, a5);
  (*(*Component + 24))(Component);
  operator new();
}

void sub_1C314D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, kaldi::nnet1::Nnet **a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::Vector<float>::Destroy(v5 - 112);
  kaldi::Matrix<float>::~Matrix(va);
  std::unique_ptr<kaldi::nnet1::Nnet>::~unique_ptr[abi:ne200100](a4);
  _Unwind_Resume(a1);
}

kaldi::nnet1::Nnet **std::unique_ptr<kaldi::nnet1::Nnet>::~unique_ptr[abi:ne200100](kaldi::nnet1::Nnet **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    kaldi::nnet1::Nnet::~Nnet(v2);
    MEMORY[0x1C692AE10]();
  }

  return a1;
}

void kaldi::quasar::ShortlistNnetBuilder::ConstructNnet(uint64_t a1)
{
  kaldi::MatrixBase<float>::NumCols(a1);
  kaldi::MatrixBase<float>::NumRows(a1);
  operator new();
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::SetLinearity(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows((a1 + 48)))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x65, "linearity.NumRows() == linearity_.NumRows()", v5);
  }

  v6 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6 != kaldi::QuantizedMatrixBase<short>::NumCols(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x66, "linearity.NumCols() == linearity_.NumCols()", v7);
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1 + 48, a2);
}

_DWORD *kaldi::nnet1::QuantizedAffineTransform<signed char>::SetBias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 8) != *(a1 + 112))
  {
    kaldi::KaldiAssertFailure_("SetBias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x5A, "bias.Dim() == bias_.Dim()", a5);
  }

  v6 = (a1 + 96);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v6, a2, a3, a4, a5);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::SetLinearity(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows((a1 + 48)))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x65, "linearity.NumRows() == linearity_.NumRows()", v5);
  }

  v6 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6 != kaldi::QuantizedMatrixBase<short>::NumCols(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../engine/common/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 0x66, "linearity.NumCols() == linearity_.NumCols()", v7);
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1 + 48, a2);
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst()
{
  operator new();
}

{
  operator new();
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void sub_1C314E338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a23);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(void *a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  *v31 = 0u;
  *v32 = 0u;
  v6 = -1;
  v36 = 0;
  v37 = 0;
  v35 = -1;
  v35 = (*(*a1 + 24))(a1);
  v36 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v36 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v39;
    if (v39 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v29, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v29);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v36 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&v29, __p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v36 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }

  v25 = *MEMORY[0x1E69E9840];
  return updated;
}

void sub_1C314E860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFile(fst *a1, uint64_t a2)
{
  v27[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v4 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v22);
      if ((v26[*(v22.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v5 = fst::LogMessage::LogMessage(&v21, &__p);
        v6 = fst::cerr(v5);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Fst::Write: Can't open file: ", 29);
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        if (v8 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        fst::LogMessage::~LogMessage(&v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 = 0;
      }

      else
      {
        v14 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v18 = 257;
        v19 = 1;
        v20 = v14;
        v11 = (*(*a1 + 96))(a1, &v22, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v22.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1C692A7B0](&v22.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1C692AD30](v27);
      goto LABEL_29;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_6;
  }

  v12 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v13 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v23 = 257;
  v24 = 1;
  v25 = v13;
  v11 = (*(*a1 + 96))(a1, v12, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_29:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v6, a3);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

void fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::SetValue(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[3] + 16 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (!v8)
    {
      v9 = *(a1 + 16);
      v10 = *v9;
LABEL_8:
      *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (!v8)
    {
      v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
      *v9 = v10;
      goto LABEL_8;
    }
  }

  if (*(v6 + 8) != INFINITY && *(v6 + 8) != 0.0)
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v12 = 0x30FC30007;
  v13 = a2->n128_u32[0] == v7 && a2->n128_u32[1] == v8;
  if (v13 && a2->n128_u32[3] == *(v6 + 12))
  {
    v12 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArc(v4, a2, v5);
  v14 = a2->n128_u32[0];
  v15 = a2->n128_u32[1];
  if (a2->n128_u32[0] != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14)
  {
    if (!v15)
    {
      v16 = *(a1 + 16);
      v17 = *v16;
LABEL_26:
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
      goto LABEL_26;
    }
  }

  if (a2->n128_f32[2] != INFINITY && a2->n128_f32[2] != 0.0)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(a1 + 16) &= v12;
}

__n128 fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArc(void *a1, __n128 *a2, uint64_t a3)
{
  v3 = (a1[3] + 16 * a3);
  if (!v3->n128_u32[0])
  {
    --a1[1];
  }

  if (!v3->n128_u32[1])
  {
    --a1[2];
  }

  if (!a2->n128_u32[0])
  {
    ++a1[1];
  }

  if (!a2->n128_u32[1])
  {
    ++a1[2];
  }

  result = *a2;
  *v3 = *a2;
  return result;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState();
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(v4, a2);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F42CC720;
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

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
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
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
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

void sub_1C314F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C314FAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
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

void sub_1C314FBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F42CC910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F42CC860;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1C314FD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F42CC8D8;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1C692AE10);
}

void fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F42CC910;
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

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Destroy(void *__p)
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42CC910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F42CC860;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::reserve((a1 + 64), v6);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState();
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

uint64_t fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

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

{
  return (*(*a1 + 8))(a1);
}

void sub_1C315068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((a1 + 3), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ReadHeader(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  if (v10)
  {
    *a5 = *v10;
    std::string::operator=((a5 + 8), (v10 + 8));
    std::string::operator=((a5 + 32), (v10 + 32));
    v11 = *(v10 + 88);
    v12 = *(v10 + 72);
    *(a5 + 56) = *(v10 + 56);
    *(a5 + 72) = v12;
    *(a5 + 88) = v11;
  }

  else
  {
    v13 = fst::FstHeader::Read(a5, a2, a3, 0);
    result = 0;
    if (!v13)
    {
      return result;
    }
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v15 = fst::LogMessage::LogMessage(&v87, __p);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FstImpl::ReadHeader: source: ", 29);
    v18 = *(a3 + 23);
    v19 = v18 >= 0 ? a3 : *a3;
    v20 = v18 >= 0 ? *(a3 + 23) : *(a3 + 8);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", fst_type: ", 12);
    v23 = *(a5 + 31);
    v24 = v23 >= 0 ? a5 + 8 : *(a5 + 8);
    v25 = v23 >= 0 ? *(a5 + 31) : *(a5 + 16);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", arc_type: ", 12);
    v28 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    v29 = *(v28 + 23);
    v30 = v29 >= 0 ? v28 : *v28;
    v31 = v29 >= 0 ? *(v28 + 23) : *(v28 + 8);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", version: ", 11);
    v34 = MEMORY[0x1C692A960](v33, *(a5 + 56));
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", flags: ", 9);
    MEMORY[0x1C692A960](v35, *(a5 + 60));
    fst::LogMessage::~LogMessage(&v87);
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v36 = (a1 + 16);
  v37 = *(a5 + 31);
  if (v37 >= 0)
  {
    v38 = *(a5 + 31);
  }

  else
  {
    v38 = *(a5 + 16);
  }

  v39 = *(a1 + 39);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(a1 + 24);
  }

  if (v38 != v39 || (v37 >= 0 ? (v41 = (a5 + 8)) : (v41 = *(a5 + 8)), (v42 = *v36, v40 >= 0) ? (v43 = (a1 + 16)) : (v43 = *v36), memcmp(v41, v43, v38)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v44 = fst::LogMessage::LogMessage(&v87, __p);
    v45 = fst::cerr(v44);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "FstImpl::ReadHeader: Fst not of type ", 38);
    v47 = *(a1 + 39);
    if (v47 >= 0)
    {
      v48 = a1 + 16;
    }

    else
    {
      v48 = *(a1 + 16);
    }

    if (v47 >= 0)
    {
      v49 = *(a1 + 39);
    }

    else
    {
      v49 = *(a1 + 24);
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ": ", 3);
    v52 = *(a3 + 23);
    if (v52 >= 0)
    {
      v53 = a3;
    }

    else
    {
      v53 = *a3;
    }

    if (v52 >= 0)
    {
      v54 = *(a3 + 23);
    }

    else
    {
      v54 = *(a3 + 8);
    }

LABEL_50:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
    fst::LogMessage::~LogMessage(&v87);
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v55 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
  v56 = *(a5 + 55);
  if (v56 >= 0)
  {
    v57 = *(a5 + 55);
  }

  else
  {
    v57 = *(a5 + 40);
  }

  v58 = *(v55 + 23);
  v59 = v58;
  if ((v58 & 0x80u) != 0)
  {
    v58 = *(v55 + 8);
  }

  if (v57 != v58 || (v56 >= 0 ? (v60 = (a5 + 32)) : (v60 = *(a5 + 32)), v59 >= 0 ? (v61 = v55) : (v61 = *v55), memcmp(v60, v61, v57)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v62 = fst::LogMessage::LogMessage(&v87, __p);
    v63 = fst::cerr(v62);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "FstImpl::ReadHeader: Arc not of type ", 38);
    v65 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = v65;
    }

    else
    {
      v67 = *v65;
    }

    if (v66 >= 0)
    {
      v68 = *(v65 + 23);
    }

    else
    {
      v68 = *(v65 + 8);
    }

    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v67, v68);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ": ", 3);
    v70 = *(a3 + 23);
    if (v70 >= 0)
    {
      v53 = a3;
    }

    else
    {
      v53 = *a3;
    }

    if (v70 >= 0)
    {
      v54 = *(a3 + 23);
    }

    else
    {
      v54 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  if (*(a5 + 56) < a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v71 = fst::LogMessage::LogMessage(&v87, __p);
    v72 = fst::cerr(v71);
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "FstImpl::ReadHeader: Obsolete ", 30);
    v74 = *(a1 + 39);
    if (v74 >= 0)
    {
      v75 = a1 + 16;
    }

    else
    {
      v75 = *(a1 + 16);
    }

    if (v74 >= 0)
    {
      v76 = *(a1 + 39);
    }

    else
    {
      v76 = *(a1 + 24);
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v75, v76);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " Fst version: ", 14);
    v78 = *(a3 + 23);
    if (v78 >= 0)
    {
      v53 = a3;
    }

    else
    {
      v53 = *a3;
    }

    if (v78 >= 0)
    {
      v54 = *(a3 + 23);
    }

    else
    {
      v54 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  *(a1 + 8) = *(a5 + 64);
  if (*(a5 + 60))
  {
    *(a1 + 40) = fst::SymbolTable::Read(a2, a3);
  }

  if ((*(a3 + 52) & 1) == 0)
  {
    v79 = *(a1 + 40);
    if (v79)
    {
      (*(*v79 + 8))(v79);
      *(a1 + 40) = 0;
    }
  }

  if ((*(a5 + 60) & 2) != 0)
  {
    *(a1 + 48) = fst::SymbolTable::Read(a2, a3);
  }

  if ((*(a3 + 53) & 1) == 0)
  {
    v80 = *(a1 + 48);
    if (v80)
    {
      (*(*v80 + 8))(v80);
      *(a1 + 48) = 0;
    }
  }

  v81 = *(a3 + 32);
  if (v81)
  {
    v82 = *(a1 + 40);
    if (v82)
    {
      (*(*v82 + 8))(*(a1 + 40));
      v81 = *(a3 + 32);
    }

    *(a1 + 40) = (*(*v81 + 16))(v81);
  }

  v83 = *(a3 + 40);
  if (v83)
  {
    v84 = *(a1 + 48);
    if (v84)
    {
      (*(*v84 + 8))(*(a1 + 48));
      v83 = *(a3 + 40);
    }

    *(a1 + 48) = (*(*v83 + 16))(v83);
  }

  return 1;
}

void sub_1C3150EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::FstHeader::~FstHeader(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type(void)::type;
}

uint64_t fst::TropicalWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::TropicalWeightTpl<float>::Type(void)::type;
}

void sub_1C31510F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C692AE10](v15, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7);
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  MEMORY[0x1C692A8E0](v33);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    __p = 0u;
    v36 = 0u;
    v43 = a8;
    (*(*v17 + 40))(v34);
    if (v34[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1C692A8F0](v33);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v34, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v34, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1C692A8E0](v34, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v43 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1C692A8F0](v34);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        result = 1;
        goto LABEL_31;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v34, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v34);
  if (SBYTE7(v36) < 0)
  {
    operator delete(__p);
  }

  result = 0;
LABEL_31:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1C692A7A0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C31518F0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1C692A7B0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](a1 + 52);
  return a1;
}

void *std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
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

    return fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, a3, 1);
  }
}

void sub_1C3151C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v43);
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

void sub_1C315245C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
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
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
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

void sub_1C31526A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
  }
}

void fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>();
}

void sub_1C3152F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<char *>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitVisit(uint64_t a1, uint64_t a2)
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

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitState(uint64_t a1, int a2, int a3)
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

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinishState(uint64_t a1, int a2, int a3)
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

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::BackArc(uint64_t a1, int a2, uint64_t a3)
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

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
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

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_1F42CC948;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a1);

  JUMPOUT(0x1C692AE10);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F42CC988;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1C315374C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1C692AE10);
}

double fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = &unk_1F42CC988;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1C692ADF0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  *&result = kaldi::CuMatrixBase<float>::~CuMatrixBase(a1).n128_u64[0];
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<char **>::emplace_back<char **&>(a1, &v10);
}

void sub_1C3153A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::Allocate(void *a1, uint64_t a2)
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

double fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_1F42CC948;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);

  *&result = kaldi::CuMatrixBase<float>::~CuMatrixBase(a1).n128_u64[0];
  return result;
}

void fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFinal(void *a1, int a2, float a3)
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

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(void *a1, int a2, float *a3)
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
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
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

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v18 = *(v16 + 24);
      v17 = *(v16 + 32);
      v19 = *(v16 + 8);
      v20 = v17 - v18;
      if (v17 == v18)
      {
        v26 = 0;
        v27 = v20 >> 4;
        v28 = *(v16 + 16);
        v29 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v26 = 0;
        v22 = *(v16 + 24);
        do
        {
          v23 = *(__p[0] + *(v22 + 12));
          if (v23 == -1)
          {
            v24.i64[0] = *v22;
            v24.i64[1] = HIDWORD(*v22);
            v19 = vaddq_s64(v19, vceqzq_s64(v24));
          }

          else
          {
            *(v22 + 12) = v23;
            if (v21 != v26)
            {
              *(v18 + 16 * v26) = *v22;
              v14 = *v4;
            }

            ++v26;
          }

          v16 = *(v14 + 8 * v15);
          ++v21;
          v25 = *(v16 + 32) - *(v16 + 24);
          v22 += 16;
        }

        while (v21 < v25 >> 4);
        v27 = v25 >> 4;
        v28 = v19.i64[1];
        v29 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(v16, v27 - v26);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 8) = v29;
      *(v31 + 16) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_1C3154330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::resize(void *a1, unint64_t a2)
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
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__append(a1, a2 - v2);
  }
}

void *fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
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

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 64);
    }

    while (v3 < (*(a1 + 72) - v2) >> 3);
  }

  *(a1 + 72) = v2;
  *(a1 + 88) = -1;
}

uint64_t fst::MappedFile::MappedFile(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  *a1 = &unk_1F42CC9C8;
  v6 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = a4;
  *(a1 + 68) = 0;
  return a1;
}

void fst::MappedFile::~MappedFile(fst::MappedFile *this)
{
  *this = &unk_1F42CC9C8;
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(this + 2);
  if (v3)
  {
    if (!munmap(v3, v2))
    {
      goto LABEL_9;
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "ERROR");
    v4 = fst::LogMessage::LogMessage(&v14, v12);
    v5 = fst::cerr(v4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "failed to unmap region: ", 24);
    v7 = __error();
    v8 = strerror(*v7);
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    fst::LogMessage::~LogMessage(&v14);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v10 = v12[0];
  }

  else
  {
    v11 = *(this + 1);
    if (!v11)
    {
      goto LABEL_9;
    }

    v10 = (v11 - *(this + 8));
  }

  operator delete(v10);
LABEL_9:
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  fst::MappedFile::~MappedFile(this);

  JUMPOUT(0x1C692AE10);
}

void fst::MappedFile::SetLocked(fst::MappedFile *this, int a2, char a3)
{
  v3 = *(this + 16);
  if (v3 > 0.0 && *(this + 68) != a2)
  {
    v6 = *(this + 3);
    if (v3 < 1.0)
    {
      v7 = v3 * v6;
      if (v7 < v6)
      {
        v6 = v7;
      }
    }

    v8 = *(this + 2);
    if (a2)
    {
      if (!mlock(v8, v6))
      {
        *(this + 68) = 1;
        return;
      }

      if ((a3 & 1) != 0 || getenv("QSR_ALLOW_MEMLOCK_FAIL"))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
        v9 = fst::LogMessage::LogMessage(&v29, __p);
        v10 = fst::cerr(v9);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Memory lock of file failed: ", 28);
        v12 = __error();
        v13 = strerror(*v12);
        v14 = strlen(v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        v21 = fst::LogMessage::LogMessage(&v29, __p);
        v22 = fst::cerr(v21);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Memory locking of file failed. If you are debugging try setting environment variable QSR_ALLOW_MEMLOCK_FAIL ", 108);
        v24 = __error();
        v25 = strerror(*v24);
        v26 = strlen(v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
      }
    }

    else
    {
      if (!munlock(v8, v6))
      {
        *(this + 68) = 0;
        return;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
      v15 = fst::LogMessage::LogMessage(&v29, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Memory unlock of file failed: ", 30);
      v18 = __error();
      v19 = strerror(*v18);
      v20 = strlen(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    }

    fst::LogMessage::~LogMessage(&v29);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1C31548E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MappedFile::Allocate(fst::MappedFile *this, int a2)
{
  if (this)
  {
    operator new(this + a2);
  }

  operator new();
}

void sub_1C3154A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C692AE10](v15, v16);
  _Unwind_Resume(a1);
}

void fst::MappedFile::Map(uint64_t a1, uint64_t a2, fst::MappedFile *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  std::istream::tellg();
  v4 = v43;
  v5 = a2;
  v6 = *(a2 + 48);
  v7 = v43 & 0xF;
  if ((v6 - 1) <= 1 && v7 == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = open(v14, 0);
    if (v15 != -1)
    {
      v16 = sysconf(29);
      v17 = v43 % v16;
      v18 = mmap(0, a3 + v17, 1, 1, v15, v43 / v16 * v16);
      if (!close(v15) && v18 != -1)
      {
        v40[1] = v18;
        v41 = a3 + v17;
        v40[0] = &v18[v17];
        v42 = v17;
        operator new();
      }

      std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
      v21 = fst::LogMessage::LogMessage(__p, v40);
      v22 = fst::cerr(v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Mapping of file failed: ", 24);
      v24 = __error();
      v25 = strerror(*v24);
      v26 = strlen(v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
      fst::LogMessage::~LogMessage(__p);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      v5 = a2;
LABEL_23:
      if (*(v5 + 48))
      {
        std::string::basic_string[abi:ne200100]<0>(v40, "WARNING");
        v27 = fst::LogMessage::LogMessage(__p, v40);
        v28 = fst::cerr(v27);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "File mapping at offset ", 23);
        v30 = MEMORY[0x1C692A980](v29, v4);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " of size ", 9);
        v32 = MEMORY[0x1C692A980](v31, a3);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " of file ", 9);
        v34 = *(a2 + 23);
        if (v34 >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        if (v34 >= 0)
        {
          v36 = *(a2 + 23);
        }

        else
        {
          v36 = *(a2 + 8);
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " could not be honored, reading instead.", 39);
        fst::LogMessage::~LogMessage(__p);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }
      }

      fst::MappedFile::Allocate(a3, 16);
    }

    std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
    v19 = fst::LogMessage::LogMessage(__p, v40);
    v20 = fst::cerr(v19);
    v5 = a2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Mapping of file failed: invalid file descriptor", 47);
  }

  else
  {
    if ((v6 - 3) < 0xFFFFFFFE || v7 == 0)
    {
      goto LABEL_23;
    }

    std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
    v10 = fst::LogMessage::LogMessage(__p, v40);
    v11 = fst::cerr(v10);
    v5 = a2;
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Mapping of file failed: stream position ", 40);
    v13 = MEMORY[0x1C692A980](v12, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " is not aligned", 15);
  }

  fst::LogMessage::~LogMessage(__p);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  goto LABEL_23;
}

void sub_1C315509C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComposeProperties(unint64_t this, uint64_t a2)
{
  v2 = (a2 | this) & 4;
  v3 = a2 & this;
  v4 = a2 & this & 0x2802000000 | v2 | 0x10000000000;
  if ((a2 & this & 0x2000000) != 0)
  {
    v4 |= a2 & this & 0x40000;
  }

  v5 = v3 & 0x280A800000 | v2 | 0x10000010000;
  if ((v3 & 0x2000000) != 0)
  {
    v5 |= v3 & 0x140000;
  }

  if ((v3 & 0x10000) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::DeterminizeProperties(unint64_t this, int a2, int a3)
{
  if ((this & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v3 = a2 ^ 1;
  v4 = 0x10000000000;
  if ((this & 0x2000000) != 0)
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0 && a3)
  {
LABEL_6:
    v4 = 0x10000040000;
  }

  v5 = (this >> 25) & 1;
  v6 = this & 0x800000;
  if ((v5 & a3) == 0)
  {
    v6 = 0;
  }

  v7 = this & ((this << 23) >> 63) & 0x405000000 | this & 0x142800010004 | this & ((this << 15) >> 31) & 0xA000000 | v6 | v4;
  if ((v5 & a2) != 0)
  {
    return v7 | 0x2000000;
  }

  else
  {
    return v7;
  }
}

unint64_t fst::ProjectProperties(unint64_t this, int a2)
{
  v2 = this & 0x3FFF00000007 | 0x10000;
  v3 = (this >> 2) & 0xC0000 | this & 0xCC300000 | v2;
  if ((this & 0x4000000) != 0)
  {
    v3 |= 0x1400000uLL;
  }

  if ((this & 0x8000000) != 0)
  {
    v3 |= 0x2800000uLL;
  }

  v4 = (this >> 2) & 0x30000000 | v3;
  v5 = this & 0x330C0000 | (((this >> 18) & 3) << 20) | v2;
  if ((this & 0x1000000) != 0)
  {
    v5 |= 0x4400000uLL;
  }

  if ((this & 0x2000000) != 0)
  {
    v5 |= 0x8800000uLL;
  }

  v6 = (4 * this) & 0xC0000000 | v5;
  if (a2)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::RmEpsilonProperties(unint64_t this, int a2)
{
  v2 = 176160768;
  if ((this & 0x10000) == 0)
  {
    v2 = 0x800000;
  }

  v3 = v2 | this & 0x2800010004;
  if (!a2)
  {
    v3 |= this & 0x4000000000 | 3;
  }

  if ((((this & 0x10000000000) == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = this & 0x20000;
  }

  return v3 | v4;
}

fst::SymbolTableTextOptions *fst::SymbolTableTextOptions::SymbolTableTextOptions(fst::SymbolTableTextOptions *this)
{
  *this = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, FLAGS_fst_field_separator);
  return this;
}

void fst::SymbolTableImpl::ReadText(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1 = *MEMORY[0x1E69E9840];
  operator new();
}

uint64_t fst::SymbolTableImpl::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = fst::internal::DenseSymbolMap::InsertOrFind((a1 + 40), a2);
  if (v7)
  {
    if (((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 128);
      v10 = *(a1 + 136);
      if (v11 >= v10)
      {
        v24 = *(a1 + 120);
        v25 = v11 - v24;
        v26 = (v11 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
        }

        v28 = v10 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
        v30 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v29)
        {
          v30 = v27;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1 + 120, v30);
        }

        v31 = (v11 - v24) >> 3;
        v32 = (8 * v26);
        v33 = (8 * v26 - 8 * v31);
        *v32 = a3;
        v12 = v32 + 1;
        memcpy(v33, v24, v25);
        v34 = *(a1 + 120);
        *(a1 + 120) = v33;
        *(a1 + 128) = v12;
        *(a1 + 136) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 1;
      }

      *(a1 + 128) = v12;
      v35 = ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1;
      __p[0] = &v39;
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 144, &v39)[5] = v35;
      v8 = v39;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 172) = 0;
  }

  else
  {
    NthKey = fst::SymbolTableImpl::GetNthKey(a1, v6);
    if (NthKey == a3)
    {
      return a3;
    }

    else
    {
      v8 = NthKey;
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        v13 = fst::LogMessage::LogMessage(&v40, __p);
        v14 = fst::cerr(v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "SymbolTable::AddSymbol: symbol = ", 33);
        v16 = *(a2 + 23);
        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v16 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " already in symbol_map_ with key = ", 35);
        v21 = MEMORY[0x1C692A9A0](v20, v8);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " but supplied new key = ", 24);
        v23 = MEMORY[0x1C692A9A0](v22, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " (ignoring new key)", 19);
        fst::LogMessage::~LogMessage(&v40);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_1C3155B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTableImpl::MaybeRecomputeCheckSum(fst::SymbolTableImpl *this)
{
  if ((*(this + 172) & 1) == 0)
  {
    fst::CheckSummer::CheckSummer(&v63);
    if (*(this + 7) != *(this + 6))
    {
      v2 = 0;
      do
      {
        fst::internal::DenseSymbolMap::GetSymbol((this + 40), v2, __p);
        v3 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v5 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = __p[0].__r_.__value_.__r.__words[1];
        }

        else
        {
          v5 = __p;
        }

        if (v3 >= 1)
        {
          v6 = v3 & 0x7FFFFFFF;
          do
          {
            v8 = v5->__r_.__value_.__s.__data_[0];
            v5 = (v5 + 1);
            v7 = v8;
            v9 = v63++;
            v10 = -v9 < 0;
            v11 = -v9 & 0x1F;
            v12 = v9 & 0x1F;
            if (!v10)
            {
              v12 = -v11;
            }

            if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &v64;
            }

            else
            {
              v13 = v64.__r_.__value_.__r.__words[0];
            }

            v13->__r_.__value_.__s.__data_[v12] ^= v7;
            --v6;
          }

          while (v6);
          v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        ++v63;
        if (v4 < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        ++v2;
      }

      while (v2 < (*(this + 7) - *(this + 6)) >> 3);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v64;
    }

    if (*(this + 199) < 0)
    {
      operator delete(*(this + 22));
    }

    *(this + 176) = __p[0];
    fst::CheckSummer::CheckSummer(&v61);
    if (*(this + 4) >= 1)
    {
      v14 = 0;
      v15 = *MEMORY[0x1E69E54E8];
      v16 = *(MEMORY[0x1E69E54E8] + 24);
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](__p);
        fst::internal::DenseSymbolMap::GetSymbol((this + 40), v14, &v54);
        if ((v56 & 0x80u) == 0)
        {
          v17 = &v54;
        }

        else
        {
          v17 = v54;
        }

        if ((v56 & 0x80u) == 0)
        {
          v18 = v56;
        }

        else
        {
          v18 = v55;
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v17, v18);
        LOBYTE(v51) = 9;
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v51, 1);
        MEMORY[0x1C692A9A0](v20, v14);
        if (v56 < 0)
        {
          operator delete(v54);
        }

        std::stringbuf::str();
        if ((v56 & 0x80u) == 0)
        {
          v21 = &v54;
        }

        else
        {
          v21 = v54;
        }

        std::stringbuf::str();
        v22 = v53;
        v23 = v53;
        if ((v53 & 0x80u) != 0)
        {
          v22 = v52;
        }

        if (v22 >= 1)
        {
          v24 = v22 & 0x7FFFFFFF;
          do
          {
            v26 = *v21++;
            v25 = v26;
            v27 = v61++;
            v10 = -v27 < 0;
            v28 = -v27 & 0x1F;
            v29 = v27 & 0x1F;
            if (!v10)
            {
              v29 = -v28;
            }

            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v62;
            }

            else
            {
              v30 = v62.__r_.__value_.__r.__words[0];
            }

            v30->__r_.__value_.__s.__data_[v29] ^= v25;
            --v24;
          }

          while (v24);
          v23 = v53;
        }

        if ((v23 & 0x80) != 0)
        {
          operator delete(v51);
        }

        if (v56 < 0)
        {
          operator delete(v54);
        }

        __p[0].__r_.__value_.__r.__words[0] = v15;
        *(__p[0].__r_.__value_.__r.__words + *(v15 - 24)) = v16;
        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
        if (v59 < 0)
        {
          operator delete(v58);
        }

        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        MEMORY[0x1C692AD30](v60);
        ++v14;
      }

      while (v14 < *(this + 4));
    }

    v31 = *(this + 18);
    if (v31 != (this + 152))
    {
      v32 = *MEMORY[0x1E69E54E8];
      v33 = *(MEMORY[0x1E69E54E8] + 24);
      do
      {
        if (*(v31 + 4) >= *(this + 4))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          fst::internal::DenseSymbolMap::GetSymbol((this + 40), *(v31 + 5), &v54);
          if ((v56 & 0x80u) == 0)
          {
            v34 = &v54;
          }

          else
          {
            v34 = v54;
          }

          if ((v56 & 0x80u) == 0)
          {
            v35 = v56;
          }

          else
          {
            v35 = v55;
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v34, v35);
          LOBYTE(v51) = 9;
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v51, 1);
          MEMORY[0x1C692A9A0](v37, *(v31 + 4));
          if (v56 < 0)
          {
            operator delete(v54);
          }

          std::stringbuf::str();
          if ((v56 & 0x80u) == 0)
          {
            v38 = &v54;
          }

          else
          {
            v38 = v54;
          }

          std::stringbuf::str();
          v39 = v53;
          v40 = v53;
          if ((v53 & 0x80u) != 0)
          {
            v39 = v52;
          }

          if (v39 >= 1)
          {
            v41 = v39 & 0x7FFFFFFF;
            do
            {
              v43 = *v38++;
              v42 = v43;
              v44 = v61++;
              v10 = -v44 < 0;
              v45 = -v44 & 0x1F;
              v46 = v44 & 0x1F;
              if (!v10)
              {
                v46 = -v45;
              }

              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &v62;
              }

              else
              {
                v47 = v62.__r_.__value_.__r.__words[0];
              }

              v47->__r_.__value_.__s.__data_[v46] ^= v42;
              --v41;
            }

            while (v41);
            v40 = v53;
          }

          if ((v40 & 0x80) != 0)
          {
            operator delete(v51);
          }

          if (v56 < 0)
          {
            operator delete(v54);
          }

          __p[0].__r_.__value_.__r.__words[0] = v32;
          *(__p[0].__r_.__value_.__r.__words + *(v32 - 24)) = v33;
          __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
          if (v59 < 0)
          {
            operator delete(v58);
          }

          __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x1C692AD30](v60);
        }

        v48 = *(v31 + 1);
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = *(v31 + 2);
            v50 = *v49 == v31;
            v31 = v49;
          }

          while (!v50);
        }

        v31 = v49;
      }

      while (v49 != (this + 152));
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v62;
    }

    if (*(this + 223) < 0)
    {
      operator delete(*(this + 25));
    }

    *(this + 200) = __p[0];
    *(this + 172) = 1;
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1C315620C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_1C31563D4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

uint64_t fst::internal::DenseSymbolMap::InsertOrFind(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  if ((((*(this + 6) - *(this + 5)) >> 3) * 0.75) <= ((*(this + 2) - *(this + 1)) >> 3))
  {
    fst::internal::DenseSymbolMap::Rehash(this);
  }

  v4 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, a2);
  v5 = *(this + 8);
  v6 = *(this + 5);
  v7 = v4 & v5;
  v8 = *(v6 + 8 * (v4 & v5));
  v10 = *this;
  v9 = *(this + 1);
  if (v8 == *this)
  {
LABEL_9:
    *(v6 + 8 * v7) = (*(this + 2) - v9) >> 3;
    if (*(a2 + 23) >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    operator new[]();
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  while (strcmp(*(v9 + 8 * v8), v11))
  {
    v7 = (v7 + 1) & v5;
    v8 = *(v6 + 8 * v7);
    if (v8 == v10)
    {
      goto LABEL_9;
    }
  }

  return v8;
}

uint64_t fst::SymbolTableImpl::GetNthKey(fst::SymbolTableImpl *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return -1;
  }

  v2 = a2;
  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return -1;
  }

  if (*(this + 4) <= a2)
  {
    fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, __p);
    v4 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
    v2 = v4;
    if (v4 != -1)
    {
      v5 = *(this + 4);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        v2 = *(*(this + 15) + 8 * v7);
      }
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

uint64_t fst::SymbolTableImpl::Read(void *a1)
{
  v8 = 0;
  std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    LODWORD(v5.__r_.__value_.__l.__data_) = 0;
    std::istream::read();
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v5, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "SymbolTable::Read: read failed", 30);
  fst::LogMessage::~LogMessage(&v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1C3156A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::SymbolTableImpl::Write(uint64_t *a1, void *a2)
{
  LODWORD(__p) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  LODWORD(__p) = v4;
  std::ostream::write();
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  std::ostream::write();
  __p = a1[3];
  std::ostream::write();
  __p = ((a1[7] - a1[6]) >> 3);
  std::ostream::write();
  if (a1[7] != a1[6])
  {
    v6 = 0;
    do
    {
      v7 = a1[4];
      v8 = v6;
      if (v6 >= v7)
      {
        v8 = *(a1[15] - 8 * v7 + 8 * v6);
      }

      fst::internal::DenseSymbolMap::GetSymbol((a1 + 5), v6, &__p);
      v9 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v9 = v15;
      }

      v17 = v9;
      std::ostream::write();
      std::ostream::write();
      if (v16 < 0)
      {
        operator delete(__p);
      }

      __p = v8;
      std::ostream::write();
      ++v6;
    }

    while (v6 < ((a1[7] - a1[6]) >> 3));
  }

  std::ostream::flush();
  v10 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v11 = fst::LogMessage::LogMessage(&v17, &__p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "SymbolTable::Write: write failed", 32);
    fst::LogMessage::~LogMessage(&v17);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  return v10 == 0;
}

void sub_1C3156D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTable::AddTable(fst::SymbolTable *this, const fst::SymbolTable *a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 128))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(this + 1);
      (*(*a2 + 88))(__p, a2, v6);
      fst::SymbolTableImpl::AddSymbol(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 128))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1C3156ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::MutateCheck(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(v1 + 168);
  if (v2 >= 2)
  {
    *(v1 + 168) = v2 - 1;
    operator new();
  }

  return this;
}

BOOL fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v23 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 128))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v10 = 1;
      v24 = *(MEMORY[0x1E69E54E8] + 24);
      v25 = *MEMORY[0x1E69E54E8];
      v11 = v6;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
          v12 = fst::LogMessage::LogMessage(&v26, __p);
          v13 = fst::cerr(v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Negative symbol table entry when not allowed", 44);
          fst::LogMessage::~LogMessage(&v26);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 88))(__p, a1, v8);
        if ((v29 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if ((v29 & 0x80u) == 0)
        {
          v15 = v29;
        }

        else
        {
          v15 = __p[1];
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v14, v15);
        v17 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v17 = *(a3 + 8);
        }

        LOBYTE(v26) = *v17;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v26, 1);
        v19 = MEMORY[0x1C692A9A0](v18, v8);
        LOBYTE(v26) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v26, 1);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        v30 = v25;
        *(&v30 + *(v25 - 3)) = v24;
        v31 = MEMORY[0x1E69E5548] + 16;
        if (v33 < 0)
        {
          operator delete(v32[7].__locale_);
        }

        v31 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x1C692AD30](&v34);
        if (v10 < v6)
        {
          v8 = (*(*a1 + 128))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "ERROR");
    v20 = fst::LogMessage::LogMessage(__p, &v30);
    v21 = fst::cerr(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Missing required field separator", 32);
    fst::LogMessage::~LogMessage(__p);
    if (SHIBYTE(v32[0].__locale_) < 0)
    {
      operator delete(v30);
    }
  }

  return v23 != 0;
}

void sub_1C3157388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<long long>::vector[abi:ne200100](this + 5, 0x10uLL);
  v3 = *(this + 5);
  v2 = *(this + 6);
  *(this + 8) = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *this;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_1C378AF00)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return this;
}

void sub_1C31574DC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this, const fst::internal::DenseSymbolMap *a2)
{
  *this = -1;
  std::vector<char const*>::vector[abi:ne200100](this + 1, (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  if (*(this + 2) != *(this + 1))
  {
    v4 = strlen(**(a2 + 1));
    operator new[]();
  }

  return this;
}

void sub_1C31575FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::DenseSymbolMap::~DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  v4 = this + 8;
  v2 = *(this + 1);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x1C692ADF0](v2[v5], 0x1000C8077774924);
        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void fst::internal::DenseSymbolMap::Rehash(fst::internal::DenseSymbolMap *this)
{
  v2 = (this + 40);
  std::vector<long long>::resize(this + 5, (*(this + 6) - *(this + 5)) >> 2);
  v4 = *v2;
  v3 = v2[1];
  v2[3] = ((v3 - *v2) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *this;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_1C378AF00)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = *(this + 1);
  if (*(this + 2) != v12)
  {
    v13 = 0;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *(v12 + 8 * v13));
      v14 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, __p);
      v15 = *(this + 8);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = v15 & v14;
      v17 = *(this + 5);
      if (*(v17 + 8 * (v15 & v14)) != *this)
      {
        do
        {
          v16 = *(this + 8) & (v16 + 1);
        }

        while (*(v17 + 8 * v16) != *this);
      }

      *(v17 + 8 * v16) = v13++;
      v12 = *(this + 1);
    }

    while (v13 < (*(this + 2) - v12) >> 3);
  }
}

uint64_t fst::internal::DenseSymbolMap::Find(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  while (strcmp(*(v10 + 8 * v9), v2))
  {
    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
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
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

void fst::SymbolTable::~SymbolTable(fst::SymbolTable *this)
{
  fst::SymbolTable::~SymbolTable(this);

  JUMPOUT(0x1C692AE10);
}

{
  *this = &unk_1F42CC9F8;
  v1 = *(this + 1);
  v2 = *(v1 + 168) - 1;
  *(v1 + 168) = v2;
  if (!v2)
  {
    if (*(v1 + 223) < 0)
    {
      operator delete(*(v1 + 200));
    }

    if (*(v1 + 199) < 0)
    {
      operator delete(*(v1 + 176));
    }

    std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(v1 + 144, *(v1 + 152));
    v3 = *(v1 + 120);
    if (v3)
    {
      *(v1 + 128) = v3;
      operator delete(v3);
    }

    fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x1C692AE10](v1, 0x10B2C404FCE5648);
  }
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::SymbolTable::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::SymbolTableImpl::AddSymbol(v6, a2, a3);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return fst::SymbolTableImpl::AddSymbol(v4, a2, v5);
}

uint64_t fst::SymbolTable::Find(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[15] + 8 * v6);
    }
  }

  return result;
}

fst::CheckSummer *fst::CheckSummer::CheckSummer(fst::CheckSummer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::resize((this + 8), 0x20uLL, 0);
  return this;
}

void sub_1C3157AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *fst::SymbolTableImpl::SymbolTableImpl(std::string *this, const fst::SymbolTableImpl *a2)
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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2], (a2 + 40));
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 3);
  std::map<long long,long long>::map[abi:ne200100](this[6].__r_.__value_.__r.__words, a2 + 144);
  LODWORD(this[7].__r_.__value_.__l.__data_) = 1;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  return this;
}

void sub_1C3157BC4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void fst::SymbolTableImpl::CheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 199) < 0)
  {
    v4 = *(this + 22);
    v5 = *(this + 23);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 11);
    a2->__r_.__value_.__r.__words[2] = *(this + 24);
  }
}

void fst::SymbolTableImpl::LabeledCheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 223) < 0)
  {
    v4 = *(this + 25);
    v5 = *(this + 26);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 200);
    a2->__r_.__value_.__r.__words[2] = *(this + 27);
  }
}

uint64_t fst::SymbolTableImpl::Find(fst::SymbolTableImpl *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = *(this + 4);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 == v6)
    {
      v4 = *(*(this + 15) + 8 * v7);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

_BYTE *fst::SymbolTableImpl::GetNthSymbol@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0 || a2 >= ((*(this + 7) - *(this + 6)) >> 3) || *(this + 4) > a2)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, a3);
  }
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C31581B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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
      v5 = v2[4];
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

void sub_1C315833C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C31583B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
}

{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void fst::SplitToVector(char *__s1, char *__s2, uint64_t a3, int a4)
{
  if (__s1)
  {
    v7 = __s1;
    do
    {
      v8 = strpbrk(v7, __s2);
      v9 = v8;
      if (v8)
      {
        *v8 = 0;
      }

      if (!a4 || *v7)
      {
        v11 = *(a3 + 8);
        v10 = *(a3 + 16);
        if (v11 >= v10)
        {
          v13 = (v11 - *a3) >> 3;
          if ((v13 + 1) >> 61)
          {
            std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
          }

          v14 = v10 - *a3;
          v15 = v14 >> 2;
          if (v14 >> 2 <= (v13 + 1))
          {
            v15 = v13 + 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a3, v16);
          }

          v17 = (8 * v13);
          *v17 = v7;
          v12 = 8 * v13 + 8;
          v18 = *(a3 + 8) - *a3;
          v19 = v17 - v18;
          memcpy(v17 - v18, *a3, v18);
          v20 = *a3;
          *a3 = v19;
          *(a3 + 8) = v12;
          *(a3 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v7;
          v12 = (v11 + 1);
        }

        *(a3 + 8) = v12;
      }

      v7 = v9 + 1;
    }

    while (v9);
  }
}

unint64_t fst::ConvertToLegalCSymbol(unint64_t result)
{
  v1 = result;
  v2 = *(result + 23);
  v3 = result;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  v4 = MEMORY[0x1E69E9830];
  while (1)
  {
    v5 = v1;
    if ((v2 & 0x80) != 0)
    {
      v5 = *v1;
      v2 = *(v1 + 8);
    }

    if (v3 == (v5 + v2))
    {
      return result;
    }

    v6 = *v3;
    if ((v6 & 0x80000000) == 0)
    {
      result = *(v4 + 4 * v6 + 60) & 0x500;
      if (result)
      {
        goto LABEL_10;
      }

LABEL_9:
      *v3 = 95;
      goto LABEL_10;
    }

    result = __maskrune(v6, 0x500uLL);
    if (!result)
    {
      goto LABEL_9;
    }

LABEL_10:
    ++v3;
    v2 = *(v1 + 23);
  }
}

uint64_t fst::AlignInput()
{
  v7 = *MEMORY[0x1E69E9840];
  v3[1] = 0;
  v0 = 16;
  while (1)
  {
    std::istream::tellg();
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 % 0x10)
    {
      std::istream::read();
      if (--v0)
      {
        continue;
      }
    }

    result = 1;
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(v3, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "AlignInput: can't determine stream position", 43);
  fst::LogMessage::~LogMessage(v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
LABEL_9:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3158850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL fst::AlignOutput(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = 16;
  while (1)
  {
    v3 = a1 + *(*a1 - 24);
    if ((v3[32] & 5) != 0)
    {
      break;
    }

    (*(**(v3 + 5) + 32))(__p);
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 % 0x10)
    {
      std::ostream::write();
      if (--v2)
      {
        continue;
      }
    }

    v4 = a1 + *(*a1 - 24);
    if ((v4[32] & 5) != 0)
    {
      v5 = -1;
    }

    else
    {
      (*(**(v4 + 5) + 32))(__p);
      v5 = v11;
    }

    result = v5 % 16 == 0;
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(&v8, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "AlignOutput: can't determine stream position", 44);
  fst::LogMessage::~LogMessage(&v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3158A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FstHeader::Read(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    std::istream::tellg();
    v6 = v22;
  }

  else
  {
    v6 = 0;
  }

  std::istream::read();
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(&__c, __p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "FstHeader::Read: Bad FST header: ", 33);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  fst::LogMessage::~LogMessage(&__c);
  if ((SBYTE7(v15) & 0x80000000) == 0)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (a4)
  {
LABEL_14:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    v15 = 0u;
    v22 = v6;
    std::istream::seekg();
  }

LABEL_15:
  result = 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3158DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstHeader::Write(uint64_t a1)
{
  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 16);
  }

  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);
  }

  std::ostream::write();
  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 40);
  }

  std::ostream::write();
  v5 = *(a1 + 55);
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  std::ostream::write();
  v9 = *(v6 + 24);
  std::ostream::write();
  v10 = *(v6 + 28);
  std::ostream::write();
  v11 = *(v6 + 32);
  std::ostream::write();
  v12 = *(v6 + 40);
  std::ostream::write();
  v13 = *(v6 + 48);
  std::ostream::write();
  v14 = *(v6 + 56);
  std::ostream::write();
  return 1;
}

std::string *fst::FstReadOptions::FstReadOptions(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  this[1].__r_.__value_.__r.__words[2] = a5;
  WORD2(this[2].__r_.__value_.__r.__words[0]) = 257;
  std::string::basic_string[abi:ne200100]<0>(__p, FLAGS_fst_read_mode);
  LODWORD(this[2].__r_.__value_.__l.__data_) = fst::FstReadOptions::ReadMode(__p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1C3159048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstReadOptions::ReadMode(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 4 && **a1 == 1684104562)
    {
      return 0;
    }

    if (*(a1 + 8) != 3)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      fst::LogMessage::LogMessage(&v14, __p);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Unknown file read mode ", 23);
      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    v3 = *a1;
LABEL_10:
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v4 == 24941 && v5 == 112)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 23);
  v3 = a1;
  if (v2 == 3)
  {
    goto LABEL_10;
  }

  if (v2 != 4 || *a1 != 1684104562)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_1C31591A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::quasar::EspressoV2TensorData::~EspressoV2TensorData(kaldi::quasar::EspressoV2TensorData *this)
{
  *this = &unk_1F42CCAB0;
  if (*(this + 4) && e5rt_tensor_desc_dtype_release())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "~EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 344);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Espresso V2 failure: ", 21);
    v4 = strlen(last_error_message);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, last_error_message, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
    goto LABEL_15;
  }

  if (*(this + 5) && e5rt_tensor_desc_release())
  {
    v6 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "~EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 347);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Espresso V2 failure: ", 21);
    v8 = strlen(v6);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 1);
    goto LABEL_15;
  }

  if (*(this + 6) && e5rt_buffer_object_release())
  {
    v10 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "~EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 350);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Espresso V2 failure: ", 21);
    v12 = strlen(v10);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
LABEL_15:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(this);
}

{
  kaldi::quasar::EspressoV2TensorData::~EspressoV2TensorData(this);

  JUMPOUT(0x1C692AE10);
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F42CCB88;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v3;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "CPU");
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void kaldi::quasar::EspressoV2NetworkConfig::Read(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, const char *a5)
{
  memset(&__str, 0, sizeof(__str));
  v43[0] = 0;
  v43[1] = 0;
  v9 = a2 + 4;
  v10 = (a1 + 136);
  v44 = 0;
  memset(&v42, 0, sizeof(v42));
  while ((*(v9 + *(*a2 - 24)) & 2) == 0)
  {
    v40 = 0uLL;
    v41 = 0;
    kaldi::ReadToken(a2, a3, &v40, a4, a5);
    v11 = *(a4 + 23);
    if (v11 >= 0)
    {
      v12 = *(a4 + 23);
    }

    else
    {
      v12 = *(a4 + 8);
    }

    v13 = HIBYTE(v41);
    v14 = SHIBYTE(v41);
    if (!v12)
    {
      goto LABEL_17;
    }

    v15 = *(&v40 + 1);
    if (v41 >= 0)
    {
      v15 = HIBYTE(v41);
    }

    if (v15 == v12 && (v41 >= 0 ? (v16 = &v40) : (v16 = v40), v11 >= 0 ? (v17 = a4) : (v17 = *a4), !memcmp(v16, v17, v12)))
    {
      v34 = 0;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(v40);
      if ((v34 & 1) == 0)
      {
        break;
      }
    }

    else
    {
LABEL_17:
      if (v14 < 0)
      {
        if (*(&v40 + 1) == 10 && *v40 == 0x6F6974636E75463CLL && *(v40 + 8) == 15982)
        {
          goto LABEL_64;
        }

        if (*(&v40 + 1) == 14 && *v40 == 0x5474757074754F3CLL && *(v40 + 6) == 0x3E726F736E655474)
        {
          goto LABEL_58;
        }

        if (*(&v40 + 1) == 18)
        {
          v23 = v40;
LABEL_50:
          v24 = *v23;
          v25 = *(v23 + 1);
          v26 = *(v23 + 8);
          v28 = v24 == 0x6361626C6C61463CLL && v25 == 0x726F6674616C506BLL && v26 == 15981;
          p_str = v10;
          if (!v28)
          {
            goto LABEL_87;
          }

LABEL_65:
          kaldi::ReadToken(a2, a3, p_str, a4, a5);
          goto LABEL_75;
        }

        if (*(&v40 + 1) != 17 || (*v40 == 0x657475706D6F433CLL ? (v21 = *(v40 + 8) == 0x6D726F6674616C50) : (v21 = 0), v21 ? (v22 = *(v40 + 16) == 62) : (v22 = 0), !v22))
        {
LABEL_87:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 379);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Unknown token ", 14);
          if (v41 >= 0)
          {
            v36 = &v40;
          }

          else
          {
            v36 = v40;
          }

          if (v41 >= 0)
          {
            v37 = HIBYTE(v41);
          }

          else
          {
            v37 = *(&v40 + 1);
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", a typo in config file?", 24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
        }
      }

      else
      {
        if (v13 <= 16)
        {
          if (v13 != 10)
          {
            if (v13 != 14)
            {
              goto LABEL_87;
            }

            if (v40 != 0x5474757074754F3CLL || *(&v40 + 6) != 0x3E726F736E655474)
            {
              goto LABEL_87;
            }

LABEL_58:
            kaldi::ReadToken(a2, a3, v43, a4, a5);
            v39[0] = v43;
            v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 88, v43);
            std::string::operator=((v30 + 56), &__str);
            goto LABEL_75;
          }

          if (v40 != 0x6F6974636E75463CLL || WORD4(v40) != 15982)
          {
            goto LABEL_87;
          }

LABEL_64:
          p_str = &__str;
          goto LABEL_65;
        }

        if (v13 != 17)
        {
          if (v13 != 18)
          {
            goto LABEL_87;
          }

          v23 = &v40;
          goto LABEL_50;
        }

        if (v40 != 0x657475706D6F433CLL || *(&v40 + 1) != 0x6D726F6674616C50 || v41 != 62)
        {
          goto LABEL_87;
        }
      }

      kaldi::ReadToken(a2, a3, &v42, a4, a5);
      kaldi::SplitStringToVector(&v42, "|", 1, a1 + 112);
LABEL_75:
      std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
      v34 = 1;
      if (v41 < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      if ((v34 & 1) == 0)
      {
        break;
      }
    }
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1C3159A34(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bnnsir");
  kaldi::quasar::MakeComputeEngineCachePath(this + 5, __p, v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::quasar::BNNSGraphNetworkConfig::BNNSGraphNetworkConfig(__p, this + 40, v4);
  kaldi::quasar::BNNSGraphNetworkConfig::CreateComputeEngine(__p);
}

void sub_1C3159B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(va);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateComputeEngine(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this))
  {

    kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(this);
  }

  operator new();
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(unsigned __int16 **this)
{
  IsUniversalIntelChip = kaldi::quasar::IsUniversalIntelChip(this);
  if (IsUniversalIntelChip || (kaldi::quasar::IsVirtualMachine(IsUniversalIntelChip) & 1) != 0)
  {
LABEL_3:
    v3 = 1;
    return v3 & 1;
  }

  v5 = this[14];
  v6 = this[15];
  if (v5 == v6)
  {
    goto LABEL_17;
  }

  do
  {
    v7 = *(v5 + 23);
    if (v7 < 0)
    {
      if (*(v5 + 1) != 3)
      {
        goto LABEL_15;
      }

      v8 = *v5;
    }

    else
    {
      v8 = v5;
      if (v7 != 3)
      {
        goto LABEL_15;
      }
    }

    v9 = *v8;
    v10 = *(v8 + 2);
    if (v9 == 20033 && v10 == 69)
    {
      goto LABEL_17;
    }

LABEL_15:
    v5 += 12;
  }

  while (v5 != v6);
  v5 = this[15];
LABEL_17:
  v12 = (this + 17);
  v13 = *(this + 159);
  if (v13 < 0)
  {
    if (this[18] != 3)
    {
      goto LABEL_26;
    }

    v12 = *v12;
  }

  else if (v13 != 3)
  {
    goto LABEL_26;
  }

  v14 = *v12;
  v15 = *(v12 + 2);
  if (v14 == 20547 && v15 == 85)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "QuasarForceBnnsFallback");
    v19 = kaldi::quasar::UserDefaultsBoolCached(__p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v19)
    {
      v17 = 1;
      goto LABEL_27;
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(__p, "MilShouldUseBnnsFallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 420);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Forced to use BNNS fallback by user default", 43);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    goto LABEL_3;
  }

LABEL_26:
  v17 = 0;
LABEL_27:
  {
    if (v20)
    {
      kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(void)const::isLowEnd = kaldi::quasar::isLowEndDevice(v20);
    }
  }

  v3 = 0;
  v18 = v17 ^ 1;
  if (v5 == v6)
  {
    v18 = 1;
  }

  if (v18 & 1) == 0 && (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(void)const::isLowEnd)
  {
    v3 = *(this + 33) ^ 1;
  }

  return v3 & 1;
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateComputeEngineAllowingFallback(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this))
  {
    kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(this);
  }

  v2 = (this + 136);
  v3 = *(this + 159);
  if (v3 < 0)
  {
    if (*(this + 18) != 3)
    {
      goto LABEL_9;
    }

    v2 = *v2;
  }

  else if (v3 != 3)
  {
LABEL_9:
    operator new();
  }

  v4 = *v2;
  v5 = *(v2 + 2);
  goto LABEL_9;
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::ComputeEngineUpgradeLikelyExists(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if ((kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ".mil");
    v3 = *(this + 63);
    v4 = *(this + 6);
    if ((v3 & 0x80u) == 0)
    {
      v5 = *(this + 63);
    }

    else
    {
      v5 = *(this + 6);
    }

    v6 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = __p[1];
    }

    v9 = v5 >= v7;
    v8 = v5 - v7;
    if (!v9)
    {
      goto LABEL_37;
    }

    if ((v3 & 0x80) != 0)
    {
      if (v7 == -1 || v4 < v8)
      {
LABEL_42:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v4 - v8 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v4 - v8;
      }

      v12 = *(this + 5);
    }

    else
    {
      v9 = v7 != -1 && v3 >= v8;
      if (!v9)
      {
        goto LABEL_42;
      }

      v10 = v3 - v8;
      if (v10 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      v12 = this + 40;
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = memcmp(&v12[v8], v14, v11);
    if (v11 == v7 && v15 == 0)
    {
      memset(v18, 0, sizeof(v18));
      v2 = kaldi::quasar::checkCompiledCacheWithProgramLibrary(this + 5, this + 14, v18);
      v21 = v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
      if ((v20 & 0x80) == 0)
      {
        return v2;
      }

      goto LABEL_38;
    }

LABEL_37:
    v2 = 0;
    if ((v6 & 0x80) == 0)
    {
      return v2;
    }

LABEL_38:
    operator delete(__p[0]);
    return v2;
  }

  return 0;
}

void sub_1C315A0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

kaldi::quasar::EspressoV2Plan *kaldi::quasar::EspressoV2Plan::EspressoV2Plan(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::EspressoV2NetworkConfig *a2, int a3)
{
  *this = &unk_1F42CCBC8;
  kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig((this + 8), a2);
  *(this + 27) = 0;
  *(this + 29) = 0;
  *(this + 28) = this + 232;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  kaldi::quasar::EspressoV2Plan::LoadNetwork(this, this + 48, a3, this + 21, a2 + 23);
  return this;
}

void sub_1C315A1A0(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v3, *v4);
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(v2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::LoadNetwork(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 24);
  if (v10)
  {
    (*(*v10 + 16))(v10, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".mil");
  v11 = *(a2 + 23);
  v12 = *(a2 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = v28;
  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = __p[1];
  }

  v18 = v13 >= v15;
  v16 = v13 - v15;
  if (!v18)
  {
    v17 = 0;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v11 & 0x80) != 0)
  {
    if (v15 == -1 || v12 < v16)
    {
LABEL_48:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v12 - v16 >= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v12 - v16;
    }

    v21 = *a2;
  }

  else
  {
    v18 = v15 != -1 && v11 >= v16;
    if (!v18)
    {
      goto LABEL_48;
    }

    v19 = v11 - v16;
    if (v19 >= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v19;
    }

    v21 = a2;
  }

  if ((v28 & 0x80u) == 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = memcmp((v21 + v16), v24, v20);
  v17 = v20 == v15 && v25 == 0;
  if (v14 < 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

LABEL_12:
  if (v17)
  {
    kaldi::quasar::EspressoV2Plan::LoadNetworkMil(a1, a2, a3, a4, a5);
  }

  else
  {
    kaldi::quasar::EspressoV2Plan::LoadNetworkBundle(a1, a2, a4);
  }

  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))(result, a2);
  }

  return result;
}

void kaldi::quasar::EspressoV2Plan::~EspressoV2Plan(kaldi::quasar::EspressoV2Plan *this)
{
  *this = &unk_1F42CCBC8;
  v2 = (this + 216);
  if (*(this + 27))
  {
    if (e5rt_execution_stream_operation_release())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "~EspressoV2Plan", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 493);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Espresso V2 failure: ", 21);
      v13 = strlen(last_error_message);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, last_error_message, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
      goto LABEL_21;
    }

    *v2 = 0;
  }

  v3 = *(this + 28);
  if (v3 != (this + 232))
  {
    while (!e5rt_execution_stream_operation_release())
    {
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
      if (v5 == (this + 232))
      {
        goto LABEL_12;
      }
    }

    v7 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "~EspressoV2Plan", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 497);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Espresso V2 failure: ", 21);
    v9 = strlen(v7);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
LABEL_21:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

LABEL_12:
  if (*(this + 31))
  {
    if (e5rt_execution_stream_release())
    {
      v15 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "~EspressoV2Plan", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 500);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Espresso V2 failure: ", 21);
      v17 = strlen(v15);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
      goto LABEL_21;
    }

    *(this + 31) = 0;
  }

  if (*(this + 32))
  {
    e5rt_precompiled_compute_op_create_options_release();
    *(this + 32) = 0;
  }

  std::__tree<std::string>::destroy(this + 224, *(this + 29));
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(this + 1);

  kaldi::CuMatrixBase<float>::~CuMatrixBase(this);
}

{
  kaldi::quasar::EspressoV2Plan::~EspressoV2Plan(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::EspressoV2Plan::LoadNetworkMil(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v27 = 0;
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (kaldi::quasar::compileWithProgramLibrary(a2, (a1 + 120), &v27, v10, a5))
  {
    v11 = v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v16 = kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(a1, &v27, a4);
    e5rt_program_library_release();
    if (v16)
    {
      return;
    }

    if (a3)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 536);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not loadable for v2 model: ", 39);
        v17 = *(a2 + 23);
        if (v17 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        if (v17 >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

LABEL_26:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v26);
        return;
      }

      return;
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 543);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Loading not successful, starting forced recompilation for v2 model: ", 68);
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (v19 >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v26);
    }

    v27 = 0;
    if (kaldi::quasar::compileWithProgramLibrary(a2, (a1 + 120), &v27, 1, a5) && v27)
    {
      v22 = kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(a1, &v27, a4);
      e5rt_program_library_release();
      if (v22)
      {
        return;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 558);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Loading not successful for v2 model: ", 37);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, a2);
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 549);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Forced recompilation not successful for v2 model: ", 50);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, a2);
    }

LABEL_40:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (!a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 527);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not successful for v2 model: ", 41);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, a2);
    goto LABEL_40;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26, "LoadNetworkMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 524);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not yet done for v2 model: ", 39);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    goto LABEL_26;
  }
}

void sub_1C315A920(uint64_t a1, ...)
{
  va_start(va, a1);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  JUMPOUT(0x1C315A92CLL);
}

BOOL kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    if (!*a2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 651);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "e5ProgramLibrary != NULL");
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = *a2;
      if (e5rt_program_library_retain_program_function())
      {
        last_error_message = e5rt_get_last_error_message();
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 656);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
        v27 = strlen(last_error_message);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, last_error_message, v27);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "\n");
        goto LABEL_34;
      }

      if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
      {
        v21 = e5rt_get_last_error_message();
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 658);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
        v23 = strlen(v21);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "\n");
        goto LABEL_34;
      }

      e5rt_program_function_release();
      v45[0].__locale_ = v5;
      std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, v5);
      precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 663);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Loaded v2 model function '", 26);
        v11 = *(v5 + 23);
        if (v11 >= 0)
        {
          v12 = v5;
        }

        else
        {
          v12 = *v5;
        }

        if (v11 >= 0)
        {
          v13 = *(v5 + 23);
        }

        else
        {
          v13 = *(v5 + 8);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "', status: ", 11);
        MEMORY[0x1C692A960](v15, precompiled_compute_operation_with_options);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v45);
      }

      if ((precompiled_compute_operation_with_options & 0xFFFFFFFB) == 9)
      {
        return 0;
      }

      if (precompiled_compute_operation_with_options)
      {
        break;
      }

      v5 += 24;
      if (v5 == v6)
      {
        return 1;
      }
    }

    v29 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 675);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
    v31 = strlen(v29);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v29, v31);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v32, "\n");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  if (!*(a1 + 256))
  {
    if (!*a2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 629);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "e5ProgramLibrary != NULL");
      goto LABEL_34;
    }

    if (e5rt_program_library_retain_program_function())
    {
      v33 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 631);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
      v35 = strlen(v33);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v33, v35);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v36, "\n");
      goto LABEL_34;
    }

    if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
    {
      v37 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 633);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
      v39 = strlen(v37);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v37, v39);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, "\n");
      goto LABEL_34;
    }

    e5rt_program_function_release();
    v16 = *(a1 + 256);
  }

  v17 = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 638);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Loaded v2 model, status: ", 25);
    MEMORY[0x1C692A960](v18, v17);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v45);
  }

  if (v17 > 0xD || ((1 << v17) & 0x2201) == 0)
  {
    v41 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "LoadNetworkWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 646);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Espresso V2 failure: ", 21);
    v43 = strlen(v41);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v41, v43);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, "\n");
    goto LABEL_34;
  }

  return (v17 & 0xFFFFFFFB) != 9;
}

void kaldi::quasar::EspressoV2Plan::LoadNetworkBundle(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "main");
    v29 = a1 + 216;
    std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__assign_with_size[abi:ne200100]<std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*>(&v24, &__p, v30, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = v25;
  }

  else
  {
    do
    {
      v27 = v5;
      v7 = std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, v5) + 56;
      __p.__r_.__value_.__r.__words[0] = v7;
      v8 = v25;
      if (v25 >= v26)
      {
        v10 = std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__emplace_back_slow_path<std::string const&,e5rt_execution_stream_operation **>(&v24, v5, &__p);
      }

      else
      {
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v25, *v5, *(v5 + 1));
          v7 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v9 = *v5;
          v25->__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        v8[1].__r_.__value_.__r.__words[0] = v7;
        v10 = (v8 + 32);
      }

      v25 = v10;
      v5 = (v5 + 24);
    }

    while (v5 != v6);
  }

  for (i = v24; i != v10; i = (i + 32))
  {
    data = i[1].__r_.__value_.__l.__data_;
    if ((i->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(i->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = i->__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&__p, size + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((i->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = i;
      }

      else
      {
        v15 = i->__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v15, size);
    }

    strcpy(p_p + size, " esop");
    if (*(a2 + 23) < 0)
    {
      v16 = *a2;
    }

    if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = i->__r_.__value_.__r.__words[0];
    }

    precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (precompiled_compute_operation)
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "LoadNetworkBundle", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 583);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v22 = strlen(last_error_message);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, last_error_message, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v24;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v19 = *MEMORY[0x1E69E9840];
}