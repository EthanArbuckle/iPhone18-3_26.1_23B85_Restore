uint64_t webrtc::H265ProfileToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 5)
  {
    if (result <= 2)
    {
      if (result == 1)
      {
        a2[23] = 1;
        v5 = a2 + 1;
        if (a2 > "1" || v5 <= "1")
        {
          *a2 = 49;
          *v5 = 0;
          return result;
        }
      }

      else
      {
        a2[23] = 1;
        v10 = a2 + 1;
        if (a2 > "2" || v10 <= "2")
        {
          *a2 = 50;
          *v10 = 0;
          return result;
        }
      }
    }

    else if (result == 3)
    {
      a2[23] = 1;
      v6 = a2 + 1;
      if (a2 > "3" || v6 <= "3")
      {
        *a2 = 51;
        *v6 = 0;
        return result;
      }
    }

    else if (result == 4)
    {
      a2[23] = 1;
      v3 = a2 + 1;
      if (a2 > "4" || v3 <= "4")
      {
        *a2 = 52;
        *v3 = 0;
        return result;
      }
    }

    else
    {
      a2[23] = 1;
      v9 = a2 + 1;
      if (a2 > "5" || v9 <= "5")
      {
        *a2 = 53;
        *v9 = 0;
        return result;
      }
    }
  }

  else if (result > 8)
  {
    if (result == 9)
    {
      a2[23] = 1;
      v8 = a2 + 1;
      if (a2 > "9" || v8 <= "9")
      {
        *a2 = 57;
        *v8 = 0;
        return result;
      }
    }

    else if (result == 10)
    {
      a2[23] = 2;
      v4 = a2 + 2;
      if (a2 > "10" || v4 <= "10")
      {
        *a2 = 12337;
        *v4 = 0;
        return result;
      }
    }

    else
    {
      a2[23] = 2;
      v12 = a2 + 2;
      if (a2 > "11" || v12 <= "11")
      {
        *a2 = 12593;
        *v12 = 0;
        return result;
      }
    }
  }

  else if (result == 6)
  {
    a2[23] = 1;
    v7 = a2 + 1;
    if (a2 > "6" || v7 <= "6")
    {
      *a2 = 54;
      *v7 = 0;
      return result;
    }
  }

  else if (result == 7)
  {
    a2[23] = 1;
    v2 = a2 + 1;
    if (a2 > "7" || v2 <= "7")
    {
      *a2 = 55;
      *v2 = 0;
      return result;
    }
  }

  else
  {
    a2[23] = 1;
    v11 = a2 + 1;
    if (a2 > "8" || v11 <= "8")
    {
      *a2 = 56;
      *v11 = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t webrtc::H265LevelToString@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  if (result <= 122)
  {
    if (result > 89)
    {
      if (result == 90)
      {
        *(a2 + 23) = 2;
        v9 = (a2 + 2);
        if (a2 > "90" || v9 <= "90")
        {
          *a2 = 12345;
          *v9 = 0;
          return result;
        }
      }

      else if (result == 93)
      {
        *(a2 + 23) = 2;
        v5 = (a2 + 2);
        if (a2 > "93" || v5 <= "93")
        {
          *a2 = 13113;
          *v5 = 0;
          return result;
        }
      }

      else
      {
        *(a2 + 23) = 3;
        v14 = (a2 + 3);
        if (a2 > "120" || v14 <= "120")
        {
          *(a2 + 2) = 48;
          *a2 = 12849;
          *v14 = 0;
          return result;
        }
      }
    }

    else if (result == 30)
    {
      *(a2 + 23) = 2;
      v8 = (a2 + 2);
      if (a2 > "30" || v8 <= "30")
      {
        *a2 = 12339;
        *v8 = 0;
        return result;
      }
    }

    else if (result == 60)
    {
      *(a2 + 23) = 2;
      v3 = (a2 + 2);
      if (a2 > "60" || v3 <= "60")
      {
        *a2 = 12342;
        *v3 = 0;
        return result;
      }
    }

    else
    {
      *(a2 + 23) = 2;
      v13 = (a2 + 2);
      if (a2 > "63" || v13 <= "63")
      {
        *a2 = 13110;
        *v13 = 0;
        return result;
      }
    }
  }

  else if (result <= 155)
  {
    if (result == 123)
    {
      *(a2 + 23) = 3;
      v7 = (a2 + 3);
      if (a2 > "123" || v7 <= "123")
      {
        *(a2 + 2) = 51;
        *a2 = 12849;
        *v7 = 0;
        return result;
      }
    }

    else if (result == 150)
    {
      *(a2 + 23) = 3;
      v4 = (a2 + 3);
      if (a2 > "150" || v4 <= "150")
      {
        *(a2 + 2) = 48;
        *a2 = 13617;
        *v4 = 0;
        return result;
      }
    }

    else
    {
      *(a2 + 23) = 3;
      v10 = (a2 + 3);
      if (a2 > "153" || v10 <= "153")
      {
        *(a2 + 2) = 51;
        *a2 = 13617;
        *v10 = 0;
        return result;
      }
    }
  }

  else if (result > 182)
  {
    if (result == 183)
    {
      *(a2 + 23) = 3;
      v6 = (a2 + 3);
      if (a2 > "183" || v6 <= "183")
      {
        *(a2 + 2) = 51;
        *a2 = 14385;
        *v6 = 0;
        return result;
      }
    }

    else
    {
      *(a2 + 23) = 3;
      v12 = (a2 + 3);
      if (a2 > "186" || v12 <= "186")
      {
        *(a2 + 2) = 54;
        *a2 = 14385;
        *v12 = 0;
        return result;
      }
    }
  }

  else if (result == 156)
  {
    *(a2 + 23) = 3;
    v2 = (a2 + 3);
    if (a2 > "156" || v2 <= "156")
    {
      *(a2 + 2) = 54;
      *a2 = 13617;
      *v2 = 0;
      return result;
    }
  }

  else
  {
    *(a2 + 23) = 3;
    v11 = (a2 + 3);
    if (a2 > "180" || v11 <= "180")
    {
      *(a2 + 2) = 48;
      *a2 = 14385;
      *v11 = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

void webrtc::ParseSdpForH265ProfileTierLevel(uint64_t a1)
{
  v34 = 10;
  if (__p <= "profile-id" && &__p[1] + 2 > "profile-id")
  {
    goto LABEL_49;
  }

  strcpy(__p, "profile-id");
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  v3 = v2;
  if (v34 < 0)
  {
    operator delete(__p[0]);
    v4 = (a1 + 8);
    if ((a1 + 8) == v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = (a1 + 8);
    if ((a1 + 8) == v2)
    {
      goto LABEL_21;
    }
  }

  v7 = v3[7];
  v6 = v3 + 7;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v6[1];
  }

  v11 = webrtc::string_to_number_internal::ParseSigned(v9, v10, 0xAuLL);
  if ((v12 & ((v11 + 0x80000000) >> 32 == 0)) != 0)
  {
    v13 = v11 | 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v13))
  {
    v14 = (v13 - 1) > 0xA;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    return;
  }

LABEL_21:
  v34 = 9;
  if (__p <= "tier-flag" && &__p[1] + 1 > "tier-flag")
  {
    goto LABEL_49;
  }

  strcpy(__p, "tier-flag");
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  if (v34 < 0)
  {
    v24 = v15;
    operator delete(__p[0]);
    v15 = v24;
    if (v4 == v24)
    {
      goto LABEL_36;
    }
  }

  else if (v4 == v15)
  {
    goto LABEL_36;
  }

  v18 = v15[7];
  v16 = v15 + 7;
  v17 = v18;
  v19 = v16[1];
  if (*(v16 + 23) >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v16 = v17;
    v20 = v19;
  }

  v21 = webrtc::string_to_number_internal::ParseSigned(v16, v20, 0xAuLL);
  if ((v22 & ((v21 + 0x80000000) >> 32 == 0)) != 0)
  {
    v23 = v21 | 0x100000000;
  }

  else
  {
    v23 = 0;
  }

  if (!HIDWORD(v23) || v23 > 1)
  {
    return;
  }

LABEL_36:
  v34 = 8;
  if (__p <= "level-id" && &__p[1] > "level-id")
  {
LABEL_49:
    __break(1u);
    return;
  }

  strcpy(__p, "level-id");
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, __p);
  v26 = v25;
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if (v4 == v26)
    {
      return;
    }
  }

  else if (v4 == v25)
  {
    return;
  }

  v29 = v26[7];
  v28 = v26 + 7;
  v27 = v29;
  v30 = *(v28 + 23);
  if (v30 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v30 >= 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v28[1];
  }

  webrtc::string_to_number_internal::ParseSigned(v31, v32, 0xAuLL);
}

void webrtc::H265SpsParser::ParseSpsInternal(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  v179 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v174 = v8;
  if (((a2 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v151);
  }

  v9 = 8 * a2;
  memset(v168, 0, 44);
  v167 = 0u;
  __p = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  memset(v173, 0, sizeof(v173));
  v176[0] = 0;
  if (!(8 * a2))
  {
    v175 = -1;
    v176[0] = 1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    }

    goto LABEL_90;
  }

  v175 = v9 - 4;
  v10 = *v8;
  v176[0] = 0;
  v175 = v9 - 7;
  v11 = (*v8 >> 1) & 7;
  v176[0] = 1;
  if (v11 == 7)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
LABEL_90:
      *a7 = 0;
      a7[160] = 0;
      goto LABEL_91;
    }

LABEL_8:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    goto LABEL_90;
  }

  v166[0] = v11;
  v176[0] = 0;
  v174 = &v8[((a2 & 0x1FFFFFFF) - ((8 * a2 - 1) >> 3))];
  v175 = v9 - 8;
  webrtc::H265SpsParser::ParseProfileTierLevel(1, v11, &v174, &v163);
  if (v165 != 1)
  {
    goto LABEL_90;
  }

  ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  HIDWORD(v173[0]) = ExponentialGolomb;
  v176[0] = 1;
  if (v175 < 0 || ExponentialGolomb >= 0x10)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_8;
  }

  v27 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v28 = v27;
  v166[1] = v27;
  v176[0] = 1;
  v29 = v175;
  if (v175 < 0 || v27 >= 4)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_8;
  }

  v30 = 1;
  if (v27 == 3)
  {
    v176[0] = 0;
    if (v175)
    {
      --v175;
      v31 = v174;
      if ((v175 & 7) != 0)
      {
        LODWORD(v31) = *v174 >> (v175 & 7);
      }

      else
      {
        ++v174;
        LOBYTE(v31) = *v31;
      }

      v29 = v31 & 1;
    }

    else
    {
      v175 = -1;
    }

    v30 = v29 == 0;
    LODWORD(v167) = v29;
  }

  v32 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  if (v175 < 0 || (v33 = v32) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_71;
  }

  v34 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  if (v175 < 0 || !v34)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_71;
  }

  if (v164 >= 31)
  {
    if (v164 >= 0x3D)
    {
      if (v164 >= 0x40)
      {
        if (v164 >= 0x5B)
        {
          if (v164 >= 0x5E)
          {
            if (v164 >= 0x7C)
            {
              if (v164 >= 0x9D)
              {
                v35 = 35651584;
              }

              else
              {
                v35 = 8912896;
              }
            }

            else
            {
              v35 = 2228224;
            }
          }

          else
          {
            v35 = 983040;
          }
        }

        else
        {
          v35 = 552960;
        }
      }

      else
      {
        v35 = 245760;
      }
    }

    else
    {
      v35 = 122880;
    }
  }

  else
  {
    v35 = 36864;
  }

  v43 = v34 * v33;
  if ((v163 - 1) < 5)
  {
    v44 = 6;
  }

  else
  {
    v44 = 7;
  }

  if (v43 <= v35 >> 2)
  {
    v44 = 16;
  }

  else if (v43 <= v35 >> 1)
  {
    v44 *= 2;
  }

  else if (v43 <= (3 * v35) >> 2)
  {
    v44 = (344 * (v44 & 0x3F)) >> 8;
  }

  v176[0] = 0;
  v159 = v34;
  v160 = v33;
  if (!v175)
  {
    v157 = 0;
    v158 = 0;
    v46 = 0;
    v175 = -1;
    v47 = v28 - 1 < 2 && v30;
    v48 = v28 == 1 && v30;
    v49 = 1;
    goto LABEL_73;
  }

  --v175;
  v45 = v174;
  if ((v175 & 7) != 0)
  {
    LODWORD(v45) = *v174 >> (v175 & 7);
  }

  else
  {
    ++v174;
    LOBYTE(v45) = *v45;
  }

  v47 = v28 - 1 < 2 && v30;
  v48 = v28 == 1 && v30;
  v49 = 1;
  if (v45)
  {
    v50 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v46 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v51 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v52 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v176[0] = 1;
    if (v175 < 0 || (v46 + v50) << v47 >= v160)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_90;
      }
    }

    else
    {
      if ((v52 + v51) << v48 < v159)
      {
        v157 = v52;
        v158 = __PAIR64__(v50, v51);
        v49 = 0;
        goto LABEL_73;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_90;
      }
    }

LABEL_71:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    goto LABEL_90;
  }

  v157 = 0;
  v158 = 0;
  v46 = 0;
LABEL_73:
  v53 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  HIDWORD(v173[2]) = v53;
  v176[0] = 1;
  if (v175 < 0 || v53 >= 9)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_8;
  }

  v54 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  if (v175 < 0 || v54 >= 9)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_8;
  }

  v55 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  HIDWORD(v167) = v55;
  v176[0] = 1;
  if (v175 < 0 || v55 > 0x7FFFFFFB)
  {
    goto LABEL_90;
  }

  if (v55 >= 0xD)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_90;
    }

    goto LABEL_8;
  }

  v176[0] = 0;
  v152 = v47;
  v153 = v48;
  v155 = v49;
  if (v175)
  {
    --v175;
    v56 = v174;
    if ((v175 & 7) != 0)
    {
      LODWORD(v56) = *v174 >> (v175 & 7);
    }

    else
    {
      ++v174;
      LOBYTE(v56) = *v56;
    }

    v57 = v56 & 1;
  }

  else
  {
    v57 = 0;
    v175 = -1;
  }

  v154 = v10 >> 4;
  v156 = v57;
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v11;
  }

  memset(v177, 0, sizeof(v177));
  v178 = 0;
  v59 = v44 - 1;
  v60 = v58;
  v61 = v11 - v58 + 1;
  do
  {
    v62 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v63 = v62;
    v168[v60] = v62;
    v176[0] = 1;
    if (v175 < 0 || v62 > v59)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_129;
      }

      goto LABEL_115;
    }

    v64 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    *(v177 + v60 * 4) = v64;
    v176[0] = 1;
    if (v175 < 0 || v64 > v63)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_129;
      }

LABEL_115:
      v79 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_116:
      webrtc::webrtc_logging_impl::Log(v79, v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
      goto LABEL_129;
    }

    if (v60 * 4)
    {
      if (v63 < v168[v60 - 1])
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_129;
      }

      if (v64 < *&v176[v60 * 4])
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_129;
      }
    }

    webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    ++v60;
    --v61;
  }

  while (v61);
  if (!v156 && v11)
  {
    v80 = v168[v11];
    v81 = vdupq_n_s64(v11 - 1);
    v82 = vmovn_s64(vcgeq_u64(v81, xmmword_273B92130));
    if (vuzp1_s16(v82, *v81.i8).u8[0])
    {
      v168[0] = v168[v11];
    }

    v83 = v11 + 3;
    if (vuzp1_s16(v82, *&v81).i8[2])
    {
      v168[1] = v80;
    }

    if (vuzp1_s16(*&v81, vmovn_s64(vcgeq_u64(v81, xmmword_273B92120))).i32[1])
    {
      v168[2] = v80;
      v168[3] = v80;
      if ((v83 & 0xC) != 4)
      {
LABEL_133:
        v85 = vmovn_s64(vcgtq_u64(v81, xmmword_273B93FD0));
        if (vuzp1_s16(v85, *v81.i8).u8[0])
        {
          v168[4] = v80;
        }

        if (vuzp1_s16(v85, *&v81).i8[2])
        {
          v168[5] = v80;
        }

        v86 = vmovn_s64(vcgtq_u64(v81, xmmword_273B93FE0));
        if (vuzp1_s16(v86, v86).i32[1])
        {
          v168[6] = v80;
          v168[7] = v80;
        }
      }
    }

    else if ((v83 & 0xC) != 4)
    {
      goto LABEL_133;
    }
  }

  v87 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v88 = v87;
  v168[7] = v87;
  v176[0] = 1;
  if (v175 < 0 || v87 >= 0x1C)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_129;
    }

    v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_116;
  }

  v168[8] = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  LODWORD(v90) = v88 + 3;
  v91 = v168[8] + v88 + 3;
  v176[0] = 1;
  if (v175 < 0 || v91 >= 0x1F)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_129;
    }

    v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_116;
  }

  *v89.i32 = (1 << v91);
  *(&v173[1] + 4) = vcvt_u32_f32(vrndp_f32(vdiv_f32(vcvt_f32_u32(__PAIR64__(v159, v160)), vdup_lane_s32(v89, 0))));
  v176[0] = 1;
  if ((v160 & ~(-8 << v88)) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if ((v159 & ~(-8 << v88)) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v92 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v93 = v92;
  v176[0] = 1;
  if (v175 < 0 || v92 < 0 || v92 > v88)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_129;
    }

    v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_116;
  }

  v94 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  if (v175 < 0 || ((v95 = v93 + 2, v91 >= 5) ? (v96 = 5) : (v96 = v91), v94 > (v96 - v95)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v97 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  if (v175 < 0 || v97 < 0 || v97 > (v91 - v95))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v98, v99, v100, v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    }

    goto LABEL_129;
  }

  v105 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
  v176[0] = 1;
  v107 = v175;
  if (v175 < 0 || (v105 & 0x80000000) != 0 || v105 > v91 - v95)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_129;
    }

    v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_116;
  }

  v176[0] = 0;
  if (!v175)
  {
    goto LABEL_182;
  }

  LODWORD(v108) = --v175;
  v109 = v174;
  if (((v107 - 1) & 7) != 0)
  {
    v110 = (*v174 >> ((v107 - 1) & 7)) & 1;
  }

  else
  {
    ++v174;
    v110 = *v109++ & 1;
  }

  if (v110)
  {
    v176[0] = 0;
    if (v107 == 1)
    {
LABEL_182:
      v175 = -1;
      goto LABEL_183;
    }

    LODWORD(v108) = v107 - 2;
    v175 = v108;
    v119 = (v107 - 2) & 7;
    if ((v108 & 7) != 0)
    {
      v120 = *v109 >> v119;
    }

    else
    {
      v174 = v109 + 1;
      LOBYTE(v120) = *v109;
    }

    if (v120)
    {
      if (!webrtc::H265SpsParser::ParseScalingListData(&v174, v106))
      {
        goto LABEL_129;
      }

      LODWORD(v108) = v175;
    }
  }

  if (v108 >= 1)
  {
    v117 = &v174[((v108 + 7) >> 3) - ((v108 + 6) >> 3)];
    v174 = v117;
    v176[0] = 0;
    if (v108 != 1)
    {
      v175 = v108 - 2;
      if (((v108 - 2) & 7) != 0)
      {
        v121 = (*v117 >> ((v108 - 2) & 7)) & 1;
        goto LABEL_230;
      }

      goto LABEL_229;
    }
  }

