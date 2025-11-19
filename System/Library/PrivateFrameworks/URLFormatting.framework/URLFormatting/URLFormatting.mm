uint64_t ___ZL33internationalDomainNameTranscoderv_block_invoke()
{
  v1 = 0;
  result = MEMORY[0x27439DF60](60, &v1);
  internationalDomainNameTranscoder(void)::encoder = result;
  return result;
}

NSString *encodeHostName(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 canBeConvertedToEncoding:1])
  {
    v2 = v1;
  }

  else
  {
    v11.length = [(NSString *)v1 length];
    v11.location = 0;
    v6 = encodeHostNameWithRange(v1, v11, v3, v4, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v1;
    }

    v2 = v8;
  }

  return v2;
}

id mapHostNameWithRange(NSString *a1, _NSRange a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2.location, a2.length, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v88 = *MEMORY[0x277D85DE8];
  v14 = v5;
  v15 = v14;
  if (v11 > 0x800 || ![(__CFString *)v14 length])
  {
    goto LABEL_143;
  }

  if (v9 && [(__CFString *)v15 rangeOfString:@"%" options:2 range:v13, v11]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [(__CFString *)v15 substringWithRange:v13, v11];
    v17 = CFURLCreateStringByReplacingPercentEscapes(0, v16, &stru_28803EAC8);

    if (v17)
    {
      v18 = v17;

      v11 = [(__CFString *)v18 length];
      v13 = 0;
      v15 = v18;
    }
  }

  [(__CFString *)v15 getCharacters:v84 range:v13, v11];
  v82 = 0;
  v81 = xmmword_270308740;
  if (v9)
  {
    v19 = MEMORY[0x277D82990];
  }

  else
  {
    v19 = MEMORY[0x277D82998];
  }

  if (internationalDomainNameTranscoder(void)::onceToken != -1)
  {
    mapHostNameWithRange();
  }

  v20 = v19(internationalDomainNameTranscoder(void)::encoder, v84, v11, __s2, 2048, &v81, &v82);
  if (v82 > 0 || DWORD1(v81))
  {
    goto LABEL_141;
  }

  v21 = v20;
  if (v20 == v11 && !memcmp(v84, __s2, 2 * v11))
  {
LABEL_143:
    v69 = 0;
    goto LABEL_144;
  }

  if ((v9 & 1) == 0)
  {
    if (allCharactersInIDNScriptAllowList(unsigned short const*,int)::onceToken != -1)
    {
      mapHostNameWithRange();
    }

    if (v21 >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = v22 + 1;
        v27 = __s2[v22];
        if ((v27 & 0xFC00) != 0xD800 || v26 == v21)
        {
          ++v22;
        }

        else
        {
          v29 = __s2[v26];
          v30 = (v29 & 0xFC00) == 56320;
          v31 = (v27 << 10) - 56613888 + v29;
          if (v30)
          {
            v27 = v31;
          }

          if (v30)
          {
            v22 += 2;
          }

          else
          {
            ++v22;
          }
        }

        LODWORD(v85) = 0;
        Script = uscript_getScript();
        if (v85)
        {
          NSLog(&cfstr_GotIcuErrorWhi.isa, v85);
          goto LABEL_43;
        }

        if ((Script & 0x80000000) != 0)
        {
          break;
        }

        if (Script > 0xCF || ((IDNScriptAllowList[Script >> 5] >> Script) & 1) == 0 || isLookalikeCharacter(v25 | v24 | v23, v27))
        {
          goto LABEL_43;
        }

        v23 = v27 & 0xFFFFFF00;
        v25 = 0x100000000;
        v24 = v27;
        if (v22 >= v21)
        {
          goto LABEL_148;
        }
      }

      NSLog(&cfstr_GotNegativeNum.isa, Script);
LABEL_43:
      v33 = v21 - (__s2[v21 - 1] == 46);
      if (v33 >= 4)
      {
        v34 = &__s2[v33];
        if (*(v34 - 3) != 71303214 || *(v34 - 1) != 1092)
        {
          v36 = (v33 - 4);
          if (v33 == 4)
          {
LABEL_49:
            v37 = *(v34 - 3);
            v38 = *(v34 - 1);
            if (v37 != 70320174 || v38 != 1075)
            {
              goto LABEL_141;
            }

            v40 = (v33 - 3);
            v85 = &unk_28803E7B8;
            v87 = &v85;
            while (v40 > 0)
            {
              v41 = __s2[v40 - 1];
              std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v40]);
              if ((v42 & 1) == 0)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_147;
          }

          if (*(v34 - 1) == 0x44104430440002ELL)
          {
            v85 = &unk_28803E920;
            v86 = isRussianDomainNameCharacter;
            v87 = &v85;
            while (v36 > 0)
            {
              v41 = __s2[v36 - 1];
              std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
              if ((v51 & 1) == 0)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_147;
          }

          if (v33 < 8)
          {
            if (v33 <= 5)
            {
              goto LABEL_94;
            }

            v46 = v34 - 5;
            if (*(v34 - 5) != 0x44204350434002ELL || *(v34 - 1) != 1080)
            {
LABEL_90:
              v53 = *v46;
              v54 = v46[4];
              if (v53 == 0x43904300441002ELL && v54 == 1090)
              {
                v62 = (v33 - 5);
                v85 = &unk_28803E920;
                v86 = isRussianDomainNameCharacter;
                v87 = &v85;
                while (v62 > 0)
                {
                  v41 = __s2[v62 - 1];
                  std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v62]);
                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_140;
                  }
                }

                goto LABEL_147;
              }

LABEL_94:
              switch(*(v34 - 1))
              {
                case 0x4330440043E002ELL:
                  v85 = &unk_28803E920;
                  v86 = isRussianDomainNameCharacter;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v61 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x43B04350431002ELL:
                  v85 = &unk_28803E968;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v64 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x4370430049B002ELL:
                  v85 = &unk_28803E9B0;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v65 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x440043A0443002ELL:
                  v85 = &unk_28803E8D8;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v66 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x43104400441002ELL:
                  v85 = &unk_28803E890;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v67 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x434043A043C002ELL:
                  v85 = &unk_28803E848;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v68 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                case 0x43D043E043C002ELL:
                  v85 = &unk_28803E800;
                  v87 = &v85;
                  while (v36 > 0)
                  {
                    v41 = __s2[v36 - 1];
                    std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v36]);
                    if ((v56 & 1) == 0)
                    {
                      goto LABEL_140;
                    }
                  }

                  break;
                default:
                  goto LABEL_49;
              }

LABEL_147:
              std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:nn200100](&v85);
