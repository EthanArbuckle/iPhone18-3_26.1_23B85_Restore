double sentencepiece::SentencePieceProcessor::SentencePieceProcessor(sentencepiece::SentencePieceProcessor *this)
{
  *this = &unk_2877037D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

void sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(void **this)
{
  *this = &unk_2877037D0;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[11];
  this[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  v4 = this[5];
  if (v4)
  {
    this[6] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = this[2];
  this[2] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = this[1];
  this[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

{
  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(this);

  JUMPOUT(0x26675B300);
}

uint64_t sentencepiece::IsMMappableFile()
{
  v4[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x277D82808];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x26675B080](v3);
  std::istream::~istream();
  MEMORY[0x26675B290](v4);
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26564B994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x277D82808]);
  MEMORY[0x26675B290](&a63);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x26675B070](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26564BB50(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x26675B290](v1);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::Load(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sentencepiece::IsMMappableFile())
  {
    absl::make_unique<sentencepiece::ModelProto>();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_26564BC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::io::LoadModelProto@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sentencepiece::filesystem::NewReadableFile();
  }

  return sentencepiece::util::Status::Status(a2, 5, "model file path should not be empty.", 36);
}

void sub_26564C0C0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::ModelProto **std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](sentencepiece::ModelProto **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sentencepiece::ModelProto::~ModelProto(v2);
    MEMORY[0x26675B300]();
  }

  return a1;
}

void sentencepiece::SentencePieceProcessor::LoadOrDie(uint64_t a1)
{
  (*(*a1 + 16))(&v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    v11 = 1;
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "(", 1);
    v3 = MEMORY[0x26675B160](v2, 239);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") [", 3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "_status.ok()", 12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "] ", 2);
    sentencepiece::util::Status::ToString(&v12, __p);
    if ((v10 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    sentencepiece::error::Die::~Die(&v11);
  }

  sentencepiece::util::Status::~Status(&v12);
}

void sub_26564C290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::error::Die::~Die((v15 - 25));
  sentencepiece::util::Status::~Status((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_26564C35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, sentencepiece::ModelProto *a9, sentencepiece::ModelProto *a10)
{
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Load(sentencepiece::logging *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  if (v5[80] == 1)
  {
    if (sentencepiece::logging::GetMinLogLevel(a1) <= 0)
    {
      LOBYTE(v24.__first_) = 0;
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
      v8 = MEMORY[0x26675B160](v7, 260);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "INFO", 4);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Enable Apple addition for backward compatibility", 48);
      sentencepiece::error::Die::~Die(&v24);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v13 = *(v4 + 80);
    if (!v13)
    {
      v14 = *(v4 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v14);
      *(v4 + 80) = v13;
      v4 = *a2;
    }

    *(v13 + 40) |= 0x4000u;
    *(v13 + 245) = 1;
    *(v4 + 48) |= 2u;
    v15 = *(v4 + 88);
    if (!v15)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v16);
      *(v4 + 88) = v15;
      v4 = *a2;
    }

    *(v15 + 48) |= 0x10u;
    *(v15 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v17 = v4 + 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 4);
  *(a1 + 4) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v17 = *(a1 + 4);
  }

  sentencepiece::ModelFactory::Create((v17 - 16), &v24);
  first = v24.__first_;
  v24.__first_ = 0;
  v20 = *(a1 + 1);
  *(a1 + 1) = first;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v21 = v24.__first_;
    v24.__first_ = 0;
    if (v21)
    {
      (*(v21->__r_.__value_.__r.__words[0] + 8))(v21);
    }
  }

  if (*(v17 + 72))
  {
    v22 = *(v17 + 72);
  }

  if (*(v17 + 64))
  {
    v23 = *(v17 + 64);
  }

  absl::make_unique<sentencepiece::normalizer::Normalizer,sentencepiece::NormalizerSpec const&,sentencepiece::TrainerSpec const&>();
}

void absl::StrCat<char [2],std::string,char [2],std::string>(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  v12 = strlen(a3);
  absl::StrCat<std::string,char [2],std::string>(a3, v12, a4, a5, a6, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a7 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26564D1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sentencepiece::SentencePieceProcessor::ParseExtraOptions(sentencepiece::ModelInterface **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  v45[19] = *MEMORY[0x277D85DE8];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 11))(a1);
    if (!*a5)
    {
      sentencepiece::util::Status::~Status(a5);
      {
        v41[3] = xmmword_279B9ADB8;
        *__p = unk_279B9ADC8;
        v43 = xmmword_279B9ADD8;
        v44 = 3;
        v40 = xmmword_279B9AD78;
        v41[0] = unk_279B9AD88;
        v41[1] = xmmword_279B9AD98;
        v41[2] = *&off_279B9ADA8;
        std::map<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>::map[abi:ne200100](&sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, &v40, 5);
        __cxa_atexit(std::map<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>::~map[abi:ne200100], &sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, &dword_26563A000);
      }

      absl::internal::Splitter::Splitter(&v38, a2, a3, ":", 1, 0);
      v10 = v38;
      v11 = v39;
      if (v38 == v39)
      {
LABEL_24:
        if (v10)
        {
          v39 = v10;
          operator delete(v10);
        }

        sentencepiece::util::Status::Status(a5);
      }

      else
      {
        while (1)
        {
          v12 = std::__tree<std::string_view>::find<std::string_view>(&sentencepiece::SentencePieceProcessor::ParseExtraOptions(std::string_view,std::vector<sentencepiece::SentencePieceProcessor::ExtraOption> *)const::extra_option_map, v10);
          v13 = v12;
          if (v12 == &unk_28001ABA8)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sentencepiece::ModelInterface::bos_piece(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 63))(a1, v26, v27);
            if ((*(*a1 + 66))(a1, v28))
            {
              LODWORD(v40) = 13;
              std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
              MEMORY[0x26675B160](&v40 + 8, 1135);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
              v33 = sentencepiece::ModelInterface::bos_piece(a1[1]);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, v33, v34);
              sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sentencepiece::ModelInterface::eos_piece(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 63))(a1, v29, v30);
            if ((*(*a1 + 66))(a1, v31))
            {
              LODWORD(v40) = 13;
              std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
              MEMORY[0x26675B160](&v40 + 8, 1140);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
              v35 = sentencepiece::ModelInterface::eos_piece(a1[1]);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, v35, v36);
              sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
LABEL_35:
              *(&v40 + 1) = *MEMORY[0x277D82828];
              *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
              *&v41[0] = MEMORY[0x277D82878] + 16;
              if (SBYTE7(v43) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v38;
            goto LABEL_24;
          }
        }

        LODWORD(v40) = 13;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v40 + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "(", 1);
        MEMORY[0x26675B160](&v40 + 8, 1129);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "it != extra_option_map.end()", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, "option ", 8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, *v10, v10[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40 + 1, " is not available.", 19);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v40, a5);
        *(&v40 + 1) = *MEMORY[0x277D82828];
        *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
        *&v41[0] = MEMORY[0x277D82878] + 16;
        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v41[0] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v41 + 1);
        std::ostream::~ostream();
        MEMORY[0x26675B290](v45);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }

    v37 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v32 = *MEMORY[0x277D85DE8];

    sentencepiece::util::Status::Status(a5);
  }
}

void *sentencepiece::SentencePieceProcessor::status@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 2))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sentencepiece::util::Status::~Status(a2);
        result = (*(**(this + 2) + 24))(*(this + 2));
        if (!*a2)
        {
          sentencepiece::util::Status::~Status(a2);

          return sentencepiece::util::Status::Status(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26675B160](&v10, 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "normalizer_", 11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Normalizer is not initialized.", 30);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26675B160](&v10, 319);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "model_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Model is not initialized.", 25);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x26675B290](&v14);
}

void sentencepiece::SentencePieceProcessor::SetVocabulary(void *a1@<X0>, uint64_t *a2@<X1>, sentencepiece::util::Status *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sentencepiece::util::Status::~Status(a3);
  v6 = a1[4];
  {
    LODWORD(v23) = 13;
    v20 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
    MEMORY[0x26675B160](&v24, 331);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a3);
LABEL_26:
    v24 = *MEMORY[0x277D82828];
    *(&v24 + *(v24 - 3)) = *(MEMORY[0x277D82828] + 24);
    v25 = MEMORY[0x277D82878] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v26);
    std::ostream::~ostream();
    MEMORY[0x26675B290](&v28);
    return;
  }

  v9 = v8;
  v10 = &sentencepiece::_TrainerSpec_default_instance_;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
    MEMORY[0x26675B160](&v24, 336);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a3);
    goto LABEL_26;
  }

  std::set<std::string_view>::set[abi:ne200100]<std::__wrap_iter<std::string_view const*>>(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>((v9 + 7), v11);
      v13 = v12;
      if ((*(v12 + 60) - 2) >= 3)
      {
        v14 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v14 + 23);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = *((*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v22[0] = v14;
        v22[1] = v15;
        if (&v24 == std::__tree<std::string_view>::find<std::string_view>(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_2656C45A0[*v18 >> 4]))
        {
          if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(1))
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        *(v13 + 40) |= 4u;
        *(v13 + 60) = v19;
      }

      ++v11;
    }

    while (v11 < *(v9 + 16));
  }

  sentencepiece::util::Status::Status(a3);
  std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(&v23, v24);
}