LABEL_183:
  v168[9] = 0;
  v176[0] = 0;
  while (2)
  {
    while (2)
    {
      v111 = -1;
LABEL_185:
      v175 = v111;
LABEL_186:
      v112 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
      v168[10] = v112;
      v176[0] = 1;
      if (v175 < 0 || v112 >= 0x41)
      {
        goto LABEL_129;
      }

      std::vector<webrtc::H265SpsParser::ShortTermRefPicSet>::resize(&__p, v112);
      v113 = v168[10];
      if (v168[10])
      {
        v114 = 0;
        v115 = v168[v166[0]];
        v90 = __p;
        v116 = 0x2F71AAFF02F71ABLL * ((*(&__p + 1) - __p) >> 2);
        do
        {
          webrtc::H265SpsParser::ParseShortTermRefPicSet(v114, v113, &__p, v115, &v174, __src);
          LODWORD(v108) = v162;
          if (v162 != 1)
          {
            goto LABEL_129;
          }

          if (v116 == v114)
          {
            goto LABEL_228;
          }

          memcpy(v90, __src, 0x40CuLL);
          ++v114;
          v90 += 1036;
        }

        while (v113 != v114);
      }

      v176[0] = 0;
      if (v175 <= 0)
      {
        DWORD2(v170) = 0;
        goto LABEL_276;
      }

      --v175;
      v118 = v174;
      if ((v175 & 7) != 0)
      {
        LODWORD(v118) = *v174 >> (v175 & 7);
      }

      else
      {
        ++v174;
        LOBYTE(v118) = *v118;
      }

      DWORD2(v170) = v118 & 1;
      if ((v118 & 1) == 0)
      {
        goto LABEL_273;
      }

      v122 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
      HIDWORD(v170) = v122;
      v176[0] = 1;
      if (v175 < 0 || v122 >= 0x21)
      {
        goto LABEL_129;
      }

      __src[0] = 0;
      std::vector<unsigned int>::resize(&v171, v122, __src);
      v108 = HIDWORD(v170);
      if (!HIDWORD(v170))
      {
LABEL_273:
        v176[0] = 0;
        if (v175 > 0)
        {
          --v175;
          v148 = v174;
          if ((v175 & 7) != 0)
          {
            LODWORD(v148) = *v174 >> (v175 & 7);
          }

          else
          {
            ++v174;
            LOBYTE(v148) = *v148;
          }

          v150 = v148 & 1;
          v149 = 1;
          goto LABEL_279;
        }

LABEL_276:
        v149 = 0;
        v150 = 0;
        v175 = -1;
LABEL_279:
        *(&v167 + 4) = __PAIR64__(v159, v160);
        *(&v172 + 1) = __PAIR64__(v160, v150);
        LODWORD(v173[1]) = v154;
        LODWORD(v173[0]) = v159;
        if ((v155 & 1) == 0)
        {
          HIDWORD(v172) = v160 - ((HIDWORD(v158) + v46) << v152);
          LODWORD(v173[0]) = v159 - ((v158 + v157) << v153);
        }

        v176[0] = 1;
        if ((v149 & 1) == 0)
        {
          goto LABEL_129;
        }

        std::__optional_destruct_base<webrtc::H265SpsParser::SpsState,false>::__optional_destruct_base[abi:sn200100]<webrtc::H265SpsParser::SpsState&>(a7, v166);
        v84 = v171;
        if (v171)
        {
          goto LABEL_130;
        }

        goto LABEL_91;
      }

      v123 = HIDWORD(v167) + 4;
      v117 = v171;
      v124 = (*(&v171 + 1) - v171) >> 2;
      if (((HIDWORD(v167) + 4) & 0x80000000) == 0)
      {
        v125 = v174;
        while (1)
        {
          v127 = v175 - v123;
          if (v175 >= v123)
          {
            v128 = v175 + 14;
            if (v175 >= -7)
            {
              v128 = v175 + 7;
            }

            v129 = v128 >> 3;
            v130 = v127 + 7;
            if (v127 < -7)
            {
              v130 = v127 + 14;
            }

            v125 += v129 - (v130 >> 3);
            v174 = v125;
            v176[0] = 0;
            if (v127 <= 0)
            {
              v126 = 0;
              v175 = -1;
              if (!v124)
              {
                goto LABEL_228;
              }
            }

            else
            {
              v175 = v127 - 1;
              v131 = (v127 - 1) & 7;
              if (v131)
              {
                v126 = (*v125 >> v131) & 1;
                if (!v124)
                {
                  goto LABEL_228;
                }
              }

              else
              {
                v174 = v125 + 1;
                v126 = *v125++ & 1;
                if (!v124)
                {
                  goto LABEL_228;
                }
              }
            }
          }

          else
          {
            v176[0] = 0;
            v126 = 0;
            v175 = -1;
            if (!v124)
            {
              goto LABEL_228;
            }
          }

          *v117 = v126;
          v117 += 4;
          --v124;
          if (!--v108)
          {
            goto LABEL_273;
          }
        }
      }

      v136 = HIDWORD(v170) - 1;
      if (v124 >= v136)
      {
        v137 = HIDWORD(v170) - 1;
      }

      else
      {
        v137 = (*(&v171 + 1) - v171) >> 2;
      }

      v138 = v137 + 1;
      if (v138 <= 0xC)
      {
        goto LABEL_247;
      }

      if (v124 < v136)
      {
        v136 = (*(&v171 + 1) - v171) >> 2;
      }

      if (&v175 >= v171 + 4 * v136 + 4 || v171 >= v176)
      {
        v144 = v138 & 7;
        if ((v138 & 7) == 0)
        {
          v144 = 8;
        }

        v139 = v138 - v144;
        v175 = -1;
        v145 = (v171 + 16);
        v146 = v139;
        do
        {
          *(v145 - 1) = 0uLL;
          *v145 = 0uLL;
          v145 += 2;
          v146 -= 8;
        }

        while (v146);
      }

      else
      {
LABEL_247:
        v139 = 0;
      }

      v147 = v124 - v139;
      v108 -= v139;
      v117 += 4 * v139;
      while (1)
      {
        v175 = -1;
        if (!v147)
        {
          break;
        }

        *v117 = 0;
        v117 += 4;
        --v147;
        if (!--v108)
        {
          goto LABEL_273;
        }
      }

LABEL_228:
      __break(1u);
LABEL_229:
      v174 = v117 + 1;
      v121 = *v117++ & 1;
LABEL_230:
      v168[9] = v121;
      v176[0] = 0;
      if (v108 < 3)
      {
        continue;
      }

      break;
    }

    v175 = v108 - 3;
    if (((v108 - 3) & 7) != 0)
    {
      v132 = (*v117 >> ((v108 - 3) & 7)) & 1;
    }

    else
    {
      v174 = v117 + 1;
      v132 = *v117++ & 1;
    }

    if (!v132)
    {
      goto LABEL_186;
    }

    if (v108 > 6)
    {
      v134 = v108 >> 3;
      v135 = &v117[((v108 + 4) >> 3) - v134];
      v174 = v135;
      v176[0] = 0;
      if ((v108 - 7) >= 4)
      {
        v133 = v108 - 11;
        v174 = &v135[v134 - ((v108 - 4) >> 3)];
      }

      else
      {
        v133 = -1;
      }
    }

    else
    {
      v176[0] = 0;
      v133 = -1;
    }

    v175 = v133;
    v140 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v176[0] = 1;
    if (v175 < 0 || v140 >= 3)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_129;
      }

      v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_116;
    }

    v141 = v140 + 3;
    if (v90 >= 5)
    {
      v142 = 5;
    }

    else
    {
      v142 = v90;
    }

    if (v141 < v142 || v96 < v141)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_129;
      }

      v79 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_116;
    }

    v143 = webrtc::BitstreamReader::ReadExponentialGolomb(&v174);
    v176[0] = 1;
    if ((v175 & 0x80000000) == 0 && v143 <= (v96 - v141))
    {
      v176[0] = 0;
      if (!v175)
      {
        continue;
      }

      v111 = v175 - 1;
      v174 += (((v175 + 7) >> 3) - ((v175 + 6) >> 3));
      goto LABEL_185;
    }

    break;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_129;
  }

LABEL_128:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v65, v66, v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
LABEL_129:
  *a7 = 0;
  a7[160] = 0;
  v84 = v171;
  if (v171)
  {
LABEL_130:
    operator delete(v84);
  }

LABEL_91:
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::H265SpsParser::ParseScalingListData(webrtc::H265SpsParser *this, webrtc::BitstreamReader *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = (16 << (2 * v3)) >= 0x40 ? 64 : 16 << (2 * v3);
    v5 = v3 == 3 ? 3 : 1;
    if (v3 == 3)
    {
      break;
    }

    v17 = 0;
    if (v4 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v4;
    }

    v19 = *(this + 2);
    do
    {
      *(this + 12) = 0;
      if (v19 <= 0)
      {
        *(this + 2) = -1;
LABEL_41:
        ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(this);
        *(this + 12) = 1;
        v19 = *(this + 2);
        if (v19 < 0 || ExponentialGolomb > v17)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            goto LABEL_61;
          }

          return 0;
        }

        goto LABEL_57;
      }

      v20 = v19 - 1;
      *(this + 2) = v19 - 1;
      v21 = *this;
      v22 = v20 & 7;
      if (v22)
      {
        if (((*v21 >> v22) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *this = v21 + 1;
        if ((*v21 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v24 = v18;
      if (v3 > 1)
      {
        v25 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
        v26 = (v25 & 1) != 0 ? (v25 + 1) >> 1 : -(v25 >> 1);
        *(this + 12) = 1;
        if ((*(this + 2) & 0x80000000) != 0 || (v24 = v18, v26 - 248 <= 0xFFFFFF00))
        {
LABEL_67:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            goto LABEL_61;
          }

          return 0;
        }
      }

      do
      {
        v27 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
        if (v27)
        {
          v28 = (v27 + 1) >> 1;
        }

        else
        {
          v28 = -(v27 >> 1);
        }

        *(this + 12) = 1;
        v19 = *(this + 2);
        if (v19 < 0 || v28 + 128 >= 0x100)
        {
          goto LABEL_60;
        }

        --v24;
      }

      while (v24);
LABEL_57:
      v17 += v5;
    }

    while (v17 < 6);
LABEL_58:
    if (++v3 == 4)
    {
      result = 1;
      *(this + 12) = 1;
      return result;
    }
  }

  v6 = 0;
  v7 = *(this + 2);
  while (1)
  {
    *(this + 12) = 0;
    if (v7 <= 0)
    {
      *(this + 2) = -1;
      goto LABEL_15;
    }

    v8 = v7 - 1;
    *(this + 2) = v7 - 1;
    v9 = *this;
    v10 = v8 & 7;
    if (!v10)
    {
      break;
    }

    if ((*v9 >> v10))
    {
      goto LABEL_19;
    }

LABEL_15:
    v11 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
    *(this + 12) = 1;
    v7 = *(this + 2);
    if (v7 < 0 || v11 > (v6 > 2))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }

      goto LABEL_61;
    }

LABEL_30:
    v6 += v5;
    if (v6 > 5)
    {
      goto LABEL_58;
    }
  }

  *this = v9 + 1;
  if ((*v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v12 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
  if (v12)
  {
    v13 = (v12 + 1) >> 1;
  }

  else
  {
    v13 = -(v12 >> 1);
  }

  *(this + 12) = 1;
  if ((*(this + 2) & 0x80000000) != 0)
  {
    goto LABEL_67;
  }

  v14 = v4;
  if (v13 - 248 < 0xFFFFFF01)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v15 = webrtc::BitstreamReader::ReadExponentialGolomb(this);
    v16 = (v15 & 1) != 0 ? (v15 + 1) >> 1 : -(v15 >> 1);
    *(this + 12) = 1;
    v7 = *(this + 2);
    if (v7 < 0 || v16 + 128 >= 0x100)
    {
      break;
    }

    if (!--v14)
    {
      goto LABEL_30;
    }
  }

LABEL_60:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_61:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
  }

  return 0;
}

void webrtc::H265SpsParser::ParseShortTermRefPicSet(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, unsigned __int8 **a5@<X4>, _BYTE *a6@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x40CuLL);
  if (!a1)
  {
    goto LABEL_7;
  }

  *(a5 + 12) = 0;
  v12 = *(a5 + 2);
  if (v12 <= 0)
  {
    *(a5 + 2) = -1;
    goto LABEL_7;
  }

  v13 = v12 - 1;
  *(a5 + 2) = v13;
  v14 = *a5;
  if ((v13 & 7) != 0)
  {
    if (((*v14 >> (v13 & 7)) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  *a5 = v14 + 1;
  if ((*v14 & 1) == 0)
  {
LABEL_7:
    ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
    __src[0] = ExponentialGolomb;
    v16 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
    __src[1] = v16;
    *(a5 + 12) = 1;
    v17 = *(a5 + 2);
    if (v17 < 0)
    {
      goto LABEL_66;
    }

    if (ExponentialGolomb > 0x10)
    {
      goto LABEL_66;
    }

    v18 = v16;
    if (v16 > 0x10 || v16 + ExponentialGolomb >= 0x11)
    {
      goto LABEL_66;
    }

    if (a4 < ExponentialGolomb)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_66;
      }

LABEL_64:
      v48 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_65;
    }

    if (v16 > a4 - ExponentialGolomb)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (ExponentialGolomb)
    {
      v31 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
      *(a5 + 12) = 1;
      v32 = *(a5 + 2);
      if ((v32 & 0x80000000) == 0 && !(v31 >> 15))
      {
        v33 = ~v31;
        __src[2] = ~v31;
        *(a5 + 12) = 0;
        if (v32)
        {
          v17 = v32 - 1;
          *(a5 + 2) = v17;
          v34 = *a5;
          if ((v17 & 7) != 0)
          {
            LODWORD(v34) = *v34 >> (v17 & 7);
          }

          else
          {
            *a5 = v34 + 1;
            LOBYTE(v34) = *v34;
          }

          v66 = v34 & 1;
        }

        else
        {
          v66 = 0;
          v17 = -1;
          *(a5 + 2) = -1;
        }

        __src[66] = v66;
        if (ExponentialGolomb == 1)
        {
          goto LABEL_92;
        }

        v71 = ExponentialGolomb - 1;
        v72 = &__src[67];
        while (1)
        {
          v73 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
          *(a5 + 12) = 1;
          v74 = *(a5 + 2);
          if (v74 < 0 || v73 >= 0x8000)
          {
            break;
          }

          v33 += ~v73;
          *(v72 - 64) = v33;
          *(a5 + 12) = 0;
          if (v74)
          {
            v17 = v74 - 1;
            *(a5 + 2) = v17;
            v75 = *a5;
            if ((v17 & 7) != 0)
            {
              *v72++ = (*v75 >> (v17 & 7)) & 1;
              if (!--v71)
              {
                goto LABEL_92;
              }
            }

            else
            {
              *a5 = v75 + 1;
              *v72++ = *v75 & 1;
              if (!--v71)
              {
                goto LABEL_92;
              }
            }
          }

          else
          {
            v17 = -1;
            *(a5 + 2) = -1;
            *v72++ = 0;
            if (!--v71)
            {
              goto LABEL_92;
            }
          }
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_66;
      }

      v48 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_65;
    }

LABEL_92:
    if (v18)
    {
      v69 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
      *(a5 + 12) = 1;
      if ((a5[1] & 0x80000000) == 0 && !(v69 >> 15))
      {
        v70 = v69 + 1;
        __src[130] = v69 + 1;
        __src[194] = webrtc::BitstreamReader::ReadBit(a5);
        if (v18 == 1)
        {
          v17 = *(a5 + 2);
          v18 = 1;
          goto LABEL_137;
        }

        v76 = v18 - 1;
        v77 = &__src[195];
        while (1)
        {
          v78 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
          *(a5 + 12) = 1;
          v79 = *(a5 + 2);
          if (v79 < 0 || v78 >= 0x8000)
          {
            break;
          }

          v70 += v78 + 1;
          *(v77 - 64) = v70;
          *(a5 + 12) = 0;
          if (v79)
          {
            v17 = v79 - 1;
            *(a5 + 2) = v17;
            v80 = *a5;
            if ((v17 & 7) != 0)
            {
              *v77++ = (*v80 >> (v17 & 7)) & 1;
              if (!--v76)
              {
                goto LABEL_137;
              }
            }

            else
            {
              *a5 = v80 + 1;
              *v77++ = *v80 & 1;
              if (!--v76)
              {
                goto LABEL_137;
              }
            }
          }

          else
          {
            v17 = -1;
            *(a5 + 2) = -1;
            *v77++ = 0;
            if (!--v76)
            {
              goto LABEL_137;
            }
          }
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_66;
      }

      v48 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_65:
      webrtc::webrtc_logging_impl::Log(v48, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
      goto LABEL_66;
    }

LABEL_137:
    __src[258] = ExponentialGolomb + v18;
    *(a5 + 12) = 1;
    if (v17 < 0)
    {
      goto LABEL_66;
    }

    memcpy(a6, __src, 0x40CuLL);
    a6[1036] = 1;
    return;
  }

LABEL_18:
  if (a1 == a2)
  {
    v26 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
    v27 = v26;
    *(a5 + 12) = 1;
    v13 = *(a5 + 2);
    if (v13 < 0 || v26 > a1 - 1)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v27 = 0;
  }

  *(a5 + 12) = 0;
  if (v13)
  {
    v28 = v13 & 7;
    *(a5 + 2) = v13 - 1;
    v29 = **a5;
    if (v28 < 2)
    {
      if (v28 == 1)
      {
        v30 = v29 & 1;
        ++*a5;
      }

      else
      {
        v30 = v29 >> 7;
      }
    }

    else
    {
      v30 = (v29 >> (v28 - 1)) & 1;
    }
  }

  else
  {
    v30 = 0;
    *(a5 + 2) = -1;
  }

  v35 = webrtc::BitstreamReader::ReadExponentialGolomb(a5);
  *(a5 + 12) = 1;
  v17 = *(a5 + 2);
  if (v17 < 0 || v35 >= 0x8000)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_66;
    }

    v48 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_65;
  }

  v36 = ~v27 + a1;
  v37 = *a3;
  if (0x2F71AAFF02F71ABLL * ((a3[1] - *a3) >> 2) <= v36)
  {
    __break(1u);
    return;
  }

  v38 = (v37 + 1036 * v36);
  v39 = v38[258];
  if (v39 >= 0x41)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v40 = 0;
  v41 = v35 + 1 - 2 * v30 * (v35 + 1);
  memset(v91, 0, 64);
  *&v42 = 0x101010101010101;
  *(&v42 + 1) = 0x101010101010101;
  v90[2] = v42;
  v90[3] = v42;
  v90[0] = v42;
  v90[1] = v42;
  v43 = v39 + 1;
  v44 = *a5;
  do
  {
    while (1)
    {
      *(a5 + 12) = 0;
      if (v17 <= 0)
      {
        v91[v40] = 0;
LABEL_48:
        LOBYTE(v46) = 0;
        v17 = -1;
        *(a5 + 2) = -1;
        goto LABEL_49;
      }

      *(a5 + 2) = v17 - 1;
      if (((v17 - 1) & 7) != 0)
      {
        break;
      }

      *a5 = v44 + 1;
      v47 = *v44++ & 1;
      v91[v40] = v47;
      if (!v47)
      {
        goto LABEL_52;
      }

LABEL_42:
      --v17;
      if (v43 == ++v40)
      {
        goto LABEL_60;
      }
    }

    v45 = (*v44 >> ((v17 - 1) & 7)) & 1;
    v91[v40] = v45;
    if (v45)
    {
      goto LABEL_42;
    }

LABEL_52:
    *(a5 + 12) = 0;
    if (v17 == 1)
    {
      goto LABEL_48;
    }

    v17 -= 2;
    *(a5 + 2) = v17;
    if ((v17 & 7) != 0)
    {
      v46 = (*v44 >> (v17 & 7)) & 1;
    }

    else
    {
      *a5 = v44 + 1;
      LOBYTE(v46) = *v44++ & 1;
    }

LABEL_49:
    *(v90 + v40++) = v46;
  }

  while (v43 != v40);
LABEL_60:
  *(a5 + 12) = 1;
  if ((v17 & 0x80000000) == 0)
  {
    v50 = *v38;
    v49 = v38[1];
    if ((v50 + v49) <= 0x40)
    {
      v51 = 0;
      v52 = (v49 - 1);
      if (v49 - 1 >= 0)
      {
        v53 = v52 + 1;
        v54 = v49 + v50 - 1;
        v55 = (1036 * v36 + 4 * v52 + v37 + 520);
        do
        {
          v57 = *v55--;
          v58 = v57 + v41;
          if (v57 + v41 < 0 && *(v90 + v54) == 1)
          {
            __src[v51 + 2] = v58;
            __src[v51++ + 66] = v91[v54];
          }

          --v54;
          v56 = v53-- <= 1;
        }

        while (!v56);
      }

      if (v41 < 0 && *(v90 + v39) == 1)
      {
        v59 = &__src[v51];
        v59[2] = v41;
        ++v51;
        v59[66] = v91[v39];
      }

      if (v50)
      {
        v60 = v91;
        v61 = v90;
        v62 = (v38 + 2);
        v63 = v50;
        do
        {
          v64 = *v62++;
          v65 = v64 + v41;
          if (v64 + v41 < 0 && *v61 == 1)
          {
            __src[v51 + 2] = v65;
            __src[v51++ + 66] = *v60;
          }

          ++v60;
          ++v61;
          --v63;
        }

        while (v63);
        __src[0] = v51;
        v18 = 0;
        v67 = (v50 - 1);
        if (v50 - 1 >= 0)
        {
          do
          {
            v68 = v38[v67 + 2] + v41;
            if (v68 >= 1 && *(v90 + v67) == 1)
            {
              __src[v18 + 130] = v68;
              __src[v18++ + 194] = v91[v67];
            }

            v56 = v67-- <= 0;
          }

          while (!v56);
        }
      }

      else
      {
        v18 = 0;
        __src[0] = v51;
      }

      if (v41 > 0 && *(v90 + v39) == 1)
      {
        v81 = &__src[v18];
        v81[130] = v41;
        ++v18;
        v81[194] = v91[v39];
      }

      if (v49)
      {
        v82 = (v38 + 130);
        do
        {
          v83 = *v82++;
          v84 = v83 + v41;
          if (v83 + v41 >= 1 && *(v90 + v50) == 1)
          {
            __src[v18 + 130] = v84;
            __src[v18++ + 194] = v91[v50];
          }

          LODWORD(v50) = v50 + 1;
          --v49;
        }

        while (v49);
      }

      __src[1] = v18;
      *(a5 + 12) = 1;
      ExponentialGolomb = __src[0];
      if (a4 < __src[0])
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      if (v18 > a4 - __src[0])
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_137;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    v86 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc";
    v87 = 1706;
    v88 = &v85;
    goto LABEL_64;
  }

LABEL_66:
  *a6 = 0;
  a6[1036] = 0;
}

void webrtc::H265SpsParser::ParseProfileTierLevel(webrtc::H265SpsParser *this@<X0>, int a2@<W1>, unsigned __int8 **a3@<X2>, uint64_t a4@<X8>)
{
  v97[1] = *MEMORY[0x277D85DE8];
  if ((this & 1) == 0)
  {
    LOBYTE(v7) = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(a3 + 2);
    goto LABEL_5;
  }

  *(a3 + 12) = 0;
  v6 = *(a3 + 2);
  if (v6 <= 1)
  {
    *(a3 + 2) = -1;
    *(a3 + 12) = 1;
    goto LABEL_45;
  }

  v19 = a3[1] & 7;
  *(a3 + 2) = v6 - 2;
  v20 = *a3;
  if ((v6 & 7u) >= 3)
  {
    v21 = (*v20 >> (v19 - 2)) & 3;
    goto LABEL_44;
  }

  if ((v6 & 7) != 0)
  {
    v22 = *v20++;
    v21 = (v22 & ~(-1 << v19)) << (2 - v19);
    *a3 = v20;
    if (v19 == 2)
    {
      goto LABEL_44;
    }

    v23 = 7;
  }

  else
  {
    v21 = 0;
    v23 = 6;
  }

  v21 |= *v20 >> v23;
LABEL_44:
  *(a3 + 12) = 1;
  if (v21)
  {
LABEL_45:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    }

LABEL_47:
    *a4 = 0;
    *(a4 + 20) = 0;
    return;
  }

  *(a3 + 12) = 0;
  if (v6 == 2 || (v41 = &v20[((v6 + 5) >> 3) - ((v6 + 4) >> 3)], *a3 = v41, *(a3 + 2) = v6 - 3, (v6 - 2) < 6))
  {
    *(a3 + 2) = -1;
    *(a3 + 12) = 1;
    goto LABEL_51;
  }

  v49 = (v6 - 3) & 7;
  *(a3 + 2) = v6 - 8;
  if (v49 >= 6)
  {
    v13 = (*v41 >> (v49 - 5)) & 0x1F;
    goto LABEL_71;
  }

  v50 = 5;
  if (!v49)
  {
    v13 = 0;
    goto LABEL_70;
  }

  v50 = 5 - v49;
  v51 = *v41++;
  v13 = (v51 << (5 - v49)) & 0x1F;
  *a3 = v41;
  if (v49 != 5)
  {
LABEL_70:
    v13 |= *v41 >> (8 - v50);
  }

LABEL_71:
  *(a3 + 12) = 1;
  if (v13 >= 0xC)
  {
LABEL_51:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    }

    goto LABEL_47;
  }

  *(a3 + 12) = 0;
  if ((v6 - 8) < 0x10)
  {
    goto LABEL_135;
  }

  *(a3 + 2) = v6 - 24;
  v52 = 16;
  if ((v6 & 7) != 0)
  {
    v52 = 16 - v19;
    v53 = *v41++;
    v54 = (v53 & ~(-1 << v19)) << (16 - v19);
    *a3 = v41;
  }

  else
  {
    v54 = 0;
  }

  v55 = v52 - 8;
  v56 = v41 + 1;
  v57 = (*v41 << (v52 - 8)) | v54;
  *a3 = v41 + 1;
  v58 = v52 >= 0x10;
  v59 = v52 - 16;
  if (v58)
  {
    v57 |= v41[1] << v59;
    v60 = v41 + 2;
    *a3 = v41 + 2;
    ++v41;
    v55 = v59;
    v56 = v60;
  }

  if (v55)
  {
    LODWORD(v57) = v57 | (*v56 >> (8 - v55));
  }

  *(a3 + 12) = 0;
  if (v6 < 40)
  {
    goto LABEL_135;
  }

  *(a3 + 2) = v6 - 40;
  v61 = 16;
  if ((v6 & 7) != 0)
  {
    v61 = 16 - v19;
    v62 = (*v56 & ~(-1 << v19)) << (16 - v19);
    v56 = v41 + 2;
    *a3 = v41 + 2;
  }

  else
  {
    v62 = 0;
  }

  v63 = v61 - 8;
  v7 = (v56 + 1);
  v64 = (*v56 << (v61 - 8)) | v62;
  *a3 = v56 + 1;
  v58 = v61 >= 0x10;
  v65 = v61 - 16;
  if (v58)
  {
    v64 |= v56[1] << v65;
    v66 = v56 + 2;
    *a3 = v56 + 2;
    ++v56;
    v63 = v65;
    v7 = v66;
  }

  if (v63)
  {
    LODWORD(v64) = v64 | (*v7 >> (8 - v63));
  }

  *(a3 + 12) = 0;
  if (v6 == 40 || ((*(a3 + 2) = v6 - 41, v67 = *v7, v19 < 2) ? (v19 != 1 ? (v11 = v67 >> 7) : (v11 = v67 & 1, v7 = (v56 + 2), *a3 = v56 + 2)) : (v11 = (v67 >> (v19 - 1)) & 1), *(a3 + 12) = 0, v6 <= 41))
  {
LABEL_135:
    *(a3 + 2) = -1;
    *(a3 + 12) = 1;
    goto LABEL_136;
  }

  v87 = (v6 - 41) & 7;
  v88 = v6 - 42;
  *(a3 + 2) = v6 - 42;
  v89 = *v7;
  if (v87 < 2)
  {
    if (v87 == 1)
    {
      v10 = v89 & 1;
      *a3 = ++v7;
    }

    else
    {
      v10 = v89 >> 7;
    }
  }

  else
  {
    v10 = (v89 >> (v87 - 1)) & 1;
  }

  *(a3 + 12) = 1;
  if (!v11 && v10)
  {
LABEL_136:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v80, v81, v82, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/h265/h265_sps_parser.cc");
    }

    goto LABEL_47;
  }

  v12 = v64 | (v57 << 16);
  *(a3 + 12) = 0;
  if (v6 == 42)
  {
    LOBYTE(v9) = 0;
    goto LABEL_149;
  }

  v90 = v88 & 7;
  *(a3 + 2) = v6 - 43;
  v9 = *v7;
  if (v90 >= 2)
  {
    LODWORD(v9) = (v9 >> (v90 - 1)) & 1;
    goto LABEL_154;
  }

  if (v90 != 1)
  {
    v9 >>= 7;
    goto LABEL_154;
  }

  LOBYTE(v9) = v9 & 1;
  *a3 = ++v7;
  *(a3 + 12) = 0;
  if (v6 == 43)
  {
LABEL_149:
    LOBYTE(v8) = 0;
    *(a3 + 12) = 0;
LABEL_160:
    LOBYTE(v7) = 0;
    v14 = -1;
    *(a3 + 2) = -1;
    goto LABEL_5;
  }