LABEL_148:
              v72 = 0;
              while (1)
              {
                v73 = v72 + 1;
                v74 = __s2[v72];
                if ((v74 & 0xFC00) != 0xD800 || v73 == v21)
                {
                  if (v74 == 37)
                  {
                    goto LABEL_167;
                  }
                }

                else
                {
                  v76 = __s2[v73];
                  v77 = (v76 & 0xFC00) == 56320;
                  v78 = v72 + 2;
                  v79 = (v74 << 10) - 56613888 + v76;
                  if (v77)
                  {
                    v74 = v79;
                  }

                  if (v77)
                  {
                    LODWORD(v73) = v78;
                  }
                }

                if ((v74 - 35) <= 0x3A && ((1 << (v74 - 35)) & 0x700000030801005) != 0)
                {
                  goto LABEL_141;
                }

LABEL_167:
                v72 = v73;
                if (v73 >= v21)
                {
                  goto LABEL_168;
                }
              }
            }
          }

          else
          {
            if (*(v34 - 7) == 0x441043E043C002ELL && *(v34 - 1) == 0x4300432043A0441)
            {
              v59 = (v33 - 7);
              v85 = &unk_28803E920;
              v86 = isRussianDomainNameCharacter;
              v87 = &v85;
              while (v59 > 0)
              {
                v41 = __s2[v59 - 1];
                std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v59]);
                if ((v60 & 1) == 0)
                {
                  goto LABEL_140;
                }
              }

              goto LABEL_147;
            }

            v46 = v34 - 5;
            if (*(v34 - 5) != 0x44204350434002ELL || *(v34 - 1) != 1080)
            {
              if (*(v34 - 7) == 0x43B043D043E002ELL && *(v34 - 1) == 0x43D04390430043BLL)
              {
                v49 = (v33 - 7);
                v85 = &unk_28803E920;
                v86 = isRussianDomainNameCharacter;
                v87 = &v85;
                while (v49 > 0)
                {
                  v41 = __s2[v49 - 1];
                  std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v49]);
                  if ((v50 & 1) == 0)
                  {
                    goto LABEL_140;
                  }
                }

                goto LABEL_147;
              }

              goto LABEL_90;
            }
          }

          v57 = (v33 - 5);
          v85 = &unk_28803E920;
          v86 = isRussianDomainNameCharacter;
          v87 = &v85;
          while (v57 > 0)
          {
            v41 = __s2[v57 - 1];
            std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v57]);
            if ((v58 & 1) == 0)
            {
              goto LABEL_140;
            }
          }

          goto LABEL_147;
        }

        v43 = (v33 - 3);
        v85 = &unk_28803E920;
        v86 = isRussianDomainNameCharacter;
        v87 = &v85;
        do
        {
          if (v43 <= 0)
          {
            goto LABEL_147;
          }

          v41 = __s2[v43 - 1];
          std::function<BOOL ()(unsigned short)>::operator()(&v85, __s2[--v43]);
        }

        while ((v44 & 1) != 0);
LABEL_140:
        std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:nn200100](&v85);
        if (v41 == 46)
        {
          goto LABEL_148;
        }
      }

LABEL_141:
      if (v7)
      {
        v69 = 0;
        *v7 = 1;
        goto LABEL_144;
      }

      goto LABEL_143;
    }
  }

LABEL_168:
  v69 = [MEMORY[0x277CCACA8] stringWithCharacters:__s2 length:v21];
LABEL_144:

  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

void sub_270302A30(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:nn200100](v2 - 128);

  _Unwind_Resume(a1);
}

