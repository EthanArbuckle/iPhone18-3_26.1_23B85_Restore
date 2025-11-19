void Backend::Google::HashesSearchResponseParser::parseFullHashDetail(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2 <= 2)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 154);
      *(a1 + 172) = *(a1 + 170);
      *(a1 + 166) = v4;
      *(a1 + 164) = v3;
    }

    goto LABEL_7;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(a1 + 128);
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 136);
  if (v5)
  {
LABEL_8:
    (*(v5 + 8))();
  }

LABEL_9:
  v6 = *(a1 + 104);
  if (v6)
  {
    *(a1 + 112) = v6;
    operator delete(v6);
  }

LABEL_11:
  detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::HashesSearchResponseParser::parseFullHash(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a1 + 136;
  v4 = (a1 + 168);
  v5 = *(a1 + 259);
  if (v5 <= 1)
  {
    if (!*(a1 + 259))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *v4 = 0;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
      goto LABEL_14;
    }

    v10 = *(a1 + 96);
    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

  if (v5 == 2)
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

  if (v5 != 3)
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      goto LABEL_37;
    }

LABEL_64:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v6 = *(a1 + 192);
  if (!v6)
  {
    goto LABEL_64;
  }

LABEL_29:
  detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>>::result((v6 + 2));
  std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail,false>::__optional_copy_base[abi:sn200100](a1 + 96, v21);
  v22 = *(a1 + 200);
  if (v22)
  {
    (*(v22 + 8))();
  }

  std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v3);
  if (*(a1 + 128) == 1)
  {
    v23 = *(a1 + 176);
    if (v23 >= *(a1 + 184))
    {
      v24 = std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__emplace_back_slow_path<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>(v4, a1 + 96);
      goto LABEL_42;
    }

    if (v23)
    {
      *v23 = *(a1 + 96);
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 8) = 0;
      *(v23 + 8) = *(a1 + 104);
      *(v23 + 24) = *(a1 + 120);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v24 = v23 + 32;
LABEL_42:
      *(a1 + 176) = v24;
      if (*(a1 + 128))
      {
        v28 = *(a1 + 104);
        if (v28)
        {
          *(a1 + 112) = v28;
          operator delete(v28);
        }
      }

      goto LABEL_45;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  do
  {
LABEL_45:
    v7 = *(a1 + 261);
    LOBYTE(v5) = *(a1 + 260);
    while (1)
    {
      v8 = *(a1 + 263);
      v1 = *(a1 + 224) | (*(a1 + 226) << 16);
      v9 = 1;
LABEL_14:
      *(a1 + 220) = v9;
      *(a1 + 262) = v8;
      *(a1 + 216) = v1;
      *(a1 + 218) = BYTE2(v1);
      *(a1 + 261) = v7;
      *(a1 + 260) = v5 & 1;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 208), (a1 + 192));
      v10 = *(a1 + 192);
      *(a1 + 96) = v10;
      if (!v10)
      {
        goto LABEL_64;
      }

      if (*v10)
      {
        v33 = 1;
        goto LABEL_58;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v10 + 2));
      v12 = *v11;
      v13 = *v11 >> 8;
      v14 = *v11 & 0xFFFFFFFF00000000;
      *(a1 + 263) = *v11;
      *(a1 + 226) = BYTE3(v12);
      *(a1 + 224) = v13;
      v15 = *(a1 + 192);
      if (v15)
      {
        (*(v15 + 8))();
      }

      if (v14 != 0x100000000)
      {
        if (HIDWORD(v12))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v38 = v37;
          *v40 = v4;
          std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](v40);
          *a1 = 0;
          *(a1 + 259) = 5;
          _Unwind_Resume(v38);
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_52;
        }

        v29 = *(a1 + 168);
        v30 = *(a1 + 176);
        if (v29 == v30)
        {
          goto LABEL_52;
        }

        if (*(a1 + 260))
        {
          v40[0] = *(a1 + 261);
          *&v40[1] = *(a1 + 228);
          *&v40[16] = *(a1 + 243);
          v42 = 0;
          v41 = 0uLL;
          std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(&v41, v29, v30, (v30 - v29) >> 5);
          v31 = *&v40[16];
          *(a1 + 32) = *v40;
          *(a1 + 48) = v31;
          *(a1 + 64) = v41;
          *(a1 + 80) = v42;
          v42 = 0;
          v41 = 0uLL;
          *(a1 + 88) = 1;
          *(a1 + 24) = 1;
          v39 = &v41;
          std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v39);
          goto LABEL_54;
        }

        goto LABEL_63;
      }

      v16 = *(a1 + 208);
      if (v12 == 2)
      {
        *(a1 + 136) = &unk_2838CE4F8;
        *(a1 + 144) = Backend::Google::HashesSearchResponseParser::parseFullHashDetail;
        *(a1 + 160) = v3;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>(v16, v3, (a1 + 200));
        v6 = *(a1 + 200);
        *(a1 + 192) = v6;
        if (!v6)
        {
          goto LABEL_64;
        }

        if (*v6)
        {
          *(a1 + 259) = 3;
          v6[2] = a1;
          v32 = *(a1 + 192);
          goto LABEL_59;
        }

        goto LABEL_29;
      }

      if (v12 != 1)
      {
        break;
      }

      Backend::Google::ProtocolMessageReader::readByteArray<32ul>(v16, (a1 + 192));
      v10 = *(a1 + 192);
      *(a1 + 96) = v10;
      if (!v10)
      {
        goto LABEL_64;
      }

      if (*v10)
      {
        v33 = 2;
        goto LABEL_58;
      }

LABEL_23:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v10 + 2));
      v7 = *v17;
      v18 = *(v17 + 1);
      *(a1 + 243) = *(v17 + 1);
      *(a1 + 228) = v18;
      v19 = v17[32];
      v20 = *(a1 + 192);
      if (v20)
      {
        (*(v20 + 8))();
      }

      LOBYTE(v5) = 1;
      if ((v19 & 1) == 0)
      {
        *(a1 + 32) = 0;
        *(a1 + 88) = 0;
        goto LABEL_53;
      }
    }

    Backend::Google::ProtocolMessageReader::skipField(v16, (a1 + 192));
    v10 = *(a1 + 192);
    *(a1 + 96) = v10;
    if (!v10)
    {
      goto LABEL_64;
    }

    if (*v10)
    {
      v33 = 4;
LABEL_58:
      *(a1 + 259) = v33;
      v10[2] = a1;
      v32 = *(a1 + 96);
      goto LABEL_59;
    }

LABEL_37:
    detail::lazy_promise<BOOL>::result((v10 + 2));
    v26 = *v25;
    v27 = *(a1 + 192);
    if (v27)
    {
      (*(v27 + 8))();
    }
  }

  while (v26);
LABEL_52:
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
LABEL_53:
  *(a1 + 24) = 1;
LABEL_54:
  *v40 = v4;
  std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](v40);
  *a1 = 0;
  *(a1 + 259) = 5;
  v32 = *(a1 + 16);
LABEL_59:
  v34 = *v32;
  v35 = *MEMORY[0x277D85DE8];

  return v34();
}

void Backend::Google::HashesSearchResponseParser::parseFullHash(uint64_t a1)
{
  v2 = *(a1 + 259);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 200);
      if (v6)
      {
        (*(v6 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 136);
      goto LABEL_12;
    }

    if (v2 == 4)
    {
LABEL_7:
      v5 = *(a1 + 192);
      if (v5)
      {
        (*(v5 + 8))();
      }

LABEL_12:
      v7 = (a1 + 168);
      std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v7);
    }
  }

  else if (*(a1 + 259))
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 216);
      v4 = *(a1 + 218);
      *(a1 + 263) = *(a1 + 262);
      *(a1 + 226) = v4;
      *(a1 + 224) = v3;
    }

    goto LABEL_7;
  }

  detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse(uint64_t a1)
{
  v4 = a1 + 136;
  v5 = a1 + 168;
  v6 = a1 + 200;
  v7 = *(a1 + 276);
  if (v7 <= 1)
  {
    if (!*(a1 + 276))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      *v6 = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      goto LABEL_14;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_64:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v7 == 2)
  {
    v12 = *(a1 + 224);
    if (v12)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

  if (v7 != 3)
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      goto LABEL_37;
    }

    goto LABEL_64;
  }

  v8 = *(a1 + 72);
  if (!v8)
  {
    goto LABEL_64;
  }

  while (2)
  {
    detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v8 + 2));
    v9 = *v24;
    v25 = *(v24 + 8);
    v26 = *(a1 + 224);
    if (v26)
    {
      (*(v26 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v5);
    LOBYTE(v7) = 1;
    v1 = v9;
    if ((v25 & 1) == 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      goto LABEL_51;
    }

    while (1)
    {
      v10 = *(a1 + 279);
      v2 = *(a1 + 272) | (*(a1 + 274) << 16);
      v11 = 1;
LABEL_14:
      *(a1 + 268) = v11;
      *(a1 + 278) = v10;
      *(a1 + 264) = v2;
      *(a1 + 266) = BYTE2(v2);
      *(a1 + 248) = v9;
      *(a1 + 256) = v1;
      *(a1 + 277) = v7 & 1;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 240), (a1 + 224));
      v8 = *(a1 + 224);
      *(a1 + 72) = v8;
      if (!v8)
      {
        goto LABEL_64;
      }

      if (*v8)
      {
        v34 = 1;
        goto LABEL_57;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v8 + 2));
      v14 = *v13;
      v15 = *v13 >> 8;
      v16 = *v13 & 0xFFFFFFFF00000000;
      *(a1 + 279) = *v13;
      *(a1 + 274) = BYTE3(v14);
      *(a1 + 272) = v15;
      v17 = *(a1 + 224);
      if (v17)
      {
        (*(v17 + 8))();
      }

      if (v16 != 0x100000000)
      {
        if (HIDWORD(v14))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v40 = v39;
          if (*(a1 + 128) == 1)
          {
            v42[0] = (a1 + 104);
            std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](v42);
          }

          v42[0] = v6;
          std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](v42);
          *a1 = 0;
          *(a1 + 276) = 5;
          _Unwind_Resume(v40);
        }

        if (v14)
        {
          v30 = *(a1 + 277);
          v31 = *(a1 + 200);
          v32 = *(a1 + 208);
          if (v31 != v32 || (*(a1 + 277) & 1) != 0)
          {
            v37 = *(a1 + 216);
            *v6 = 0;
            *(v6 + 8) = 0;
            *(v6 + 16) = 0;
            if ((v30 & 1) == 0)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v38 = *(a1 + 248);
            *(a1 + 32) = v31;
            *(a1 + 40) = v32;
            v42[3] = v38;
            memset(v42, 0, 24);
            *(a1 + 48) = v37;
            *(a1 + 56) = v38;
            *(a1 + 64) = 1;
            *(a1 + 24) = 1;
            v41 = v42;
            std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v41);
LABEL_52:
            v42[0] = v6;
            std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](v42);
            *a1 = 0;
            *(a1 + 276) = 5;
            v33 = *(a1 + 16);
            goto LABEL_58;
          }
        }

LABEL_50:
        *(a1 + 32) = 0;
        *(a1 + 64) = 0;
LABEL_51:
        *(a1 + 24) = 1;
        goto LABEL_52;
      }

      v18 = *(a1 + 240);
      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        *(a1 + 136) = &unk_2838CE4B0;
        *(a1 + 144) = Backend::Google::HashesSearchResponseParser::parseFullHash;
        *(a1 + 160) = v4;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashesSearchResponse::FullHash>(v18, v4, (a1 + 232));
        v12 = *(a1 + 232);
        *(a1 + 224) = v12;
        if (!v12)
        {
          goto LABEL_64;
        }

        if (*v12)
        {
          *(a1 + 276) = 2;
          v12[2] = a1;
          v33 = *(a1 + 224);
          goto LABEL_58;
        }

LABEL_23:
        detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse::FullHash>>::result((v12 + 2));
        std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash,false>::__optional_copy_base[abi:sn200100](a1 + 72, v19);
        v20 = *(a1 + 232);
        if (v20)
        {
          (*(v20 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v4);
        if (*(a1 + 128) == 1)
        {
          v21 = *(a1 + 208);
          if (v21 >= *(a1 + 216))
          {
            v23 = std::vector<Backend::Google::HashesSearchResponse::FullHash>::__emplace_back_slow_path<Backend::Google::HashesSearchResponse::FullHash>(v6, a1 + 72);
          }

          else
          {
            if (!v21)
            {
              goto LABEL_63;
            }

            v22 = *(a1 + 88);
            *v21 = *(a1 + 72);
            *(v21 + 16) = v22;
            *(v21 + 40) = 0;
            *(v21 + 48) = 0;
            *(v21 + 32) = 0;
            *(v21 + 32) = *(a1 + 104);
            *(v21 + 48) = *(a1 + 120);
            *(a1 + 104) = 0;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            v23 = v21 + 56;
          }

          *(a1 + 208) = v23;
          if (*(a1 + 128))
          {
            *(a1 + 224) = a1 + 104;
            std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100]((a1 + 224));
          }
        }
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v18, (a1 + 224));
        v8 = *(a1 + 224);
        *(a1 + 72) = v8;
        if (!v8)
        {
          goto LABEL_64;
        }

        if (*v8)
        {
          v34 = 4;
          goto LABEL_57;
        }

LABEL_37:
        detail::lazy_promise<BOOL>::result((v8 + 2));
        v28 = *v27;
        v29 = *(a1 + 224);
        if (v29)
        {
          (*(v29 + 8))();
        }

        if (!v28)
        {
          goto LABEL_50;
        }
      }

      v9 = *(a1 + 248);
      v1 = *(a1 + 256);
      LOBYTE(v7) = *(a1 + 277);
    }

    *(a1 + 168) = &unk_2838CDAA8;
    *(a1 + 176) = Backend::Google::HashesSearchResponseParser::parseDuration;
    *(a1 + 192) = v5;
    Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v18, v5, (a1 + 224));
    v8 = *(a1 + 224);
    *(a1 + 72) = v8;
    if (!v8)
    {
      goto LABEL_64;
    }

    if (!*v8)
    {
      continue;
    }

    break;
  }

  v34 = 3;
LABEL_57:
  *(a1 + 276) = v34;
  v8[2] = a1;
  v33 = *(a1 + 72);
LABEL_58:
  v35 = *v33;

  return v35();
}

void Backend::Google::HashesSearchResponseParser::parseHashesSearchResponse(uint64_t a1)
{
  v2 = *(a1 + 276);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 224);
      if (v6)
      {
        (*(v6 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 168);
      goto LABEL_15;
    }

    if (v2 == 4)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 276))
  {
    if (v2 != 1)
    {
      v7 = *(a1 + 232);
      if (v7)
      {
        (*(v7 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashesSearchResponse::FullHash>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 136);
      goto LABEL_15;
    }

    v3 = *(a1 + 264);
    v4 = *(a1 + 266);
    *(a1 + 279) = *(a1 + 278);
    *(a1 + 274) = v4;
    *(a1 + 272) = v3;
LABEL_7:
    v5 = *(a1 + 224);
    if (v5)
    {
      (*(v5 + 8))();
    }

LABEL_15:
    v8 = (a1 + 200);
    std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v8);
  }

  detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  detail::lazy_promise<std::optional<Backend::Google::HashesSearchResponse>>::result(v2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  if (*(v4 + 32) == 1)
  {
    *(a1 + 24) = *v4;
    *(a1 + 40) = *(v4 + 16);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(a1 + 48) = *(v4 + 24);
    *(a1 + 56) = 1;
  }

  (*(*(a1 + 152) + 8))();
  v5 = *(a1 + 88);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    if (*(a1 + 56) == 1)
    {
      v10 = v1;
      std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v10);
    }

    v9 = **(a1 + 144);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v9);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100](a1 + 64);
    *a1 = 0;
    *(a1 + 17) = 1;
    _Unwind_Resume(v8);
  }

  (*(*v5 + 48))(v5, a1 + 24);
  if (*(a1 + 56) == 1)
  {
    v10 = (a1 + 24);
    std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v10);
  }

  v6 = **(a1 + 144);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  result = std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100](a1 + 64);
  *a1 = 0;
  *(a1 + 17) = 1;
  return result;
}

void Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)> &&)::$_0::operator()<std::shared_ptr<ReadStream>>(void *__p)
{
  if ((*(__p + 17) & 1) == 0)
  {
    v2 = __p[19];
    (*(__p[19] + 8))();
    v3 = *__p[18];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100]((__p + 8));
  }

  v4 = __p[17];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(__p);
}

Backend::Google::FullHashChecker *Backend::Google::FullHashChecker::FullHashChecker(Backend::Google::FullHashChecker *this, const Backend::Google::Configuration *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = dispatch_queue_create("com.apple.Safari.SafeBrowsing.FullHashChecker", 0);
  *(this + 6) = 1;
  *(this + 4) = a2;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 13) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  v4 = +[RemoteConfigurationController sharedController];
  v5 = [v4 googleProviderConfiguration];
  v6 = [v5 providerOff];

  if ((v6 & 1) == 0)
  {
    v24 = 1;
    std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(a2, &v24, &v25);
    v8 = v25;
    v25 = 0uLL;
    v9 = *(this + 6);
    *(this + 40) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      if (*(&v25 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
      }
    }

    v24 = 1;
    std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(this + 2, &v24, &v25);
    v10 = v25;
    v25 = 0uLL;
    v7 = *(this + 15);
    *(this + 7) = v10;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      v7 = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
      }
    }
  }

  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v7);
  if (shouldConsultWithTencent)
  {
    v12 = [v4 tencentProviderConfiguration];
    v13 = [v12 providerOff];

    if ((v13 & 1) == 0)
    {
      v24 = 2;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(a2, &v24, &v25);
      v14 = v25;
      v25 = 0uLL;
      v15 = *(this + 8);
      *(this + 56) = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
        }
      }

      v24 = 2;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(this + 2, &v24, &v25);
      v16 = v25;
      v25 = 0uLL;
      shouldConsultWithTencent = *(this + 17);
      *(this + 8) = v16;
      if (shouldConsultWithTencent)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](shouldConsultWithTencent);
        shouldConsultWithTencent = *(&v25 + 1);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
        }
      }
    }
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v17 = [v4 appleProviderConfiguration];
    v18 = [v17 providerOff];

    if ((v18 & 1) == 0)
    {
      v24 = 3;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(a2, &v24, &v25);
      v19 = v25;
      v25 = 0uLL;
      v20 = *(this + 10);
      *(this + 72) = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
        }
      }

      v24 = 3;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(this + 2, &v24, &v25);
      v21 = v25;
      v25 = 0uLL;
      v22 = *(this + 19);
      *(this + 9) = v21;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
        }
      }
    }
  }

  return this;
}