LABEL_154:
  v91 = (v6 - 43) & 7;
  *(a3 + 2) = v6 - 44;
  v8 = *v7;
  if (v91 < 2)
  {
    if (v91 == 1)
    {
      LOBYTE(v8) = v8 & 1;
      *a3 = ++v7;
    }

    else
    {
      v8 >>= 7;
    }
  }

  else
  {
    LODWORD(v8) = (v8 >> (v91 - 1)) & 1;
  }

  if (v88 <= 8)
  {
    goto LABEL_160;
  }

  v92 = (v7 + (((v6 - 37) >> 3) - ((v6 - 44) >> 3)));
  *a3 = v92;
  *(a3 + 12) = 0;
  LOBYTE(v7) = v6 - 51;
  if (v6 == 51 || ((v93 = v7 & 7, *(a3 + 2) = v6 - 52, v7 = *v92, v93 < 2) ? (v93 != 1 ? (v7 >>= 7) : (LOBYTE(v7) = v7 & 1, ++v92, *a3 = v92)) : (LODWORD(v7) = (v7 >> (v93 - 1)) & 1), v88 < 0x2D || (v94 = (v6 - 80) >> 3, v95 = &v92[((v6 - 45) >> 3) - v94], *a3 = v95, v6 == 87)))
  {
    v14 = -1;
  }

  else
  {
    v14 = v6 - 88;
    *a3 = &v95[v94 - ((v6 - 81) >> 3)];
  }

