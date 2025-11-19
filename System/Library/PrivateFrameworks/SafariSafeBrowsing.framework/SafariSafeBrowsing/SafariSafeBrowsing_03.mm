void Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse(uint64_t a1)
{
  v2 = *(a1 + 451);
  if (v2 <= 5)
  {
    if (*(a1 + 451) <= 2u)
    {
      if (!*(a1 + 451))
      {
        goto LABEL_20;
      }

      if (v2 == 1)
      {
        v3 = *(a1 + 408);
        v4 = *(a1 + 410);
        *(a1 + 464) = *(a1 + 463);
        *(a1 + 418) = v4;
        *(a1 + 416) = v3;
      }
    }

    goto LABEL_12;
  }

  if (*(a1 + 451) <= 8u)
  {
    if (v2 == 6)
    {
      v9 = *(a1 + 352);
      if (v9)
      {
        (*(v9 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 192);
      goto LABEL_14;
    }

    if (v2 == 7)
    {
      v5 = *(a1 + 352);
      if (v5)
      {
        (*(v5 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 256);
      goto LABEL_14;
    }

LABEL_12:
    v6 = *(a1 + 344);
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v2 == 9)
  {
    v10 = *(a1 + 352);
    if (v10)
    {
      (*(v10 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 288);
    goto LABEL_14;
  }

  if (v2 != 10)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 224);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_13:
  (*(v6 + 8))();
LABEL_14:
  v7 = *(a1 + 368);
  if (*(a1 + 184) == 1)
  {
    v8 = *(a1 + 160);
    if (v8)
    {
      *(a1 + 168) = v8;
      operator delete(v8);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }

  v11 = (a1 + 320);
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v11);
LABEL_20:
  detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse(uint64_t a1)
{
  v4 = a1 + 208;
  v5 = a1 + 248;
  v6 = a1 + 280;
  v7 = *(a1 + 356);
  if (v7 <= 1)
  {
    if (!*(a1 + 356))
    {
      v9 = 0;
      *(a1 + 240) = 0;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      *v4 = 0;
      *(a1 + 232) = 0;
      goto LABEL_14;
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_65:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v7 == 2)
  {
    v10 = *(a1 + 312);
    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

  if (v7 != 3)
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      goto LABEL_45;
    }

    goto LABEL_65;
  }

  v8 = *(a1 + 80);
  if (!v8)
  {
    goto LABEL_65;
  }

  do
  {
    detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v8 + 2));
    v2 = *v23;
    v24 = *(v23 + 8);
    v25 = *(a1 + 312);
    if (v25)
    {
      (*(v25 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v6);
    if ((v24 & 1) == 0)
    {
      goto LABEL_53;
    }

    if ((*(a1 + 240) & 1) == 0)
    {
      *(a1 + 240) = 1;
    }

    *(a1 + 232) = v2;
    while (1)
    {
      LOBYTE(v7) = *(a1 + 358);
      v1 = *(a1 + 352) | (*(a1 + 354) << 16);
      v9 = 1;
LABEL_14:
      *(a1 + 336) = v2;
      *(a1 + 348) = v9;
      *(a1 + 357) = v7;
      *(a1 + 344) = v1;
      *(a1 + 346) = BYTE2(v1);
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 328), (a1 + 312));
      v8 = *(a1 + 312);
      *(a1 + 80) = v8;
      if (!v8)
      {
        goto LABEL_65;
      }

      if (*v8)
      {
        v31 = 1;
        goto LABEL_60;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v8 + 2));
      v12 = *v11;
      v13 = *v11 >> 8;
      v14 = *v11 & 0xFFFFFFFF00000000;
      *(a1 + 358) = *v11;
      *(a1 + 354) = BYTE3(v12);
      *(a1 + 352) = v13;
      v15 = *(a1 + 312);
      if (v15)
      {
        (*(v15 + 8))();
      }

      if (v14 != 0x100000000)
      {
        if (HIDWORD(v12))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v35 = v34;
          v36 = v4;
          std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v36);
          *a1 = 0;
          *(a1 + 356) = 5;
          _Unwind_Resume(v35);
        }

        if (v12)
        {
          *(a1 + 32) = *(a1 + 208);
          *(a1 + 48) = *(a1 + 224);
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *v4 = 0;
          *(a1 + 56) = *(a1 + 232);
          v29 = 1;
        }

        else
        {
LABEL_53:
          v29 = 0;
          *(a1 + 32) = 0;
        }

        *(a1 + 72) = v29;
LABEL_56:
        *(a1 + 24) = 1;
        v36 = v4;
        std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v36);
        *a1 = 0;
        *(a1 + 356) = 5;
        v30 = *(a1 + 16);
        goto LABEL_61;
      }

      v16 = *(a1 + 328);
      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        *(a1 + 248) = &unk_2838CDC10;
        *(a1 + 256) = Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse;
        *(a1 + 272) = v5;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>(v16, v5, (a1 + 320));
        v10 = *(a1 + 320);
        *(a1 + 312) = v10;
        if (!v10)
        {
          goto LABEL_65;
        }

        if (*v10)
        {
          *(a1 + 356) = 2;
          v10[2] = a1;
          v30 = *(a1 + 312);
          goto LABEL_61;
        }

LABEL_23:
        detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::result((v10 + 2));
        std::__optional_move_base<Backend::Google::ListUpdateResponse,false>::__optional_move_base[abi:sn200100]((a1 + 80), v17);
        v18 = *(a1 + 320);
        if (v18)
        {
          (*(v18 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v5);
        if (*(a1 + 200) != 1)
        {
          *(a1 + 32) = 0;
          *(a1 + 72) = 0;
          goto LABEL_56;
        }

        v19 = *(a1 + 216);
        if (v19 >= *(a1 + 224))
        {
          updated = std::vector<Backend::Google::ListUpdateResponse>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse>(v4, a1 + 80);
        }

        else
        {
          std::__construct_at[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse*>(*(a1 + 216), a1 + 80);
          updated = v19 + 120;
        }

        *(a1 + 216) = updated;
        if (*(a1 + 200))
        {
          v21 = *(a1 + 144);
          if (v21)
          {
            *(a1 + 152) = v21;
            operator delete(v21);
          }

          v22 = *(a1 + 120);
          if (v22)
          {
            *(a1 + 128) = v22;
            operator delete(v22);
          }

          *(a1 + 312) = a1 + 96;
          std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100]((a1 + 312));
        }
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v16, (a1 + 312));
        v8 = *(a1 + 312);
        *(a1 + 80) = v8;
        if (!v8)
        {
          goto LABEL_65;
        }

        if (*v8)
        {
          v31 = 4;
          goto LABEL_60;
        }

LABEL_45:
        detail::lazy_promise<BOOL>::result((v8 + 2));
        v27 = *v26;
        v28 = *(a1 + 312);
        if (v28)
        {
          (*(v28 + 8))();
        }

        if (!v27)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a1 + 336);
    }

    *(a1 + 280) = &unk_2838CDAA8;
    *(a1 + 288) = Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration;
    *(a1 + 304) = v6;
    Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v16, v6, (a1 + 312));
    v8 = *(a1 + 312);
    *(a1 + 80) = v8;
    if (!v8)
    {
      goto LABEL_65;
    }
  }

  while (!*v8);
  v31 = 3;
LABEL_60:
  *(a1 + 356) = v31;
  v8[2] = a1;
  v30 = *(a1 + 80);
LABEL_61:
  v32 = *v30;

  return v32();
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse(uint64_t a1)
{
  v2 = *(a1 + 356);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 312);
      if (v6)
      {
        (*(v6 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 280);
      goto LABEL_15;
    }

    if (v2 == 4)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 356))
  {
    if (v2 != 1)
    {
      v7 = *(a1 + 320);
      if (v7)
      {
        (*(v7 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 248);
      goto LABEL_15;
    }

    v3 = *(a1 + 344);
    v4 = *(a1 + 346);
    *(a1 + 358) = *(a1 + 357);
    *(a1 + 354) = v4;
    *(a1 + 352) = v3;
LABEL_7:
    v5 = *(a1 + 312);
    if (v5)
    {
      (*(v5 + 8))();
    }

LABEL_15:
    v8 = (a1 + 208);
    std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v8);
  }

  detail::lazy_promise<std::optional<Backend::Google::FetchThreatListUpdatesResponse>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  detail::lazy_promise<std::optional<Backend::Google::FetchThreatListUpdatesResponse>>::result(v2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  if (*(v4 + 40) == 1)
  {
    *(a1 + 24) = *v4;
    *(a1 + 40) = *(v4 + 16);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(a1 + 48) = *(v4 + 24);
    *(a1 + 64) = 1;
  }

  (*(*(a1 + 160) + 8))();
  v5 = *(a1 + 96);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    if (*(a1 + 64) == 1)
    {
      v10 = v1;
      std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v10);
    }

    v9 = **(a1 + 152);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v9);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100](a1 + 72);
    *a1 = 0;
    *(a1 + 17) = 1;
    _Unwind_Resume(v8);
  }

  (*(*v5 + 48))(v5, a1 + 24);
  if (*(a1 + 64) == 1)
  {
    v10 = (a1 + 24);
    std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v10);
  }

  v6 = **(a1 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  result = std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100](a1 + 72);
  *a1 = 0;
  *(a1 + 17) = 1;
  return result;
}

void Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>(void *__p)
{
  if ((*(__p + 17) & 1) == 0)
  {
    v2 = __p[20];
    (*(__p[20] + 8))();
    v3 = *__p[19];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100]((__p + 9));
  }

  v4 = __p[18];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(__p);
}

__n128 Platform::FileOutputStream::FileOutputStream(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2838CDCE8;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 32) = 0;
  return result;
}

void Platform::FileOutputStream::~FileOutputStream(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  operator delete(this);
}

uint64_t Platform::FileOutputStream::open(Platform::FileOutputStream *this)
{
  v2 = this + 8;
  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  v3 = fopen(v2, "w+");
  *(this + 4) = v3;
  if (v3)
  {
    std::system_category();
    return 0;
  }

  else
  {
    v4 = *__error();
    std::generic_category();
  }

  return v4;
}

uint64_t Platform::FileOutputStream::writeBytes(FILE **this, const unsigned __int8 *__ptr, size_t a3)
{
  if (fwrite(__ptr, 1uLL, a3, this[4]) == a3)
  {
    std::system_category();
    return 0;
  }

  else
  {
    v5 = ferror(this[4]);
    std::generic_category();
    return v5;
  }
}