void sub_225620858(_Unwind_Exception *a1)
{
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v5);
  }

  v6 = *(v1 + 136);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  v7 = *(v1 + 120);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::destroy(v2, *(v1 + 96));
  v8 = *(v1 + 80);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v9 = *(v1 + 64);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  v10 = *(v1 + 48);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void Backend::Google::FullHashChecker::~FullHashChecker(Backend::Google::FullHashChecker *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::destroy(this + 88, *(this + 12));
  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void Backend::Google::FullHashChecker::checkHashes(void *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, uint64_t a7)
{
  v14 = a3;
  v22 = a4;
  v15 = a5;
  v16 = operator new(0x78uLL);
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 24) = 0u;
  *v16 = &unk_2838CD518;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  std::vector<Backend::Google::FullHashRequest>::__vdeallocate(v16 + 3);
  *(v16 + 24) = *a2;
  *(v16 + 5) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v17 = operator new(0x18uLL);
  std::string::basic_string[abi:sn200100]<0>(&__p, "Full Hash Check");
  Platform::Transaction::Transaction(v17, &__p);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](v16 + 6, v17);
  objc_storeStrong(v16 + 7, a3);
  objc_storeStrong(v16 + 8, a4);
  v16[72] = a6;
  v18 = *(v16 + 10);
  *(v16 + 10) = v15;

  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::operator=[abi:sn200100]((v16 + 88), a7);
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&__p, a1);
  v19 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN7Backend6Google15FullHashChecker11checkHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_bNS2_8functionIFvNS3_INS0_20ThreatListDescriptorENS5_ISG_EEEEEEE_block_invoke;
  block[3] = &__block_descriptor_64_ea8_32c274_ZTSKZN7Backend6Google15FullHashChecker11checkHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_bNS2_8functionIFvNS3_INS0_20ThreatListDescriptorENS5_ISG_EEEEEEEE3__0_e5_v8__0l;
  v20 = __p;
  v21 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = v20;
    v25 = v21;
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v24 = __p;
    v25 = 0;
  }

  v26 = v16 + 24;
  v27 = v16;
  atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  dispatch_async(v19, block);
  std::__shared_weak_count::__release_shared[abi:sn200100](v16);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v21);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v25);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v29);
  }
}

void sub_225620BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::__release_shared[abi:sn200100](v24);

  _Unwind_Resume(a1);
}

void ___ZN7Backend6Google15FullHashChecker11checkHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_bNS2_8functionIFvNS3_INS0_20ThreatListDescriptorENS5_ISG_EEEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v4 = a1[6];
  v3 = a1[7];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Backend::Google::FullHashChecker::checkHashes(v2, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }
}

void sub_225620C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_ea8_32c274_ZTSKZN7Backend6Google15FullHashChecker11checkHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_bNS2_8functionIFvNS3_INS0_20ThreatListDescriptorENS5_ISG_EEEEEEEE3__0(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c274_ZTSKZN7Backend6Google15FullHashChecker11checkHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_bNS2_8functionIFvNS3_INS0_20ThreatListDescriptorENS5_ISG_EEEEEEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

uint64_t Backend::Google::FullHashChecker::checkFullHashRequests(uint64_t a1, unint64_t *a2, uint64_t *a3, int a4, uint64_t **a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = **a2;
  v8 = *(*a2 + 8);
  if (v7 == v8)
  {
    v14 = 1;
  }

  else
  {
    v23 = a1 + 96;
    v14 = 1;
    do
    {
      if (*(v7 + 48) == a4)
      {
        v15 = *(v7 + 32);
        if (*(v7 + 36) == 16 && v15 == 32)
        {
          std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a7, (v7 + 36));
        }

        else
        {
          Backend::Google::FullHashCache::lookup(*a3, v7, v15, v24);
          v17 = __p;
          v16 = v26;
          if ((v24[0] & 1) != 0 || __p != v26)
          {
            while (v17 != v16)
            {
              std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a7, v17++);
            }
          }

          else
          {
            v30 = *(v7 + 32);
            if (v30)
            {
              memmove(&__n[1], v7, v30);
            }

            v31 = *(v7 + 36);
            v18 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::find<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(a1 + 88, &__n[1]);
            if (v23 == v18)
            {
              __n[0] = *(v7 + 32);
              if (__n[0])
              {
                memcpy(__src, v7, __n[0]);
                *&__n[1] = *(v7 + 36);
                BYTE12(v31) = __n[0];
                if (__n[0])
                {
                  memcpy(&v29, __src, __n[0]);
                }
              }

              else
              {
                *&__n[1] = *(v7 + 36);
                BYTE12(v31) = 0;
              }

              std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__emplace_unique_key_args<Backend::Google::FullHashChecker::FetchRequest::Entry,Backend::Google::FullHashChecker::FetchRequest::Entry>(a5, &__n[1], &__n[1]);
              std::vector<Backend::Google::FullHashRequest>::push_back[abi:sn200100](a6, v7);
            }

            else
            {
              std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::__emplace_unique_key_args<std::shared_ptr<Backend::Google::FullHashChecker::Check>,std::shared_ptr<Backend::Google::FullHashChecker::Check> const&>((*(v18 + 88) + 24), a2, a2);
            }

            v14 = 0;
          }

          if (__p)
          {
            v26 = __p;
            operator delete(__p);
          }
        }
      }

      v7 += 72;
    }

    while (v7 != v8);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void sub_225620F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    if (v4)
    {
      *v4 = *a2;
      v6 = (v4 + 1);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = v4 - *a1;
  v8 = (v7 >> 4) + 1;
  if (v8 >> 60)
  {
    goto LABEL_16;
  }

  v9 = v5 - *a1;
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

  if (!v10 || (v11 = std::allocator<Backend::Google::Database::HashSizeBucket>::allocate_at_least[abi:sn200100](a1, v10)) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = &v11[v7];
  v14 = &v11[16 * v12];
  *v13 = *a2;
  v6 = &v11[v7 + 16];
  v15 = *(a1 + 8) - *a1;
  v16 = &v13[-v15];
  memcpy(&v13[-v15], *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v6;
  *(a1 + 16) = v14;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_14:
  *(a1 + 8) = v6;
}

void Backend::Google::FullHashChecker::fetchHashes(uint64_t a1, uint64_t a2, const Backend::Google::FullHashRequest **a3, __int128 *a4, __int128 *a5, void *a6, void *a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a6;
  v14 = a7;
  v22 = 0;
  v21 = 0uLL;
  std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(&v21, *a3, a3[1], 0x8E38E38E38E38E39 * ((a3[1] - *a3) >> 3));
  v15 = *(a1 + 16);
  v16 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v20 = v16;
  v19 = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  v25 = 0;
  v17 = operator new(0x28uLL);
  *v17 = &unk_2838CE5A0;
  *(v17 + 24) = v19;
  *(v17 + 8) = v20;
  v25 = v17;
  Backend::Google::FullHashFetcher::fetchHashes(a2, &v21, v13, v14, v15, v24);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v24);
  v23 = &v21;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v23);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2256211E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void **);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](va3);
  Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::~$_0(va);
  va_copy(v18, va1);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](va2);

  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  return a1;
}

void Backend::Google::FullHashChecker::checkHashes(uint64_t a1, unint64_t *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 16);
  dispatch_assert_queue_V2(*(a1 + 16));
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = &v111;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = &v105;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = &v99;
  v95 = 0;
  v96 = 0;
  __p = 0;
  v93 = 0;
  v94 = 0;
  v83 = *(*a2 + 32);
  v5 = +[RemoteConfigurationController sharedController];
  v85 = v5;
  v84 = a2;
  if (*(*a2 + 48) == 1)
  {
    v6 = [v5 googleProviderConfiguration];
    v7 = [v6 providerOff];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      if (!*(a1 + 112))
      {
        v67 = *(a1 + 32);
        LODWORD(v113) = 1;
        std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(v67, &v113, __dst);
        v68 = __dst[0];
        __dst[0] = 0uLL;
        v69 = *(a1 + 48);
        *(a1 + 40) = v68;
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](v69);
          if (*(&__dst[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
          }
        }

        LODWORD(v113) = 1;
        std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(v4, &v113, __dst);
        v70 = __dst[0];
        __dst[0] = 0uLL;
        v71 = *(a1 + 120);
        *(a1 + 112) = v70;
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](v71);
          if (*(&__dst[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
          }
        }
      }

      v5 = Backend::Google::FullHashChecker::checkFullHashRequests(a1, a2, (a1 + 112), 1, &v110, &v107, &__p);
      if (v5)
      {
        v8 = 1;
        Backend::Google::SSBUtilities::reportActivity(1);
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v5);
  if (shouldConsultWithTencent)
  {
    v10 = [v85 tencentProviderConfiguration];
    v11 = [v10 providerOff];

    if ((v11 & 1) == 0)
    {
      if (!*(a1 + 128))
      {
        v72 = *(a1 + 32);
        LODWORD(v113) = 2;
        std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(v72, &v113, __dst);
        v73 = __dst[0];
        __dst[0] = 0uLL;
        v74 = *(a1 + 64);
        *(a1 + 56) = v73;
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](v74);
          if (*(&__dst[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
          }
        }

        LODWORD(v113) = 2;
        std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(v4, &v113, __dst);
        v75 = __dst[0];
        __dst[0] = 0uLL;
        v76 = *(a1 + 136);
        *(a1 + 128) = v75;
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](v76);
          if (*(&__dst[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
          }
        }
      }

      shouldConsultWithTencent = Backend::Google::FullHashChecker::checkFullHashRequests(a1, a2, (a1 + 128), 2, &v104, &v101, &__p);
      v12 = shouldConsultWithTencent;
      if (shouldConsultWithTencent)
      {
        Backend::Google::SSBUtilities::reportActivity(4);
      }

      v8 &= v12;
    }
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v13 = [v85 appleProviderConfiguration];
    v14 = [v13 providerOff];

    if (v14)
    {
      if (!v8)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (!*(a1 + 144))
    {
      v77 = *(a1 + 32);
      LODWORD(v113) = 3;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(v77, &v113, __dst);
      v78 = __dst[0];
      __dst[0] = 0uLL;
      v79 = *(a1 + 80);
      *(a1 + 72) = v78;
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v79);
        if (*(&__dst[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
        }
      }

      LODWORD(v113) = 3;
      std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(v4, &v113, __dst);
      v80 = __dst[0];
      __dst[0] = 0uLL;
      v81 = *(a1 + 152);
      *(a1 + 144) = v80;
      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v81);
        if (*(&__dst[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
        }
      }
    }

    if (!Backend::Google::FullHashChecker::checkFullHashRequests(a1, a2, (a1 + 144), 3, &v98, &v95, &__p))
    {
      goto LABEL_32;
    }

    Backend::Google::SSBUtilities::reportActivity(7);
  }

  if ((v8 & 1) == 0)
  {
LABEL_32:
    if (v112 || v106 || v100)
    {
      v23 = operator new(0x48uLL);
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *(v23 + 4) = 0;
      v24 = v23 + 32;
      *v23 = &unk_2838CD550;
      *(v23 + 3) = v23 + 32;
      *(v23 + 5) = 0;
      *(v23 + 7) = 0;
      *(v23 + 6) = v23 + 56;
      *(v23 + 8) = 0;
      std::__tree<Backend::Google::HashView>::destroy((v23 + 24), 0);
      v25 = v111;
      *(v23 + 3) = v110;
      *(v23 + 4) = v25;
      v26 = v112;
      *(v23 + 5) = v112;
      v82 = v23 + 24;
      if (v26)
      {
        v25[2] = v24;
        v110 = &v111;
        v111 = 0;
        v112 = 0;
      }

      else
      {
        *(v23 + 3) = v24;
      }

      std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::__emplace_unique_key_args<std::shared_ptr<Backend::Google::FullHashChecker::Check>,std::shared_ptr<Backend::Google::FullHashChecker::Check> const&>(v23 + 6, a2, a2);
      if (*(*a2 + 48) == 1)
      {
        v27 = [v85 googleProviderConfiguration];
        v28 = [v27 providerOff];

        if ((v28 & 1) == 0)
        {
          v29 = *v82;
          if (*v82 != v24)
          {
            do
            {
              LOBYTE(v115[0]) = *(v29 + 76);
              if (LOBYTE(v115[0]))
              {
                memmove(__dst, v29 + 44, LOBYTE(v115[0]));
              }

              *(v115 + 4) = *(v29 + 28);
              v113 = __dst;
              v30 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__emplace_unique_key_args<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::piecewise_construct_t const&,std::tuple<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>&&>,std::tuple<>>((a1 + 88), __dst, &std::piecewise_construct, &v113);
              atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
              v31 = v30[12];
              v30[11] = v82;
              v30[12] = v23;
              if (v31)
              {
                std::__shared_weak_count::__release_shared[abi:sn200100](v31);
              }

              v32 = v29[1];
              if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = v29[2];
                  v34 = *v33 == v29;
                  v29 = v33;
                }

                while (!v34);
              }

              v29 = v33;
            }

            while (v33 != v24);
          }
        }
      }

      v35 = operator new(0x48uLL);
      *(v35 + 1) = 0;
      *(v35 + 2) = 0;
      *(v35 + 4) = 0;
      v36 = v35 + 32;
      *v35 = &unk_2838CD550;
      *(v35 + 3) = v35 + 32;
      v37 = v35 + 24;
      *(v35 + 5) = 0;
      *(v35 + 7) = 0;
      *(v35 + 6) = v35 + 56;
      *(v35 + 8) = 0;
      std::__tree<Backend::Google::HashView>::destroy((v35 + 24), 0);
      v38 = v105;
      *(v35 + 3) = v104;
      *(v35 + 4) = v38;
      v39 = v106;
      *(v35 + 5) = v106;
      if (v39)
      {
        v38[2] = v36;
        v104 = &v105;
        v105 = 0;
        v106 = 0;
      }

      else
      {
        *v37 = v36;
      }

      v40 = std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::__emplace_unique_key_args<std::shared_ptr<Backend::Google::FullHashChecker::Check>,std::shared_ptr<Backend::Google::FullHashChecker::Check> const&>(v35 + 6, v84, v84);
      if (Backend::Google::SSBUtilities::shouldConsultWithTencent(v40))
      {
        v41 = [v85 tencentProviderConfiguration];
        v42 = [v41 providerOff];

        if ((v42 & 1) == 0)
        {
          v43 = *v37;
          if (*v37 != v36)
          {
            do
            {
              LOBYTE(v115[0]) = *(v43 + 76);
              if (LOBYTE(v115[0]))
              {
                memmove(__dst, v43 + 44, LOBYTE(v115[0]));
              }

              *(v115 + 4) = *(v43 + 28);
              v113 = __dst;
              v44 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__emplace_unique_key_args<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::piecewise_construct_t const&,std::tuple<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>&&>,std::tuple<>>((a1 + 88), __dst, &std::piecewise_construct, &v113);
              atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
              v45 = v44[12];
              v44[11] = v37;
              v44[12] = v35;
              if (v45)
              {
                std::__shared_weak_count::__release_shared[abi:sn200100](v45);
              }

              v46 = v43[1];
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
                  v47 = v43[2];
                  v34 = *v47 == v43;
                  v43 = v47;
                }

                while (!v34);
              }

              v43 = v47;
            }

            while (v47 != v36);
          }
        }
      }

      v48 = operator new(0x48uLL);
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 4) = 0;
      v49 = v48 + 32;
      *v48 = &unk_2838CD550;
      *(v48 + 3) = v48 + 32;
      v50 = v48 + 24;
      *(v48 + 5) = 0;
      *(v48 + 7) = 0;
      *(v48 + 6) = v48 + 56;
      *(v48 + 8) = 0;
      std::__tree<Backend::Google::HashView>::destroy((v48 + 24), 0);
      v51 = v99;
      *(v48 + 3) = v98;
      *(v48 + 4) = v51;
      v52 = v100;
      *(v48 + 5) = v100;
      if (v52)
      {
        v51[2] = v49;
        v98 = &v99;
        v99 = 0;
        v100 = 0;
      }

      else
      {
        *v50 = v49;
      }

      v53 = std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::__emplace_unique_key_args<std::shared_ptr<Backend::Google::FullHashChecker::Check>,std::shared_ptr<Backend::Google::FullHashChecker::Check> const&>(v48 + 6, v84, v84);
      if (Backend::Google::SSBUtilities::shouldConsultWithApple(v53))
      {
        v54 = [v85 appleProviderConfiguration];
        v55 = [v54 providerOff];

        if ((v55 & 1) == 0)
        {
          v56 = *v50;
          if (*v50 != v49)
          {
            do
            {
              LOBYTE(v115[0]) = *(v56 + 76);
              if (LOBYTE(v115[0]))
              {
                memmove(__dst, v56 + 44, LOBYTE(v115[0]));
              }

              *(v115 + 4) = *(v56 + 28);
              v113 = __dst;
              v57 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__emplace_unique_key_args<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::piecewise_construct_t const&,std::tuple<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>&&>,std::tuple<>>((a1 + 88), __dst, &std::piecewise_construct, &v113);
              atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
              v58 = v57[12];
              v57[11] = v50;
              v57[12] = v48;
              if (v58)
              {
                std::__shared_weak_count::__release_shared[abi:sn200100](v58);
              }

              v59 = v56[1];
              if (v59)
              {
                do
                {
                  v60 = v59;
                  v59 = *v59;
                }

                while (v59);
              }

              else
              {
                do
                {
                  v60 = v56[2];
                  v34 = *v60 == v56;
                  v56 = v60;
                }

                while (!v34);
              }

              v56 = v60;
            }

            while (v60 != v49);
          }
        }
      }

      std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(__dst, a1);
      if (v107 != v108)
      {
        v62 = *(a1 + 40);
        if (v62)
        {
          v91 = __dst[0];
          if (*(&__dst[0] + 1))
          {
            atomic_fetch_add_explicit((*(&__dst[0] + 1) + 8), 1uLL, memory_order_relaxed);
          }

          *&v90 = v23 + 24;
          *(&v90 + 1) = v23;
          atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
          Backend::Google::FullHashChecker::fetchHashes(a1, v62, &v107, &v91, &v90, v83, *(*v84 + 40));
          if (*(&v90 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&v90 + 1));
          }

          v61 = *(&v91 + 1);
          if (*(&v91 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](*(&v91 + 1));
          }
        }
      }

      v63 = Backend::Google::SSBUtilities::shouldConsultWithTencent(v61);
      if (v63)
      {
        if (v101 != v102)
        {
          v64 = *(a1 + 56);
          if (v64)
          {
            v89 = __dst[0];
            if (*(&__dst[0] + 1))
            {
              atomic_fetch_add_explicit((*(&__dst[0] + 1) + 8), 1uLL, memory_order_relaxed);
            }

            *&v88 = v35 + 24;
            *(&v88 + 1) = v35;
            atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
            Backend::Google::FullHashChecker::fetchHashes(a1, v64, &v101, &v89, &v88, v83, 0);
            if (*(&v88 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](*(&v88 + 1));
            }

            v63 = *(&v89 + 1);
            if (*(&v89 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](*(&v89 + 1));
            }
          }
        }
      }

      if (Backend::Google::SSBUtilities::shouldConsultWithApple(v63))
      {
        if (v95 != v96)
        {
          v65 = *(a1 + 72);
          if (v65)
          {
            v87 = __dst[0];
            if (*(&__dst[0] + 1))
            {
              atomic_fetch_add_explicit((*(&__dst[0] + 1) + 8), 1uLL, memory_order_relaxed);
            }

            *&v86 = v48 + 24;
            *(&v86 + 1) = v48;
            atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
            Backend::Google::FullHashChecker::fetchHashes(a1, v65, &v95, &v87, &v86, v83, 0);
            if (*(&v86 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](*(&v86 + 1));
            }

            if (*(&v87 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](*(&v87 + 1));
            }
          }
        }
      }

      if (*(&__dst[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](*(&__dst[0] + 1));
      }

      std::__shared_weak_count::__release_shared[abi:sn200100](v48);
      std::__shared_weak_count::__release_shared[abi:sn200100](v35);
      std::__shared_weak_count::__release_shared[abi:sn200100](v23);
    }

    goto LABEL_113;
  }