LABEL_5:
  *(a3 + 12) = 0;
  if (v14 <= 7)
  {
    v15 = 0;
    v16 = -1;
    *(a3 + 2) = -1;
    v96 = 0;
    v97[0] = 0;
    if (a2 < 1)
    {
      goto LABEL_127;
    }

    goto LABEL_17;
  }

  v16 = v14 - 8;
  *(a3 + 2) = v14 - 8;
  v17 = *a3;
  v15 = **a3;
  v18 = v14 & 7;
  if (v18)
  {
    *a3 = v17 + 1;
    v15 = (v15 << (8 - v18)) & 0xFE | (v17[1] >> v18);
    v96 = 0;
    v97[0] = 0;
    if (a2 < 1)
    {
      goto LABEL_127;
    }

    goto LABEL_17;
  }

  *a3 = v17 + 1;
  v96 = 0;
  v97[0] = 0;
  if (a2 >= 1)
  {
LABEL_17:
    v24 = a2;
    v25 = *a3;
    v26 = v97;
    v27 = &v96;
    v28 = a2;
    while (1)
    {
      *(a3 + 12) = 0;
      if (v16 <= 0)
      {
        *v26 = 0;
LABEL_24:
        LOBYTE(v29) = 0;
        v16 = -1;
        *(a3 + 2) = -1;
        goto LABEL_19;
      }

      v30 = v16 & 7;
      v31 = v16 - 1;
      *(a3 + 2) = v16 - 1;
      v32 = *v25;
      if (v30 >= 2)
      {
        break;
      }

      if (v30 != 1)
      {
        v32 >>= 7;
LABEL_30:
        *v26 = v32;
        *(a3 + 12) = 0;
        v33 = v31 & 7;
        v16 -= 2;
        *(a3 + 2) = v16;
        v29 = *v25;
        if (v33 < 2)
        {
LABEL_31:
          if (v33 == 1)
          {
            LOBYTE(v29) = v29 & 1;
            *a3 = ++v25;
          }

          else
          {
            v29 >>= 7;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      *a3 = ++v25;
      *v26 = v32 & 1;
      *(a3 + 12) = 0;
      if (v16 == 1)
      {
        goto LABEL_24;
      }

      v33 = v31 & 7;
      v16 -= 2;
      *(a3 + 2) = v16;
      v29 = *v25;
      if (v33 < 2)
      {
        goto LABEL_31;
      }

LABEL_18:
      LODWORD(v29) = (v29 >> (v33 - 1)) & 1;
LABEL_19:
      *v27 = v29;
      v27 = (v27 + 1);
      ++v26;
      if (!--v28)
      {
        if (a2 < 8)
        {
          if (v16 >= 2)
          {
            v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
            *a3 = v25;
            v16 -= 2;
            if (a2 == 7)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v16 = -1;
            if (a2 == 7)
            {
              goto LABEL_102;
            }
          }

          if (v16 >= 2)
          {
            v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
            *a3 = v25;
            v16 -= 2;
            if (a2 == 6)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v16 = -1;
            if (a2 == 6)
            {
              goto LABEL_102;
            }
          }

          if (v16 >= 2)
          {
            v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
            *a3 = v25;
            v16 -= 2;
          }

          else
          {
            v16 = -1;
          }

          if (a2 != 5)
          {
            if (v16 >= 2)
            {
              v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
              *a3 = v25;
              v16 -= 2;
            }

            else
            {
              v16 = -1;
            }

            if (a2 != 4)
            {
              if (v16 >= 2)
              {
                v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
                *a3 = v25;
                v16 -= 2;
              }

              else
              {
                v16 = -1;
              }

              if (a2 != 3)
              {
                if (v16 >= 2)
                {
                  v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
                  *a3 = v25;
                  v16 -= 2;
                }

                else
                {
                  v16 = -1;
                }

                if (a2 != 2)
                {
                  if (v16 >= 2)
                  {
                    v25 += (((v16 + 7) >> 3) - ((v16 + 5) >> 3));
                    *a3 = v25;
                    v16 -= 2;
                  }

                  else
                  {
                    v16 = -1;
                  }
                }
              }
            }
          }

LABEL_102:
          *(a3 + 2) = v16;
        }

        v68 = &v96;
        v69 = v97;
        while (2)
        {
          v70 = *v69++;
          if (v70 != 1)
          {
            if (*v68 == 1)
            {
              goto LABEL_117;
            }

            goto LABEL_106;
          }

          if (v16 < 2 || (v71 = (v16 + 5) >> 3, v25 = &v25[((v16 + 7) >> 3) - v71], *a3 = v25, v16 == 2))
          {
            *(a3 + 2) = -1;
            goto LABEL_111;
          }

          v72 = (v16 + 4) >> 3;
          v25 += v71 - v72;
          *a3 = v25;
          if ((v16 - 3) <= 4)
          {
LABEL_111:
            *(a3 + 12) = 0;
          }

          else
          {
            v73 = (v16 - 1) >> 3;
            v25 += v72 - v73;
            *a3 = v25;
            if ((v16 - 8) >= 0x20)
            {
              v74 = (v16 - 33) >> 3;
              v25 += v73 - v74;
              *a3 = v25;
              if ((v16 & 0x7FFFFFFE) != 0x28)
              {
                v75 = (v16 - 35) >> 3;
                v25 += v74 - v75;
                *a3 = v25;
                if ((v16 & 0x7FFFFFFE) != 0x2A)
                {
                  v76 = (v16 - 37) >> 3;
                  v25 += v75 - v76;
                  *a3 = v25;
                  if ((v16 - 44) > 0x2A)
                  {
                    v77 = (v16 - 80) >> 3;
                    v25 += v76 - v77;
                    *a3 = v25;
                    *(a3 + 12) = 0;
                    if (v16 != 87)
                    {
                      v78 = v16 - 81;
                      v16 -= 88;
                      v25 += v77 - (v78 >> 3);
                      *a3 = v25;
                      *(a3 + 2) = v16;
                      if (*v68 == 1)
                      {
LABEL_117:
                        *(a3 + 12) = 0;
                        if (v16 >= 8)
                        {
                          v25 += (((v16 + 7) >> 3) - ((v16 - 1) >> 3));
                          *a3 = v25;
                          v16 -= 8;
                        }

                        else
                        {
                          v16 = -1;
                        }

                        *(a3 + 2) = v16;
                      }

LABEL_106:
                      v68 = (v68 + 1);
                      if (!--v24)
                      {
                        goto LABEL_127;
                      }

                      continue;
                    }

LABEL_114:
                    v16 = -1;
                    *(a3 + 2) = -1;
                    if (*v68 == 1)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_106;
                  }

LABEL_113:
                  *(a3 + 12) = 0;
                  goto LABEL_114;
                }
              }
            }
          }

          break;
        }

        *(a3 + 2) = -1;
        goto LABEL_113;
      }
    }

    LODWORD(v32) = (v32 >> (v30 - 1)) & 1;
    goto LABEL_30;
  }

LABEL_127:
  *(a3 + 12) = 1;
  if (v16 < 0)
  {
    v79 = 0;
    *a4 = 0;
  }

  else
  {
    *a4 = v13;
    *(a4 + 4) = v15;
    *(a4 + 8) = v12;
    *(a4 + 12) = v11;
    *(a4 + 13) = v10;
    *(a4 + 14) = v9;
    *(a4 + 15) = v8;
    v79 = 1;
    *(a4 + 16) = v7;
  }

  *(a4 + 20) = v79;
}

void std::vector<webrtc::H265SpsParser::ShortTermRefPicSet>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = &v4[-*a1];
  v6 = 0x2F71AAFF02F71ABLL * (v5 >> 2);
  v7 = a2 - v6;
  if (a2 > v6)
  {
    v8 = a1[2];
    if (0x2F71AAFF02F71ABLL * ((v8 - v4) >> 2) >= v7)
    {
      v12 = &v4[1036 * v7];
      v13 = 1036 * a2 - 4 * (v5 >> 2);
      while (v4)
      {
        bzero(v4, 0x40CuLL);
        v4 += 1036;
        v13 -= 1036;
        if (!v13)
        {
          a1[1] = v12;
          return;
        }
      }

      __break(1u);
    }

    else if (a2 <= 0x3F42395403F423)
    {
      v9 = 0x2F71AAFF02F71ABLL * ((v8 - v3) >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a2)
      {
        v10 = a2;
      }

      if (v9 >= 0x1FA11CAA01FA11)
      {
        v11 = 0x3F42395403F423;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x3F42395403F423)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 < v6)
  {
    a1[1] = v3 + 1036 * a2;
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = __sz - (v5 >> 2);
  if (__sz > v5 >> 2)
  {
    value = this->__end_cap_.__value_;
    if (v6 <= value - end)
    {
      v11 = &end[v6];
      v12 = 4 * __sz - 4 * (v5 >> 2);
      while (end)
      {
        *end++ = *__x;
        v12 -= 4;
        if (!v12)
        {
          this->__end_ = v11;
          return;
        }
      }

      __break(1u);
    }

    else if (!(__sz >> 62))
    {
      v8 = value - begin;
      v9 = (value - begin) >> 1;
      if (v9 <= __sz)
      {
        v9 = __sz;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__sz < v5 >> 2)
  {
    this->__end_ = &begin[__sz];
  }
}

uint64_t std::__optional_destruct_base<webrtc::H265SpsParser::SpsState,false>::__optional_destruct_base[abi:sn200100]<webrtc::H265SpsParser::SpsState&>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(result + 32) = v3;
  *(result + 48) = v4;
  *(result + 16) = v2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  v6 = *(a2 + 72);
  v5 = *(a2 + 80);
  if (v5 != v6)
  {
    if ((0x2F71AAFF02F71ABLL * ((v5 - v6) >> 2)) < 0x3F42395403F424)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(result + 96) = *(a2 + 96);
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  v8 = *(a2 + 104);
  v7 = *(a2 + 112);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = *(a2 + 144);
  *(result + 128) = *(a2 + 128);
  *(result + 144) = v9;
  *(result + 160) = 1;
  return result;
}

void webrtc::H265VpsParser::ParseInternal(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (((a2 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a3, a4, a5, a6, v35);
    webrtc::H26xPacketBuffer::InsertPacket();
  }

  else
  {
    v8 = 8 * a2;
    memset(&v37[8], 0, 28);
    if (8 * a2 && (v9 = *v7, *v37 = v9 >> 4, (v8 - 6) >= 6) && (v12 = v7[1], v10 = v7 + 1, v11 = v12, v13 = v12 >> 4, v14 = (v12 >> 4) & 0xFFFFFFCF | (16 * (v9 & 3)), *&v37[4] = v14, v8 >= 0xC) && v14 < 7)
    {
      v15 = (v8 - 8) >> 3;
      v16 = &v10[((v8 - 5) >> 3) - v15];
      v17 = (v8 - 9) >> 3;
      v18 = &v16[v15 - v17];
      *&v37[36] = v18;
      v39 = 0;
      if ((v8 & 0x7FFFFFF0) == 0x10)
      {
        v20 = -1;
      }

      else
      {
        v20 = v8 - 32;
        *&v37[36] = &v18[v17 - ((v8 - 25) >> 3)];
      }

      v38 = v20;
      webrtc::H265SpsParser::ParseProfileTierLevel(1, v14, &v37[36], &v35 + 4);
      if (v38 & 0x80000000) == 0 && (v36)
      {
        v21 = 16 * (v9 & 3);
        v39 = 0;
        if (v38)
        {
          --v38;
          v22 = *&v37[36];
          if ((v38 & 7) != 0)
          {
            LODWORD(v22) = **&v37[36] >> (v38 & 7);
          }

          else
          {
            ++*&v37[36];
            LOBYTE(v22) = *v22;
          }

          v23 = v22 & 1;
        }

        else
        {
          v23 = 0;
          v38 = -1;
        }

        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v14;
        }

        v25 = 4 * v24;
        v26 = ~(v13 + v21) + v24;
        do
        {
          webrtc::BitstreamReader::ReadExponentialGolomb(&v37[36]);
          ExponentialGolomb = webrtc::BitstreamReader::ReadExponentialGolomb(&v37[36]);
          *&v37[v25 + 8] = ExponentialGolomb;
          v39 = 1;
          if (v38 < 0 || v25 && ExponentialGolomb < *&v37[v25 + 4])
          {
            goto LABEL_40;
          }

          webrtc::BitstreamReader::ReadExponentialGolomb(&v37[36]);
          v25 += 4;
        }

        while (!__CFADD__(v26++, 1));
        if (!v23 && v14)
        {
          v29 = *&v37[4 * v13 + 8];
          if (v11 < 0)
          {
            v30 = v13 & 8;
            *&v37[8] = vdupq_n_s32(v29);
            *&v37[24] = *&v37[8];
            if (v30 == v13)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v30 = 0;
          }

          v31 = v13 - v30;
          v32 = &v37[4 * v30 + 8];
          do
          {
            *v32++ = v29;
            --v31;
          }

          while (v31);
        }

LABEL_37:
        if (v38 & 0x80000000) == 0 && (v36)
        {
          v33 = *&v37[16];
          *a7 = *v37;
          *(a7 + 16) = v33;
          *(a7 + 32) = *&v37[32];
          v34 = 1;
          goto LABEL_41;
        }
      }

LABEL_40:
      v34 = 0;
      *a7 = 0;
LABEL_41:
      *(a7 + 36) = v34;
    }

    else
    {
      *a7 = 0;
      *(a7 + 36) = 0;
    }
  }
}

void webrtc::H26xPacketBuffer::InsertPacket(webrtc::H26xPacketBuffer *a1@<X0>, uint64_t *a2@<X1>, _BOOL8 a3@<X2>, _BOOL8 a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *(*a2 + 8);
  v11 = a1 + 8;
  v12 = v10 & 0x7FF;
  v13 = *(a1 + v12 + 1);
  if (v13 && ((v14 = *(v13 + 16), v15 = *(v9 + 16), v16 = v14 >= v15, v17 = v14 - v15, v17 == 0 || !v16) ? (v18 = 0) : (v18 = 1), v17 != 0x80000000 ? (v19 = v17 >= 0) : (v19 = v18), v19))
  {
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 24) = 0;
    *(a9 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    v20 = *&v11[8 * v12];
    *&v11[8 * v12] = v9;
    if (v20)
    {
      v21 = a1;
      v22 = a9;
      webrtc::RTPVideoHeader::~RTPVideoHeader((v20 + 48));
      v23 = *(v20 + 24);
      if (v23 && atomic_fetch_add((v23 + 24), 0xFFFFFFFF) == 1)
      {
        v24 = *(v23 + 16);
        *(v23 + 16) = 0;
        if (v24)
        {
          MEMORY[0x2743DA520](v24, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v23, 0x1010C40EE34DA14);
      }

      MEMORY[0x2743DA540](v20, 0x10B2C400C12466BLL);
      a9 = v22;
      a1 = v21;
    }

    webrtc::H26xPacketBuffer::FindFrames(a1, v10, a3, a4, a5, a6, a7, a8, a9);
  }
}

void webrtc::H26xPacketBuffer::FindFrames(webrtc::H26xPacketBuffer *this@<X0>, uint64_t a2@<X1>, _BOOL8 a3@<X2>, _BOOL8 a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
  v10 = this + 8;
  v11 = *(this + (a2 & 0x7FF) + 1);
  if (!v11)
  {
    goto LABEL_123;
  }

  v12 = a2;
  v14 = 16392;
  v15 = a2 - 1;
  v112 = this + 8;
  if (a2 - 1 == *(this + 2049))
  {
LABEL_11:
    v16 = this + v14;
    goto LABEL_12;
  }

  if (v15 == *(this + 2050))
  {
    v14 = 16400;
    goto LABEL_11;
  }

  if (v15 == *(this + 2051))
  {
    v14 = 16408;
    goto LABEL_11;
  }

  if (v15 == *(this + 2052))
  {
    v14 = 16416;
    goto LABEL_11;
  }

  if (v15 == *(this + 2053))
  {
    v14 = 16424;
    goto LABEL_11;
  }

  v75 = *(v11 + 220);
  if (v75 != 5)
  {
    if (v75 != 4)
    {
      return;
    }

    if (*(v11 + 1984) == 3)
    {
      v76 = *(v11 + 360);
      v77 = *(v11 + 352);
      if (v77 == v76)
      {
        return;
      }

      v78 = *(v11 + 352);
      while (*v78 != 7)
      {
        v78 += 12;
        if (v78 == v76)
        {
          if ((*this & 1) == 0)
          {
            return;
          }

          while (*v77 != 5)
          {
            v77 += 12;
            if (v77 == v76)
            {
              return;
            }
          }

          goto LABEL_115;
        }
      }

      goto LABEL_115;
    }

LABEL_122:
    std::__throw_bad_variant_access[abi:sn200100]();
LABEL_123:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc", 172, "packet != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v99);
    webrtc::H26xPacketBuffer::FixH264Packet(v91, v92, v93, v94, v95, v96, v97, v98);
    return;
  }

  v79 = *(v11 + 24);
  if (v79)
  {
    v79 = *(v79 + 16) + *(v11 + 32);
  }

  v80 = *(v11 + 40);
  if (v80)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0;
  }

  webrtc::H264::FindNaluIndices(v81, v80, &v118);
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v83 = v118;
  v82 = v119;
  if (v118 != v119)
  {
    do
    {
      v116 = *v83;
      v117 = v83[2];
      std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](&v113, &v116);
      v83 += 3;
    }

    while (v83 != v82);
    v83 = v118;
  }

  if (v83)
  {
    v119 = v83;
    operator delete(v83);
  }

  if (v113 == v114)
  {
    v86 = 0;
  }

  else
  {
    v84 = v113 + 24;
    do
    {
      v85 = *(*(*(v11 + 24) + 16) + *(v11 + 32) + *(v84 - 2)) & 0x7E;
      v86 = v85 == 64;
      v87 = v85 == 64 || v84 == v114;
      v84 += 24;
    }

    while (!v87);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  v10 = v112;
  if (!v86)
  {
    return;
  }

LABEL_115:
  v88 = *(this + 2054);
  if (v88 >= 5 || (*(this + v88 + 2049) = v12, v89 = *(this + 2054), v89 >= 5))
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v16 = this + 8 * v89 + 16392;
  if (v89 == 4)
  {
    v90 = 0;
  }

  else
  {
    v90 = v89 + 1;
  }

  *(this + 2054) = v90;
LABEL_12:
  v17 = v12 + 2048;
  v18 = v12 + 1;
  v100 = v16;
  v101 = a9;
  v105 = this;
  v99 = v12 + 2048;
  while (1)
  {
    if (v12 == v17 || v12 != *(v11 + 8))
    {
      return;
    }

    *v16 = v12;
    if (*(v11 + 1) != 1)
    {
      goto LABEL_13;
    }

    v19 = 0;
    v20 = 0;
    v21 = v18;
    do
    {
      v22 = v19;
      if (v12 + v20 <= v12 - 2048)
      {
        goto LABEL_13;
      }

      v23 = v20;
      v24 = v21;
      v25 = *&v10[8 * ((v12 + v20 - 1) & 0x7FF)];
      if (!v25)
      {
        break;
      }

      v26 = *(v25 + 16);
      --v20;
      v19 = v22 + 1;
      --v21;
    }

    while (v26 == *(v11 + 16));
    if (v12 + v23 <= v12)
    {
      break;
    }

LABEL_13:
    v11 = *&v10[8 * (++v12 & 0x7FF)];
    ++v18;
    if (!v11)
    {
      return;
    }
  }

  v103 = v23;
  v104 = v18;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0xFFFFFFFFLL;
  v102 = v12 + v23;
  v32 = v12 + v23;
  v33 = 0xFFFFFFFFLL;
  v111 = v12;
  v107 = v24;
  v108 = v22;
  while (1)
  {
    v35 = *&v10[8 * (v32 & 0x7FF)];
    v36 = *(v35 + 220);
    if (v36 == 5)
    {
      break;
    }

    if (v36 == 4)
    {
      if (*(v35 + 1984) != 3)
      {
        goto LABEL_122;
      }

      v38 = *(v35 + 352);
      v37 = *(v35 + 360);
      if (v38 != v37)
      {
        v39 = v37 - v38 - 12;
        if (v39 <= 0xB)
        {
          v40 = *(v35 + 352);
          do
          {
LABEL_48:
            v51 = *v40;
            v40 += 12;
            v30 |= v51 == 5;
            v28 |= v51 == 7;
            v29 |= v51 == 8;
          }

          while (v40 != v37);
          goto LABEL_49;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = v39 / 0xC + 1;
        v40 = &v38[12 * (v47 & 0x3FFFFFFFFFFFFFFELL)];
        v48 = v47 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v49 = *v38;
          v50 = v38[12];
          v30 |= v49 == 5;
          v46 |= v50 == 5;
          a3 = v49 == 7;
          a4 = v50 == 7;
          v28 |= a3;
          v44 |= a4;
          v29 |= v49 == 8;
          v45 |= v50 == 8;
          v38 += 24;
          v48 -= 2;
        }

        while (v48);
        v28 |= v44;
        v29 |= v45;
        v30 |= v46;
        if (v47 != (v47 & 0x3FFFFFFFFFFFFFFELL))
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      if (v30)
      {
        v30 = 1;
        if ((*v105 & 1) == 0 && (v28 & v29 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v30 = 0;
      }
    }

LABEL_24:
    if (v31 <= *(v35 + 204))
    {
      v31 = *(v35 + 204);
    }

    else
    {
      v31 = v31;
    }

    v34 = *(v35 + 206);
    if (v33 <= v34)
    {
      v33 = v34;
    }

    else
    {
      v33 = v33;
    }

    v87 = v32 == v12;
    v27 = v32++ >= v12;
    if (v87)
    {
      if ((v30 & 1) == 0)
      {
        v55 = 4;
        v16 = v100;
        v52 = v101;
        v18 = v104;
        v54 = v105;
        v17 = v99;
        v53 = v103;
        goto LABEL_61;
      }

LABEL_56:
      v16 = v100;
      v52 = v101;
      v53 = v103;
      v18 = v104;
      v54 = v105;
      v17 = v99;
      if (!v27)
      {
        return;
      }

      goto LABEL_60;
    }
  }

  v41 = *(v35 + 24);
  v109 = v33;
  v110 = v31;
  v106 = v27;
  if (v41)
  {
    v41 = *(v41 + 16) + *(v35 + 32);
  }

  v42 = *(v35 + 40);
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  webrtc::H264::FindNaluIndices(v43, v42, &v118);
  if (v118 != v119)
  {
    operator new();
  }

  v10 = v112;
  if ((v30 & 1) == 0)
  {
    v35 = *&v112[8 * (v32 & 0x7FF)];
    LODWORD(v33) = v109;
    LODWORD(v31) = v110;
    goto LABEL_24;
  }

  v16 = v100;
  v52 = v101;
  v18 = v104;
  v54 = v105;
  v17 = v99;
  v53 = v103;
  v33 = v109;
  v31 = v110;
  if (!v106)
  {
    return;
  }

LABEL_60:
  v55 = 3;
LABEL_61:
  v56 = &v10[8 * (v102 & 0x7FF)];
  v57 = *v56;
  v58 = v33 <= 0 || v31 <= 0;
  *(v57 + 213) = 1;
  *(v57 + 214) = v53 == 0;
  if (!v58)
  {
    *(v57 + 204) = v31;
    *(v57 + 206) = v33;
    *(v57 + 200) = v55;
    if (*(v57 + 220) == 4 && !webrtc::H26xPacketBuffer::FixH264Packet(v54, v57, a3, a4, v31, v33, v27, a8))
    {
      goto LABEL_80;
    }

    std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](v52, v56);
    v12 = v111;
    v10 = v112;
    v62 = v107;
    if (v53)
    {
      v63 = 0;
      while (1)
      {
        v64 = &v10[8 * ((v62 + v63) & 0x7FF)];
        v65 = *v64;
        *(*v64 + 213) = 0;
        *(v65 + 214) = v108 - 1 == v63;
        if (*(v65 + 220) == 4 && !webrtc::H26xPacketBuffer::FixH264Packet(v54, v65, a3, a4, v59, v60, v61, a8))
        {
          goto LABEL_80;
        }

        std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](v52, v64);
        ++v63;
        v62 = v107;
        v12 = v111;
        v10 = v112;
        if (v108 == v63)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

  *(v57 + 200) = v55;
  if (*(v57 + 220) == 4 && !webrtc::H26xPacketBuffer::FixH264Packet(v54, v57, a3, a4, v31, v33, v27, a8))
  {
    goto LABEL_80;
  }

  std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](v52, v56);
  v12 = v111;
  v10 = v112;
  v69 = v107;
  v70 = v108;
  if (!v53)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v71 = v69;
    v72 = &v10[8 * (v69 & 0x7FF)];
    v73 = *v72;
    *(*v72 + 213) = 0;
    v74 = v70;
    *(v73 + 214) = v70 == 1;
    if (*(v73 + 220) == 4 && (webrtc::H26xPacketBuffer::FixH264Packet(v54, v73, a3, a4, v66, v67, v68, a8) & 1) == 0)
    {
      break;
    }

    std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](v52, v72);
    v69 = v71 + 1;
    v70 = v74 - 1;
    v12 = v111;
    v10 = v112;
    if (v74 == 1)
    {
      goto LABEL_13;
    }
  }

LABEL_80:
  *(v52 + 24) = 1;
}

uint64_t webrtc::H26xPacketBuffer::FixH264Packet(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = 0x1000000;
  if (*(a2 + 1984) != 3)
  {
    std::__throw_bad_variant_access[abi:sn200100]();
LABEL_102:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc", 478, "!prepend_sps_pps || (sps != sps_data_.end() && pps != pps_data_.end())", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v74);
    return webrtc::H26xPacketBuffer::SetSpropParameterSets();
  }

  v80 = 0;
  v81 = 0uLL;
  if (*a1 != 1 || (v10 = *(a2 + 352), v9 = *(a2 + 360), v10 == v9))
  {
LABEL_47:
    v28 = *(a2 + 348);
    if (v28)
    {
      if (v28 != 2)
      {
        if (v28 != 1)
        {
LABEL_92:
          result = 0;
          v50 = v80;
          if (!v80)
          {
            return result;
          }

          goto LABEL_93;
        }

        v30 = (a2 + 24);
        v29 = *(a2 + 24);
        if (v29)
        {
          v29 = *(v29 + 16) + *(a2 + 32);
        }

        v31 = *(a2 + 40);
        if (v31 >= 3)
        {
          v32 = v29 + v31;
          v33 = v29 + v31 - 1;
          v34 = (v29 + 1);
          do
          {
            v36 = *v34;
            v35 = v34 + 2;
            v37 = __rev16(v36);
            v38 = &v35[v37];
            if (&v35[v37] <= v32)
            {
              webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, &v82, 4uLL);
              webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, v35, v37);
            }

            v34 = &v35[v37];
          }

          while (v38 < v33);
        }

        if (&v80 != v30)
        {
          v43 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit((v80 + 24), 1u, memory_order_relaxed);
          }

          v44 = *v30;
          if (*v30 && atomic_fetch_add((v44 + 24), 0xFFFFFFFF) == 1)
          {
            v45 = *(v44 + 16);
            *(v44 + 16) = 0;
            if (v45)
            {
              MEMORY[0x2743DA520](v45, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v44, 0x1010C40EE34DA14);
          }

          *(a2 + 24) = v43;
          *(a2 + 32) = v81;
        }

LABEL_85:
        result = 1;
        v50 = v80;
        if (!v80)
        {
          return result;
        }

LABEL_93:
        if (atomic_fetch_add((v50 + 24), 0xFFFFFFFF) == 1)
        {
          v72 = result;
          v73 = *(v50 + 16);
          *(v50 + 16) = 0;
          if (v73)
          {
            MEMORY[0x2743DA520](v73, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v50, 0x1010C40EE34DA14);
          return v72;
        }

        return result;
      }

      if (*(a2 + 352) != *(a2 + 360))
      {
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, &v82, 4uLL);
      }

      v40 = (a2 + 24);
      v39 = *(a2 + 24);
      if (v39)
      {
        v41 = (*(v39 + 16) + *(a2 + 32));
      }

      else
      {
        v41 = 0;
      }

      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, v41, *(a2 + 40));
      if (&v80 == v40)
      {
        goto LABEL_85;
      }
    }

    else
    {
      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, &v82, 4uLL);
      v40 = (a2 + 24);
      v42 = *(a2 + 24);
      if (v42)
      {
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, (*(v42 + 16) + *(a2 + 32)), *(a2 + 40));
        if (&v80 == v40)
        {
          goto LABEL_85;
        }
      }

      else
      {
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, 0, *(a2 + 40));
        if (&v80 == v40)
        {
          goto LABEL_85;
        }
      }
    }

    v46 = v80;
    if (v80)
    {
      atomic_fetch_add_explicit((v80 + 24), 1u, memory_order_relaxed);
    }

    v47 = *v40;
    if (v47 && atomic_fetch_add((v47 + 24), 0xFFFFFFFF) == 1)
    {
      v48 = *(v47 + 16);
      *(v47 + 16) = 0;
      if (v48)
      {
        MEMORY[0x2743DA520](v48, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v47, 0x1010C40EE34DA14);
    }

    *(a2 + 24) = v46;
    *(a2 + 32) = v81;
    goto LABEL_85;
  }

  v75 = 0;
  v11 = (a1 + 16472);
  v12 = (a1 + 16448);
  v13 = (a1 + 16472);
  v77 = (a1 + 16448);
  while (1)
  {
    v14 = *v10;
    if (v14 != 5)
    {
      if (v14 == 8)
      {
        v19 = *v77;
        if (!*v77)
        {
LABEL_24:
          operator new();
        }

        v20 = *(v10 + 2);
        while (1)
        {
          while (1)
          {
            v21 = v19;
            v22 = *(v19 + 8);
            if (v20 >= v22)
            {
              break;
            }

            v19 = *v21;
            if (!*v21)
            {
              goto LABEL_24;
            }
          }

          if (v22 >= v20)
          {
            break;
          }

          v19 = v21[1];
          if (!v19)
          {
            goto LABEL_24;
          }
        }

        *(v21 + 10) = *(v10 + 1);
      }

      else if (v14 == 7)
      {
        v15 = *v11;
        if (!*v11)
        {
LABEL_16:
          operator new();
        }

        v16 = *(v10 + 1);
        while (1)
        {
          while (1)
          {
            v17 = v15;
            v18 = *(v15 + 8);
            if (v16 >= v18)
            {
              break;
            }

            v15 = *v17;
            if (!*v17)
            {
              goto LABEL_16;
            }
          }

          if (v18 >= v16)
          {
            break;
          }

          v15 = v17[1];
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        *(v17 + 10) = *(a2 + 204);
        *(v17 + 11) = *(a2 + 206);
      }

      goto LABEL_6;
    }

    if (*(a2 + 213) == 1)
    {
      break;
    }

LABEL_6:
    v10 += 12;
    if (v10 == v9)
    {
      if ((v75 & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v13 != v11 && v12 != v77)
      {
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, &v82, 4uLL);
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, v13[7], v13[6]);
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, &v82, 4uLL);
        webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v80, v12[7], v12[6]);
        LOBYTE(v78) = 7;
        HIDWORD(v78) = *(v13 + 8);
        v79 = -1;
        std::vector<webrtc::NaluInfo>::push_back[abi:sn200100]((a2 + 352), &v78);
        LOBYTE(v78) = 8;
        v27 = *(v12 + 8);
        HIDWORD(v78) = *(v13 + 8);
        v79 = v27;
        std::vector<webrtc::NaluInfo>::push_back[abi:sn200100]((a2 + 352), &v78);
        goto LABEL_47;
      }

      goto LABEL_102;
    }
  }

  v23 = *(v10 + 2);
  if (v23 != -1)
  {
    v24 = *v77;
    if (!*v77)
    {
      goto LABEL_87;
    }

    v12 = (a1 + 16448);
    do
    {
      if (*(v24 + 32) >= v23)
      {
        v12 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v23));
    }

    while (v24);
    if (v12 == v77 || v23 < *(v12 + 8))
    {
LABEL_87:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_92;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
      goto LABEL_99;
    }

    v25 = *v11;
    if (!*v11)
    {
      goto LABEL_89;
    }

    v26 = *(v12 + 10);
    v13 = (a1 + 16472);
    do
    {
      if (*(v25 + 32) >= v26)
      {
        v13 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < v26));
    }

    while (v25);
    if (v13 == v11 || v26 < *(v13 + 8))
    {
LABEL_89:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_92;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v58, v59, v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
      goto LABEL_99;
    }

    *(a2 + 204) = *(v13 + 10);
    *(a2 + 206) = *(v13 + 11);
    if (v13[7])
    {
      v75 |= v12[7] != 0;
    }

    goto LABEL_6;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_92;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v65, v66, v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
LABEL_99:
  result = 0;
  v50 = v80;
  if (v80)
  {
    goto LABEL_93;
  }

  return result;
}