void *sentencepiece::SentencePieceProcessor::ResetVocabulary@<X0>(char ***this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  result = ((*this)[11])(this);
  if (!*a2)
  {
    sentencepiece::util::Status::~Status(a2);
    v5 = this[4];
    {
      v8 = *(v7 + 9);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[16];
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          v12 = *v9;
          if (*(*v9 + 60) == 5)
          {
            if (!sentencepiece::ModelProto_SentencePiece_Type_IsValid(1))
            {
              sentencepiece::SentencePieceProcessor::ResetVocabulary();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sentencepiece::util::Status::Status(a2);
    }

    else
    {
      v14 = 13;
      v13 = std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(", 1);
      MEMORY[0x26675B160](&v15, 365);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v14, a2);
      v15 = *MEMORY[0x277D82828];
      *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
      v16 = MEMORY[0x277D82878] + 16;
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      v16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v17);
      std::ostream::~ostream();
      return MEMORY[0x26675B290](&v19);
    }
  }

  return result;
}

void sub_26564EC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v10 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL absl::SimpleAtoi<int>(const char *a1, uint64_t a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v5 = strlen(a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x26675B0C0](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x26675B290](&v16);
  return v7;
}

void sub_26564EEE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x26675B290](v2 + 128);
  _Unwind_Resume(a1);
}

void *sentencepiece::anonymous namespace::ToPieceArray@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = std::vector<std::string_view>::vector[abi:ne200100](a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      std::vector<std::string>::clear[abi:ne200100](a4);
      sentencepiece::SentencePieceText::SentencePieceText(&v15, 0);
      (*(*a1 + 232))(a1, a2, a3, &v15);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v20)
        {
          v10 = v20 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v19)
        {
          v11 = *(a4 + 8);
          v12 = 8 * v19;
          do
          {
            v13 = *(*v10 + 48);
            if (v11 >= *(a4 + 16))
            {
              v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
              ++v11;
            }

            *(a4 + 8) = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v15);
    }

    else
    {
      v15 = 13;
      v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "(", 1);
      MEMORY[0x26675B160](&v16, 415);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, a5);
      v16 = *MEMORY[0x277D82828];
      *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
      v17 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v17 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v18);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v23);
    }
  }
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      a4[1] = *a4;
      sentencepiece::SentencePieceText::SentencePieceText(&v23, 0);
      (*(*a1 + 232))(a1, a2, a3, &v23);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v28)
        {
          v10 = v28 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v27)
        {
          v11 = a4[1];
          v12 = 8 * v27;
          do
          {
            v13 = *(*v10 + 64);
            v14 = a4[2];
            if (v11 >= v14)
            {
              v15 = *a4;
              v16 = v11 - *a4;
              v17 = v16 >> 2;
              v18 = (v16 >> 2) + 1;
              if (v18 >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v19 = v14 - v15;
              if (v19 >> 1 > v18)
              {
                v18 = v19 >> 1;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v20 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v18;
              }

              if (v20)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v20);
              }

              *(4 * v17) = v13;
              v11 = (4 * v17 + 4);
              memcpy(0, v15, v16);
              v21 = *a4;
              *a4 = 0;
              a4[1] = v11;
              a4[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *v11++ = v13;
            }

            a4[1] = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v23);
    }

    else
    {
      v23 = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
      MEMORY[0x26675B160](&v24, 428);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v23, a5);
      v24 = *MEMORY[0x277D82828];
      *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
      v25 = MEMORY[0x277D82878] + 16;
      if (v30 < 0)
      {
        operator delete(__p);
      }

      v25 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v26);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v31);
    }
  }
}

void sub_26564F654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

{
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_26564F70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 272))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x26675B160](&v10, 447);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v14);
    }
  }
}

{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 280))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      v9 = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x26675B160](&v10, 458);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x277D82828];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
      v11 = MEMORY[0x277D82878] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v14);
    }
  }
}

void sentencepiece::SentencePieceProcessor::NBestEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      v12 = *a5;
      v13 = a5[1];
      while (v13 != v12)
      {
        v13 -= 3;
        v30 = v13;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      }

      a5[1] = v12;
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v30, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v30);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v34)
        {
          v14 = (v34 + 8);
        }

        else
        {
          v14 = 0;
        }

        if (LODWORD(v33.__locale_))
        {
          v15 = &v14[SLODWORD(v33.__locale_)];
          do
          {
            v16 = *v14;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v17 = *(v16 + 64);
            if (v17)
            {
              v18 = v17 + 8;
            }

            else
            {
              v18 = 0;
            }

            v19 = *(v16 + 56);
            if (v19)
            {
              v20 = 0;
              v21 = 8 * v19;
              do
              {
                v22 = *(*v18 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v20 >= v29)
                {
                  v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v27, v22);
                }

                else
                {
                  if (*(v22 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(v20, *v22, *(v22 + 8));
                  }

                  else
                  {
                    v23 = *v22;
                    v20->__r_.__value_.__r.__words[2] = *(v22 + 16);
                    *&v20->__r_.__value_.__l.__data_ = v23;
                  }

                  ++v20;
                }

                v28 = v20;
                v18 += 8;
                v21 -= 8;
              }

              while (v21);
            }

            v24 = a5[1];
            if (v24 >= a5[2])
            {
              v25 = std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string>&>(a5, &v27);
            }

            else
            {
              std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&>(a5, &v27);
              v25 = (v24 + 3);
            }

            a5[1] = v25;
            v38 = &v27;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
            ++v14;
          }

          while (v14 != v15);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v30);
    }

    else
    {
      LODWORD(v30) = 13;
      v26 = std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "(", 1);
      MEMORY[0x26675B160](&v31, 470);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v30, a6);
      v31 = *MEMORY[0x277D82828];
      *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
      v32 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v32 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v33);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v37);
    }
  }
}

void sub_2656500A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::NBestEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      std::vector<std::vector<int>>::clear[abi:ne200100](a5);
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v37, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v37);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v41)
        {
          v12 = (v41 + 8);
        }

        else
        {
          v12 = 0;
        }

        if (LODWORD(v40.__locale_))
        {
          v33 = &v12[SLODWORD(v40.__locale_)];
          do
          {
            v13 = *v12;
            __src = 0;
            v35 = 0;
            v36 = 0;
            v14 = *(v13 + 64);
            if (v14)
            {
              v15 = v14 + 8;
            }

            else
            {
              v15 = 0;
            }

            v16 = *(v13 + 56);
            if (v16)
            {
              v17 = 0;
              v18 = 8 * v16;
              do
              {
                v19 = *(*v15 + 64);
                if (v17 >= v36)
                {
                  v20 = __src;
                  v21 = v17 - __src;
                  v22 = (v17 - __src) >> 2;
                  v23 = v22 + 1;
                  if ((v22 + 1) >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v24 = v36 - __src;
                  if ((v36 - __src) >> 1 > v23)
                  {
                    v23 = v24 >> 1;
                  }

                  if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v25 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v25 = v23;
                  }

                  if (v25)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v25);
                  }

                  v26 = (v17 - __src) >> 2;
                  v27 = (4 * v22);
                  v28 = (4 * v22 - 4 * v26);
                  *v27 = v19;
                  v17 = (v27 + 1);
                  memcpy(v28, v20, v21);
                  v29 = __src;
                  __src = v28;
                  v35 = v17;
                  v36 = 0;
                  if (v29)
                  {
                    operator delete(v29);
                  }
                }

                else
                {
                  *v17 = v19;
                  v17 += 4;
                }

                v35 = v17;
                v15 += 8;
                v18 -= 8;
              }

              while (v18);
            }

            v30 = a5[1];
            if (v30 >= a5[2])
            {
              v31 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(a5, &__src);
            }

            else
            {
              std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(a5, &__src);
              v31 = v30 + 24;
            }

            a5[1] = v31;
            if (__src)
            {
              v35 = __src;
              operator delete(__src);
            }

            ++v12;
          }

          while (v12 != v33);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v37);
    }

    else
    {
      v37 = 13;
      v32 = std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "(", 1);
      MEMORY[0x26675B160](&v38, 488);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v37, a6);
      v38 = *MEMORY[0x277D82828];
      *(&v38 + *(v38 - 24)) = *(MEMORY[0x277D82828] + 24);
      v39 = MEMORY[0x277D82878] + 16;
      if (v43 < 0)
      {
        operator delete(__p);
      }

      v39 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v40);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v44);
    }
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sentencepiece::SentencePieceProcessor::SampleEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, sentencepiece::util::Status *a6@<X8>, float a7@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      std::vector<std::string>::clear[abi:ne200100](a5);
      sentencepiece::SentencePieceText::SentencePieceText(&v19, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v19, a7);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v24)
        {
          v14 = v24 + 8;
        }

        else
        {
          v14 = 0;
        }

        if (v23)
        {
          v15 = *(a5 + 8);
          v16 = 8 * v23;
          do
          {
            v17 = *(*v14 + 48);
            if (v15 >= *(a5 + 16))
            {
              v15 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a5, (v17 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a5, (v17 & 0xFFFFFFFFFFFFFFFELL));
              ++v15;
            }

            *(a5 + 8) = v15;
            v14 += 8;
            v16 -= 8;
          }

          while (v16);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v19);
    }

    else
    {
      v19 = 13;
      v18 = std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "(", 1);
      MEMORY[0x26675B160](&v20, 506);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v19, a6);
      v20 = *MEMORY[0x277D82828];
      *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
      v21 = MEMORY[0x277D82878] + 16;
      if (v26 < 0)
      {
        operator delete(__p);
      }

      v21 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v22);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v27);
    }
  }
}