uint64_t Platform::FileOutputStream::getOffset(Platform::FileOutputStream *this, unint64_t *a2)
{
  v3 = MEMORY[0x22AA67720](*(this + 4));
  *a2 = v3;
  if (v3 == -1)
  {
    v4 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v4;
}

uint64_t Platform::FileOutputStream::seek(FILE **this, uint64_t a2)
{
  if (fseek(this[4], a2, 0) == -1)
  {
    v2 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v2;
}

uint64_t Platform::FileOutputStream::close(FILE **this)
{
  v2 = fclose(this[4]);
  this[4] = 0;
  if (v2)
  {
    v3 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v3;
}

void *Backend::Google::FindFullHashesRequestJSONSerializer::FindFullHashesRequestJSONSerializer(void *this, const Backend::Google::ClientInfo *a2)
{
  this[2] = 0;
  *this = a2;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[9] = 0;
  this[10] = this + 11;
  this[15] = 0;
  this[14] = 0;
  this[12] = 0;
  this[13] = this + 14;
  return this;
}

void Backend::Google::FindFullHashesRequestJSONSerializer::~FindFullHashesRequestJSONSerializer(Backend::Google::FindFullHashesRequestJSONSerializer *this)
{
  std::__tree<Backend::Google::HashView>::destroy(this + 104, *(this + 14));
  std::__tree<Backend::Google::HashView>::destroy(this + 80, *(this + 11));
  std::__tree<Backend::Google::HashView>::destroy(this + 56, *(this + 8));
  std::__tree<Backend::Google::HashView>::destroy(this + 32, *(this + 5));
  std::__tree<Backend::Google::HashView>::destroy(this + 8, *(this + 2));
}

uint64_t *Backend::Google::FindFullHashesRequestJSONSerializer::addHashPrefix(uint64_t **a1, unsigned __int8 *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *&v8 = a4;
  *(&v8 + 1) = a5;
  std::__tree<Backend::Google::HashView>::__emplace_unique_key_args<Backend::Google::HashView,Backend::Google::HashView const&>(a1 + 1, a2, a2);
  std::__tree<Backend::Google::ThreatType>::__emplace_unique_key_args<Backend::Google::ThreatType,Backend::Google::ThreatType const&>(a1 + 4, a3, a3);
  std::__tree<Backend::Google::ThreatType>::__emplace_unique_key_args<Backend::Google::ThreatType,Backend::Google::ThreatType const&>(a1 + 7, a3 + 1, a3 + 1);
  std::__tree<Backend::Google::ThreatType>::__emplace_unique_key_args<Backend::Google::ThreatType,Backend::Google::ThreatType const&>(a1 + 10, a3 + 2, a3 + 2);
  return std::__tree<Platform::ArrayView<unsigned char>>::__emplace_unique_key_args<Platform::ArrayView<unsigned char>,Platform::ArrayView<unsigned char> const&>(a1 + 13, &v8, &v8);
}

id Backend::Google::FindFullHashesRequestJSONSerializer::serializedData(Backend::Google::FindFullHashesRequestJSONSerializer *this)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v2 = *this;
  v40 = [MEMORY[0x277CBEB38] dictionary];
  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v3, v40}];
  [v41 setObject:v4 forKeyedSubscript:@"clientId"];

  v7 = v2[3];
  v6 = v2 + 3;
  v5 = v7;
  if (*(v6 + 23) >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [v41 setObject:v9 forKeyedSubscript:@"clientVersion"];

  [v42 setObject:v41 forKeyedSubscript:@"client"];
  v46 = [MEMORY[0x277CBEB18] array];
  v10 = *(this + 13);
  if (v10 != (this + 112))
  {
    do
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:*(v10 + 4) length:*(v10 + 5)];
      v12 = [v11 base64EncodedStringWithOptions:0];
      [v46 addObject:v12];

      v13 = *(v10 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v10 + 2);
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != (this + 112));
  }

  [v42 setObject:v46 forKeyedSubscript:@"clientStates"];
  v43 = [MEMORY[0x277CBEB38] dictionary];
  v45 = [MEMORY[0x277CBEB18] array];
  v16 = *(this + 4);
  if (v16 != (this + 40))
  {
    do
    {
      v17 = EnumTraits::toNSStringFromEnum<Backend::Google::ThreatType>(*(v16 + 7));
      [v45 addObject:v17];

      v18 = *(v16 + 1);
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
          v19 = *(v16 + 2);
          v15 = *v19 == v16;
          v16 = v19;
        }

        while (!v15);
      }

      v16 = v19;
    }

    while (v19 != (this + 40));
  }

  [v43 setObject:v45 forKeyedSubscript:@"threatTypes"];
  v44 = [MEMORY[0x277CBEB18] array];
  v20 = *(this + 7);
  if (v20 != (this + 64))
  {
    do
    {
      v21 = EnumTraits::toNSStringFromEnum<Backend::Google::PlatformType>(*(v20 + 7));
      [v44 addObject:v21];

      v22 = *(v20 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v20 + 2);
          v15 = *v23 == v20;
          v20 = v23;
        }

        while (!v15);
      }

      v20 = v23;
    }

    while (v23 != (this + 64));
  }

  [v43 setObject:v44 forKeyedSubscript:@"platformTypes"];
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = *(this + 10);
  if (v25 != (this + 88))
  {
    do
    {
      v26 = EnumTraits::toNSStringFromEnum<Backend::Google::ThreatEntryType>(*(v25 + 7));
      [v24 addObject:v26];

      v27 = *(v25 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v25 + 2);
          v15 = *v28 == v25;
          v25 = v28;
        }

        while (!v15);
      }

      v25 = v28;
    }

    while (v28 != (this + 88));
  }

  [v43 setObject:v24 forKeyedSubscript:@"threatEntryTypes"];
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = *(this + 1);
  v31 = this + 16;
  if (v30 != this + 16)
  {
    do
    {
      v32 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(v30 + 5) length:v30[32]];
      v33 = [v32 base64EncodedStringWithOptions:0];
      v48 = @"hash";
      v49[0] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];

      [v29 addObject:v34];
      v35 = *(v30 + 1);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v30 + 2);
          v15 = *v36 == v30;
          v30 = v36;
        }

        while (!v15);
      }

      v30 = v36;
    }

    while (v36 != v31);
  }

  [v43 setObject:v29 forKeyedSubscript:@"threatEntries"];

  [v42 setObject:v43 forKeyedSubscript:@"threatInfo"];
  v47 = 0;
  v37 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v42 options:0 error:&v47];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void std::__tree<Backend::Google::HashView>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<Backend::Google::HashView>::destroy(a1, *a2);
    std::__tree<Backend::Google::HashView>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<Backend::Google::HashView>::__emplace_unique_key_args<Backend::Google::HashView,Backend::Google::HashView const&>(uint64_t **a1, unsigned __int8 *a2, _OWORD *a3)
{
  v5 = std::__tree<Backend::Google::HashView>::__find_equal<Backend::Google::HashView>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    *(v6 + 2) = *a3;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void *std::__tree<Backend::Google::HashView>::__find_equal<Backend::Google::HashView>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 1);
    v7 = *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 40);
        v10 = *(v4 + 32);
        if (v10 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = *(v4 + 32);
        }

        v12 = memcmp(v6, *(v4 + 40), v11);
        v13 = v7 < v10;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (!v13)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v14 = memcmp(v9, v6, v11);
      v15 = v10 < v7;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<Backend::Google::HashView>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t **std::__tree<Backend::Google::ThreatType>::__emplace_unique_key_args<Backend::Google::ThreatType,Backend::Google::ThreatType const&>(uint64_t **a1, int *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t *std::__tree<Platform::ArrayView<unsigned char>>::__emplace_unique_key_args<Platform::ArrayView<unsigned char>,Platform::ArrayView<unsigned char> const&>(uint64_t **a1, uint64_t a2, _OWORD *a3)
{
  v5 = std::__tree<Platform::ArrayView<unsigned char>>::__find_equal<Platform::ArrayView<unsigned char>>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    *(v6 + 2) = *a3;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void *std::__tree<Platform::ArrayView<unsigned char>>::__find_equal<Platform::ArrayView<unsigned char>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        if (v10 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = *(v4 + 40);
        }

        v12 = memcmp(v6, *(v4 + 32), v11);
        v13 = v7 < v10;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (!v13)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v14 = memcmp(v9, v6, v11);
      v15 = v10 < v7;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

void Backend::Google::FindFullHashesRequestSerializer::serializedData(Backend::Google::FindFullHashesRequestSerializer *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  Backend::Google::ProtocolMessageWriter::ProtocolMessageWriter(v11);
  v4 = *this;
  v12[0] = &unk_2838CD790;
  v12[1] = v4;
  v13 = v12;
  Backend::Google::ProtocolMessageWriter::writeEmbeddedMessageField(v11, 1, v12);
  std::__function::__value_func<void ()(Backend::Google::ProtocolMessageWriter &)>::~__value_func[abi:sn200100](v12);
  v5 = *(this + 13);
  if (v5 != (this + 112))
  {
    do
    {
      Backend::Google::ProtocolMessageWriter::writeBytes(v11, 2, *(v5 + 4), (*(v5 + 4) + *(v5 + 5)));
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (this + 112));
  }

  v9 = operator new(0x28uLL);
  *v9 = &unk_2838CE3D8;
  v9[1] = this + 32;
  v9[2] = this + 56;
  v9[3] = this + 80;
  v9[4] = this + 8;
  v13 = v9;
  Backend::Google::ProtocolMessageWriter::writeEmbeddedMessageField(v11, 3, v12);
  std::__function::__value_func<void ()(Backend::Google::ProtocolMessageWriter &)>::~__value_func[abi:sn200100](v12);
  Backend::Google::ProtocolMessageWriter::finish(v11, a2);
  Backend::Google::LexicographicallyOrderedHashEnumerator::~LexicographicallyOrderedHashEnumerator(v11);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_225614410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(Backend::Google::ProtocolMessageWriter &)>::~__value_func[abi:sn200100](&a12);
  Backend::Google::LexicographicallyOrderedHashEnumerator::~LexicographicallyOrderedHashEnumerator(&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0,std::allocator<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0>,void ()(Backend::Google::ProtocolMessageWriter &)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2838CE3D8;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 std::__function::__func<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0,std::allocator<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0>,void ()(Backend::Google::ProtocolMessageWriter &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838CE3D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0,std::allocator<Backend::Google::writeThreatInfo(Backend::Google::ProtocolMessageWriter &,unsigned int,std::set<Backend::Google::ThreatType> const&,std::set<Backend::Google::PlatformType> const&,std::set<Backend::Google::ThreatEntryType> const&,std::set<Backend::Google::HashView> const&)::$_0>,void ()(Backend::Google::ProtocolMessageWriter &)>::operator()(void *a1, Backend::Google::ProtocolMessageWriter *this)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      Backend::Google::ProtocolMessageWriter::writeUInt32Field(this, 1, *(v6 + 7));
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  v11 = a1[2];
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    do
    {
      Backend::Google::ProtocolMessageWriter::writeUInt32Field(this, 2, *(v13 + 7));
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v10 = *v16 == v13;
          v13 = v16;
        }

        while (!v10);
      }

      v13 = v16;
    }

    while (v16 != v12);
  }

  v17 = a1[3];
  v20 = *v17;
  v18 = v17 + 1;
  v19 = v20;
  if (v20 != v18)
  {
    do
    {
      Backend::Google::ProtocolMessageWriter::writeUInt32Field(this, 4, *(v19 + 7));
      v21 = v19[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v19[2];
          v10 = *v22 == v19;
          v19 = v22;
        }

        while (!v10);
      }

      v19 = v22;
    }

    while (v22 != v18);
  }

  v23 = a1[4];
  v26 = *v23;
  v24 = v23 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    do
    {
      v30 = *(v25 + 2);
      v31[0] = &unk_2838CE420;
      v31[1] = &v30;
      v31[3] = v31;
      Backend::Google::ProtocolMessageWriter::writeEmbeddedMessageField(this, 3, v31);
      std::__function::__value_func<void ()(Backend::Google::ProtocolMessageWriter &)>::~__value_func[abi:sn200100](v31);
      v27 = v25[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v25[2];
          v10 = *v28 == v25;
          v25 = v28;
        }

        while (!v10);
      }

      v25 = v28;
    }

    while (v28 != v24);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2256147AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(Backend::Google::ProtocolMessageWriter &)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<Backend::Google::writeThreatEntry(Backend::Google::ProtocolMessageWriter &,unsigned int,Backend::Google::HashView)::$_0,std::allocator<Backend::Google::writeThreatEntry(Backend::Google::ProtocolMessageWriter &,unsigned int,Backend::Google::HashView)::$_0>,void ()(Backend::Google::ProtocolMessageWriter &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE420;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Backend::Google::writeThreatEntry(Backend::Google::ProtocolMessageWriter &,unsigned int,Backend::Google::HashView)::$_0,std::allocator<Backend::Google::writeThreatEntry(Backend::Google::ProtocolMessageWriter &,unsigned int,Backend::Google::HashView)::$_0>,void ()(Backend::Google::ProtocolMessageWriter &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE420;
  a2[1] = v2;
  return result;
}

void Backend::Google::FindFullHashesResponseJSONParser::parseFindFullHashesResponse(Backend::Google::FindFullHashesResponseJSONParser *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v43 = 0uLL;
  v44 = 0;
  v3 = *this;
  if (!*this)
  {
    *a2 = 0;
    a2[56] = 0;
    goto LABEL_40;
  }

  v42 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v42];
  v37 = v42;
  if ((Backend::Google::SSBUtilities::isKindOfNSDictionary(v4, v5) & 1) == 0)
  {
    *v2 = 0;
    v2[56] = 0;
    goto LABEL_39;
  }

  v6 = [(Backend::Google::SSBUtilities *)v4 objectForKeyedSubscript:@"matches"];
  v8 = v6;
  if (v6 && (Backend::Google::SSBUtilities::isKindOfNSArray(v6, v7) & 1) == 0)
  {
    *v2 = 0;
    v2[56] = 0;
    goto LABEL_38;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v8;
  v11 = [(Backend::Google::SSBUtilities *)v9 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = *v39;
  v35 = *v2;
  v36 = v2[56];
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v38 + 1) + 8 * i);
      if ((Backend::Google::SSBUtilities::isKindOfNSDictionary(v14, v10) & 1) == 0)
      {
        v33 = v2;
        v2 += 56;
LABEL_33:
        *v33 = 0;
        *v2 = 0;

        goto LABEL_38;
      }

      Backend::Google::FindFullHashesResponseJSONParser::parseThreatMatch(v14, &v46);
      if (v50 != 1)
      {
        v33 = v2 + 56;
        goto LABEL_33;
      }

      v15 = *(&v43 + 1);
      if (*(&v43 + 1) >= v44)
      {
        v18 = std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__emplace_back_slow_path<Backend::Google::FindFullHashesResponse::ThreatMatch>(&v43, &v46);
      }

      else
      {
        if (!*(&v43 + 1))
        {
          v2[56] = v36;
          *v2 = v35;
          __break(1u);
        }

        v16 = v46;
        v17 = *&v47[16];
        *(*(&v43 + 1) + 16) = *v47;
        *(v15 + 32) = v17;
        *v15 = v16;
        *(v15 + 56) = 0;
        *(v15 + 64) = 0;
        *(v15 + 48) = 0;
        *(v15 + 48) = *&v47[32];
        *(v15 + 64) = v48;
        *&v47[32] = 0uLL;
        v48 = 0;
        *(v15 + 72) = v49;
        v18 = v15 + 80;
      }

      *(&v43 + 1) = v18;
      if (v50)
      {
        v45 = &v47[32];
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v45);
      }
    }

    v11 = [(Backend::Google::SSBUtilities *)v9 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  *v2 = v35;
  v2[56] = v36;
LABEL_21:

  v19 = [(Backend::Google::SSBUtilities *)v4 objectForKeyedSubscript:@"minimumWaitDuration"];
  v21 = v19;
  if (!v19 || (Backend::Google::SSBUtilities::isKindOfNSString(v19, v20)) && (v22 = Backend::Google::FindFullHashesResponseJSONParser::parseDuration(v21, &v20->isa), v24 = v23, (v23))
  {
    v25 = v22;
    v26 = [(Backend::Google::SSBUtilities *)v4 objectForKeyedSubscript:@"negativeCacheDuration"];
    v28 = v26;
    if (!v26 || (Backend::Google::SSBUtilities::isKindOfNSString(v26, v27)) && (v29 = Backend::Google::FindFullHashesResponseJSONParser::parseDuration(v28, &v27->isa), (v30))
    {
      v31 = v44;
      v32 = v43;
      v44 = 0;
      v43 = 0uLL;
      v47[16] = v24;
      *&v47[24] = v29;
      v47[32] = v30;
      *v2 = v32;
      *(v2 + 2) = v31;
      *v47 = 0;
      *&v47[8] = v25;
      v46 = 0uLL;
      *(v2 + 24) = *&v47[8];
      *(v2 + 33) = *&v47[17];
      v2[56] = 1;
      v45 = &v46;
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v45);
    }

    else
    {
      *v2 = 0;
      v2[56] = 0;
    }
  }

  else
  {
    *v2 = 0;
    v2[56] = 0;
  }

LABEL_38:
LABEL_39:

LABEL_40:
  *&v46 = &v43;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v46);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_225614BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a21;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&a25);
  _Unwind_Resume(a1);
}

void Backend::Google::FindFullHashesResponseJSONParser::parseThreatMatch(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v28 = 0uLL;
  v29 = 0;
  v4 = [v3 ssb_stringForKey:@"threatType"];
  v5 = [v3 ssb_stringForKey:@"threatEntryType"];
  v6 = [v3 ssb_stringForKey:@"platformType"];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || v6 == 0;
  if (v9 || (v10 = EnumTraits::toEnumFromNSString<Backend::Google::ThreatType>(v4), v11 = EnumTraits::toEnumFromNSString<Backend::Google::ThreatEntryType>(v5), v12 = EnumTraits::toEnumFromNSString<Backend::Google::PlatformType>(v7), (v10 & 0x100000000) == 0) || ((v13 = v12, (v12 & 0x100000000) != 0) ? (v14 = (v11 & 0x100000000) == 0) : (v14 = 1), v14))
  {
    *a2 = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    v15 = [v3 objectForKeyedSubscript:@"threat"];
    if (Backend::Google::SSBUtilities::isKindOfNSDictionary(v15, v16) & 1) != 0 && (Backend::Google::FindFullHashesResponseJSONParser::parseThreatEntry(v15, v31), (v31[32]))
    {
      v27 = v31[0];
      v33[0] = *&v31[1];
      *(v33 + 15) = *&v31[16];
      v17 = [v3 objectForKeyedSubscript:@"cacheDuration"];
      v19 = v17;
      if (!v17 || (Backend::Google::SSBUtilities::isKindOfNSString(v17, v18)) && (v20 = Backend::Google::FindFullHashesResponseJSONParser::parseDuration(v19, &v18->isa), (v21))
      {
        *v31 = v10;
        *&v31[4] = v13;
        *&v31[8] = v11;
        *&v31[12] = 2;
        v31[16] = v27;
        *&v31[17] = v33[0];
        *&v31[32] = *(v33 + 15);
        v22 = v29;
        v23 = v28;
        v29 = 0;
        v28 = 0uLL;
        v24 = *&v31[16];
        v25 = *(v33 + 15);
        *a2 = *v31;
        *(a2 + 16) = v24;
        *(a2 + 32) = v25;
        *(a2 + 48) = v23;
        memset(v32, 0, 24);
        v32[3] = v20;
        *(a2 + 64) = v22;
        *(a2 + 72) = v20;
        *(a2 + 80) = 1;
        v30 = v32;
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v30);
      }

      else
      {
        *a2 = 0;
        *(a2 + 80) = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 80) = 0;
    }
  }

  *v31 = &v28;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](v31);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225614F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&a15);

  _Unwind_Resume(a1);
}

unint64_t Backend::Google::FindFullHashesResponseJSONParser::parseDuration(Backend::Google::FindFullHashesResponseJSONParser *this, NSString *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    if ([(Backend::Google::FindFullHashesResponseJSONParser *)v2 length]>= 2 && [(Backend::Google::FindFullHashesResponseJSONParser *)v3 hasSuffix:@"s"])
    {
      v4 = [(Backend::Google::FindFullHashesResponseJSONParser *)v3 longLongValue];
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      v6 = v4;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

void Backend::Google::FindFullHashesResponseJSONParser::parseThreatEntry(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 ssb_stringForKey:@"hash"];
  if (v3)
  {
    v9 = v3;
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:1];
    if ([v4 length] == 32)
    {
      v5 = [v4 bytes];
      v6 = [v4 length];
      if (v6)
      {
        memcpy(__dst, v5, v6);
      }

      v7 = __dst[1];
      *a2 = __dst[0];
      *(a2 + 16) = v7;
      *(a2 + 32) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 32) = 0;
    }

    v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__emplace_back_slow_path<Backend::Google::FindFullHashesResponse::ThreatMatch>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[5 * v2];
  v18 = v7;
  v19 = v8;
  *(&v20 + 1) = &v7[5 * v6];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *a2;
  v10 = a2[2];
  v8[1] = a2[1];
  v8[2] = v10;
  *v8 = v9;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  v8[3] = a2[3];
  v11 = *(a2 + 9);
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v8 + 9) = v11;
  *&v20 = v8 + 5;
  v12 = *(a1 + 8);
  v13 = v8 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>,Backend::Google::FindFullHashesResponse::ThreatMatch*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch>::~__split_buffer(&v18);
  return v17;
}

void sub_2256152C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x333333333333334)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(80 * a2);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>,Backend::Google::FindFullHashesResponse::ThreatMatch*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v7 = *v6;
      v8 = v6[2];
      *(a4 + 16) = v6[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = v6[3];
      v9 = *(v6 + 9);
      *(a4 + 64) = *(v6 + 8);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(a4 + 72) = v9;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v10 = (v5 + 3);
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v10);
      v5 += 5;
    }
  }
}

void **std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch>::~__split_buffer(void **a1)
{
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch>::clear[abi:sn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch>::clear[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = (i - 32);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v4);
  }
}

void std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        v6 = v4 - 80;
        v7 = (v4 - 32);
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::clear[abi:sn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::clear[abi:sn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      v4 = v3 - 6;
      if (*(v3 - 25) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 6;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void *Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(void *a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = &unk_2838CD820;
  v9[1] = a3;
  v9[3] = v9;
  CoroutineCaller<std::shared_ptr<ReadStream>>::CoroutineCaller(a1, &v7, v9);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_225615640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

void *Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x180uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse;
  result[40] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 372) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xE0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>;
  v6[24] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 15), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 216) = 0;
  return result;
}