void webrtc::H26xPacketBuffer::SetSpropParameterSets(_BYTE *a1, void ***a2)
{
  if (*a1)
  {
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
    if (webrtc::H264SpropParameterSets::DecodeSprop(v15, a2))
    {
      webrtc::H26xPacketBuffer::InsertSpsPpsNalus(a1, v15, &__p[1], v3, v4, v5, v6, v7);
    }

    if (__p[1])
    {
      *&v17 = __p[1];
      operator delete(__p[1]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
  }
}

void webrtc::H26xPacketBuffer::InsertSpsPpsNalus(_BYTE *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc", 343, "h264_idr_only_keyframes_allowed_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v49);
LABEL_44:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v49);
    webrtc::HaltonFrameSampler::GetSampleCoordinatesForFrame(v47, v48);
    return;
  }

  v8 = a2[1] - *a2;
  if (!v8)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_34;
  }

  if ((**a2 & 0x1F) != 7)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_41:
    webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
    return;
  }

  if (a3[1] == *a3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_34:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
    return;
  }

  if ((**a3 & 0x1F) != 8)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_41;
  }

  v10 = v8 - 1;
  if (v8 - 1 >= v8)
  {
    v10 = a2[1] - *a2;
  }

  if (v8 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  webrtc::H264::ParseRbsp(v11, &__p);
  v16 = __p;
  v17 = v51 - __p;
  if (v51 == __p)
  {
    v16 = 0;
  }

  v54 = v16;
  if (((v17 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    goto LABEL_44;
  }

  LODWORD(v55) = 8 * v17;
  BYTE4(v55) = 1;
  webrtc::SpsParser::ParseSpsUpToVui(&v54, v53);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v18 = a3[1] - *a3;
  v19 = v18 - 1;
  if (v18 - 1 >= v18)
  {
    v19 = a3[1] - *a3;
  }

  if (v18 <= 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  webrtc::H264::ParseRbsp(v20, &v54);
  if (v55 == v54)
  {
    v25 = 0;
  }

  else
  {
    v25 = v54;
  }

  webrtc::PpsParser::ParseInternal(v25, v55 - v54, v21, v22, v23, v24, &__p);
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v53[56])
  {
    if (v52)
    {
      operator new[]();
    }

    goto LABEL_40;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/h26x_packet_buffer.cc");
  }

  if ((v52 & 1) == 0)
  {
LABEL_40:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_41;
  }
}

void *webrtc::HaltonFrameSampler::GetSampleCoordinatesForFrame(webrtc::HaltonFrameSampler *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 0)
  {
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 74, "num_samples >= 1", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a2);
  return std::vector<webrtc::HaltonFrameSampler::Coordinates>::push_back[abi:sn200100](v8, v9);
}

void *std::vector<webrtc::HaltonFrameSampler::Coordinates>::push_back[abi:sn200100](void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v4 = ((v2 - *result) >> 4) + 1;
    if (v4 >> 60)
    {
      goto LABEL_13;
    }

    v5 = v3 - *result;
    if (v5 >> 3 > v4)
    {
      v4 = v5 >> 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *v2 = *a2;
  result[1] = v2 + 1;
  return result;
}

void webrtc::GetFilteredElement(webrtc *this, unsigned int a2, uint64_t a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, uint64_t a7, double a8, uint64_t a9)
{
  if ((a5 & 0x80000000) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 108, "row >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a9, a5);
    goto LABEL_24;
  }

  if (a5 >= a2)
  {
LABEL_24:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 109, "row < height", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a9, a5);
    goto LABEL_25;
  }

  if ((a6 & 0x80000000) != 0)
  {
LABEL_25:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 110, "column >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a9, a6);
    goto LABEL_26;
  }

  if (a6 >= this)
  {
LABEL_26:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 111, "column < width", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a9, a6);
    goto LABEL_27;
  }

  if (a3 < this)
  {
LABEL_27:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 112, "stride >= width", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a9, a3);
    goto LABEL_28;
  }

  if (a8 <= 0.0)
  {
LABEL_28:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc", 113, "std_dev > 0.0", "\r\a\a\t", a5, a6, a7, a9, *&a8);
    webrtc::GetSampleValuesForFrame();
    return;
  }

  v10 = a8 * a8;
  v11 = (ceil(sqrt(v10 * 3.21887582)) + -1.0);
  if (v11 <= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a5 - v12) & ~((a5 - v12) >> 31);
  if (a5 + v12 + 1 < a2)
  {
    v14 = (a5 + v12 + 1);
  }

  else
  {
    v14 = a2;
  }

  v15 = 0.0;
  v16 = 0.0;
  if (v13 < v14)
  {
    v17 = (a6 - v12) & ~((a6 - v12) >> 31);
    v18 = a6 + v12;
    v19 = v18 + 1 < this ? (v18 + 1) : this;
    if (v17 < v19)
    {
      v20 = v10 + v10;
      v21 = a3;
      v22 = v19 - v17;
      v23 = (a4 + v17 + a3 * v13);
      v24 = a6 - v17;
      do
      {
        v25 = v24;
        v26 = v23;
        v27 = v22;
        do
        {
          v28 = exp(-((a5 - v13) * (a5 - v13) + v25 * v25) / v20);
          v29 = *v26++;
          v16 = v16 + v29 * v28;
          v15 = v15 + v28;
          --v25;
          --v27;
        }

        while (v27);
        ++v13;
        v23 += v21;
      }

      while (v13 != v14);
    }
  }
}

void webrtc::GetSampleValuesForFrame(void *a1@<X0>, double **a2@<X1>, webrtc::I420Buffer *a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  v8 = *a1;
  if (!v8)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v9 = a2[1];
  v10 = *a2;
  if (*a2 == v9)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  do
  {
    v14 = *v10;
    v13 = v10[1];
    v15 = v13 >= 0.0 && v13 < 1.0;
    if (!v15 || (v14 >= 0.0 ? (v16 = v14 < 1.0) : (v16 = 0), !v16))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_28;
      }

      v38 = "\r\t\a\t\a\t";
LABEL_27:
      webrtc::webrtc_logging_impl::Log(v38, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc");
      goto LABEL_28;
    }

    v10 += 2;
  }

  while (v10 != v9);
  if (a3 < 1 || a4 <= 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }

    v38 = webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
    goto LABEL_27;
  }

  if (a6 < 0.0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\a\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc");
    }

    goto LABEL_28;
  }

  v39 = a1;
  if ((*(*v8 + 40))(v8) >= a3 && (*(**v39 + 48))() >= a4)
  {
    webrtc::I420Buffer::Create(a3);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_22:
    webrtc::webrtc_logging_impl::Log("\r\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/halton_frame_sampler.cc");
  }

LABEL_28:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

void *std::vector<webrtc::FilteredSample>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void *std::vector<webrtc::FilteredSample>::push_back[abi:sn200100](void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v4 = ((v2 - *result) >> 4) + 1;
    if (v4 >> 60)
    {
      goto LABEL_13;
    }

    v5 = v3 - *result;
    if (v5 >> 3 > v4)
    {
      v4 = v5 >> 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *v2 = *a2;
  result[1] = v2 + 1;
  return result;
}

_DWORD *webrtc::HaltonSequence::GetNext@<X0>(_DWORD *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*this)
  {
    if ((*this & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  ++this[1];
  return this;
}

void *std::vector<double>::push_back[abi:sn200100](void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_13;
    }

    v6 = v2 - *result;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5)
    {
      v7 = (v4 >> 3) + 1;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t dcsctp::HeartbeatAckChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || *result != 5 || ((v3 = __rev16(*(result + 2)), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v6 = v3 - 4;
  if (v3 >= 5)
  {
    v7 = result + 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 5 && v3 != 4)
  {
    v9 = v3 - 4;
    v10 = v7;
    while (v9 >= 4)
    {
      v11 = __rev16(*(v10 + 2));
      if (v11 < 4 || v9 < v11)
      {
        break;
      }

      v13 = (v11 + 3) & 0xFFFC;
      v14 = v9 - v13;
      if (v9 >= v13)
      {
        if (v14 >= v9)
        {
          v14 = v9;
        }

        v10 += v13;
        v15 = v9 > v13;
        if (v9 <= v13)
        {
          v10 = 0;
        }

        v9 = v14;
        if (v15)
        {
          continue;
        }
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_11;
  }

  *a3 = &unk_288294210;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void dcsctp::HeartbeatAckChunk::~HeartbeatAckChunk(dcsctp::HeartbeatAckChunk *this)
{
  *this = &unk_288294210;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288294210;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::HeartbeatAckChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = v11 + 4;
  v16 = v14 + v11 + 4;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      a2[1] = v13 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v11 + 4);
    v13 = *a2;
  }

  v17 = (v13 + v14);
  *v17 = 5;
  v17[2] = HIBYTE(v15);
  v17[3] = v15;
  if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
    dcsctp::HeartbeatAckChunk::ToString(v19);
  }

  else if (v9 && v10 != v9)
  {
    v18 = (*a2 + v14 + 4);

    memcpy(v18, v12, v10 - v9);
  }
}

void dcsctp::HeartbeatAckChunk::ToString(char *a1@<X8>)
{
  a1[23] = 13;
  if (a1 <= "HEARTBEAT-ACK" && a1 + 13 > "HEARTBEAT-ACK")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "HEARTBEAT-ACK");
  }
}

void dcsctp::HeartbeatHandler::HeartbeatHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  v6 = *(a4 + 116);
  if (v6 == 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1000 * v6;
  }

  *(a1 + 32) = v7;
  *(a1 + 40) = *(a4 + 182);
  operator new();
}

uint64_t dcsctp::HeartbeatHandler::OnIntervalTimerExpiry(dcsctp::HeartbeatHandler *this)
{
  if ((*(**(this + 2) + 16))(*(this + 2)))
  {
    v2 = (*(**(this + 2) + 40))(*(this + 2));
    (*(*v2 + 56))(v2);
    v3 = *(this + 7);
    v4 = (*(**(this + 2) + 56))(*(this + 2));
    v5 = 86400000000;
    if (v4 < 86400000000)
    {
      v5 = v4;
    }

    *(v3 + 144) = v5;
    dcsctp::Timer::Start(*(this + 7));
    operator new();
  }

  return 0;
}

void dcsctp::HeartbeatHandler::HandleHeartbeatAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 56);
  if (*(v10 + 156) == 1)
  {
    (*(**(v10 + 136) + 24))(*(v10 + 136));
    *(v10 + 160) = 0;
    *(v10 + 156) = 0;
  }

  dcsctp::Parameters::descriptors((a2 + 8), a5, a6, a7, a8, &v37);
  if (v37 == v38)
  {
LABEL_7:
    v12 = 1;
    if (!v37)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = v37;
  while (*v11 != 1)
  {
    v11 += 3;
    if (v11 == v38)
    {
      goto LABEL_7;
    }
  }

  v13 = v11[2];
  if (v13 < 4 || (v14 = v11[1], __rev16(*v14) != 1) || ((v15 = __rev16(v14[1]), v15 >= 4) ? (v16 = v13 >= v15) : (v16 = 0), v16 ? (v17 = v13 - v15 >= 4) : (v17 = 1), v17))
  {
    v12 = 0;
    v36 = 0;
    if (!v37)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v39 = &unk_288294288;
  v40 = 0;
  if (v15 <= 4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v15 - 4;
  }

  v41 = 0;
  v42 = 0;
  if (v33)
  {
    if ((v33 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = 0;
  __p = 0;
  v35 = 0;
  v36 = 1;
  if (v37)
  {
LABEL_20:
    v38 = v37;
    operator delete(v37);
  }

LABEL_21:
  if (v12)
  {
    v36 = 0;
    goto LABEL_37;
  }

  if ((v36 & 1) == 0)
  {
LABEL_37:
    v24 = (*(**(a1 + 16) + 40))(*(a1 + 16));
    (*(*v24 + 96))(v24, 3, "Failed to parse HEARTBEAT-ACK; No Heartbeat Info parameter", 58);
    if (v36 != 1)
    {
      return;
    }

    goto LABEL_38;
  }

  v18 = __p;
  if (v35 - __p == 8)
  {
    if (v35 == __p)
    {
      v18 = 0;
    }

    v19 = 1000 * bswap64(*v18);
    v20 = (*(**(a1 + 16) + 40))(*(a1 + 16));
    v21 = (*(*v20 + 56))(v20);
    if (v19 >= 1 && v21 >= v19)
    {
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21 - v19;
      }

      (*(**(a1 + 16) + 48))(*(a1 + 16), v23);
    }

    (*(**(a1 + 16) + 72))(*(a1 + 16));
    if (v36 != 1)
    {
      return;
    }

LABEL_38:
    if (__p)
    {
      operator delete(__p);
    }

    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/net/dcsctp/socket/heartbeat_handler.cc");
  }

  v32 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  (*(*v32 + 96))(v32, 3, "Failed to parse HEARTBEAT-ACK; Failed to deserialized Heartbeat info parameter", 78);
  if (v36 == 1)
  {
    goto LABEL_38;
  }
}

__n128 std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::HeartbeatHandler::*)(void),dcsctp::HeartbeatHandler*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::HeartbeatHandler::*)(void),dcsctp::HeartbeatHandler*>>,webrtc::TimeDelta ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288294240;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::HeartbeatHandler::*)(void),dcsctp::HeartbeatHandler*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::HeartbeatHandler::*)(void),dcsctp::HeartbeatHandler*>>,webrtc::TimeDelta ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void dcsctp::HeartbeatInfoParameter::~HeartbeatInfoParameter(dcsctp::HeartbeatInfoParameter *this)
{
  *this = &unk_288294288;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288294288;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::HeartbeatInfoParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) - *(a1 + 8);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 4;
  v14 = v12 + v10 + 4;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 4);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 256;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::HeartbeatInfoParameter::ToString(v21);
  }

  else
  {
    v16 = *(a1 + 16) - *(a1 + 8);
    if (v16)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    if (v10 >= v16)
    {
      v18 = *(a1 + 16) - *(a1 + 8);
    }

    else
    {
      v18 = v10;
    }

    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = (*a2 + v12 + 4);

      memcpy(v20, v17, v18);
    }
  }
}

uint64_t dcsctp::HeartbeatRequestChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || *result != 4 || ((v3 = __rev16(*(result + 2)), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v6 = v3 - 4;
  if (v3 >= 5)
  {
    v7 = result + 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 >= 5 && v3 != 4)
  {
    v9 = v3 - 4;
    v10 = v7;
    while (v9 >= 4)
    {
      v11 = __rev16(*(v10 + 2));
      if (v11 < 4 || v9 < v11)
      {
        break;
      }

      v13 = (v11 + 3) & 0xFFFC;
      v14 = v9 - v13;
      if (v9 >= v13)
      {
        if (v14 >= v9)
        {
          v14 = v9;
        }

        v10 += v13;
        v15 = v9 > v13;
        if (v9 <= v13)
        {
          v10 = 0;
        }

        v9 = v14;
        if (v15)
        {
          continue;
        }
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_11;
  }

  *a3 = &unk_2882942B8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void dcsctp::HeartbeatRequestChunk::~HeartbeatRequestChunk(dcsctp::HeartbeatRequestChunk *this)
{
  *this = &unk_2882942B8;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882942B8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::HeartbeatRequestChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = v11 + 4;
  v16 = v14 + v11 + 4;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      a2[1] = v13 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v11 + 4);
    v13 = *a2;
  }

  v17 = (v13 + v14);
  *v17 = 4;
  v17[2] = HIBYTE(v15);
  v17[3] = v15;
  if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
    dcsctp::HeartbeatRequestChunk::ToString(v19);
  }

  else if (v9 && v10 != v9)
  {
    v18 = (*a2 + v14 + 4);

    memcpy(v18, v12, v10 - v9);
  }
}

void dcsctp::HeartbeatRequestChunk::ToString(char *a1@<X8>)
{
  a1[23] = 9;
  if (a1 <= "HEARTBEAT" && a1 + 9 > "HEARTBEAT")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "HEARTBEAT");
  }
}

void SetVTSessionProperty(OpaqueVTCompressionSession *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  LODWORD(a1) = VTSessionSetProperty(a1, a2, v5);
  CFRelease(v5);
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    Length = CFStringGetLength(a2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }
}

void SetVTSessionProperty(OpaqueVTCompressionSession *a1, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  LODWORD(a1) = VTSessionSetProperty(a1, a2, v5);
  CFRelease(v5);
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    Length = CFStringGetLength(a2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }
}

void SetVTSessionProperty(OpaqueVTCompressionSession *a1, const __CFString *a2, unsigned int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  LODWORD(a1) = VTSessionSetProperty(a1, a2, v5);
  CFRelease(v5);
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    Length = CFStringGetLength(a2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }
}