LABEL_23:
  v15 = *a2;
  v16 = *(*a2 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN7Backend6Google15FullHashChecker11checkHashesENSt3__110shared_ptrINS1_5CheckEEE_block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c91_ZTSKZN7Backend6Google15FullHashChecker11checkHashesENSt3__110shared_ptrINS1_5CheckEEEE3__0_e5_v8__0l;
  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::__value_func[abi:sn200100](__dst, v15 + 64);
  memset(v115, 0, 24);
  v17 = __p;
  v18 = v93 - __p;
  if (v93 != __p)
  {
    std::vector<Backend::Google::Database::HashSizeBucket>::__vallocate[abi:sn200100](v115, v18 >> 4);
    v19 = v115[1];
    memmove(v115[1], v17, v18);
    v115[1] = &v19[v18];
  }

  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::__value_func[abi:sn200100](v117, __dst);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v20 = v115[0];
  v21 = v115[1] - v115[0];
  if (v115[1] != v115[0])
  {
    std::vector<Backend::Google::Database::HashSizeBucket>::__vallocate[abi:sn200100](&v118, v21 >> 4);
    v22 = v119;
    memmove(v119, v20, v21);
    v119 = &v22[v21];
  }

  dispatch_async(v16, block);
  if (v115[0])
  {
    v115[1] = v115[0];
    operator delete(v115[0]);
  }

  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](__dst);
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](v117);
LABEL_113:

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  *&__dst[0] = &v95;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](__dst);
  std::__tree<Backend::Google::HashView>::destroy(&v98, v99);
  *&__dst[0] = &v101;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](__dst);
  std::__tree<Backend::Google::HashView>::destroy(&v104, v105);
  *&__dst[0] = &v107;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](__dst);
  std::__tree<Backend::Google::HashView>::destroy(&v110, v111);
  v66 = *MEMORY[0x277D85DE8];
}

void sub_225621E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, void *a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, void *a45)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a17);
  }

  v50 = *(v48 - 248);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v50);
  }

  std::__shared_weak_count::__release_shared[abi:sn200100](v47);
  std::__shared_weak_count::__release_shared[abi:sn200100](v46);
  std::__shared_weak_count::__release_shared[abi:sn200100](v45);

  if (__p)
  {
    operator delete(__p);
  }

  *(v48 - 256) = &a29;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100]((v48 - 256));
  std::__tree<Backend::Google::HashView>::destroy(&a32, a33);
  *(v48 - 256) = &a35;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100]((v48 - 256));
  std::__tree<Backend::Google::HashView>::destroy(&a38, a39);
  *(v48 - 256) = &a41;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100]((v48 - 256));
  std::__tree<Backend::Google::HashView>::destroy(&a44, a45);
  _Unwind_Resume(a1);
}

void ___ZN7Backend6Google15FullHashChecker11checkHashesENSt3__110shared_ptrINS1_5CheckEEE_block_invoke(uint64_t a1)
{
  std::vector<Backend::Google::Database::HashSizeBucket>::vector[abi:sn200100](&__p, a1 + 64);
  v2 = *(a1 + 56);
  if (!v2)
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }

    _Unwind_Resume(v3);
  }

  (*(*v2 + 48))(v2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

uint64_t __destroy_helper_block_ea8_32c91_ZTSKZN7Backend6Google15FullHashChecker11checkHashesENSt3__110shared_ptrINS1_5CheckEEEE3__0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](a1 + 32);
}

uint64_t Backend::Google::FullHashChecker::checkHashes(std::shared_ptr<Backend::Google::FullHashChecker::Check>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](a1);
}

void Backend::Google::FullHashChecker::handleFetchResult(uint64_t a1, void *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v26 = a2;
  v9 = *a2;
  v8 = a2 + 1;
  v7 = v9;
  if (v9 != v8)
  {
    rep = v6.__d_.__rep_;
    v11 = *(a3 + 48);
    v27 = v6.__d_.__rep_ + 1000000 * a3[5];
    if (v11)
    {
      v12 = v6.__d_.__rep_ + 1000000 * a3[5];
    }

    else
    {
      v12 = 0;
    }

    do
    {
      v31 = *(v7 + 76);
      if (v31)
      {
        memmove(__dst, v7 + 44, v31);
      }

      v32 = *(v7 + 28);
      std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__erase_unique<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>((a1 + 88), __dst);
      v13 = *(v7 + 76);
      v15 = *a3;
      v14 = a3[1];
      if (*a3 != v14)
      {
        while (Backend::Google::operator!=(v15, v7 + 7) || v13 != *(v7 + 76) || memcmp((v15 + 16), v7 + 44, v13))
        {
          v15 += 80;
          if (v15 == v14)
          {
            v15 = v14;
            break;
          }
        }
      }

      v16 = *(v7 + 10);
      v17 = a3[1];
      if (v16 == 1)
      {
        if (v15 == v17)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_45;
          }

          Backend::Google::FullHashCache::addSafePrefix(*(a1 + 112), v7 + 28, v7 + 44, v27);
        }

        else
        {
          Backend::Google::FullHashCache::addUnsafeFullHash(*(a1 + 112), v15, (v15 + 16), v13, rep + 1000000 * *(v15 + 72), v12, v11);
        }
      }

      else if (v16 == 2)
      {
        if (v15 == v17)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_45;
          }

          Backend::Google::FullHashCache::addSafePrefix(*(a1 + 128), v7 + 28, v7 + 44, v27);
        }

        else
        {
          Backend::Google::FullHashCache::addUnsafeFullHash(*(a1 + 128), v15, (v15 + 16), v13, rep + 1000000 * *(v15 + 72), v12, v11);
        }
      }

      else if (v15 == v17)
      {
        if ((v11 & 1) == 0)
        {
LABEL_45:
          __break(1u);
        }

        Backend::Google::FullHashCache::addSafePrefix(*(a1 + 144), v7 + 28, v7 + 44, v27);
      }

      else
      {
        Backend::Google::FullHashCache::addUnsafeFullHash(*(a1 + 144), v15, (v15 + 16), v13, rep + 1000000 * *(v15 + 72), v12, v11);
      }

      v18 = v7[1];
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
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
    }

    while (v19 != v8);
  }

  v21 = v26[3];
  if (v21 != v26 + 4)
  {
    do
    {
      v22 = v21[5];
      v28 = v21[4];
      v29 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Backend::Google::FullHashChecker::checkHashes(a1, &v28);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v29);
      }

      v23 = v21[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v21[2];
          v20 = *v24 == v21;
          v21 = v24;
        }

        while (!v20);
      }

      v21 = v24;
    }

    while (v24 != v26 + 4);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225622464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void Backend::Google::FullHashChecker::handleFetchResult(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v35 = a2;
  v9 = *a2;
  v7 = a2 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    v10 = v6.__d_.__rep_ + 1000000 * *(a3 + 24);
    do
    {
      v46[0] = *(v8 + 76);
      if (v46[0])
      {
        memmove(__dst, v8 + 44, v46[0]);
      }

      *&v46[4] = *(v8 + 28);
      std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__erase_unique<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>((a1 + 88), __dst);
      v11 = *a3;
      v12 = *(a3 + 8);
      if (*a3 != v12)
      {
        v13 = *(v8 + 76);
        v14 = *(v8 + 7);
        while (1)
        {
          v15 = v11[4];
          if (v14 == 16)
          {
            if (v15 != v11[5])
            {
              goto LABEL_14;
            }
          }

          else
          {
            v16 = v11[5];
            if (v15 != v16)
            {
              v17 = 0;
              do
              {
                v18 = *v15;
                v15 += 8;
                v17 |= v18 == v14;
              }

              while (v15 != v16);
              if (v17)
              {
LABEL_14:
                if (!memcmp(v11, v8 + 44, v13))
                {
                  break;
                }
              }
            }
          }

          v11 += 7;
          if (v11 == v12)
          {
            __dst[0] = 0;
            v47 = 0;
            goto LABEL_19;
          }
        }
      }

      __dst[0] = 0;
      v47 = 0;
      if (v11 != v12)
      {
        std::optional<Backend::Google::HashesSearchResponse::FullHash>::operator=[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash const&,void>(__dst, v11);
      }

LABEL_19:
      if (*(v8 + 10) == 1)
      {
        v19 = *(v8 + 7);
        if (v19 == 16)
        {
          if (v47 == 1)
          {
            v20 = *v46;
            v21 = *&v46[8];
            while (v20 != v21)
            {
              v22 = *(a1 + 112);
              v23 = *v20;
              std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash,false>::__optional_copy_base[abi:sn200100](v43, __dst);
              Backend::Google::FullHashCache::handleFullHashResponse(v22, v23, v43, v8 + 44, v10);
              if (v44[24] == 1)
              {
                v38 = v44;
                std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v38);
              }

              v20 += 8;
            }

            goto LABEL_32;
          }

          v26 = *(a1 + 112);
          std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash,false>::__optional_copy_base[abi:sn200100](v41, __dst);
          Backend::Google::FullHashCache::handleFullHashResponse(v26, 16, v41, v8 + 44, v10);
          if (v42[24] == 1)
          {
            v25 = v42;
            goto LABEL_31;
          }
        }

        else
        {
          v24 = *(a1 + 112);
          std::__optional_copy_base<Backend::Google::HashesSearchResponse::FullHash,false>::__optional_copy_base[abi:sn200100](v39, __dst);
          Backend::Google::FullHashCache::handleFullHashResponse(v24, v19, v39, v8 + 44, v10);
          if (v40[24] == 1)
          {
            v25 = v40;
LABEL_31:
            v38 = v25;
            std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v38);
          }
        }
      }

LABEL_32:
      if (v47 == 1)
      {
        v38 = v46;
        std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&v38);
      }

      v27 = v8[1];
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
          v28 = v8[2];
          v29 = *v28 == v8;
          v8 = v28;
        }

        while (!v29);
      }

      v8 = v28;
    }

    while (v28 != v7);
  }

  v30 = v35[3];
  if (v30 != v35 + 4)
  {
    do
    {
      v31 = v30[5];
      v36 = v30[4];
      v37 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Backend::Google::FullHashChecker::checkHashes(a1, &v36);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v37);
      }

      v32 = v30[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v30[2];
          v29 = *v33 == v30;
          v30 = v33;
        }

        while (!v29);
      }

      v30 = v33;
    }

    while (v33 != v35 + 4);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2256227EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a32 == 1)
  {
    a16 = a10;
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&a16);
  }

  if (*(v40 - 104) == 1)
  {
    a16 = a13;
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__destroy_vector::operator()[abi:sn200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<Backend::Google::HashesSearchResponse::FullHash>::operator=[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash const&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    if (a1 != a2)
    {
      std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__assign_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
    }
  }

  else
  {
    std::__optional_storage_base<Backend::Google::HashesSearchResponse::FullHash,false>::__construct[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash const&>(a1, a2);
  }

  return a1;
}

void Backend::Google::FullHashChecker::handleFetchFailure(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v27 = *(v5 + 76);
      if (v27)
      {
        memmove(&__n[1], v5 + 44, v27);
      }

      v28 = *(v5 + 28);
      std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__erase_unique<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>((a1 + 88), &__n[1]);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  v9 = a2[3];
  v10 = a2 + 4;
  if (v9 != a2 + 4)
  {
    do
    {
      v22 = 0uLL;
      v23 = 0;
      v11 = v9[4];
      v12 = *v11;
      v13 = v11[1];
      if (*v11 != v13)
      {
        do
        {
          __n[0] = v12[32];
          if (__n[0])
          {
            memcpy(__src, v12, __n[0]);
            *&__n[1] = *(v12 + 36);
            BYTE12(v28) = __n[0];
            if (__n[0])
            {
              memcpy(&v26, __src, __n[0]);
            }
          }

          else
          {
            *&__n[1] = *(v12 + 36);
            BYTE12(v28) = 0;
          }

          if (!std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__count_unique<Backend::Google::FullHashChecker::FetchRequest::Entry>(a2, &__n[1]))
          {
            std::vector<Backend::Google::FullHashRequest>::push_back[abi:sn200100](&v22, v12);
          }

          v12 += 72;
        }

        while (v12 != v13);
        v11 = v9[4];
      }

      std::vector<Backend::Google::FullHashRequest>::__vdeallocate(v11);
      *v11 = v22;
      v11[2] = v23;
      v22 = 0uLL;
      v23 = 0;
      *&__n[1] = &v22;
      std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&__n[1]);
      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v8 = *v15 == v9;
          v9 = v15;
        }

        while (!v8);
      }

      v9 = v15;
    }

    while (v15 != v10);
    v9 = a2[3];
  }

  if (v9 != v10)
  {
    do
    {
      v16 = v9[5];
      v20 = v9[4];
      v21 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Backend::Google::FullHashChecker::checkHashes(a1, &v20);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      v17 = v9[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v9[2];
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v9 = v18;
    }

    while (v18 != v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225622B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Backend::Google::FullHashRequest>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        Backend::Google::FullHashRequest::~FullHashRequest((v3 - 72));
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

uint64_t std::vector<Backend::Google::FullHashRequest>::__emplace_back_slow_path<Backend::Google::FullHashRequest const&>(uint64_t a1, const Backend::Google::FullHashRequest *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = std::allocator<Backend::Google::FullHashRequest>::allocate_at_least[abi:sn200100](a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 72 * v2);
  *&v16 = v15;
  *(&v16 + 1) = v7 + 72 * v6;
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  Backend::Google::FullHashRequest::FullHashRequest((v7 + 72 * v2), a2);
  *&v16 = v16 + 72;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<Backend::Google::FullHashRequest>,Backend::Google::FullHashRequest*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Backend::Google::FullHashRequest>::~__split_buffer(&v14);
  return v13;
}

void sub_225622D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Backend::Google::FullHashRequest>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

Backend::Google::FullHashRequest *std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(Backend::Google::FullHashRequest *result, const Backend::Google::FullHashRequest *a2, const Backend::Google::FullHashRequest *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<Backend::Google::FullHashRequest>::__vallocate[abi:sn200100](result, a4);

    return std::vector<Backend::Google::FullHashRequest>::__construct_at_end<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(v6, a2, a3);
  }

  return result;
}

char *std::vector<Backend::Google::FullHashRequest>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<Backend::Google::FullHashRequest>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[72 * v4];
  return result;
}

Backend::Google::FullHashRequest *std::vector<Backend::Google::FullHashRequest>::__construct_at_end<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(uint64_t a1, const Backend::Google::FullHashRequest *a2, const Backend::Google::FullHashRequest *a3)
{
  v4 = *(a1 + 8);
  if (a2 == a3)
  {
    result = *(a1 + 8);
LABEL_7:
    *(a1 + 8) = result;
  }

  else
  {
    v6 = a2;
    result = *(a1 + 8);
    while (result)
    {
      v8 = Backend::Google::FullHashRequest::FullHashRequest(result, v6);
      v6 = (v6 + 72);
      result = (v8 + 72);
      if (v6 == a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void *std::__optional_storage_base<Backend::Google::HashesSearchResponse::FullHash,false>::__construct[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash const&>(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 1) = v3;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    result = std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(result + 4, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
    *(v2 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__assign_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(uint64_t *a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 <= (a1[2] - *a1) >> 5)
  {
    v12 = a1[1] - v8;
    if (a4 <= v12 >> 5)
    {
      std::__copy_impl::operator()[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *>(&v20, a2, a3, v8);
      v16 = v15;
      v17 = a1[1];
      if (v17 != v15)
      {
        do
        {
          v18 = *(v17 - 24);
          if (v18)
          {
            *(v17 - 16) = v18;
            operator delete(v18);
          }

          v17 -= 32;
        }

        while (v17 != v16);
      }

      a1[1] = v16;
    }

    else
    {
      v13 = std::__copy_impl::operator()[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *>(&v19, a2, a2 + v12, v8);
      v14 = a1[1] - *a1;
      std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__construct_at_end<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(a1, v13, a3);
    }
  }

  else
  {
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__vdeallocate(a1);
    if (a4 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v9 = a1[2] - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__vallocate[abi:sn200100](a1, v11);

    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__construct_at_end<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>(a1, a2, a3);
  }
}

void std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::clear[abi:sn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int *,unsigned int *>((a4 + 8), *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 2);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__count_unique<Backend::Google::FullHashChecker::FetchRequest::Entry>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = a2 + 16;
    v5 = 1;
    do
    {
      v9 = a2;
      v10 = v4;
      v7 = v2 + 28;
      v8 = v2 + 44;
      if ((std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,0ul,1ul>(&v9, &v7) & 0x80) == 0)
      {
        v9 = v2 + 28;
        v10 = v2 + 44;
        v7 = a2;
        v8 = v4;
        if ((std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,0ul,1ul>(&v9, &v7) & 0x80) == 0)
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,0ul,1ul>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (Backend::Google::operator<(*a1, *a2))
  {
    return 255;
  }

  if (Backend::Google::operator<(v5, v4))
  {
    return 1;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v9 = v7[32];
  v10 = v8[32];
  if (v10 >= v9)
  {
    v11 = v7[32];
  }

  else
  {
    v11 = v8[32];
  }

  v12 = memcmp(v7, v8, v11);
  v13 = v9 < v10;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 255;
  }

  v14 = memcmp(v8, v7, v11);
  if (v14)
  {
    return v14 < 0;
  }

  else
  {
    return v10 < v9;
  }
}

void std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::destroy(a1, a2[1]);
    v4 = a2[12];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }

    operator delete(a2);
  }
}

void std::allocate_shared[abi:sn200100]<Backend::Google::FullHashFetcher,std::allocator<Backend::Google::FullHashFetcher>,Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xD8uLL);
  std::__shared_ptr_emplace<Backend::Google::FullHashFetcher>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,std::allocator<Backend::Google::FullHashFetcher>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a3, v6 + 3, (v6 + 3));
}

void *std::__shared_ptr_emplace<Backend::Google::FullHashFetcher>::__shared_ptr_emplace[abi:sn200100]<Backend::Google::Configuration const&,Backend::Google::SafeBrowsingProvider,std::allocator<Backend::Google::FullHashFetcher>,0>(void *a1, uint64_t a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD4A8;
  Backend::Google::FullHashFetcher::FullHashFetcher(a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<Backend::Google::FullHashFetcher>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD4A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocate_shared[abi:sn200100]<Backend::Google::FullHashCache,std::allocator<Backend::Google::FullHashCache>,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,0>(void **a1@<X1>, int *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x60uLL);
  std::__shared_ptr_emplace<Backend::Google::FullHashCache>::__shared_ptr_emplace[abi:sn200100]<NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,std::allocator<Backend::Google::FullHashCache>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a3, v6 + 3, (v6 + 3));
}

void *std::__shared_ptr_emplace<Backend::Google::FullHashCache>::__shared_ptr_emplace[abi:sn200100]<NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::SafeBrowsingProvider,std::allocator<Backend::Google::FullHashCache>,0>(void *a1, void **a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838CD5C0;
  Backend::Google::FullHashCache::FullHashCache((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<Backend::Google::FullHashCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD5C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<Backend::Google::FullHashChecker::Check>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<Backend::Google::FullHashChecker::Check>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 24);
  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](a1 + 88);

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((a1 + 48), 0);
  v3 = v2;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v3);
}

uint64_t std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::operator=[abi:sn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::operator=[abi:sn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::operator=[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::find<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:sn200100]<Backend::Google::Hash,Backend::Google::ThreatListDescriptor,Backend::Google::Hash,Backend::Google::ThreatListDescriptor>(v3 + 32, a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:sn200100]<Backend::Google::Hash,Backend::Google::ThreatListDescriptor,Backend::Google::Hash,Backend::Google::ThreatListDescriptor>(a2, v5 + 32) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:sn200100]<Backend::Google::Hash,Backend::Google::ThreatListDescriptor,Backend::Google::Hash,Backend::Google::ThreatListDescriptor>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v5 >= v4)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = memcmp(a1, a2, v6);
  v8 = v4 < v5;
  if (v7)
  {
    v8 = v7 < 0;
  }

  if (v8)
  {
    return 255;
  }

  v10 = memcmp(a2, a1, v6);
  v11 = v5 < v4;
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    return 1;
  }

  if (Backend::Google::operator<((a1 + 36), (a2 + 36)))
  {
    return 255;
  }

  return Backend::Google::operator<((a2 + 36), (a1 + 36));
}

uint64_t *std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::__emplace_unique_key_args<std::shared_ptr<Backend::Google::FullHashChecker::Check>,std::shared_ptr<Backend::Google::FullHashChecker::Check> const&>(uint64_t **a1, unint64_t *a2, uint64_t *a3)
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
        v9 = v5[4];
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
        return v8;
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
    v10 = operator new(0x30uLL);
    v11 = a3[1];
    v10[4] = *a3;
    v10[5] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v8, v6, v10);
  }

  return v10;
}