void *Backend::Google::FindFullHashesResponseParser::parseThreatMatch@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x180uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseThreatMatch;
  result[36] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseThreatMatch;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 367) = 0;
  return result;
}

void *Backend::Google::FindFullHashesResponseParser::parseDuration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x78uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseDuration;
  result[8] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseDuration;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 112) = 0;
  return result;
}

void *Backend::Google::FindFullHashesResponseParser::parseThreatEntry@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x90uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseThreatEntry;
  result[11] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseThreatEntry;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 139) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA8uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>;
  v6[17] = a1;
  result = std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 8), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 160) = 0;
  return result;
}

void *Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xD8uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata;
  result[24] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 212) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xC0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>;
  v6[20] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 11), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 184) = 0;
  return result;
}

void *Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xD8uLL);
  *result = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry;
  result[21] = a1;
  result[1] = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 135) = 0;
  return result;
}

uint64_t *std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::push_back[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  if (v3 >= result[2])
  {
    result = std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__emplace_back_slow_path<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    result = (v3 + 48);
LABEL_5:
    v2[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

void detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__optional_copy_base<Backend::Google::FindFullHashesResponse::ThreatMatch,false>::__optional_copy_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *a2;
    v5 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v5;
    *a1 = v4;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>((a1 + 48), *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_225615C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 80) == 1)
  {
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(std::string *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__vallocate[abi:sn200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

char *std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

void *std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(48 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v7 = 0;
  while (1)
  {
    result = (a4 + v7);
    if (!(a4 + v7))
    {
      break;
    }

    v9 = (a2 + v7);
    if (*(a2 + v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(result, *(a2 + v7), *(a2 + v7 + 8));
    }

    else
    {
      v10 = *v9;
      result->__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&result->__r_.__value_.__l.__data_ = v10;
    }

    v11 = (a4 + v7);
    v12 = a2 + v7;
    if (*(a2 + v7 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
    }

    else
    {
      v13 = *(v12 + 24);
      v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
      *&v11[1].__r_.__value_.__l.__data_ = v13;
    }

    v7 += 48;
    if (a2 + v7 == a3)
    {
      a4 += v7;
      return a4;
    }
  }

  __break(1u);
  return result;
}

void sub_225615E3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 23) < 0)
  {
    operator delete(*(v1 + v2));
  }

  _Unwind_Resume(exception_object);
}

void detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

std::string *std::__optional_copy_base<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,false>::__optional_copy_base[abi:sn200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    std::construct_at[abi:sn200100]<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry> const&,std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>*>(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_225615F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::construct_at[abi:sn200100]<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry> const&,std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>*>(std::string *result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result->__r_.__value_.__r.__words[0] = 0;
    result->__r_.__value_.__l.__size_ = 0;
    result->__r_.__value_.__r.__words[2] = 0;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::allocator_traits<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::destroy[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,void,0>(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator_traits<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::destroy[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,void,0>(uint64_t a1, uint64_t a2)
{
  if (a2)
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

  else
  {
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

std::string *std::__optional_copy_base<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,false>::__optional_copy_base[abi:sn200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[2].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 48) == 1)
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

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
    }

    this[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_22561614C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 48) == 1)
  {
    Backend::Google::ClientInfo::~ClientInfo(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__emplace_back_slow_path<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[48 * v6];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *&v19 = v8 + 48;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::~__split_buffer(&v17);
  return v16;
}

void sub_2256162C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      if (!a4)
      {
        __break(1u);
        return;
      }

      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::destroy[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,void,0>(a1, v5);
      v5 += 48;
    }
  }
}

void **std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::~__split_buffer(void **a1)
{
  std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::clear[abi:sn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::clear[abi:sn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator_traits<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::destroy[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,void,0>(v4, i - 48);
  }
}

uint64_t std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](std::string *this, uint64_t a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    std::construct_at[abi:sn200100]<std::string,std::string&,std::string*>(this, a2);
    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_225616490(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CD820;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CD820;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>((a1 + 8), &v4, a3);
  v3 = *(&v4 + 1);
  if (*(&v4 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

void sub_225616590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB8uLL);
  *v6 = Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>;
  *(v6 + 1) = Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>;
  v8 = *a2;
  v7 = a2[1];
  *(v6 + 20) = v7;
  *a2 = 0;
  a2[1] = 0;
  *a3 = v6;
  std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::__value_func[abi:sn200100]((v6 + 88), *a1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 17) = v7;
    v9 = v6 + 136;
    *(v6 + 30) = 0;
    *(v6 + 16) = v8;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  else
  {
    *(v6 + 17) = 0;
    v9 = v6 + 136;
    *(v6 + 30) = 0;
    *(v6 + 16) = v8;
  }

  *(v6 + 21) = v9;
  Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse((v6 + 120), v6 + 19);
  v10 = *(v6 + 19);
  *(v6 + 22) = v10;
  *(v6 + 18) = v10;
  if (!v10)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*v10)
  {
    v6[17] = 0;
    v10[2] = v6;
    v11 = **(v6 + 18);

    return v11();
  }

  else
  {
    detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse>>::result((v10 + 2));
    v6[24] = 0;
    v6[80] = 0;
    if (*(v13 + 56) == 1)
    {
      *(v6 + 24) = *v13;
      *(v6 + 5) = *(v13 + 16);
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v14 = *(v13 + 24);
      *(v6 + 57) = *(v13 + 33);
      *(v6 + 3) = v14;
      v6[80] = 1;
    }

    (*(*(v6 + 22) + 8))();
    v15 = *(v6 + 14);
    if (!v15)
    {
      v17 = std::__throw_bad_function_call[abi:sn200100]();
      if (v6[80] == 1)
      {
        v19 = a1;
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v19);
      }

      v18 = **(v6 + 21);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v18);
      }

      std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100]((v6 + 88));
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      }

      operator delete(v6);
      _Unwind_Resume(v17);
    }

    (*(*v15 + 48))(v15, v6 + 24);
    if (v6[80] == 1)
    {
      v19 = (v6 + 24);
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v19);
    }

    v16 = **(v6 + 21);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v16);
    }

    result = std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100]((v6 + 88));
    *v6 = 0;
    v6[17] = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 72) == 1)
  {
    v4 = (a1 + 16);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDB80;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDB80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 96) == 1)
  {
    v4 = (a1 + 64);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDA60;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDA60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 40) == 1)
  {
    v4 = (a1 + 16);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDBC8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDBC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 64) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>(uint64_t a1)
{
  v3 = *(a1 + 216);
  if (v3 == 2)
  {
    v5 = *(a1 + 176);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 112) = 0;
      if (*(v13 + 80) == 1)
      {
        v14 = *v13;
        v15 = v13[2];
        *(a1 + 48) = v13[1];
        *(a1 + 64) = v15;
        *(a1 + 32) = v14;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *(a1 + 80) = v13[3];
        v16 = *(v13 + 9);
        *(a1 + 96) = *(v13 + 8);
        *(v13 + 7) = 0;
        *(v13 + 8) = 0;
        *(v13 + 6) = 0;
        *(a1 + 104) = v16;
        *(a1 + 112) = 1;
      }

      *(a1 + 24) = 1;
      v17 = *(a1 + 184);
      if (v17)
      {
        (*(v17 + 8))();
      }

      v18 = **(a1 + 208);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v18);
      }

      v19 = *(a1 + 200);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v19);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 152);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 192), (a1 + 176));
    v4 = *(a1 + 176);
    *(a1 + 152) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 216) = 1;
      v4[2] = a1;
      v6 = *(a1 + 152);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 200) = v1;
  v10 = *(a1 + 176);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 168) = v1;
      v11 = a1 + 168;
      *(a1 + 152) = 0;
      *(a1 + 160) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 168) = 0;
      v11 = a1 + 168;
      *(a1 + 152) = 0;
      *(a1 + 160) = v9;
    }

    *(a1 + 208) = v11;
    v12 = *(a1 + 144);
    if (!v12)
    {
      v22 = std::__throw_bad_function_call[abi:sn200100]();
      v23 = **(a1 + 208);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v23);
      }

      v24 = *(a1 + 200);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v24);
      }

      *a1 = 0;
      *(a1 + 216) = 3;
      _Unwind_Resume(v22);
    }

    (*(*v12 + 48))(v12, a1 + 152);
    v5 = *(a1 + 184);
    *(a1 + 176) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 216) = 2;
        v5[2] = a1;
        v6 = *(a1 + 176);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 112) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 216) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v20 = *v6;

  return v20();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>(uint64_t a1)
{
  if (*(a1 + 216) > 1u)
  {
    if (*(a1 + 216) != 3)
    {
      v3 = *(a1 + 184);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 208);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 200);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 216))
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 120);

  operator delete(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseDuration(uint64_t a1)
{
  v5 = *(a1 + 112);
  if (v5 <= 1)
  {
    if (!*(a1 + 112))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 112);
      goto LABEL_14;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_59:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

  if (v5 != 3)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_59;
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
    v2 = *v21;
    v22 = *(v21 + 8);
    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 8))();
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 115);
    v8 = 1;
    v10 = v2;
    v3 = *(a1 + 80);
    v11 = *(a1 + 88);
    while (1)
    {
      v1 = *(a1 + 108) | (*(a1 + 110) << 16);
      v7 = *(a1 + 116);
      v5 = 1;
LABEL_14:
      *(a1 + 115) = v9 & 1;
      *(a1 + 80) = v3;
      *(a1 + 88) = v11;
      *(a1 + 114) = v8 & 1;
      *(a1 + 104) = v10;
      *(a1 + 100) = v1;
      *(a1 + 102) = BYTE2(v1);
      *(a1 + 113) = v7;
      *(a1 + 96) = v5;
      *(a1 + 72) = v2;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 64), (a1 + 56));
      v6 = *(a1 + 56);
      *(a1 + 48) = v6;
      if (!v6)
      {
        goto LABEL_59;
      }

      if (*v6)
      {
        v31 = 1;
        goto LABEL_55;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v6 + 2));
      v13 = *v12;
      v14 = *v12 >> 8;
      v15 = *v12 & 0xFFFFFFFF00000000;
      *(a1 + 110) = BYTE3(*v12);
      *(a1 + 108) = v14;
      *(a1 + 116) = v13;
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if (v15 != 0x100000000)
      {
        if (HIDWORD(v13))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 112) = 5;
          _Unwind_Resume(v34);
        }

        if (v13)
        {
          if (*(a1 + 115))
          {
            v27 = *(a1 + 88);
          }

          else
          {
            v27 = 0;
          }

          v28 = *(a1 + 104) / 1000000000;
          if (!*(a1 + 114))
          {
            v28 = 0;
          }

          *(a1 + 32) = v28 + v27;
          v29 = 1;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v17 = *(a1 + 64);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 2;
          goto LABEL_55;
        }

LABEL_23:
        detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
        v3 = *v18;
        v19 = *(v18 + 8);
        v20 = *(a1 + 56);
        if (v20)
        {
          (*(v20 + 8))();
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_49;
        }

        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
        v9 = 1;
        v11 = v3;
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 4;
          goto LABEL_55;
        }

LABEL_35:
        detail::lazy_promise<BOOL>::result((v6 + 2));
        v25 = *v24;
        v26 = *(a1 + 56);
        if (v26)
        {
          (*(v26 + 8))();
        }

        if (!v25)
        {
          goto LABEL_49;
        }

        v9 = *(a1 + 115);
        v3 = *(a1 + 80);
        v11 = *(a1 + 88);
        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
      }

      v2 = *(a1 + 72);
    }

    Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
    v6 = *(a1 + 56);
    *(a1 + 48) = v6;
    if (!v6)
    {
      goto LABEL_59;
    }

    if (*v6)
    {
      v31 = 3;
LABEL_55:
      *(a1 + 112) = v31;
      v6[2] = a1;
      v30 = *(a1 + 48);
      goto LABEL_56;
    }
  }

LABEL_49:
  v29 = 0;
  *(a1 + 32) = 0;
LABEL_50:
  *(a1 + 40) = v29;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 112) = 5;
  v30 = *(a1 + 16);
LABEL_56:
  v32 = *v30;

  return v32();
}

void Backend::Google::FindFullHashesResponseParser::parseDuration(unsigned __int8 *__p)
{
  v2 = __p[112];
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!__p[112])
    {
      goto LABEL_9;
    }

    if (v2 == 1)
    {
      v3 = __p[113];
      v4 = *(__p + 50);
      __p[110] = __p[102];
      *(__p + 54) = v4;
      __p[116] = v3;
    }
  }

  v5 = *(__p + 7);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

void sub_225617BD0(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void sub_225617D20(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>(uint64_t a1)
{
  v3 = *(a1 + 160);
  if (v3 == 2)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      if (*(v13 + 24) == 1)
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = *v13;
        *(a1 + 48) = *(v13 + 16);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(a1 + 56) = 1;
      }

      *(a1 + 24) = 1;
      v14 = *(a1 + 128);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 152);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 144);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 96);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 136), (a1 + 120));
    v4 = *(a1 + 120);
    *(a1 + 96) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 160) = 1;
      v4[2] = a1;
      v6 = *(a1 + 96);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 144) = v1;
  v10 = *(a1 + 120);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 112) = v1;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 112) = 0;
      v11 = a1 + 112;
      *(a1 + 96) = 0;
      *(a1 + 104) = v9;
    }

    *(a1 + 152) = v11;
    v12 = *(a1 + 88);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 152);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 144);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 160) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 96);
    v5 = *(a1 + 128);
    *(a1 + 120) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 160) = 2;
        v5[2] = a1;
        v6 = *(a1 + 120);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 160) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>(uint64_t a1)
{
  if (*(a1 + 160) > 1u)
  {
    if (*(a1 + 160) != 3)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 152);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 144);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 160))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 64);

  operator delete(a1);
}