void *decodeHostName(NSString *a1)
{
  v1 = a1;
  v9.length = [(NSString *)v1 length];
  v9.location = 0;
  v4 = decodeHostNameWithRange(v1, v9, 0, v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v6;
}

id decodeHostNameWithRange(NSString *a1, _NSRange a2, BOOL *a3, uint64_t a4, BOOL *a5)
{
  v5 = mapHostNameWithRange(a1, a2, 0, a3, a5);

  return v5;
}

void mapHostNameWithRange()
{
  dispatch_once(&internationalDomainNameTranscoder(void)::onceToken, &__block_literal_global_55);
}

{
  dispatch_once(&allCharactersInIDNScriptAllowList(unsigned short const*,int)::onceToken, &__block_literal_global_57);
}

BOOL isLookalikeCharacter(uint64_t a1, UChar32 c)
{
  if (!u_isprint(c) || u_isUWhiteSpace(c) || u_hasBinaryProperty(c, UCHAR_DEFAULT_IGNORABLE_CODE_POINT))
  {
    return 1;
  }

  Code = ublock_getCode(c);
  result = 1;
  if (Code == UBLOCK_IPA_EXTENSIONS || Code == UBLOCK_DESERET)
  {
    return result;
  }

  if (c > 8721)
  {
    if (c <= 12289)
    {
      if (c > 11002)
      {
        if ((c - 12272) < 0xC || c == 11003)
        {
          return result;
        }

        v9 = 11005;
      }

      else if (c <= 9133)
      {
        if ((c - 8722) <= 0x24 && ((1 << (c - 18)) & 0x1000000019) != 0)
        {
          return result;
        }

        v9 = 9023;
      }

      else if (c <= 9584)
      {
        if (c == 9134)
        {
          return result;
        }

        v9 = 9290;
      }

      else
      {
        if ((c - 9585) < 2 || c == 10742)
        {
          return result;
        }

        v9 = 10744;
      }
    }

    else if (c > 65043)
    {
      if (c <= 65376)
      {
        if ((c - 65087) <= 0x1F && ((1 << (c - 63)) & 0xC0000001) != 0 || (c - 65044) < 2)
        {
          return result;
        }

        v8 = -65294;
        goto LABEL_72;
      }

      if ((c - 128271) < 5 || (c - 65532) < 2)
      {
        return result;
      }

      v9 = 65377;
    }

    else
    {
      if (c <= 13229)
      {
        if ((c - 12290) <= 0x33 && ((1 << (c - 2)) & 0xA0000000C0041) != 0)
        {
          return result;
        }

        v8 = -12829;
        goto LABEL_72;
      }

      if (c <= 42800)
      {
        if ((c - 13230) > 0x31 || ((1 << (c + 82)) & 0x2000001000003) == 0)
        {
          goto LABEL_86;
        }

        return result;
      }

      if (c == 42801 || c == 42865)
      {
        return result;
      }

      v9 = 42889;
    }

    goto LABEL_85;
  }

  if (c > 5940)
  {
    if (c > 8207)
    {
      if ((c - 8531) < 0xD || (c - 8228) <= 0x2E && ((1 << (c - 36)) & 0x400120600009) != 0)
      {
        return result;
      }

      v8 = -8208;
      goto LABEL_72;
    }

    if (c > 7835)
    {
      if ((c - 7836) < 2)
      {
        return result;
      }

      v8 = -7934;
LABEL_72:
      if ((c + v8) < 2)
      {
        return result;
      }

      goto LABEL_86;
    }

    if ((c - 7428) <= 0x1E && ((1 << (c - 4)) & 0x71000801) != 0)
    {
      return result;
    }

    v9 = 5941;
LABEL_85:
    if (c != v9)
    {
      goto LABEL_86;
    }

    return result;
  }

  if (c <= 1416)
  {
    if (c <= 566)
    {
      if (c > 447)
      {
        if (c != 448 && c != 451)
        {
          goto LABEL_86;
        }
      }

      else if ((c - 188) >= 3)
      {
        if (c == 46)
        {
          return 0;
        }

        goto LABEL_86;
      }

      return result;
    }

    if (c <= 774)
    {
      if (((c - 567) > 0x2A || ((1 << (c - 55)) & 0x40004000001) == 0) && c != 720)
      {
        goto LABEL_86;
      }

      return result;
    }

    if ((c - 823) < 2)
    {
      return result;
    }

    if (c == 775)
    {
      v11 = a1 == 567 || a1 == 305;
      if ((a1 & 0x100000000) == 0 || !v11)
      {
        if (a1 == 1493)
        {
          return BYTE4(a1) & 1;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    if (c == 821)
    {
      return result;
    }

LABEL_86:
    if (isLookalikeSequence<(UScriptCode)3>(a1, c) & 1) != 0 || (isLookalikeSequence<(UScriptCode)35>(a1, c) & 1) != 0 || (isLookalikeSequence<(UScriptCode)40>(a1, c) & 1) != 0 || (isLookalikeSequence<(UScriptCode)38>(a1, c))
    {
      return 1;
    }

    if ((c - 1611) <= 0x14)
    {
      if ((a1 & 0x100000000) != 0)
      {
        return ublock_getCode(a1) != UBLOCK_ARABIC;
      }

      return 1;
    }

    return 0;
  }

  if (c > 1615)
  {
    if ((c - 1748) <= 0x30 && ((1 << (c + 44)) & 0x1E00010000001) != 0)
    {
      return result;
    }

    if ((c - 1616) > 0x1A)
    {
      goto LABEL_86;
    }

    v6 = 1 << (c - 80);
    v7 = 67174401;
  }

  else
  {
    if ((c - 1417) <= 0x3B && ((1 << (c + 119)) & 0xF0B080000000001) != 0)
    {
      return result;
    }

    if ((c - 1524) > 0x16)
    {
      goto LABEL_86;
    }

    v6 = 1 << (c + 12);
    v7 = 6291457;
  }

  if ((v6 & v7) == 0)
  {
    goto LABEL_86;
  }

  return result;
}

uint64_t isLookalikeSequence<(UScriptCode)35>(uint64_t a1, __int16 a2)
{
  v2 = 0;
  if ((a1 & 0x100000000) != 0)
  {
    v3 = a1;
    if (a1 != 47)
    {
      if (a2 == 3046 && !isOfScriptType<(UScriptCode)35>())
      {
        v8 = 0x30801005u >> (v3 - 35);
        if ((v3 - 35) >= 0x1Eu)
        {
          LOBYTE(v8) = 0;
        }

        v9 = 0x1FFFFFF8uLL >> (v3 - 94);
        if ((v3 - 94) >= 0x21u)
        {
          LOBYTE(v9) = 1;
        }

        if ((v3 - 33) >= 0x20u)
        {
          v2 = v9;
        }

        else
        {
          v2 = v8;
        }
      }

      else if (v3 == 3046)
      {
        v5 = isOfScriptType<(UScriptCode)35>();
        v6 = 0x30801005u >> (a2 - 35);
        if ((a2 - 35) >= 0x1Eu)
        {
          LOBYTE(v6) = 0;
        }

        v7 = 0x1FFFFFF8uLL >> (a2 - 94);
        if ((a2 - 94) >= 0x21u)
        {
          LOBYTE(v7) = 1;
        }

        if ((a2 - 33) >= 0x20u)
        {
          v2 = v7;
        }

        else
        {
          v2 = v6;
        }

        if (v5)
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2 & 1;
}

uint64_t isLookalikeSequence<(UScriptCode)3>(uint64_t a1, unsigned __int16 a2)
{
  v2 = 0;
  if ((a1 & 0x100000000) != 0)
  {
    v3 = a1;
    if (a1 != 47)
    {
      if (a2 - 1352 <= 0x3D && ((1 << (a2 - 72)) & 0x2221000000002221) != 0 && !isOfScriptType<(UScriptCode)3>())
      {
        v8 = 0x30801005u >> (v3 - 35);
        if ((v3 - 35) >= 0x1Eu)
        {
          LOBYTE(v8) = 0;
        }

        v9 = 0x1FFFFFF8uLL >> (v3 - 94);
        if ((v3 - 94) >= 0x21u)
        {
          LOBYTE(v9) = 1;
        }

        if ((v3 - 33) >= 0x20u)
        {
          v2 = v9;
        }

        else
        {
          v2 = v8;
        }
      }

      else
      {
        v2 = 0;
        if (v3 - 1352 <= 0x3D && ((1 << (v3 - 72)) & 0x2221000000002221) != 0)
        {
          v5 = isOfScriptType<(UScriptCode)3>();
          v6 = 0x30801005u >> (a2 - 35);
          if ((a2 - 35) >= 0x1Eu)
          {
            LOBYTE(v6) = 0;
          }

          v7 = 0x1FFFFFF8uLL >> (a2 - 94);
          if ((a2 - 94) >= 0x21u)
          {
            LOBYTE(v7) = 1;
          }

          if ((a2 - 33) >= 0x20u)
          {
            v2 = v7;
          }

          else
          {
            v2 = v6;
          }

          if (v5)
          {
            v2 = 0;
          }
        }
      }
    }
  }

  return v2 & 1;
}

uint64_t isLookalikeSequence<(UScriptCode)40>(uint64_t a1, unsigned __int16 a2)
{
  v2 = 0;
  if ((a1 & 0x100000000) != 0)
  {
    v3 = a1;
    if (a1 != 47)
    {
      if (isLookalikeCharacterOfScriptType<(UScriptCode)40>(a2) && !isOfScriptType<(UScriptCode)40>())
      {
        if ((v3 - 33) >= 0x20u)
        {
          v2 = 1;
          if (v3 - 94 > 0x20 || ((1 << (v3 - 94)) & 0x1E0000007) == 0)
          {
            return v2 & 1;
          }
        }

        else if (v3 - 35) < 0x1Eu && ((0x30801005u >> (v3 - 35)))
        {
          v2 = 1;
          return v2 & 1;
        }
      }

      if (isLookalikeCharacterOfScriptType<(UScriptCode)40>(v3))
      {
        v5 = isOfScriptType<(UScriptCode)40>();
        v6 = 0x30801005u >> (a2 - 35);
        if ((a2 - 35) >= 0x1Eu)
        {
          LOBYTE(v6) = 0;
        }

        v7 = 0x1FFFFFF8uLL >> (a2 - 94);
        if ((a2 - 94) >= 0x21u)
        {
          LOBYTE(v7) = 1;
        }

        if ((a2 - 33) >= 0x20u)
        {
          v2 = v7;
        }

        else
        {
          v2 = v6;
        }

        if (v5)
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2 & 1;
}

uint64_t isLookalikeSequence<(UScriptCode)38>(uint64_t a1, __int16 a2)
{
  v2 = 0;
  if ((a1 & 0x100000000) != 0)
  {
    v3 = a1;
    if (a1 != 47)
    {
      if (a2 == 3585 && !isOfScriptType<(UScriptCode)38>())
      {
        v8 = 0x30801005u >> (v3 - 35);
        if ((v3 - 35) >= 0x1Eu)
        {
          LOBYTE(v8) = 0;
        }

        v9 = 0x1FFFFFF8uLL >> (v3 - 94);
        if ((v3 - 94) >= 0x21u)
        {
          LOBYTE(v9) = 1;
        }

        if ((v3 - 33) >= 0x20u)
        {
          v2 = v9;
        }

        else
        {
          v2 = v8;
        }
      }

      else if (v3 == 3585)
      {
        v5 = isOfScriptType<(UScriptCode)38>();
        v6 = 0x30801005u >> (a2 - 35);
        if ((a2 - 35) >= 0x1Eu)
        {
          LOBYTE(v6) = 0;
        }

        v7 = 0x1FFFFFF8uLL >> (a2 - 94);
        if ((a2 - 94) >= 0x21u)
        {
          LOBYTE(v7) = 1;
        }

        if ((a2 - 33) >= 0x20u)
        {
          v2 = v7;
        }

        else
        {
          v2 = v6;
        }

        if (v5)
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2 & 1;
}

uint64_t isLookalikeCharacterOfScriptType<(UScriptCode)40>(int a1)
{
  result = 1;
  if (a1 > 5572)
  {
    if (((a1 - 5573) > 0x2F || ((1 << (a1 + 59)) & 0x901002000001) == 0) && (a1 - 5741) >= 2)
    {
      return 0;
    }
  }

  else if ((a1 - 5229) > 0x3D || ((1 << (a1 - 109)) & 0x2000000000000025) == 0)
  {
    v3 = a1 - 5500;
    if (v3 > 0x38 || ((1 << v3) & 0x108000000000801) == 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_270303704(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_27030393C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

unint64_t damerauLevenshteinDistance(NSString *a1, NSString *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v73 = [(__CFString *)v3 length];
  v5 = [(__CFString *)v4 length];
  if (v73 <= 0x3E8 && v5 < 0x3E9 && v73 && v5)
  {
    v11 = v5 + 1;
    v12 = MEMORY[0x28223BE20](v5, v6, v7, v8, v9, v10);
    v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 0;
    v16 = vdupq_n_s64(v12);
    v17 = v14 + 8;
    v18 = xmmword_270308700;
    v19 = xmmword_270308710;
    v20 = vdupq_n_s64(4uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v16, v19));
      if (vuzp1_s16(v21, *v16.i8).u8[0])
      {
        *(v17 - 2) = v15;
      }

      if (vuzp1_s16(v21, *&v16).i8[2])
      {
        *(v17 - 1) = v15 + 1;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v18))).i32[1])
      {
        *v17 = v15 + 2;
        v17[1] = v15 + 3;
      }

      v15 += 4;
      v18 = vaddq_s64(v18, v20);
      v19 = vaddq_s64(v19, v20);
      v17 += 4;
    }

    while (((v12 + 4) & 0x7FC) != v15);
    v79 = v12;
    v96 = v3;
    v99 = 0;
    v100 = v73;
    v71 = v4;
    v72 = v3;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v101 = 0;
    v102 = 0;
    v98 = CStringPtr;
    v88 = v4;
    v91 = 0;
    v92 = v79;
    v89 = CFStringGetCharactersPtr(v4);
    v70 = &v70;
    if (v89)
    {
      v24 = 0;
    }

    else
    {
      v24 = CFStringGetCStringPtr(v4, 0x600u);
    }

    v25 = &v14[4 * v11];
    v93 = 0;
    v94 = 0;
    v90 = v24;
    v26 = 1;
    v27 = v79;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v25;
      v25 = v14;
      v31 = *v30;
      *v30 = v26;
      v32 = (v26 - 1);
      v33 = v32 - 4;
      if (v32 < 4)
      {
        v33 = 0;
      }

      v77 = v33;
      v34 = v33 + 64;
      v35 = (v26 - 2);
      v36 = v35 - 4;
      if (v35 < 4)
      {
        v36 = 0;
      }

      v75 = v36;
      v76 = v34;
      v74 = v36 + 64;
      v37 = -1;
      v38 = 65;
      v39 = 1;
      v40 = v24;
      v83 = v26;
      v84 = v14;
      v81 = (v26 - 1);
      v82 = v30;
      v80 = (v26 - 2);
      do
      {
        LODWORD(v24) = v31;
        if (v39 >= 5)
        {
          v41 = 5;
        }

        else
        {
          v41 = v39;
        }

        v42 = &v30[v28];
        v31 = *&v30[v28 + 4];
        v43 = v100;
        if (v100 <= v32)
        {
          v44 = 0;
        }

        else if (CharactersPtr)
        {
          v44 = CharactersPtr[v99 + v32];
        }

        else if (v98)
        {
          v44 = v98[v99 + v32];
        }

        else
        {
          if (v102 <= v32 || (v59 = v101, v101 > v32))
          {
            v86 = *&v30[v28 + 4];
            v60 = v24;
            if (v76 < v100)
            {
              v43 = v76;
            }

            v101 = v77;
            v102 = v43;
            v104.length = v43 - v77;
            v104.location = v99 + v77;
            CFStringGetCharacters(v96, v104, v95);
            v59 = v101;
            v27 = v79;
            v35 = v80;
            LODWORD(v26) = v83;
            v25 = v84;
            LODWORD(v24) = v60;
            v32 = v81;
            v30 = v82;
            v31 = v86;
          }

          v44 = v95[v32 - v59];
        }

        v45 = v29 + 1;
        v46 = v92;
        if (v92 < v29 + 1)
        {
          v47 = 0;
          goto LABEL_44;
        }

        if (v89)
        {
          v48 = &v89[v91];
LABEL_39:
          v47 = v48[v29];
          goto LABEL_44;
        }

        if (!v90)
        {
          if (v94 < v45 || (v61 = v93, v93 >= v45))
          {
            v85 = v44;
            v86 = v31;
            v78 = v24;
            v62 = v29 - v41 + 65;
            if (v62 >= v92)
            {
              v62 = v92;
            }

            v93 = v29 - v41 + 1;
            v94 = v62;
            if (v92 >= v38 - v41)
            {
              v46 = v38 - v41;
            }

            v105.location = v29 - v41 + 1 + v91;
            v105.length = v46 + v41 + v37;
            CFStringGetCharacters(v88, v105, v87);
            v61 = v93;
            v27 = v79;
            v35 = v80;
            LODWORD(v26) = v83;
            v25 = v84;
            LODWORD(v24) = v78;
            v32 = v81;
            v30 = v82;
            v44 = v85;
            v31 = v86;
          }

          v48 = &v87[-v61];
          goto LABEL_39;
        }

        v47 = v90[v91 + v29];
LABEL_44:
        v49 = *&v25[v28];
        v50 = *&v25[v28 + 4];
        if (v44 != v47)
        {
          ++v49;
        }

        if (*&v30[v28] + 1 >= (v50 + 1))
        {
          v51 = v50 + 1;
        }

        else
        {
          v51 = *&v30[v28] + 1;
        }

        if (v49 >= v51)
        {
          v49 = v51;
        }

        *(v42 + 1) = v49;
        if (v26 >= 2 && v45 >= 2)
        {
          v52 = v100;
          if (v100 <= v35)
          {
            v53 = 0;
          }

          else if (CharactersPtr)
          {
            v53 = CharactersPtr[v99 + v35];
          }

          else if (v98)
          {
            v53 = v98[v99 + v35];
          }

          else
          {
            if (v102 <= v35 || (v63 = v101, v101 > v35))
            {
              v85 = v44;
              v86 = v31;
              v64 = v24;
              if (v74 < v100)
              {
                v52 = v74;
              }

              v101 = v75;
              v102 = v52;
              v106.length = v52 - v75;
              v106.location = v99 + v75;
              CFStringGetCharacters(v96, v106, v95);
              v63 = v101;
              v27 = v79;
              v35 = v80;
              LODWORD(v26) = v83;
              v25 = v84;
              LODWORD(v24) = v64;
              v32 = v81;
              v30 = v82;
              v44 = v85;
              v31 = v86;
            }

            v53 = v95[v35 - v63];
          }

          v54 = v29 - 1;
          v55 = v92;
          if (v92 <= v29 - 1)
          {
            v57 = 0;
          }

          else
          {
            if (v89)
            {
              v56 = &v89[v91];
              goto LABEL_60;
            }

            if (v90)
            {
              v57 = v90[v91 - 1 + v29];
            }

            else
            {
              if (v94 <= v54 || (v65 = v93, v93 > v54))
              {
                v78 = v53;
                v85 = v44;
                v86 = v31;
                v66 = v24;
                if (v54 >= 4)
                {
                  v67 = v29 - 5;
                }

                else
                {
                  v67 = 0;
                }

                if (v67 + 64 < v92)
                {
                  v55 = v67 + 64;
                }

                v93 = v67;
                v94 = v55;
                v107.length = v55 - v67;
                v107.location = v91 + v67;
                CFStringGetCharacters(v88, v107, v87);
                v65 = v93;
                v27 = v79;
                v35 = v80;
                LODWORD(v26) = v83;
                v25 = v84;
                LODWORD(v24) = v66;
                v32 = v81;
                v30 = v82;
                LOWORD(v44) = v85;
                v31 = v86;
                LOWORD(v53) = v78;
              }

              v56 = &v87[-v65];
LABEL_60:
              v57 = v56[v29 - 1];
            }
          }

          if (v44 == v57 && v47 == v53)
          {
            if ((v40 + 1) < *(v42 + 1))
            {
              v58 = v40 + 1;
            }

            else
            {
              v58 = *(v42 + 1);
            }

            *(v42 + 1) = v58;
          }
        }

        ++v39;
        ++v29;
        v28 += 4;
        --v37;
        ++v38;
        v40 = v24;
      }

      while (v27 != v29);
      v26 = (v26 + 1);
      v14 = v30;
      if (v73 < v26)
      {
        v23 = *&v30[4 * v27];
        v4 = v71;
        v3 = v72;
        goto LABEL_105;
      }
    }
  }

  if (v73 <= v5)
  {
    v23 = v5;
  }

  else
  {
    v23 = v73;
  }

LABEL_105:

  v68 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_2703047AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL isLookalikeSequence<(UScriptCode)2>(uint64_t a1, int a2)
{
  if ((a2 - 1611) > 0x14)
  {
    return 0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return ublock_getCode(a1) != UBLOCK_ARABIC;
  }

  return 1;
}

id encodeHostNameWithRange(NSString *a1, _NSRange a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v5 = mapHostNameWithRange(a1, a2, 1, 0, a5);

  return v5;
}

__CFString *userVisibleStringForURL(NSURL *a1, BOOL *a2)
{
  v3 = a1;
  v4 = [(NSURL *)v3 _lp_originalData];
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = v6;
  if (v6 >= 715827882)
  {
    v25 = 0;
  }

  else
  {
    v41 = v3;
    v42 = (0x300000000 * v6 + 0x100000000) >> 32;
    v8 = malloc_type_malloc(v42, 0x100004077774924uLL);
    v9 = v8;
    v10 = v8;
    if (v7 >= 1)
    {
      v11 = 0;
      v10 = v8;
      do
      {
        v12 = v11;
        v13 = *(v5 + v11);
        v14 = v11 + 1;
        v15 = v13 == 37 && v14 < v7;
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = *(v5 + v14);
        v17 = v16;
        if ((v16 - 48) >= 0xAu && (v16 - 65 > 0x25 || ((1 << (v16 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_8;
        }

        v19 = v11 + 2;
        if (v11 + 2 >= v7 || (*(v5 + v19) - 48) >= 0xAu && ((v20 = *(v5 + v19) - 65, v15 = v20 > 0x25, v21 = (1 << v20) & 0x3F0000003FLL, !v15) ? (v22 = v21 == 0) : (v22 = 1), v22))
        {
LABEL_8:
          *v10++ = v13;
        }

        else
        {
          v23 = hexDigitValue(v17);
          v24 = hexDigitValue(*(v5 + v19));
          if (v23 < 8)
          {
            *v10 = *(v5 + v12);
            v10[1] = *(v5 + v14);
            v10[2] = *(v5 + v19);
            v10 += 3;
          }

          else
          {
            *v10++ = v24 | (16 * v23);
          }

          v11 = v12 + 2;
        }

        ++v11;
      }

      while (v11 < v7);
    }

    *v10 = 0;
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    if (!v26)
    {
      v27 = v10 - v9;
      v28 = &v9[v42 - (v10 - v9)];
      memmove(v28 - 1, v9, v27 + 1);
      v29 = *(v28 - 1);
      v30 = v9;
      if (*(v28 - 1))
      {
        v31 = v9;
        do
        {
          if ((v29 & 0x80) != 0)
          {
            if (v29 <= 0x9F)
            {
              v32 = 48;
            }

            else
            {
              v32 = 55;
            }

            v31[1] = v32 + (v29 >> 4);
            v29 &= 0xFu;
            if (v29 <= 9)
            {
              v33 = 48;
            }

            else
            {
              v33 = 55;
            }

            v34 = v33 + v29;
            v30 = v31 + 3;
            v31[2] = v34;
            LOBYTE(v29) = 37;
          }

          else
          {
            v30 = v31 + 1;
          }

          *v31 = v29;
          v35 = *v28++;
          v29 = v35;
          v31 = v30;
        }

        while (v35);
      }

      *v30 = 0;
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    }

    free(v9);
    v3 = v41;
    v36 = mapHostNames(v26, 0, a2);

    v37 = [v36 precomposedStringWithCanonicalMapping];

    if (a2 && !*a2)
    {
      __p = 0;
      p_p = &__p;
      v46 = 0x2020000000;
      v47 = 0;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = ___ZL23userVisibleStringForURLP5NSURLPb_block_invoke;
      v43[3] = &unk_279E00CE8;
      v43[4] = &__p;
      v38 = MEMORY[0x27439DE60](v43);
      applyHostNameFunctionToURLString(v37, v38);
      *a2 |= *(p_p + 24);

      _Block_object_dispose(&__p, 8);
    }

    Length = CFStringGetLength(v37);
    __p = 0;
    p_p = 0;
    v46 = 0;
    if (Length)
    {
      std::vector<unsigned short>::__vallocate[abi:nn200100](&__p, Length);
    }

    v52.location = 0;
    v52.length = 0;
    CFStringGetCharacters(v37, v52, 0);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v25 = CFStringCreateWithCharacters(0, 0, 0);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (__p)
    {
      p_p = __p;
      operator delete(__p);
    }
  }

  return v25;
}

void sub_270305924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  _Block_object_dispose(&__p, 8);

  _Unwind_Resume(a1);
}

NSString *mapHostNames(NSString *a1, int a2, BOOL *a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 && [(NSString *)v5 canBeConvertedToEncoding:1])
  {
    v7 = v6;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZL12mapHostNamesP8NSStringbPb_block_invoke;
    v26[3] = &unk_279E00CE8;
    v26[4] = &v27;
    v8 = MEMORY[0x27439DE60](v26);
    applyHostNameFunctionToURLString(v6, v8);
    v9 = v28[5];
    if (v9)
    {
      v10 = [v9 count];
      v11 = 0;
      if (v10)
      {
        v12 = v10 - 1;
        do
        {
          v13 = [v28[5] objectAtIndex:v12];
          v14 = [v13 rangeValue];
          v16 = v15;

          v25 = 0;
          v20.location = v14;
          v20.length = v16;
          if (a2)
          {
            encodeHostNameWithRange(v6, v20, v17, v18, v19);
          }

          else
          {
            decodeHostNameWithRange(v6, v20, &v25, v18, v19);
          }
          v21 = ;
          v22 = v21;
          if (a3)
          {
            *a3 |= v25;
          }

          if (v21)
          {
            if (!v11)
            {
              v11 = [(NSString *)v6 mutableCopy];
            }

            [v11 replaceCharactersInRange:v14 withString:{v16, v22}];
          }

          --v12;
        }

        while (v12 != -1);
      }

      if (v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = v6;
      }

      v7 = v23;
    }

    else
    {
      v7 = v6;
    }

    _Block_object_dispose(&v27, 8);
  }

  return v7;
}

void sub_270305F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZL33allCharactersInIDNScriptAllowListPKti_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0xFFFFuLL, 1);
  v1 = [v0 count];
  if (v1 < 1)
  {
LABEL_6:
    allowIDNScript("Common");
    allowIDNScript("Inherited");
    allowIDNScript("Arabic");
    allowIDNScript("Armenian");
    allowIDNScript("Bopomofo");
    allowIDNScript("Canadian_Aboriginal");
    allowIDNScript("Devanagari");
    allowIDNScript("Deseret");
    allowIDNScript("Gujarati");
    allowIDNScript("Gurmukhi");
    allowIDNScript("Hangul");
    allowIDNScript("Han");
    allowIDNScript("Hebrew");
    allowIDNScript("Hiragana");
    allowIDNScript("Katakana_Or_Hiragana");
    allowIDNScript("Katakana");
    allowIDNScript("Latin");
    allowIDNScript("Tamil");
    allowIDNScript("Thai");
    allowIDNScript("Yi");
  }

  else
  {
    v2 = 0;
    v3 = v1 & 0x7FFFFFFF;
    while (1)
    {
      v4 = [v0 objectAtIndex:v2];
      v5 = [v4 stringByAppendingPathComponent:@"IDNScriptWhiteList.txt"];
      v6 = v5;
      if (v5)
      {
        v7 = fopen([v5 fileSystemRepresentation], "r");
        v8 = v7;
        if (v7)
        {
          break;
        }
      }

      if (v3 == ++v2)
      {
        goto LABEL_6;
      }
    }

    if (fscanf(v7, " #%*[^\n\r]%*[\n\r]") != -1)
    {
      do
      {
        v9 = fscanf(v8, " %32[^# \t\n\r]%*[^# \t\n\r] ", v11);
        if (v9 == 1)
        {
          allowIDNScript(v11);
        }

        else if (v9 == -1)
        {
          break;
        }
      }

      while (fscanf(v8, " #%*[^\n\r]%*[\n\r]") != -1);
    }

    fclose(v8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t allowIDNScript(const char *a1)
{
  result = MEMORY[0x27439DF10](4106, a1);
  if (result <= 0xCF)
  {
    IDNScriptAllowList[result >> 5] |= 1 << result;
  }

  return result;
}

uint64_t isRussianDomainNameCharacter(int a1)
{
  v2 = a1 == 45 || (a1 - 48) < 0xA;
  v3 = (a1 - 1072) < 0x20 || v2;
  if (a1 == 1105)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void std::function<BOOL ()(unsigned short)>::operator()(uint64_t a1, __int16 a2)
{
  v3 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v3);
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t std::__function::__func<BOOL (*)(unsigned short),std::allocator<BOOL (*)(unsigned short)>,BOOL ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28803E920;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_0,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_0>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  result = 1;
  if ((v2 - 1072) >= 0x20)
  {
    v4 = (v2 - 1105) > 0xD || ((1 << (v2 - 81)) & 0x2021) == 0;
    if (v4 && v2 != 8217)
    {
      return v2 == 45 || (v2 - 48) < 0xA;
    }
  }

  return result;
}

BOOL std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_1,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_1>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  result = 1;
  if ((v2 - 1072) < 0x20)
  {
    return result;
  }

  if (*a2 <= 0x492u)
  {
    if (v2 == 1105 || v2 == 1110)
    {
      return result;
    }

    return v2 == 45 || (v2 - 48) < 0xA;
  }

  v4 = (v2 - 1171) > 0x28 || ((1 << (v2 + 109)) & 0x10050010101) == 0;
  if (v4 && v2 != 1241 && v2 != 1257)
  {
    return v2 == 45 || (v2 - 48) < 0xA;
  }

  return result;
}

uint64_t std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_2,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_2>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  result = 1;
  if ((v2 - 1072) >= 0x20 && ((v2 - 1110) > 0x3B || ((1 << (v2 - 86)) & 0x800000000000003) == 0))
  {
    v6 = v2 == 45 || (v2 - 48) < 0xA;
    if (v2 == 1105)
    {
      v6 = 1;
    }

    return v2 == 1028 || v6;
  }

  return result;
}

BOOL std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_3,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_3>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = (v2 - 1072) >= 9 && (v2 - 1082) >= 0xFu;
  if (!v3 || (v2 - 1106) < 0xE && ((0x23C1u >> (v2 - 82)) & 1) != 0)
  {
    return 1;
  }

  return v2 == 45 || (v2 - 48) < 0xA;
}

BOOL std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_4,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_4>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = (v2 - 1072) >= 9 && (v2 - 1082) >= 0xFu;
  if (!v3 || (v2 - 1107) < 0xD && ((0x12E5u >> (v2 - 83)) & 1) != 0)
  {
    return 1;
  }

  return v2 == 45 || (v2 - 48) < 0xA;
}

uint64_t std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_5,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_5>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  result = 1;
  if ((v2 - 1072) >= 0x20 && v2 != 1105)
  {
    v5 = v2 == 45 || (v2 - 48) < 0xA;
    if (v2 == 1257)
    {
      v5 = 1;
    }

    return v2 == 1199 || v5;
  }

  return result;
}

BOOL std::__function::__func<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_6,std::allocator<allCharactersAllowedByTLDRules(unsigned short const*,int)::$_6>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = v2 != 1100 && (v2 - 1072) >= 0x1Bu;
  if (!v3 || (v2 - 1102) < 0x10u && ((0x8007u >> (v2 - 78)) & 1) != 0)
  {
    return 1;
  }

  return v2 == 45 || (v2 - 48) < 0xA;
}

uint64_t hexDigitValue(int a1)
{
  result = (a1 - 48);
  if (result > 9)
  {
    if ((a1 - 65) > 5)
    {
      if ((a1 - 97) > 5)
      {
        NSLog(&cfstr_IllegalHexDigi.isa, v1, v2);
        return 0;
      }

      else
      {
        return (a1 - 87);
      }
    }

    else
    {
      return (a1 - 55);
    }
  }

  return result;
}

void ___ZL23userVisibleStringForURLP5NSURLPb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  memset(__p, 0, sizeof(__p));
  v8 = a4;
  if (a4 << 32)
  {
    std::vector<unsigned short>::__vallocate[abi:nn200100](__p, a4);
  }

  [v7 getCharacters:0 range:{a3, a4}];
  if (a4 < 1)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v9 + 1;
      v14 = *(__p[0] + v9);
      if ((v14 & 0xFC00) != 0xD800 || v13 == v8)
      {
        ++v9;
      }

      else
      {
        v16 = *(__p[0] + v13);
        v17 = (v16 & 0xFC00) == 56320;
        v18 = v16 + (v14 << 10) - 56613888;
        if (v17)
        {
          v14 = v18;
        }

        if (v17)
        {
          v9 += 2;
        }

        else
        {
          ++v9;
        }
      }

      v19 = isLookalikeCharacter(v12 | v11 | v10, v14);
      v10 = v14 & 0xFFFFFF00;
      v20 = v9 >= v8 || v19;
      v12 = 0x100000000;
      v11 = v14;
    }

    while (v20 != 1);
  }

  *(*(*(a1 + 32) + 8) + 24) |= v19;
}

void applyHostNameFunctionToURLString(void *a1, void *a2)
{
  v33 = a1;
  v3 = a2;
  if ([v33 _lp_hasCaseInsensitivePrefix:@"mailto:"])
  {
    v4 = v33;
    v5 = v3;
    {
      applyHostNameFunctionToMailToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::hostNameOrStringStartCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"@?"];
    }

    {
      applyHostNameFunctionToMailToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::hostNameEndCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@">, ?"}];
    }

    {
      applyHostNameFunctionToMailToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::quotedStringCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\"];
    }

    v6 = 0;
    v7 = [v4 length];
    v8 = v7;
LABEL_9:
    do
    {
      v10 = [v4 rangeOfCharacterFromSet:applyHostNameFunctionToMailToURLString(NSString * options:void({block_pointer})(NSString * range:{_NSRange))::hostNameOrStringStartCharacters, 0, v6, v8}];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v11 = v9;
      v12 = [v4 characterAtIndex:v10];
      v13 = v10 + v11;
      if (v12 != 64)
      {
        if (v12 != 63)
        {
          while (1)
          {
            v15 = [v4 rangeOfCharacterFromSet:applyHostNameFunctionToMailToURLString(NSString * options:void({block_pointer})(NSString * range:{_NSRange))::quotedStringCharacters, 0, v13}];
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v16 = v14;
            v17 = [v4 characterAtIndex:v15];
            v6 = v15 + v16;
            v8 = v7 - v6;
            if (v17 == 34)
            {
              goto LABEL_9;
            }

            if (!v8)
            {
              break;
            }

            v13 = v6 + 1;
          }
        }

        break;
      }

      v18 = [v4 rangeOfCharacterFromSet:applyHostNameFunctionToMailToURLString(NSString * options:void({block_pointer})(NSString * range:{_NSRange))::hostNameEndCharacters, 0, v13, v7 - v13}];
      v6 = v18;
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      v5[2](v5, v4, v13, v19 - v13);
      v8 = v7 - v6;
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v21 = [v33 rangeOfString:@"://"];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v20;
      {
        v32 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."];
        applyHostNameFunctionToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::nonSchemeCharacters = [v32 invertedSet];
      }

      if ([v33 rangeOfCharacterFromSet:applyHostNameFunctionToURLString(NSString * options:void({block_pointer})(NSString * range:{_NSRange))::nonSchemeCharacters, 0, 0, v21}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [v33 length];
        {
          v24 = applyHostNameFunctionToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::hostTerminators;
        }

        else
        {
          v24 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":/?#"];
          applyHostNameFunctionToURLString(NSString *,void({block_pointer})(NSString *,_NSRange))::hostTerminators = v24;
        }

        v25 = v21 + v22;
        v26 = (v21 + v22);
        v27 = [v33 rangeOfCharacterFromSet:v24 options:0 range:{v26, (v23 - v25)}];
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = v23;
        }

        else
        {
          v28 = v27;
        }

        v29 = [v33 rangeOfString:@"@" options:0 range:{v26, (v28 - v25)}];
        v31 = v29 + v30;
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v26;
        }

        (*(v3 + 2))(v3, v33, v31, v28 - v31);
      }
    }
  }
}

void std::vector<unsigned short>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<unsigned short>::push_back[abi:nn200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL12mapHostNamesP8NSStringbPb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = *(*(*(a1 + 32) + 8) + 40);
  }

  v11 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
  [v7 addObject:v11];
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void isOfScriptType<(UScriptCode)3>(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270301000, MEMORY[0x277D86220], v2, "ICU error under uscript_getScript: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x282110068](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
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