uint64_t *std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__emplace_unique_key_args<Backend::Google::FullHashChecker::FetchRequest::Entry,Backend::Google::FullHashChecker::FetchRequest::Entry>(uint64_t **a1, char *a2, uint64_t a3)
{
  v5 = std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__find_equal<Backend::Google::FullHashChecker::FetchRequest::Entry>(a1, &v11, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v8 = operator new(0x50uLL);
    v6 = v8;
    *(v8 + 28) = *a3;
    v9 = *(a3 + 48);
    v8[76] = v9;
    if (v9)
    {
      memcpy(v8 + 44, (a3 + 16), v9);
    }

    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v11, v7, v6);
  }

  return v6;
}

void *std::__tree<Backend::Google::FullHashChecker::FetchRequest::Entry>::__find_equal<Backend::Google::FullHashChecker::FetchRequest::Entry>(uint64_t a1, void *a2, char *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a3 + 16;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4 + 28;
        v14 = a3;
        v15 = v7;
        v10 = v4 + 44;
        v12 = v4 + 28;
        v13 = v4 + 44;
        if ((std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,0ul,1ul>(&v14, &v12) & 0x80) == 0)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      v14 = v9;
      v15 = v10;
      v12 = a3;
      v13 = v7;
      if ((std::__tuple_compare_three_way[abi:sn200100]<Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,Backend::Google::ThreatListDescriptor const&,Backend::Google::Hash const&,0ul,1ul>(&v14, &v12) & 0x80) == 0)
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

LABEL_10:
  *a2 = v8;
  return v5;
}

void *std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__func(void *a1)
{
  *a1 = &unk_2838CE5A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  return a1;
}

void std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__func(void *__p)
{
  *__p = &unk_2838CE5A0;
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = __p[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(__p);
}

void *std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__clone(void *a1)
{
  result = operator new(0x28uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2838CE5A0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[4];
  result[3] = a1[3];
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2838CE5A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::destroy[abi:sn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v9 = 0;
  if (*(a2 + 64))
  {
    v3 = a1 + 8;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:sn200100](v7, a2);
    v9 = 1;
    v10[0] = v3;
    v10[1] = a1 + 24;
    v10[2] = v3;
    v10[3] = a1 + 24;
    if (v8 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
      v6 = v5;
      if (v9 == 1)
      {
        std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::operator()(v7);
      }

      _Unwind_Resume(v6);
    }

    v11 = v10;
    (off_2838CE5D8[v8])(&v11, v7);
  }

  else
  {
    v4 = SSBOSLogFullHash();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::operator()(v4);
    }

    Backend::Google::FullHashChecker::handleFetchFailure(*(a1 + 8), *(a1 + 24));
  }

  if (v9 == 1 && v8 != -1)
  {
    (off_2838CE5E8[v8])(v10, v7);
  }
}

void std::__function::__alloc_func<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0,std::allocator<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0>,void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::destroy[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overload<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)::{lambda(Backend::Google::FindFullHashesResponse)#1},Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)::{lambda(Backend::Google::HashesSearchResponse)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  memset(&v4, 0, sizeof(v4));
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(&v4, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  v5[0] = *(a2 + 24);
  *(v5 + 9) = *(a2 + 33);
  Backend::Google::FullHashChecker::handleFetchResult(**v3, **(v3 + 8), &v4);
  v6 = &v4;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v6);
}

void sub_225623E00(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100]((v2 - 40));
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overload<Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)::{lambda(Backend::Google::FindFullHashesResponse)#1},Backend::Google::FullHashChecker::fetchHashes(Backend::Google::FullHashFetcher &,std::vector<Backend::Google::FullHashRequest> const&,std::shared_ptr<Backend::Google::FullHashChecker>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)::{lambda(Backend::Google::HashesSearchResponse)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  memset(v4, 0, 24);
  std::vector<Backend::Google::HashesSearchResponse::FullHash>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash*,Backend::Google::HashesSearchResponse::FullHash*>(v4, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v4[3] = a2[3];
  Backend::Google::FullHashChecker::handleFetchResult(**(v3 + 16), **(v3 + 24), v4);
  v5 = v4;
  std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v5);
}

void sub_225623EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__vallocate[abi:sn200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>,Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

char *std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x333333333333334)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[80 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:sn200100]<std::allocator<Backend::Google::FindFullHashesResponse::ThreatMatch>,Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v6 = a2;
  while (a4)
  {
    v7 = *v6;
    v8 = v6[2];
    *(a4 + 16) = v6[1];
    *(a4 + 32) = v8;
    *a4 = v7;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    result = std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*,Backend::Google::FindFullHashesResponse::ThreatMatch::MetadataEntry*>((a4 + 48), *(v6 + 6), *(v6 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 7) - *(v6 + 6)) >> 4));
    *(a4 + 72) = *(v6 + 9);
    v6 += 5;
    a4 += 80;
    if (v6 == a3)
    {
      return a4;
    }
  }

  __break(1u);
  return result;
}

void *std::vector<Backend::Google::HashesSearchResponse::FullHash>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash*,Backend::Google::HashesSearchResponse::FullHash*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<Backend::Google::HashesSearchResponse::FullHash>::__vallocate[abi:sn200100](result, a4);
    v7 = *(v6 + 8);
    if (a2 == a3)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = *(v6 + 8);
      do
      {
        result = std::allocator_traits<std::allocator<Backend::Google::HashesSearchResponse::FullHash>>::construct[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash,Backend::Google::HashesSearchResponse::FullHash&,void,0>(v6, v8, a2);
        a2 += 56;
        v8 += 56;
      }

      while (a2 != a3);
    }

    *(v6 + 8) = v8;
  }

  return result;
}

char *std::vector<Backend::Google::HashesSearchResponse::FullHash>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<SafeBrowsing::DatabaseStatus::Database>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[56 * v4];
  return result;
}

void *std::allocator_traits<std::allocator<Backend::Google::HashesSearchResponse::FullHash>>::construct[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash,Backend::Google::HashesSearchResponse::FullHash&,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    return std::vector<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*,Backend::Google::HashesSearchResponse::FullHash::FullHashDetail*>((a2 + 32), *(a3 + 32), *(a3 + 40), (*(a3 + 40) - *(a3 + 32)) >> 5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

void sub_225624148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 56);
  if (v15 != -1)
  {
    (off_2838CE5E8[v15])(&a13, v13);
  }

  *(v13 + 56) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4 != -1)
  {
    result = (off_2838CE5E8[v4])(&v7, result);
  }

  *(v3 + 56) = -1;
  v5 = *(a2 + 56);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_2838CE5F8[v5])(&v6, a2);
    *(v3 + 56) = v5;
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = *a2;
    *(v2 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = *(a2 + 24);
    *(v2 + 33) = *(a2 + 33);
    *(v2 + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &&>(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    *v2 = *a2;
    v3 = *(a2 + 24);
    v2[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v2[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<Backend::Google::ThreatListDescriptor>)>::~__value_func[abi:sn200100](uint64_t a1)
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

void std::__shared_ptr_emplace<Backend::Google::FullHashChecker::FetchRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<Backend::Google::FullHashChecker::FetchRequest>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::destroy(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  std::__tree<Backend::Google::HashView>::destroy(a1 + 24, v2);
}

void std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<Backend::Google::FullHashChecker::Check>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__emplace_unique_key_args<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::piecewise_construct_t const&,std::tuple<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>&&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__find_equal<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(a1, &v13, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v9 = operator new(0x68uLL);
    v7 = v9;
    v10 = *a4;
    v11 = *(v10 + 32);
    *(v9 + 64) = v11;
    if (v11)
    {
      memmove(v9 + 4, v10, v11);
    }

    *(v7 + 68) = *(v10 + 36);
    v7[11] = 0;
    v7[12] = 0;
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v13, v8, v7);
  }

  return v7;
}

void *std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__find_equal<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:sn200100]<Backend::Google::Hash,Backend::Google::ThreatListDescriptor,Backend::Google::Hash,Backend::Google::ThreatListDescriptor>(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:sn200100]<Backend::Google::Hash,Backend::Google::ThreatListDescriptor,Backend::Google::Hash,Backend::Google::ThreatListDescriptor>((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::__erase_unique<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::find<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::__map_value_compare<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>,std::less<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>>,true>,std::allocator<std::__value_type<std::pair<Backend::Google::Hash,Backend::Google::ThreatListDescriptor>,std::shared_ptr<Backend::Google::FullHashChecker::FetchRequest>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__remove_node_pointer(a1, a2);
  v4 = a2[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t Backend::Google::FullHashFetcher::FullHashFetcher(uint64_t a1, const Backend::Google::Configuration *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  Backend::Google::Configuration::Configuration((a1 + 16), a2);
  *(a1 + 112) = dispatch_queue_create("com.apple.Safari.SafeBrowsing.FullHashFetcher", 0);
  v5 = std::random_device::random_device[abi:sn200100](&v11);
  v6 = MEMORY[0x22AA672F0](v5);
  v7 = v6 + ((v6 / 0x7FFFFFFF) | ((v6 / 0x7FFFFFFF) << 31));
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *(a1 + 120) = v7;
  std::random_device::~random_device(&v11);
  *(a1 + 124) = a3;
  std::string::basic_string[abi:sn200100]<0>(&v9, "Full Hash Fetcher Back-off");
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  *(a1 + 152) = a1 + 120;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void sub_2256247E4(_Unwind_Exception *a1)
{
  Backend::Google::Configuration::~Configuration((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void Backend::Google::FullHashFetcher::~FullHashFetcher(Backend::Google::FullHashFetcher *this)
{
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 22, 0);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  Backend::Google::Configuration::~Configuration((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void Backend::Google::FullHashFetcher::fetchHashes(uint64_t a1, __int128 *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = +[RemoteConfigurationController sharedController];
  v15 = v14;
  if (*(a1 + 124) == 1)
  {
    v16 = [v14 googleProviderConfiguration];
    v17 = [v16 useV5ForConnection:v11];

    if (*(a1 + 124) == 1)
    {
      v18 = [v15 googleProviderConfiguration];
      v19 = [v18 proxyOff] ^ 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v23, a1);
  v20 = *(a1 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke;
  block[3] = &__block_descriptor_136_ea8_32c318_ZTSKZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEE3__0_e5_v8__0l;
  v25 = v23;
  v23 = 0uLL;
  v26 = v19;
  v27 = v17;
  v28 = *a2;
  v29 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v21 = v11;
  v30 = v21;
  v31 = v12;
  v32 = v13;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v33, a6);
  Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::$_0(&v35, &v25);
  dispatch_async(v20, block);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v33);

  v24 = &v28;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v24);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v25 + 1));
  }

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v38);

  *&v25 = v37;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v25);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v36);
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v23 + 1));
  }

  v22 = *MEMORY[0x277D85DE8];
}

void ___ZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke(uint64_t a1)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 184) || *(v2 + 164) && std::chrono::system_clock::now().__d_.__rep_ < *(v2 + 168))
  {
    v3 = SSBOSLogFullHash();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 124);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v4;
      _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_DEFAULT, "Cannot issue full hash request to %d server either because we are in wait duration or because we are in backoff interval", &buf, 8u);
    }

    v5 = *(a1 + 96);
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
    buf.__r_.__value_.__l.__size_ = 3321888768;
    buf.__r_.__value_.__r.__words[2] = ___ZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEv_block_invoke;
    v56 = &__block_descriptor_64_ea8_32c331_ZTSKZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvEUlvE__e5_v8__0l;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v48, a1 + 104);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](&v57, v48);
    dispatch_async(v5, &buf);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v48);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](&v57);
  }

  else
  {
    Backend::xpcConnectionClientIdentifierFromConnection(*(a1 + 80), &v47);
    Backend::xpcConnectionClientStringFromIdentifier(&v47, __p);
    v6 = *(a1 + 32);
    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v43, *(v6 + 40), *(v6 + 48));
    }

    else
    {
      v43 = *(v6 + 40);
    }

    Backend::Google::ClientInfo::ClientInfo(v46, __p, &v43);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(*(a1 + 32) + 72);
    v8 = *(a1 + 32);
    v9 = *(v8 + 124);
    switch(v9)
    {
      case 1:
        if (*(a1 + 49) == 1)
        {
          if (*(a1 + 48) == 1)
          {
            v19 = *(v8 + 88);

            v7 = v19;
          }

          v20 = SSBOSLogFullHash();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_2255EE000, v20, OS_LOG_TYPE_DEFAULT, "Using safe browsing v5 hash search.", &buf, 2u);
          }

          std::string::basic_string[abi:sn200100]<0>(&buf.__r_.__value_.__l.__data_, &unk_2256583B1);
          v21 = *(a1 + 56);
          for (i = *(a1 + 64); v21 != i; v21 += 72)
          {
            Platform::encodeURLSafeBase64(v21, (v21 + *(v21 + 32)), &v42);
            v23 = std::string::insert(&v42, 0, "&hashPrefixes=", 0xEuLL);
            v24 = *&v23->__r_.__value_.__l.__data_;
            v49 = v23->__r_.__value_.__r.__words[2];
            *v48 = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v49) >= 0)
            {
              v25 = v48;
            }

            else
            {
              v25 = v48[0];
            }

            if (SHIBYTE(v49) >= 0)
            {
              v26 = HIBYTE(v49);
            }

            else
            {
              v26 = v48[1];
            }

            std::string::append(&buf, v25, v26);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(v48[0]);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }
          }

          v13 = Backend::Google::Configuration::getEncodedHashesSearchRequestURLRequest(*(a1 + 32) + 16, &buf, *(a1 + 48));
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          Backend::Google::FindFullHashesRequestJSONSerializer::FindFullHashesRequestJSONSerializer(&buf, v46);
          v27 = *(a1 + 56);
          v28 = *(a1 + 64);
          if (v27 != v28)
          {
            v29 = *(a1 + 56);
            do
            {
              v48[0] = *(v29 + 32);
              v48[1] = v27;
              Backend::Google::FindFullHashesRequestJSONSerializer::addHashPrefix(&buf, v48, (v29 + 36), *(v29 + 64), *(v29 + 56));
              v29 += 72;
              v27 += 72;
            }

            while (v29 != v28);
          }

          v13 = Backend::Google::Configuration::getEncodedFullHashesRequestURLRequest((*(a1 + 32) + 16), &buf, *(a1 + 88));
          Backend::Google::FindFullHashesRequestJSONSerializer::~FindFullHashesRequestJSONSerializer(&buf);
        }

        v15 = *(a1 + 88) != 0;
        break;
      case 2:
        Backend::Google::FindFullHashesRequestJSONSerializer::FindFullHashesRequestJSONSerializer(&buf, v46);
        v16 = *(a1 + 56);
        v17 = *(a1 + 64);
        if (v16 != v17)
        {
          v18 = *(a1 + 56);
          do
          {
            v48[0] = *(v18 + 32);
            v48[1] = v16;
            Backend::Google::FindFullHashesRequestJSONSerializer::addHashPrefix(&buf, v48, (v18 + 36), *(v18 + 64), *(v18 + 56));
            v18 += 72;
            v16 += 72;
          }

          while (v18 != v17);
        }

        v13 = Backend::Google::Configuration::getEncodedFullHashesRequestURLRequestForTencent((*(a1 + 32) + 16), &buf);
        Backend::Google::FindFullHashesRequestJSONSerializer::~FindFullHashesRequestJSONSerializer(&buf);
        v15 = 0;
        break;
      case 3:
        Backend::Google::FindFullHashesRequestJSONSerializer::FindFullHashesRequestJSONSerializer(&buf, v46);
        v10 = *(a1 + 56);
        v11 = *(a1 + 64);
        if (v10 != v11)
        {
          v12 = *(a1 + 56);
          do
          {
            v48[0] = *(v12 + 32);
            v48[1] = v10;
            Backend::Google::FindFullHashesRequestJSONSerializer::addHashPrefix(&buf, v48, (v12 + 36), *(v12 + 64), *(v12 + 56));
            v12 += 72;
            v10 += 72;
          }

          while (v12 != v11);
        }

        v13 = Backend::Google::Configuration::getEncodedFullHashesRequestURLRequestForAppleProtobuf((*(a1 + 32) + 16), &buf);
        v14 = *(*(a1 + 32) + 88);

        Backend::Google::FindFullHashesRequestJSONSerializer::~FindFullHashesRequestJSONSerializer(&buf);
        v15 = 0;
        v7 = v14;
        break;
      default:
        v15 = 0;
        v13 = 0;
        break;
    }

    v30 = SSBOSLogFullHash();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = *(*(a1 + 32) + 124);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v31;
      _os_log_impl(&dword_2255EE000, v30, OS_LOG_TYPE_INFO, "Initiate request to %d server", &buf, 8u);
    }

    if (v47 && (Backend::xpcConnectionClientIsSafari(&v47) & 1) == 0)
    {
      v32 = Backend::xpcConnectionClientAuditTokenDataFromConnection(*(a1 + 80));
      v33 = *(a1 + 32);
      v34 = *(v33 + 124);
      v35 = Backend::Google::Configuration::sessionForAuditTokenData(v33 + 16, v32, v7);

      v7 = v35;
    }

    v36 = nw_activity_create();
    nw_activity_activate();
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
    buf.__r_.__value_.__l.__size_ = 3321888768;
    buf.__r_.__value_.__r.__words[2] = ___ZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEv_block_invoke_10;
    v56 = &__block_descriptor_136_ea8_32c363_ZTSKZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvEUlP6NSDataP13NSURLResponseP7NSErrorE__e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
    v37 = *(a1 + 40);
    v48[0] = *(a1 + 32);
    v48[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
    }

    v49 = *(a1 + 96);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v50, a1 + 104);
    v38 = v36;
    v51 = v38;
    v52 = v15;
    memset(v53, 0, sizeof(v53));
    std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(v53, *(a1 + 56), *(a1 + 64), 0x8E38E38E38E38E39 * ((*(a1 + 64) - *(a1 + 56)) >> 3));
    v54 = *(a1 + 49);
    Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::NSError(&v57, v48);
    v39 = [v7 dataTaskWithRequest:v13 completionHandler:&buf];
    v42.__r_.__value_.__r.__words[0] = v53;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v42);

    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v50);
    if (v48[1])
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v48[1]);
    }

    [v39 set_nw_activity:v38];
    [v39 resume];

    v48[0] = v61;
    std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](v48);

    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v60);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v58);
    }

    Backend::Google::ClientInfo::~ClientInfo(v46);
    v40 = v47;
    v47 = 0;
    if (v40)
    {
      std::default_delete<std::string>::operator()[abi:sn200100](&v47, v40);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_22562528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (*(v44 - 201) < 0)
  {
    operator delete(*(v44 - 224));
  }

  Backend::Google::ClientInfo::~ClientInfo(&a29);
  v46 = a35;
  a35 = 0;
  if (v46)
  {
    std::default_delete<std::string>::operator()[abi:sn200100](&a35, v46);
  }

  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 16) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>((a1 + 24), *(a2 + 24), *(a2 + 32), 0x8E38E38E38E38E39 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](a1 + 72, a2 + 72);
  return a1;
}

