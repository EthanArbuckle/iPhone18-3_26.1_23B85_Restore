void sub_26D3E7A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_26D3E7C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_26D3E7F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_26D3E8008(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E8084(_Unwind_Exception *exception_object)
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

void sub_26D3E8104(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E8180(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E81FC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E8278(_Unwind_Exception *exception_object)
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

void sub_26D3E82F8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E8374(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3E83F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D3E8470(_Unwind_Exception *exception_object)
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

void sub_26D3E84F0(_Unwind_Exception *exception_object)
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
  v10 = &unk_287EBB6D0;
  v12 = 0;
  v13 = 0;
  v11 = sentencepiece::SentencePieceText::default_instance(a1);
  v8 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  google::protobuf::MessageLite::SerializeAsString(v11, a4);
  sentencepiece::util::Status::~Status(&v9);
  v10 = &unk_287EBB6D0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_26D3E8648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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
  v14 = &unk_287EBB6D0;
  v16 = 0;
  v17 = 0;
  v15 = sentencepiece::SentencePieceText::default_instance(a1);
  v12 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  google::protobuf::MessageLite::SerializeAsString(v15, a5);
  sentencepiece::util::Status::~Status(&v13);
  v14 = &unk_287EBB6D0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_26D3E8764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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
  v12[0] = &unk_287EBB6F0;
  v10 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sentencepiece::ImmutableNBestSentencePieceText::SerializeAsString(v12, a5);
  sentencepiece::util::Status::~Status(&v11);
  v12[0] = &unk_287EBB6F0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_26D3E8868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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
  v18[0] = &unk_287EBB6F0;
  v16 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sentencepiece::ImmutableNBestSentencePieceText::SerializeAsString(v18, a7);
  sentencepiece::util::Status::~Status(&v17);
  v18[0] = &unk_287EBB6F0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_26D3E899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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
  v8 = &unk_287EBB6D0;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287EBB6D0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = &unk_287EBB6D0;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287EBB6D0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26D3E8A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_26D3E8B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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
  v8 = &unk_287EBB6D0;
  v10 = 0;
  v11 = 0;
  v9 = sentencepiece::SentencePieceText::default_instance(a1);
  v6 = sentencepiece::ImmutableSentencePieceText::mutable_proto(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  google::protobuf::MessageLite::SerializeAsString(v9, a3);
  sentencepiece::util::Status::~Status(&v7);
  v8 = &unk_287EBB6D0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26D3E8C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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
  *a4 = &unk_287EBB6D0;
  v8 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(a4 + 1) = v8;
  v9 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a4);
  (*(*a1 + 232))(&v10, a1, a2, a3, v9);
  sentencepiece::util::Status::~Status(&v10);
}

void sub_26D3E8D74(_Unwind_Exception *exception_object)
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
  *a5 = &unk_287EBB6D0;
  v12 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  *(a5 + 1) = v12;
  v13 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a5);
  (*(*a1 + 248))(&v14, a1, a2, a3, a4, v13, a6);
  sentencepiece::util::Status::~Status(&v14);
}

void sub_26D3E8E60(_Unwind_Exception *exception_object)
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
  *a5 = &unk_287EBB6F0;
  v9 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(a5);
  (*(*a1 + 240))(&v10, a1, a2, a3, a4, v9);
  sentencepiece::util::Status::~Status(&v10);
}

void sub_26D3E8F34(_Unwind_Exception *exception_object)
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
  *a7 = &unk_287EBB6F0;
  v15 = sentencepiece::ImmutableNBestSentencePieceText::mutable_proto(a7);
  (*(*a1 + 256))(&v16, a1, a2, a3, a4, a5, a6, v15, a8);
  sentencepiece::util::Status::~Status(&v16);
}

void sub_26D3E9038(_Unwind_Exception *exception_object)
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
  *a3 = &unk_287EBB6D0;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 264))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

{
  *a3 = &unk_287EBB6D0;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 272))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

void sub_26D3E9104(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D3E91D0(_Unwind_Exception *exception_object)
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
  *a3 = &unk_287EBB6D0;
  v6 = sentencepiece::SentencePieceText::default_instance(a1);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = v6;
  v7 = sentencepiece::ImmutableSentencePieceText::mutable_proto(a3);
  (*(*a1 + 280))(&v8, a1, a2, v7);
  sentencepiece::util::Status::~Status(&v8);
}

void sub_26D3E929C(_Unwind_Exception *exception_object)
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

void sub_26D3E9378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D3E9490(_Unwind_Exception *exception_object)
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

void sub_26D3E956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  MEMORY[0x26D6BEDA0](a1 + 2);

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

void sub_26D3E9830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D3E9974(_Unwind_Exception *exception_object)
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

void sub_26D3E9BB8(_Unwind_Exception *exception_object)
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

void sub_26D3E9D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_26D3E9F4C(_Unwind_Exception *exception_object)
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

void sub_26D3EA1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D3EA26C(_Unwind_Exception *exception_object)
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
  *a1 = &unk_287EBB9D8;
  sentencepiece::SentencePieceText::SentencePieceText((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<sentencepiece::SentencePieceText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287EBB9D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
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
      *v3 = &unk_287EBB6D0;
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
  *a1 = &unk_287EBBA28;
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<sentencepiece::NBestSentencePieceText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287EBBA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6BF040);
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

void sub_26D3EA89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_26D3EA990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_26D3EAA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_26D3EB07C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x26D6BEFC0](v1);
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

void sub_26D3EB37C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3EB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

void sub_26D3EB7A8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3EB81C(_Unwind_Exception *exception_object)
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

void sub_26D3EBB38(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3EBD9C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D3EBEA8(_Unwind_Exception *exception_object)
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

void sub_26D3EBF04(_Unwind_Exception *exception_object)
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
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3EC088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26D3EC1D4(_Unwind_Exception *exception_object)
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
  MEMORY[0x26D6BEE80](&v3, this);
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
  return MEMORY[0x26D6BEFC0](&v7);
}

void sub_26D3EC490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x26D6BEFC0](v2 + 112);
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

  JUMPOUT(0x26D6BF040);
}

void *sentencepiece::Mmap<char>::~Mmap(void *a1)
{
  *a1 = &unk_287EBBA78;
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

void sub_26D3EC918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_26D3EC97C(_Unwind_Exception *exception_object)
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

void sub_26D3ECAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  *this = &unk_287EBBAA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = &unk_287EBBBF0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 1024;
  return result;
}