void sub_22561856C(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>(uint64_t a1)
{
  v3 = *(a1 + 184);
  if (v3 == 2)
  {
    v5 = *(a1 + 144);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 80) = 0;
      if (*(v13 + 48) == 1)
      {
        v14 = *v13;
        *(a1 + 48) = *(v13 + 2);
        *(a1 + 32) = v14;
        *(v13 + 1) = 0;
        *(v13 + 2) = 0;
        *v13 = 0;
        v15 = *(v13 + 24);
        *(a1 + 72) = *(v13 + 5);
        *(a1 + 56) = v15;
        *(v13 + 4) = 0;
        *(v13 + 5) = 0;
        *(v13 + 3) = 0;
        *(a1 + 80) = 1;
      }

      *(a1 + 24) = 1;
      v16 = *(a1 + 152);
      if (v16)
      {
        (*(v16 + 8))();
      }

      v17 = **(a1 + 176);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      v18 = *(a1 + 168);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v18);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 120);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 160), (a1 + 144));
    v4 = *(a1 + 144);
    *(a1 + 120) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 184) = 1;
      v4[2] = a1;
      v6 = *(a1 + 120);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 168) = v1;
  v10 = *(a1 + 144);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 136) = v1;
      v11 = a1 + 136;
      *(a1 + 120) = 0;
      *(a1 + 128) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 136) = 0;
      v11 = a1 + 136;
      *(a1 + 120) = 0;
      *(a1 + 128) = v9;
    }

    *(a1 + 176) = v11;
    v12 = *(a1 + 112);
    if (!v12)
    {
      v21 = std::__throw_bad_function_call[abi:sn200100]();
      v22 = **(a1 + 176);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      v23 = *(a1 + 168);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v23);
      }

      *a1 = 0;
      *(a1 + 184) = 3;
      _Unwind_Resume(v21);
    }

    (*(*v12 + 48))(v12, a1 + 120);
    v5 = *(a1 + 152);
    *(a1 + 144) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 184) = 2;
        v5[2] = a1;
        v6 = *(a1 + 144);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 184) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v19 = *v6;

  return v19();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>(uint64_t a1)
{
  if (*(a1 + 184) > 1u)
  {
    if (*(a1 + 184) != 3)
    {
      v3 = *(a1 + 152);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 176);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 168);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 184))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 88);

  operator delete(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry(uint64_t a1)
{
  v5 = *(a1 + 135);
  if (v5 <= 1)
  {
    if (!*(a1 + 135))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_14;
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_67:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 152);
    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

  if (v5 != 3)
  {
    v12 = *(a1 + 88);
    if (v12)
    {
      goto LABEL_41;
    }

    goto LABEL_67;
  }

  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_67;
  }

LABEL_32:
  detail::lazy_promise<std::optional<std::string>>::result((v6 + 2));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((a1 + 88), v23);
  v24 = *(a1 + 160);
  if (v24)
  {
    (*(v24 + 8))();
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_51;
  }

  if (*(a1 + 205) == 1 && *(a1 + 206) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v22 = (a1 + 111);
  v8 = *(a1 + 88);
  *(a1 + 136) = *(a1 + 96);
  *(a1 + 143) = *(a1 + 103);
  v9 = *(a1 + 184);
  v21 = (a1 + 204);
  v7 = *(a1 + 151);
  v10 = 1;
  while (1)
  {
    while (1)
    {
      v2 = *v22;
      v1 = *v21;
      v11 = *(a1 + 208);
      v3 = *(a1 + 200) | (*(a1 + 202) << 16);
      v5 = 1;
LABEL_14:
      *(a1 + 196) = v5;
      *(a1 + 207) = v11;
      *(a1 + 192) = v3;
      *(a1 + 194) = BYTE2(v3);
      *(a1 + 206) = v2;
      *(a1 + 205) = v10 & 1;
      *(a1 + 176) = v8;
      *(a1 + 184) = v9;
      *(a1 + 204) = v1;
      *(a1 + 151) = v7 & 1;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 168), (a1 + 152));
      v12 = *(a1 + 152);
      *(a1 + 88) = v12;
      if (!v12)
      {
        goto LABEL_67;
      }

      if (*v12)
      {
        v34 = 1;
        goto LABEL_63;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v12 + 2));
      v14 = *v13;
      v15 = *v13 >> 8;
      v16 = *v13 & 0xFFFFFFFF00000000;
      *(a1 + 208) = *v13;
      *(a1 + 202) = BYTE3(v14);
      *(a1 + 200) = v15;
      v17 = *(a1 + 152);
      if (v17)
      {
        (*(v17 + 8))();
      }

      if (v16 != 0x100000000)
      {
        if (HIDWORD(v14))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v39 = v38;
          if (*(a1 + 205) == 1 && *(a1 + 206) < 0)
          {
            operator delete(*(a1 + 176));
          }

          if (*(a1 + 151) == 1 && *(a1 + 204) < 0)
          {
            operator delete(*(a1 + 184));
          }

          *a1 = 0;
          *(a1 + 135) = 5;
          _Unwind_Resume(v39);
        }

        if (v14 & 1) != 0 && *(a1 + 151) == 1 && (*(a1 + 205))
        {
          v28 = *(a1 + 206);
          v29 = *(a1 + 176);
          v30 = *(a1 + 204);
          v31 = *(a1 + 120);
          *(a1 + 32) = *(a1 + 184);
          *(a1 + 40) = v31;
          *(a1 + 47) = *(a1 + 127);
          *(a1 + 55) = v30;
          v32 = *(a1 + 136);
          *(a1 + 56) = v29;
          *(a1 + 64) = v32;
          *(a1 + 71) = *(a1 + 143);
          *(a1 + 79) = v28;
          *(a1 + 80) = 1;
          *(a1 + 24) = 1;
        }

        else
        {
LABEL_51:
          *(a1 + 32) = 0;
          *(a1 + 80) = 0;
          *(a1 + 24) = 1;
          if (*(a1 + 205) == 1 && *(a1 + 206) < 0)
          {
            operator delete(*(a1 + 176));
          }

          if (*(a1 + 151) == 1 && *(a1 + 204) < 0)
          {
            operator delete(*(a1 + 184));
          }
        }

        *a1 = 0;
        *(a1 + 135) = 5;
        v33 = *(a1 + 16);
        goto LABEL_64;
      }

      v18 = *(a1 + 168);
      if (v14 == 2)
      {
        Backend::Google::ProtocolMessageReader::readString(v18, (a1 + 160));
        v6 = *(a1 + 160);
        *(a1 + 152) = v6;
        if (!v6)
        {
          goto LABEL_67;
        }

        if (*v6)
        {
          v35 = 3;
LABEL_61:
          *(a1 + 135) = v35;
          v6[2] = a1;
          v33 = *(a1 + 152);
          goto LABEL_64;
        }

        goto LABEL_32;
      }

      if (v14 != 1)
      {
        break;
      }

      Backend::Google::ProtocolMessageReader::readString(v18, (a1 + 160));
      v6 = *(a1 + 160);
      *(a1 + 152) = v6;
      if (!v6)
      {
        goto LABEL_67;
      }

      if (*v6)
      {
        v35 = 2;
        goto LABEL_61;
      }

LABEL_23:
      detail::lazy_promise<std::optional<std::string>>::result((v6 + 2));
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:sn200100]((a1 + 88), v19);
      v20 = *(a1 + 160);
      if (v20)
      {
        (*(v20 + 8))();
      }

      if (*(a1 + 112) != 1)
      {
        goto LABEL_51;
      }

      if (*(a1 + 151) == 1 && *(a1 + 204) < 0)
      {
        operator delete(*(a1 + 184));
      }

      v21 = (a1 + 111);
      v9 = *(a1 + 88);
      *(a1 + 120) = *(a1 + 96);
      *(a1 + 127) = *(a1 + 103);
      v22 = (a1 + 206);
      v10 = *(a1 + 205);
      v8 = *(a1 + 176);
      v7 = 1;
    }

    Backend::Google::ProtocolMessageReader::skipField(v18, (a1 + 152));
    v12 = *(a1 + 152);
    *(a1 + 88) = v12;
    if (!v12)
    {
      goto LABEL_67;
    }

    if (*v12)
    {
      break;
    }

LABEL_41:
    detail::lazy_promise<BOOL>::result((v12 + 2));
    v26 = *v25;
    v27 = *(a1 + 152);
    if (v27)
    {
      (*(v27 + 8))();
    }

    if (!v26)
    {
      goto LABEL_51;
    }

    v22 = (a1 + 206);
    v10 = *(a1 + 205);
    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    v21 = (a1 + 204);
    v7 = *(a1 + 151);
  }

  v34 = 4;
LABEL_63:
  *(a1 + 135) = v34;
  v12[2] = a1;
  v33 = *(a1 + 88);
LABEL_64:
  v36 = *v33;

  return v36();
}

void Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry(uint64_t a1)
{
  v2 = *(a1 + 135);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        goto LABEL_15;
      }

LABEL_7:
      v5 = *(a1 + 152);
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!*(a1 + 135))
    {
      goto LABEL_15;
    }

    if (v2 == 1)
    {
      v3 = *(a1 + 192);
      v4 = *(a1 + 194);
      *(a1 + 208) = *(a1 + 207);
      *(a1 + 202) = v4;
      *(a1 + 200) = v3;
      goto LABEL_7;
    }
  }

  v5 = *(a1 + 160);
  if (v5)
  {
LABEL_8:
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(a1 + 205) == 1 && *(a1 + 206) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 151) == 1 && *(a1 + 204) < 0)
  {
    operator delete(*(a1 + 184));
  }

LABEL_15:
  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata(uint64_t a1)
{
  v3 = a1 + 120;
  v4 = a1 + 152;
  v5 = *(a1 + 212);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 176);
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        goto LABEL_29;
      }
    }

LABEL_47:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*(a1 + 212))
  {
    v8 = *(a1 + 64);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

  v6 = 0;
  *v4 = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  while (1)
  {
    *(a1 + 204) = v6;
    *(a1 + 213) = v5;
    *(a1 + 200) = v1;
    *(a1 + 202) = BYTE2(v1);
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 192), (a1 + 176));
    v8 = *(a1 + 176);
    *(a1 + 64) = v8;
    if (!v8)
    {
      goto LABEL_47;
    }

    if (*v8)
    {
      v22 = 1;
      goto LABEL_42;
    }

LABEL_13:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v8 + 2));
    v10 = *v9;
    v11 = *v9 >> 8;
    v12 = *v9 & 0xFFFFFFFF00000000;
    *(a1 + 214) = *v9;
    *(a1 + 210) = BYTE3(v10);
    *(a1 + 208) = v11;
    v13 = *(a1 + 176);
    if (v13)
    {
      (*(v13 + 8))();
    }

    if (v12 != 0x100000000)
    {
      if (HIDWORD(v10))
      {
        std::__throw_bad_variant_access[abi:sn200100]();
        v26 = v25;
        std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v3);
        v27 = v4;
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v27);
        *a1 = 0;
        *(a1 + 212) = 4;
        _Unwind_Resume(v26);
      }

      if (v10)
      {
        *(a1 + 32) = *(a1 + 152);
        *(a1 + 48) = *(a1 + 168);
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = 0;
        v20 = 1;
      }

      else
      {
LABEL_36:
        v20 = 0;
        *(a1 + 32) = 0;
      }

      *(a1 + 56) = v20;
      goto LABEL_39;
    }

    v14 = *(a1 + 192);
    if (v10 != 1)
    {
      break;
    }

    *(a1 + 120) = &unk_2838CDBC8;
    *(a1 + 128) = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadataEntry;
    *(a1 + 144) = v3;
    Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>(v14, v3, (a1 + 184));
    v7 = *(a1 + 184);
    *(a1 + 176) = v7;
    if (!v7)
    {
      goto LABEL_47;
    }

    if (*v7)
    {
      *(a1 + 212) = 2;
      v7[2] = a1;
      v21 = *(a1 + 176);
      goto LABEL_44;
    }

LABEL_19:
    detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>::result((v7 + 2));
    std::__optional_copy_base<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry,false>::__optional_copy_base[abi:sn200100]((a1 + 64), v15);
    v16 = *(a1 + 184);
    if (v16)
    {
      (*(v16 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v3);
    if (*(a1 + 112) != 1)
    {
      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
LABEL_39:
      *(a1 + 24) = 1;
      v27 = v4;
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v27);
      *a1 = 0;
      *(a1 + 212) = 4;
      v21 = *(a1 + 16);
      goto LABEL_44;
    }

    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::push_back[abi:sn200100](v4, a1 + 64);
    if (*(a1 + 112))
    {
      if (*(a1 + 111) < 0)
      {
        operator delete(*(a1 + 88));
      }

      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }
    }

LABEL_32:
    LOBYTE(v5) = *(a1 + 214);
    v1 = *(a1 + 208) | (*(a1 + 210) << 16);
    v6 = 1;
  }

  Backend::Google::ProtocolMessageReader::skipField(v14, (a1 + 176));
  v8 = *(a1 + 176);
  *(a1 + 64) = v8;
  if (!v8)
  {
    goto LABEL_47;
  }

  if (!*v8)
  {
LABEL_29:
    detail::lazy_promise<BOOL>::result((v8 + 2));
    v18 = *v17;
    v19 = *(a1 + 176);
    if (v19)
    {
      (*(v19 + 8))();
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v22 = 3;
LABEL_42:
  *(a1 + 212) = v22;
  v8[2] = a1;
  v21 = *(a1 + 64);
LABEL_44:
  v23 = *v21;

  return v23();
}

void Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v6 = *(a1 + 184);
      if (v6)
      {
        (*(v6 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 120);
      goto LABEL_12;
    }

    if (v2 != 3)
    {
      goto LABEL_13;
    }

LABEL_7:
    v5 = *(a1 + 176);
    if (v5)
    {
      (*(v5 + 8))();
    }

LABEL_12:
    v7 = (a1 + 152);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v7);
    goto LABEL_13;
  }

  if (*(a1 + 212))
  {
    v3 = *(a1 + 200);
    v4 = *(a1 + 202);
    *(a1 + 214) = *(a1 + 213);
    *(a1 + 210) = v4;
    *(a1 + 208) = v3;
    goto LABEL_7;
  }

LABEL_13:
  detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

void sub_225619498(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void sub_225619714(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  *v1 = 0;
  *(v1 + 152) = 3;
  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseThreatEntry(uint64_t a1)
{
  v3 = *(a1 + 139);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        goto LABEL_25;
      }
    }

LABEL_42:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*(a1 + 139))
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    *(a1 + 100) = v3;
    *(a1 + 142) = v6;
    *(a1 + 96) = v1;
    *(a1 + 98) = BYTE2(v1);
    *(a1 + 141) = v5;
    *(a1 + 140) = v4;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 88), (a1 + 80));
    v7 = *(a1 + 80);
    *(a1 + 72) = v7;
    if (!v7)
    {
      goto LABEL_42;
    }

    if (*v7)
    {
      v22 = 1;
LABEL_38:
      *(a1 + 139) = v22;
      v7[2] = a1;
      v21 = *(a1 + 72);
      goto LABEL_39;
    }

LABEL_13:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v7 + 2));
    v9 = *v8;
    v10 = *v8 >> 8;
    v11 = *v8 & 0xFFFFFFFF00000000;
    *(a1 + 143) = *v8;
    *(a1 + 106) = BYTE3(v9);
    *(a1 + 104) = v10;
    v12 = *(a1 + 80);
    if (v12)
    {
      (*(v12 + 8))();
    }

    if (v11 != 0x100000000)
    {
      break;
    }

    v13 = *(a1 + 88);
    if (v9 == 1)
    {
      Backend::Google::ProtocolMessageReader::readByteArray<32ul>(v13, (a1 + 80));
      v7 = *(a1 + 80);
      *(a1 + 72) = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      if (*v7)
      {
        v22 = 2;
        goto LABEL_38;
      }

LABEL_19:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v7 + 2));
      v5 = *v14;
      v15 = *(v14 + 1);
      *(a1 + 123) = *(v14 + 1);
      *(a1 + 108) = v15;
      v4 = v14[32];
      v16 = *(a1 + 80);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if ((v4 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      Backend::Google::ProtocolMessageReader::skipField(v13, (a1 + 80));
      v7 = *(a1 + 80);
      *(a1 + 72) = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      if (*v7)
      {
        v22 = 3;
        goto LABEL_38;
      }

LABEL_25:
      detail::lazy_promise<BOOL>::result((v7 + 2));
      v18 = *v17;
      v19 = *(a1 + 80);
      if (v19)
      {
        (*(v19 + 8))();
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v5 = *(a1 + 141);
      v4 = *(a1 + 140);
    }

    v6 = *(a1 + 143);
    v1 = *(a1 + 104) | (*(a1 + 106) << 16);
    v3 = 1;
  }

  if (HIDWORD(v9))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    *a1 = 0;
    *(a1 + 139) = 4;
    _Unwind_Resume(v25);
  }

  if (v9)
  {
    *(a1 + 32) = *(a1 + 141);
    *(a1 + 33) = *(a1 + 108);
    *(a1 + 48) = *(a1 + 123);
    v20 = *(a1 + 140);
  }

  else
  {
LABEL_33:
    v20 = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 64) = v20;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 139) = 4;
  v21 = *(a1 + 16);
LABEL_39:
  v23 = *v21;

  return v23();
}