void sub_225625508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c318_ZTSKZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 104);

  v3 = (a1 + 56);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v3);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 72);

  v4 = (a1 + 24);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void Backend::Google::FullHashFetcher::didFetchFullHashes(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = SSBOSLogFullHash();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v35 = v15;
    v21 = *(a1 + 124);
    *buf = 67109376;
    *&buf[4] = v21;
    *&buf[8] = 1024;
    *&buf[10] = [v16 statusCode];
    _os_log_impl(&dword_2255EE000, v20, OS_LOG_TYPE_INFO, "Received response from %d server with status code %d", buf, 0xEu);
    v15 = v35;
  }

  if (!v18 && [v16 statusCode] == 200)
  {
    *buf = a1;
    std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&buf[8], a1);
    *&v63 = v19;
    *(&v63 + 1) = v17;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v64, a8);
    v22 = *(a1 + 124);
    switch(v22)
    {
      case 1:
        goto LABEL_8;
      case 2:
        Backend::Google::FetchThreatListUpdatesResponseJSONParser::FetchThreatListUpdatesResponseJSONParser(&v40, v15);
        Backend::Google::FindFullHashesResponseJSONParser::finish(v36, &v40);
        LOBYTE(v46) = 0;
        v50 = 0;
        if (v39 == 1)
        {
          v46 = *v36;
          v47 = v37;
          v36[1] = 0;
          v37 = 0;
          v36[0] = 0;
          v48[0] = v38[0];
          *(v48 + 9) = *(v38 + 9);
          v49 = 0;
          v50 = 1;
        }

        Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()(buf, &v46);
        if (v50 == 1)
        {
          if (v49 != -1)
          {
            (off_2838CE7C8[v49])(&v45, &v46);
          }

          v49 = -1;
        }

        if (v39 == 1)
        {
          v45 = v36;
          std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v45);
        }

        Backend::Google::FetchThreatListUpdatesResponseJSONParser::~FetchThreatListUpdatesResponseJSONParser(&v40);
        break;
      case 3:
LABEL_8:
        _ZNSt3__115allocate_sharedB8sn200100I12ByteProviderNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v36);
        if (a7)
        {
          std::allocate_shared[abi:sn200100]<ReadStream,std::allocator<ReadStream>,std::shared_ptr<ByteProvider> &,0>(v36, &v43);
          v56 = *buf;
          v57 = v62;
          *&buf[8] = 0;
          v62 = 0;
          v23 = v63;
          v63 = 0uLL;
          v58 = v23;
          if (v65)
          {
            if (v65 == v64)
            {
              v60 = v59;
              (*(*v65 + 24))(v65, v59);
            }

            else
            {
              v60 = v65;
              v65 = 0;
            }
          }

          else
          {
            v60 = 0;
          }

          *&v48[0] = 0;
          v27 = operator new(0x50uLL);
          *v27 = &unk_2838CE808;
          *(v27 + 8) = v56;
          v28 = v60;
          *(v27 + 3) = v57;
          *(&v56 + 1) = 0;
          v57 = 0;
          v29 = v58;
          v58 = 0uLL;
          *(v27 + 2) = v29;
          if (v28)
          {
            if (v28 == v59)
            {
              *(v27 + 9) = v27 + 48;
              (*(*v28 + 24))(v28);
            }

            else
            {
              *(v27 + 9) = v28;
              v60 = 0;
            }
          }

          else
          {
            *(v27 + 9) = 0;
          }

          *&v48[0] = v27;
          Backend::Google::HashesSearchResponseParser::HashesSearchResponseParser(&v45, &v43, &v46);
          std::__function::__value_func<void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__value_func[abi:sn200100](&v46);
          std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v59);

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v57);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v44);
          }
        }

        else
        {
          std::allocate_shared[abi:sn200100]<ReadStream,std::allocator<ReadStream>,std::shared_ptr<ByteProvider> &,0>(v36, &v41);
          v51 = *buf;
          v52 = v62;
          *&buf[8] = 0;
          v62 = 0;
          v26 = v63;
          v63 = 0uLL;
          v53 = v26;
          if (v65)
          {
            if (v65 == v64)
            {
              v55 = v54;
              (*(*v65 + 24))(v65, v54);
            }

            else
            {
              v55 = v65;
              v65 = 0;
            }
          }

          else
          {
            v55 = 0;
          }

          *&v48[0] = 0;
          v30 = operator new(0x50uLL);
          *v30 = &unk_2838CE850;
          *(v30 + 8) = v51;
          v31 = v55;
          *(v30 + 3) = v52;
          *(&v51 + 1) = 0;
          v52 = 0;
          v32 = v53;
          v53 = 0uLL;
          *(v30 + 2) = v32;
          if (v31)
          {
            if (v31 == v54)
            {
              *(v30 + 9) = v30 + 48;
              (*(*v31 + 24))(v31);
            }

            else
            {
              *(v30 + 9) = v31;
              v55 = 0;
            }
          }

          else
          {
            *(v30 + 9) = 0;
          }

          *&v48[0] = v30;
          Backend::Google::FindFullHashesResponseParser::FindFullHashesResponseParser(&v45, &v41, &v46);
          std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100](&v46);
          std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v54);

          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v52);
          }

          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v42);
          }
        }

        v33 = v36[0];
        v34 = v15;
        ByteProvider::dataReceived(v33, [(NSData *)v15 bytes], [(NSData *)v15 length]);
        ByteProvider::finishedReadingSuccessfully(v36[0]);
        if (v45)
        {
          (v45[1])();
        }

        if (v36[1])
        {
          std::__shared_weak_count::__release_shared[abi:sn200100](v36[1]);
        }

        break;
    }

    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v64);

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v62);
    }

    goto LABEL_15;
  }

  v24 = SSBOSLogFullHash();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    Backend::Google::FullHashFetcher::didFetchFullHashes(a1, v24);
  }

  Backend::Google::BackoffTracker<std::chrono::system_clock>::didReceiveError(a1 + 128);
  nw_activity_complete_with_reason();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke;
  block[3] = &__block_descriptor_64_ea8_32c287_ZTSKZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEE3__1_e5_v8__0l;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](buf, a8);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v67, buf);
  dispatch_async(v19, block);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](buf);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v67);
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

void sub_225625D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__function::__value_func<void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__value_func[abi:sn200100](&a25);
  Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::~$_0(&a35);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a21);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a12);
  }

  Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::~$_0(v39 - 240);

  _Unwind_Resume(a1);
}

uint64_t ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v6 = 0;
  v1 = *(a1 + 56);
  if (!v1)
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    if (v6 == 1)
    {
      ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(v4);
    }

    _Unwind_Resume(v3);
  }

  result = (*(*v1 + 48))(v1, v4);
  if (v6 == 1 && v5 != -1)
  {
    return (off_2838CE7C8[v5])(&v7, v4);
  }

  return result;
}

uint64_t Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

uint64_t Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(a2 + 64))
  {
    *(v3 + 164) = 0;
    std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((v3 + 176), 0);
    v5 = a1[4];
    nw_activity_complete_with_reason();
    if (*(a2 + 64) == 1)
    {
      v16 = v3;
      v6 = *(a2 + 56);
      if (v6 == -1)
      {
        std::__throw_bad_variant_access[abi:sn200100]();
        v15 = v14;
        std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1);
        Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&&)::{lambda(void)#2}::~(v17);
        _Unwind_Resume(v15);
      }

      v17[0] = &v16;
      (off_2838CE7B8[v6])(v17, a2);
    }

    v7 = a1[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK__block_invoke_19;
    block[3] = &__block_descriptor_128_ea8_32c304_ZTSKZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK_EUlvE0__e5_v8__0l;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v17, (a1 + 5));
    if ((*(a2 + 64) & 1) == 0)
    {
      __break(1u);
    }

    v8 = v21;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:sn200100](v18, a2);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v21, v17);
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:sn200100](v22, v18);
    dispatch_async(v7, block);
    if (v19 != -1)
    {
      (off_2838CE7C8[v19])(&v16, v18);
    }

    v19 = -1;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v17);
    if (v23 != -1)
    {
      (off_2838CE7C8[v23])(v17, v22);
    }

    v23 = -1;
  }

  else
  {
    v9 = SSBOSLogFullHash();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()(v3, v9);
    }

    Backend::Google::BackoffTracker<std::chrono::system_clock>::didReceiveError(v3 + 128);
    v10 = a1[4];
    nw_activity_complete_with_reason();
    v11 = a1[3];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3321888768;
    v24[2] = ___ZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK__block_invoke;
    v24[3] = &__block_descriptor_64_ea8_32c303_ZTSKZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK_EUlvE__e5_v8__0l;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v17, (a1 + 5));
    v8 = v25;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v25, v17);
    dispatch_async(v11, v24);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v17);
  }

  result = std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void Backend::Google::FullHashFetcher::setMinimumWaitDuration(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 112));
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 112));
  v5 = *(a1 + 184);
  *(a1 + 184) = v4;

  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v14, a1);
  v7 = v14;
  v6 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  v8 = *(a1 + 184);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZN7Backend6Google15FullHashFetcher22setMinimumWaitDurationENSt3__16chrono8durationIxNS2_5ratioILl1ELl1EEEEE_block_invoke;
  v11[3] = &__block_descriptor_48_ea8_32c117_ZTSKZN7Backend6Google15FullHashFetcher22setMinimumWaitDurationENSt3__16chrono8durationIxNS2_5ratioILl1ELl1EEEEEE3__0_e5_v8__0l;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = v7;
    v13 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v8, v11);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v12 = v7;
    v13 = 0;
    dispatch_source_set_event_handler(v8, v11);
  }

  v9 = *(a1 + 184);
  v10 = dispatch_walltime(0, 1000000000 * a2);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(a1 + 184));
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void ___ZN7Backend6Google15FullHashFetcher22setMinimumWaitDurationENSt3__16chrono8durationIxNS2_5ratioILl1ELl1EEEEE_block_invoke(uint64_t a1)
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
        Backend::Google::FullHashFetcher::waitTimerFired(v5);
      }

      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c117_ZTSKZN7Backend6Google15FullHashFetcher22setMinimumWaitDurationENSt3__16chrono8durationIxNS2_5ratioILl1ELl1EEEEEE3__0(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c117_ZTSKZN7Backend6Google15FullHashFetcher22setMinimumWaitDurationENSt3__16chrono8durationIxNS2_5ratioILl1ELl1EEEEEE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void Backend::Google::FullHashFetcher::waitTimerFired(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[14]);
  dispatch_source_cancel(this[23]);
  v2 = this[23];
  this[23] = 0;
}

uint64_t ___ZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEv_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v6 = 0;
  v1 = *(a1 + 56);
  if (!v1)
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    if (v6 == 1)
    {
      ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(v4);
    }

    _Unwind_Resume(v3);
  }

  result = (*(*v1 + 48))(v1, v4);
  if (v6 == 1 && v5 != -1)
  {
    return (off_2838CE7C8[v5])(&v7, v4);
  }

  return result;
}

void ___ZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEv_block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 32);
  v14 = *(v13 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU__block_invoke;
  block[3] = &__block_descriptor_160_ea8_32c384_ZTSKZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU_EUlvE__e5_v8__0l;
  v15 = *(a1 + 40);
  v21 = v13;
  v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 48);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v24, a1 + 56);
  v24[32] = *(a1 + 128);
  v25 = *(a1 + 88);
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v18 = v12;
  v28 = v18;
  v29 = *(a1 + 96);
  memset(v30, 0, sizeof(v30));
  std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>(v30, *(a1 + 104), *(a1 + 112), 0x8E38E38E38E38E39 * ((*(a1 + 112) - *(a1 + 104)) >> 3));
  Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::operator() const(NSData *,NSURLResponse *,NSError *)::{lambda(void)#1}::(&v32, &v21);
  dispatch_async(v14, block);
  v20 = v30;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v20);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v24);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v22);
  }

  v21 = v36;
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v21);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v35);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v33);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225626780(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::operator() const(NSData *,NSURLResponse *,NSError *)::{lambda(void)#1}::~(va);

  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::NSError(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](a1 + 24, a2 + 24);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>((a1 + 72), *(a2 + 72), *(a2 + 80), 0x8E38E38E38E38E39 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void sub_2256268BC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v1 + 24);

  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c363_ZTSKZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvEUlP6NSDataP13NSURLResponseP7NSErrorE_(uint64_t a1)
{
  v3 = (a1 + 104);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v3);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::~NSError(uint64_t a1)
{
  v4 = (a1 + 72);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v4);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

uint64_t ___ZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU__block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 128) == 1 && *(a1 + 120) && [ProxyConfiguration isProxyError:?])
  {
    v2 = SSBOSLogDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU__block_invoke_cold_1(v2);
    }

    v3 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU_ENKUlvE_clEv_block_invoke;
    block[3] = &__block_descriptor_64_ea8_32c397_ZTSKZZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU_ENKUlvE_clEvEUlvE__e5_v8__0l;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v14, a1 + 56);
    v4 = v16;
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](v16, v14);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v14);
  }

  else
  {
    v5 = *(a1 + 32);
    v7 = *(a1 + 96);
    v6 = *(a1 + 104);
    v9 = *(a1 + 112);
    v8 = *(a1 + 120);
    v10 = *(a1 + 48);
    v11 = *(a1 + 88);
    std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](block, a1 + 56);
    v4 = block;
    Backend::Google::FullHashFetcher::didFetchFullHashes(v5, v6, v9, v7, v8, v10, v11 & 1, block);
  }

  result = std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225626BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::operator() const(NSData *,NSURLResponse *,NSError *)::{lambda(void)#1}::(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](a1 + 24, a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<Backend::Google::FullHashRequest>::__init_with_size[abi:sn200100]<Backend::Google::FullHashRequest*,Backend::Google::FullHashRequest*>((a1 + 104), *(a2 + 104), *(a2 + 112), 0x8E38E38E38E38E39 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  return a1;
}

void sub_225626CC0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](v1 + 24);

  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c384_ZTSKZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU_EUlvE_(uint64_t a1)
{
  v3 = (a1 + 136);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v3);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t Backend::Google::FullHashFetcher::fetchHashes(std::vector<Backend::Google::FullHashRequest>,NSObject  {objcproto13OS_xpc_object}*,ProxyConfiguration *,NSObject {objcproto17OS_dispatch_queue}*,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(void)::{lambda(NSData *,NSURLResponse *,NSError *)#1}::operator() const(NSData *,NSURLResponse *,NSError *)::{lambda(void)#1}::~(uint64_t a1)
{
  v4 = (a1 + 104);
  std::vector<Backend::Google::FullHashRequest>::__destroy_vector::operator()[abi:sn200100](&v4);

  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

uint64_t ___ZZZZN7Backend6Google15FullHashFetcher11fetchHashesENSt3__16vectorINS0_15FullHashRequestENS2_9allocatorIS4_EEEEPU24objcproto13OS_xpc_object8NSObjectP18ProxyConfigurationPU28objcproto17OS_dispatch_queueS8_NS2_8functionIFvNS2_8optionalINS2_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEvENKUlP6NSDataP13NSURLResponseP7NSErrorE_clESQ_SS_SU_ENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v6 = 0;
  v1 = *(a1 + 56);
  if (!v1)
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    if (v6 == 1)
    {
      ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(v4);
    }

    _Unwind_Resume(v3);
  }

  result = (*(*v1 + 48))(v1, v4);
  if (v6 == 1 && v5 != -1)
  {
    return (off_2838CE7C8[v5])(&v7, v4);
  }

  return result;
}

void std::default_delete<std::string>::operator()[abi:sn200100](int a1, void **__p)
{
  if (__p)
  {
    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
    }

    operator delete(__p);
  }
}