void sentencepiece::unigram::Lattice::~Lattice(sentencepiece::unigram::Lattice *this)
{
  *this = &unk_287EBBAA8;
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

  JUMPOUT(0x26D6BF040);
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
  *(this + 1) = &unk_26D454396;
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
    if (a3 >= asc_26D45475E[*a2 >> 4])
    {
      v6 = asc_26D45475E[*a2 >> 4];
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
    v25 = MEMORY[0x26D6BEE80](v24, 179);
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

void sub_26D3ED6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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

void sentencepiece::unigram::Lattice::BackwardAlgorithm(sentencepiece::unigram::Lattice *this@<X0>, uint64_t *a2@<X8>)
{
  v5 = ((*(this + 4) - *(this + 3)) >> 3) - 1;
  v6 = v5 & ~(v5 >> 31);
  v23 = a2;
  std::vector<float>::vector[abi:ne200100](a2, *(this + 16) + *(this + 17) * *(this + 18));
  v24 = this;
  v25 = *(this + 9);
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = *(v24 + 6) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *v23;
      do
      {
        if (v11 != v12)
        {
          v14 = *(*v8 + 24);
          v15 = *v11;
          v16 = *(v13 + 4 * v14);
          v17 = v11;
          do
          {
            v18 = *(*v17 + 32) + *(v13 + 4 * *(*v17 + 24));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(*v17 + 32) + *(v13 + 4 * *(*v17 + 24));
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

          while (v17 != v12);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }
  }

  while (v6-- > 0);
}

void sentencepiece::unigram::Lattice::PopulateMarginal(sentencepiece::unigram::Lattice *a1, void *a2, float a3)
{
  if (a2)
  {
    v7 = *(a1 + 3);
    v6 = *(a1 + 4);
    sentencepiece::unigram::Lattice::ForwardAlgorithm(a1, 1.0, v20);
    sentencepiece::unigram::Lattice::BackwardAlgorithm(a1, __p);
    v8 = ((v6 - v7) >> 3) - 1;
    v9 = *(a1 + 6);
    v10 = v20[0];
    v11 = *(v20[0] + *(**(v9 + 24 * (v8 & ~(v8 >> 31))) + 24));
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = (v9 + 24 * i);
        v14 = *v13;
        v15 = v13[1];
        if (*v13 != v15)
        {
          v16 = __p[0];
          do
          {
            v17 = *(*v14 + 28);
            if ((v17 & 0x80000000) == 0)
            {
              v18 = *(*a2 + 4 * v17) + a3 * exp((((v10[*(*v14 + 24)] + *(*v14 + 32)) + v16[*(*v14 + 24)]) - v11));
              *(*a2 + 4 * v17) = v18;
            }

            v14 += 8;
          }

          while (v14 != v15);
        }
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
      v10 = v20[0];
    }

    if (v10)
    {
      v20[1] = v10;
      operator delete(v10);
    }
  }
}

void sub_26D3EDB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sentencepiece::unigram::Lattice::CalculateEntropy(sentencepiece::unigram::Lattice *this, float a2)
{
  v5 = *(this + 3);
  v4 = *(this + 4);
  v6 = *(this + 16) + *(this + 17) * *(this + 18);
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v29, v6);
  sentencepiece::unigram::Lattice::ForwardAlgorithm(this, a2, __p);
  v7 = 0;
  v27 = *(this + 6);
  v25 = (((v4 - v5) >> 3) - 1) & ~((((v4 - v5) >> 3) - 1) >> 31);
  v26 = this;
  do
  {
    v8 = (v27 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = (*(v26 + 9) + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = __p[0];
      v15 = v29[0];
      do
      {
        if (v12 != v13)
        {
          v16 = *(*v9 + 24);
          v17 = v15[v16];
          v18 = v12;
          do
          {
            v19 = *v18++;
            v20 = *(v19 + 24);
            v21 = (v14[v20] + (a2 * *(v19 + 32))) - v14[v16];
            v17 = v17 + (expf(v21) * (v21 + v15[v20]));
            v15[v16] = v17;
          }

          while (v18 != v13);
        }

        v9 += 8;
      }

      while (v9 != v10);
    }

    ++v7;
  }

  while (v7 != v25 + 1);
  v22 = v29[0];
  v23 = *(v29[0] + *(**(v27 + 24 * v25) + 24));
  if (!__p[0] || (__p[1] = __p[0], operator delete(__p[0]), (v22 = v29[0]) != 0))
  {
    v29[1] = v22;
    operator delete(v22);
  }

  return -v23;
}

void sub_26D3EDD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Lattice::NBest(sentencepiece::unigram::Lattice *this@<X0>, float a2@<S0>, uint64_t a3@<X1>, int a4@<W2>, void *a5@<X8>)
{
  v6 = a4;
  v7 = a3;
  v8 = this;
  v159 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    if ((a4 & 1) == 0)
    {
      sentencepiece::unigram::Lattice::Viterbi(this, &v155);
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*>(a5, &v155, &v157[1], 1uLL);
      if (v155)
      {
        *&v156 = v155;
        operator delete(v155);
      }

      goto LABEL_128;
    }
  }

  else if (!a3)
  {
    if (sentencepiece::logging::GetMinLogLevel(this) <= 1)
    {
      LOBYTE(v155) = 0;
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x26D6BEE80](v11, 351);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "LOG(", 4);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "WARNING", 7);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ") ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "nbest_size >= 1. Returns empty result.", 38);
      sentencepiece::error::Die::~Die(&v155);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_128;
  }

  v156 = 0u;
  memset(v157, 0, sizeof(v157));
  v155 = &unk_287EBBC20;
  v158 = 512;
  v153 = 0;
  v154 = 0uLL;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v149 = v17;
  v18 = ((*(v8 + 4) - *(v8 + 3)) >> 3) - 1;
  *v17 = **(*(v8 + 6) + 24 * (v18 & ~(v18 >> 31)));
  *(v17 + 8) = 0;
  *(v17 + 20) = 0;
  v19 = *(v8 + 16) + *(v8 + 17) * *(v8 + 18);
  *v141 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v19);
  if (v6)
  {
    sentencepiece::unigram::Lattice::ForwardAlgorithm(v8, a2, v141);
    v20 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v141;
    __p[2] = *&v141[16];
    RandomGenerator = sentencepiece::random::GetRandomGenerator(v20);
    v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator);
    v23 = logf((vcvts_n_f32_u32(v22, 0x20uLL) + 0.0) + 0.0000001);
    v24 = -logf(-v23);
  }

  else
  {
    sentencepiece::unigram::Lattice::Viterbi(v8, v147);
    if (v147[0])
    {
      v147[1] = v147[0];
      operator delete(v147[0]);
    }

    v24 = *(*v17 + 36);
  }

  *(v17 + 16) = v24;
  v25 = v154;
  v132 = 0;
  v131 = (10 * v7);
  if (10 * v7 >= 512)
  {
    v26 = 512;
  }

  else
  {
    v26 = 10 * v7;
  }

  v130 = v26;
  if (v26 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v135 = v27;
  v136 = v6;
  while (1)
  {
    v28 = v153;
    if (v153 == v25)
    {
      break;
    }

    v29 = *v153;
    v30 = (v25 - v153) >> 3;
    if (v30 >= 2)
    {
      v31 = 0;
      v32 = v153;
      do
      {
        v33 = v32;
        v32 += v31 + 1;
        v34 = 2 * v31;
        v31 = (2 * v31) | 1;
        v35 = v34 + 2;
        if (v35 < v30 && *(*v32 + 16) < *(v32[1] + 16))
        {
          ++v32;
          v31 = v35;
        }

        *v33 = *v32;
      }

      while (v31 <= ((v30 - 2) >> 1));
      v36 = v25 - 8;
      if (v32 == (v25 - 8))
      {
        *v32 = v29;
      }

      else
      {
        *v32 = *v36;
        *v36 = v29;
      }
    }

    v25 = (v154 - 8);
    *&v154 = v154 - 8;
    v37 = *v29;
    v38 = *(v8 + 9);
    if (*v29 == **v38)
    {
      std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::resize(a5, ((a5[1] - *a5) >> 5) + 1);
      v39 = (v29 + 1);
      while (1)
      {
        v40 = *v39;
        v41 = *v39;
        v42 = v41[1];
        v39 = (v41 + 1);
        if (!v42)
        {
          break;
        }

        std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](a5[1] - 32, v40);
      }

      v43 = a5[1];
      *(v43 - 8) = *(v29 + 4);
      if (v7 == (v43 - *a5) >> 5)
      {
        break;
      }
    }

    else
    {
      v44 = (v38[3 * *(v37 + 16) + 1] - v38[3 * *(v37 + 16)]);
      *v141 = 0;
      std::vector<float>::vector[abi:ne200100](v146, v44);
      *v141 = 0;
      std::vector<float>::vector[abi:ne200100](v145, v44);
      v133 = v7;
      *v141 = 0;
      MinLogLevel = std::vector<double>::vector[abi:ne200100](&v143, v44);
      v46 = *(v37 + 16);
      v47 = *(v8 + 9);
      if (v6)
      {
        v48 = *(v47 + 24 * v46);
        v49 = -100000000.0;
        if (*(v47 + 24 * v46 + 8) != v48)
        {
          v50 = 0;
          v51 = *(__p[0] + *(v37 + 24));
          v49 = -100000000.0;
          do
          {
            v52 = ((*(v29 + 5) + *(__p[0] + *(*(v48 + 8 * v50) + 24))) + (a2 * *(*(v48 + 8 * v50) + 32))) - v51;
            *(v146[0] + v50) = v52;
            v53 = sentencepiece::random::GetRandomGenerator(MinLogLevel);
            v54 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v53);
            v55 = logf((vcvts_n_f32_u32(v54, 0x20uLL) + 0.0) + 0.0000001);
            v56 = v52 - logf(-v55);
            *(v145[0] + v50) = v56;
            if (v56 > v49)
            {
              v49 = v56;
            }

            ++v50;
            v57 = *(v37 + 16);
            v47 = *(v8 + 9);
            v48 = *(v47 + 24 * v57);
          }

          while (v50 < (*(v47 + 24 * v57 + 8) - v48) >> 3);
          v46 = *(v37 + 16);
        }

        v58 = v143;
        if (v144 != v143)
        {
          v59 = *(v29 + 4);
          v60 = v145[0];
          if (((v144 - v143) >> 3) <= 1)
          {
            v61 = 1;
          }

          else
          {
            v61 = (v144 - v143) >> 3;
          }

          do
          {
            v62 = *v60++;
            v63 = expf(v62 - v49);
            v64 = (v59 - v62) + log1pf(-v63);
            v65 = v59 - fmaxf(v64, 0.0);
            v66 = expf(-fabsf(v64));
            *v58++ = (v65 - log1pf(v66));
            --v61;
          }

          while (v61);
        }

        v6 = v136;
      }

      v67 = *(v47 + 24 * v46);
      if (*(v47 + 24 * v46 + 8) != v67)
      {
        v68 = 0;
        do
        {
          v69 = *(v67 + 8 * v68);
          *v141 = v70;
          *v70 = v69;
          if (v6)
          {
            *(v70 + 20) = *(v146[0] + v68);
            v71 = *(v143 + v68);
          }

          else
          {
            *(v70 + 20) = *(v69 + 32) + *(v29 + 5);
            v71 = *(v69 + 36) + *(v29 + 5);
          }

          *(v70 + 16) = v71;
          *(v70 + 8) = v29;
          v25 = v154;
          ++v68;
          v67 = *(*(v8 + 9) + 24 * *(v37 + 16));
        }

        while (v68 < (*(*(v8 + 9) + 24 * *(v37 + 16) + 8) - v67) >> 3);
      }

      v7 = v133;
      if (!(((v157[1] + v157[2] * v158) < 0x3B9ACA00) | v132 & 1))
      {
        MinLogLevel = sentencepiece::logging::GetMinLogLevel(MinLogLevel);
        if (MinLogLevel <= 1)
        {
          v141[0] = 0;
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
          v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "(", 1);
          v74 = MEMORY[0x26D6BEE80](v73, 475);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ") ", 2);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "LOG(", 4);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "WARNING", 7);
          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ") ", 2);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Allocator size exceeds ", 23);
          v80 = MEMORY[0x26D6BEE80](v79, 1000000000);
          v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " with an example of length ", 27);
          v82 = ((*(v8 + 4) - *(v8 + 3)) >> 3) - 1;
          MEMORY[0x26D6BEE80](v81, v82 & ~(v82 >> 31));
          sentencepiece::error::Die::~Die(v141);
        }

        v132 = 1;
      }

      v83 = v153;
      if (((v25 - v153) >> 3) >> 4 < 0x271)
      {
        v6 = v136;
      }

      else
      {
        v151 = 0;
        v152 = 0uLL;
        memset(&v141[8], 0, 40);
        *v141 = &unk_287EBBC20;
        v142 = 512;
        *v138 = 0u;
        v139 = 0u;
        v140 = 1065353216;
        ++HIDWORD(v131);
        if (sentencepiece::logging::GetMinLogLevel(MinLogLevel) <= 1)
        {
          LOBYTE(v150) = 0;
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
          v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "(", 1);
          v86 = MEMORY[0x26D6BEE80](v85, 495);
          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, ") ", 2);
          v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "LOG(", 4);
          v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "WARNING", 7);
          v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ") ", 2);
          v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "Too big agenda size ", 20);
          v92 = MEMORY[0x26D6BEEA0](v91, (v25 - v83) >> 3);
          v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, ". Shrinking (round ", 19);
          v94 = MEMORY[0x26D6BEE80](v93, HIDWORD(v131));
          v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ") down to ", 10);
          v96 = MEMORY[0x26D6BEE80](v95, v130);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ".", 1);
          sentencepiece::error::Die::~Die(&v150);
        }

        if (v131 >= 1)
        {
          v129 = v8;
          v97 = 0;
          while (1)
          {
            v98 = v153;
            v99 = *v153;
            v150 = 0;
            if (!v99)
            {
              goto LABEL_101;
            }

            v100 = &v150;
            do
            {
              v101 = 0x9DDFEA08EB382D69 * ((8 * (v99 & 0x1FFFFFFF) + 8) ^ HIDWORD(v99));
              v102 = 0x9DDFEA08EB382D69 * (HIDWORD(v99) ^ (v101 >> 47) ^ v101);
              v103 = 0x9DDFEA08EB382D69 * (v102 ^ (v102 >> 47));
              if (v138[1])
              {
                v104 = vcnt_s8(v138[1]);
                v104.i16[0] = vaddlv_u8(v104);
                if (v104.u32[0] > 1uLL)
                {
                  v105 = 0x9DDFEA08EB382D69 * (v102 ^ (v102 >> 47));
                  if (v103 >= v138[1])
                  {
                    v105 = v103 % v138[1];
                  }
                }

                else
                {
                  v105 = v103 & (v138[1] - 1);
                }

                v106 = *(v138[0] + v105);
                if (v106)
                {
                  for (i = *v106; i; i = *i)
                  {
                    v108 = i[1];
                    if (v108 == v103)
                    {
                      if (i[2] == v99)
                      {
                        *v100 = i[3];
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      if (v104.u32[0] > 1uLL)
                      {
                        if (v108 >= v138[1])
                        {
                          v108 %= v138[1];
                        }
                      }

                      else
                      {
                        v108 &= v138[1] - 1;
                      }

                      if (v108 != v105)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v110 = *v99;
              *(v109 + 16) = *(v99 + 16);
              *v109 = v110;
              *v100 = v109;
              if (!v138[1])
              {
                goto LABEL_99;
              }

              v111 = vcnt_s8(v138[1]);
              v111.i16[0] = vaddlv_u8(v111);
              if (v111.u32[0] > 1uLL)
              {
                v112 = v103;
                if (v103 >= v138[1])
                {
                  v112 = v103 % v138[1];
                }
              }

              else
              {
                v112 = (v138[1] - 1) & v103;
              }

              v113 = *(v138[0] + v112);
              if (!v113 || (v114 = *v113) == 0)
              {
LABEL_99:
                operator new();
              }

              while (1)
              {
                v115 = v114[1];
                if (v115 == v103)
                {
                  break;
                }

                if (v111.u32[0] > 1uLL)
                {
                  if (v115 >= v138[1])
                  {
                    v115 %= v138[1];
                  }
                }

                else
                {
                  v115 &= v138[1] - 1;
                }

                if (v115 != v112)
                {
                  goto LABEL_99;
                }

LABEL_98:
                v114 = *v114;
                if (!v114)
                {
                  goto LABEL_99;
                }
              }

              if (v114[2] != v99)
              {
                goto LABEL_98;
              }

              v99 = *(v99 + 8);
              v100 = (v109 + 8);
            }

            while (v99);
LABEL_101:
            v137 = v150;
            v116 = (v25 - v98) >> 3;
            v6 = v136;
            v7 = v133;
            if (v116 >= 2)
            {
              v117 = 0;
              v118 = *v98;
              v119 = v98;
              do
              {
                v120 = v119;
                v119 += v117 + 1;
                v121 = 2 * v117;
                v117 = (2 * v117) | 1;
                v122 = v121 + 2;
                if (v122 < v116 && *(*v119 + 16) < *(v119[1] + 16))
                {
                  ++v119;
                  v117 = v122;
                }

                *v120 = *v119;
              }

              while (v117 <= ((v116 - 2) >> 1));
              v123 = v25 - 8;
              if (v119 == (v25 - 8))
              {
                *v119 = v118;
              }

              else
              {
                *v119 = *v123;
                *v123 = v118;
              }
            }

            v25 = (v154 - 8);
            *&v154 = v154 - 8;
            if (++v97 == v135)
            {
              v83 = v153;
              v8 = v129;
              goto LABEL_114;
            }
          }
        }

        v6 = v136;
LABEL_114:
        if (v83)
        {
          *&v154 = v83;
          operator delete(v83);
        }

        v153 = v151;
        v134 = v152;
        v154 = v152;
        v124 = v156;
        v156 = *&v141[8];
        *&v141[8] = v124;
        v125 = *&v141[24];
        v126 = v158;
        *&v141[24] = v157[0];
        v127 = *&v157[1];
        *&v157[1] = *&v141[32];
        *&v141[32] = v127;
        v157[0] = v125;
        v158 = v142;
        v142 = v126;
        v25 = v134;
      }

      if (v143)
      {
        v144 = v143;
        operator delete(v143);
      }

      if (v145[0])
      {
        v145[1] = v145[0];
        operator delete(v145[0]);
      }

      if (v146[0])
      {
        v146[1] = v146[0];
        operator delete(v146[0]);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v153)
  {
    operator delete(v153);
  }

LABEL_128:
  v128 = *MEMORY[0x277D85DE8];
}

void sub_26D3EECF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  v53 = *(v51 - 256);
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (v53)
  {
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sentencepiece::model::FreeList<sentencepiece::unigram::anonymous namespace::Hypothesis>::Allocate(void *a1)
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
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 24 * v4;
  a1[4] = v4 + 1;
  return result;
}

void std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__append(a1, v5);
  }
}

uint64_t std::unordered_map<sentencepiece::unigram::anonymous namespace::Hypothesis const*,sentencepiece::unigram::anonymous namespace::Hypothesis*>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sentencepiece::model::FreeList<sentencepiece::unigram::anonymous namespace::Hypothesis>::~FreeList(void *a1)
{
  *a1 = &unk_287EBBC20;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x26D6BF010](*v2, 0x1020C8062D53EE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sentencepiece::unigram::Lattice::Sample(sentencepiece::unigram::Lattice *this@<X0>, float a2@<S0>, unint64_t *a3@<X8>)
{
  if ((((*(this + 4) - *(this + 3)) >> 3) - 1) <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v6 = *(this + 16) + *(this + 17) * *(this + 18);
    LODWORD(__src[0]) = 0;
    std::vector<float>::vector[abi:ne200100](__p, v6);
    sentencepiece::unigram::Lattice::ForwardAlgorithm(this, a2, __src);
    v7 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v43 = v41;
    RandomGenerator = sentencepiece::random::GetRandomGenerator(v7);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    v9 = ((*(this + 4) - *(this + 3)) >> 3) - 1;
    v10 = **(*(this + 6) + 24 * (v9 & ~(v9 >> 31)));
    v11 = *(__p[0] + *(v10 + 24));
    v39 = v10;
    do
    {
      v12 = __src[0];
      __src[1] = __src[0];
      v13 = (*(this + 9) + 24 * *(v39 + 16));
      v14 = *v13;
      v15 = v13[1];
      v16 = __src[0];
      if (*v13 != v15)
      {
        do
        {
          v17 = exp(((*(__p[0] + *(*v14 + 24)) + (a2 * *(*v14 + 32))) - v11));
          if (v12 >= v41)
          {
            v18 = __src[0];
            v19 = v12 - __src[0];
            v20 = (v12 - __src[0]) >> 2;
            v21 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v22 = v41 - __src[0];
            if ((v41 - __src[0]) >> 1 > v21)
            {
              v21 = v22 >> 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v23 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v23);
            }

            v24 = v20;
            v25 = (4 * v20);
            v26 = &v25[-v24];
            *v25 = v17;
            v12 = v25 + 1;
            memcpy(v26, v18, v19);
            v27 = __src[0];
            __src[0] = v26;
            __src[1] = v12;
            v41 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v12++ = v17;
          }

          __src[1] = v12;
          v14 += 8;
        }

        while (v14 != v15);
        v16 = __src[0];
      }

      std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(v38, v16, v12);
      v28 = *(v39 + 16);
      v29 = *(this + 9);
      v30 = *(*(v29 + 24 * v28) + 8 * std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v38, RandomGenerator, v38));
      v39 = v30;
      v31 = ***(this + 9);
      if (v30 != v31)
      {
        v11 = *(__p[0] + *(v30 + 24));
        std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](a3, &v39);
      }

      if (v38[0])
      {
        v38[1] = v38[0];
        operator delete(v38[0]);
      }
    }

    while (v30 != v31);
    v33 = *a3;
    v32 = a3[1];
    if (*a3 != v32)
    {
      v34 = (v32 - 8);
      if (v34 > v33)
      {
        v35 = v33 + 8;
        do
        {
          v36 = *(v35 - 8);
          *(v35 - 8) = *v34;
          *v34-- = v36;
          v37 = v35 >= v34;
          v35 += 8;
        }

        while (!v37);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_26D3EF398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Model::PopulateNodes(sentencepiece::unigram::Model *this, sentencepiece::unigram::Lattice *a2)
{
  v4 = *(this + 26);
  v5 = ((*(a2 + 4) - *(a2 + 3)) >> 3) - 1;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](&__p, *(this + 23) + 1);
  v43 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v42 = v6 + v7;
  do
  {
    v10 = *(*(a2 + 3) + 8 * v8);
    v11 = __p;
    v12 = (v47 - __p) >> 4;
    v13 = *(this + 5);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v42 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v42 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v45 = 1;
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(", 1);
      v28 = MEMORY[0x26D6BEE80](v27, 572);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") [", 3);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "(num_nodes) < (trie_results.size())", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "] ", 2);
      sentencepiece::error::Die::~Die(&v45);
    }

    if (!v16)
    {
LABEL_38:
      v41 = sentencepiece::unigram::Lattice::Insert(a2, v8, 1);
      *(v41 + 28) = *(this + 22);
      *(v41 + 32) = v9;
      goto LABEL_39;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      while (1)
      {
        v33 = (__p + 16 * v31);
        v34 = (*(a2 + 3) + v44);
        v35 = -1;
        do
        {
          v36 = *v34++;
          ++v35;
        }

        while (v36 < &v10[*(v33 + 1)]);
        v37 = *v33;
        if ((*(**(this + 1) + 128))(*(this + 1), v37))
        {
          break;
        }

        v38 = v8;
        v39 = sentencepiece::unigram::Lattice::Insert(a2, v8, v35);
        *(v39 + 28) = v37;
        if ((*(**(this + 1) + 136))(*(this + 1), v37))
        {
          v40 = (*(this + 27) * v35) + -0.1;
        }

        else
        {
          v40 = (*(**(this + 1) + 96))(*(this + 1), v37);
        }

        *(v39 + 32) = v40;
        if (!v32)
        {
          v32 = *(v39 + 20) == 1;
          v8 = v38;
          break;
        }

        ++v31;
        v32 = 1;
        v8 = v38;
        if (v31 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v31;
    }

    while (v31 != v16);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v44 += 8;
  }

  while (v8 != v43);
LABEL_40:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_26D3EF7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::unigram::Model *sentencepiece::unigram::Model::Model(sentencepiece::unigram::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *(v4 + 13) = 0;
  *(v4 + 28) = 0;
  *v4 = &unk_287EBBAC8;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  v5 = 0;
  *(this + 13) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(this + 1) + 16))(*(this + 1)))
  {
    if ((*(**(this + 1) + 104))(*(this + 1), v5))
    {
      v6 = (*(**(this + 1) + 96))(*(this + 1), v5);
      if (v6 >= *(this + 26))
      {
        v6 = *(this + 26);
      }

      *(this + 26) = v6;
      v7 = (*(**(this + 1) + 96))(*(this + 1), v5);
      if (*(this + 27) >= v7)
      {
        v7 = *(this + 27);
      }

      *(this + 27) = v7;
    }

    ++v5;
  }

  return this;
}