uint64_t SetVTSessionProperty(OpaqueVTCompressionSession *a1, const __CFString *a2, int a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = VTSessionSetProperty(a1, a2, *v4);
  if (result)
  {
    memset(&v7, 0, sizeof(v7));
    Length = CFStringGetLength(a2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return result;
}

uint64_t SetVTSessionProperty(OpaqueVTCompressionSession *a1, const __CFString *a2, const __CFString *a3)
{
  result = VTSessionSetProperty(a1, a2, a3);
  if (result)
  {
    memset(&v6, 0, sizeof(v6));
    Length = CFStringGetLength(a2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return result;
}

webrtc::HighPassFilter *webrtc::HighPassFilter::HighPassFilter(webrtc::HighPassFilter *this, int a2, unint64_t a3)
{
  *this = a2;
  *(this + 1) = 0;
  v4 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a3)
  {
    std::vector<std::unique_ptr<webrtc::CascadedBiQuadFilter>>::__append(v4, a3);
    if (*(this + 2) != *(this + 1))
    {
      operator new();
    }
  }

  return this;
}

void std::vector<std::unique_ptr<webrtc::CascadedBiQuadFilter>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v3) >> 3)
  {
    v5 = (v3 - *a1) >> 3;
    v6 = v5 + a2;
    if (!((v5 + a2) >> 61))
    {
      v7 = v4 - *a1;
      if (v7 >> 2 > v6)
      {
        v6 = v7 >> 2;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (!(v8 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 8 * v5;
      v12 = 8 * a2;
      v13 = 8 * v5 + 8 * a2;
      v14 = (8 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        *v14++ = 0;
        v12 -= 8;
      }

      while (v12);
      v15 = *a1;
      v16 = *(a1 + 8) - *a1;
      v17 = v11 - v16;
      memcpy((v11 - v16), *a1, v16);
      *a1 = v17;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v15)
      {

        operator delete(v15);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = 8 * a2;
  v10 = &v3[a2];
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v3++ = 0;
    v9 -= 8;
  }

  while (v9);
  v3 = v10;
LABEL_16:
  *(a1 + 8) = v3;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v3) >> 3)
  {
    v5 = (v3 - *a1) >> 3;
    v6 = v5 + a2;
    if (!((v5 + a2) >> 61))
    {
      v7 = v4 - *a1;
      if (v7 >> 2 > v6)
      {
        v6 = v7 >> 2;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        if (!(v8 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = 8 * v5;
      v12 = 8 * a2;
      v13 = 8 * v5 + 8 * a2;
      v14 = (8 * v5);
      do
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        *v14++ = 0;
        v12 -= 8;
      }

      while (v12);
      v15 = *a1;
      v16 = *(a1 + 8) - *a1;
      v17 = v11 - v16;
      memcpy((v11 - v16), *a1, v16);
      *a1 = v17;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v15)
      {

        operator delete(v15);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = 8 * a2;
  v10 = &v3[a2];
  do
  {
    if (!v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v3++ = 0;
    v9 -= 8;
  }

  while (v9);
  v3 = v10;
LABEL_16:
  *(a1 + 8) = v3;
}

void webrtc::Histogram::~Histogram(webrtc::Histogram *this)
{
  *this = &unk_2882942E8;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882942E8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::Histogram::Add(uint64_t this, int a2)
{
  v3 = *(this + 8);
  v2 = *(this + 16);
  if (v3 != v2)
  {
    v4 = (this + 32);
    v5 = v2 - v3 - 4;
    if (v5 > 0x1B && (v3 < this + 36 ? (v6 = v4 >= v2) : (v6 = 1), v6))
    {
      v7 = (v5 >> 2) + 1;
      v8 = (v3 + 4 * (v7 & 0x7FFFFFFFFFFFFFF8));
      v9 = vld1_dup_f32(v4);
      v10 = v9.i32[0];
      v11 = v9.i32[1];
      v12 = v3 + 16;
      v13 = 0uLL;
      v14 = v11;
      v15 = v10;
      v16 = v10;
      v17 = v7 & 0x7FFFFFFFFFFFFFF8;
      v18 = 0uLL;
      do
      {
        v19.i64[0] = v16 * *(v12 - 8);
        v19.i64[1] = v14 * HIDWORD(*(v12 - 16));
        v20.i64[0] = v16 * *(v12 - 16);
        v20.i64[1] = v14 * HIDWORD(*(v12 - 16));
        v21.i64[0] = v16 * *(v12 + 8);
        v21.i64[1] = v14 * HIDWORD(*v12);
        v22.i64[0] = v15 * *v12;
        v22.i64[1] = v14 * HIDWORD(*v12);
        v23 = vshrn_high_n_s64(vshrn_n_s64(v20, 0xFuLL), v19, 0xFuLL);
        v24 = vshrn_high_n_s64(vshrn_n_s64(v22, 0xFuLL), v21, 0xFuLL);
        *(v12 - 16) = v23;
        *v12 = v24;
        v13 = vaddq_s32(v13, v23);
        v18 = vaddq_s32(v18, v24);
        v12 += 32;
        v17 -= 8;
      }

      while (v17);
      v25 = vaddvq_s32(vaddq_s32(v18, v13));
      if (v7 == (v7 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_14:
        v27 = a2;
        if (a2 < ((v2 - v3) >> 2))
        {
          goto LABEL_15;
        }

LABEL_50:
        __break(1u);
        return this;
      }
    }

    else
    {
      v25 = 0;
      v8 = *(this + 8);
    }

    do
    {
      v26 = (*v4 * *v8) >> 15;
      *v8++ = v26;
      v25 += v26;
    }

    while (v8 != v2);
    goto LABEL_14;
  }

  v25 = 0;
  v27 = a2;
  if (a2 >= ((v2 - v3) >> 2))
  {
    goto LABEL_50;
  }

LABEL_15:
  *(v3 + 4 * v27) = *(v3 + 4 * v27) - (*(this + 32) << 15) + 0x40000000;
  v28 = v25 - (*(this + 32) << 15);
  if (v25 != *(this + 32) << 15 && v3 != v2)
  {
    v30 = v3 + 4;
    if (v28 < 1)
    {
      do
      {
        if (v28 >= 0)
        {
          v34 = v28;
        }

        else
        {
          v34 = -v28;
        }

        v35 = *(v30 - 4);
        if (v35 >> 4 < v34)
        {
          v34 = v35 >> 4;
        }

        *(v30 - 4) = v34 + v35;
        v28 += v34;
        if (v28)
        {
          v36 = v30 == v2;
        }

        else
        {
          v36 = 1;
        }

        v30 += 4;
      }

      while (!v36);
    }

    else
    {
      do
      {
        if (v28 >= 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = -v28;
        }

        v32 = *(v30 - 4);
        if (v32 >> 4 < v31)
        {
          v31 = v32 >> 4;
        }

        *(v30 - 4) = v32 - v31;
        v28 -= v31;
        if (v28)
        {
          v33 = v30 == v2;
        }

        else
        {
          v33 = 1;
        }

        v30 += 4;
      }

      while (!v33);
    }
  }

  v37 = *(this + 40);
  *(this + 40) = v37 + 1;
  if (*(this + 56) == 1)
  {
    v38 = *(this + 36);
    if (*(this + 32) == v38)
    {
      return this;
    }

    v39 = vcvtd_n_s64_f64(1.0 - *(this + 48) / (v37 + 2), 0xFuLL);
    if (v38 < v39)
    {
      v39 = *(this + 36);
    }

    v40 = v39 & ~(v39 >> 31);
  }

  else
  {
    v40 = *(this + 32) + ((*(this + 36) - *(this + 32) + 3) >> 2);
  }

  *(this + 32) = v40;
  return this;
}

uint64_t webrtc::Histogram::Quantile(uint64_t this, int a2)
{
  v2 = *(this + 8);
  v3 = *(this + 16) - v2;
  if (v3)
  {
    v4 = v3 >> 2;
    v5 = *v2;
    v6 = (v3 >> 2) - 1;
    if (v6)
    {
      v7 = v5 < a2;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = 0x40000000 - v5;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v9 = 1;
    while (v4 != v9)
    {
      v10 = v9 + 1;
      if (v9 < v6)
      {
        v8 -= v2[v9++];
        if (v8 > 0x40000000 - a2)
        {
          continue;
        }
      }

      return (v10 - 1);
    }
  }

  __break(1u);
  return this;
}

uint64_t webrtc::Histogram::Reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  if (v1 != v2)
  {
    v3 = 16386;
    do
    {
      v3 >>= 1;
      *v1++ = v3 << 16;
    }

    while (v1 != v2);
  }

  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t webrtc::HistogramPercentileCounter::Add(uint64_t this, unsigned int a2, uint64_t a3)
{
  if (*(this + 48) <= a2)
  {
    v4 = *(this + 32);
    if (!v4)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = *(v4 + 32);
        if (v6 <= a2)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_10;
        }
      }

      if (v6 >= a2)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    v3 = v5 + 5;
    goto LABEL_12;
  }

  if (a2 < ((*(this + 8) - *this) >> 3))
  {
    *(*this + 8 * a2) += a3;
    v3 = (this + 64);
LABEL_12:
    *v3 += a3;
    *(this + 56) += a3;
    return this;
  }

  __break(1u);
  return this;
}

void webrtc::I010Buffer::Copy(webrtc::I010Buffer *this, const webrtc::I420BufferInterface *a2)
{
  (*(*this + 40))(this, a2);
  (*(*this + 48))(this);
  webrtc::make_ref_counted<webrtc::I010Buffer,int &,int &,int &,int,int,(webrtc::I010Buffer*)0>();
}

void webrtc::I010Buffer::ToI420(webrtc::I010Buffer *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

BOOL webrtc::RefCountedObject<webrtc::I010Buffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::I010Buffer>::~RefCountedObject(void *result)
{
  *result = &unk_288294328;
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    v2 = result;
    free(*(v1 - 8));
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::I010Buffer>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288294328;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    free(*(v2 - 8));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

webrtc::I420Buffer *webrtc::I420Buffer::I420Buffer(webrtc::I420Buffer *this, webrtc *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  *this = &unk_288294490;
  *(this + 2) = a2;
  *(this + 3) = a3;
  v11 = ((a2 + 1) / 2);
  *(this + 4) = a2;
  *(this + 5) = v11;
  *(this + 6) = v11;
  webrtc::CheckValidDimensions(a2, a3, a2, v11, v11, a6, a7, a8);
  v16 = 2 * ((v8 + 1) / 2) * v11 + v8 * v9;
  if ((v16 < 0xFFFFFFFF80000000) | (2 * (v16 > 0x7FFFFFFF)))
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v25);
    goto LABEL_7;
  }

  v17 = v16 << 32;
  if (v17)
  {
    v18 = malloc_type_malloc((v17 >> 32) + 71, 0x100004000313F17uLL);
    if (v18)
    {
      v17 = (v18 + 71) & 0xFFFFFFFFFFFFFFC0;
      *(v17 - 8) = v18;
      goto LABEL_5;
    }

LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/memory/aligned_malloc.cc", 66, "memory_pointer", "\t", v19, v20, v21, v22, "Couldn't allocate memory in AlignedMalloc");
    webrtc::I420Buffer::~I420Buffer(v24);
  }

LABEL_5:
  *(this + 4) = v17;
  return this;
}

uint64_t webrtc::I420Buffer::Rotate@<X0>(uint64_t a1@<X0>, int a2@<W1>, webrtc::I420Buffer *a3@<X8>)
{
  if (!(*(*a1 + 136))(a1))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 117, "src.DataY()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v36);
    goto LABEL_10;
  }

  if (!(*(*a1 + 144))(a1))
  {
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 118, "src.DataU()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v10, v11, v12, v13, v36);
    goto LABEL_11;
  }

  if ((*(*a1 + 152))(a1))
  {
    v18 = (*(*a1 + 40))(a1);
    v19 = (*(*a1 + 48))(a1);
    if (a2 != 270 && a2 != 90)
    {
      v19 = v18;
    }

    webrtc::I420Buffer::Create(v19);
  }

LABEL_11:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 119, "src.DataV()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v14, v15, v16, v17, v36);
  v40 = (*(*a1 + 136))(a1);
  v39 = (*(*a1 + 112))(a1);
  v38 = (*(*a1 + 144))(a1);
  v37 = (*(*a1 + 120))(a1);
  v20 = (*(*a1 + 152))(a1);
  v21 = (*(*a1 + 128))(a1);
  v22 = webrtc::I420Buffer::MutableDataY(a3);
  v23 = (*(*a3 + 112))(a3);
  v24 = webrtc::I420Buffer::MutableDataU(a3);
  v25 = (*(*a3 + 120))(a3);
  v26 = webrtc::I420Buffer::MutableDataV(a3);
  v27 = (*(*a3 + 128))(a3);
  v28 = (*(*a1 + 40))(a1);
  v29 = (*(*a1 + 48))(a1);
  I420Rotate(v40, v39, v38, v37, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v41);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 136, "0 == libyuv::I420Rotate( src.DataY(), src.StrideY(), src.DataU(), src.StrideU(), src.DataV(), src.StrideV(), buffer->MutableDataY(), buffer->StrideY(), buffer->MutableDataU(), buffer->StrideU(), buffer->MutableDataV(), buffer->StrideV(), src.width(), src.height(), static_cast<libyuv::RotationMode>(rotation))", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v30, v31, v32, v33, 0);
  return webrtc::I420Buffer::width(v34);
}

uint64_t webrtc::I420Buffer::SetBlack(webrtc::I420Buffer *this, webrtc::I420Buffer *a2)
{
  v3 = (*(*this + 136))(this, a2);
  v4 = (*(*this + 112))(this);
  v5 = (*(*this + 144))(this);
  v6 = (*(*this + 120))(this);
  v7 = (*(*this + 152))(this);
  v8 = (*(*this + 128))(this);
  v9 = (*(*this + 40))(this);
  v10 = (*(*this + 48))(this);
  result = I420Rect(v3, v4, v5, v6, v7, v8, 0, 0, v9, v10, 0, 0x80u, 128);
  if (result)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 190, "libyuv::I420Rect(buffer->MutableDataY(), buffer->StrideY(), buffer->MutableDataU(), buffer->StrideU(), buffer->MutableDataV(), buffer->StrideV(), 0, 0, buffer->width(), buffer->height(), 0, 128, 128) == 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v22);
    return webrtc::I420Buffer::CropAndScaleFrom(v16, v17, v18, v19, v20, v21);
  }

  return result;
}

uint64_t webrtc::I420Buffer::CropAndScaleFrom(webrtc::I420Buffer *this, const webrtc::I420BufferInterface *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(*a2 + 40))(a2);
  v14 = *a2;
  if (v13 < a5)
  {
    (*(v14 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 198, "crop_width <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v34, v35, v36, v37, a5);
    goto LABEL_9;
  }

  if ((*(v14 + 48))(a2) < a6)
  {
LABEL_9:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 199, "crop_height <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v38, v39, v40, v41, a6);
    goto LABEL_10;
  }

  v6 = (a5 + a3);
  if (v6 > (*(*a2 + 40))(a2))
  {
LABEL_10:
    (*(*a2 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 200, "crop_width + offset_x <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v42, v43, v44, v45, v6);
    goto LABEL_11;
  }

  v6 = (a6 + a4);
  if (v6 > (*(*a2 + 48))(a2))
  {
LABEL_11:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 201, "crop_height + offset_y <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v46, v47, v48, v49, v6);
    goto LABEL_12;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_12:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 202, "offset_x >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a3);
    goto LABEL_13;
  }

  v58 = a5;
  v59 = a6;
  if ((a4 & 0x80000000) == 0)
  {
    v57 = a3 >> 1;
    v19 = a4 >> 1;
    v56 = a3 & 0x7FFFFFFE;
    v20 = a4 & 0x7FFFFFFE;
    v21 = (*(*a2 + 136))(a2);
    v55 = v21 + ((*(*a2 + 112))(a2) * v20);
    v22 = (*(*a2 + 144))(a2);
    v54 = v22 + v19 * (*(*a2 + 120))(a2);
    v23 = (*(*a2 + 152))(a2);
    v53 = v23 + v19 * (*(*a2 + 128))(a2);
    v52 = (*(*a2 + 112))(a2);
    v24 = (*(*a2 + 120))(a2);
    v25 = (*(*a2 + 128))(a2);
    v26 = (*(*this + 136))(this);
    v27 = (*(*this + 112))(this);
    v28 = (*(*this + 144))(this);
    v29 = (*(*this + 120))(this);
    v30 = (*(*this + 152))(this);
    v31 = (*(*this + 128))(this);
    LODWORD(v23) = (*(*this + 40))(this);
    v32 = (*(*this + 48))(this);
    return I420Scale((v55 + v56), v52, (v54 + v57), v24, (v53 + v57), v25, v58, v59, v26, v27, v28, v29, v30, v31, v23, v32, 3);
  }

LABEL_13:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i420_buffer.cc", 203, "offset_y >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a4);
  return webrtc::I420Buffer::ScaleFrom(v50, v51);
}

uint64_t webrtc::I420Buffer::ScaleFrom(webrtc::I420Buffer *this, const webrtc::I420BufferInterface *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*a2 + 48))(a2);

  return webrtc::I420Buffer::CropAndScaleFrom(this, a2, 0, 0, v4, v5);
}

BOOL webrtc::RefCountedObject<webrtc::I420Buffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::I420Buffer>::~RefCountedObject(void *result)
{
  *result = &unk_288294490;
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    v2 = result;
    free(*(v1 - 8));
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::I420Buffer>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288294490;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    free(*(v2 - 8));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::I422Buffer::ToI420(webrtc::I422Buffer *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

uint64_t webrtc::I422Buffer::CropAndScaleFrom(webrtc::I422Buffer *this, const webrtc::I422BufferInterface *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(*a2 + 40))(a2);
  v14 = *a2;
  if (v13 < a5)
  {
    (*(v14 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 217, "crop_width <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v32, v33, v34, v35, a5);
    goto LABEL_9;
  }

  if ((*(v14 + 48))(a2) < a6)
  {
LABEL_9:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 218, "crop_height <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v36, v37, v38, v39, a6);
    goto LABEL_10;
  }

  v6 = (a5 + a3);
  if (v6 > (*(*a2 + 40))(a2))
  {
LABEL_10:
    (*(*a2 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 219, "crop_width + offset_x <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v40, v41, v42, v43, v6);
    goto LABEL_11;
  }

  v6 = (a6 + a4);
  if (v6 > (*(*a2 + 48))(a2))
  {
LABEL_11:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 220, "crop_height + offset_y <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v44, v45, v46, v47, v6);
    goto LABEL_12;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_12:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 221, "offset_x >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a3);
    goto LABEL_13;
  }

  v55 = a5;
  v56 = a6;
  if ((a4 & 0x80000000) == 0)
  {
    v54 = a3 >> 1;
    v53 = a3 & 0x7FFFFFFE;
    v19 = (*(*a2 + 136))(a2);
    v52 = v19 + (*(*a2 + 112))(a2) * a4;
    v20 = (*(*a2 + 144))(a2);
    v51 = v20 + (*(*a2 + 120))(a2) * a4;
    v21 = (*(*a2 + 152))(a2);
    v50 = v21 + (*(*a2 + 128))(a2) * a4;
    v49 = (*(*a2 + 112))(a2);
    LODWORD(v21) = (*(*a2 + 120))(a2);
    v22 = (*(*a2 + 128))(a2);
    v23 = (*(*this + 136))(this);
    v24 = (*(*this + 112))(this);
    v25 = (*(*this + 144))(this);
    v26 = (*(*this + 120))(this);
    v27 = (*(*this + 152))(this);
    v28 = (*(*this + 128))(this);
    v29 = (*(*this + 40))(this);
    v30 = (*(*this + 48))(this);
    return I422Scale((v52 + v53), v49, (v51 + v54), v21, (v50 + v54), v22, v55, v56, v23, v24, v25, v26, v27, v28, v29, v30, 3);
  }

LABEL_13:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i422_buffer.cc", 222, "offset_y >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a4);
  return webrtc::I422Buffer::GetI420(v48);
}

BOOL webrtc::RefCountedObject<webrtc::I422Buffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::I422Buffer>::~RefCountedObject(void *result)
{
  *result = &unk_2882945F8;
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    v2 = result;
    free(*(v1 - 8));
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::I422Buffer>::~RefCountedObject(void *a1)
{
  *a1 = &unk_2882945F8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    free(*(v2 - 8));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::I444Buffer::ToI420(webrtc::I444Buffer *this)
{
  v2 = (*(*this + 40))(this);
  (*(*this + 48))(this);
  webrtc::I420Buffer::Create(v2);
}

uint64_t webrtc::I444Buffer::CropAndScaleFrom(webrtc::I444Buffer *this, const webrtc::I444BufferInterface *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(*a2 + 40))(a2);
  v14 = *a2;
  if (v13 < a5)
  {
    (*(v14 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 198, "crop_width <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v33, v34, v35, v36, a5);
    goto LABEL_9;
  }

  if ((*(v14 + 48))(a2) < a6)
  {
LABEL_9:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 199, "crop_height <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v37, v38, v39, v40, a6);
    goto LABEL_10;
  }

  v6 = (a5 + a3);
  if (v6 > (*(*a2 + 40))(a2))
  {
LABEL_10:
    (*(*a2 + 40))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 200, "crop_width + offset_x <= src.width()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v41, v42, v43, v44, v6);
    goto LABEL_11;
  }

  v6 = (a6 + a4);
  if (v6 > (*(*a2 + 48))(a2))
  {
LABEL_11:
    (*(*a2 + 48))(a2);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 201, "crop_height + offset_y <= src.height()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v45, v46, v47, v48, v6);
    goto LABEL_12;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_12:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 202, "offset_x >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a3);
    goto LABEL_13;
  }

  v55 = a5;
  v56 = a6;
  if ((a4 & 0x80000000) == 0)
  {
    v19 = (*(*a2 + 136))(a2);
    v54 = v19 + (*(*a2 + 112))(a2) * a4;
    v20 = a3;
    v21 = (*(*a2 + 144))(a2);
    v53 = v21 + (*(*a2 + 120))(a2) * a4;
    v22 = (*(*a2 + 152))(a2);
    v52 = v22 + (*(*a2 + 128))(a2) * a4;
    v51 = (*(*a2 + 112))(a2);
    v50 = (*(*a2 + 120))(a2);
    v23 = (*(*a2 + 128))(a2);
    v24 = (*(*this + 136))(this);
    v25 = (*(*this + 112))(this);
    v26 = (*(*this + 144))(this);
    v27 = (*(*this + 120))(this);
    v28 = (*(*this + 152))(this);
    v29 = (*(*this + 128))(this);
    v30 = (*(*this + 40))(this);
    v31 = (*(*this + 48))(this);
    return I444Scale((v54 + v20), v51, (v53 + v20), v50, (v52 + v20), v23, v55, v56, v24, v25, v26, v27, v28, v29, v30, v31, 3);
  }

LABEL_13:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/i444_buffer.cc", 203, "offset_y >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v15, v16, v17, v18, a4);
  return webrtc::I444Buffer::GetI420(v49);
}

BOOL webrtc::RefCountedObject<webrtc::I444Buffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::I444Buffer>::~RefCountedObject(void *result)
{
  *result = &unk_288294760;
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    v2 = result;
    free(*(v1 - 8));
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::I444Buffer>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288294760;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    free(*(v2 - 8));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::IceCredentialsIterator::~IceCredentialsIterator(webrtc::IceCredentialsIterator *this)
{
  *this = &unk_2882948C8;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 == v2)
    {
LABEL_11:
      *(this + 2) = v2;
      operator delete(v4);
      return;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(this + 1);
        goto LABEL_11;
      }
    }
  }
}

{
  *this = &unk_2882948C8;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(this + 2);
  v4 = *(this + 1);
  if (v3 == v2)
  {
LABEL_11:
    *(this + 2) = v2;
    operator delete(v4);
LABEL_12:

    JUMPOUT(0x2743DA540);
  }

  while (1)
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      v5 = v3 - 7;
      if (*(v3 - 33) < 0)
      {
LABEL_9:
        operator delete(*v5);
      }
    }

    else
    {
      v5 = v3 - 7;
      if (*(v3 - 33) < 0)
      {
        goto LABEL_9;
      }
    }

    v3 = v5;
    if (v5 == v2)
    {
      v4 = *(this + 1);
      goto LABEL_11;
    }
  }
}

void webrtc::IceCredentialsIterator::CreateRandomIceCredentials(_BYTE *a1@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, __p);
    webrtc::IceCredentialsIterator::GetIceCredentials(v14);
    return;
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = &v18;
  }

  else
  {
    v10 = v8;
  }

  if ((v7 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v17 >= 0)
  {
    v13 = HIBYTE(v17);
  }

  else
  {
    v13 = v16;
  }

  webrtc::IceParameters::IceParameters(a1, v10, v11, p_p, v13, 0);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v18);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_19;
  }
}

void webrtc::IceCredentialsIterator::GetIceCredentials(webrtc::IceCredentialsIterator *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 2);
  if (*(this + 1) != v2)
  {
    if (*(v2 - 33) < 0)
    {
      v7 = a2;
      std::string::__init_copy_ctor_external(a2, *(v2 - 7), *(v2 - 6));
      a2 = v7;
      if ((*(v2 - 9) & 0x80000000) == 0)
      {
LABEL_4:
        v5 = *(v2 - 2);
        a2[1].__r_.__value_.__r.__words[2] = *(v2 - 2);
        *&a2[1].__r_.__value_.__l.__data_ = v5;
        a2[2].__r_.__value_.__s.__data_[0] = *(v2 - 8);
        v6 = *(this + 2);
        if (*(this + 1) != v6)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v4 = *(v2 - 7);
      a2->__r_.__value_.__r.__words[2] = *(v2 - 5);
      *&a2->__r_.__value_.__l.__data_ = v4;
      if ((*(v2 - 9) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    v8 = a2;
    std::string::__init_copy_ctor_external(a2 + 1, *(v2 - 4), *(v2 - 3));
    v8[2].__r_.__value_.__s.__data_[0] = *(v2 - 8);
    v6 = *(this + 2);
    if (*(this + 1) != v6)
    {
LABEL_5:
      v2 = (v6 - 56);
      if ((*(v6 - 9) & 0x80000000) == 0)
      {
        if ((*(v6 - 33) & 0x80000000) == 0)
        {
LABEL_7:
          *(this + 2) = v2;
          return;
        }

        goto LABEL_15;
      }

LABEL_14:
      operator delete(*(v6 - 32));
      if ((*(v6 - 33) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      operator delete(*v2);
      *(this + 2) = v2;
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  webrtc::IceCredentialsIterator::CreateRandomIceCredentials(a2);
}

void std::vector<webrtc::IceParameters>::__init_with_size[abi:sn200100]<webrtc::IceParameters*,webrtc::IceParameters*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

_BYTE *webrtc::IceParameters::IceParameters(_BYTE *a1, _BYTE *a2, size_t a3, _BYTE *__src, size_t __len, char a6)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  a1[23] = a3;
  v10 = &a1[a3];
  if (a1 <= a2 && v10 > a2)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v10 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  a1[47] = __len;
  v11 = &a1[__len + 24];
  if (a1 + 24 <= __src && v11 > __src)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__len)
  {
    memmove(a1 + 24, __src, __len);
  }

  *v11 = 0;
  a1[48] = a6;
  return a1;
}

void *webrtc::IceEventLog::LogCandidatePairConfig(void *result, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if (*result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>>>::__emplace_unique_key_args<unsigned int,unsigned int &,webrtc::IceCandidatePairDescription const&>(result + 1, &v3);
    operator new();
  }

  return result;
}

void *webrtc::IceEventLog::LogCandidatePairEvent(void *result)
{
  if (*result)
  {
    operator new();
  }

  return result;
}

uint64_t webrtc::IceEventLog::DumpCandidatePairDescriptionToMemoryAsConfigEvents(uint64_t this)
{
  if (*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,webrtc::IceCandidatePairDescription>>>::__emplace_unique_key_args<unsigned int,unsigned int &,webrtc::IceCandidatePairDescription const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void webrtc::anonymous namespace::ParseIceServerUrl(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v67 = a3;
  v68 = a4;
  if (a4)
  {
    for (i = 0; i != a4; i = (i + 1))
    {
      if (*(i + a3) == 63)
      {
        operator new();
      }
    }

    v8 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 1;
  }

  if ((-v8 >> 3) > 1)
  {
    v10 = -v8 >> 3;
  }

  if (-v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  v11 = a1;
  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  __break(1u);
  if (v7)
  {
    memset(v55, 0, 24);
    v55[4] = 0;
    v55[5] = 0;
    v55[3] = &unk_28828CE50;
    v56 = 0;
    webrtc::SocketAddress::SetIP(v55, v8, 0);
    v57 = v11;
    std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress>(a5, v55);
    if ((SHIBYTE(v55[2]) & 0x80000000) == 0)
    {
LABEL_22:
      *a1 = 0;
      *(a1 + 38) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 29) = 0;
      goto LABEL_15;
    }

    v12 = v55[0];
LABEL_21:
    operator delete(v12);
    goto LABEL_22;
  }

  v13 = *(a2 + 71);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 56);
  }

  if (!v13)
  {
    goto LABEL_34;
  }

  v15 = *(a2 + 95);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 80);
  }

  if (v15)
  {
    if (v14 < 0 && *(a2 + 56) >= 0x1FEuLL)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        v55[0] = "INVALID_PARAMETER";
        v55[1] = 17;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
      }

      webrtc::RTCError::RTCError(a1, 3, "ICE server parsing failed: TURN server username is too long", 0x3BuLL);
      goto LABEL_15;
    }

    v30 = *(a2 + 127);
    if ((v30 & 0x8000000000000000) != 0)
    {
      v31 = *(a2 + 104);
      v30 = *(a2 + 112);
      v32 = v30 == 0;
    }

    else
    {
      v31 = (a2 + 104);
      v32 = v30 == 0;
    }

    if (v32)
    {
      v33 = v8;
    }

    else
    {
      v33 = v31;
    }

    if (v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    v61[0] = 0;
    v61[1] = 0;
    memset(v64, 0, 20);
    v62 = 0;
    v63 = &unk_28828CE50;
    webrtc::SocketAddress::SetIP(v61, v33, v34);
    v65 = v11;
    v35 = *(a2 + 127);
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(a2 + 112);
    }

    if (!v35)
    {
LABEL_51:
      v37 = *(a2 + 71);
      if (v37 >= 0)
      {
        v38 = (a2 + 48);
      }

      else
      {
        v38 = *(a2 + 48);
      }

      if (v37 >= 0)
      {
        v39 = *(a2 + 71);
      }

      else
      {
        v39 = *(a2 + 56);
      }

      v40 = *(a2 + 95);
      if (v40 >= 0)
      {
        v41 = (a2 + 72);
      }

      else
      {
        v41 = *(a2 + 72);
      }

      if (v40 >= 0)
      {
        v42 = *(a2 + 95);
      }

      else
      {
        v42 = *(a2 + 80);
      }

      webrtc::RelayServerConfig::RelayServerConfig(v55, v61, v38, v39, v41, v42, v6);
      if (*(a2 + 96) == 1)
      {
        v58 = 1;
      }

      if (v59 != (a2 + 128))
      {
        std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(v59, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
      }

      if (v60 != (a2 + 152))
      {
        std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(v60, *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
      }

      std::vector<webrtc::RelayServerConfig>::emplace_back<webrtc::RelayServerConfig const&>(a6, v55);
      webrtc::RelayServerConfig::~RelayServerConfig(v55);
      if ((SHIBYTE(v62) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      v12 = v61[0];
      goto LABEL_21;
    }

    memset(&v55[1], 0, 20);
    v55[0] = &unk_28828CE50;
    webrtc::IPFromString(v8, 0, v55);
    if (v36)
    {
      *(v64 + 4) = *(&v55[1] + 4);
      LODWORD(v64[0]) = v55[1];
      v66 = 0;
      goto LABEL_51;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v60[7] = "INVALID_PARAMETER";
      v60[8] = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
    }

    webrtc::RTCError::RTCError(a1, 3, "ICE server parsing failed: IceServer has hostname field set, but URI does not contain an IP address.", 0x64uLL);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61[0]);
    }
  }

  else
  {
LABEL_34:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v55[0] = "INVALID_PARAMETER";
      v55[1] = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
    }

    webrtc::RTCError::RTCError(a1, 3, "ICE server parsing failed: TURN server with empty username or password", 0x46uLL);
  }

LABEL_15:
  if (__p)
  {
    operator delete(__p);
  }
}

void webrtc::ParseAndValidateIceServersFromConfiguration(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 == v8)
  {
LABEL_22:
    v55[0] = 0;
    BYTE2(v55[9]) = 0;
    memset(&v55[2], 0, 29);
    v24 = a3[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((v24 - *a3) >> 5) >= 0x21)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
      }

      v33 = *a3;
      v32 = a3[1];
      v34 = v32 - *a3;
      v35 = 0xCCCCCCCCCCCCCCCDLL * (v34 >> 5);
      if (v35 <= 0x1F)
      {
        v36 = 32 - v35;
        v37 = a3[2];
        if (0xCCCCCCCCCCCCCCCDLL * ((v37 - v32) >> 5) >= v36)
        {
          v24 = &v32[10 * v36];
          while (v32)
          {
            *(v32 + 60) = 0uLL;
            v32[2] = 0uLL;
            v32[3] = 0uLL;
            *v32 = 0uLL;
            v32[1] = 0uLL;
            v32[5] = 0uLL;
            v32[6] = 0uLL;
            v32[7] = 0uLL;
            v32[8] = 0uLL;
            v32[9] = 0uLL;
            v32 += 10;
            if (v32 == v24)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
        }

        else
        {
          v38 = 0xCCCCCCCCCCCCCCCDLL * ((v37 - v33) >> 5);
          v39 = 2 * v38;
          if (2 * v38 <= 0x20)
          {
            v39 = 32;
          }

          if (v38 >= 0xCCCCCCCCCCCCCCLL)
          {
            v40 = 0x199999999999999;
          }

          else
          {
            v40 = v39;
          }

          if (v40 <= 0x199999999999999)
          {
            operator new();
          }
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v34 == 5120)
      {
        v24 = a3[1];
      }

      else
      {
        v24 = v33 + 320;
        while (v32 != v24)
        {
          webrtc::RelayServerConfig::~RelayServerConfig(v32 - 20);
        }

LABEL_44:
        a3[1] = v24;
      }
    }

    if (*a3 != v24)
    {
      v41 = (a1 + 288);
      v42 = *a3 + 136;
      do
      {
        if (v42 != v41)
        {
          v46 = *(a1 + 311);
          if (*(v42 + 23) < 0)
          {
            if (v46 >= 0)
            {
              v43 = (a1 + 288);
            }

            else
            {
              v43 = *(a1 + 288);
            }

            if (v46 >= 0)
            {
              v44 = *(a1 + 311);
            }

            else
            {
              v44 = *(a1 + 296);
            }

            std::string::__assign_no_alias<false>(v42, v43, v44);
          }

          else if ((*(a1 + 311) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v42, *(a1 + 288), *(a1 + 296));
          }

          else
          {
            v47 = *v41;
            *(v42 + 16) = *(a1 + 304);
            *v42 = v47;
          }
        }

        v45 = v42 + 24;
        v42 += 160;
      }

      while (v45 != v24);
    }

    *a4 = 0;
    *(a4 + 38) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    *(a4 + 29) = 0;
    if (SHIBYTE(v55[7]) < 0)
    {
      operator delete(*&v55[2]);
    }
  }

  else
  {
    while (1)
    {
      v10 = *(v7 + 24);
      v11 = *(v7 + 32);
      if (v10 != v11)
      {
        break;
      }

      v12 = *(v7 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v7 + 8);
        if (!v12)
        {
LABEL_66:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v56 = "SYNTAX_ERROR";
            v57 = 12;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
          }

          v55[0] = 5;
          operator new();
        }

        v13 = *v7;
      }

      else
      {
        if (!*(v7 + 23))
        {
          goto LABEL_66;
        }

        v13 = v7;
      }

      v16 = v55[0];
      if (v55[0])
      {
        goto LABEL_26;
      }

      if (SHIBYTE(v55[7]) < 0)
      {
        operator delete(*&v55[2]);
        v7 += 176;
        if (v7 == v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
LABEL_19:
        v7 += 176;
        if (v7 == v8)
        {
          goto LABEL_22;
        }
      }
    }

    while (1)
    {
      v14 = *(v10 + 23);
      if ((v14 & 0x8000000000000000) != 0)
      {
        v14 = *(v10 + 8);
        if (!v14)
        {
LABEL_23:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v56 = "SYNTAX_ERROR";
            v57 = 12;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/ice_server_parsing.cc");
          }

          v55[0] = 5;
          operator new();
        }

        v15 = *v10;
      }

      else
      {
        if (!*(v10 + 23))
        {
          goto LABEL_23;
        }

        v15 = v10;
      }

      v16 = v55[0];
      if (v55[0])
      {
        break;
      }

      if (SHIBYTE(v55[7]) < 0)
      {
        operator delete(*&v55[2]);
      }

      v10 += 24;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    *a4 = v16;
    *(a4 + 8) = *&v55[2];
    *(a4 + 24) = *&v55[6];
    *(a4 + 32) = v55[8];
    *(a4 + 35) = *(&v55[8] + 3);
  }
}

uint64_t std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress>(uint64_t a1, const void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!webrtc::SocketAddress::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = webrtc::SocketAddress::operator<(v5 + 4, a2);
    if (!result)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(void **a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    goto LABEL_63;
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = v5->__r_.__value_.__r.__words[0];
            }

            if (v22 >= 0)
            {
              size = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v5->__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v8, v20, size);
          }

          else if ((*(&v5->__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
          }

          else
          {
            v23 = *&v5->__r_.__value_.__l.__data_;
            v8->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
            *&v8->__r_.__value_.__l.__data_ = v23;
          }
        }

        ++v5;
        ++v8;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v32 = *(v13 - 1);
      v13 -= 3;
      if (v32 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = &v14[a2];
      do
      {
        if (v5 != v8)
        {
          v18 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = v5->__r_.__value_.__r.__words[0];
            }

            if (v18 >= 0)
            {
              v17 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v17 = v5->__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v8, v16, v17);
          }

          else if ((*(&v5->__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
          }

          else
          {
            v19 = *&v5->__r_.__value_.__l.__data_;
            v8->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
            *&v8->__r_.__value_.__l.__data_ = v19;
          }
        }

        ++v5;
        ++v8;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v5 = v15;
    }

    v27 = v13;
    if (v5 != a3)
    {
      v27 = v13;
      v28 = v13;
      while (v28)
      {
        if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
        {
          v29 = v5->__r_.__value_.__r.__words[0];
          v30 = v5->__r_.__value_.__l.__size_;
          ++v5;
          std::string::__init_copy_ctor_external(v28++, v29, v30);
          v27 += 3;
          if (v5 == a3)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v31 = *&v5->__r_.__value_.__l.__data_;
          v28->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
          *&v28->__r_.__value_.__l.__data_ = v31;
          ++v28;
          ++v5;
          v27 += 3;
          if (v5 == a3)
          {
            goto LABEL_56;
          }
        }
      }

      __break(1u);
LABEL_63:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_56:
    a1[1] = v27;
  }
}

webrtc::RelayServerConfig *std::vector<webrtc::RelayServerConfig>::emplace_back<webrtc::RelayServerConfig const&>(void *a1, const webrtc::RelayServerConfig *a2)
{
  result = a1[1];
  if (result >= a1[2])
  {
    std::vector<webrtc::RelayServerConfig>::__emplace_back_slow_path<webrtc::RelayServerConfig const&>(a1);
  }

  if (result)
  {
    result = (webrtc::RelayServerConfig::RelayServerConfig(result, a2) + 160);
    a1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t webrtc::IceSwitchReasonToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 5)
  {
    if (result > 2)
    {
      if (result != 3)
      {
        if (result != 4)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    if (result == 1)
    {
      operator new();
    }

    if (result == 2)
    {
      operator new();
    }
  }

  else
  {
    if (result <= 8)
    {
      if (result == 6)
      {
        operator new();
      }

      if (result != 7)
      {
        operator new();
      }

      a2[23] = 13;
      v4 = a2 + 13;
      if (a2 > "data received" || v4 <= "data received")
      {
        qmemcpy(a2, "data received", 13);
        *v4 = 0;
        return result;
      }

      goto LABEL_31;
    }

    switch(result)
    {
      case 9:
        operator new();
      case 0xA:
        operator new();
      case 0xB:
        a2[23] = 21;
        v3 = a2 + 21;
        if (a2 > "application requested" || v3 <= "application requested")
        {
          qmemcpy(a2, "application requested", 21);
          *v3 = 0;
          return result;
        }

        goto LABEL_31;
    }
  }

  a2[23] = 7;
  v5 = a2 + 7;
  if (a2 > "unknown" || v5 <= "unknown")
  {
    *(a2 + 3) = 1853321070;
    *a2 = 1852534389;
    *v5 = 0;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t webrtc::VerifyCandidate@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 88);
  if (*(this + 103) >= 0)
  {
    v4 = *(this + 103);
  }

  v5 = *(this + 112);
  v6 = *(this + 136);
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7 && v6 == 0)
  {
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    if (*(this + 116))
    {
      goto LABEL_23;
    }

LABEL_21:
    *a2 = 3;
    operator new();
  }

  if (v5 == 30)
  {
    if (*(this + 116) == *MEMORY[0x277D85EE8] && *(this + 124) == *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_21;
    }

    if (*(this + 116) == webrtc::kV4MappedPrefix && *(this + 124) == *(&webrtc::kV4MappedPrefix + 1))
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v11 = (this + 32);
  v12 = *(this + 55);
  if (v12 < 0)
  {
    if (*(this + 40) != 3)
    {
      goto LABEL_32;
    }

    v11 = *v11;
  }

  else if (v12 != 3)
  {
    goto LABEL_32;
  }

  v13 = *v11;
  v14 = *(v11 + 2);
  if (v13 == webrtc::TCP_PROTOCOL_NAME && v14 == 112)
  {
    v18 = (this + 352);
    v19 = *(this + 375);
    if (v19 < 0)
    {
      if (*(this + 360) != 6)
      {
        goto LABEL_75;
      }

      v18 = *v18;
    }

    else if (v19 != 6)
    {
LABEL_75:
      if (!*(this + 136))
      {
        goto LABEL_76;
      }

      goto LABEL_32;
    }

    v22 = *v18;
    v23 = *(v18 + 2);
    if (v22 == *"active" && v23 == *"ve" || v6 == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_32:
  if (v6 > 0x3FF)
  {
    goto LABEL_76;
  }

  if (v6 != 80 && v6 != 443)
  {
    *a2 = 3;
    operator new();
  }

  if (v5 == 2)
  {
    v20 = *(this + 116);
    if (v20 == 65193)
    {
      goto LABEL_60;
    }

    if (*(this + 116) == 127)
    {
      goto LABEL_60;
    }

    v21 = bswap32(v20);
    if (HIWORD(v21) == 49320 || (v21 & 0xFF000000) == 0xA000000 || (v21 & 0xFFF00000) == 0xAC100000)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  if (v5 != 30)
  {
    v20 = *(this + 116);
LABEL_58:
    if (v5 == 2 && (v20 & 0xC0FF) == 0x4064)
    {
      goto LABEL_60;
    }

    goto LABEL_76;
  }

  if ((*(this + 116) & 0xC0FFLL) == 0x80FE || (*(this + 116) == *MEMORY[0x277D85EF0] ? (v16 = *(this + 124) == *(MEMORY[0x277D85EF0] + 8)) : (v16 = 0), v16 ? (v17 = 0) : (v17 = 1), *(this + 116) == 253 || !v17))
  {
LABEL_60:
    *a2 = 3;
    operator new();
  }

LABEL_76:
  *a2 = 0;
  *(a2 + 38) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 29) = 0;
  return this;
}

uint64_t webrtc::IceConfig::IsValid@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 56);
  if (!*(this + 60))
  {
    v3 = &webrtc::STRONG_PING_INTERVAL;
  }

  v4 = *v3;
  v5 = (this + 64);
  if (!*(this + 68))
  {
    v5 = &webrtc::WEAK_PING_INTERVAL;
  }

  if (v4 < *v5)
  {
    *a2 = 3;
    operator new();
  }

  v6 = &webrtc::RECEIVING_TIMEOUT;
  if (*(this + 4))
  {
    v6 = this;
  }

  v7 = *v6;
  if (*(this + 76) != 1)
  {
    if (v4 <= -1)
    {
      v10 = -1;
    }

    else
    {
      v10 = v4;
    }

    if (v7 >= v10)
    {
      goto LABEL_13;
    }

LABEL_21:
    *a2 = 3;
    operator new();
  }

  v8 = *(this + 72);
  if (v4 > v8)
  {
    v8 = v4;
  }

  if (v7 < v8)
  {
    goto LABEL_21;
  }

LABEL_13:
  v9 = (this + 8);
  if (!*(this + 12))
  {
    v9 = &webrtc::BACKUP_CONNECTION_PING_INTERVAL;
  }

  if (*v9 < v4)
  {
    *a2 = 3;
    operator new();
  }

  v11 = (this + 24);
  if (!*(this + 28))
  {
    v11 = &webrtc::STRONG_AND_STABLE_WRITABLE_CONNECTION_PING_INTERVAL;
  }

  if (*v11 < v4)
  {
    *a2 = 3;
    operator new();
  }

  v12 = (this + 80);
  if (!*(this + 84))
  {
    v12 = &webrtc::CONNECTION_WRITE_CONNECT_TIMEOUT;
  }

  v13 = *v12;
  v14 = (this + 96);
  if (!*(this + 100))
  {
    v14 = &webrtc::CONNECTION_WRITE_TIMEOUT;
  }

  if (v13 > *v14)
  {
    *a2 = 3;
    operator new();
  }

  *a2 = 0;
  *(a2 + 38) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 29) = 0;
  return this;
}

double webrtc::IceTransportInternal::IceTransportInternal(webrtc::IceTransportInternal *this)
{
  v1 = webrtc::PacketTransportInternal::PacketTransportInternal(this);
  *v1 = &unk_288294920;
  *(v1 + 408) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 416) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 424) = v1 + 424;
  *(v1 + 432) = v1 + 424;
  *(v1 + 440) = 0;
  *(v1 + 448) = v1 + 424;
  *(v1 + 456) = 0;
  *(v1 + 464) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 472) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 480) = v1 + 480;
  *(v1 + 488) = v1 + 480;
  *(v1 + 496) = 0;
  *(v1 + 504) = v1 + 480;
  *(v1 + 512) = 0;
  *(v1 + 520) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 528) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 536) = v1 + 536;
  *(v1 + 544) = v1 + 536;
  *(v1 + 552) = 0;
  *(v1 + 560) = v1 + 536;
  *(v1 + 568) = 0;
  *(v1 + 576) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 584) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 592) = v1 + 592;
  *(v1 + 600) = v1 + 592;
  *(v1 + 608) = 0;
  *(v1 + 616) = v1 + 592;
  *(v1 + 624) = 0;
  *(v1 + 632) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 640) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 648) = v1 + 648;
  *(v1 + 656) = v1 + 648;
  *(v1 + 664) = 0;
  *(v1 + 672) = v1 + 648;
  *(v1 + 680) = 0;
  *(v1 + 688) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v1 + 696) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v1 + 704) = v1 + 704;
  *(v1 + 712) = v1 + 704;
  *(v1 + 720) = 0;
  *(v1 + 728) = v1 + 704;
  *(v1 + 736) = 0;
  *(v1 + 768) = 0;
  *(v1 + 760) = 0;
  result = 0.0;
  *(v1 + 744) = 0u;
  *(v1 + 792) = 0;
  *(v1 + 776) = 0u;
  *(v1 + 800) = 0;
  *(v1 + 824) = 0;
  *(v1 + 808) = 0u;
  *(v1 + 832) = 0;
  *(v1 + 856) = absl::internal_any_invocable::EmptyManager;
  *(v1 + 864) = 0;
  *(v1 + 888) = absl::internal_any_invocable::EmptyManager;
  *(v1 + 896) = 0;
  *(v1 + 920) = absl::internal_any_invocable::EmptyManager;
  *(v1 + 928) = 0;
  return result;
}