uint64_t ___ZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK__block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v6 = 0;
  v1 = *(a1 + 56);
  if (!v1)
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    if (v6 == 1)
    {
      ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(v4);
    }

    _Unwind_Resume(v3);
  }

  result = (*(*v1 + 48))(v1, v4);
  if (v6 == 1 && v5 != -1)
  {
    return (off_2838CE7C8[v5])(&v7, v4);
  }

  return result;
}

uint64_t ___ZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK__block_invoke_19(uint64_t a1)
{
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:sn200100](v5, a1 + 64);
  v7 = 1;
  v2 = *(a1 + 56);
  if (!v2)
  {
    v4 = std::__throw_bad_function_call[abi:sn200100]();
    if (v7 == 1)
    {
      ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(v5);
    }

    _Unwind_Resume(v4);
  }

  result = (*(*v2 + 48))(v2, v5);
  if (v7 == 1 && v6 != -1)
  {
    return (off_2838CE7C8[v6])(&v8, v5);
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c304_ZTSKZZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEEENK3__0clEOSK_EUlvE0_(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2838CE7C8[v2])(&v4, a1 + 64);
  }

  *(a1 + 120) = -1;
  return std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 32);
}

uint64_t Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&&)::{lambda(void)#2}::~(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 != -1)
  {
    (off_2838CE7C8[v2])(&v4, a1 + 32);
  }

  *(a1 + 88) = -1;
  return std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overload<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&&)::{lambda(Backend::Google::FindFullHashesResponse)#1},Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&)::{lambda(Backend::Google::HashesSearchResponse)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  memset(&v4, 0, sizeof(v4));
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(&v4, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  v5[0] = *(a2 + 24);
  *(v5 + 9) = *(a2 + 33);
  if (BYTE8(v5[0]) == 1)
  {
    Backend::Google::FullHashFetcher::setMinimumWaitDuration(*v3, *&v5[0]);
  }

  v6 = &v4;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100](&v6);
}

void sub_225627230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 40) = &a9;
  std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__destroy_vector::operator()[abi:sn200100]((v9 - 40));
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overload<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&&)::{lambda(Backend::Google::FindFullHashesResponse)#1},Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator() const(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>&)::{lambda(Backend::Google::HashesSearchResponse)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse> &>(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, 24);
  std::vector<Backend::Google::HashesSearchResponse::FullHash>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash*,Backend::Google::HashesSearchResponse::FullHash*>(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v3[3] = a2[3];
  v4 = v3;
  std::vector<Backend::Google::HashesSearchResponse::FullHash>::__destroy_vector::operator()[abi:sn200100](&v4);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_2256272FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 56);
  if (v15 != -1)
  {
    (off_2838CE7C8[v15])(&a13, v13);
  }

  *(v13 + 56) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>::__generic_construct[abi:sn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4 != -1)
  {
    result = (off_2838CE7C8[v4])(&v7, result);
  }

  *(v3 + 56) = -1;
  v5 = *(a2 + 56);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_2838CE7D8[v5])(&v6, a2);
    *(v3 + 56) = v5;
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJN7Backend6Google22FindFullHashesResponseENS9_20HashesSearchResponseEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(void *result, uint64_t *a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    result = std::vector<Backend::Google::HashesSearchResponse::FullHash>::__init_with_size[abi:sn200100]<Backend::Google::HashesSearchResponse::FullHash*,Backend::Google::HashesSearchResponse::FullHash*>(v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    v2[3] = a2[3];
  }

  else
  {
    __break(1u);
  }

  return result;
}

std::string *std::construct_at[abi:sn200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>,std::in_place_index_t<0ul> const&,Backend::Google::FindFullHashesResponse const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>*>(std::string *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result->__r_.__value_.__r.__words[0] = 0;
    result->__r_.__value_.__l.__size_ = 0;
    result->__r_.__value_.__r.__words[2] = 0;
    std::vector<Backend::Google::FindFullHashesResponse::ThreatMatch>::__init_with_size[abi:sn200100]<Backend::Google::FindFullHashesResponse::ThreatMatch*,Backend::Google::FindFullHashesResponse::ThreatMatch*>(result, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
    v5 = *(a3 + 24);
    *(&v4[1].__r_.__value_.__r.__words[1] + 1) = *(a3 + 33);
    *&v4[1].__r_.__value_.__l.__data_ = v5;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CE808;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::~__func(void *a1)
{
  *a1 = &unk_2838CE808;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

char *std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x50uLL);
  *v2 = &unk_2838CE808;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 4) = *(a1 + 32);
  *(v2 + 5) = *(a1 + 40);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100]((v2 + 48), a1 + 48);
  return v2;
}

void sub_225627678(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838CE808;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](a2 + 48, a1 + 48);
}

void sub_22562772C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::HashesSearchResponse> &&)>::operator()(uint64_t a1, __int128 *a2)
{
  LOBYTE(v5) = 0;
  v9 = 0;
  if (*(a2 + 32) == 1)
  {
    v5 = *a2;
    v2 = *(a2 + 2);
    v3 = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v2;
    v7 = v3;
    v8 = 1;
    v9 = 1;
  }

  result = Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()((a1 + 8), &v5);
  if (v9 == 1 && v8 != -1)
  {
    return (off_2838CE7C8[v8])(&v10, &v5);
  }

  return result;
}

void sub_2256278A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CE850;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::~__func(void *a1)
{
  *a1 = &unk_2838CE850;
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

char *std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x50uLL);
  *v2 = &unk_2838CE850;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 4) = *(a1 + 32);
  *(v2 + 5) = *(a1 + 40);
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100]((v2 + 48), a1 + 48);
  return v2;
}

void sub_225627A20(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838CE850;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::__value_func[abi:sn200100](a2 + 48, a1 + 48);
}

void sub_225627AD4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>::~__value_func[abi:sn200100](a1 + 48);

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0,std::allocator<Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0>,void ()(std::optional<Backend::Google::FindFullHashesResponse> &&)>::operator()(uint64_t a1, __int128 *a2)
{
  LOBYTE(v3) = 0;
  v7 = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v5[0] = *(a2 + 24);
    *(v5 + 9) = *(a2 + 33);
    v6 = 0;
    v7 = 1;
  }

  result = Backend::Google::FullHashFetcher::didFetchFullHashes(NSData *,NSHTTPURLResponse *,NSObject  {objcproto14OS_nw_activity}*,NSError *,NSObject {objcproto17OS_dispatch_queue}*,BOOL,std::function<void ()(std::optional<std::variant<Backend::Google::FindFullHashesResponse,Backend::Google::HashesSearchResponse>>)>)::$_0::operator()((a1 + 8), &v3);
  if (v7 == 1 && v6 != -1)
  {
    return (off_2838CE7C8[v6])(&v8, &v3);
  }

  return result;
}

void sub_225627C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    ___ZN7Backend6Google15FullHashFetcher18didFetchFullHashesEP6NSDataP17NSHTTPURLResponsePU25objcproto14OS_nw_activity8NSObjectP7NSErrorPU28objcproto17OS_dispatch_queueS6_bNSt3__18functionIFvNSD_8optionalINSD_7variantIJNS0_22FindFullHashesResponseENS0_20HashesSearchResponseEEEEEEEEE_block_invoke_cold_1(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::FullHashRequest::FullHashRequest(uint64_t a1, _OWORD *a2, char a3, _OWORD *a4, const void *a5, size_t __sz)
{
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = a3;
  *(a1 + 36) = *a4;
  *(a1 + 56) = __sz;
  v10 = operator new[](__sz);
  bzero(v10, __sz);
  *(a1 + 64) = v10;
  if (__sz)
  {
    memmove(v10, a5, __sz);
  }

  return a1;
}

uint64_t Backend::Google::FullHashRequest::FullHashRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  v6 = operator new[](v5);
  bzero(v6, v5);
  *(a1 + 64) = v6;
  if (v5)
  {
    memmove(v6, *(a2 + 64), v5);
  }

  return a1;
}

void Backend::Google::FullHashRequest::~FullHashRequest(Backend::Google::FullHashRequest *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    operator delete[](v2);
  }
}

id Backend::Google::FullHashRequest::toXPC(Backend::Google::FullHashRequest *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v2, "fullHash", this, 0x20uLL);
  xpc_dictionary_set_uint64(v2, "prefixSize", *(this + 32));
  v3 = Backend::Google::ThreatListDescriptor::toXPC((this + 36));
  xpc_dictionary_set_value(v2, "threatListDescriptor", v3);

  xpc_dictionary_set_data(v2, "clientState", *(this + 8), *(this + 7));

  return v2;
}

void Backend::Google::FullHashRequest::fromXPC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = xpc_dictionary_get_value(v3, "fullHash");
  v5 = v4;
  if (!v4 || (v6 = MEMORY[0x22AA67EF0](v4), v7 = MEMORY[0x277D86458], v6 != MEMORY[0x277D86458]) || xpc_data_get_bytes(v5, buffer, 0, 0x20uLL) != 32 || xpc_data_get_length(v5) != 32)
  {
    *a2 = 0;
    *(a2 + 72) = 0;
LABEL_13:

    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = xpc_dictionary_get_value(v3, "prefixSize");
  v9 = v8;
  if (!v8 || MEMORY[0x22AA67EF0](v8) != MEMORY[0x277D864C8] || (value = xpc_uint64_get_value(v9), v11 = value, value >= 0x21) || (xpc_dictionary_get_value(v3, "threatListDescriptor"), v12 = objc_claimAutoreleasedReturnValue(), Backend::Google::ThreatListDescriptor::fromXPC(v12, &v22), v12, (v23 & 1) == 0))
  {
    *a2 = 0;
    *(a2 + 72) = 0;
LABEL_15:

    goto LABEL_13;
  }

  v13 = xpc_dictionary_get_value(v3, "clientState");
  v14 = v13;
  if (!v13 || MEMORY[0x22AA67EF0](v13) != v7)
  {
    *a2 = 0;
    *(a2 + 72) = 0;
LABEL_22:

    goto LABEL_15;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v14);
  length = xpc_data_get_length(v14);
  if (v23)
  {
    v18 = length;
    v19 = operator new[](length);
    bzero(v19, v18);
    if (v18)
    {
      memmove(v19, bytes_ptr, v18);
    }

    v20 = buffer[1];
    *a2 = buffer[0];
    *(a2 + 16) = v20;
    *(a2 + 32) = v11;
    *(a2 + 36) = v22;
    *(a2 + 56) = v18;
    v21 = operator new[](v18);
    bzero(v21, v18);
    *(a2 + 64) = v21;
    if (v18)
    {
      memcpy(v21, v19, v18);
    }

    *(a2 + 72) = 1;
    operator delete[](v19);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_225628178(_Unwind_Exception *a1)
{
  operator delete[](v5);

  _Unwind_Resume(a1);
}

void Backend::Google::LexicographicallyOrderedHashEnumerator::LexicographicallyOrderedHashEnumerator(Backend::Google::LexicographicallyOrderedHashEnumerator *this, const Backend::Google::Database *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 7);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (*(v3 + 1))
      {
        v6 = *v3;
        v7 = *(v3 + 1);
        v8 = *(this + 2);
        if (v5 >= v8)
        {
          v9 = v5 - *this;
          v10 = 1 - 0x5555555555555555 * (v9 >> 3);
          if (v10 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *this) >> 3);
          if (2 * v11 > v10)
          {
            v10 = 2 * v11;
          }

          if (v11 >= 0x555555555555555)
          {
            v12 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v12 = v10;
          }

          if (!v12 || (v13 = std::allocator<std::string>::allocate_at_least[abi:sn200100](this, v12)) == 0)
          {
LABEL_21:
            __break(1u);
            return;
          }

          v15 = &v13[v9];
          v16 = &v13[24 * v14];
          *v15 = v3;
          v15[1] = v6;
          v15[2] = v7;
          v5 = &v13[v9 + 24];
          v17 = *(this + 1) - *this;
          v18 = v15 - v17;
          memcpy(v15 - v17, *this, v17);
          v19 = *this;
          *this = v18;
          *(this + 1) = v5;
          *(this + 2) = v16;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          if (!v5)
          {
            goto LABEL_21;
          }

          *v5 = v3;
          v5[1] = v6;
          v5[2] = v7;
          v5 += 3;
        }

        *(this + 1) = v5;
      }

      v3 += 16;
    }

    while (v3 != v4);
  }
}

void sub_225628334(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Backend::Google::LexicographicallyOrderedHashEnumerator::~LexicographicallyOrderedHashEnumerator(Backend::Google::LexicographicallyOrderedHashEnumerator *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

unsigned __int8 ***Backend::Google::LexicographicallyOrderedHashEnumerator::next@<X0>(unsigned __int8 ***this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = this[1];
  v5 = *this;
  if (*this == v4)
  {
    v15 = 0;
    *a2 = 0;
    goto LABEL_19;
  }

  v6 = this;
  for (i = v5 + 3; i != v4; i += 3)
  {
    v8 = *(i + 8);
    v9 = *(v5 + 8);
    if (v9 >= v8)
    {
      v10 = *(i + 8);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    this = memcmp(i[2], v5[2], v10);
    v11 = v8 < v9;
    if (this)
    {
      v11 = this < 0;
    }

    if (v11)
    {
      v5 = i;
    }
  }

  v12 = *(v5 + 8);
  v13 = v5[2];
  v5[2] = &v13[v12];
  if (&v13[v12] != (*(*v5 + 1) + *(*v5 + 1) * **v5))
  {
LABEL_17:
    *a2 = v12;
    *(a2 + 8) = v13;
    v15 = 1;
LABEL_19:
    *(a2 + 16) = v15;
    return this;
  }

  if (v4 != v5)
  {
    v14 = v4 - (v5 + 3);
    if (v14)
    {
      this = memmove(v5, v5 + 3, v14);
    }

    *(v6 + 8) = v5 + v14;
    goto LABEL_17;
  }

  __break(1u);
  return this;
}

SafeBrowsing::LookupContext *SafeBrowsing::LookupContext::LookupContext(SafeBrowsing::LookupContext *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = dispatch_queue_create("com.apple.Safari.SafeBrowsing.LookupContext", 0);
  *(this + 5) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v2;
  *(this + 10) = 0;
  *(this + 18) = 1;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  _ZNSt3__115allocate_sharedB8sn200100IN12SafeBrowsing27BrowsingDatabaseCoordinatorENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(this + 15);
  *(this + 34) = 0;
  *(this + 18) = std::system_category();
  *(this + 19) = 0;
  *(this + 40) = 65792;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  return this;
}

void sub_225628548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::~__hash_table(v11);
  a10 = v13;
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&a10);

  v15 = *(v10 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::LookupContext::~LookupContext(SafeBrowsing::LookupContext *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    notify_cancel(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    notify_cancel(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    notify_cancel(v4);
  }

  v7 = (this + 168);
  std::vector<std::function<void ()(BOOL,std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v7);
  v5 = *(this + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::~__hash_table(this + 80);
  v7 = (this + 48);
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v7);

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_22562862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 168);
  std::vector<std::function<void ()(BOOL,std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&a10);
  v12 = *(v10 + 128);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  SafeBrowsing::LookupContext::~LookupContext(v10);
  _Unwind_Resume(a1);
}

uint64_t SafeBrowsing::LookupContext::addDatabaseUpdateObserver(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add((a1 + 72), 1u);
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v8, a1);
  v5 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext25addDatabaseUpdateObserverENSt3__18functionIFvN7Backend6Google21DatabaseConfigurationEEEE_block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c131_ZTSKZN12SafeBrowsing13LookupContext25addDatabaseUpdateObserverENSt3__18functionIFvN7Backend6Google21DatabaseConfigurationEEEEE3__0_e5_v8__0l;
  v10 = v8;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::__value_func[abi:sn200100](v12, a2);
  v13 = add;
  block[4] = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::__value_func[abi:sn200100](v16, v12);
  v16[8] = v13;
  dispatch_async(v5, block);
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v11);
  }

  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return add;
}

void sub_2256287C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a24);
  }

  SafeBrowsing::LookupContext::addDatabaseUpdateObserver(std::function<void ()(Backend::Google::DatabaseConfiguration)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t *___ZN12SafeBrowsing13LookupContext25addDatabaseUpdateObserverENSt3__18functionIFvN7Backend6Google21DatabaseConfigurationEEEE_block_invoke(uint64_t a1)
{
  SafeBrowsing::LookupContext::registerForUpdateNotifications(*(a1 + 32));
  v2 = *(a1 + 32);
  v4 = (a1 + 80);
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 80, (a1 + 80), &std::piecewise_construct, &v4);
  if (result)
  {
    return std::function<void ()(Backend::Google::DatabaseConfiguration)>::operator=(result + 3, a1 + 48);
  }

  __break(1u);
  return result;
}

uint64_t __copy_helper_block_ea8_32c131_ZTSKZN12SafeBrowsing13LookupContext25addDatabaseUpdateObserverENSt3__18functionIFvN7Backend6Google21DatabaseConfigurationEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

void sub_2256288C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c131_ZTSKZN12SafeBrowsing13LookupContext25addDatabaseUpdateObserverENSt3__18functionIFvN7Backend6Google21DatabaseConfigurationEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::addDatabaseUpdateObserver(std::function<void ()(Backend::Google::DatabaseConfiguration)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::removeDatabaseUpdateObserver(SafeBrowsing::LookupContext *this, int a2)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v11, this);
  v4 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext28removeDatabaseUpdateObserverEj_block_invoke;
  block[3] = &__block_descriptor_56_ea8_32c73_ZTSKZN12SafeBrowsing13LookupContext28removeDatabaseUpdateObserverEjE3__0_e5_v8__0l;
  v5 = v11;
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v5;
    v9 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = a2;
    dispatch_async(v4, block);
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  else
  {
    v8 = v11;
    v9 = 0;
    v10 = a2;
    dispatch_async(v4, block);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }
}

uint64_t __copy_helper_block_ea8_32c73_ZTSKZN12SafeBrowsing13LookupContext28removeDatabaseUpdateObserverEjE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

void __destroy_helper_block_ea8_32c73_ZTSKZN12SafeBrowsing13LookupContext28removeDatabaseUpdateObserverEjE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void SafeBrowsing::LookupContext::forceDatabaseUpdate(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext19forceDatabaseUpdateENSt3__18functionIFvNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext19forceDatabaseUpdateENSt3__18functionIFvNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225628BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDatabaseUpdate(std::function<void ()(std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext19forceDatabaseUpdateENSt3__18functionIFvNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v5 = SafeBrowsing::createMessage(1u);
  xpc_connection_send_message(*(*(a1 + 32) + 24), v5);
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3 >= v2[8])
  {
    v4 = std::vector<std::function<void ()(std::error_code)>>::__emplace_back_slow_path<std::function<void ()(std::error_code)> const&>(v2 + 6, a1 + 48);
  }

  else
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v2[7], a1 + 48);
    v4 = v3 + 32;
    v2[7] = v3 + 32;
  }

  v2[7] = v4;
}