sentencepiece::ModelInterface *sentencepiece::ModelInterface::ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_287EBB4E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_287EBB608;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = &unk_287EBB608;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  sentencepiece::util::Status::Status(this + 12);
  return this;
}

void sub_26D3EFA10(_Unwind_Exception *a1)
{
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sentencepiece::unigram::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = a3 + 2;
  }

  else
  {
    v9 = &unk_26D454396;
  }

  v10 = sentencepiece::ModelInterface::ModelInterface(a1, a2, v9, v8);
  *v10 = &unk_287EBBAC8;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sentencepiece::util::Status::Status(&v16, (a1 + 96));
  v13 = v16;
  sentencepiece::util::Status::~Status(&v16);
  if (!v13)
  {
    sentencepiece::mmap_util::DecodePrefix<float>(a3, a4, v11, &v16);
    sentencepiece::util::Status::operator=((a1 + 96), &v16);
    sentencepiece::util::Status::~Status(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sentencepiece::util::Status::~Status(&v16);
    if (!v14)
    {
      sentencepiece::mmap_util::DecodePrefix<float>(a3 + 1, a4 - 4, v12, &v16);
      sentencepiece::util::Status::operator=((a1 + 96), &v16);
      sentencepiece::util::Status::~Status(&v16);
    }
  }

  return a1;
}