void webrtc::IceTransportInternal::~IceTransportInternal(void (**this)(uint64_t, char *, char *))
{
  *this = &unk_288294920;
  this[115](1, this + 904, this + 904);
  this[111](1, this + 872, this + 872);
  this[107](1, this + 840, this + 840);
  if (*(this + 832) == 1)
  {
    goto LABEL_43;
  }

  v6 = this[101];
  if (v6)
  {
    v7 = this[102];
    v8 = this[101];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9)
        {
          v9(v7 - 48);
        }

        v7 = (v7 - 56);
      }

      while (v7 != v6);
      v8 = this[101];
    }

    this[102] = v6;
    operator delete(v8);
  }

  if (*(this + 800) == 1)
  {
    goto LABEL_43;
  }

  v10 = this[97];
  if (v10)
  {
    v11 = this[98];
    v12 = this[97];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        if (v13)
        {
          v13(v11 - 48);
        }

        v11 = (v11 - 56);
      }

      while (v11 != v10);
      v12 = this[97];
    }

    this[98] = v10;
    operator delete(v12);
  }

  if (*(this + 768) == 1)
  {
LABEL_43:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v49);
    webrtc::IceTransportInternal::~IceTransportInternal(v48);
  }

  v14 = this[93];
  if (v14)
  {
    v15 = this[94];
    v16 = this[93];
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          v17(v15 - 48);
        }

        v15 = (v15 - 56);
      }

      while (v15 != v14);
      v16 = this[93];
    }

    this[94] = v14;
    operator delete(v16);
  }

  while (1)
  {
    v22 = this[90];
    if (!v22)
    {
      break;
    }

    v18 = this[89];
    v19 = *(v18 + 3);
    v21 = *v18;
    v20 = *(v18 + 1);
    *(v21 + 8) = v20;
    *v20 = v21;
    this[90] = (v22 - 1);
    operator delete(v18);
    (*(v19 + 16))(v19, this + 688);
  }

  this[91] = (this + 88);
  for (i = this[83]; i; i = this[83])
  {
    v24 = this[82];
    v25 = *(v24 + 3);
    v27 = *v24;
    v26 = *(v24 + 1);
    *(v27 + 8) = v26;
    *v26 = v27;
    this[83] = (i - 1);
    operator delete(v24);
    (*(v25 + 16))(v25, this + 632);
  }

  this[84] = (this + 81);
  for (j = this[76]; j; j = this[76])
  {
    v29 = this[75];
    v30 = *(v29 + 3);
    v32 = *v29;
    v31 = *(v29 + 1);
    *(v32 + 8) = v31;
    *v31 = v32;
    this[76] = (j - 1);
    operator delete(v29);
    (*(v30 + 16))(v30, this + 576);
  }

  this[77] = (this + 74);
  for (k = this[69]; k; k = this[69])
  {
    v34 = this[68];
    v35 = *(v34 + 3);
    v37 = *v34;
    v36 = *(v34 + 1);
    *(v37 + 8) = v36;
    *v36 = v37;
    this[69] = (k - 1);
    operator delete(v34);
    (*(v35 + 16))(v35, this + 520);
  }

  this[70] = (this + 67);
  for (m = this[62]; m; m = this[62])
  {
    v39 = this[61];
    v40 = *(v39 + 3);
    v42 = *v39;
    v41 = *(v39 + 1);
    *(v42 + 8) = v41;
    *v41 = v42;
    this[62] = (m - 1);
    operator delete(v39);
    (*(v40 + 16))(v40, this + 464);
  }

  this[63] = (this + 60);
  for (n = this[55]; n; n = this[55])
  {
    v44 = this[54];
    v45 = *(v44 + 3);
    v47 = *v44;
    v46 = *(v44 + 1);
    *(v47 + 8) = v46;
    *v46 = v47;
    this[55] = (n - 1);
    operator delete(v44);
    (*(v45 + 16))(v45, this + 408);
  }

  this[56] = (this + 53);

  webrtc::PacketTransportInternal::~PacketTransportInternal(this);
}