void sentencepiece::SentencePieceProcessor::SampleEncode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, sentencepiece::util::Status *a6@<X8>, float a7@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sentencepiece::util::Status::~Status(a6);
    if (a5)
    {
      a5[1] = *a5;
      sentencepiece::SentencePieceText::SentencePieceText(&v27, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v27, a7);
      if (!*a6)
      {
        sentencepiece::util::Status::~Status(a6);
        if (v32)
        {
          v14 = v32 + 8;
        }

        else
        {
          v14 = 0;
        }

        if (v31)
        {
          v15 = a5[1];
          v16 = 8 * v31;
          do
          {
            v17 = *(*v14 + 64);
            v18 = a5[2];
            if (v15 >= v18)
            {
              v19 = *a5;
              v20 = v15 - *a5;
              v21 = v20 >> 2;
              v22 = (v20 >> 2) + 1;
              if (v22 >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v23 = v18 - v19;
              if (v23 >> 1 > v22)
              {
                v22 = v23 >> 1;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v24 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v24);
              }

              *(4 * v21) = v17;
              v15 = (4 * v21 + 4);
              memcpy(0, v19, v20);
              v25 = *a5;
              *a5 = 0;
              a5[1] = v15;
              a5[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v15++ = v17;
            }

            a5[1] = v15;
            v14 += 8;
            v16 -= 8;
          }

          while (v16);
        }

        sentencepiece::util::Status::Status(a6);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v27);
    }

    else
    {
      v27 = 13;
      v26 = std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "(", 1);
      MEMORY[0x26675B160](&v28, 520);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v27, a6);
      v28 = *MEMORY[0x277D82828];
      *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
      v29 = MEMORY[0x277D82878] + 16;
      if (v34 < 0)
      {
        operator delete(__p);
      }

      v29 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v30);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v35);
    }
  }
}

void sub_265650C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScore(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, sentencepiece::util::Status *a8@<X8>, float a9@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sentencepiece::util::Status::~Status(a8);
    if (a7)
    {
      v18 = *a7;
      v19 = a7[1];
      while (v19 != v18)
      {
        v19 -= 4;
        v36 = v19;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
      }

      a7[1] = v18;
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v36, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v36, a9);
      if (!*a8)
      {
        sentencepiece::util::Status::~Status(a8);
        v20 = *a7;
        v21 = a7[1];
        while (v21 != v20)
        {
          v21 = (v21 - 32);
          v35.__begin_ = v21;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
        }

        a7[1] = &v20->__r_.__value_.__l.__data_;
        std::vector<std::pair<std::vector<std::string>,float>>::reserve(a7, SLODWORD(v39.__locale_));
        if (v40)
        {
          v23 = (v40 + 8);
        }

        else
        {
          v23 = 0;
        }

        if (LODWORD(v39.__locale_))
        {
          v24 = &v23[SLODWORD(v39.__locale_)];
          do
          {
            v25 = *v23;
            memset(&v35, 0, sizeof(v35));
            std::vector<std::string>::reserve(&v35, *(v25 + 56));
            v26 = *(v25 + 64);
            if (v26)
            {
              v27 = v26 + 8;
            }

            else
            {
              v27 = 0;
            }

            v28 = *(v25 + 56);
            if (v28)
            {
              end = v35.__end_;
              v30 = 8 * v28;
              do
              {
                v31 = *(*v27 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (end >= v35.__end_cap_.__value_)
                {
                  end = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v35, v31);
                }

                else
                {
                  if (*(v31 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(end, *v31, *(v31 + 8));
                  }

                  else
                  {
                    v32 = *v31;
                    end->__r_.__value_.__r.__words[2] = *(v31 + 16);
                    *&end->__r_.__value_.__l.__data_ = v32;
                  }

                  ++end;
                }

                v35.__end_ = end;
                v27 += 8;
                v30 -= 8;
              }

              while (v30);
            }

            LODWORD(v44[0]) = *(v25 + 80);
            v33 = a7[1];
            if (v33 >= a7[2])
            {
              v34 = std::vector<std::pair<std::vector<std::string>,float>>::__emplace_back_slow_path<std::vector<std::string>&,float>(a7, &v35, v44);
            }

            else
            {
              std::vector<std::pair<std::vector<std::string>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&,float>(a7, &v35, v44);
              v34 = (v33 + 4);
            }

            a7[1] = v34;
            v44[0] = &v35;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            ++v23;
          }

          while (v23 != v24);
        }

        sentencepiece::util::Status::Status(a8);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v36);
    }

    else
    {
      LODWORD(v36) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "(", 1);
      MEMORY[0x26675B160](&v37, 535);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v36, a8);
      v37 = *MEMORY[0x277D82828];
      *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82828] + 24);
      v38 = MEMORY[0x277D82878] + 16;
      if (v42 < 0)
      {
        operator delete(__p);
      }

      v38 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v39);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v43);
    }
  }
}

void sub_2656510F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::vector<std::string>,float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScore(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, sentencepiece::util::Status *a8@<X8>, float a9@<S0>)
{
  (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sentencepiece::util::Status::~Status(a8);
    if (a7)
    {
      std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](a7);
      sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&v43, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v43, a9);
      if (!*a8)
      {
        v39 = a8;
        sentencepiece::util::Status::~Status(a8);
        std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::clear[abi:ne200100](a7);
        std::vector<std::pair<std::vector<int>,float>>::reserve(a7, SLODWORD(v46.__locale_));
        if (v47)
        {
          v18 = (v47 + 8);
        }

        else
        {
          v18 = 0;
        }

        if (LODWORD(v46.__locale_))
        {
          v40 = &v18[SLODWORD(v46.__locale_)];
          do
          {
            v19 = *v18;
            memset(&v42, 0, sizeof(v42));
            std::vector<int>::reserve(&v42, *(v19 + 56));
            v20 = *(v19 + 64);
            if (v20)
            {
              v21 = v20 + 8;
            }

            else
            {
              v21 = 0;
            }

            v22 = *(v19 + 56);
            if (v22)
            {
              end = v42.__end_;
              v24 = 8 * v22;
              do
              {
                v25 = *(*v21 + 64);
                if (end >= v42.__end_cap_.__value_)
                {
                  begin = v42.__begin_;
                  v27 = end - v42.__begin_;
                  v28 = end - v42.__begin_;
                  v29 = v28 + 1;
                  if ((v28 + 1) >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v30 = v42.__end_cap_.__value_ - v42.__begin_;
                  if ((v42.__end_cap_.__value_ - v42.__begin_) >> 1 > v29)
                  {
                    v29 = v30 >> 1;
                  }

                  if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v31 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v31 = v29;
                  }

                  if (v31)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v42, v31);
                  }

                  v32 = v28;
                  v33 = (4 * v28);
                  v34 = &v33[-v32];
                  *v33 = v25;
                  end = v33 + 1;
                  memcpy(v34, begin, v27);
                  v35 = v42.__begin_;
                  v42.__begin_ = v34;
                  v42.__end_ = end;
                  v42.__end_cap_.__value_ = 0;
                  if (v35)
                  {
                    operator delete(v35);
                  }
                }

                else
                {
                  *end++ = v25;
                }

                v42.__end_ = end;
                v21 += 8;
                v24 -= 8;
              }

              while (v24);
            }

            v41 = *(v19 + 80);
            v36 = a7[1];
            if (v36 >= a7[2])
            {
              v37 = std::vector<std::pair<std::vector<int>,float>>::__emplace_back_slow_path<std::vector<int>&,float>(a7, &v42, &v41);
            }

            else
            {
              std::vector<std::pair<std::vector<int>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&,float>(a7, &v42, &v41);
              v37 = (v36 + 32);
            }

            a7[1] = v37;
            if (v42.__begin_)
            {
              v42.__end_ = v42.__begin_;
              operator delete(v42.__begin_);
            }

            ++v18;
          }

          while (v18 != v40);
        }

        sentencepiece::util::Status::Status(v39);
      }

      sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(&v43);
    }

    else
    {
      v43 = 13;
      v38 = std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "(", 1);
      MEMORY[0x26675B160](&v44, 560);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v43, a8);
      v44 = *MEMORY[0x277D82828];
      *(&v44 + *(v44 - 24)) = *(MEMORY[0x277D82828] + 24);
      v45 = MEMORY[0x277D82878] + 16;
      if (v49 < 0)
      {
        operator delete(__p);
      }

      v45 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v46);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v50);
    }
  }
}