void sub_26D3EFB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::ModelInterface::~ModelInterface(v2);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::DecodePrefix<float>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x26D6BEE80](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x26D6BEFC0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void sentencepiece::unigram::Model::~Model(sentencepiece::unigram::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::unigram::Model::Encode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 28))
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sentencepiece::util::Status::~Status(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sentencepiece::util::Status::~Status(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = &unk_287EBBAA8;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = &unk_287EBBBF0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sentencepiece::unigram::Lattice::SetSentence(&v23, a2, a3);
    sentencepiece::unigram::Model::PopulateNodes(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sentencepiece::unigram::Lattice::Viterbi(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sentencepiece::unigram::Lattice::~Lattice(&v23);
  }

  else
  {

    sentencepiece::unigram::Model::EncodeOptimized(a1, a2, a3, a4);
  }
}

void sub_26D3F00AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sentencepiece::unigram::Lattice::~Lattice(&a13);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::EncodeOptimized(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sentencepiece::util::Status::~Status(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a3 << 32 != 0xFFFFFFFF00000000)
  {
    if ((((a3 << 32) + 0x100000000) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_26D45475E[*(a2 + v8) >> 4])
      {
        v12 = asc_26D45475E[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_26D3F0610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::NBestEncode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sentencepiece::util::Status::~Status(__p);
    goto LABEL_3;
  }

  sentencepiece::util::Status::~Status(__p);
  if (!a3)
  {
LABEL_3:
    memset(__p, 0, 24);
    std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_5:
      operator delete(v10);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 >= 1024)
  {
    v12 = 1024;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4 > 1)
  {
    __p[0] = &unk_287EBBAA8;
    memset(&__p[1], 0, 88);
    __p[12] = &unk_287EBBBF0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v37 = 1024;
    sentencepiece::unigram::Lattice::SetSentence(__p, a2, a3);
    sentencepiece::unigram::Model::PopulateNodes(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sentencepiece::unigram::Lattice::NBest(__p, 0.0, v13, 0, &v31);
    v27 = *(&v31 + 1);
    for (i = v31; i != v27; i += 32)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v15 = *i;
      v16 = *(i + 8);
      if (*i != v16)
      {
        v17 = 0;
        do
        {
          v18 = *v15;
          if (v17 >= v30)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v28) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v30 - v28) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v30 - v28) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v30 - v28) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v28, v21);
            }

            v22 = 24 * v19;
            *v22 = *v18;
            *(v22 + 16) = *(v18 + 28);
            v17 = 24 * v19 + 24;
            v23 = (v22 - (v29 - v28));
            memcpy(v23, v28, v29 - v28);
            v24 = v28;
            v28 = v23;
            v29 = v17;
            v30 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v17 = *v18;
            *(v17 + 16) = *(v18 + 28);
            v17 += 24;
          }

          v29 = v17;
          ++v15;
        }

        while (v15 != v16);
      }

      v25 = a5[1];
      if (v25 >= a5[2])
      {
        v26 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float const&>(a5, &v28, (i + 24));
      }

      else
      {
        std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string_view,int>>&,float const&>(a5, &v28, (i + 24));
        v26 = (v25 + 32);
      }

      a5[1] = v26;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    v28 = &v31;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v28);
    sentencepiece::unigram::Lattice::~Lattice(__p);
  }

  else
  {
    (*(*a1 + 40))(&v31, a1, a2, a3);
    *__p = v31;
    __p[2] = v32;
    v32 = 0;
    v31 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v31;
    if (v31)
    {
      *(&v31 + 1) = v31;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_26D3F0A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  sentencepiece::unigram::Lattice::~Lattice(&__p);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::SampleEncode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v25);
  if (v25)
  {
    sentencepiece::util::Status::~Status(&v25);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v25);
  if (!a3)
  {
    goto LABEL_3;
  }

  v25 = &unk_287EBBAA8;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = &unk_287EBBBF0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v25, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(a1, &v25);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sentencepiece::unigram::Lattice::Sample(&v25, a5, &v23);
  v10 = v23;
  v11 = v24;
  if (v23 != v24)
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(a4 + 16);
      if (v12 >= v14)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a4) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v18);
        }

        v19 = 24 * v15;
        *v19 = *v13;
        *(v19 + 16) = *(v13 + 28);
        v12 = 24 * v15 + 24;
        v20 = *(a4 + 8) - *a4;
        v21 = v19 - v20;
        memcpy((v19 - v20), *a4, v20);
        v22 = *a4;
        *a4 = v21;
        *(a4 + 8) = v12;
        *(a4 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12 = *v13;
        *(v12 + 16) = *(v13 + 28);
        v12 += 24;
      }

      *(a4 + 8) = v12;
      ++v10;
    }

    while (v10 != v11);
    v10 = v23;
  }

  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }

  sentencepiece::unigram::Lattice::~Lattice(&v25);
}