void sub_225628CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *(v11 + 56) = v10;

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext19forceDatabaseUpdateENSt3__18functionIFvNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_225628D0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext19forceDatabaseUpdateENSt3__18functionIFvNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::forceDatabaseUpdate(std::function<void ()(std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225628EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(0xBu);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225629090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_225629124(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::handleForceDeviceIdentificationTokenUpdateReply(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v7 = Platform::xpcErrorCode(v4);
    cat = v8;
    *&v13.__val_ = v7;
    v13.__cat_ = v8;
    if (v7)
    {
      v10 = SSBOSLogDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v12, &v13);
        SafeBrowsing::LookupContext::handleForceDeviceIdentificationTokenUpdateReply(&v12);
      }

      v7 = *&v13.__val_;
      cat = v13.__cat_;
    }

    std::function<void ()(BOOL,std::error_code)>::operator()(a3, 0, v7, cat);
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v4, "forceDeviceIdentificationTokenUpdateKey");
    v6 = std::system_category();
    std::function<void ()(BOOL,std::error_code)>::operator()(a3, v5, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(BOOL,std::error_code)>::operator()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v7, v8);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return SafeBrowsing::LookupContext::getDatabaseStatus(v6);
}

void SafeBrowsing::LookupContext::getDatabaseStatus(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v15, a1);
  v4 = a1[2];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = ___ZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEE_block_invoke;
  v13[3] = &__block_descriptor_48_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__1_e5_v8__0l;
  v5 = v15;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    v14 = v5;
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    dispatch_async(v4, v13);
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v5 + 1));
  }

  else
  {
    v14 = v15;
    dispatch_async(v4, v13);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v21 = v15;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v6;
  v22 = v7;
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100](v23, a2);
  v26 = 0;
  v8 = operator new(0x40uLL);
  *v8 = &unk_2838CEE38;
  *(v8 + 8) = v21;
  v21 = 0uLL;
  v9 = v22;
  v10 = v24;
  v22 = 0;
  *(v8 + 3) = v9;
  if (v10)
  {
    if (v10 == v23)
    {
      *(v8 + 7) = v8 + 32;
      (*(*v10 + 24))(v10);
    }

    else
    {
      *(v8 + 7) = v10;
      v24 = 0;
    }
  }

  else
  {
    *(v8 + 7) = 0;
  }

  v26 = v8;
  SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(a1, 1, v25);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v25);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](v23);

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v21 + 1));
  }

  v11 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEE_block_invoke_7;
  block[3] = &__block_descriptor_80_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__2_e5_v8__0l;
  v16 = v15;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100](v17, a2);
  v19 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100](v20, v17);
  dispatch_group_notify(v7, v11, block);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](v17);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v16 + 1));
  }

  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](v20);
  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v19 + 1));
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v14 + 1));
  }

  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v15 + 1));
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22562964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a28);
  }

  SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_2::~$_2(&a17);

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a16);
  }

  _Unwind_Resume(a1);
}

const std::error_category *___ZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 136) = 0;
  result = std::system_category();
  *(v1 + 144) = result;
  return result;
}

uint64_t __copy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(void *a1, int a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v8, a1);
  v6 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c149_ZTSKZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEE3__0_e5_v8__0l;
  v10 = v8;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2;
  std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v13, a3);
  block[4] = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v12;
  std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v17, v13);
  dispatch_async(v6, block);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v11);
  }

  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v17);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_225629888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a24);
  }

  SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(Backend::Google::ProtectionType,std::function<void ()(std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 24);

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void ___ZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEE_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 17);
  if (v3)
  {
    v4 = *(v2 + 18);
    memset(v6, 0, sizeof(v6));
    std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::operator()(a1 + 48, v6, v3, v4);
  }

  else
  {
    SafeBrowsing::LookupContext::databaseStatus(v2, v6);
    v5 = std::system_category();
    std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::operator()(a1 + 48, v6, 0, v5);
  }

  v7 = v6;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](&v7);
}

void sub_225629994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_2256299F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext17getDatabaseStatusENSt3__18functionIFvNS_14DatabaseStatusENS1_10error_codeEEEEE3__2(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_2::~$_2(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::getServiceStatus(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c118_ZTSKZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225629BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::getServiceStatus(std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(3u);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c167_ZTSKZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225629D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::getServiceStatus(std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::getServiceStatus(std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c118_ZTSKZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_225629E0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c118_ZTSKZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::getServiceStatus(std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::lookUpURL(void *a1, void *a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v21, a1);
  if ([v11 ssb_isSafeURL])
  {
    v12 = SSBOSLogLookup();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      SafeBrowsing::LookupContext::lookUpURL(v11, v12);
    }

    v13 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZN12SafeBrowsing13LookupContext9lookUpURLEP5NSURLNS_11IsMainFrameENS_24ClientConfidenceOfSafetyENS_17IgnoreEnableStateENSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEE_block_invoke;
    block[3] = &__block_descriptor_64_ea8_32c226_ZTSKZN12SafeBrowsing13LookupContext9lookUpURLEP5NSURLNS_11IsMainFrameENS_24ClientConfidenceOfSafetyENS_17IgnoreEnableStateENSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEEE3__1_e5_v8__0l;
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v30, a6);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v32, v30);
    dispatch_async(v13, block);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v30);
    v14 = v32;
    goto LABEL_12;
  }

  v15 = v21;
  if (!a5)
  {
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v29, a6);
    SafeBrowsing::LookupContext::performURLLookup(v15, v11, a3, a4, v29);
    v14 = v29;
LABEL_12:
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v14);
    goto LABEL_17;
  }

  v22 = v21;
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v23 = v11;
  v24 = __PAIR64__(a4, a3);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v25, a6);
  v28 = 0;
  v16 = operator new(0x48uLL);
  *v16 = &unk_2838CEE80;
  *(v16 + 8) = v22;
  v22 = 0uLL;
  v17 = v23;
  v18 = v24;
  v23 = 0;
  *(v16 + 3) = v17;
  *(v16 + 4) = v18;
  v19 = v26;
  if (v26)
  {
    if (v26 == v25)
    {
      *(v16 + 8) = v16 + 40;
      (*(*v19 + 24))(v19);
    }

    else
    {
      *(v16 + 8) = v26;
      v26 = 0;
    }
  }

  else
  {
    *(v16 + 8) = 0;
  }

  v28 = v16;
  SafeBrowsing::LookupContext::getSafeBrowsingEnabledState(a1, v27);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v27);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v25);

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v22 + 1));
  }

LABEL_17:
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v21 + 1));
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22562A128(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a3);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext9lookUpURLEP5NSURLNS_11IsMainFrameENS_24ClientConfidenceOfSafetyENS_17IgnoreEnableStateENSt3__18functionIFvNS6_6vectorIN7Backend12LookupResultENS6_9allocatorISA_EEEENS6_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v2 = operator new(8uLL);
  v11 = v2;
  *v2 = 0x100000000;
  v12 = v2 + 1;
  v13 = v2 + 1;
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent((v2 + 1));
  if (shouldConsultWithTencent)
  {
    __p = 0x200000000;
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v11, &__p);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    __p = 0x400000000;
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v11, &__p);
  }

  __p = 0;
  __dst = 0;
  v10 = 0;
  v4 = v11;
  v5 = v12 - v11;
  if (v12 != v11)
  {
    std::vector<Backend::LookupResult>::__vallocate[abi:sn200100](&__p, v5 >> 3);
    v6 = __dst;
    memmove(__dst, v4, v5);
    __dst = &v6[v5];
  }

  v7 = std::system_category();
  std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a1 + 32, &__p, 0, v7);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_22562A2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SafeBrowsing::LookupContext::performURLLookup(void *a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a2;
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v16, a1);
  v17 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9;
  v18 = v10;
  v19 = __PAIR64__(a4, a3);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v20, a5);
  v23 = 0;
  v11 = operator new(0x48uLL);
  *v11 = &unk_2838CEEC8;
  *(v11 + 8) = v17;
  v17 = 0uLL;
  v12 = v18;
  v13 = v19;
  v18 = 0;
  *(v11 + 3) = v12;
  *(v11 + 4) = v13;
  v14 = v21;
  if (v21)
  {
    if (v21 == v20)
    {
      *(v11 + 8) = v11 + 40;
      (*(*v14 + 24))(v14);
    }

    else
    {
      *(v11 + 8) = v21;
      v21 = 0;
    }
  }

  else
  {
    *(v11 + 8) = 0;
  }

  v23 = v11;
  SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(a1, 1, v22);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v22);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v20);

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v16 + 1));
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22562A49C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](va1);
  SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0::~$_0(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a3);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::LookupContext::getSafeBrowsingEnabledState(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c111_ZTSKZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562A640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 32);

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::getLastDatabaseUpdateTime(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v7, a1);
  v4 = a1[15];
  v5 = v7;
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::__value_func[abi:sn200100](v9, a2);
  (*(*v4 + 48))(v4, v5, v9);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22562A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::LookupContext::ensureConnection(SafeBrowsing::LookupContext *this)
{
  if (!*(this + 3))
  {
    mach_service = xpc_connection_create_mach_service("com.apple.Safari.SafeBrowsing.Service", *(this + 2), 0);
    v3 = *(this + 3);
    *(this + 3) = mach_service;

    std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v10, this);
    v5 = v10;
    v4 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }

    v6 = *(this + 3);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3321888768;
    v7[2] = ___ZN12SafeBrowsing13LookupContext16ensureConnectionEv_block_invoke;
    v7[3] = &__block_descriptor_48_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16ensureConnectionEvE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = v5;
      v9 = v4;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = v5;
      v9 = 0;
    }

    xpc_connection_set_event_handler(v6, v7);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    xpc_connection_resume(*(this + 3));
    SafeBrowsing::LookupContext::registerForUpdateNotifications(this);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_22562A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12SafeBrowsing13LookupContext16ensureConnectionEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      if (v6)
      {
        SafeBrowsing::LookupContext::handleConnectionEvent(v6, v7);
      }

      std::__shared_weak_count::__release_shared[abi:sn200100](v5);
    }
  }
}

void sub_22562A9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::__release_shared[abi:sn200100](v10);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16ensureConnectionEvE3__0(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16ensureConnectionEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SafeBrowsing::LookupContext::registerForUpdateNotifications(SafeBrowsing::LookupContext *this)
{
  SafeBrowsing::LookupContext::registerForUpdateNotificationsForProvider(this, "com.apple.Safari.SafeBrowsing.DidFinishGoogleDatabaseUpdate", *(this + 8), 1);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v2);
  if (shouldConsultWithTencent)
  {
    SafeBrowsing::LookupContext::registerForUpdateNotificationsForProvider(this, "com.apple.Safari.SafeBrowsing.DidFinishTencentDatabaseUpdate", *(this + 9), 2);
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    v4 = *(this + 10);

    SafeBrowsing::LookupContext::registerForUpdateNotificationsForProvider(this, "com.apple.Safari.SafeBrowsing.DidFinishAppleDatabaseUpdate", v4, 3);
  }
}

void SafeBrowsing::LookupContext::registerForUpdateNotificationsForProvider(void *a1, const char *a2, int a3, int a4)
{
  out_token = a3;
  if (!a3)
  {
    std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v14, a1);
    v8 = v14;
    v7 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    }

    v9 = a1[2];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN12SafeBrowsing13LookupContext41registerForUpdateNotificationsForProviderEPKciN7Backend6Google20SafeBrowsingProviderE_block_invoke;
    v10[3] = &__block_descriptor_56_ea8_32c128_ZTSKZN12SafeBrowsing13LookupContext41registerForUpdateNotificationsForProviderEPKciN7Backend6Google20SafeBrowsingProviderEE3__0_e8_v12__0i8l;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = a4;
      v12 = v8;
      v13 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = a4;
      v12 = v8;
      v13 = 0;
    }

    notify_register_dispatch(a2, &out_token, v9, v10);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_22562AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12SafeBrowsing13LookupContext41registerForUpdateNotificationsForProviderEPKciN7Backend6Google20SafeBrowsingProviderE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        SafeBrowsing::LookupContext::serviceDidFinishDatabaseUpdate(v5, (*(a1 + 32) << 32) | 1);
      }

      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c128_ZTSKZN12SafeBrowsing13LookupContext41registerForUpdateNotificationsForProviderEPKciN7Backend6Google20SafeBrowsingProviderEE3__0(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c128_ZTSKZN12SafeBrowsing13LookupContext41registerForUpdateNotificationsForProviderEPKciN7Backend6Google20SafeBrowsingProviderEE3__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SafeBrowsing::LookupContext::handleConnectionEvent(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    SafeBrowsing::LookupContext::handleConnectionError(a1, v3);
  }

  else
  {
    v4 = SSBOSLogXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      SafeBrowsing::LookupContext::handleConnectionEvent(v4);
    }
  }
}

void SafeBrowsing::LookupContext::handleConnectionError(uint64_t a1, void *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  *&v13.__val_ = Platform::xpcErrorCode(v3);
  v13.__cat_ = v4;
  v5 = SSBOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    std::error_code::message(&v12, &v13);
    SafeBrowsing::LookupContext::handleConnectionError(&v12);
  }

  v6 = *(a1 + 48);
  v10 = v6;
  v11 = *(a1 + 56);
  v7 = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v8 = v7;
  while (v6 != v8)
  {
    std::function<void ()(std::error_code)>::operator()(v6, *&v13.__val_, v13.__cat_);
    v6 += 32;
  }

  v14[0] = &v10;
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](v14);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, v6);
  }

  v5 = std::__throw_bad_function_call[abi:sn200100]();
  return SafeBrowsing::LookupContext::serviceDidFinishDatabaseUpdate(v5);
}

void SafeBrowsing::LookupContext::serviceDidFinishDatabaseUpdate(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = HIDWORD(a2);
  v5 = SSBOSLogDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v4;
    _os_log_impl(&dword_2255EE000, v5, OS_LOG_TYPE_DEFAULT, "Service did finish database update with protection type %d and provider %d", buf, 0xEu);
  }

  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v14, a1);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 32))(v6, v14, v4);
  *buf = *(a1 + 48);
  v8 = *buf;
  v18 = *(a1 + 56);
  v9 = v18;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v10 = v9;
  if (v8 != v9)
  {
    v11 = std::system_category();
    do
    {
      std::function<void ()(std::error_code)>::operator()(v8, 0, v11);
      v8 += 32;
    }

    while (v8 != v10);
  }

  for (i = (a1 + 96); ; std::function<void ()(Backend::Google::DatabaseConfiguration)>::operator()((i + 3), a2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v16 = buf;
  std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](&v16);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v15);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22562B00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SafeBrowsing::LookupContext::databaseCoordinatorFromProtectionType@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::function<void ()(Backend::Google::DatabaseConfiguration)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:sn200100]();
  return ___ZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(v4);
}

void ___ZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 162))
  {
    if ((*(v2 + 163) & 1) == 0)
    {
      SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
      v3 = SafeBrowsing::createMessage(0xAu);
      v4 = SSBOSLogXPC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Send GetSafeBrowsingEnabledState message to safe browsing service", v13, 2u);
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3321888768;
      v13[2] = ___ZZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke;
      v13[3] = &__block_descriptor_48_ea8_32c160_ZTSKZZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v5;
        v15 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v14 = v5;
        v15 = 0;
      }

      xpc_connection_send_message_with_reply(v7, v3, v8, v13);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v6);
      }

      *(*(a1 + 32) + 163) = 1;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v2 = *(a1 + 32);
    }

    v11 = *(v2 + 176);
    if (v11 >= *(v2 + 184))
    {
      v12 = std::vector<std::function<void ()(BOOL,std::error_code)>>::__emplace_back_slow_path<std::function<void ()(BOOL,std::error_code)> const&>((v2 + 168), a1 + 48);
      goto LABEL_20;
    }

    if (v11)
    {
      std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](*(v2 + 176), a1 + 48);
      v12 = v11 + 32;
      *(v2 + 176) = v11 + 32;
LABEL_20:
      *(v2 + 176) = v12;
      return;
    }

    __break(1u);
  }

  else
  {
    v9 = *(v2 + 161);
    v10 = std::system_category();

    std::function<void ()(BOOL,std::error_code)>::operator()(a1 + 48, v9, 0, v10);
  }
}

uint64_t __copy_helper_block_ea8_32c111_ZTSKZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562B2F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c111_ZTSKZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void SafeBrowsing::LookupContext::setSafeBrowsingEnabledState(SafeBrowsing::LookupContext *this, char a2)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v11, this);
  v4 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext27setSafeBrowsingEnabledStateEb_block_invoke;
  block[3] = &__block_descriptor_56_ea8_32c72_ZTSKZN12SafeBrowsing13LookupContext27setSafeBrowsingEnabledStateEbE3__0_e5_v8__0l;
  v5 = v11;
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v5;
    v9 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = a2;
    dispatch_async(v4, block);
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  else
  {
    v8 = v11;
    v9 = 0;
    v10 = a2;
    dispatch_async(v4, block);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }
}

uint64_t __copy_helper_block_ea8_32c72_ZTSKZN12SafeBrowsing13LookupContext27setSafeBrowsingEnabledStateEbE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

void __destroy_helper_block_ea8_32c72_ZTSKZN12SafeBrowsing13LookupContext27setSafeBrowsingEnabledStateEbE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void SafeBrowsing::LookupContext::setSafeBrowsingEnabledStateNeedsUpdate(SafeBrowsing::LookupContext *this)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v8, this);
  v2 = *(this + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZN12SafeBrowsing13LookupContext38setSafeBrowsingEnabledStateNeedsUpdateEv_block_invoke;
  v5[3] = &__block_descriptor_48_ea8_32c83_ZTSKZN12SafeBrowsing13LookupContext38setSafeBrowsingEnabledStateNeedsUpdateEvE3__0_e5_v8__0l;
  v3 = v8;
  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v3;
    v7 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_async(v2, v5);
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  else
  {
    v6 = v8;
    v7 = 0;
    dispatch_async(v2, v5);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }
}