void *std::vector<std::pair<std::vector<int>,float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<int>,float>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *sentencepiece::SentencePieceProcessor::PopulateSentencePieceText@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, unsigned __int8 ***a6@<X6>, uint64_t a7@<X7>, sentencepiece::util::Status *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v10[1];
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 591);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "!w.empty()", 10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "Empty piece is not allowed.", 27);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 4);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            std::string::basic_string[abi:ne200100](__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::internal::ArenaStringPtr::Set((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        google::protobuf::RepeatedPtrField<std::string>::Reserve((a7 + 48), v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 605);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 606);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(end) < (norm_to_orig.size())", 29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 609);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_begin) <= (input.size())", 30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 610);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_end) <= (input.size())", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
        MEMORY[0x26675B160](&__p[1], 611);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(orig_begin) <= (orig_end)", 26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                google::protobuf::RepeatedPtrField<std::string>::Reserve((a7 + 48), v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sentencepiece::ByteToPiece(v27, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            std::string::basic_string[abi:ne200100](__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::internal::ArenaStringPtr::Set((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              std::string::basic_string[abi:ne200100](__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::internal::ArenaStringPtr::Set((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            std::string::__throw_length_error[abi:ne200100]();
          }

          *v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = *v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((*v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (*v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          google::protobuf::RepeatedPtrField<std::string>::Reserve((a7 + 48), v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      std::string::basic_string[abi:ne200100](__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      std::string::basic_string[abi:ne200100](__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 3;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sentencepiece::SentencePieceProcessor::ApplyExtraOptions(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sentencepiece::util::Status::~Status(a8);
      *(a7 + 40) |= 1u;
      std::string::basic_string[abi:ne200100](__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sentencepiece::util::Status::Status(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(", 1);
  MEMORY[0x26675B160](&__p[1], 662);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "(consumed) == (normalized.size())", 33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[1], "all normalized characters are not consumed.", 43);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x277D82828];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x277D82828] + 24);
  v97 = MEMORY[0x277D82878] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x26675B290](&v100);
}

void sub_26565254C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::SentencePieceProcessor::ApplyExtraOptions@<X0>(sentencepiece::ModelInterface **a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sentencepiece::util::Status::Status(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 1);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 1);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sentencepiece::SentencePieceText_SentencePiece::InternalSwap(v25, v26);
            }

            else
            {
              google::protobuf::internal::GenericSwap(v25, v26, a3);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sentencepiece::util::Status::Status(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        google::protobuf::RepeatedPtrField<std::string>::Reserve((a3 + 48), v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v56, &v47->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sentencepiece::ModelInterface::bos_piece(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 63))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sentencepiece::ModelInterface::bos_piece(a1[1]);
    sentencepiece::ModelInterface::bos_piece(a1[1]);
    *(v48 + 40) |= 1u;
    std::string::basic_string[abi:ne200100](__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sentencepiece::util::Status::Status(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sentencepiece::ModelInterface::eos_piece(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 63))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sentencepiece::ModelInterface::eos_piece(a1[1]);
        sentencepiece::ModelInterface::eos_piece(a1[1]);
        *(v33 + 40) |= 1u;
        std::string::basic_string[abi:ne200100](__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    google::protobuf::RepeatedPtrField<std::string>::Reserve((a3 + 48), v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a3 + 48, v14);
        if ((*(*a1 + 66))(a1, *(v15 + 64)))
        {
          v16 = sentencepiece::ModelInterface::unk_piece(a1[1]);
          sentencepiece::ModelInterface::unk_piece(a1[1]);
          *(v15 + 40) |= 1u;
          std::string::basic_string[abi:ne200100](__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sentencepiece::util::Status::Status(a4, 13, "unknown extra_option type.", 26);
}

void sentencepiece::SentencePieceProcessor::Encode(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, sentencepiece::SentencePieceText *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      sentencepiece::SentencePieceText::Clear(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          sentencepiece::util::Status::~Status(a5);
          sentencepiece::util::Status::Status(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "(", 1);
      MEMORY[0x26675B160](&v18, 674);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "spt", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "output proto is null", 20);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v17, a5);
      v18 = *MEMORY[0x277D82828];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
      v19 = MEMORY[0x277D82878] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x26675B290](&v22);
    }
  }
}

void sub_265652E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::NBestEncode(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, sentencepiece::util::Status *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sentencepiece::util::Status::~Status(a5);
  if (a4)
  {
    sentencepiece::NBestSentencePieceText::Clear(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sentencepiece::util::Status::~Status(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                google::protobuf::RepeatedPtrField<std::string>::Reserve((a4 + 16), v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sentencepiece::util::Status::~Status(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sentencepiece::util::Status::Status(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "(", 1);
        MEMORY[0x26675B160](&v30, 700);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "!nbests.empty()", 15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "NBestEncode returns empty result.", 33);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x26675B290](v35);
LABEL_29:
        v29 = &v21;
        std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "(", 1);
        MEMORY[0x26675B160](&v30, 696);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "model_->IsNBestEncodeAvailable()", 32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "NBestEncode is not available for the current model.", 51);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x26675B290](v35);
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "(", 1);
    MEMORY[0x26675B160](&v30, 690);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "nbest_spt", 9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "output proto is null", 20);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v29, a5);
    v30 = *MEMORY[0x277D82828];
    *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
    v31 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::ostream::~ostream();
    MEMORY[0x26675B290](v35);
  }
}

void sub_265653688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncode(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, int a4@<W3>, sentencepiece::SentencePieceText *a5@<X4>, sentencepiece::util::Status *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sentencepiece::util::Status::~Status(a6);
  if (a5)
  {
    sentencepiece::SentencePieceText::Clear(a5);
    if (a4 < 513)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      __p = 0;
      v34 = 0;
      v35 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v36, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v36);
        }

        return;
      }

      sentencepiece::util::Status::~Status(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if (a4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v31);
          if (v31 == v32)
          {
            LODWORD(v39) = 13;
            std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(", 1);
            MEMORY[0x26675B160](&v40, 735);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ") [", 3);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "!nbests.empty()", 15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "] ", 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "NBestEncode returns empty result.", 33);
            sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v39, a6);
            sentencepiece::util::StatusBuilder::~StatusBuilder(&v39);
          }

          else
          {
            LODWORD(v29) = 0;
            v19 = std::vector<float>::vector[abi:ne200100](&v39, (v32 - v31) >> 5);
            if (v32 != v31)
            {
              v20 = v39;
              if (((v32 - v31) >> 5) <= 1)
              {
                v21 = 1;
              }

              else
              {
                v21 = (v32 - v31) >> 5;
              }

              v22 = (v31 + 24);
              do
              {
                v23 = *v22;
                v22 += 8;
                *v20++ = expf(v23 * a7);
                --v21;
              }

              while (v21);
            }

            RandomGenerator = sentencepiece::random::GetRandomGenerator(v19);
            std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(&v29, v39, v40);
            v25 = HIBYTE(v38);
            v26 = v37;
            v27 = std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v29, RandomGenerator, &v29);
            if ((v25 & 0x80u) == 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = v26;
            }

            sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v28, &__p, (v31 + 32 * v27), a5, a6);
            if (!*a6)
            {
              sentencepiece::util::Status::~Status(a6);
              if (v29)
              {
                v30 = v29;
                operator delete(v29);
              }

              if (v39)
              {
                v40 = v39;
                operator delete(v39);
              }

              v39 = &v31;
              std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v39);
LABEL_55:
              sentencepiece::util::Status::Status(a6);
              goto LABEL_5;
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }

            if (v39)
            {
              v40 = v39;
              operator delete(v39);
            }
          }

          v39 = &v31;
          std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v39);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v39);
        if (v38 >= 0)
        {
          v18 = HIBYTE(v38);
        }

        else
        {
          v18 = v37;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v39) = 13;
          std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(", 1);
          MEMORY[0x26675B160](&v40, 724);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ") [", 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "model_->IsSampleEncodeAvailable()", 33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "] ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "SampleEncode is not available for the current model.", 52);
          sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v39, a6);
          sentencepiece::util::StatusBuilder::~StatusBuilder(&v39);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v39, a7);
        if (v38 >= 0)
        {
          v18 = HIBYTE(v38);
        }

        else
        {
          v18 = v37;
        }
      }

      sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v18, &__p, &v39, a5, a6);
      if (*a6)
      {
        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        goto LABEL_5;
      }

      sentencepiece::util::Status::~Status(a6);
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      goto LABEL_55;
    }

    LODWORD(v39) = 13;
    v15 = std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(", 1);
    MEMORY[0x26675B160](&v40, 717);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(nbest_size) <= (512)", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "nbest_size must be nbest_size <= 512", 36);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v39, a6);
  }

  else
  {
    LODWORD(v39) = 13;
    v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(", 1);
    MEMORY[0x26675B160](&v40, 715);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "spt", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "output proto is null", 20);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v39, a6);
  }

  v40 = *MEMORY[0x277D82828];
  *(&v40 + *(v40 - 3)) = *(MEMORY[0x277D82828] + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  MEMORY[0x26675B290](&v44);
}

void sub_265653F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScore(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, sentencepiece::util::Status *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sentencepiece::util::Status::~Status(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              google::protobuf::RepeatedPtrField<std::string>::Reserve((a4 + 16), v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sentencepiece::util::Status::~Status(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sentencepiece::util::Status::Status(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "(", 1);
      MEMORY[0x26675B160](&v32, 762);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "!results.empty()", 16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v31, a5);
      v32 = *MEMORY[0x277D82828];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
      v33 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x26675B290](v37);
LABEL_23:
      v31 = &v23;
      std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "(", 1);
    MEMORY[0x26675B160](&v32, 754);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v31, a5);
    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x26675B290](v37);
  }
}

void sub_2656545E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::CalculateEntropy(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, sentencepiece::util::Status *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sentencepiece::util::Status::~Status(a5);
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (v20 >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sentencepiece::util::Status::Status(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
    MEMORY[0x26675B160](&v19, 778);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "CalculateEntropy is not available for the current model.", 56);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v18, a5);
    v19 = *MEMORY[0x277D82828];
    *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
    v20 = MEMORY[0x277D82878] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x26675B290](&v23);
  }
}