void sentencepiece::unigram::Model::SampleEncodeAndScore(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v124);
  if (v124)
  {
    sentencepiece::util::Status::~Status(&v124);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v124);
  if (!a3)
  {
    goto LABEL_3;
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  v124 = &unk_287EBBAA8;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0;
  v131 = &unk_287EBBBF0;
  v132 = 0u;
  v133 = 0u;
  v134 = 0;
  v135 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v124, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(v14, &v124);
  sentencepiece::unigram::Lattice::ForwardAlgorithm(&v124, a8, v123);
  v17 = *(v123[0] + *(**(*(&v127 + 1) + 24 * ((((*(&v126 + 1) - v126) >> 3) - 1) & ~((((*(&v126 + 1) - v126) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v98 = a2;
    v100 = a3;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    sentencepiece::unigram::Lattice::Viterbi(&v124, &__p);
    v102 = v14;
    v18 = __p;
    v19 = v107;
    if (__p != v107)
    {
      v20 = v121;
      do
      {
        v21 = *v18;
        if (v20 >= v122)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v120) >> 3);
          v23 = v22 + 1;
          if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v122 - v120) >> 3) > v23)
          {
            v23 = 0x5555555555555556 * ((v122 - v120) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v122 - v120) >> 3) >= 0x555555555555555)
          {
            v24 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v120, v24);
          }

          v25 = 24 * v22;
          *v25 = *v21;
          *(v25 + 16) = v21[1].n128_u32[3];
          v20 = (24 * v22 + 24);
          v26 = (v25 - (v121 - v120));
          memcpy(v26, v120, v121 - v120);
          v27 = v120;
          v120 = v26;
          v121 = v20;
          v122 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v20 = *v21;
          v20[1].n128_u32[0] = v21[1].n128_u32[3];
          v20 = (v20 + 24);
        }

        v121 = v20;
        ++v18;
      }

      while (v18 != v19);
    }

    v118 = 0.0;
    v28 = v137;
    if (v137 >= v138)
    {
      v30 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,double>(&v136, &v120, &v118);
    }

    else
    {
      *v137 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v28, v120, v121, 0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3));
      v29 = v118;
      *(v28 + 24) = v29;
      v30 = (v28 + 32);
    }

    a2 = v98;
    a3 = v100;
    v14 = v102;
    v137 = v30;
    if (__p)
    {
      *&v107 = __p;
      operator delete(__p);
    }

    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