uint64_t __copy_helper_block_ea8_32c83_ZTSKZN12SafeBrowsing13LookupContext38setSafeBrowsingEnabledStateNeedsUpdateEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c83_ZTSKZN12SafeBrowsing13LookupContext38setSafeBrowsingEnabledStateNeedsUpdateEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void ___ZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = *(v2 + 120);
  v3 = *(v2 + 128);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = *(a1 + 32);
  }

  if ((*(*v4 + 16))(v4, v2))
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
      v5 = SafeBrowsing::createMessage(2u);
      xpc_dictionary_set_int64(v5, "protectionType", *(a1 + 48));
      v6 = SSBOSLogDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 48);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&dword_2255EE000, v6, OS_LOG_TYPE_INFO, "Send GetDatabases message to safe browsing service with protection type %d", buf, 8u);
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      *buf = MEMORY[0x277D85DD0];
      v24 = 3321888768;
      v25 = ___ZZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEENK3__0clEv_block_invoke;
      v26 = &__block_descriptor_56_ea8_32c198_ZTSKZZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *(a1 + 48);
        v27 = v8;
        v28 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v12 = *(a1 + 48);
        v27 = v8;
        v28 = 0;
      }

      v29 = v12;
      xpc_connection_send_message_with_reply(v10, v5, v11, buf);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      }

      *(v4 + 24) = 1;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v28);
      }
    }

    v17 = SSBOSLogDatabase();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      v21[0] = 67109120;
      v21[1] = v18;
      _os_log_impl(&dword_2255EE000, v17, OS_LOG_TYPE_INFO, "Already waiting for GetDatabases response with protection type %d", v21, 8u);
    }

    std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](v21, a1 + 56);
    v19 = *(v4 + 40);
    if (v19 >= *(v4 + 48))
    {
      v20 = std::vector<std::function<void ()(std::error_code)>>::__emplace_back_slow_path<std::function<void ()(std::error_code)>>((v4 + 32), v21);
    }

    else
    {
      if (!v19)
      {
        __break(1u);
      }

      if (v22)
      {
        if (v22 == v21)
        {
          *(v19 + 24) = v19;
          (*(*v22 + 24))(v22, v19);
        }

        else
        {
          *(v19 + 24) = v22;
          v22 = 0;
        }
      }

      else
      {
        *(v19 + 24) = 0;
      }

      v20 = v19 + 32;
    }

    *(v4 + 40) = v20;
    std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v21);
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    goto LABEL_13;
  }

  v13 = SSBOSLogDatabase();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 48);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&dword_2255EE000, v13, OS_LOG_TYPE_INFO, "Databases are not empty with protection type %d", buf, 8u);
  }

  v15 = std::system_category();
  std::function<void ()(std::error_code)>::operator()(a1 + 56, 0, v15);
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22562B8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c149_ZTSKZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  return std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](a1 + 56, a2 + 56);
}

void sub_22562B96C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c149_ZTSKZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::dispatchWhenDatabasesAreAvailable(Backend::Google::ProtectionType,std::function<void ()(std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::databaseStatus(SafeBrowsing::LookupContext *this@<X0>, uint64_t a2@<X8>)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v9, this);
  v7 = 0uLL;
  v8 = 0;
  (*(**(this + 15) + 24))(*(this + 15), v9, &v7);
  v4 = v8;
  v5 = v7;
  v8 = 0;
  v6[2] = 0;
  v7 = 0uLL;
  *a2 = v5;
  *(a2 + 16) = v4;
  v6[0] = 0;
  v6[1] = 0;
  v11 = v6;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](&v11);
  v11 = &v7;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100](&v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }
}

void sub_22562BAC0(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<SafeBrowsing::DatabaseStatus::Database>::__destroy_vector::operator()[abi:sn200100]((v2 - 24));
  v4 = *(v2 - 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::LookupContext::handleGetDatabasesReply(void *a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SSBOSLogDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10) = 67109120;
    HIDWORD(v10) = a2;
    _os_log_impl(&dword_2255EE000, v6, OS_LOG_TYPE_INFO, "Receive GetDatabases response from safe browsing service with protection type: %d", &v10, 8u);
  }

  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v10, a1);
  v7 = a1[15];
  v8 = a1[16];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 40))(v7, v10, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22562BBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::LookupContext::handleGetServiceStatusReply(uint64_t a1, void *a2, uint64_t a3)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v46 = 0u;
    v47 = 0u;
    DWORD2(v47) = -1;
    memset(v48, 0, sizeof(v48));
    v49 = 0u;
    v50 = 0;
    v21 = Platform::xpcErrorCode(v4);
    std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::operator()(a3, &v46, v21, v22);
    if (v49)
    {
      *(&v49 + 1) = v49;
      operator delete(v49);
    }

    v44 = &v48[1] + 8;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v44);
    v44 = v48;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v44);
    if (SBYTE7(v47) < 0)
    {
      operator delete(v46);
    }
  }

  else
  {
    v5 = xpc_dictionary_get_remote_connection(v4);
    name = xpc_connection_get_name(v5);
    std::string::basic_string[abi:sn200100]<0>(&v44, name);
    pid = xpc_connection_get_pid(v5);
    v42 = 0uLL;
    v43 = 0;
    v8 = xpc_dictionary_get_value(v4, "activeTransactions");
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3321888768;
    applier[2] = ___ZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEE_block_invoke;
    applier[3] = &__block_descriptor_40_ea8_32c166_ZTSKZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEEE3__0_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    applier[4] = &v42;
    xpc_array_apply(v8, applier);

    v39 = 0uLL;
    v40 = 0;
    v9 = xpc_dictionary_get_value(v4, "connections");
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3321888768;
    v38[2] = ___ZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEE_block_invoke_27;
    v38[3] = &__block_descriptor_40_ea8_32c166_ZTSKZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEEE3__1_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    v38[4] = &v39;
    xpc_array_apply(v9, v38);

    LODWORD(v9) = xpc_dictionary_get_int64(v4, "googleDatabaseUpdaterState");
    v10 = operator new(8uLL);
    *&v36 = v10;
    *v10 = v9 | 0x100000000;
    *(&v36 + 1) = v10 + 1;
    v37 = v10 + 1;
    shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent((v10 + 1));
    if (shouldConsultWithTencent)
    {
      LODWORD(v51) = xpc_dictionary_get_int64(v4, "tencentDatabaseUpdaterState");
      HIDWORD(v51) = 2;
      std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v36, &v51);
    }

    if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
    {
      LODWORD(v51) = xpc_dictionary_get_int64(v4, "appleDatabaseUpdaterState");
      HIDWORD(v51) = 3;
      std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](&v36, &v51);
    }

    v12 = v44;
    v52[0] = v45;
    *(v52 + 7) = *(&v45 + 7);
    v13 = HIBYTE(v45);
    v45 = 0uLL;
    v44 = 0;
    v14 = v43;
    v15 = v42;
    v43 = 0;
    v42 = 0uLL;
    v16 = v40;
    v17 = v39;
    v39 = 0uLL;
    v40 = 0;
    v18 = v37;
    v19 = v36;
    v36 = 0uLL;
    v37 = 0;
    *&v27[7] = *(v52 + 7);
    v26 = v12;
    *v27 = v52[0];
    v28 = v13;
    v29 = pid;
    v30 = v15;
    v31 = v14;
    memset(v25, 0, sizeof(v25));
    v32 = v17;
    v33 = v16;
    memset(v24, 0, sizeof(v24));
    *__p = v19;
    v35 = v18;
    v20 = std::system_category();
    std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::operator()(a3, &v26, 0, v20);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v51 = &v32;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v51);
    v51 = &v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v51);
    if (v28 < 0)
    {
      operator delete(v26);
    }

    v51 = v24;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v51);
    v51 = v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v51);
    if (v36)
    {
      *(&v36 + 1) = v36;
      operator delete(v36);
    }

    *&v36 = &v39;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v36);
    *&v39 = &v42;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v39);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22562C044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char **__p, char **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  SafeBrowsing::ServiceStatus::~ServiceStatus(&a16);
  *(v47 - 112) = &a10;
  std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100]((v47 - 112));
  *(v47 - 112) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100]((v47 - 112));
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  __p = &a37;
  std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&__p);
  a37 = &a45;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&a37);
  if (*(v47 - 225) < 0)
  {
    operator delete(*(v47 - 248));
  }

  _Unwind_Resume(a1);
}

void std::function<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2, v6);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    SafeBrowsing::ServiceStatus::~ServiceStatus(v5);
  }
}

void SafeBrowsing::ServiceStatus::~ServiceStatus(SafeBrowsing::ServiceStatus *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = (this + 56);
  std::vector<SafeBrowsing::ServiceStatus::Connection>::__destroy_vector::operator()[abi:sn200100](&v3);
  v3 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ___ZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  length = xpc_string_get_length(v4);
  v7 = length;
  v8 = *(a1 + 32);
  if (!string_ptr && length)
  {
    goto LABEL_28;
  }

  if (length >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_29;
  }

  if (length > 0x16)
  {
    v10 = (length | 7) == 0x17 ? 25 : (length | 7) + 1;
    v9 = operator new(v10);
    __p[1] = v7;
    v32 = v10 | 0x8000000000000000;
    __p[0] = v9;
  }

  else
  {
    HIBYTE(v32) = length;
    v9 = __p;
  }

  v11 = &v7[v9];
  if (v9 <= string_ptr && v11 > string_ptr)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    memmove(v9, string_ptr, v7);
  }

  *v11 = 0;
  v12 = *(v8 + 8);
  v13 = *(v8 + 16);
  if (v12 < v13)
  {
    if (v12)
    {
      v14 = *__p;
      *(v12 + 16) = v32;
      *v12 = v14;
      *(v8 + 8) = v12 + 24;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v15 = v12 - *v8;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
  if (v16 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v8) >> 3);
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  v18 = v17 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v16;
  v33.__end_cap_.__value_ = v8;
  if (!v18 || (v19 = std::allocator<std::string>::allocate_at_least[abi:sn200100](v8, v18)) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v21 = &v19[24 * v20];
  v22 = &v19[v15];
  v23 = *__p;
  *(v22 + 2) = v32;
  *v22 = v23;
  __p[1] = 0;
  v32 = 0;
  __p[0] = 0;
  v24 = &v19[v15 + 24];
  v25 = *(v8 + 8) - *v8;
  v26 = &v19[v15 - v25];
  memcpy(v26, *v8, v25);
  v27 = *v8;
  *v8 = v26;
  v33.__first_ = v27;
  v33.__begin_ = v27;
  *(v8 + 8) = v24;
  v33.__end_ = v27;
  v28 = *(v8 + 16);
  *(v8 + 16) = v21;
  v33.__end_cap_.__value_ = v28;
  std::__split_buffer<std::string>::~__split_buffer(&v33);
  v29 = SHIBYTE(v32);
  *(v8 + 8) = v24;
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_27:

  return 1;
}

void sub_22562C3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN12SafeBrowsing13LookupContext27handleGetServiceStatusReplyEPU24objcproto13OS_xpc_object8NSObjectNSt3__18functionIFvNS_13ServiceStatusENS4_10error_codeEEEE_block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  int64 = xpc_dictionary_get_int64(v4, "pid");
  string = xpc_dictionary_get_string(v4, "bundleIdentifier");
  v7 = *(a1 + 32);
  v9 = int64;
  if (string)
  {
    std::string::basic_string[abi:sn200100]<0>(__p, string);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
  }

  std::vector<SafeBrowsing::ServiceStatus::Connection>::push_back[abi:sn200100](v7, &v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::push_back[abi:sn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    if (v5)
    {
      *v5 = *a2;
      v6 = (v5 + 1);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = v5 - *a1;
  v8 = (v7 >> 3) + 1;
  if (v8 >> 61)
  {
    goto LABEL_16;
  }

  v9 = v4 - *a1;
  v10 = v9 >> 2;
  if (v9 >> 2 <= v8)
  {
    v10 = (v7 >> 3) + 1;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (!v11 || (v12 = std::allocator<Backend::LookupResult>::allocate_at_least[abi:sn200100](a1, v11)) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = &v12[8 * v13];
  v14 = &v12[v7];
  *v14 = *a2;
  v6 = &v12[v7 + 8];
  v16 = *(a1 + 8) - *a1;
  v17 = &v14[-v16];
  memcpy(&v14[-v16], *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v6;
  *(a1 + 16) = v15;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_14:
  *(a1 + 8) = v6;
}

void SafeBrowsing::LookupContext::checkFullHashes(SafeBrowsing::LookupContext *a1, int a2, const Backend::Google::FullHashRequest **a3, uint64_t a4)
{
  v27[6] = *MEMORY[0x277D85DE8];
  SafeBrowsing::LookupContext::ensureConnection(a1);
  v8 = SafeBrowsing::createMessage(4u);
  v9 = xpc_array_create(0, 0);
  v10 = *a3;
  v11 = a3[1];
  while (v10 != v11)
  {
    Backend::Google::FullHashRequest::FullHashRequest(buf, v10);
    v12 = Backend::Google::FullHashRequest::toXPC(buf);
    xpc_array_append_value(v9, v12);

    Backend::Google::FullHashRequest::~FullHashRequest(buf);
    v10 = (v10 + 72);
  }

  xpc_dictionary_set_value(v8, "requests", v9);

  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v18, a1);
  v13 = SSBOSLogFullHash();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_2255EE000, v13, OS_LOG_TYPE_INFO, "Send CheckFullHashes message to safe browsing service with protection type %d", buf, 8u);
  }

  v16 = (a1 + 16);
  v14 = *(a1 + 2);
  v15 = v16[1];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN12SafeBrowsing13LookupContext15checkFullHashesEN7Backend6Google14ProtectionTypeENSt3__16vectorINS2_15FullHashRequestENS4_9allocatorIS6_EEEENS4_8functionIFvNS5_INS1_12LookupResultENS7_ISB_EEEENS4_10error_codeEEEE_block_invoke;
  handler[3] = &__block_descriptor_88_ea8_32c223_ZTSKZN12SafeBrowsing13LookupContext15checkFullHashesEN7Backend6Google14ProtectionTypeENSt3__16vectorINS2_15FullHashRequestENS4_9allocatorIS6_EEEENS4_8functionIFvNS5_INS1_12LookupResultENS7_ISB_EEEENS4_10error_codeEEEEE3__1_e33_v16__0__NSObject_OS_xpc_object__8l;
  *buf = v18;
  v25 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = a2;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v27, a4);
  handler[4] = *buf;
  v21 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v26;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v23, v27);
  xpc_connection_send_message_with_reply(v15, v8, v14, handler);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v27);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v25);
  }

  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v23);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v19);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22562C838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  SafeBrowsing::LookupContext::checkFullHashes(Backend::Google::ProtectionType,std::vector<Backend::Google::FullHashRequest>,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_1::~$_1(v16 + 32);
  SafeBrowsing::LookupContext::checkFullHashes(Backend::Google::ProtectionType,std::vector<Backend::Google::FullHashRequest>,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_1::~$_1(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

id SafeBrowsing::createMessage(unsigned int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "message", a1);
  if (atomic_load_explicit(&SafeBrowsing::allowGoogleSafeBrowsing(void)::once, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&SafeBrowsing::allowGoogleSafeBrowsing(void)::once, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<SafeBrowsing::allowGoogleSafeBrowsing(void)::$_0 &&>>);
  }

  xpc_dictionary_set_BOOL(v2, "allowGoogle", SafeBrowsing::allowGoogleSafeBrowsing(void)::result);

  return v2;
}

void ___ZN12SafeBrowsing13LookupContext15checkFullHashesEN7Backend6Google14ProtectionTypeENSt3__16vectorINS2_15FullHashRequestENS4_9allocatorIS6_EEEENS4_8functionIFvNS5_INS1_12LookupResultENS7_ISB_EEEENS4_10error_codeEEEE_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v7, a1 + 56);
  SafeBrowsing::LookupContext::handleCheckFullHashesReply(v4, v5, v3, v7);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22562CA48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c223_ZTSKZN12SafeBrowsing13LookupContext15checkFullHashesEN7Backend6Google14ProtectionTypeENSt3__16vectorINS2_15FullHashRequestENS4_9allocatorIS6_EEEENS4_8functionIFvNS5_INS1_12LookupResultENS7_ISB_EEEENS4_10error_codeEEEEE3__1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  return std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](a1 + 56, a2 + 56);
}

void sub_22562CAC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c223_ZTSKZN12SafeBrowsing13LookupContext15checkFullHashesEN7Backend6Google14ProtectionTypeENSt3__16vectorINS2_15FullHashRequestENS4_9allocatorIS6_EEEENS4_8functionIFvNS5_INS1_12LookupResultENS7_ISB_EEEENS4_10error_codeEEEEE3__1(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::checkFullHashes(Backend::Google::ProtectionType,std::vector<Backend::Google::FullHashRequest>,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_1::~$_1(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::handleCheckFullHashesReply(void *a1, int a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = SSBOSLogFullHash();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a2;
    _os_log_impl(&dword_2255EE000, v8, OS_LOG_TYPE_INFO, "Receive CheckFullHashes reply with protection type %d", &buf, 8u);
  }

  if (MEMORY[0x22AA67EF0](v7) == MEMORY[0x277D86480])
  {
    v12 = Platform::xpcErrorCode(v7);
    cat = v13;
    *&v20.__val_ = v12;
    v20.__cat_ = v13;
    if (v12)
    {
      v15 = SSBOSLogFullHash();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&buf, &v20);
        SafeBrowsing::LookupContext::handleCheckFullHashesReply(&buf);
      }

      v12 = *&v20.__val_;
      cat = v20.__cat_;
    }

    __p = 0;
    v18 = 0;
    v19 = 0;
    std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a4, &__p, v12, cat);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  else
  {
    std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&buf, a1);
    v10 = a1[15];
    v9 = a1[16];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = buf.__r_.__value_.__r.__words[0];
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](v21, a4);
    (*(*v10 + 56))(v10, v11, v7, v21);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v21);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v9);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](buf.__r_.__value_.__l.__size_);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, a2, v7);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return SafeBrowsing::LookupContext::forceLoadRemoteConfigurationFromDisk(v6);
}

void SafeBrowsing::LookupContext::forceLoadRemoteConfigurationFromDisk(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562CF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(5u);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22562D0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562D178(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c120_ZTSKZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void SafeBrowsing::LookupContext::handleForceLoadRemoteConfigurationFromDiskReply(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v7 = Platform::xpcErrorCode(v4);
    cat = v8;
    *&v13.__val_ = v7;
    v13.__cat_ = v8;
    if (v7)
    {
      v10 = SSBOSLogRemoteConfiguration();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v12, &v13);
        SafeBrowsing::LookupContext::handleForceLoadRemoteConfigurationFromDiskReply(&v12);
      }

      v7 = *&v13.__val_;
      cat = v13.__cat_;
    }

    std::function<void ()(BOOL,std::error_code)>::operator()(a3, 0, v7, cat);
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v4, "loadRemoteConfigurationState");
    v6 = std::system_category();
    std::function<void ()(BOOL,std::error_code)>::operator()(a3, v5, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::forceUpdateRemoteConfigurationFromServer(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c124_ZTSKZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}