void sub_26565494C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_265654A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Decode(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v4 = a3;
  v74[19] = *MEMORY[0x277D85DE8];
  v62 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sentencepiece::util::Status::~Status(a4);
  if (!v4)
  {
    LODWORD(__dst) = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__dst + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, "(", 1);
    MEMORY[0x26675B160](&__dst + 8, 796);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, "spt", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst + 1, "output proto is null", 20);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__dst, a4);
    *(&__dst + 1) = *MEMORY[0x277D82828];
    *(&__dst + *(*(&__dst + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
    v69 = (MEMORY[0x277D82878] + 16);
    if (v73 < 0)
    {
      operator delete(__p);
    }

    v69 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(&v70);
    std::ostream::~ostream();
    MEMORY[0x26675B290](v74);
    goto LABEL_2;
  }

  sentencepiece::SentencePieceText::Clear(v4);
  v9 = a1[4];
  if (v9 && (*(*v9 + 72))(v9))
  {
    v10 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v62;
      v16 = *(v62 + 64);
      if (!v16)
      {
        break;
      }

      v17 = *(v62 + 56);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(v62 + 60))
        {
LABEL_18:
          google::protobuf::RepeatedPtrField<std::string>::Reserve((v62 + 48), v18 + 1);
          v16 = *(v62 + 64);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(v15 + 48));
        v20 = *(v15 + 56);
        v21 = *(v15 + 64) + 8 * v20;
        *(v15 + 56) = v20 + 1;
        *(v21 + 8) = v19;
        goto LABEL_20;
      }

      *(v62 + 56) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_20:
      *(v19 + 40) |= 1u;
      v22 = *(v19 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::internal::ArenaStringPtr::Mutable((v19 + 48), v22);
      MEMORY[0x26675AFD0](v23, v13, v14);
      v24 = (*(*a1 + 504))(a1, v13, v14);
      *(v19 + 40) |= 4u;
      *(v19 + 64) = v24;
      v11 += 2;
      if (v11 == v12)
      {
        v4 = v62;
        goto LABEL_24;
      }
    }

    v18 = *(v62 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sentencepiece::SentencePieceProcessor::ApplyExtraOptions(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sentencepiece::util::Status::~Status(a4);
  *(v4 + 40) |= 1u;
  v25 = *(v4 + 8);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  v60[1] = &v61;
  v61 = google::protobuf::internal::ArenaStringPtr::Mutable((v4 + 72), v25);
  v58 = 0;
  v59[0] = &v62;
  v59[1] = v60;
  v60[0] = &v62;
  v57[0] = 0;
  v57[1] = 0;
  v26 = *(v4 + 56);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(v4 + 48, v29);
      if (!(*(*a1 + 552))(a1, *(v31 + 64)))
      {
        break;
      }

      ++v29;
LABEL_69:
      v4 = v62;
      v26 = *(v62 + 56);
      if (v29 >= v26)
      {
        goto LABEL_87;
      }
    }

    sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_2::operator()(v59, v28, v29, a4);
    if (*a4)
    {
      goto LABEL_95;
    }

    sentencepiece::util::Status::~Status(a4);
    if (v27)
    {
      goto LABEL_36;
    }

    v32 = *(v61 + 23);
    if (v32 < 0)
    {
      v32 = v61[1];
    }

    if (v32)
    {
LABEL_36:
      v30 = 0;
    }

    v33 = *(v31 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    if ((v34 & 0x8000000000000000) != 0)
    {
      v35 = *v33;
      v34 = *(v33 + 8);
    }

    else
    {
      v35 = (*(v31 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = *(v31 + 64);
    if ((*(*a1 + 536))(a1, v36))
    {
      std::string::basic_string[abi:ne200100]<0>(&v54, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v36))
      {
        if (v30 & 1) != 0 && ((v39 = a1[4]) == 0 || (v40 = (*(*v39 + 152))(v39), ((*(*v40 + 16))(v40)) || (v41 = (*(*a1[4] + 152))(a1[4]), (*(*v41 + 24))(v41))))
        {
          if (v34 >= 3)
          {
            v46 = *v35 != 38626 || v35[2] != 129;
            if (!v46)
            {
              v35 += 3;
              v34 -= 3;
            }

            v42 = !v46;
          }

          else
          {
            v42 = 0;
          }

          v47 = a1[4];
          if (v47)
          {
            v48 = (*(*v47 + 152))(v47);
            if ((*(*v48 + 24))(v48))
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        *(&__dst + 1) = 3;
        v69 = " ";
        v70.__locale_ = 1;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        std::vector<std::pair<std::string_view,std::string_view>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,std::string_view> const*,std::pair<std::string_view,std::string_view> const*>(&v63, &__dst, &v71, 1uLL);
        absl::StrReplaceAll(v35, v34, &v63, &v66);
        v54 = v66;
        v55 = v67;
        v67 = 0;
        v66 = 0uLL;
        v56 = v42;
        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        goto LABEL_60;
      }

      v37 = (*(*a1 + 512))(a1, v36);
      if (v38 == v34 && !memcmp(v37, v35, v34))
      {
        std::string::basic_string[abi:ne200100]<0>(&v54, v10);
      }

      else
      {
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v34 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v69) = v34;
        if (v34)
        {
          memmove(&__dst, v35, v34);
        }

        *(&__dst + v34) = 0;
        v54 = __dst;
        v55 = v69;
      }
    }

    v56 = 0;
LABEL_60:
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v58 = v55;
    *v57 = v54;
    v27 = v56;
    if (SHIBYTE(v55) >= 0)
    {
      v43 = v57;
    }

    else
    {
      v43 = v54;
    }

    if (SHIBYTE(v55) >= 0)
    {
      v44 = v55 >> 56;
    }

    else
    {
      v44 = *(&v54 + 1);
    }

    sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_1::operator()(v60, v29++, v43, v44);
    v28 = v29;
    goto LABEL_69;
  }

  v28 = 0;
LABEL_87:
  sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_2::operator()(v59, v28, v26, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    v49 = a1[3];
    if (v49)
    {
      if ((*(v61 + 23) & 0x8000000000000000) != 0)
      {
        v50 = *v61;
        v51 = v61[1];
      }

      (*(*v49 + 40))(&__dst);
      v52 = v61;
      if (*(v61 + 23) < 0)
      {
        operator delete(*v61);
      }

      v53 = __dst;
      v52[2] = v69;
      *v52 = v53;
    }

    sentencepiece::util::Status::Status(a4);
  }

LABEL_95:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

LABEL_2:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2656553C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_2::operator()(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, sentencepiece::util::Status *a4@<X8>)
{
  if (a2 >= a3)
  {

    sentencepiece::util::Status::Status(a4);
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
    v8 = a2;
    do
    {
      v9 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sentencepiece::PieceToByte(v10, v11);
      if (v12 < 0)
      {
        v32 = 13;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(", 1);
        MEMORY[0x26675B160](&v33, 868);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(0) <= (byte)", 13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v32, a4);
        goto LABEL_51;
      }

      std::string::append(&v38, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v30 = a4;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v38.__r_.__value_.__r.__words[1];
    }

    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        *v31 = 0;
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v38.__r_.__value_.__l.__size_;
        }

        if (size < v15)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v17 = v15;
        v18 = v38.__r_.__value_.__r.__words[0];
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v38;
        }

        if (sentencepiece::string_util::DecodeUTF8((v18 + v17), v18 + size, v31, v13) != 65533)
        {
          break;
        }

        v19 = v17 + a2;
        if (*v31 != 1)
        {
          if (*v31 != 3)
          {
            v32 = 13;
            std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(", 1);
            MEMORY[0x26675B160](&v33, 887);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ") [", 3);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(consumed) == (1)", 17);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "] ", 2);
            sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v32, v30);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        LODWORD(v22) = *v31;
LABEL_41:
        v15 = v17 + v22;
        if (v15 >= v14)
        {
          goto LABEL_48;
        }
      }

      v19 = v17 + a2;
LABEL_22:
      v20 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v38.__r_.__value_.__l.__size_;
      }

      v21 = v20 - v17;
      if (v20 < v17)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v22 = *v31;
      v23 = &v38;
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v38.__r_.__value_.__r.__words[0];
      }

      if (v21 >= *v31)
      {
        v24 = *v31;
      }

      else
      {
        v24 = v21;
      }

      if (*v31)
      {
        v25 = 0;
        v26 = v23 + v17;
        do
        {
          v27 = v22 - 1;
          if (v25 == v27)
          {
            v28 = v26;
          }

          else
          {
            v28 = "";
          }

          if (v25 == v27)
          {
            v29 = v24;
          }

          else
          {
            v29 = 0;
          }

          sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_1::operator()(*(a1 + 8), v19, v28, v29);
          ++v25;
          v22 = *v31;
          ++v19;
        }

        while (*v31 > v25);
      }

      goto LABEL_41;
    }

    v15 = 0;
LABEL_48:
    if (v15 + a2 == a3)
    {
      sentencepiece::util::Status::Status(v30);
      goto LABEL_54;
    }

    v32 = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(", 1);
    MEMORY[0x26675B160](&v33, 905);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "(token_index_begin + offset) == (token_index_end)", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v32, v30);
LABEL_51:
    v33 = *MEMORY[0x277D82828];
    *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
    v34 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(v35[7].__locale_);
    }

    v34 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v35);
    std::ostream::~ostream();
    MEMORY[0x26675B290](&v37);
LABEL_54:
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }
}

void sub_265655968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sentencepiece::SentencePieceProcessor::Decode(std::vector<std::string_view> const&,sentencepiece::SentencePieceText *)const::$_1::operator()(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v7 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_265655B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v19, 0, sizeof(v19));
  v8 = (*(*a1 + 496))(a1);
  std::vector<std::string>::reserve(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    end = v19.__end_;
    if (v19.__end_ >= v19.__end_cap_.__value_)
    {
      v14 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(&v19, &__p);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(&v19, &__p);
      v14 = end + 1;
    }

    v19.__end_ = v14;
    ++v10;
  }

  absl::StrCat<int>("Invalid id: ", 0xCuLL, &v18, &__p);
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

  sentencepiece::util::Status::Status(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_265655D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void absl::StrCat<int>(void *__src@<X0>, size_t __len@<X1>, unsigned int *a3@<X2>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  absl::StrCat(*a3);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&__dst, v6, v7);
  *a4 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_265655DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sentencepiece::SentencePieceProcessor::GetPieceSize(sentencepiece::SentencePieceProcessor *this)
{
  (*(*this + 88))(&v17);
  v2 = v17;
  sentencepiece::util::Status::~Status(&v17);
  if (!v2)
  {
    return (*(**(this + 1) + 128))(*(this + 1));
  }

  if (sentencepiece::logging::GetMinLogLevel(v3) <= 2)
  {
    v16 = 0;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x26675B160](v5, 961);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    (*(*this + 88))(&v17, this);
    v11 = sentencepiece::util::Status::error_message(&v17);
    v12 = strlen(v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nReturns default value ", 23);
    MEMORY[0x26675B160](v14, 0);
    sentencepiece::util::Status::~Status(&v17);
    sentencepiece::error::Die::~Die(&v16);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceProcessor::PieceToId(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v21);
  v6 = v21;
  sentencepiece::util::Status::~Status(&v21);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sentencepiece::logging::GetMinLogLevel(v7) <= 2)
  {
    v20 = 0;
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
    v10 = MEMORY[0x26675B160](v9, 966);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ") ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "LOG(", 4);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ERROR", 5);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") ", 2);
    ((*a1)[11])(&v21, a1);
    v15 = sentencepiece::util::Status::error_message(&v21);
    v16 = strlen(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\nReturns default value ", 23);
    MEMORY[0x26675B160](v18, 0);
    sentencepiece::util::Status::~Status(&v21);
    sentencepiece::error::Die::~Die(&v20);
  }

  return 0;
}

const char *sentencepiece::SentencePieceProcessor::IdToPiece(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 120))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26675B160](v7, 971);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "", 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return "";
}