LABEL_31:
    if (a5)
    {
      sentencepiece::unigram::Lattice::NBest(&v124, a8, a4 + 1, 1, &v120);
      v97 = j;
      if (a6)
      {
        std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::vector[abi:ne200100](&v118, (v121 - v120) >> 5);
        v39 = v120;
        v38 = v121;
        if (v121 != v120)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          do
          {
            if (&v39[v40] != (*&v118 + v41))
            {
              std::vector<sentencepiece::unigram::Lattice::Node *>::__assign_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>((*&v118 + v41), v39[v40].n128_u64[0], v39[v40].n128_u64[1], (v39[v40].n128_u64[1] - v39[v40].n128_u64[0]) >> 3);
              v39 = v120;
              v38 = v121;
            }

            ++v42;
            v41 += 24;
            v40 += 2;
          }

          while (v42 < (v38 - v39) >> 5);
        }

        sentencepiece::unigram::Lattice::Viterbi(&v124, &__p);
        v43 = v118;
        v44 = v119;
        if (*&v118 == *&v119)
        {
          v47 = v118;
        }

        else
        {
          v45 = __p;
          v46 = v107 - __p;
          v47 = v118;
          while (*(*&v47 + 8) - **&v47 != v46 || memcmp(**&v47, v45, v46))
          {
            *&v47 += 24;
            if (*&v47 == *&v44)
            {
              v47 = v44;
              break;
            }
          }
        }

        v63 = 0xAAAAAAAAAAAAAAABLL * ((*&v47 - *&v43) >> 3);
        v64 = v121;
        if (v63 == (v121 - v120) >> 5)
        {
          v66 = v121 - 2;
          v65 = v121[-2].n128_u64[0];
          if (v65)
          {
            v121[-2].n128_u64[1] = v65;
            operator delete(v65);
          }
        }

        else
        {
          v66 = &v120[2 * v63];
          if (&v66[2] != v121)
          {
            do
            {
              v67 = v66 + 2;
              std::vector<sentencepiece::unigram::Lattice::Node *>::__move_assign(v66, v66 + 2);
              v66[1].n128_u32[2] = v66[3].n128_u32[2];
              v68 = v66 + 4;
              v66 += 2;
            }

            while (v68 != v64);
            v64 = v121;
            v66 = v67;
          }

          if (v64 != v66)
          {
            v69 = v64;
            do
            {
              v71 = v69[-2].n128_u64[0];
              v69 -= 2;
              v70 = v71;
              if (v71)
              {
                v64[-2].n128_u64[1] = v70;
                operator delete(v70);
              }

              v64 = v69;
            }

            while (v69 != v66);
          }
        }

        v121 = v66;
        if (__p)
        {
          *&v107 = __p;
          operator delete(__p);
        }

        __p = &v118;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v72 = v121[-2].n128_u64[0];
      v104 = v121 - 2;
      v73 = v121[-1].n128_f32[2];
      if (v72)
      {
        v121[-2].n128_u64[1] = v72;
        operator delete(v72);
      }

      v121 = v104;
      for (i = v120; i != v104; i += 2)
      {
        __p = 0;
        v107 = 0uLL;
        v75 = i->n128_u64[0];
        v76 = i->n128_i64[1];
        if (i->n128_u64[0] == v76)
        {
          v78 = 0.0;
        }

        else
        {
          v77 = 0;
          v78 = 0.0;
          do
          {
            v79 = *v75;
            v80 = *(*v75 + 32);
            if (v77 >= *(&v107 + 1))
            {
              v81 = 0xAAAAAAAAAAAAAAABLL * ((v77 - __p) >> 3);
              v82 = v81 + 1;
              if (v81 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*(&v107 + 1) - __p) >> 3) > v82)
              {
                v82 = 0x5555555555555556 * ((*(&v107 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v107 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v83 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v83 = v82;
              }

              if (v83)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&__p, v83);
              }

              v84 = 24 * v81;
              *v84 = *v79;
              *(v84 + 16) = *(v79 + 28);
              v77 = 24 * v81 + 24;
              v85 = (v84 - (v107 - __p));
              memcpy(v85, __p, v107 - __p);
              v86 = __p;
              __p = v85;
              v107 = v77;
              if (v86)
              {
                operator delete(v86);
              }
            }

            else
            {
              *v77 = *v79;
              *(v77 + 16) = *(v79 + 28);
              v77 += 24;
            }

            *&v107 = v77;
            v78 = v78 + (a8 * v80);
            ++v75;
          }

          while (v75 != v76);
        }

        *&v118 = v78 - v17;
        v87 = v137;
        if (v137 >= v138)
        {
          v88 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(&v136, &__p, &v118);
        }

        else
        {
          *v137 = 0;
          *(v87 + 8) = 0;
          *(v87 + 16) = 0;
          std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v87, __p, v107, 0xAAAAAAAAAAAAAAABLL * ((v107 - __p) >> 3));
          *(v87 + 24) = LODWORD(v118);
          v88 = (v87 + 32);
        }

        v137 = v88;
        if (__p)
        {
          *&v107 = __p;
          operator delete(__p);
        }
      }

      v89 = v136;
      v90 = v137;
      for (j = v97; v89 != v90; v89 += 32)
      {
        v91 = *(v89 + 24);
        if (v91 != 0.0)
        {
          v92 = v91 - v73;
          v93 = exp(v92);
          if (v92 <= -10.0)
          {
            v95 = v92 + v93 * -0.5 + v93 * v93 / 24.0 + pow(v93, 4.0) / -2880.0;
          }

          else
          {
            v94 = expm1(-v93);
            v95 = log(-v94);
          }

          v96 = v95;
          *(v89 + 24) = v96;
        }
      }

      __p = &v120;
      std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v49 = v136;
      v48 = v137;
    }

    else
    {
      v49 = v136;
      v48 = v137;
      if (a4 > (&v137[-v136] >> 5))
      {
        v99 = a2;
        v101 = a3;
        v103 = v14;
        do
        {
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0;
          __p = &unk_287EBBAA8;
          v113 = &unk_287EBBBF0;
          v114 = 0u;
          v115 = 0u;
          v116 = 0;
          v117 = 1024;
          sentencepiece::unigram::Lattice::SetSentence(&__p, a2, a3);
          sentencepiece::unigram::Model::PopulateNodes(v14, &__p);
          v120 = 0;
          v121 = 0;
          v122 = 0;
          sentencepiece::unigram::Lattice::Sample(&__p, a8, &v118);
          v51 = v118;
          v50 = v119;
          v52 = 0.0;
          if (*&v118 != *&v119)
          {
            v53 = v121;
            do
            {
              v54 = **&v51;
              if (v53 >= v122)
              {
                v55 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v120) >> 3);
                v56 = v55 + 1;
                if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v122 - v120) >> 3) > v56)
                {
                  v56 = 0x5555555555555556 * ((v122 - v120) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v122 - v120) >> 3) >= 0x555555555555555)
                {
                  v57 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v57 = v56;
                }

                if (v57)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v120, v57);
                }

                v58 = 24 * v55;
                *v58 = *v54;
                *(v58 + 16) = v54[1].n128_u32[3];
                v53 = (24 * v55 + 24);
                v59 = (v58 - (v121 - v120));
                memcpy(v59, v120, v121 - v120);
                v60 = v120;
                v120 = v59;
                v121 = v53;
                v122 = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v53 = *v54;
                v53[1].n128_u32[0] = v54[1].n128_u32[3];
                v53 = (v53 + 24);
              }

              v121 = v53;
              v52 = v52 + (a8 * v54[2].n128_f32[0]);
              *&v51 += 8;
            }

            while (*&v51 != *&v50);
          }

          v105 = v52 - v17;
          v61 = v137;
          if (v137 >= v138)
          {
            v62 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(&v136, &v120, &v105);
            v14 = v103;
          }

          else
          {
            *v137 = 0;
            *(v61 + 8) = 0;
            *(v61 + 16) = 0;
            std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v61, v120, v121, 0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3));
            v14 = v103;
            *(v61 + 24) = v105;
            v62 = (v61 + 32);
          }

          a2 = v99;
          a3 = v101;
          v137 = v62;
          if (v118 != 0.0)
          {
            v119 = v118;
            operator delete(*&v118);
          }

          if (v120)
          {
            v121 = v120;
            operator delete(v120);
          }

          sentencepiece::unigram::Lattice::~Lattice(&__p);
          v49 = v136;
          v48 = v137;
        }

        while (a4 > (&v137[-v136] >> 5));
      }
    }

    *j = v49;
    j[1] = v48;
    j[2] = v138;
    j = &v136;
    goto LABEL_120;
  }

  if (sentencepiece::logging::GetMinLogLevel(v16) <= 2)
  {
    LOBYTE(__p) = 0;
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "(", 1);
    v33 = MEMORY[0x26D6BEE80](v32, 717);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") ", 2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "LOG(", 4);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "ERROR", 5);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "include_best not supported for wor false", 40);
    sentencepiece::error::Die::~Die(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v123[0])
  {
    v123[1] = v123[0];
    operator delete(v123[0]);
  }

  sentencepiece::unigram::Lattice::~Lattice(&v124);
  v124 = &v136;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v124);
}

void sub_26D3F18B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  v49 = v46[22];
  if (v49)
  {
    v46[23] = v49;
    operator delete(v49);
  }

  v50 = v46[25];
  if (v50)
  {
    v46[26] = v50;
    operator delete(v50);
  }

  sentencepiece::unigram::Lattice::~Lattice(&a46);
  a46 = (v47 - 160);
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a46);
  _Unwind_Resume(a1);
}

float sentencepiece::unigram::Model::CalculateEntropy(sentencepiece::unigram::Model *a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v8 = &unk_287EBBAA8;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = &unk_287EBBBF0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v8, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(a1, &v8);
  v6 = sentencepiece::unigram::Lattice::CalculateEntropy(&v8, a4);
  sentencepiece::unigram::Lattice::~Lattice(&v8);
  return v6;
}

void sub_26D3F1AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::unigram::Lattice::~Lattice(va);
  _Unwind_Resume(a1);
}