void Backend::Google::FindFullHashesResponseParser::parseThreatEntry(unsigned __int8 *__p)
{
  v2 = __p[139];
  if (v2 <= 1)
  {
    if (!__p[139])
    {
      goto LABEL_9;
    }

    v3 = *(__p + 48);
    v4 = __p[98];
    __p[143] = __p[142];
    __p[106] = v4;
    *(__p + 52) = v3;
  }

  else if (v2 != 2 && v2 != 3)
  {
    goto LABEL_9;
  }

  v5 = *(__p + 10);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseThreatMatch(uint64_t a1, uint64_t a2, int a3)
{
  v77[4] = *MEMORY[0x277D85DE8];
  v8 = a1 + 152;
  v9 = a1 + 184;
  v10 = a1 + 216;
  v11 = (a1 + 336);
  v72 = a1 + 120;
  v73 = a1 + 248;
  v12 = *(a1 + 367);
  if (v12 <= 3)
  {
    if (*(a1 + 367) > 1u)
    {
      if (v12 == 2)
      {
        v26 = *(a1 + 272);
        if (v26)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v13 = *v9;
        if (*v9)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      if (!*(a1 + 367))
      {
        LOBYTE(v14) = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(v17) = 0;
        LOBYTE(v18) = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = v73;
        *v73 = 0;
        *(v73 + 8) = 0;
        *(v73 + 16) = 0;
        goto LABEL_26;
      }

      v26 = *(a1 + 272);
      if (v26)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_111;
  }

  if (*(a1 + 367) <= 5u)
  {
    if (v12 == 4)
    {
      v26 = *(a1 + 272);
      if (v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + 272);
      if (v26)
      {
        goto LABEL_61;
      }
    }

LABEL_111:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v12 == 6)
  {
    v13 = *v9;
    if (*v9)
    {
      goto LABEL_80;
    }

    goto LABEL_111;
  }

  if (v12 != 7)
  {
    v13 = *v9;
    if (*v9)
    {
      goto LABEL_68;
    }

    goto LABEL_111;
  }

  v13 = *v9;
  if (!*v9)
  {
    goto LABEL_111;
  }

LABEL_49:
  detail::lazy_promise<std::optional<Backend::Google::ThreatEntryType>>::result((v13 + 2));
  v17 = *v38;
  v39 = *(v38 + 4);
  v40 = *(a1 + 272);
  if (v40)
  {
    (*(v40 + 8))();
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_96;
  }

  v4 = v17 >> 8;
  v22 = *(a1 + 296);
  v3 = *(a1 + 304);
  LOBYTE(v12) = *(a1 + 377);
  v25 = *(a1 + 320) | (*(a1 + 322) << 16);
  v21 = *(a1 + 376);
  v20 = *(a1 + 375);
  v6 = *(a1 + 374);
  LOBYTE(v18) = *(a1 + 372);
  v16 = *(a1 + 370);
  v15 = *(a1 + 369);
  v5 = *(a1 + 312) | (*(a1 + 314) << 16);
  v19 = 1;
LABEL_86:
  LOBYTE(v14) = *(a1 + 368);
  while (1)
  {
    v23 = *(a1 + 379);
    a3 = *(a1 + 332) | (*(a1 + 334) << 16);
    v24 = 1;
LABEL_26:
    *(a1 + 328) = v24;
    *(a1 + 378) = v23;
    *(a1 + 324) = a3;
    *(a1 + 326) = BYTE2(a3);
    *(a1 + 296) = v22;
    *(a1 + 304) = v3;
    *(a1 + 377) = v12;
    *(a1 + 320) = v25;
    *(a1 + 322) = BYTE2(v25);
    *(a1 + 376) = v21;
    *(a1 + 375) = v20;
    *(a1 + 374) = v6;
    *(a1 + 373) = v19 & 1;
    *(a1 + 372) = v18;
    *(a1 + 371) = v17;
    *(a1 + 316) = v4;
    *(a1 + 318) = BYTE2(v4);
    *(a1 + 370) = v16 & 1;
    *(a1 + 369) = v15 & 1;
    *(a1 + 368) = v14;
    *(a1 + 312) = v5;
    *(a1 + 314) = BYTE2(v5);
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 288), v9);
    v26 = *v9;
    *(a1 + 272) = *v9;
    if (!v26)
    {
      goto LABEL_111;
    }

    if (*v26)
    {
      v68 = 1;
LABEL_102:
      *(a1 + 367) = v68;
      v26[2] = a1;
      v64 = *(a1 + 272);
      goto LABEL_98;
    }

LABEL_28:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v26 + 2));
    v28 = *v27;
    v29 = *v27 >> 8;
    v30 = *v27 & 0xFFFFFFFF00000000;
    *(a1 + 379) = *v27;
    *(a1 + 334) = BYTE3(v28);
    *(a1 + 332) = v29;
    v31 = *(a1 + 184);
    if (v31)
    {
      (*(v31 + 8))();
    }

    if (v30 != 0x100000000)
    {
      break;
    }

    v32 = *(a1 + 288);
    if (v28 > 3)
    {
      if (v28 == 4)
      {
        *(a1 + 152) = &unk_2838CDA60;
        *(a1 + 160) = Backend::Google::FindFullHashesResponseParser::parseThreatEntryMetadata;
        *(a1 + 176) = v8;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>(v32, v8, (a1 + 280));
        v26 = *(a1 + 280);
        *(a1 + 272) = v26;
        if (!v26)
        {
          goto LABEL_111;
        }

        if (*v26)
        {
          v68 = 5;
          goto LABEL_102;
        }

LABEL_61:
        detail::lazy_promise<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>>::result((v26 + 2));
        std::__optional_copy_base<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>,false>::__optional_copy_base[abi:sn200100](v9, v43);
        v44 = *(a1 + 280);
        if (v44)
        {
          (*(v44 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v8);
        if (*(a1 + 208) != 1)
        {
          goto LABEL_96;
        }

        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__vdeallocate(v73);
        *(a1 + 248) = *(a1 + 184);
        *(a1 + 264) = *(a1 + 200);
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        if (*(a1 + 208))
        {
          *(a1 + 272) = v9;
          std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100]((a1 + 272));
        }

        goto LABEL_71;
      }

      if (v28 == 5)
      {
        *(a1 + 120) = &unk_2838CDAA8;
        *(a1 + 128) = Backend::Google::FindFullHashesResponseParser::parseDuration;
        *(a1 + 144) = v72;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v32, v72, (a1 + 272));
        v13 = *(a1 + 272);
        *v9 = v13;
        if (!v13)
        {
          goto LABEL_111;
        }

        if (*v13)
        {
          v69 = 6;
          goto LABEL_110;
        }

LABEL_80:
        detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v13 + 2));
        v22 = *v51;
        v52 = *(v51 + 8);
        v53 = *(a1 + 272);
        if (v53)
        {
          (*(v53 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v72);
        if ((v52 & 1) == 0)
        {
          goto LABEL_96;
        }

        LOBYTE(v12) = *(a1 + 377);
        if ((v12 & 1) == 0)
        {
          LOBYTE(v12) = 1;
        }

        v25 = *(a1 + 320) | (*(a1 + 322) << 16);
        v21 = *(a1 + 376);
        v20 = *(a1 + 375);
        v6 = *(a1 + 374);
        v19 = *(a1 + 373);
        LOBYTE(v18) = *(a1 + 372);
        LOBYTE(v17) = *(a1 + 371);
        v4 = *(a1 + 316) | (*(a1 + 318) << 16);
        v16 = *(a1 + 370);
        v15 = *(a1 + 369);
        v5 = *(a1 + 312) | (*(a1 + 314) << 16);
        v3 = v22;
        goto LABEL_86;
      }

      if (v28 != 6)
      {
LABEL_66:
        Backend::Google::ProtocolMessageReader::skipField(v32, (a1 + 272));
        v13 = *(a1 + 272);
        *v9 = v13;
        if (!v13)
        {
          goto LABEL_111;
        }

        if (*v13)
        {
          v69 = 8;
          goto LABEL_110;
        }

LABEL_68:
        detail::lazy_promise<BOOL>::result((v13 + 2));
        v46 = *v45;
        v47 = *(a1 + 272);
        if (v47)
        {
          (*(v47 + 8))();
        }

        if (!v46)
        {
          goto LABEL_96;
        }

LABEL_71:
        v22 = *(a1 + 296);
        v3 = *(a1 + 304);
        LOBYTE(v12) = *(a1 + 377);
        v25 = *(a1 + 320) | (*(a1 + 322) << 16);
        v21 = *(a1 + 376);
        v20 = *(a1 + 375);
        v6 = *(a1 + 374);
        v19 = *(a1 + 373);
        LOBYTE(v18) = *(a1 + 372);
        LOBYTE(v17) = *(a1 + 371);
        v4 = *(a1 + 316) | (*(a1 + 318) << 16);
        v16 = *(a1 + 370);
        v15 = *(a1 + 369);
        v5 = *(a1 + 312) | (*(a1 + 314) << 16);
        goto LABEL_86;
      }

      Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>(v32, (a1 + 272));
      v13 = *(a1 + 272);
      *v9 = v13;
      if (!v13)
      {
        goto LABEL_111;
      }

      if (*v13)
      {
        v69 = 7;
LABEL_110:
        *(a1 + 367) = v69;
        v13[2] = a1;
        v64 = *(a1 + 184);
        goto LABEL_98;
      }

      goto LABEL_49;
    }

    if (v28 == 1)
    {
      Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>(v32, v9);
      v26 = *v9;
      *(a1 + 272) = *v9;
      if (!v26)
      {
        goto LABEL_111;
      }

      if (*v26)
      {
        v68 = 2;
        goto LABEL_102;
      }

LABEL_55:
      detail::lazy_promise<std::optional<Backend::Google::ThreatType>>::result((v26 + 2));
      v18 = *v41;
      v42 = *(v41 + 4);
      if (*v9)
      {
        (*(*v9 + 8))();
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_96;
      }

      v25 = v18 >> 8;
      v22 = *(a1 + 296);
      v3 = *(a1 + 304);
      LOBYTE(v12) = *(a1 + 377);
      v21 = *(a1 + 376);
      v20 = *(a1 + 375);
      v6 = *(a1 + 374);
      v19 = *(a1 + 373);
      LOBYTE(v17) = *(a1 + 371);
      v4 = *(a1 + 316) | (*(a1 + 318) << 16);
      v16 = *(a1 + 370);
      v5 = *(a1 + 312) | (*(a1 + 314) << 16);
      v15 = 1;
      goto LABEL_86;
    }

    if (v28 != 2)
    {
      if (v28 != 3)
      {
        goto LABEL_66;
      }

      *(a1 + 216) = &unk_2838CDAF0;
      *(a1 + 224) = Backend::Google::FindFullHashesResponseParser::parseThreatEntry;
      *(a1 + 240) = v10;
      Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>(v32, v10, (a1 + 280));
      v26 = *(a1 + 280);
      *(a1 + 272) = v26;
      if (!v26)
      {
        goto LABEL_111;
      }

      if (*v26)
      {
        v68 = 4;
        goto LABEL_102;
      }

LABEL_37:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v26 + 2));
      v6 = *v33;
      v34 = *(v33 + 1);
      *(v9 + 15) = *(v33 + 1);
      *v9 = v34;
      v35 = v33[32];
      v36 = *(a1 + 280);
      if (v36)
      {
        (*(v36 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v10);
      if ((v35 & 1) == 0)
      {
        goto LABEL_96;
      }

      v37 = *(a1 + 375);
      *v11 = *v9;
      *(v11 + 15) = *(v9 + 15);
      if (v37)
      {
        v20 = v37;
      }

      else
      {
        v20 = 1;
      }

      v22 = *(a1 + 296);
      v3 = *(a1 + 304);
      LOBYTE(v12) = *(a1 + 377);
      v25 = *(a1 + 320) | (*(a1 + 322) << 16);
      v19 = *(a1 + 373);
      LOBYTE(v18) = *(a1 + 372);
      LOBYTE(v17) = *(a1 + 371);
      v4 = *(a1 + 316) | (*(a1 + 318) << 16);
      v16 = *(a1 + 370);
      v15 = *(a1 + 369);
      v5 = *(a1 + 312) | (*(a1 + 314) << 16);
      v21 = v6;
      goto LABEL_86;
    }

    Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>(v32, (a1 + 272));
    v13 = *(a1 + 272);
    *v9 = v13;
    if (!v13)
    {
      goto LABEL_111;
    }

    if (*v13)
    {
      v69 = 3;
      goto LABEL_110;
    }

LABEL_74:
    detail::lazy_promise<std::optional<Backend::Google::PlatformType>>::result((v13 + 2));
    v14 = *v48;
    v49 = *(v48 + 4);
    v50 = *(a1 + 272);
    if (v50)
    {
      (*(v50 + 8))();
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_96;
    }

    v5 = v14 >> 8;
    v22 = *(a1 + 296);
    v3 = *(a1 + 304);
    LOBYTE(v12) = *(a1 + 377);
    v25 = *(a1 + 320) | (*(a1 + 322) << 16);
    v21 = *(a1 + 376);
    v20 = *(a1 + 375);
    v6 = *(a1 + 374);
    v19 = *(a1 + 373);
    LOBYTE(v18) = *(a1 + 372);
    LOBYTE(v17) = *(a1 + 371);
    v4 = *(a1 + 316) | (*(a1 + 318) << 16);
    v16 = 1;
    v15 = *(a1 + 369);
  }

  if (HIDWORD(v28))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v71 = v70;
    *&v75 = v73;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v75);
    *a1 = 0;
    *(a1 + 367) = 9;
    _Unwind_Resume(v71);
  }

  if (v28 & 1) != 0 && *(a1 + 369) == 1 && *(a1 + 370) && *(a1 + 373) && (*(a1 + 375) & 1) != 0 && (*(a1 + 377))
  {
    v54 = *(a1 + 296);
    v55 = *(a1 + 376);
    v56 = *(a1 + 371);
    v57 = *(a1 + 318);
    v58 = *(a1 + 316);
    v59 = (*(a1 + 312) << 8) | (*(a1 + 314) << 24) | *(a1 + 368);
    LODWORD(v75) = (*(a1 + 320) << 8) | (*(a1 + 322) << 24) | *(a1 + 372);
    DWORD1(v75) = v59;
    DWORD2(v75) = (v58 << 8) | (v57 << 24) | v56;
    HIDWORD(v75) = 1;
    v76[0] = v55;
    *&v76[1] = *v11;
    *&v76[16] = *(v11 + 15);
    v60 = *(a1 + 264);
    v61 = *(a1 + 248);
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *v73 = 0;
    v62 = *v76;
    v63 = *&v76[16];
    *(a1 + 32) = v75;
    *(a1 + 48) = v62;
    *(a1 + 64) = v63;
    *(a1 + 80) = v61;
    memset(v77, 0, 24);
    v77[3] = v54;
    *(a1 + 96) = v60;
    *(a1 + 104) = v54;
    *(a1 + 112) = 1;
    *(a1 + 24) = 1;
    v74 = v77;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v74);
    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 32) = 0;
  *(a1 + 112) = 0;
  *(a1 + 24) = 1;
LABEL_97:
  *&v75 = v73;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v75);
  *a1 = 0;
  *(a1 + 367) = 9;
  v64 = *(a1 + 16);
LABEL_98:
  v65 = *v64;
  v66 = *MEMORY[0x277D85DE8];

  return v65();
}

void Backend::Google::FindFullHashesResponseParser::parseThreatMatch(uint64_t a1)
{
  v2 = *(a1 + 367);
  if (v2 > 4)
  {
    if (*(a1 + 367) <= 6u)
    {
      if (v2 == 5)
      {
        v7 = *(a1 + 280);
        if (v7)
        {
          (*(v7 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 152);
      }

      else
      {
        v8 = *(a1 + 272);
        if (v8)
        {
          (*(v8 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 120);
      }

      goto LABEL_24;
    }

    if (v2 == 7 || v2 == 8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*(a1 + 367) > 1u)
    {
      if (v2 != 2)
      {
        if (v2 != 3)
        {
          v3 = *(a1 + 280);
          if (v3)
          {
            (*(v3 + 8))();
          }

          std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 216);
          goto LABEL_24;
        }

LABEL_11:
        v4 = *(a1 + 272);
        if (!v4)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }

LABEL_15:
      v4 = *(a1 + 184);
      if (!v4)
      {
LABEL_24:
        v9 = (a1 + 248);
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100](&v9);
        goto LABEL_25;
      }

LABEL_16:
      (*(v4 + 8))();
      goto LABEL_24;
    }

    if (*(a1 + 367))
    {
      v5 = *(a1 + 324);
      v6 = *(a1 + 326);
      *(a1 + 379) = *(a1 + 378);
      *(a1 + 334) = v6;
      *(a1 + 332) = v5;
      goto LABEL_15;
    }
  }

LABEL_25:
  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse(uint64_t a1)
{
  v8 = (a1 + 328);
  v9 = a1 + 184;
  v10 = a1 + 216;
  v11 = a1 + 248;
  v12 = a1 + 280;
  v13 = *(a1 + 372);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = *(a1 + 96);
      if (v14)
      {
        goto LABEL_36;
      }
    }

    else if (v13 == 4)
    {
      v14 = *(a1 + 96);
      if (v14)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v14 = *(a1 + 96);
      if (v14)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_72;
  }

  if (!*(a1 + 372))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *v12 = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    goto LABEL_53;
  }

  if (v13 != 1)
  {
    v21 = *(a1 + 304);
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_72:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v14 = *(a1 + 96);
  if (!v14)
  {
    goto LABEL_72;
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<unsigned int>>::result((v14 + 2));
    v23 = *v22;
    v24 = *v22 >> 8;
    v25 = *v22 & 0xFFFFFFFF00000000;
    *(a1 + 380) = *v22;
    *(v8 + 42) = BYTE3(v23);
    *(v8 + 20) = v24;
    v26 = *(a1 + 304);
    if (v26)
    {
      (*(v26 + 8))();
    }

    if (v25 != 0x100000000)
    {
      if (HIDWORD(v23))
      {
        std::__throw_bad_variant_access[abi:sn200100]();
        v57 = v56;
        std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v11);
        v59[0] = v12;
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](v59);
        *a1 = 0;
        *(v8 + 44) = 6;
        _Unwind_Resume(v57);
      }

      if (v23 & 1) != 0 && ((v43 = *(a1 + 280), v44 = *(a1 + 288), v45 = *(a1 + 376), v43 != v44) || (*(a1 + 376)))
      {
        v46 = *(v8 + 6) | (*(v8 + 14) << 16);
        v47 = v8[2];
        v48 = *(a1 + 375);
        v49 = *(v8 + 2) | (*(v8 + 6) << 16);
        v50 = *v8;
        v51 = *(a1 + 374);
        v52 = *(a1 + 373);
        v53 = *(a1 + 296);
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        v60[8] = v51;
        *&v60[16] = (v50 << 8) | (v49 << 40) | v48;
        v60[24] = v45;
        *(a1 + 32) = v43;
        *(a1 + 40) = v44;
        *(a1 + 48) = v53;
        *v60 = (v47 << 8) | (v46 << 40) | v52;
        memset(v59, 0, sizeof(v59));
        *(a1 + 56) = *v60;
        *(a1 + 65) = *&v60[9];
        *(a1 + 88) = 1;
        *(a1 + 24) = 1;
        v58 = v59;
        std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v58);
      }

      else
      {
LABEL_62:
        *(a1 + 32) = 0;
        *(a1 + 88) = 0;
        *(a1 + 24) = 1;
      }

      v59[0] = v12;
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](v59);
      *a1 = 0;
      *(v8 + 44) = 6;
      v42 = *(a1 + 16);
      goto LABEL_64;
    }

    v27 = *(a1 + 320);
    if (v23 == 3)
    {
      *(a1 + 248) = &unk_2838CDAA8;
      *(a1 + 256) = Backend::Google::FindFullHashesResponseParser::parseDuration;
      *(a1 + 272) = v11;
      Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v27, v11, (a1 + 304));
      v14 = *(a1 + 304);
      *(a1 + 96) = v14;
      if (!v14)
      {
        goto LABEL_72;
      }

      if (*v14)
      {
        v41 = 4;
        goto LABEL_56;
      }