float sentencepiece::SentencePieceProcessor::GetScore(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v20);
  v4 = v20;
  sentencepiece::util::Status::~Status(&v20);
  if (!v4)
  {
    return (*(**(this + 1) + 136))(*(this + 1), a2);
  }

  v6 = 0.0;
  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v19 = 0;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x26675B160](v8, 976);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "LOG(", 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ERROR", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
    (*(*this + 88))(&v20, this);
    v14 = sentencepiece::util::Status::error_message(&v20);
    v15 = strlen(v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\nReturns default value ", 23);
    MEMORY[0x26675B140](v17, 0.0);
    sentencepiece::util::Status::~Status(&v20);
    sentencepiece::error::Die::~Die(&v19);
  }

  return v6;
}

uint64_t sentencepiece::SentencePieceProcessor::IsControl(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 152))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26675B160](v7, 981);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    MEMORY[0x26675B160](v16, 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceProcessor::IsUnknown(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 144))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26675B160](v7, 986);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    MEMORY[0x26675B160](v16, 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceProcessor::IsUnused(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 160))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26675B160](v7, 991);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    MEMORY[0x26675B130](v16, 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceProcessor::IsByte(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 176))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x26675B160](v7, 996);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    MEMORY[0x26675B130](v16, 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceProcessor::unk_id(sentencepiece::ModelInterface **this)
{
  v2 = sentencepiece::ModelInterface::unk_piece(this[1]);
  v3 = strlen(v2);
  v4 = (*(*this + 63))(this, v2, v3);
  if ((*(*this + 66))(this, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sentencepiece::SentencePieceProcessor::bos_id(sentencepiece::ModelInterface **this)
{
  v2 = sentencepiece::ModelInterface::bos_piece(this[1]);
  v3 = strlen(v2);
  v4 = (*(*this + 63))(this, v2, v3);
  if ((*(*this + 67))(this, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sentencepiece::SentencePieceProcessor::eos_id(sentencepiece::ModelInterface **this)
{
  v2 = sentencepiece::ModelInterface::eos_piece(this[1]);
  v3 = strlen(v2);
  v4 = (*(*this + 63))(this, v2, v3);
  if ((*(*this + 67))(this, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sentencepiece::SentencePieceProcessor::pad_id(sentencepiece::ModelInterface **this)
{
  v2 = sentencepiece::ModelInterface::pad_piece(this[1]);
  v3 = strlen(v2);
  v4 = (*(*this + 63))(this, v2, v3);
  if ((*(*this + 67))(this, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sentencepiece::SentencePieceProcessor::LookupPredictive@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X3>, sentencepiece::util::Status *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      std::vector<std::string>::clear[abi:ne200100](a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 200);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "(", 1);
      MEMORY[0x26675B160](&v14, 1027);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x26675B290](&v18);
    }
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::LookupPredictive@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, sentencepiece::util::Status *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 208);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "(", 1);
      MEMORY[0x26675B160](&v14, 1033);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x26675B290](&v18);
    }
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::LookupCommonPrefix@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      std::vector<std::string>::clear[abi:ne200100](a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 216);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "(", 1);
      MEMORY[0x26675B160](&v14, 1039);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x26675B290](&v18);
    }
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::LookupCommonPrefix@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 224);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "(", 1);
      MEMORY[0x26675B160](&v14, 1045);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "ids", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x26675B290](&v18);
    }
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::AddsDummyPrefix(sentencepiece::SentencePieceProcessor *this)
{
  result = *(this + 4);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::RemovesExtraWhitespaces(sentencepiece::SentencePieceProcessor *this)
{
  result = *(this + 4);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::Normalize@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, sentencepiece::util::Status *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sentencepiece::util::Status::~Status(a4);
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    v12 = 13;
    v11 = std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "(", 1);
    MEMORY[0x26675B160](&v13, 1062);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "norm_to_orig", 12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "output container is null", 24);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v12, a4);
  }

  else
  {
    v12 = 13;
    v9 = std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "(", 1);
    MEMORY[0x26675B160](&v13, 1061);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "normalized", 10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "output container is null", 24);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v12, a4);
  }

  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x26675B290](&v17);
}

uint64_t sentencepiece::SentencePieceProcessor::SetModel(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sentencepiece::SentencePieceProcessor::SetNormalizer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sentencepiece::SentencePieceProcessor::model_proto(sentencepiece::SentencePieceProcessor *this)
{
  v1 = *(this + 4);
  {
    v8 = 1;
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x26675B160](v4, 1158);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_.get()))", 68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    sentencepiece::error::Die::~Die(&v8);
    __break(1u);
  }
}

_BYTE *sentencepiece::SentencePieceProcessor::serialized_model_proto@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 4);
  {

    return google::protobuf::MessageLite::SerializeAsString(v5, a2);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void sentencepiece::SentencePieceProcessor::MemoryMappableString(sentencepiece::SentencePieceProcessor *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 88))(&v38);
  if (v38.__r_.__value_.__r.__words[0])
  {
    v37.__r_.__value_.__s.__data_[0] = 1;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x26675B160](v5, 1188);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "status().ok()", 13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "To serialize, SentencePieceProcessor has to be initialized.", 59);
    sentencepiece::error::Die::~Die(&v37);
  }

  sentencepiece::util::Status::~Status(&v38);
  sentencepiece::GetMemoryMappableString(*(this + 4), &v38);
  sentencepiece::mmap_util::Padding(&v38);
  (*(**(this + 1) + 232))(&v37);
  sentencepiece::mmap_util::Padding(&v37);
  (*(**(this + 2) + 48))(&v36);
  sentencepiece::mmap_util::Padding(&v36);
  v10 = *(this + 3);
  if (v10)
  {
    (*(*v10 + 48))(&__p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
  }

  sentencepiece::mmap_util::Padding(&__p);
  v11 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v12 = v38.__r_.__value_.__r.__words[1];
  v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  v14 = v37.__r_.__value_.__r.__words[1];
  v15 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  v16 = v36.__r_.__value_.__r.__words[1];
  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v18 = __p.__r_.__value_.__r.__words[1];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  memset(&v34, 0, sizeof(v34));
  std::string::resize(&v34, 0x14uLL, 0);
  if ((v17 & 0x80u) == 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if ((v15 & 0x80u) == 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if ((v13 & 0x80u) == 0)
  {
    v21 = v13;
  }

  else
  {
    v21 = v14;
  }

  if ((v11 & 0x80u) == 0)
  {
    v22 = v11;
  }

  else
  {
    v22 = v12;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v34;
  }

  else
  {
    v23 = v34.__r_.__value_.__r.__words[0];
  }

  LODWORD(v23->__r_.__value_.__l.__data_) = 0;
  HIDWORD(v23->__r_.__value_.__r.__words[0]) = v22;
  LODWORD(v23->__r_.__value_.__r.__words[1]) = v21;
  HIDWORD(v23->__r_.__value_.__r.__words[1]) = v20;
  LODWORD(v23->__r_.__value_.__r.__words[2]) = v19;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v34;
  }

  else
  {
    v24 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v24, size);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v38;
  }

  else
  {
    v26 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v38.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v26, v27);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v37;
  }

  else
  {
    v28 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v28, v29);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v36;
  }

  else
  {
    v30 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v36.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v30, v31);
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
    v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_265658454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::SerializedString(sentencepiece::SentencePieceProcessor *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = **v4;
    {

      sentencepiece::SentencePieceProcessor::serialized_model_proto(this, a2);
    }

    else
    {

      sentencepiece::SentencePieceProcessor::MemoryMappableString(this, a2);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void *sentencepiece::SentencePieceProcessor::LoadFromMemoryMappedFile@<X0>(const char *a1@<X1>, unint64_t a2@<X2>, sentencepiece::util::Status *a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v10) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x26675B160](&v11, 1230);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(size) >= (sizeof(MMapHeader))", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else if (*a1)
  {
    LODWORD(v10) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x26675B160](&v11, 1233);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "header->sentinel == 0", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "This file format is not for mmap-based loading.", 47);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  else
  {
    result = sentencepiece::mmap_util::RemovePrefix(&v16, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sentencepiece::util::Status::~Status(a3);
    if (v17 >= *(a1 + 1))
    {
      operator new();
    }

    LODWORD(v10) = 13;
    v9 = std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
    MEMORY[0x26675B160](&v11, 1238);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(blob.size()) >= (header->model_proto_size)", 43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v10, a3);
  }

  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x26675B290](&v15);
}