BOOL sentencepiece::unigram::Model::VerifyOutputsEquivalent(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  strcpy(__s, " ");
  v10 = strlen(__s);
  absl::internal::Splitter::Splitter(&v45, a2, a3, __s, v10, 0);
  v48 = 0;
  v49 = 0;
  __p = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(&__p, v45, v46, (v46 - v45) >> 4);
  v11 = __p;
  v12 = v48;
  if (__p == v48)
  {
    v14 = 0.0;
    if (__p)
    {
LABEL_11:
      v48 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v13 = *(a1 + 104) + -10.0;
    v14 = 0.0;
    do
    {
      v15 = v11[1];
      v16 = (*(*a1 + 112))(a1, *v11, v15);
      if (v16 == *(a1 + 88))
      {
        v14 = v13 + v14;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v16))
        {
          v17 = (*(a1 + 108) * v15) + -0.1;
        }

        else
        {
          v17 = (*(**(a1 + 8) + 96))(*(a1 + 8), v16);
        }

        v14 = v17 + v14;
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  strcpy(__s, " ");
  v18 = strlen(__s);
  absl::internal::Splitter::Splitter(&v45, a4, a5, __s, v18, 0);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(&v42, v45, v46, (v46 - v45) >> 4);
  v19 = v42;
  v20 = v43;
  if (v42 != v43)
  {
    v21 = *(a1 + 104) + -10.0;
    v22 = 0.0;
    do
    {
      v23 = v19[1];
      v24 = (*(*a1 + 112))(a1, *v19, v23);
      if (v24 == *(a1 + 88))
      {
        v22 = v21 + v22;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v24))
        {
          v25 = (*(a1 + 108) * v23) + -0.1;
        }

        else
        {
          v25 = (*(**(a1 + 8) + 96))(*(a1 + 8), v24);
        }

        v22 = v25 + v22;
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v42;
    if (!v42)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v22 = 0.0;
  if (v42)
  {
LABEL_24:
    v43 = v19;
    operator delete(v19);
  }

LABEL_25:
  v26 = v45;
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v27 = vabds_f32(v14, v22);
  if (v27 > 0.0000001 && sentencepiece::logging::GetMinLogLevel(v26) <= 1)
  {
    LOBYTE(v45) = 0;
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "unigram_model.cc", 16);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
    v30 = MEMORY[0x26D6BEE80](v29, 840);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") ", 2);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "LOG(", 4);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "WARNING", 7);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") ", 2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Two sentence piece sequences are not equivalent! Left: ", 55);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, a2, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", Score: ", 9);
    v37 = std::ostream::operator<<();
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ". Right: ", 9);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, a4, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", Score: ", 9);
    v40 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ".", 1);
    sentencepiece::error::Die::~Die(&v45);
  }

  return v27 <= 0.0000001;
}

void sub_26D3F1F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Model::MemoryMappableString(sentencepiece::unigram::Model *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sentencepiece::ModelInterface::MemoryMappableString(this, &v13);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = *(this + 26);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(this + 27);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_26D3F20E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<sentencepiece::unigram::Lattice::Node *>::__init_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3F21B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string_view>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3F2270(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(void *a1)
{
  sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(a1);

  JUMPOUT(0x26D6BF040);
}

void *sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(void *a1)
{
  *a1 = &unk_287EBBBF0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x26D6BF010](*v2, 0x1070C8005A2B047);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<sentencepiece::unigram::anonymous namespace::Hypothesis *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D3F2684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<sentencepiece::unigram::Lattice::Node *>::__init_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sentencepiece::model::FreeList<sentencepiece::unigram::anonymous namespace::Hypothesis>::~FreeList(void *a1)
{

  JUMPOUT(0x26D6BF040);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::unigram::Lattice::NBest(unsigned long,BOOL,float)::HypothesisComparator &,std::__wrap_iter<sentencepiece::unigram::anonymous namespace::Hypothesis **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(v21);
  }

  return result;
}

void sub_26D3F2A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string_view,int>>&,float const&>(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float const&>(uint64_t a1, uint64_t *a2, _DWORD *a3)
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
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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

void sub_26D3F2C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,double>(uint64_t a1, uint64_t *a2, double *a3)
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

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v18 = 0;
  v19 = v10;
  v20 = v10;
  v21 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v11 = *a3;
  *(v10 + 24) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = &v19[-v13];
  memcpy(&v19[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(&v18);
  return v12;
}

void sub_26D3F2D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<sentencepiece::unigram::Lattice::Node *>::__assign_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 std::vector<sentencepiece::unigram::Lattice::Node *>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(uint64_t a1, uint64_t *a2, _DWORD *a3)
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
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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

void sub_26D3F30FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

sentencepiece::character::Model *sentencepiece::character::Model::Model(sentencepiece::character::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_287EBBC50;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void sentencepiece::character::Model::~Model(sentencepiece::character::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::character::Model::Encode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v21);
  if (v21)
  {
    sentencepiece::util::Status::~Status(&v21);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v21);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  do
  {
    v8 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, 0);
    v9 = (*(*a1 + 112))(a1, a2, v8);
    v11 = *(a4 + 8);
    v10 = *(a4 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v16);
      }

      v17 = 24 * v13;
      *v17 = a2;
      *(v17 + 8) = v8;
      *(v17 + 16) = v9;
      v12 = 24 * v13 + 24;
      v18 = *(a4 + 8) - *a4;
      v19 = v17 - v18;
      memcpy((v17 - v18), *a4, v18);
      v20 = *a4;
      *a4 = v19;
      *(a4 + 8) = v12;
      *(a4 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = v8;
      v12 = v11 + 24;
      *(v11 + 16) = v9;
    }

    *(a4 + 8) = v12;
    a2 += v8;
    a3 -= v8;
  }

  while (a3);
}

void sub_26D3F3390(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::word::Model *sentencepiece::word::Model::Model(sentencepiece::word::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_287EBBD68;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void sentencepiece::word::Model::~Model(sentencepiece::word::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::word::Model::Encode(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v22);
  if (v22)
  {
    sentencepiece::util::Status::~Status(&v22);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v22);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sentencepiece::SplitIntoWords(a2, a3, 0, 0, &v22);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    do
    {
      v10 = (*(*a1 + 112))(a1, *v8, v8[1]);
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v17);
        }

        v18 = 24 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        v13 = 24 * v14 + 24;
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy((v18 - v19), *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v8;
        *(v12 + 16) = v10;
        v13 = v12 + 24;
      }

      *(a4 + 8) = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_26D3F3650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void InitDefaultsscc_info_NBestSentencePieceText_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&sentencepiece::_NBestSentencePieceText_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_NBestSentencePieceText_default_instance_, v4);
}

void InitDefaultsscc_info_SentencePieceText_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::SentencePieceText::SentencePieceText(&sentencepiece::_SentencePieceText_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SentencePieceText_default_instance_, v4);
}

void InitDefaultsscc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(&sentencepiece::_SentencePieceText_SentencePiece_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SentencePieceText_SentencePiece_default_instance_, v4);
}

uint64_t sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBBE80;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

sentencepiece::SentencePieceText_SentencePiece *sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(sentencepiece::SentencePieceText_SentencePiece *this, const sentencepiece::SentencePieceText_SentencePiece *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBBE80;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = *(a2 + 10);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 10);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 48), (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 10);
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 56), (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  v14 = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 8) = v14;
  return this;
}

void sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(sentencepiece::SentencePieceText_SentencePiece *this)
{
  sentencepiece::SentencePieceText_SentencePiece::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(this);

  JUMPOUT(0x26D6BF040);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::SentencePieceText_SentencePiece::SharedDtor(sentencepiece::SentencePieceText_SentencePiece *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  result = (this + 48);
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x26D6BF040](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 7);
  v7 = (this + 56);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v9 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x26D6BF040](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_26D3F3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::InternalMetadata::Delete<std::string>(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x26D6BF040);
    }
  }

  return result;
}

void *sentencepiece::SentencePieceText_SentencePiece::default_instance(sentencepiece::SentencePieceText_SentencePiece *this)
{
  if (atomic_load_explicit(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto);
  }

  return &sentencepiece::_SentencePieceText_SentencePiece_default_instance_;
}

void sentencepiece::SentencePieceText_SentencePiece::Clear(sentencepiece::SentencePieceText_SentencePiece *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v2 = *(this + 10);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v2 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }

    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v4 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

LABEL_11:
  if ((v2 & 0x1C) != 0)
  {
    *(this + 18) = 0;
    *(this + 8) = 0;
  }

  *(this + 10) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SentencePieceText_SentencePiece::_InternalParse(sentencepiece::SentencePieceText_SentencePiece *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_62;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(this + 10) |= 1u;
            v18 = *(this + 1);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (this + 48);
LABEL_39:
            v23 = google::protobuf::internal::ArenaStringPtr::Mutable(v19, v18);
            v24 = google::protobuf::internal::InlineGreedyStringParser(v23, v36, a3);
LABEL_40:
            v36 = v24;
            if (!v24)
            {
              goto LABEL_62;
            }

            goto LABEL_41;
          }