LABEL_42:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v14 + 2));
      v5 = *v36;
      v18 = *(v36 + 8);
      v37 = *(a1 + 304);
      if (v37)
      {
        (*(v37 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v11);
      if ((v18 & 1) == 0)
      {
        goto LABEL_62;
      }

      v3 = v5 >> 8;
      v6 = *(a1 + 344);
      v2 = *(a1 + 378);
      v1 = v8[2] | ((*(v8 + 6) | (*(v8 + 14) << 16)) << 32);
      v16 = *(a1 + 374);
      v15 = *(a1 + 373);
      v17 = v5;
      LOBYTE(v13) = v18;
      goto LABEL_52;
    }

    if (v23 != 2)
    {
      break;
    }

    *(a1 + 216) = &unk_2838CDAA8;
    *(a1 + 224) = Backend::Google::FindFullHashesResponseParser::parseDuration;
    *(a1 + 240) = v10;
    Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v27, v10, (a1 + 304));
    v14 = *(a1 + 304);
    *(a1 + 96) = v14;
    if (!v14)
    {
      goto LABEL_72;
    }

    if (*v14)
    {
      v41 = 3;
      goto LABEL_56;
    }

LABEL_36:
    detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v14 + 2));
    v6 = *v34;
    v16 = *(v34 + 8);
    v35 = *(a1 + 304);
    if (v35)
    {
      (*(v35 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v10);
    if ((v16 & 1) == 0)
    {
      goto LABEL_62;
    }

    v1 = v6 >> 8;
    v5 = *(a1 + 352);
    LOBYTE(v13) = *(a1 + 379);
    v18 = *(a1 + 376);
    v17 = *(a1 + 375);
    v3 = *v8 | ((*(v8 + 2) | (*(v8 + 6) << 16)) << 32);
    v15 = v6;
    v2 = v16;
LABEL_52:
    v19 = *(a1 + 380);
    v4 = *(v8 + 20) | (*(v8 + 42) << 16);
    v20 = 1;
LABEL_53:
    *(a1 + 379) = v13;
    *(a1 + 344) = v6;
    *(a1 + 352) = v5;
    *(a1 + 378) = v2;
    *(a1 + 364) = v20;
    *(a1 + 377) = v19;
    *(v8 + 16) = v4;
    *(v8 + 34) = BYTE2(v4);
    *(a1 + 376) = v18;
    v8[2] = v1;
    *(v8 + 14) = BYTE6(v1);
    *(v8 + 6) = WORD2(v1);
    *(a1 + 375) = v17;
    *v8 = v3;
    *(v8 + 6) = BYTE6(v3);
    *(v8 + 2) = WORD2(v3);
    *(a1 + 374) = v16;
    *(a1 + 373) = v15;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 320), (a1 + 304));
    v14 = *(a1 + 304);
    *(a1 + 96) = v14;
    if (!v14)
    {
      goto LABEL_72;
    }

    if (*v14)
    {
      v41 = 1;
      goto LABEL_56;
    }
  }

  if (v23 == 1)
  {
    *(a1 + 184) = &unk_2838CDB80;
    *(a1 + 192) = Backend::Google::FindFullHashesResponseParser::parseThreatMatch;
    *(a1 + 208) = v9;
    Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::FindFullHashesResponse::ThreatMatch>(v27, v9, (a1 + 312));
    v21 = *(a1 + 312);
    *(a1 + 304) = v21;
    if (!v21)
    {
      goto LABEL_72;
    }

    if (*v21)
    {
      *(v8 + 44) = 2;
      v21[2] = a1;
      v42 = *(a1 + 304);
      goto LABEL_64;
    }

LABEL_25:
    detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>>::result((v21 + 2));
    std::__optional_copy_base<Backend::Google::FindFullHashesResponse::ThreatMatch,false>::__optional_copy_base[abi:sn200100](a1 + 96, v28);
    v29 = *(a1 + 312);
    if (v29)
    {
      (*(v29 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v9);
    if (*(a1 + 176) != 1)
    {
      goto LABEL_62;
    }

    v30 = *(a1 + 288);
    if (v30 >= *(a1 + 296))
    {
      v33 = std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__emplace_back_slow_path<Backend::Google::FindFullHashesResponse::ThreatMatch>(v12, (a1 + 96));
    }

    else
    {
      if (!v30)
      {
        __break(1u);
        goto LABEL_72;
      }

      v31 = *(a1 + 96);
      v32 = *(a1 + 128);
      *(v30 + 16) = *(a1 + 112);
      *(v30 + 32) = v32;
      *v30 = v31;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      *(v30 + 48) = 0;
      *(v30 + 48) = *(a1 + 144);
      *(v30 + 64) = *(a1 + 160);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      *(v30 + 72) = *(a1 + 168);
      v33 = v30 + 80;
    }

    *(a1 + 288) = v33;
    if (*(a1 + 176))
    {
      *(a1 + 304) = a1 + 144;
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__destroy_vector::operator()[abi:sn200100]((a1 + 304));
    }

    goto LABEL_51;
  }

  Backend::Google::ProtocolMessageReader::skipField(v27, (a1 + 304));
  v14 = *(a1 + 304);
  *(a1 + 96) = v14;
  if (!v14)
  {
    goto LABEL_72;
  }

  if (!*v14)
  {
LABEL_48:
    detail::lazy_promise<BOOL>::result((v14 + 2));
    v39 = *v38;
    v40 = *(a1 + 304);
    if (v40)
    {
      (*(v40 + 8))();
    }

    if (!v39)
    {
      goto LABEL_62;
    }

LABEL_51:
    LOBYTE(v13) = *(a1 + 379);
    v6 = *(a1 + 344);
    v5 = *(a1 + 352);
    v2 = *(a1 + 378);
    v18 = *(a1 + 376);
    v1 = v8[2] | ((*(v8 + 6) | (*(v8 + 14) << 16)) << 32);
    v17 = *(a1 + 375);
    v3 = *v8 | ((*(v8 + 2) | (*(v8 + 6) << 16)) << 32);
    v16 = *(a1 + 374);
    v15 = *(a1 + 373);
    goto LABEL_52;
  }

  v41 = 5;
LABEL_56:
  *(v8 + 44) = v41;
  v14[2] = a1;
  v42 = *(a1 + 96);
LABEL_64:
  v54 = *v42;

  return v54();
}

void Backend::Google::FindFullHashesResponseParser::parseFindFullHashesResponse(uint64_t a1)
{
  v2 = *(a1 + 372);
  if (v2 <= 2)
  {
    if (*(a1 + 372))
    {
      if (v2 != 1)
      {
        v8 = *(a1 + 312);
        if (v8)
        {
          (*(v8 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<Backend::Google::FindFullHashesResponse::ThreatMatch>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 184);
        goto LABEL_20;
      }

      v5 = *(a1 + 360);
      v6 = *(a1 + 362);
      *(a1 + 380) = *(a1 + 377);
      *(a1 + 370) = v6;
      *(a1 + 368) = v5;
      goto LABEL_11;
    }
  }

  else
  {
    if (*(a1 + 372) <= 4u)
    {
      if (v2 == 3)
      {
        v3 = *(a1 + 304);
        if (v3)
        {
          (*(v3 + 8))();
        }

        v4 = a1 + 216;
      }

      else
      {
        v9 = *(a1 + 304);
        if (v9)
        {
          (*(v9 + 8))();
        }

        v4 = a1 + 248;
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v4);
LABEL_20:
      v10 = (a1 + 280);
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v10);
      goto LABEL_21;
    }

    if (v2 == 5)
    {
LABEL_11:
      v7 = *(a1 + 304);
      if (v7)
      {
        (*(v7 + 8))();
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (!v2)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  detail::lazy_promise<std::optional<Backend::Google::FindFullHashesResponse>>::result(v2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 80) = 0;
  if (*(v4 + 56) == 1)
  {
    *(a1 + 24) = *v4;
    *(a1 + 40) = *(v4 + 16);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v5 = *(v4 + 24);
    *(a1 + 57) = *(v4 + 33);
    *(a1 + 48) = v5;
    *(a1 + 80) = 1;
  }

  (*(*(a1 + 176) + 8))();
  v6 = *(a1 + 112);
  if (!v6)
  {
    v9 = std::__throw_bad_function_call[abi:sn200100]();
    if (*(a1 + 80) == 1)
    {
      v11 = v1;
      std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v11);
    }

    v10 = **(a1 + 168);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v10);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100](a1 + 88);
    *a1 = 0;
    *(a1 + 17) = 1;
    _Unwind_Resume(v9);
  }

  (*(*v6 + 48))(v6, a1 + 24);
  if (*(a1 + 80) == 1)
  {
    v11 = (a1 + 24);
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v11);
  }

  v7 = **(a1 + 168);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  result = std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100](a1 + 88);
  *a1 = 0;
  *(a1 + 17) = 1;
  return result;
}

void Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>(void *__p)
{
  if ((*(__p + 17) & 1) == 0)
  {
    v2 = __p[22];
    (*(__p[22] + 8))();
    v3 = *__p[21];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100]((__p + 11));
  }

  v4 = __p[20];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::FullHashCache::FullHashCache(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = a3;
  return a1;
}

void Backend::Google::FullHashCache::~FullHashCache(Backend::Google::FullHashCache *this)
{
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 7, 0);

  std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::destroy(this + 24, *(this + 4));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void Backend::Google::FullHashCache::lookup(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 16));
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  __dst[32] = a3;
  if (a3)
  {
    memcpy(__dst, a2, a3);
  }

  v9 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::find<Backend::Google::Hash>(a1 + 24, __dst);
  v10 = v9;
  if (a1 + 32 != v9)
  {
    v11 = *(v9 + 88);
    v12 = *(v9 + 96);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = *(v11 + 1) == *a2 && *(v11 + 3) == a2[1];
          v16 = v15 && *(v11 + 5) == a2[2];
          if (!v16 || *(v11 + 7) != a2[3])
          {
            break;
          }

          v18 = *v11;
          v19 = *(a1 + 64);
          v20 = *(a4 + 24);
          if (v13 >= v20)
          {
            v21 = v13 - *v8;
            v22 = (v21 >> 4) + 1;
            if (v22 >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v23 = v20 - *v8;
            v24 = v23 >> 3;
            if (v23 >> 3 <= v22)
            {
              v24 = (v21 >> 4) + 1;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF0)
            {
              v25 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v24;
            }

            if (!v25 || (v26 = std::allocator<Backend::Google::Database::HashSizeBucket>::allocate_at_least[abi:sn200100](a4 + 8, v25)) == 0)
            {
LABEL_38:
              __break(1u);
              return;
            }

            v28 = &v26[v21];
            v34 = &v26[16 * v27];
            *v28 = v18;
            *(v28 + 4) = 0x100000006;
            *(v28 + 3) = v19;
            v13 = &v26[v21 + 16];
            v29 = *(a4 + 8);
            v30 = *(a4 + 16) - v29;
            v31 = &v28[-v30];
            memcpy(&v28[-v30], v29, v30);
            v32 = *(a4 + 8);
            *(a4 + 8) = v31;
            *(a4 + 16) = v13;
            *(a4 + 24) = v34;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            if (!v13)
            {
              goto LABEL_38;
            }

            *v13 = v18;
            *(v13 + 4) = 0x100000006;
            *(v13 + 12) = v19;
            v13 += 16;
          }

          *(a4 + 16) = v13;
          v11 += 12;
          v14 = 1;
          if (v11 == v12)
          {
            goto LABEL_36;
          }
        }

        v11 += 12;
      }

      while (v11 != v12);
      if (v14)
      {
        goto LABEL_36;
      }
    }

    if (*(v10 + 80) == 1)
    {
      *a4 = 1;
    }
  }

LABEL_36:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_22561B398(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void Backend::Google::FullHashCache::addSafePrefix(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  v8 = a3;
  v7 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__emplace_unique_key_args<Backend::Google::Hash,std::piecewise_construct_t const&,std::tuple<Backend::Google::Hash const&>,std::tuple<>>((a1 + 24), a3, &std::piecewise_construct, &v8);
  v7[12] = v7[11];
  v7[15] = v7[14];
  if ((v7[10] & 1) == 0)
  {
    *(v7 + 80) = 1;
  }

  v7[9] = a4;
  Backend::Google::FullHashCache::updateExpirationTimer(a1);
}

void Backend::Google::FullHashCache::updateExpirationTimer(Backend::Google::FullHashCache *this)
{
  CacheExpirationTime = Backend::Google::FullHashCache::nextCacheExpirationTime(this);
  if (v3)
  {
    v4 = CacheExpirationTime;
    v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v6 = dispatch_walltime(0, 1000 * (v4 - v5.__d_.__rep_));
    v7 = *(this + 6);
    if (v7)
    {

      dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(this + 2));
      v11 = *(this + 6);
      *(this + 6) = v10;

      std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v19, this);
      v12 = v19;
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:sn200100](*(&v12 + 1));
      }

      v13 = *(this + 6);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3321888768;
      handler[2] = ___ZN7Backend6Google13FullHashCache21updateExpirationTimerEv_block_invoke;
      handler[3] = &__block_descriptor_48_ea8_32c67_ZTSKZN7Backend6Google13FullHashCache21updateExpirationTimerEvE3__0_e5_v8__0l;
      if (*(&v12 + 1))
      {
        atomic_fetch_add_explicit((*(&v12 + 1) + 16), 1uLL, memory_order_relaxed);
        v18 = v12;
        atomic_fetch_add_explicit((*(&v12 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_source_set_event_handler(v13, handler);
        std::__shared_weak_count::__release_weak(*(&v12 + 1));
      }

      else
      {
        v18 = v12;
        dispatch_source_set_event_handler(v13, handler);
      }

      dispatch_source_set_timer(*(this + 6), v6, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(this + 6));
      std::string::basic_string[abi:sn200100]<0>(__p, off_278564F00[*(this + 16) - 1]);
      v14 = operator new(0x18uLL);
      v19 = *__p;
      v20 = v16;
      __p[1] = 0;
      v16 = 0;
      __p[0] = 0;
      Platform::Transaction::Transaction(v14, &v19);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
      }

      std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 7, v14);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v18 + 1));
      }

      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v12 + 1));
      }
    }
  }

  else
  {
    v8 = *(this + 6);
    if (v8)
    {
      dispatch_source_cancel(v8);
      v9 = *(this + 6);
    }

    else
    {
      v9 = 0;
    }

    *(this + 6) = 0;

    std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 7, 0);
  }
}