void sub_26565915C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::CopyAndLoadFromMemoryMappedFile(sentencepiece::SentencePieceProcessor *this, const char *a2)
{
  v3 = this + 96;
  MEMORY[0x26675AFD0](this + 96, a2);
  v4 = *(this + 119);
  if (v4 < 0)
  {
    v3 = *(this + 12);
    v4 = *(this + 13);
  }

  v5 = *(*this + 48);

  return v5(this, v3, v4);
}

void sub_2656593F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::Mmap<char>::open(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sentencepiece::Mmap<char>::close(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    v11 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x26675B160](&__p.__r_.__value_.__r.__words[1], 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x26675B290](v30);
    return;
  }

  std::__fs::filesystem::path::parent_path[abi:ne200100](a2, &v32);
  std::__fs::filesystem::path::filename[abi:ne200100](a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32.__pn_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x26675B160](&__p.__r_.__value_.__r.__words[1], 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x26675B160](&__p.__r_.__value_.__r.__words[1], 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sentencepiece::util::Status::Status(a4);
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v23 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x26675B160](&__p.__r_.__value_.__r.__words[1], 78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x26675B160](&__p.__r_.__value_.__r.__words[1], 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "fd >= 0", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
  __p.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
  *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x26675B290](v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_265659D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_265659F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::io::SaveModelProto@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sentencepiece::filesystem::NewWritableFile();
  }

  return sentencepiece::util::Status::Status(a2, 5, "model file path should not be empty.", 36);
}