LABEL_43:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x640)
          {
            v28 = *(this + 1);
            if (v28)
            {
              v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v29 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
              v7 = v36;
            }

            v24 = google::protobuf::internal::UnknownFieldParse(v8, v29, v7, a3);
          }

          else
          {
            v24 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_SentencePieceText_SentencePiece_default_instance_, this + 1, a3);
          }

          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_25:
          v36 = v15;
          *(this + 16) = v16;
          goto LABEL_41;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v36 = v34;
        *(this + 16) = v35;
        if (!v34)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(this + 10) |= 2u;
            v18 = *(this + 1);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (this + 56);
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_43;
          }

          v5 |= 8u;
          v20 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = (v21 + (v22 << 7) - 128);
          if ((v22 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_34:
            v36 = v20;
            *(this + 17) = v21;
            goto LABEL_41;
          }

          v30 = google::protobuf::internal::VarintParseSlow32(v7, v21);
          v36 = v30;
          *(this + 17) = v31;
          if (!v30)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_43;
          }

          v5 |= 0x10u;
          v11 = (v7 + 1);
          LODWORD(v12) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v11;
          v12 = (v12 + (v13 << 7) - 128);
          if ((v13 & 0x80000000) == 0)
          {
            v11 = (v7 + 2);
LABEL_15:
            v36 = v11;
            *(this + 18) = v12;
            goto LABEL_41;
          }

          v32 = google::protobuf::internal::VarintParseSlow32(v7, v12);
          v36 = v32;
          *(this + 18) = v33;
          if (!v32)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_41:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v36;
}

unsigned __int8 *sentencepiece::SentencePieceText_SentencePiece::_InternalSerialize(sentencepiece::SentencePieceText_SentencePiece *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 16);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 17);
  *v4 = 32;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 18);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_39:
  v19 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v20 = v19;
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v20;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if (*a3 - v19 >= v24)
  {
    v26 = v24;
    memcpy(v19, v25, v24);
    v20 += v26;
    return v20;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v25, v24, v19);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = (a4 + 2);
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = (a4 + 2);
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = (a4 + 1);
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

uint64_t sentencepiece::SentencePieceText_SentencePiece::ByteSizeLong(sentencepiece::SentencePieceText_SentencePiece *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = *(this + 1);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(this + 11) = result;
  return result;
}

void sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom(sentencepiece::SentencePieceText_SentencePiece *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SentencePieceText_SentencePiece::MergeFrom(this, lpsrc);
}

void sentencepiece::SentencePieceText_SentencePiece::MergeFrom(sentencepiece::SentencePieceText_SentencePiece *this, const sentencepiece::SentencePieceText_SentencePiece *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 375);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 10);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 6);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 7);
    *(this + 10) |= 2u;
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(this + 16) = *(a2 + 16);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
LABEL_20:
        *(this + 10) |= v13;
        return;
      }

LABEL_19:
      *(this + 18) = *(a2 + 18);
      goto LABEL_20;
    }

LABEL_29:
    *(this + 17) = *(a2 + 17);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_26D3F473C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceText_SentencePiece::CopyFrom(sentencepiece::SentencePieceText_SentencePiece *this, const sentencepiece::SentencePieceText_SentencePiece *a2)
{
  if (a2 != this)
  {
    sentencepiece::SentencePieceText_SentencePiece::Clear(this);

    sentencepiece::SentencePieceText_SentencePiece::MergeFrom(this, a2);
  }
}

uint64_t *sentencepiece::SentencePieceText_SentencePiece::InternalSwap(sentencepiece::SentencePieceText_SentencePiece *this, sentencepiece::SentencePieceText_SentencePiece *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = *(v10 + 2);
  v12 = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  *(v10 + 2) = v13;
  *v9 = v12;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (this + 48);
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(result, v14);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 6, v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v20 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 7, v5);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 7, v5);
    v21 = v20[2];
    v22 = *v20;
    v23 = result[2];
    *v20 = *result;
    v20[2] = v23;
    *result = v22;
    result[2] = v21;
  }

  v24 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v24;
  LODWORD(v24) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v24;
  return result;
}

uint64_t sentencepiece::SentencePieceText::SentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBBF00;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  return a1;
}

void sub_26D3F4A2C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

sentencepiece::SentencePieceText *sentencepiece::SentencePieceText::SentencePieceText(sentencepiece::SentencePieceText *this, const sentencepiece::SentencePieceText *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *this = &unk_287EBBF00;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0u;
  *(this + 44) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48, a2 + 48);
  v5 = *(a2 + 1);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 40))
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 72), (*(a2 + 9) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_26D3F4B60(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v1 + 48));
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceText::~SentencePieceText(sentencepiece::SentencePieceText *this)
{
  sentencepiece::SentencePieceText::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText::~SentencePieceText(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::SentencePieceText::SharedDtor(sentencepiece::SentencePieceText *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  v5 = *(this + 9);
  v4 = (this + 72);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x26D6BF040](v7, 0x1012C40EC159624);
  }
}

void sub_26D3F4C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::SentencePieceText::default_instance(sentencepiece::SentencePieceText *this)
{
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  return &sentencepiece::_SentencePieceText_default_instance_;
}

void sentencepiece::SentencePieceText::Clear(sentencepiece::SentencePieceText *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48);
  if (*(this + 40))
  {
    v2 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 20) = 0;
  *(this + 10) = 0;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SentencePieceText::_InternalParse(sentencepiece::SentencePieceText *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v28, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(this + 20) = *v7;
          v28 = (v7 + 4);
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = v7 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v28 = (v14 + 1);
            v16 = *(this + 8);
            if (!v16)
            {
              break;
            }

            v21 = *(this + 14);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(this + 14) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(this + 15))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v28;
LABEL_27:
            v14 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(a3, v18, v15);
            v28 = v14;
            if (!v14)
            {
              goto LABEL_48;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_44;
            }
          }

          v17 = *(this + 15);
LABEL_23:
          google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 12, v17 + 1);
          v16 = *(this + 8);
          v17 = *v16;
          goto LABEL_24;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 20) = v8 - 1;
          goto LABEL_2;
        }

        if (v8 < 0x640)
        {
          v26 = *(this + 1);
          if (v26)
          {
            v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v27 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v7 = v28;
          }

          v13 = google::protobuf::internal::UnknownFieldParse(v8, v27, v7, a3);
        }

        else
        {
          v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_SentencePieceText_default_instance_, this + 1, a3);
        }

        goto LABEL_43;
      }

      if (v10 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(this + 10) |= 1u;
      v22 = *(this + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 9, v22);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v23, v28, a3);
LABEL_43:
      v28 = v13;
      if (!v13)
      {
LABEL_48:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v28, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v28;
}

unsigned __int8 *sentencepiece::SentencePieceText::_InternalSerialize(sentencepiece::SentencePieceText *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48, i);
      *v4 = 18;
      v10 = *(v9 + 11);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sentencepiece::SentencePieceText_SentencePiece::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 20);
    *v4 = 29;
    *(v4 + 1) = v15;
    v4 += 5;
  }

  v16 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v17 = v16;
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v17;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v16 >= v21)
  {
    v23 = v21;
    memcpy(v16, v22, v21);
    v17 += v23;
    return v17;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v22, v21, v16);
}

uint64_t sentencepiece::SentencePieceText::ByteSizeLong(sentencepiece::SentencePieceText *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = v2 + v3;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sentencepiece::SentencePieceText_SentencePiece::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += 5;
    }
  }

  v14 = *(this + 1);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v4 += v17;
  }

  *(this + 11) = v4;
  return v4;
}

void sentencepiece::SentencePieceText::CheckTypeAndMergeFrom(sentencepiece::SentencePieceText *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SentencePieceText::MergeFrom(this, lpsrc);
}

void sentencepiece::SentencePieceText::MergeFrom(sentencepiece::SentencePieceText *this, const sentencepiece::SentencePieceText *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 674);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48, a2 + 48);
  v13 = *(a2 + 10);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 9);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      *(this + 20) = *(a2 + 20);
    }

    *(this + 10) |= v13;
  }
}

void sub_26D3F5504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceText::CopyFrom(sentencepiece::SentencePieceText *this, const sentencepiece::SentencePieceText *a2)
{
  if (a2 != this)
  {
    sentencepiece::SentencePieceText::Clear(this);

    sentencepiece::SentencePieceText::MergeFrom(this, a2);
  }
}

uint64_t sentencepiece::SentencePieceText::IsInitialized(sentencepiece::SentencePieceText *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(this + 48);
  }

  return result;
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1, v2);
  }

  while ((google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)) & 1) != 0);
  return v3 < 1;
}

float sentencepiece::SentencePieceText::InternalSwap(sentencepiece::SentencePieceText *this, sentencepiece::SentencePieceText *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_15:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  v13 = *(this + 1);
  if (v13)
  {
    v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 9) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 9) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v14 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 9, v13);
    v15 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 9, v13);
    v16 = v14[2];
    v17 = *v14;
    v18 = v15[2];
    *v14 = *v15;
    v14[2] = v18;
    *v15 = v17;
    v15[2] = v16;
  }

  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  return result;
}