void webrtc::IceTransportInternal::SetIceCredentials(uint64_t a1, _BYTE *a2, size_t a3, _BYTE *a4, size_t a5)
{
  webrtc::IceParameters::IceParameters(v6, a2, a3, a4, a5, 0);
  (*(*a1 + 160))(a1, v6);
  if ((v9 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v6[0]);
    return;
  }

  operator delete(__p);
  if (v7 < 0)
  {
    goto LABEL_5;
  }
}

void webrtc::IceTransportInternal::SetRemoteIceCredentials(uint64_t a1, _BYTE *a2, size_t a3, _BYTE *a4, size_t a5)
{
  webrtc::IceParameters::IceParameters(v6, a2, a3, a4, a5, 0);
  (*(*a1 + 168))(a1, v6);
  if ((v9 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v6[0]);
    return;
  }

  operator delete(__p);
  if (v7 < 0)
  {
    goto LABEL_5;
  }
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::IceTransportInternal *),absl::AnyInvocable<void ()(webrtc::IceTransportInternal *)>,absl::AnyInvocable<void ()(webrtc::IceTransportInternal *)>,(void *)0>(absl::AnyInvocable<void ()(webrtc::IceTransportInternal *)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

uint64_t dcsctp::IDataChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 0x14 || *result != 64 || ((v3 = __rev16(*(result + 2)), v3 >= 0x14) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
    *a3 = 0;
    *(a3 + 72) = 0;
  }

  else
  {
    v6 = bswap32(*(result + 4));
    v7 = bswap32(*(result + 8)) >> 16;
    v8 = bswap32(*(result + 12));
    v9 = bswap32(*(result + 16));
    v10 = *(result + 1);
    v11 = (v10 >> 1) & 1;
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    if ((v10 >> 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = v9;
    }

    if (v3 >= 0x15)
    {
      operator new();
    }

    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 18) = 0;
    *(a3 + 20) = v8;
    *(a3 + 24) = v13;
    *(a3 + 28) = v12;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = v11;
    *(a3 + 57) = v10 & 1;
    *(a3 + 58) = (v10 & 4) != 0;
    *(a3 + 64) = (v10 & 8) != 0;
    *a3 = &unk_288294A60;
    *(a3 + 72) = 1;
  }

  return result;
}

void dcsctp::IDataChunk::~IDataChunk(dcsctp::IDataChunk *this)
{
  *this = &unk_288291328;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288291328;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::IDataChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 40) - *(a1 + 32);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 20;
  v14 = v12 + v10 + 20;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 20);
    v11 = *a2;
  }

  v15 = (v11 + v12);
  *v15 = 64;
  v15[2] = HIBYTE(v13);
  v15[3] = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFECLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v26);
    dcsctp::IDataChunk::ToString(v25);
  }

  else
  {
    v16 = *a2 + v12;
    if (*(a1 + 56))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 | *(a1 + 57);
    if (*(a1 + 58))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    if (*(a1 + 64))
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    *(v16 + 1) = v18 | v19 | v20;
    *(v16 + 4) = bswap32(*(a1 + 8));
    *(v16 + 8) = bswap32(*(a1 + 16)) >> 16;
    *(v16 + 12) = bswap32(*(a1 + 20));
    v21 = 24;
    if (*(a1 + 56))
    {
      v21 = 28;
    }

    *(v16 + 16) = bswap32(*(a1 + v21));
    v22 = *(a1 + 40) - *(a1 + 32);
    if (v22)
    {
      v23 = *(a1 + 32);
    }

    else
    {
      v23 = 0;
    }

    if (v10 >= v22)
    {
      v24 = *(a1 + 40) - *(a1 + 32);
    }

    else
    {
      v24 = v10;
    }

    if (v23 && v24)
    {

      memcpy((v16 + 20), v23, v24);
    }
  }
}

double dcsctp::IDataChunk::ToString@<D0>(dcsctp::IDataChunk *this@<X0>, std::string *a2@<X8>)
{
  *&v91.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v91 <= "I-DATA, type=" && &v91.__r_.__value_.__r.__words[1] + 5 > "I-DATA, type=")
  {
    goto LABEL_222;
  }

  qmemcpy(&v91, "I-DATA, type=", 13);
  *(&v91.__r_.__value_.__s + 23) = 13;
  if (*(this + 58))
  {
    v5 = "unordered";
  }

  else
  {
    v5 = "ordered";
  }

  v6 = 20;
  if (*(this + 58))
  {
    v6 = 22;
  }

  if (&v91.__r_.__value_.__r.__words[1] + 5 <= v5 && &v91 + v6 > v5)
  {
    goto LABEL_222;
  }

  if (*(this + 58))
  {
    v7 = 9;
  }

  else
  {
    v7 = 7;
  }

  memcpy(&v91.__r_.__value_.__r.__words[1] + 5, v5, v7);
  v8 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    v91.__r_.__value_.__l.__size_ = v7 + 13;
    size = v7 + 13;
  }

  else
  {
    *(&v91.__r_.__value_.__s + 23) = v7 + 13;
    size = v91.__r_.__value_.__l.__size_;
    v8 = v7 + 13;
  }

  v91.__r_.__value_.__s.__data_[v7 + 13] = 0;
  if (v8 >= 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = size;
  }

  if (v10 - v11 >= 2)
  {
    v12 = v8 < 0;
    v13 = 0x202C415441442D49;
    if (!v12)
    {
      v13 = &v91;
    }

    v14 = (v13 + v11);
    if (v13 + v11 <= "::" && v14 + 1 > "::")
    {
      goto LABEL_222;
    }

    *v14 = 14906;
    v15 = v11 + 2;
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v91.__r_.__value_.__l.__size_ = v11 + 2;
    }

    else
    {
      *(&v91.__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    *(v13 + v15) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v91, v10, v11 - v10 + 2, v11, v11, 0, 2uLL, "::");
  }

  v16 = "middle";
  v17 = "first";
  if (*(this + 57))
  {
    v16 = "last";
    v17 = "complete";
  }

  if (*(this + 56))
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = strlen(v18);
  v21 = v19;
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = 22;
  }

  else
  {
    v22 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v91.__r_.__value_.__l.__size_;
  }

  if (v22 - v23 >= v19)
  {
    if (v19)
    {
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v91;
      }

      else
      {
        v24 = v91.__r_.__value_.__r.__words[0];
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_222;
      }

      v25 = v24 + v23;
      if (v24 + v23 <= v18 && &v25[v21] > v18)
      {
        goto LABEL_222;
      }

      memcpy(v25, v18, v21);
      v26 = v23 + v21;
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        v91.__r_.__value_.__l.__size_ = v23 + v21;
      }

      else
      {
        *(&v91.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v91, v22, v23 + v19 - v22, v23, v23, 0, v19, v18);
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = 22;
  }

  else
  {
    v27 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v91.__r_.__value_.__l.__size_;
  }

  if (v27 - v28 >= 6)
  {
    v29 = &v91;
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v91.__r_.__value_.__r.__words[0];
    }

    v30 = v29 + v28;
    if (v29 + v28 <= ", tsn=" && v30 + 6 > ", tsn=")
    {
      goto LABEL_222;
    }

    *(v30 + 2) = 15726;
    *v30 = 1936990252;
    v31 = v28 + 6;
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v91.__r_.__value_.__l.__size_ = v28 + 6;
    }

    else
    {
      *(&v91.__r_.__value_.__s + 23) = v31 & 0x7F;
    }

    v29->__r_.__value_.__s.__data_[v31] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v91, v27, v28 - v27 + 6, v28, v28, 0, 6uLL, ", tsn=");
  }

  v32 = webrtc::StringBuilder::operator<<(&v91, *(this + 2), v20);
  v34 = v32;
  v35 = SHIBYTE(v32->__r_.__value_.__r.__words[2]);
  if (v35 >= 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (v32->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v35 >= 0)
  {
    v37 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v32->__r_.__value_.__l.__size_;
  }

  if (v36 - v37 >= 0xC)
  {
    if (v35 >= 0)
    {
      v38 = v32;
    }

    else
    {
      v38 = v32->__r_.__value_.__r.__words[0];
    }

    v39 = v38 + v37;
    if (v38 + v37 <= ", stream_id=" && v39 + 12 > ", stream_id=")
    {
      goto LABEL_222;
    }

    *(v39 + 8) = 1029990751;
    *v39 = *", stream_id=";
    v40 = v37 + 12;
    if (SHIBYTE(v32->__r_.__value_.__r.__words[2]) < 0)
    {
      v32->__r_.__value_.__l.__size_ = v40;
    }

    else
    {
      *(&v32->__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    v38->__r_.__value_.__s.__data_[v40] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v32, v36, v37 - v36 + 12, v37, v37, 0, 0xCuLL, ", stream_id=");
  }

  v41 = *(this + 8);
  v93 = 0;
  v94 = 0x1600000000000000;
  __p = 0;
  v42 = absl::numbers_internal::FastIntToBuffer(v41, &__p, v33);
  v44 = v42 - &__p;
  if ((SHIBYTE(v94) & 0x8000000000000000) != 0)
  {
    if (v93 < v44)
    {
      goto LABEL_223;
    }

    p_p = __p;
    v93 = v42 - &__p;
  }

  else
  {
    if (v44 > SHIBYTE(v94))
    {
      goto LABEL_223;
    }

    HIBYTE(v94) = v42 - &__p;
    p_p = &__p;
  }

  p_p[v44] = 0;
  if (v94 >= 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p;
  }

  if (v94 >= 0)
  {
    v47 = HIBYTE(v94);
  }

  else
  {
    v47 = v93;
  }

  if (!v46 && v47)
  {
    goto LABEL_222;
  }

  v48 = SHIBYTE(v34->__r_.__value_.__r.__words[2]);
  if (v48 >= 0)
  {
    v49 = 22;
  }

  else
  {
    v49 = (v34->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v48 >= 0)
  {
    v50 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v34->__r_.__value_.__l.__size_;
  }

  if (v49 - v50 < v47)
  {
    std::string::__grow_by_and_replace(v34, v49, v50 + v47 - v49, v50, v50, 0, v47, v46);
    if ((SHIBYTE(v94) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_112;
  }

  if (!v47)
  {
LABEL_122:
    if ((SHIBYTE(v94) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

LABEL_112:
    operator delete(__p);
    goto LABEL_123;
  }

  if (v48 >= 0)
  {
    v51 = v34;
  }

  else
  {
    v51 = v34->__r_.__value_.__r.__words[0];
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_222;
  }

  v52 = v51 + v50;
  if (v51 + v50 <= v46 && &v52[v47] > v46)
  {
    goto LABEL_222;
  }

  v53 = v47;
  memmove(v52, v46, v47);
  v54 = v50 + v53;
  if ((SHIBYTE(v34->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v34->__r_.__value_.__s + 23) = v54 & 0x7F;
    v51->__r_.__value_.__s.__data_[v54] = 0;
    goto LABEL_122;
  }

  v34->__r_.__value_.__l.__size_ = v54;
  v51->__r_.__value_.__s.__data_[v54] = 0;
  if (SHIBYTE(v94) < 0)
  {
    goto LABEL_112;
  }

LABEL_123:
  v55 = SHIBYTE(v34->__r_.__value_.__r.__words[2]);
  if (v55 >= 0)
  {
    v56 = 22;
  }

  else
  {
    v56 = (v34->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v55 >= 0)
  {
    v57 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v34->__r_.__value_.__l.__size_;
  }

  if (v56 - v57 >= 6)
  {
    if (v55 >= 0)
    {
      v58 = v34;
    }

    else
    {
      v58 = v34->__r_.__value_.__r.__words[0];
    }

    v59 = v58 + v57;
    if (v58 + v57 <= ", mid=" && v59 + 6 > ", mid=")
    {
      goto LABEL_222;
    }

    *(v59 + 4) = 15716;
    *v59 = 1768759340;
    v60 = v57 + 6;
    if (SHIBYTE(v34->__r_.__value_.__r.__words[2]) < 0)
    {
      v34->__r_.__value_.__l.__size_ = v60;
    }

    else
    {
      *(&v34->__r_.__value_.__s + 23) = v60 & 0x7F;
    }

    v58->__r_.__value_.__s.__data_[v60] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v34, v56, v57 - v56 + 6, v57, v57, 0, 6uLL, ", mid=");
  }

  webrtc::StringBuilder::operator<<(v34, *(this + 5), v43);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v91.__r_.__value_.__l.__size_;
  }

  v64 = v62 - v63;
  if (*(this + 56))
  {
    if (v64 >= 7)
    {
      v66 = &v91;
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v66 = v91.__r_.__value_.__r.__words[0];
      }

      v67 = (v66 + v63);
      if (v66 + v63 <= ", ppid=" && v67 + 7 > ", ppid=")
      {
        goto LABEL_222;
      }

      *(v67 + 3) = 1029990768;
      *v67 = 1886396460;
      v68 = v63 + 7;
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        v91.__r_.__value_.__l.__size_ = v63 + 7;
      }

      else
      {
        *(&v91.__r_.__value_.__s + 23) = v68 & 0x7F;
      }

      v66->__r_.__value_.__s.__data_[v68] = 0;
      v65 = 28;
    }

    else
    {
      std::string::__grow_by_and_replace(&v91, v62, v63 - v62 + 7, v63, v63, 0, 7uLL, ", ppid=");
      v65 = 28;
    }
  }

  else
  {
    if (v64 >= 6)
    {
      v69 = &v91;
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v69 = v91.__r_.__value_.__r.__words[0];
      }

      v70 = v69 + v63;
      if (v69 + v63 <= ", fsn=" && v70 + 6 > ", fsn=")
      {
        goto LABEL_222;
      }

      *(v70 + 2) = 15726;
      *v70 = 1936072748;
      v71 = v63 + 6;
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        v91.__r_.__value_.__l.__size_ = v63 + 6;
      }

      else
      {
        *(&v91.__r_.__value_.__s + 23) = v71 & 0x7F;
      }

      v69->__r_.__value_.__s.__data_[v71] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v91, v62, v63 - v62 + 6, v63, v63, 0, 6uLL, ", fsn=");
    }

    v65 = 24;
  }

  webrtc::StringBuilder::operator<<(&v91, *(this + v65), v61);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = 22;
  }

  else
  {
    v73 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v91.__r_.__value_.__l.__size_;
  }

  if (v73 - v74 >= 9)
  {
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v91;
    }

    else
    {
      v75 = v91.__r_.__value_.__r.__words[0];
    }

    v76 = v75 + v74;
    if (v75 + v74 <= ", length=" && v76 + 9 > ", length=")
    {
      goto LABEL_222;
    }

    v76[8] = 61;
    *v76 = *", length=";
    v77 = v74 + 9;
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v91.__r_.__value_.__l.__size_ = v74 + 9;
    }

    else
    {
      *(&v91.__r_.__value_.__s + 23) = v77 & 0x7F;
    }

    v75->__r_.__value_.__s.__data_[v77] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v91, v73, v74 - v73 + 9, v74, v74, 0, 9uLL, ", length=");
  }

  v78 = *(this + 5) - *(this + 4);
  v93 = 0;
  v94 = 0x1600000000000000;
  __p = 0;
  v79 = absl::numbers_internal::FastIntToBuffer(v78, &__p, v72);
  v80 = v79 - &__p;
  if ((SHIBYTE(v94) & 0x8000000000000000) != 0)
  {
    if (v93 < v80)
    {
      goto LABEL_223;
    }

    v81 = __p;
    v93 = v79 - &__p;
  }

  else
  {
    if (v80 > SHIBYTE(v94))
    {
      goto LABEL_223;
    }

    HIBYTE(v94) = v79 - &__p;
    v81 = &__p;
  }

  v81[v80] = 0;
  if (v94 >= 0)
  {
    v82 = &__p;
  }

  else
  {
    v82 = __p;
  }

  if (v94 >= 0)
  {
    v83 = HIBYTE(v94);
  }

  else
  {
    v83 = v93;
  }

  if (!v82 && v83)
  {
LABEL_222:
    __break(1u);
LABEL_223:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = 22;
  }

  else
  {
    v84 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v91.__r_.__value_.__l.__size_;
  }

  if (v84 - v85 >= v83)
  {
    if (!v83)
    {
      goto LABEL_218;
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v91;
    }

    else
    {
      v86 = v91.__r_.__value_.__r.__words[0];
    }

    if ((v83 & 0x8000000000000000) == 0)
    {
      v87 = v86 + v85;
      if (v86 + v85 > v82 || &v87[v83] <= v82)
      {
        v88 = v83;
        memmove(v87, v82, v83);
        v89 = v85 + v88;
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          v91.__r_.__value_.__l.__size_ = v85 + v88;
          v86->__r_.__value_.__s.__data_[v89] = 0;
          if ((SHIBYTE(v94) & 0x80000000) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_208;
        }

        *(&v91.__r_.__value_.__s + 23) = v89 & 0x7F;
        v86->__r_.__value_.__s.__data_[v89] = 0;
LABEL_218:
        if ((SHIBYTE(v94) & 0x80000000) == 0)
        {
          goto LABEL_219;
        }

        goto LABEL_208;
      }
    }

    goto LABEL_222;
  }

  std::string::__grow_by_and_replace(&v91, v84, v85 + v83 - v84, v85, v85, 0, v83, v82);
  if (SHIBYTE(v94) < 0)
  {
LABEL_208:
    operator delete(__p);
  }

LABEL_219:
  result = *&v91.__r_.__value_.__l.__data_;
  *a2 = v91;
  return result;
}