void sub_26565A278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 - 56);
  *(v15 - 56) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::EncodeAsPieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A34C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::EncodeAsIds(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A3C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::NBestEncodeAsPieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::NBestEncodeAsIds(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAsPieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAsIds(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A5BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScoreAsPieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::vector<std::string>,float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScoreAsIds(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::DecodePieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A734(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26565A7B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::DecodeIds(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v2);
  sentencepiece::util::Status::~Status(&v2);
}

void sub_26565A834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sentencepiece::SentencePieceProcessor::CalculateEntropy(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sentencepiece::util::Status::~Status(&v3);
  return v1;
}

void sentencepiece::SentencePieceProcessor::EncodeAsSerializedProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_287703790;
  v12 = 0;
  v13 = 0;
  v11 = sentencepiece::SentencePieceText::default_instance(a1);
  v8 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  google::protobuf::MessageLite::SerializeAsString(v11, a4);
  sentencepiece::util::Status::~Status(&v9);
  v10 = &unk_287703790;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_26565A98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAsSerializedProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = &unk_287703790;
  v16 = 0;
  v17 = 0;
  v15 = sentencepiece::SentencePieceText::default_instance(a1);
  v12 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  google::protobuf::MessageLite::SerializeAsString(v15, a5);
  sentencepiece::util::Status::~Status(&v13);
  v14 = &unk_287703790;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_26565AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::NBestEncodeAsSerializedProto(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_2877037B0;
  v10 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sentencepiece::ImmutableNBestSentencePieceText::SerializeAsString(v12, a5);
  sentencepiece::util::Status::~Status(&v11);
  v12[0] = &unk_2877037B0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_26565ABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sentencepiece::util::Status::~Status(&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScoreAsSerializedProto(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = &unk_2877037B0;
  v16 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sentencepiece::ImmutableNBestSentencePieceText::SerializeAsString(v18, a7);
  sentencepiece::util::Status::~Status(&v17);
  v18[0] = &unk_2877037B0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_26565ACE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sentencepiece::util::Status::~Status(&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::DecodePiecesAsSerializedProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_287703790;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287703790;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = &unk_287703790;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287703790;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26565ADDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_26565AED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::DecodeIdsAsSerializedProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_287703790;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287703790;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26565AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::EncodeAsImmutableProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sentencepiece::ImmutableSentencePieceText *a4@<X8>)
{
  *a4 = &unk_287703790;
  v8 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(a4 + 1) = v8;
  v9 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a4);
  (*(*a1 + 232))(&v10, a1, a2, a3, v9);
  sentencepiece::util::Status::~Status(&v10);
}

void sub_26565B0B8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAsImmutableProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::ImmutableSentencePieceText *a5@<X8>, float a6@<S0>)
{
  *a5 = &unk_287703790;
  v12 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  *(a5 + 1) = v12;
  v13 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a5);
  (*(*a1 + 248))(&v14, a1, a2, a3, a4, v13, a6);
  sentencepiece::util::Status::~Status(&v14);
}

void sub_26565B1A4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::NBestEncodeAsImmutableProto(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::ImmutableNBestSentencePieceText *a5@<X8>)
{
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = &unk_2877037B0;
  v9 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(a5);
  (*(*a1 + 240))(&v10, a1, a2, a3, a4, v9);
  sentencepiece::util::Status::~Status(&v10);
}

void sub_26565B278(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::SampleEncodeAndScoreAsImmutableProto(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, sentencepiece::ImmutableNBestSentencePieceText *a7@<X8>, float a8@<S0>)
{
  *(a7 + 1) = 0;
  *(a7 + 2) = 0;
  *a7 = &unk_2877037B0;
  v15 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(a7);
  (*(*a1 + 256))(&v16, a1, a2, a3, a4, a5, a6, v15, a8);
  sentencepiece::util::Status::~Status(&v16);
}

void sub_26565B37C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::DecodePiecesAsImmutableProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, sentencepiece::ImmutableSentencePieceText *a3@<X8>)
{
  *a3 = &unk_287703790;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 264))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

{
  *a3 = &unk_287703790;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 272))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

void sub_26565B448(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_26565B514(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::DecodeIdsAsImmutableProto(sentencepiece::SentencePieceText *a1@<X0>, uint64_t a2@<X1>, sentencepiece::ImmutableSentencePieceText *a3@<X8>)
{
  *a3 = &unk_287703790;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 280))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

void sub_26565B5E0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26565B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26565B7D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26565B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x26675B080](a1 + 2);

  return std::istream::~istream();
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26565BB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *absl::internal::Splitter::Splitter(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            std::vector<std::string_view>::push_back[abi:ne200100](a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    std::vector<std::string_view>::push_back[abi:ne200100](a1, &v23);
  }

  return a1;
}

void sub_26565BCB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string_view>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a1, v10);
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

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::string_view>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string_view>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26565BEFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string_view>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void absl::StrReplaceAll(void *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    absl::StringReplace(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a4);
    std::string::operator=(&__dst, a4);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26565C0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::StringReplace(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t std::vector<std::pair<std::string_view,std::string_view>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,std::string_view> const*,std::pair<std::string_view,std::string_view> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string_view,std::string_view>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26565C290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string_view,std::string_view>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,std::string_view>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,std::string_view>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B9AD40, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::vector<std::string>,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 4;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26565C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::vector<sentencepiece::ImmutableSentencePieceText_ImmutableSentencePiece>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<sentencepiece::ImmutableSentencePieceText_ImmutableSentencePiece>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26565C6AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<sentencepiece::ImmutableSentencePieceText_ImmutableSentencePiece>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sentencepiece::ImmutableSentencePieceText_ImmutableSentencePiece>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sentencepiece::ImmutableSentencePieceText_ImmutableSentencePiece>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *_ZNSt3__120__shared_ptr_emplaceIN13sentencepiece17SentencePieceTextENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287703A98;
  sentencepiece::SentencePieceText::SentencePieceText((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<sentencepiece::SentencePieceText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287703A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26675B300);
}

void *std::vector<sentencepiece::ImmutableSentencePieceText>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<sentencepiece::ImmutableSentencePieceText>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<sentencepiece::ImmutableSentencePieceText>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sentencepiece::ImmutableSentencePieceText>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

sentencepiece::SentencePieceText *std::vector<sentencepiece::ImmutableSentencePieceText>::__construct_at_end(sentencepiece::SentencePieceText *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = 32 * a2;
    v5 = *(result + 1);
    v6 = &v3[4 * a2];
    do
    {
      *v3 = &unk_287703790;
      result = sentencepiece::SentencePieceText::default_instance(result);
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = result;
      v3 += 4;
      v5 += 32;
      v4 -= 32;
    }

    while (v4);
    v3 = v6;
  }

  *(v2 + 1) = v3;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sentencepiece::ImmutableSentencePieceText>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<sentencepiece::ImmutableSentencePieceText>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN13sentencepiece22NBestSentencePieceTextENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287703AE8;
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<sentencepiece::NBestSentencePieceText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287703AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26675B300);
}

void absl::StrCat<std::string,char [2],std::string>(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, char *a4@<X3>, void **a5@<X4>, std::string *a6@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  absl::StrCat<char [2],std::string>(v11, v12, a4, a5, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a6 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26565CCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void absl::StrCat<char [2],std::string>(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, std::string *a5@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  v8 = strlen(a3);
  absl::StrCat<std::string>(a3, v8, a4, &__p);
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

  v11 = std::string::append(&__dst, p_p, size);
  *a5 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26565CDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void absl::StrCat<std::string>(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:ne200100](&__dst, __src, __len);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  std::string::basic_string[abi:ne200100](__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_26565CEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *std::set<std::string_view>::set[abi:ne200100]<std::__wrap_iter<std::string_view const*>>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::string_view>::__emplace_hint_unique_key_args<std::string_view,std::string_view const&>(a1, v4, v6);
      v6 += 16;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::string_view>::__emplace_hint_unique_key_args<std::string_view,std::string_view const&>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::string_view>::__find_equal<std::string_view>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::string_view>::__find_equal<std::string_view>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<std::string_view>::operator()[abi:ne200100](a1, a5, (a2 + 4)))
  {
    if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string_view>::operator()[abi:ne200100](a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::__find_equal<std::string_view>(a1, a3, a5);
}

uint64_t std::__tree<std::string_view>::find<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string_view>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string_view>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
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

void sub_26565D4BC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x26675B290](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

uint64_t std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v14);
  return v8;
}

void sub_26565D81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26565D898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_26565DC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26565DCBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void **std::__split_buffer<std::pair<std::vector<std::string>,float>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::vector<std::string>,float>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::vector<std::string>,float>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

float std::vector<std::pair<std::vector<std::string>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string>&,float>(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *std::vector<std::pair<std::vector<std::string>,float>>::__emplace_back_slow_path<std::vector<std::string>&,float>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  std::__split_buffer<std::pair<std::vector<std::string>,float>>::~__split_buffer(&v17);
  return v11;
}

void sub_26565DFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<std::string>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<int>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::vector<int>,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::vector<int>,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

float std::vector<std::pair<std::vector<int>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&,float>(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *std::vector<std::pair<std::vector<int>,float>>::__emplace_back_slow_path<std::vector<int>&,float>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<int>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(&v17);
  return v11;
}

void sub_26565E23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26565E348(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1, a2, a3, (a3 - a2) >> 2);
  std::discrete_distribution<int>::param_type::__init(a1);
  return a1;
}

void sub_26565E3A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::discrete_distribution<int>::param_type::__init(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      std::vector<double>::shrink_to_fit(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      std::vector<double>::vector[abi:ne200100](&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26565E528(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<double>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26565E6B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
  v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t absl::StrCat(absl *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  MEMORY[0x26675B160](&v3, this);
  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x26675B290](&v7);
}

void sub_26565E96C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x26675B290](v2 + 112);
  _Unwind_Resume(a1);
}

void *std::map<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>::map[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>>>::__emplace_hint_unique_key_args<std::string_view,std::pair<std::string_view const,sentencepiece::SentencePieceProcessor::ExtraOption> const&>(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,sentencepiece::SentencePieceProcessor::ExtraOption>>>::__emplace_hint_unique_key_args<std::string_view,std::pair<std::string_view const,sentencepiece::SentencePieceProcessor::ExtraOption> const&>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::string_view>::__find_equal<std::string_view>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sentencepiece::Mmap<char>::~Mmap(void *a1)
{
  sentencepiece::Mmap<char>::~Mmap(a1);

  JUMPOUT(0x26675B300);
}

void *sentencepiece::Mmap<char>::~Mmap(void *a1)
{
  *a1 = &unk_287703B38;
  sentencepiece::Mmap<char>::close(a1);
  return a1;
}

void *sentencepiece::Mmap<char>::close(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
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

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
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

void *std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26565EDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_26565EE58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_26565EFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

double sentencepiece::unigram::Lattice::Lattice(sentencepiece::unigram::Lattice *this)
{
  *this = &unk_287703B68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = &unk_287703CB0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 1024;
  return result;
}

void sentencepiece::unigram::Lattice::~Lattice(sentencepiece::unigram::Lattice *this)
{
  *this = &unk_287703B68;
  sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(this + 12);
  v3 = (this + 72);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  sentencepiece::unigram::Lattice::~Lattice(this);

  JUMPOUT(0x26675B300);
}

uint64_t sentencepiece::unigram::Lattice::NewNode(sentencepiece::unigram::Lattice *this)
{
  result = sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Allocate(this + 12);
  *(result + 24) = *(this + 32) + *(this + 34) * *(this + 36) - 1;
  return result;
}

uint64_t sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Allocate(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sentencepiece::unigram::Lattice::Clear(sentencepiece::unigram::Lattice *this)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 6);
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 9);
  *(this + 1) = "";
  *(this + 2) = 0;
  *(this + 4) = *(this + 3);

  sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Free(this + 96);
}

void sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Free(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 + 1 < ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      bzero(*(*(a1 + 8) + v4), 48 * *(a1 + 48));
      v4 += 8;
    }

    while (v5 != v4);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

void sentencepiece::unigram::Lattice::SetSentence(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sentencepiece::unigram::Lattice::Clear(a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  std::vector<char const*>::reserve((a1 + 24), a3 + 1);
  for (; a3; a3 -= v6)
  {
    if (a3 >= asc_2656C45A0[*a2 >> 4])
    {
      v6 = asc_2656C45A0[*a2 >> 4];
    }

    else
    {
      v6 = a3;
    }

    v15 = a2;
    std::vector<char const*>::push_back[abi:ne200100](a1 + 24, &v15);
    a2 += v6;
  }

  v15 = a2;
  std::vector<char const*>::push_back[abi:ne200100](a1 + 24, &v15);
  v7 = ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
  v8 = v7 & ~(v7 >> 31);
  std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::resize((a1 + 48), v8 + 1);
  std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::resize((a1 + 72), v8 + 1);
  v9 = 0;
  do
  {
    std::vector<sentencepiece::unigram::Lattice::Node *>::reserve((*(a1 + 48) + v9), 0x10uLL);
    std::vector<sentencepiece::unigram::Lattice::Node *>::reserve((*(a1 + 72) + v9), 0x10uLL);
    v9 += 24;
  }

  while (24 * v8 + 24 != v9);
  v10 = sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Allocate((a1 + 96));
  v11 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v15 = v10;
  v10[6] = v11;
  v10[7] = -1;
  v10[4] = 0;
  std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](*(a1 + 72), &v15);
  v12 = sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Allocate((a1 + 96));
  v13 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v14 = v12;
  v12[6] = v13;
  v12[7] = -1;
  v12[4] = v8;
  std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](*(a1 + 48) + 24 * v8, &v14);
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *std::vector<sentencepiece::unigram::Lattice::Node *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t sentencepiece::unigram::Lattice::Insert(sentencepiece::unigram::Lattice *this, int a2, int a3)
{
  v6 = sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::Allocate(this + 12);
  v7 = *(this + 32) + *(this + 34) * *(this + 36) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(this + 3);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](*(this + 6) + 24 * a2, &v12);
  std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](*(this + 9) + 24 * (*(v12 + 20) + a2), &v12);
  return v12;
}

void sentencepiece::unigram::Lattice::Viterbi(sentencepiece::unigram::Lattice *this@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = ((*(this + 4) - *(this + 3)) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v6 = *(this + 6);
  while (1)
  {
    v7 = (v6 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    if (v8 != v9)
    {
      break;
    }

LABEL_14:
    if (++v3 == v5 + 1)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      v21 = *(v6 + 24 * v5);
      v22 = *(*v21 + 36);
      while (1)
      {
        v37 = *(*v21 + 40);
        if (!*(v37 + 40))
        {
          break;
        }

        v21 = &v37;
        std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](&__p, &v37);
      }

      v30 = __p;
      v31 = v39;
      v32 = v39 - 8;
      if (__p != v39 && v32 > __p)
      {
        v34 = __p + 8;
        do
        {
          v35 = *(v34 - 1);
          *(v34 - 1) = *v32;
          *v32 = v35;
          v32 -= 8;
          v36 = v34 >= v32;
          v34 += 8;
        }

        while (!v36);
        v30 = __p;
        v31 = v39;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      std::vector<sentencepiece::unigram::Lattice::Node *>::__init_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(a2, v30, v31, (v31 - v30) >> 3);
      *(a2 + 24) = v22;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      return;
    }
  }

  v10 = (*(this + 9) + 24 * v3);
  v11 = *v10;
  v12 = v10[1];
  while (1)
  {
    v13 = *v8;
    *(*v8 + 40) = 0;
    if (v11 == v12)
    {
      break;
    }

    v14 = 0;
    v15 = 0.0;
    v16 = v11;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *(v18 + 36) + *(v13 + 32);
      if (v19 > v15 || v14 == 0)
      {
        v14 = v17;
        v15 = v19;
      }
    }

    while (v16 != v12);
    if (!v14)
    {
      break;
    }

    *(v13 + 40) = v14;
    *(v13 + 36) = v15;
    if (++v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (sentencepiece::logging::GetMinLogLevel(this) <= 2)
  {
    LOBYTE(__p) = 0;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "(", 1);
    v25 = MEMORY[0x26675B160](v24, 179);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ") ", 2);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "LOG(", 4);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ERROR", 5);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Failed to find the best path in Viterbi.", 40);
    sentencepiece::error::Die::~Die(&__p);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_26565FBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Lattice::ForwardAlgorithm(sentencepiece::unigram::Lattice *this@<X0>, float a2@<S0>, uint64_t *a3@<X8>)
{
  v5 = ((*(this + 4) - *(this + 3)) >> 3) - 1;
  std::vector<float>::vector[abi:ne200100](a3, *(this + 16) + *(this + 17) * *(this + 18));
  v6 = 0;
  v25 = *(this + 6);
  v23 = this;
  v24 = (v5 & ~(v5 >> 31)) + 1;
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = *(v23 + 9) + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *a3;
      do
      {
        if (v12 != v11)
        {
          v14 = *(*v8 + 24);
          v15 = *v12;
          v16 = *(v13 + 4 * v14);
          v17 = v12;
          do
          {
            v18 = *(v13 + 4 * *(*v17 + 24)) + (a2 * *(*v17 + 32));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(v13 + 4 * *(*v17 + 24)) + (a2 * *(*v17 + 32));
              }

              if (v16 >= v18)
              {
                v18 = v16;
              }

              if (v18 <= (v19 + 50.0))
              {
                v20 = v18;
                v21 = exp((v19 - v18));
                v18 = log(v21 + 1.0) + v20;
              }
            }

            *(v13 + 4 * v14) = v18;
            ++v17;
            v16 = v18;
          }

          while (v17 != v11);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    ++v6;
  }

  while (v6 != v24);
}