void sub_22561B698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  operator delete(v22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(a1);
}

void Backend::Google::FullHashCache::handleFullHashResponse(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v17[6] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 16));
  v17[0] = a4;
  v10 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__emplace_unique_key_args<Backend::Google::Hash,std::piecewise_construct_t const&,std::tuple<Backend::Google::Hash const&>,std::tuple<>>((a1 + 24), a4, &std::piecewise_construct, v17);
  v11 = v10;
  if (*(a3 + 56) == 1)
  {
    v12 = std::remove[abi:sn200100]<std::__wrap_iter<std::array<unsigned char,32ul> *>,std::array<unsigned char,32ul>>(v10[14], v10[15], a3);
    v13 = v11[15];
    if (v12 > v13)
    {
      goto LABEL_10;
    }

    if (v12 != v13)
    {
      v14 = v11[15];
      v11[15] = v12;
    }

    LODWORD(v17[0]) = a2;
    if ((*(a3 + 56) & 1) == 0)
    {
LABEL_10:
      __break(1u);
    }

    v15 = *(a3 + 16);
    *(v17 + 4) = *a3;
    *(&v17[2] + 4) = v15;
    v17[5] = a5;
    std::vector<Backend::Google::FullHashCache::Value::Entry>::push_back[abi:sn200100]((v11 + 11), v17);
  }

  if ((v11[10] & 1) == 0)
  {
    *(v11 + 80) = 1;
  }

  v11[9] = a5;
  Backend::Google::FullHashCache::updateExpirationTimer(a1);
  v16 = *MEMORY[0x277D85DE8];
}

void *std::remove[abi:sn200100]<std::__wrap_iter<std::array<unsigned char,32ul> *>,std::array<unsigned char,32ul>>(void *a1, void *a2, void *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      v5 = *result == *a3 && result[1] == a3[1];
      v6 = v5 && result[2] == a3[2];
      if (v6 && result[3] == a3[3])
      {
        break;
      }

      result += 4;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 4; i != a2; i += 4)
      {
        if (*i != *a3 || i[1] != a3[1] || i[2] != a3[2] || i[3] != a3[3])
        {
          v12 = *(i + 1);
          *result = *i;
          *(result + 1) = v12;
          result += 4;
        }
      }
    }
  }

  return result;
}

void std::vector<Backend::Google::FullHashCache::Value::Entry>::push_back[abi:sn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    if (v4)
    {
      v6 = *a2;
      v7 = a2[2];
      v4[1] = a2[1];
      v4[2] = v7;
      *v4 = v6;
      v8 = (v4 + 3);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v9 = v4 - *a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4) + 1;
  if (v10 > 0x555555555555555)
  {
    goto LABEL_16;
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (!v12 || (v13 = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::allocate_at_least[abi:sn200100](a1, v12)) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = &v13[v9];
  v16 = &v13[48 * v14];
  v17 = *a2;
  v18 = a2[2];
  *(v15 + 1) = a2[1];
  *(v15 + 2) = v18;
  *v15 = v17;
  v8 = &v13[v9 + 48];
  v19 = *(a1 + 8) - *a1;
  v20 = &v15[-v19];
  memcpy(&v15[-v19], *a1, v19);
  v21 = *a1;
  *a1 = v20;
  *(a1 + 8) = v8;
  *(a1 + 16) = v16;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_14:
  *(a1 + 8) = v8;
}

void Backend::Google::FullHashCache::addUnsafeFullHash(uint64_t a1, int *a2, __int128 *a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7)
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 16));
  BYTE12(v23) = a4;
  if (a4)
  {
    memcpy(&__dst, a3, a4);
  }

  p_dst = &__dst;
  v14 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__emplace_unique_key_args<Backend::Google::Hash,std::piecewise_construct_t const&,std::tuple<Backend::Google::Hash const&>,std::tuple<>>((a1 + 24), &__dst, &std::piecewise_construct, &p_dst);
  v15 = v14 + 15;
  v16 = std::remove[abi:sn200100]<std::__wrap_iter<std::array<unsigned char,32ul> *>,std::array<unsigned char,32ul>>(v14[14], v14[15], a3);
  if (v16 > v14[15])
  {
    __break(1u);
  }

  if (v16 != *v15)
  {
    v17 = *v15;
    v14[15] = v16;
  }

  __dst = *a2;
  v18 = a3[1];
  v22 = *a3;
  v23 = v18;
  v24 = a5;
  std::vector<Backend::Google::FullHashCache::Value::Entry>::push_back[abi:sn200100]((v14 + 11), &__dst);
  if (a7)
  {
    if ((v14[10] & 1) == 0)
    {
      *(v14 + 80) = 1;
    }

    v14[9] = a6;
  }

  Backend::Google::FullHashCache::updateExpirationTimer(a1);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t Backend::Google::FullHashCache::nextCacheExpirationTime(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[2]);
  if (!this[5])
  {
    return 0;
  }

  v2 = this[3];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v2 != (this + 4))
  {
    do
    {
      v4 = *(v2 + 11);
      v5 = *(v2 + 12);
      for (i = v4; i != v5; i += 48)
      {
        if (*(i + 40) < result)
        {
          result = *(i + 40);
        }
      }

      if (v4 == v5 && (*(v2 + 80) & 1) != 0 && *(v2 + 9) < result)
      {
        result = *(v2 + 9);
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != (this + 4));
  }

  return result;
}

void ___ZN7Backend6Google13FullHashCache21updateExpirationTimerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        Backend::Google::FullHashCache::expirationTimerFired(v5);
      }

      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c67_ZTSKZN7Backend6Google13FullHashCache21updateExpirationTimerEvE3__0(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c67_ZTSKZN7Backend6Google13FullHashCache21updateExpirationTimerEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t Backend::Google::FullHashCache::expirationTimerFired(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[2]);
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v50 = this;
  v3 = this[3];
  v51 = (this + 3);
  v52 = (this + 4);
  if (v3 != (this + 4))
  {
    rep = v2.__d_.__rep_;
    do
    {
      v7 = v3[11];
      v5 = v3[12];
      v6 = v3 + 11;
      v3[12] = 0;
      v3[13] = 0;
      v3[11] = 0;
      if (v7 != v5)
      {
        for (i = v7; i != v5; i += 3)
        {
          if (*(i + 5) <= rep)
          {
            v14 = v3[15];
            v15 = v3[16];
            if (v14 >= v15)
            {
              v32 = v3[14];
              v33 = v14 - v32;
              v34 = ((v14 - v32) >> 5) + 1;
              if (v34 >> 59)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v35 = v15 - v32;
              if (v35 >> 4 > v34)
              {
                v34 = v35 >> 4;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFE0)
              {
                v36 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (!v36)
              {
                goto LABEL_51;
              }

              v37 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100]((v3 + 14), v36);
              if (!v37)
              {
                goto LABEL_51;
              }

              v39 = &v33[v37];
              v40 = v37 + 32 * v38;
              v41 = *(i + 20);
              *v39 = *(i + 4);
              *(v39 + 1) = v41;
              v17 = &v33[v37 + 32];
              v42 = v3[14];
              v43 = v3[15] - v42;
              v44 = &v39[-v43];
              memcpy(&v39[-v43], v42, v43);
              v45 = v3[14];
              v3[14] = v44;
              v3[15] = v17;
              v3[16] = v40;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              if (!v14)
              {
                goto LABEL_51;
              }

              v16 = *(i + 20);
              *v14 = *(i + 4);
              v14[1] = v16;
              v17 = (v14 + 2);
            }

            v3[15] = v17;
          }

          else
          {
            v9 = v3[12];
            v10 = v3[13];
            if (v9 >= v10)
            {
              v18 = v9 - *v6;
              v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 4) + 1;
              if (v19 > 0x555555555555555)
              {
                goto LABEL_52;
              }

              v20 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v6) >> 4);
              if (2 * v20 > v19)
              {
                v19 = 2 * v20;
              }

              if (v20 >= 0x2AAAAAAAAAAAAAALL)
              {
                v21 = 0x555555555555555;
              }

              else
              {
                v21 = v19;
              }

              if (!v21 || (v22 = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::allocate_at_least[abi:sn200100]((v3 + 11), v21)) == 0)
              {
LABEL_51:
                __break(1u);
LABEL_52:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v24 = &v22[v18];
              v25 = &v22[48 * v23];
              v26 = *i;
              v27 = i[2];
              *(v24 + 1) = i[1];
              *(v24 + 2) = v27;
              *v24 = v26;
              v13 = &v22[v18 + 48];
              v28 = v3[11];
              v29 = v3[12] - v28;
              v30 = &v22[v18 - v29];
              memcpy(v30, v28, v29);
              v31 = v3[11];
              v3[11] = v30;
              v3[12] = v13;
              v3[13] = v25;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              if (!v9)
              {
                goto LABEL_51;
              }

              v11 = *i;
              v12 = i[2];
              v9[1] = i[1];
              v9[2] = v12;
              *v9 = v11;
              v13 = (v9 + 3);
            }

            v3[12] = v13;
          }
        }
      }

      if (v7)
      {
        operator delete(v7);
      }

      if (v3[11] != v3[12] || *(v3 + 80) == 1 && v3[9] > rep)
      {
        v46 = v3[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v3[2];
            v48 = *v47 == v3;
            v3 = v47;
          }

          while (!v48);
        }
      }

      else
      {
        v47 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::erase(v51, v3);
      }

      v3 = v47;
    }

    while (v47 != v52);
  }

  return Backend::Google::FullHashCache::updateExpirationTimer(v50);
}

void sub_22561BFA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(32 * a2);
}

void std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,void *>>>::destroy[abi:sn200100]<std::pair<Backend::Google::Hash const,Backend::Google::FullHashCache::Value>,void,0>(a1, a2 + 4);

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,void *>>>::destroy[abi:sn200100]<std::pair<Backend::Google::Hash const,Backend::Google::FullHashCache::Value>,void,0>(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[10];
    if (v3)
    {
      a2[11] = v3;
      operator delete(v3);
    }

    v4 = a2[7];
    if (v4)
    {
      a2[8] = v4;

      operator delete(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::find<Backend::Google::Hash>(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__lower_bound<Backend::Google::Hash>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = a2[32];
  v7 = *(v4 + 64);
  v8 = v7 >= v6 ? a2[32] : *(v4 + 64);
  v9 = memcmp(a2, (v4 + 32), v8);
  v10 = v6 < v7;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v10)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__lower_bound<Backend::Google::Hash>(int a1, unsigned __int8 *__s2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = __s2[32];
    do
    {
      v8 = *(v5 + 64);
      if (v7 >= v8)
      {
        v9 = *(v5 + 64);
      }

      else
      {
        v9 = v7;
      }

      v10 = memcmp((v5 + 32), __s2, v9);
      v11 = v8 < v7;
      if (v10)
      {
        v11 = v10 < 0;
      }

      v12 = !v11;
      if (v11)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        a4 = v5;
      }

      v5 = *(v5 + v13);
    }

    while (v5);
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__emplace_unique_key_args<Backend::Google::Hash,std::piecewise_construct_t const&,std::tuple<Backend::Google::Hash const&>,std::tuple<>>(uint64_t **a1, unsigned __int8 *__s1, uint64_t a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__find_equal<Backend::Google::Hash>(a1, &v13, __s1);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v9 = operator new(0x88uLL);
    v7 = v9;
    v10 = *a4;
    v11 = *(*a4 + 32);
    *(v9 + 64) = v11;
    if (v11)
    {
      memmove(v9 + 4, v10, v11);
    }

    *(v7 + 15) = 0u;
    *(v7 + 13) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 9) = 0u;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v13, v8, v7);
  }

  return v7;
}

void *std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__find_equal<Backend::Google::Hash>(uint64_t a1, void *a2, unsigned __int8 *__s1)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = __s1[32];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 64);
        if (v9 >= v7)
        {
          v10 = v7;
        }

        else
        {
          v10 = *(v4 + 64);
        }

        v11 = memcmp(__s1, (v4 + 32), v10);
        v12 = v7 < v9;
        if (v11)
        {
          v12 = v11 < 0;
        }

        if (!v12)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v13 = memcmp(v8 + 4, __s1, v10);
      v14 = v9 < v7;
      if (v13)
      {
        v14 = v13 < 0;
      }

      if (!v14)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,void *>>>::destroy[abi:sn200100]<std::pair<Backend::Google::Hash const,Backend::Google::FullHashCache::Value>,void,0>(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

uint64_t *std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(void *a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = &unk_2838CE468;
  v9[1] = a3;
  v9[3] = v9;
  CoroutineCaller<std::shared_ptr<ReadStream>>::CoroutineCaller(a1, &v7, v9);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_22561C84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

void *Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x118uLL);
  *result = Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse;
  result[30] = a1;
  result[1] = Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 276) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xC8uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>;
  v6[21] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 12), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 192) = 0;
  return result;
}

void *Backend::Google::HashesSearchResponseParser::parseFullHash@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x108uLL);
  *result = Backend::Google::HashesSearchResponseParser::parseFullHash;
  result[26] = a1;
  result[1] = Backend::Google::HashesSearchResponseParser::parseFullHash;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 259) = 0;
  return result;
}

void *Backend::Google::HashesSearchResponseParser::parseDuration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x78uLL);
  *result = Backend::Google::HashesSearchResponseParser::parseDuration;
  result[8] = a1;
  result[1] = Backend::Google::HashesSearchResponseParser::parseDuration;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 112) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>;
  v6[18] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 9), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 168) = 0;
  return result;
}

void *Backend::Google::HashesSearchResponseParser::parseFullHashDetail@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xB0uLL);
  *result = Backend::Google::HashesSearchResponseParser::parseFullHashDetail;
  result[18] = a1;
  result[1] = Backend::Google::HashesSearchResponseParser::parseFullHashDetail;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 168) = 0;
  return result;
}

void detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_22561CC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 56) == 1)
  {
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Backend::Google::HashesSearchResponse::FullHash>::__emplace_back_slow_path<Backend::Google::HashesSearchResponse::FullHash>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = std::allocator<SafeBrowsing::DatabaseStatus::Database>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashesSearchResponse::FullHash>,Backend::Google::HashesSearchResponse::FullHash*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash>::~__split_buffer(&v16);
  return v15;
}

void sub_22561CDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashesSearchResponse::FullHash>,Backend::Google::HashesSearchResponse::FullHash*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v8 = (v5 + 32);
      std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v8);
      v5 += 56;
    }
  }
}

void **std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash>::~__split_buffer(void **a1)
{
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash>::clear[abi:sn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash>::clear[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = (i - 24);
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v4);
  }
}

void std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        v6 = v4 - 56;
        v7 = (v4 - 24);
        std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    std::vector<unsigned int>::vector[abi:sn200100]((a1 + 8), a2 + 8);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_22561D048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__emplace_back_slow_path<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v9 = &v8[v2], v17 = v8, v18 = &v8[v2], *(&v19 + 1) = &v8[32 * v10], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  *v9 = *a2;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v19 = v9 + 32;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::~__split_buffer(&v17);
  return v16;
}

void sub_22561D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_12:
        __break(1u);
        return;
      }

      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destruct_at_end[abi:sn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destruct_at_end[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void *std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__vallocate[abi:sn200100](result, a4);

    return std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__construct_at_end<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(v6, a2, a3);
  }

  return result;
}

char *std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[32 * v4];
  return result;
}

void *std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__construct_at_end<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(void *result, _DWORD *a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 == a3)
  {
    v7 = result[1];
LABEL_7:
    v3[1] = v7;
  }

  else
  {
    v6 = a2;
    v7 = result[1];
    while (v7)
    {
      *v7 = *v6;
      result = std::vector<unsigned int>::vector[abi:sn200100]((v7 + 8), (v6 + 2));
      v6 += 8;
      v7 += 32;
      if (v6 == a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::clear[abi:sn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::clear[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v4 = *a2;
    v3 = *(a2 + 8);
    v5 = v3 - *a2;
    if (v3 != *a2)
    {
      std::vector<char>::__vallocate[abi:sn200100](a1, v3 - *a2);
      v6 = *(a1 + 8);
      memmove(v6, v4, v5);
      *(a1 + 8) = &v6[v5];
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_22561D514(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE468;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE468;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &>,Task ()(std::shared_ptr<ReadStream>)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>((a1 + 8), &v4, a3);
  v3 = *(&v4 + 1);
  if (*(&v4 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

void sub_22561D61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *v6 = Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>;
  *(v6 + 1) = Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>;
  v8 = *a2;
  v7 = a2[1];
  *(v6 + 17) = v7;
  *a2 = 0;
  a2[1] = 0;
  *a3 = v6;
  std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::__value_func[abi:sn200100]((v6 + 64), *a1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 14) = v7;
    v9 = v6 + 112;
    *(v6 + 24) = 0;
    *(v6 + 13) = v8;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  else
  {
    *(v6 + 14) = 0;
    v9 = v6 + 112;
    *(v6 + 24) = 0;
    *(v6 + 13) = v8;
  }

  *(v6 + 18) = v9;
  Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse((v6 + 96), v6 + 16);
  v10 = *(v6 + 16);
  *(v6 + 19) = v10;
  *(v6 + 15) = v10;
  if (!v10)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*v10)
  {
    v6[17] = 0;
    v10[2] = v6;
    v11 = **(v6 + 15);

    return v11();
  }

  else
  {
    detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse>>::result((v10 + 2));
    v6[24] = 0;
    v6[56] = 0;
    if (*(v13 + 32) == 1)
    {
      *(v6 + 24) = *v13;
      *(v6 + 5) = *(v13 + 16);
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 0;
      *(v6 + 6) = *(v13 + 24);
      v6[56] = 1;
    }

    (*(*(v6 + 19) + 8))();
    v14 = *(v6 + 11);
    if (!v14)
    {
      v16 = std::__throw_bad_function_call[abi:sn200100]();
      if (v6[56] == 1)
      {
        v18 = a1;
        std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v18);
      }

      v17 = **(v6 + 18);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100]((v6 + 64));
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      }

      operator delete(v6);
      _Unwind_Resume(v16);
    }

    (*(*v14 + 48))(v14, v6 + 24);
    if (v6[56] == 1)
    {
      v18 = (v6 + 24);
      std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v18);
    }

    v15 = **(v6 + 18);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v15);
    }

    result = std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100]((v6 + 64));
    *v6 = 0;
    v6[17] = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 48) == 1)
  {
    v4 = (a1 + 16);
    std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE4B0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE4B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 72) == 1)
  {
    v4 = (a1 + 48);
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CE4F8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CE4F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>(uint64_t a1)
{
  v3 = *(a1 + 192);
  if (v3 == 2)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 88) = 0;
      if (*(v13 + 56) == 1)
      {
        v14 = *(v13 + 16);
        *(a1 + 32) = *v13;
        *(a1 + 48) = v14;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 64) = 0;
        *(a1 + 64) = *(v13 + 32);
        *(a1 + 80) = *(v13 + 48);
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
        *(v13 + 48) = 0;
        *(a1 + 88) = 1;
      }

      *(a1 + 24) = 1;
      v15 = *(a1 + 160);
      if (v15)
      {
        (*(v15 + 8))();
      }

      v16 = **(a1 + 184);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      v17 = *(a1 + 176);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 128);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 168), (a1 + 152));
    v4 = *(a1 + 152);
    *(a1 + 128) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 192) = 1;
      v4[2] = a1;
      v6 = *(a1 + 128);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 176) = v1;
  v10 = *(a1 + 152);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 144) = v1;
      v11 = a1 + 144;
      *(a1 + 128) = 0;
      *(a1 + 136) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 144) = 0;
      v11 = a1 + 144;
      *(a1 + 128) = 0;
      *(a1 + 136) = v9;
    }

    *(a1 + 184) = v11;
    v12 = *(a1 + 120);
    if (!v12)
    {
      v20 = std::__throw_bad_function_call[abi:sn200100]();
      v21 = **(a1 + 184);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      v22 = *(a1 + 176);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      *a1 = 0;
      *(a1 + 192) = 3;
      _Unwind_Resume(v20);
    }

    (*(*v12 + 48))(v12, a1 + 128);
    v5 = *(a1 + 160);
    *(a1 + 152) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 192) = 2;
        v5[2] = a1;
        v6 = *(a1 + 152);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 192) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v18 = *v6;

  return v18();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>(uint64_t a1)
{
  if (*(a1 + 192) > 1u)
  {
    if (*(a1 + 192) != 3)
    {
      v3 = *(a1 + 160);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 184);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 176);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 192))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 96);

  operator delete(a1);
}

uint64_t Backend::Google::HashesSearchResponseParser::parseDuration(uint64_t a1)
{
  v5 = *(a1 + 112);
  if (v5 <= 1)
  {
    if (!*(a1 + 112))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 112);
      goto LABEL_14;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_59:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

  if (v5 != 3)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_59;
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
    v2 = *v21;
    v22 = *(v21 + 8);
    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 8))();
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 115);
    v8 = 1;
    v10 = v2;
    v3 = *(a1 + 80);
    v11 = *(a1 + 88);
    while (1)
    {
      v1 = *(a1 + 108) | (*(a1 + 110) << 16);
      v7 = *(a1 + 116);
      v5 = 1;
LABEL_14:
      *(a1 + 115) = v9 & 1;
      *(a1 + 80) = v3;
      *(a1 + 88) = v11;
      *(a1 + 114) = v8 & 1;
      *(a1 + 104) = v10;
      *(a1 + 100) = v1;
      *(a1 + 102) = BYTE2(v1);
      *(a1 + 113) = v7;
      *(a1 + 96) = v5;
      *(a1 + 72) = v2;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 64), (a1 + 56));
      v6 = *(a1 + 56);
      *(a1 + 48) = v6;
      if (!v6)
      {
        goto LABEL_59;
      }

      if (*v6)
      {
        v31 = 1;
        goto LABEL_55;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v6 + 2));
      v13 = *v12;
      v14 = *v12 >> 8;
      v15 = *v12 & 0xFFFFFFFF00000000;
      *(a1 + 110) = BYTE3(*v12);
      *(a1 + 108) = v14;
      *(a1 + 116) = v13;
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if (v15 != 0x100000000)
      {
        if (HIDWORD(v13))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 112) = 5;
          _Unwind_Resume(v34);
        }

        if (v13)
        {
          if (*(a1 + 115))
          {
            v27 = *(a1 + 88);
          }

          else
          {
            v27 = 0;
          }

          v28 = *(a1 + 104) / 1000000000;
          if (!*(a1 + 114))
          {
            v28 = 0;
          }

          *(a1 + 32) = v28 + v27;
          v29 = 1;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v17 = *(a1 + 64);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 2;
          goto LABEL_55;
        }

LABEL_23:
        detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
        v3 = *v18;
        v19 = *(v18 + 8);
        v20 = *(a1 + 56);
        if (v20)
        {
          (*(v20 + 8))();
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_49;
        }

        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
        v9 = 1;
        v11 = v3;
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 4;
          goto LABEL_55;
        }

LABEL_35:
        detail::lazy_promise<BOOL>::result((v6 + 2));
        v25 = *v24;
        v26 = *(a1 + 56);
        if (v26)
        {
          (*(v26 + 8))();
        }

        if (!v25)
        {
          goto LABEL_49;
        }

        v9 = *(a1 + 115);
        v3 = *(a1 + 80);
        v11 = *(a1 + 88);
        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
      }

      v2 = *(a1 + 72);
    }

    Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
    v6 = *(a1 + 56);
    *(a1 + 48) = v6;
    if (!v6)
    {
      goto LABEL_59;
    }

    if (*v6)
    {
      v31 = 3;
LABEL_55:
      *(a1 + 112) = v31;
      v6[2] = a1;
      v30 = *(a1 + 48);
      goto LABEL_56;
    }
  }

LABEL_49:
  v29 = 0;
  *(a1 + 32) = 0;
LABEL_50:
  *(a1 + 40) = v29;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 112) = 5;
  v30 = *(a1 + 16);
LABEL_56:
  v32 = *v30;

  return v32();
}

void Backend::Google::HashesSearchResponseParser::parseDuration(unsigned __int8 *__p)
{
  v2 = __p[112];
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!__p[112])
    {
      goto LABEL_9;
    }

    if (v2 == 1)
    {
      v3 = __p[113];
      v4 = *(__p + 50);
      __p[110] = __p[102];
      *(__p + 54) = v4;
      __p[116] = v3;
    }
  }

  v5 = *(__p + 7);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

void sub_22561EA14(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void sub_22561EC90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  *v1 = 0;
  *(v1 + 152) = 3;
  _Unwind_Resume(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>(uint64_t a1)
{
  v3 = *(a1 + 168);
  if (v3 == 2)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      if (*(v13 + 32) == 1)
      {
        *(a1 + 32) = *v13;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        *(a1 + 40) = *(v13 + 8);
        *(a1 + 56) = *(v13 + 24);
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(a1 + 64) = 1;
      }

      *(a1 + 24) = 1;
      v14 = *(a1 + 136);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 160);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 152);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 144), (a1 + 128));
    v4 = *(a1 + 128);
    *(a1 + 104) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 168) = 1;
      v4[2] = a1;
      v6 = *(a1 + 104);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 152) = v1;
  v10 = *(a1 + 128);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 120) = v1;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 120) = 0;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
    }

    *(a1 + 160) = v11;
    v12 = *(a1 + 96);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 160);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 152);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 168) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 104);
    v5 = *(a1 + 136);
    *(a1 + 128) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 168) = 2;
        v5[2] = a1;
        v6 = *(a1 + 128);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 168) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>(uint64_t a1)
{
  if (*(a1 + 168) > 1u)
  {
    if (*(a1 + 168) != 3)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 160);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 152);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 168))
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 72);

  operator delete(a1);
}

void sub_22561F17C(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::HashesSearchResponseParser::parseFullHashDetail(uint64_t a1)
{
  v4 = *(a1 + 168);
  if (v4 <= 1)
  {
    if (!*(a1 + 168))
    {
      v6 = 0;
      v7 = 0;
      LOBYTE(v8) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      goto LABEL_14;
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

  if (v4 == 2)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

  if (v4 != 3)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

  v5 = *(a1 + 128);
  if (!v5)
  {
    goto LABEL_79;
  }

LABEL_27:
  detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result((v5 + 2));
  std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:sn200100](a1 + 72, v18);
  v19 = *(a1 + 136);
  if (v19)
  {
    (*(v19 + 8))();
  }

  if (*(a1 + 96) == 1)
  {
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    if (v20 != v21)
    {
      do
      {
        v22 = *v20;
        if (EnumTraits::isValidEnum<Backend::Google::ThreatAttribute>(v22))
        {
          v24 = *(a1 + 112);
          v23 = *(a1 + 120);
          if (v24 >= v23)
          {
            v26 = *(a1 + 104);
            v27 = v24 - v26;
            v28 = ((v24 - v26) >> 2) + 1;
            if (v28 >> 62)
            {
              goto LABEL_78;
            }

            v29 = v23 - v26;
            v30 = v29 >> 1;
            if (v29 >> 1 <= v28)
            {
              v30 = v28;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (!v31 || (v32 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 104, v31)) == 0)
            {
LABEL_77:
              __break(1u);
LABEL_78:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v34 = &v27[v32];
            v35 = v32 + 4 * v33;
            v36 = *(a1 + 104);
            v37 = *(a1 + 112) - v36;
            v38 = &v27[v32 - v37];
            *v34 = v22;
            v25 = v34 + 1;
            memcpy(v38, v36, v37);
            v39 = *(a1 + 104);
            *(a1 + 104) = v38;
            *(a1 + 112) = v25;
            *(a1 + 120) = v35;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            if (!v24)
            {
              goto LABEL_77;
            }

            *v24 = v22;
            v25 = v24 + 1;
          }

          *(a1 + 112) = v25;
        }

        ++v20;
      }

      while (v20 != v21);
      if ((*(a1 + 96) & 1) == 0)
      {
        goto LABEL_56;
      }

      v20 = *(a1 + 72);
    }

    if (v20)
    {
      *(a1 + 80) = v20;
      operator delete(v20);
    }
  }

LABEL_56:
  while (2)
  {
    v2 = *(a1 + 160) | (*(a1 + 162) << 16);
    LOBYTE(v8) = *(a1 + 171);
    v6 = *(a1 + 169);
    while (1)
    {
      LOBYTE(v4) = *(a1 + 172);
      v1 = *(a1 + 164) | (*(a1 + 166) << 16);
      v7 = 1;
LABEL_14:
      *(a1 + 160) = v2;
      *(a1 + 162) = BYTE2(v2);
      *(a1 + 171) = v8;
      *(a1 + 156) = v7;
      *(a1 + 170) = v4;
      *(a1 + 152) = v1;
      *(a1 + 154) = BYTE2(v1);
      *(a1 + 169) = v6 & 1;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 144), (a1 + 128));
      v9 = *(a1 + 128);
      *(a1 + 72) = v9;
      if (!v9)
      {
        goto LABEL_79;
      }

      if (*v9)
      {
        v53 = 1;
        goto LABEL_71;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v9 + 2));
      v11 = *v10;
      v12 = *v10 >> 8;
      v13 = *v10 & 0xFFFFFFFF00000000;
      *(a1 + 172) = *v10;
      *(a1 + 166) = BYTE3(v11);
      *(a1 + 164) = v12;
      v14 = *(a1 + 128);
      if (v14)
      {
        (*(v14 + 8))();
      }

      if (v13 != 0x100000000)
      {
        if (HIDWORD(v11))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v57 = v56;
          v58 = *(a1 + 104);
          if (v58)
          {
            *(a1 + 112) = v58;
            operator delete(v58);
          }

          *a1 = 0;
          *(a1 + 168) = 5;
          _Unwind_Resume(v57);
        }

        if ((v11 & 1) == 0 || (*(a1 + 169) & 1) == 0)
        {
          goto LABEL_63;
        }

        v43 = (*(a1 + 160) << 8) | (*(a1 + 162) << 24) | *(a1 + 171);
        v59 = v43;
        __dst = 0;
        v62 = 0;
        v60 = 0;
        v45 = *(a1 + 104);
        v44 = *(a1 + 112);
        v46 = v44 - v45;
        if (v44 == v45)
        {
          v50 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          std::vector<Backend::Google::CompressionType>::__vallocate[abi:sn200100](&v60, v46 >> 2);
          v47 = __dst;
          memmove(__dst, v45, v46);
          v48 = &v47[v46];
          v43 = v59;
          v49 = v60;
          v50 = v62;
        }

        *(a1 + 32) = v43;
        *(a1 + 40) = v49;
        *(a1 + 48) = v48;
        *(a1 + 56) = v50;
        *(a1 + 64) = 1;
LABEL_64:
        *(a1 + 24) = 1;
        v51 = *(a1 + 104);
        if (v51)
        {
          *(a1 + 112) = v51;
          operator delete(v51);
        }

        *a1 = 0;
        *(a1 + 168) = 5;
        v52 = *(a1 + 16);
        goto LABEL_72;
      }

      v15 = *(a1 + 144);
      if (v11 == 2)
      {
        Backend::Google::ProtocolMessageReader::readLengthDelimitedField(v15, (a1 + 136));
        v5 = *(a1 + 136);
        *(a1 + 128) = v5;
        if (!v5)
        {
          goto LABEL_79;
        }

        if (*v5)
        {
          *(a1 + 168) = 3;
          v5[2] = a1;
          v52 = *(a1 + 128);
          goto LABEL_72;
        }

        goto LABEL_27;
      }

      if (v11 != 1)
      {
        break;
      }

      Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>(v15, (a1 + 128));
      v9 = *(a1 + 128);
      *(a1 + 72) = v9;
      if (!v9)
      {
        goto LABEL_79;
      }

      if (*v9)
      {
        v53 = 2;
        goto LABEL_71;
      }

LABEL_23:
      detail::lazy_promise<std::optional<Backend::Google::ThreatType>>::result((v9 + 2));
      v8 = *v16;
      v2 = *v16 >> 8;
      v6 = *(v16 + 4);
      v17 = *(a1 + 128);
      if (v17)
      {
        (*(v17 + 8))();
      }
    }

    Backend::Google::ProtocolMessageReader::skipField(v15, (a1 + 128));
    v9 = *(a1 + 128);
    *(a1 + 72) = v9;
    if (!v9)
    {
LABEL_79:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }

    if (!*v9)
    {
LABEL_53:
      detail::lazy_promise<BOOL>::result((v9 + 2));
      v41 = *v40;
      v42 = *(a1 + 128);
      if (v42)
      {
        (*(v42 + 8))();
      }

      if (v41)
      {
        continue;
      }

LABEL_63:
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      goto LABEL_64;
    }

    break;
  }

  v53 = 4;
LABEL_71:
  *(a1 + 168) = v53;
  v9[2] = a1;
  v52 = *(a1 + 72);
LABEL_72:
  v54 = *v52;

  return v54();
}